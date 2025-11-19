@interface BRCLocalStatInfo
+ (char)modeFromImportObject:(id)a3 isPackageFault:(BOOL)a4;
+ (id)_finderTagsFromImportObject:(id)a3;
- (BOOL)checkStateWithItemID:(id)a3 logToFile:(__sFILE *)a4;
- (BRCLocalStatInfo)initWithImportObject:(id)a3 error:(id *)a4;
- (BRCLocalStatInfo)initWithLocalStatInfo:(id)a3;
- (BRFieldStructureSignature)versionSignature;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithContext:(id)a3 origName:(id)a4;
- (id)initAsShareAcceptFaultWithName:(id)a3 mode:(char)a4 isDirectory:(BOOL)a5;
- (id)logicalName;
- (unint64_t)diffAgainstLocalInfo:(id)a3;
- (unsigned)itemScope;
- (void)_markChildPropagationComplete;
- (void)_markDead;
- (void)_markDeadAsSharedTopLevelItemWithDocumentsItemID:(id)a3;
- (void)_markNeedsPropertiesPropagatedToChildren;
- (void)_markZombieForCrossZoneMove;
- (void)_moveItemAsideWithUUIDString;
- (void)_updateStatAliasMeta:(id)a3;
- (void)_updateStatMeta:(id)a3;
- (void)_updateStatMetaFromServer:(id)a3;
- (void)bumpLocalChangeCount;
- (void)clearBouncedName;
- (void)clearCKInfo;
- (void)itemScope;
- (void)setFilename:(id)a3 forceBouncedLogicalName:(id)a4 serverName:(id)a5;
- (void)updateFromImportObject:(id)a3 onlyContentDependentProperties:(BOOL)a4;
- (void)updateWithFileSystemFlags:(unint64_t)a3 ignoreExecutable:(BOOL)a4;
@end

@implementation BRCLocalStatInfo

- (unsigned)itemScope
{
  itemScope = self->_itemScope;
  if (!itemScope)
  {
    if (self->super._state == 1)
    {
      return 0;
    }

    else
    {
      v7 = v2;
      v8 = v3;
      [(BRCLocalStatInfo *)&self->_itemScope itemScope];
      return v6;
    }
  }

  return itemScope;
}

- (id)logicalName
{
  bouncedLogicalName = self->_bouncedLogicalName;
  if (!bouncedLogicalName)
  {
    bouncedLogicalName = self->super._logicalName;
  }

  return bouncedLogicalName;
}

- (id)descriptionWithContext:(id)a3 origName:(id)a4
{
  v13.receiver = self;
  v13.super_class = BRCLocalStatInfo;
  v5 = [(BRCStatInfo *)&v13 descriptionWithContext:a3 origName:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BRCLocalStatInfo descriptionWithContext:origName:];
  }

  bouncedLogicalName = self->_bouncedLogicalName;
  if (bouncedLogicalName)
  {
    v7 = [(NSString *)bouncedLogicalName fp_obfuscatedFilename];
    [v5 appendFormat:@" bln:%@", v7];
  }

  itemScope = self->_itemScope;
  v9 = @"docs";
  v10 = @"unknown";
  if (itemScope == 3)
  {
    v10 = @"trash";
  }

  if (itemScope != 2)
  {
    v9 = v10;
  }

  if (itemScope == 1)
  {
    v11 = @"data";
  }

  else
  {
    v11 = v9;
  }

  [v5 appendFormat:@" sc:%@", v11];
  if (self->_localChangeCount)
  {
    [v5 appendFormat:@" lch:%llx", self->_localChangeCount];
  }

  if (self->_oldVersionIdentifier)
  {
    [v5 appendFormat:@" over:%@", self->_oldVersionIdentifier];
  }

  if (self->_processingStamp)
  {
    [v5 appendFormat:@" pstamp:%@", self->_processingStamp];
  }

  return v5;
}

