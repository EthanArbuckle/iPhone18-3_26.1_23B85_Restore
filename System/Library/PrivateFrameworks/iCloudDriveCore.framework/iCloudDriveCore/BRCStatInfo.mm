@interface BRCStatInfo
- (BOOL)check:(id)a3 logToFile:(__sFILE *)a4;
- (BOOL)checkStateWithItemID:(id)a3 logToFile:(__sFILE *)a4;
- (BOOL)iWorkShareable;
- (BOOL)isEtagEqual:(id)a3;
- (BRCStatInfo)initWithStatInfo:(id)a3;
- (BRMangledID)_aliasTargetMangledID;
- (NSString)representableName;
- (id)_aliasTargetItemID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithContext:(id)a3 origName:(id)a4;
- (id)displayName;
- (id)lazyXattrWithXattrStager:(id)a3;
- (unint64_t)diffAgainst:(id)a3;
- (void)_aliasTargetItemID;
- (void)_updateAliasTarget:(id)a3;
- (void)setCreatorRowID:(id)a3;
@end

@implementation BRCStatInfo

- (BRMangledID)_aliasTargetMangledID
{
  aliasTarget = self->_aliasTarget;
  if (aliasTarget)
  {
    v3 = [(NSString *)aliasTarget stringByDeletingLastPathComponent];
    v4 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAliasTargetContainerString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_aliasTargetItemID
{
  if (self->_type != 3)
  {
    [BRCStatInfo _aliasTargetItemID];
  }

  if (self->_aliasTarget)
  {
    v3 = [BRCItemID alloc];
    v4 = [(NSString *)self->_aliasTarget lastPathComponent];
    v5 = [(BRCItemID *)v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateAliasTarget:(id)a3
{
  v4 = a3;
  v5 = [v4 clientZone];
  v6 = [v5 mangledID];
  v7 = [v6 aliasTargetContainerString];

  if (!v7)
  {
    [BRCStatInfo _updateAliasTarget:];
  }

  v8 = [v4 itemID];
  v9 = [v8 itemIDString];
  v10 = [v7 stringByAppendingPathComponent:v9];
  aliasTarget = self->_aliasTarget;
  self->_aliasTarget = v10;
}

- (NSString)representableName
{
  type = self->_type;
  v4 = type > 0xA;
  v5 = (1 << type) & 0x611;
  v6 = v4 || v5 == 0;
  if (v6 || (-[BRCStatInfo logicalName](self, "logicalName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 br_isPackageRoot], v7, !v8))
  {
    v10 = [(BRCStatInfo *)self logicalName];
  }

  else
  {
    v9 = [(BRCStatInfo *)self logicalName];
    v10 = [v9 br_representableDirectoryName];
  }

  return v10;
}

- (BOOL)iWorkShareable
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 iworkShareableExtensions];

  v5 = [(BRCStatInfo *)self logicalName];
  v6 = [v5 br_pathExtension];
  v7 = [v6 lowercaseString];
  v8 = v7;
  v9 = &stru_2837504F0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v4 containsObject:v10];
  if (v11)
  {
    v12 = [(BRCStatInfo *)self type];
    v14 = v12 == 8 || (v12 - 1) < 2;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)descriptionWithContext:(id)a3 origName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  parentID = self->_parentID;
  if (parentID)
  {
    v10 = [BRCDumpContext stringFromItemID:parentID context:v6];
    [v8 appendFormat:@"p:%@ ", v10];
  }

  logicalName = self->_logicalName;
  if (logicalName)
  {
    v12 = [(NSString *)logicalName fp_obfuscatedFilename];
    if (v6)
    {
      v13 = [v6 highlightedString:v12 type:1];

      v12 = v13;
    }

    [v8 appendFormat:@"n:%@ ", v12];
    if (v7)
    {
      v14 = [v7 fp_obfuscatedFilename];
      [v8 appendFormat:@"(o:\"%@\"", v14];
    }
  }

  aliasTarget = self->_aliasTarget;
  if (aliasTarget)
  {
    v16 = [(NSString *)aliasTarget br_obfuscateAliasTarget];
    if (v6)
    {
      v17 = [v6 highlightedString:v16 type:1];

      v16 = v17;
    }

    [v8 appendFormat:@"target:%@ ", v16];
  }

  v18 = BRCPrettyPrintEnumWithContext(self->_type, &brc_item_type_pretty_entries, v6);
  [v8 appendFormat:@"%@ ", v18];

  if (self->_state)
  {
    v19 = BRCPrettyPrintEnumWithContext(self->_state, &brc_item_state_pretty_entries, v6);
    [v8 appendFormat:@"%@ ", v19];
  }

  ckInfo = self->_ckInfo;
  if (ckInfo)
  {
    v21 = [(BRFieldCKInfo *)ckInfo etag];
    [v8 appendFormat:@"etag:%@ ", v21];

    v22 = [(BRFieldCKInfo *)self->_ckInfo etagBeforeCrossZoneMove];

    if (v22)
    {
      v23 = [(BRFieldCKInfo *)self->_ckInfo etagBeforeCrossZoneMove];
      [v8 appendFormat:@"prev-etag:%@ ", v23];
    }

    if ([(BRFieldCKInfo *)self->_ckInfo hasDeletionChangeToken])
    {
      v24 = objc_alloc(MEMORY[0x277CBC670]);
      v25 = [(BRFieldCKInfo *)self->_ckInfo deletionChangeToken];
      v26 = [v24 initWithData:v25];

      v27 = [v26 descriptionWithContext:v6];
      [v8 appendFormat:@"deletion-token:%@ ", v27];
    }
  }

  if (self->_birthtime)
  {
    [v8 appendFormat:@"bt:%lld ", self->_birthtime];
  }

  if (self->_lastUsedTime)
  {
    [v8 appendFormat:@"lu:%lld ", self->_lastUsedTime];
  }

  if (self->_favoriteRank)
  {
    [v8 appendFormat:@"fa:%lld ", self->_favoriteRank];
  }

  v36[0] = 114;
  mode = self->_mode;
  if (mode)
  {
    v29 = 119;
  }

  else
  {
    v29 = 45;
  }

  v36[1] = v29;
  if ((mode & 2) != 0)
  {
    v30 = 120;
  }

  else
  {
    v30 = 45;
  }

  v36[2] = v30;
  v36[3] = (mode << 29 >> 31) & 0x4C;
  v36[4] = 0;
  [v8 appendFormat:@"m:%s ", v36];
  if (self->_hiddenExt)
  {
    [v8 appendString:@"hidden-ext "];
  }

  xattrSignature = self->_xattrSignature;
  if (xattrSignature)
  {
    v32 = [(NSData *)xattrSignature brc_hexadecimalString];
    [v8 appendFormat:@"ea:%@ ", v32];
  }

  if (self->_finderTags)
  {
    [v8 appendString:@"has-finder-tags "];
  }

  trashPutBackPath = self->_trashPutBackPath;
  if (trashPutBackPath || self->_trashPutBackParentID)
  {
    v34 = [(NSString *)trashPutBackPath fp_obfuscatedPath];
    [v8 appendFormat:@"trash-put-back{%@, %@} ", v34, self->_trashPutBackParentID];
  }

  if (self->_creatorRowID)
  {
    [v8 appendFormat:@"creator:%@ ", self->_creatorRowID];
  }

  [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - 1, 1}];

  return v8;
}

- (BRCStatInfo)initWithStatInfo:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BRCStatInfo;
  v5 = [(BRCStatInfo *)&v25 init];
  if (v5)
  {
    v6 = [*(v4 + 1) copy];
    ckInfo = v5->_ckInfo;
    v5->_ckInfo = v6;

    v5->_state = *(v4 + 24);
    v5->_type = *(v4 + 25);
    v5->_mode = *(v4 + 26);
    v5->_birthtime = *(v4 + 4);
    v5->_lastUsedTime = *(v4 + 5);
    v5->_favoriteRank = *(v4 + 6);
    v8 = [*(v4 + 2) copy];
    parentID = v5->_parentID;
    v5->_parentID = v8;

    v10 = [*(v4 + 7) copy];
    logicalName = v5->_logicalName;
    v5->_logicalName = v10;

    v12 = [*(v4 + 8) copy];
    aliasTarget = v5->_aliasTarget;
    v5->_aliasTarget = v12;

    v14 = [*(v4 + 12) copy];
    finderTags = v5->_finderTags;
    v5->_finderTags = v14;

    v5->_hiddenExt = *(v4 + 72);
    v16 = [*(v4 + 10) copy];
    xattrSignature = v5->_xattrSignature;
    v5->_xattrSignature = v16;

    v18 = [*(v4 + 13) copy];
    trashPutBackPath = v5->_trashPutBackPath;
    v5->_trashPutBackPath = v18;

    v20 = [*(v4 + 14) copy];
    trashPutBackParentID = v5->_trashPutBackParentID;
    v5->_trashPutBackParentID = v20;

    v22 = [*(v4 + 15) copy];
    creatorRowID = v5->_creatorRowID;
    v5->_creatorRowID = v22;
  }

  return v5;
}

- (BOOL)checkStateWithItemID:(id)a3 logToFile:(__sFILE *)a4
{
  state = self->_state;
  if (state >= 2)
  {
    fprintf(a4, "item %s has invalid state: %d\n", [a3 UTF8String], self->_state);
  }

  return state < 2;
}

- (BOOL)check:(id)a3 logToFile:(__sFILE *)a4
{
  v6 = a3;
  v7 = [(BRCStatInfo *)self checkStateWithItemID:v6 logToFile:a4];
  if (self->_type >= 0xBu)
  {
    fprintf(a4, "item %s has invalid type: %d\n", [v6 UTF8String], self->_type);
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (self->_mode >= 4u)
  {
    fprintf(a4, "item %s has invalid mode: 0%0x\n", [v6 UTF8String], self->_mode);
    v8 = 0;
  }

  if (!self->_parentID)
  {
    fprintf(a4, "item %s has an invalid parent id\n", [v6 UTF8String]);
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithStatInfo:self];
}

- (unint64_t)diffAgainst:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [BRCStatInfo diffAgainst:];
    v17 = 0x7FFFLL;
    goto LABEL_89;
  }

  v6 = v4[1];
  v7 = self->_ckInfo;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    v11 = 0;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v10 = ![(BRFieldCKInfo *)v7 isEqual:v8];

    v11 = v10 & 1;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  v12 = v5[15];
  v7 = self->_creatorRowID;
  v13 = v12;
  v14 = v13;
  if (v7 == v13)
  {

    goto LABEL_14;
  }

  if (v13)
  {
    v15 = [(BRFieldCKInfo *)v7 isEqual:v13];

    if (v15)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:

LABEL_12:
  v11 = 1;
LABEL_14:
  if ((self->_state == 1) != (*(v5 + 24) != 1))
  {
    v16 = v11;
  }

  else
  {
    v16 = v11 | 0xA;
  }

  if (self->_mode != *(v5 + 26))
  {
    v16 |= 4uLL;
  }

  if (self->_birthtime != v5[4])
  {
    v16 |= 0x10uLL;
  }

  if (self->_lastUsedTime != v5[5])
  {
    v16 |= 0x800uLL;
  }

  if (self->_favoriteRank == v5[6])
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 | 0x1000;
  }

  if ((v17 & 0x20) != 0)
  {
    goto LABEL_32;
  }

  v18 = v5[2];
  v19 = self->_parentID;
  v20 = v18;
  v21 = v20;
  if (v19 == v20)
  {

    goto LABEL_32;
  }

  if (!v20)
  {

    goto LABEL_39;
  }

  v22 = [(BRCItemID *)v19 isEqual:v20];

  if (v22)
  {
LABEL_32:
    if ((v17 & 0x40) != 0)
    {
      goto LABEL_43;
    }

LABEL_33:
    v23 = v5[7];
    v24 = self->_logicalName;
    v25 = v23;
    v26 = v25;
    if (v24 == v25)
    {

      goto LABEL_43;
    }

    if (v25)
    {
      v27 = [(NSString *)v24 isEqual:v25];

      if (v27)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    v17 |= 0x40uLL;
    goto LABEL_43;
  }

LABEL_39:
  v17 |= 0x20uLL;
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_43:
  if ((v17 & 0x40) == 0)
  {
    v28 = v5[8];
    v29 = self->_aliasTarget;
    v30 = v28;
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      if (!v30)
      {

        goto LABEL_65;
      }

      v32 = [(NSString *)v29 isEqual:v30];

      if ((v32 & 1) == 0)
      {
LABEL_65:
        v17 |= 0x40uLL;
        if ((v17 & 0x80) != 0)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }
    }
  }

  if ((v17 & 0x80) != 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  if (self->_hiddenExt != *(v5 + 72))
  {
    v17 |= 0x80uLL;
  }

LABEL_52:
  if ((v17 & 0x100) != 0)
  {
    goto LABEL_58;
  }

  v33 = v5[10];
  v34 = self->_xattrSignature;
  v35 = v33;
  v36 = v35;
  if (v34 == v35)
  {

    goto LABEL_58;
  }

  if (!v35)
  {

    goto LABEL_68;
  }

  v37 = [(NSData *)v34 isEqual:v35];

  if (v37)
  {
LABEL_58:
    if ((v17 & 0x400) != 0)
    {
      goto LABEL_72;
    }

LABEL_59:
    v38 = v5[14];
    v39 = self->_trashPutBackParentID;
    v40 = v38;
    v41 = v40;
    if (v39 == v40)
    {

      goto LABEL_72;
    }

    if (v40)
    {
      v42 = [(BRCItemID *)v39 isEqual:v40];

      if (v42)
      {
        goto LABEL_72;
      }
    }

    else
    {
    }

    v17 |= 0x400uLL;
    goto LABEL_72;
  }

LABEL_68:
  v17 |= 0x100uLL;
  if ((v17 & 0x400) == 0)
  {
    goto LABEL_59;
  }

LABEL_72:
  if ((v17 & 0x400) != 0)
  {
    goto LABEL_78;
  }

  v43 = v5[13];
  v44 = self->_trashPutBackPath;
  v45 = v43;
  v46 = v45;
  if (v44 == v45)
  {

    goto LABEL_78;
  }

  if (!v45)
  {

    goto LABEL_85;
  }

  v47 = [(NSString *)v44 isEqual:v45];

  if (v47)
  {
LABEL_78:
    if ((v17 & 0x200) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_79;
  }

LABEL_85:
  v17 |= 0x400uLL;
  if ((v17 & 0x200) != 0)
  {
    goto LABEL_89;
  }

LABEL_79:
  v48 = v5[12];
  v49 = self->_finderTags;
  v50 = v48;
  v51 = v50;
  if (v49 == v50)
  {
  }

  else
  {
    if (v50)
    {
      v52 = [(NSData *)v49 isEqual:v50];

      if (v52)
      {
        goto LABEL_89;
      }
    }

    else
    {
    }

    v17 |= 0x200uLL;
  }

LABEL_89:

  return v17;
}

- (id)displayName
{
  v3 = [(BRCStatInfo *)self logicalName];
  v4 = [v3 br_displayFilenameWithExtensionHidden:{-[BRCStatInfo isHiddenExt](self, "isHiddenExt")}];

  return v4;
}

- (BOOL)isEtagEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = [a3 ckInfo];
  v5 = [v4 hasEtag];
  if (v5 == [(BRFieldCKInfo *)self->_ckInfo hasEtag])
  {
    v7 = [v4 etag];
    v8 = [(BRFieldCKInfo *)self->_ckInfo etag];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCreatorRowID:(id)a3
{
  v4 = a3;
  if ([v4 longLongValue] < 0)
  {
    [BRCStatInfo setCreatorRowID:];
  }

  creatorRowID = self->_creatorRowID;
  self->_creatorRowID = v4;
}

- (id)lazyXattrWithXattrStager:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_xattrSignature)
  {
    lazyXattr = self->_lazyXattr;
    if (lazyXattr)
    {
      v7 = lazyXattr;
    }

    else
    {
      v8 = [v4 loadXattrBlobForSignature:? error:?];
      v9 = self->_lazyXattr;
      self->_lazyXattr = v8;

      v10 = self->_lazyXattr;
      if (!v10)
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          xattrSignature = self->_xattrSignature;
          *buf = 138412802;
          v17 = xattrSignature;
          v18 = 2112;
          v19 = 0;
          v20 = 2112;
          v21 = v11;
          _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to load xattr with signature %@ - %@%@", buf, 0x20u);
        }

        v10 = self->_lazyXattr;
      }

      v7 = v10;
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_aliasTargetItemID
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _type == BRC_ITEM_TYPE_ALIAS%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_updateAliasTarget:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: containerID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)diffAgainst:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] UNREACHABLE: Stat shouldn't be nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setCreatorRowID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: creatorRowIDLongLongValue >= 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end