- (id)initAsShareAcceptFaultWithName:(id)a3 mode:(char)a4 isDirectory:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = BRCLocalStatInfo;
  v9 = [(BRCLocalStatInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->super._state = 0;
    if (v5)
    {
      v11 = 10;
    }

    else
    {
      v11 = 8;
    }

    v9->super._type = v11;
    v9->super._mode = a4;
    [(BRCLocalStatInfo *)v9 setFilename:v8];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithLocalStatInfo:self];
}

- (void)setFilename:(id)a3 forceBouncedLogicalName:(id)a4 serverName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v9 br_isSideFaultName] & 1) != 0 || objc_msgSend(v10, "br_isSideFaultName"))
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalStatInfo setFilename:forceBouncedLogicalName:serverName:];
    }
  }

  else if (-[NSString isEqualToString:](self->_bouncedLogicalName, "isEqualToString:", v9) && ([v11 isEqualToString:self->_bouncedLogicalName] & 1) == 0)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalStatInfo setFilename:? forceBouncedLogicalName:? serverName:?];
    }
  }

  else
  {
    objc_storeStrong(&self->_bouncedLogicalName, a4);
    objc_storeStrong(&self->super._logicalName, a3);
  }
}

- (void)_moveItemAsideWithUUIDString
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't move aside a root item!%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)diffAgainstLocalInfo:(id)a3
{
  v4 = a3;
  v5 = [(BRCStatInfo *)self diffAgainst:v4];
  v6 = v5;
  if ((v5 & 0x100000000) == 0 && self->super._state != *(v4 + 24))
  {
    v6 = v5 | 0x100000000;
  }

  if ((v6 & 0x1000000000) != 0)
  {
    goto LABEL_10;
  }

  v7 = v4[19];
  v8 = self->_bouncedLogicalName;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_10;
  }

  if (!v9)
  {

    goto LABEL_15;
  }

  v11 = [(NSString *)v8 isEqual:v9];

  if (v11)
  {
LABEL_10:
    if ((v6 & 0x2000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_15:
  v6 |= 0x1000000000uLL;
  if ((v6 & 0x2000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (self->_itemScope != *(v4 + 160))
  {
    v6 |= 0x2000000000uLL;
  }

LABEL_13:

  return v6;
}

- (void)_markZombieForCrossZoneMove
{
  self->super._state = -3;
  processingStamp = self->_processingStamp;
  self->_processingStamp = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_markDead
{
  if (self->super._state != 1)
  {
    self->super._state = 1;
    processingStamp = self->_processingStamp;
    self->_processingStamp = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)_markDeadAsSharedTopLevelItemWithDocumentsItemID:(id)a3
{
  v4 = a3;
  [(BRCLocalStatInfo *)self _markDead];
  parentID = self->super._parentID;
  self->super._parentID = v4;
}

- (void)_updateStatMeta:(id)a3
{
  v4 = a3;
  self->super._mode = [v4 mode];
  self->super._birthtime = [v4 birthtime];
  self->super._hiddenExt = [v4 isHiddenExt];
  v5 = [v4 xattrSignature];
  xattrSignature = self->super._xattrSignature;
  self->super._xattrSignature = v5;

  lazyXattr = self->super._lazyXattr;
  self->super._lazyXattr = 0;

  v8 = [v4 finderTags];
  finderTags = self->super._finderTags;
  self->super._finderTags = v8;

  self->super._favoriteRank = [v4 favoriteRank];
  self->super._lastUsedTime = [v4 lastUsedTime];
  v10 = [v4 trashPutBackPath];
  trashPutBackPath = self->super._trashPutBackPath;
  self->super._trashPutBackPath = v10;

  v12 = [v4 trashPutBackParentID];

  trashPutBackParentID = self->super._trashPutBackParentID;
  self->super._trashPutBackParentID = v12;
}

- (BOOL)checkStateWithItemID:(id)a3 logToFile:(__sFILE *)a4
{
  v5.receiver = self;
  v5.super_class = BRCLocalStatInfo;
  return [(BRCStatInfo *)&v5 checkStateWithItemID:a3 logToFile:a4];
}

- (BRCLocalStatInfo)initWithLocalStatInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRCLocalStatInfo;
  v5 = [(BRCStatInfo *)&v8 initWithStatInfo:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_processingStamp, *(v4 + 21));
    objc_storeStrong(&v6->_bouncedLogicalName, *(v4 + 19));
    v6->_localChangeCount = *(v4 + 16);
    objc_storeStrong(&v6->_oldVersionIdentifier, *(v4 + 17));
    v6->_itemScope = *(v4 + 160);
    objc_storeStrong(&v6->_fpCreationItemIdentifier, *(v4 + 18));
  }

  return v6;
}

- (BRFieldStructureSignature)versionSignature
{
  v2 = [[BRFieldStructureSignature alloc] initWithLocalStatInfo:self];

  return v2;
}

- (void)_updateStatAliasMeta:(id)a3
{
  v4 = a3;
  if (([v4 isBRAlias] & 1) == 0)
  {
    [BRCLocalStatInfo(FPFSAdditions) _updateStatAliasMeta:];
  }

  v5 = [v4 st];
  v6 = [v5 logicalName];
  logicalName = v6;
  if (!v6)
  {
    logicalName = self->super._logicalName;
  }

  objc_storeStrong(&self->super._logicalName, logicalName);

  v8 = [v4 parentItemIDOnFS];
  parentID = v8;
  if (!v8)
  {
    parentID = self->super._parentID;
  }

  objc_storeStrong(&self->super._parentID, parentID);

  v10 = [v4 st];
  v11 = [v10 finderTags];
  finderTags = self->super._finderTags;
  self->super._finderTags = v11;

  v13 = [v4 st];
  self->super._favoriteRank = [v13 favoriteRank];

  v14 = [v4 st];
  self->super._lastUsedTime = [v14 lastUsedTime];
}

- (void)updateWithFileSystemFlags:(unint64_t)a3 ignoreExecutable:(BOOL)a4
{
  self->super._hiddenExt = (a3 & 0x10) != 0;
  v4 = (a3 >> 2) & 1;
  if ((a3 & 1) != 0 && !a4)
  {
    LOBYTE(v4) = ((a3 & 4) != 0) | 2;
  }

  self->super._mode = v4;
}

- (BRCLocalStatInfo)initWithImportObject:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24.receiver = self;
  v24.super_class = BRCLocalStatInfo;
  v7 = [(BRCLocalStatInfo *)&v24 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  v7->super._state = 0;
  if (![v6 isFault])
  {
    if ([v6 isSymLink])
    {
      v16 = 5;
    }

    else
    {
      if ([v6 isBRAlias])
      {
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          [BRCLocalStatInfo(FPFSAdditions) initWithImportObject:error:];
        }

        v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: nobody should import an item from a BR Alias"];
        if (!v11)
        {
          goto LABEL_8;
        }

        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (!os_log_type_enabled(v13, 0x90u))
        {
          goto LABEL_7;
        }

        v21 = "(passed to caller)";
        *buf = 136315906;
        v26 = "[BRCLocalStatInfo(FPFSAdditions) initWithImportObject:error:]";
        v27 = 2080;
        if (!a4)
        {
          v21 = "(ignored by caller)";
        }

        goto LABEL_32;
      }

      if ([v6 isFinderAlias])
      {
        v16 = 6;
      }

      else if ([v6 isDocument])
      {
        v16 = 1;
      }

      else
      {
        if (([v6 isUnixDir] & 1) == 0)
        {
          v22 = brc_bread_crumbs();
          v23 = brc_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            [BRCLocalStatInfo(FPFSAdditions) initWithImportObject:error:];
          }

          v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Unexpected import object %@", v6}];
          if (!v11)
          {
            goto LABEL_8;
          }

          v12 = brc_bread_crumbs();
          v13 = brc_default_log();
          if (!os_log_type_enabled(v13, 0x90u))
          {
            goto LABEL_7;
          }

          v21 = "(passed to caller)";
          *buf = 136315906;
          v26 = "[BRCLocalStatInfo(FPFSAdditions) initWithImportObject:error:]";
          v27 = 2080;
          if (!a4)
          {
            v21 = "(ignored by caller)";
          }

          goto LABEL_32;
        }

        v16 = 0;
      }
    }

    v8->super._type = v16;
    [(BRCLocalStatInfo *)v8 updateFromImportObject:v6 onlyContentDependentProperties:0];
LABEL_14:
    v15 = v8;
    goto LABEL_15;
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalStatInfo(FPFSAdditions) initWithImportObject:error:];
  }

  v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: nobody should import an item from a fault"];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, 0x90u))
  {
    v21 = "(passed to caller)";
    *buf = 136315906;
    v26 = "[BRCLocalStatInfo(FPFSAdditions) initWithImportObject:error:]";
    v27 = 2080;
    if (!a4)
    {
      v21 = "(ignored by caller)";
    }

LABEL_32:
    v28 = v21;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
  }

LABEL_7:

LABEL_8:
  if (a4)
  {
    v14 = v11;
    *a4 = v11;
  }

  v15 = 0;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (char)modeFromImportObject:(id)a3 isPackageFault:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 isWritable];
  if ([v5 isExecutable] && objc_msgSend(v5, "isFile") && (objc_msgSend(v5, "isFault") & v4) == 0)
  {
    v6 |= 2u;
  }

  return v6;
}

+ (id)_finderTagsFromImportObject:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 hasFinderTags])
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  v4 = [v3 fileURL];
  v24 = 0;
  v25 = 0;
  v5 = [v4 br_getTagNames:&v25 error:&v24];
  v6 = v25;
  v7 = v24;

  if ((v5 & 1) == 0)
  {
    v11 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      +[BRCLocalStatInfo(FPFSAdditions) _finderTagsFromImportObject:];
    }

    v10 = 0;
    goto LABEL_19;
  }

  if (![v6 count])
  {
LABEL_15:
    v10 = 0;
    goto LABEL_20;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BRCLocalStatInfo(FPFSAdditions) *)v6 _finderTagsFromImportObject:v8, v9];
  }

  v10 = objc_alloc_init(BRFieldFinderTags);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BRFieldFinderTags *)v10 addTags:*(*(&v20 + 1) + 8 * i), v20];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v13);
  }

LABEL_19:

LABEL_20:
  v17 = [(BRFieldFinderTags *)v10 data];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_updateStatMetaFromServer:(id)a3
{
  v4 = a3;
  v5 = [v4 st];
  self->super._mode = [v5 mode];
  self->super._birthtime = [v5 birthtime];
  self->super._hiddenExt = [v5 isHiddenExt];
  v6 = [v5 xattrSignature];
  xattrSignature = self->super._xattrSignature;
  self->super._xattrSignature = v6;

  lazyXattr = self->super._lazyXattr;
  self->super._lazyXattr = 0;

  v9 = [v5 finderTags];
  finderTags = self->super._finderTags;
  self->super._finderTags = v9;

  self->super._favoriteRank = [v5 favoriteRank];
  self->super._lastUsedTime = [v5 lastUsedTime];
  v11 = [v5 trashPutBackPath];
  trashPutBackPath = self->super._trashPutBackPath;
  self->super._trashPutBackPath = v11;

  v13 = [v5 trashPutBackParentID];
  trashPutBackParentID = self->super._trashPutBackParentID;
  self->super._trashPutBackParentID = v13;

  v15 = [v5 ckInfo];
  ckInfo = self->super._ckInfo;
  self->super._ckInfo = v15;

  if (self->super._state == 1 && ![v5 state])
  {
    bouncedLogicalName = self->_bouncedLogicalName;
    self->_bouncedLogicalName = 0;
  }

  self->super._state = [v5 state];
  v18 = [v5 logicalName];
  logicalName = self->super._logicalName;
  self->super._logicalName = v18;

  v20 = [v4 parentItemIDOnFS];

  parentID = self->super._parentID;
  self->super._parentID = v20;

  aliasTarget = self->super._aliasTarget;
  if (aliasTarget)
  {
    v23 = [v5 aliasTarget];
    v24 = [(NSString *)aliasTarget isEqualToString:v23];

    if (!v24)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [BRCLocalStatInfo(FPFSAdditions) _updateStatMetaFromServer:];
      }
    }
  }
}

- (void)updateFromImportObject:(id)a3 onlyContentDependentProperties:(BOOL)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 isUnixDir] && (objc_msgSend(v6, "isExecutable") & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Inaccessible folder %@%@", &v22, 0x16u);
    }
  }

  self->super._state = 0;
  v9 = [v6 parentItemGlobalID];

  if (v9)
  {
    v10 = [v6 parentItemGlobalID];
    v11 = [v10 itemID];
    parentID = self->super._parentID;
    self->super._parentID = v11;
  }

  if (!a4)
  {
    self->super._birthtime = [v6 birthTime];
    v13 = [v6 logicalName];
    [(BRCLocalStatInfo *)self setFilename:v13];

    v14 = [BRCLocalStatInfo _finderTagsFromImportObject:v6];
    v15 = v14;
    if (self->super._finderTags)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BRCLocalStatInfo(FPFSAdditions) updateFromImportObject:onlyContentDependentProperties:];
      }
    }

    objc_storeStrong(&self->super._finderTags, v15);
    self->super._hiddenExt = [v6 isHiddenExtension];
    if ([v6 isFault])
    {
      v19 = [v6 isPackageRoot];
    }

    else
    {
      v19 = 0;
    }

    self->super._mode = [BRCLocalStatInfo modeFromImportObject:v6 isPackageFault:v19];
  }

  v20 = [(BRFieldCKInfo *)self->super._ckInfo etag];

  if (!v20)
  {
    [(BRCStatInfo *)self setCreatorRowID:&unk_2837B0238];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clearCKInfo
{
  ckInfo = self->super._ckInfo;
  self->super._ckInfo = 0;

  oldVersionIdentifier = self->_oldVersionIdentifier;
  self->_oldVersionIdentifier = 0;
}

- (void)bumpLocalChangeCount
{
  oldVersionIdentifier = self->_oldVersionIdentifier;
  self->_oldVersionIdentifier = 0;

  ++self->_localChangeCount;
}

- (void)clearBouncedName
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCLocalStatInfo(FPFSAdditions) clearBouncedName];
  }

  bouncedLogicalName = self->_bouncedLogicalName;
  self->_bouncedLogicalName = 0;
}

- (void)_markNeedsPropertiesPropagatedToChildren
{
  if (!self->_processingStamp)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:brc_current_date_nsec()];
    processingStamp = self->_processingStamp;
    self->_processingStamp = v3;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_markChildPropagationComplete
{
  processingStamp = self->_processingStamp;
  self->_processingStamp = 0;
  MEMORY[0x2821F96F8]();
}

- (void)itemScope
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _itemScope != BRC_ITEM_SCOPE_UNKNOWN || _state == BRC_ITEM_STATE_TOMBSTONE%@", &v7, 0xCu);
  }

  *a2 = *a1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)descriptionWithContext:origName:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [s isKindOfClass:[NSMutableString class]]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setFilename:(void *)a1 forceBouncedLogicalName:serverName:.cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Not overriding name equal to bounced name %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setFilename:forceBouncedLogicalName:serverName:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: got a fault name%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end