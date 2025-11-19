@interface BRCLocalVersion
- (BOOL)isMissingUploadsWithDiffs:(unint64_t)a3;
- (BRCLocalVersion)initWithImportObject:(id)a3;
- (BRCLocalVersion)initWithLocalVersion:(id)a3;
- (BRCLocalVersion)initWithVersion:(id)a3;
- (BRFieldContentSignature)versionSignature;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithContext:(id)a3;
- (id)isPackageObj;
- (unint64_t)diffAgainstLocalVersion:(id)a3;
- (void)_learnVersionFromStoredLocalVersionIdentifier:(id)a3;
- (void)bumpLocalChangeCount;
- (void)clearCKInfo;
- (void)clearUploadedAssets;
- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4;
- (void)updateServerFieldsFromVersion:(id)a3;
- (void)updateWithImportObject:(id)a3 onlyContentDependentProperties:(BOOL)a4;
@end

@implementation BRCLocalVersion

- (id)isPackageObj
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BRCVersion *)self isPackage];

  return [v2 numberWithBool:v3];
}

- (id)descriptionWithContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BRCLocalVersion;
  v5 = [(BRCVersion *)&v11 descriptionWithContext:v4];
  v6 = [v5 mutableCopy];

  uploadError = self->_uploadError;
  if (uploadError)
  {
    v8 = [(NSError *)uploadError brc_obfuscate];
    v9 = [BRCDumpContext stringFromError:v8 context:v4];
    [v6 appendFormat:@" ul-error:%@", v9];
  }

  if (self->_uploadedAssets)
  {
    [v6 appendString:@" uploaded-assets"];
  }

  if (self->_previousItemGlobalID)
  {
    [v6 appendFormat:@" prev-item:%@", self->_previousItemGlobalID];
  }

  if (self->_localChangeCount)
  {
    [v6 appendFormat:@" lch:%llx", self->_localChangeCount];
  }

  if (self->_oldVersionIdentifier)
  {
    [v6 appendFormat:@" over:%@", self->_oldVersionIdentifier];
  }

  return v6;
}

- (unint64_t)diffAgainstLocalVersion:(id)a3
{
  v4 = a3;
  v5 = [(BRCVersion *)self diffAgainst:v4];
  if ((v5 & 0x1000000000000) != 0)
  {
    goto LABEL_7;
  }

  v6 = v4[17];
  v7 = self->_uploadedAssets;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  if (!v8)
  {

    goto LABEL_14;
  }

  v10 = [(CKRecord *)v7 isEqual:v8];

  if (v10)
  {
LABEL_7:
    if ((v5 & 0x2000000000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_8:
    v11 = v4[18];
    v12 = self->_uploadError;
    v13 = v11;
    v14 = v13;
    if (v12 == v13)
    {

      goto LABEL_18;
    }

    if (v13)
    {
      v15 = [(NSError *)v12 isEqual:v13];

      if (v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v5 |= 0x2000000000000uLL;
    goto LABEL_18;
  }

LABEL_14:
  v5 |= 0x1000000000000uLL;
  if ((v5 & 0x2000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  if ((v5 & 0x4000000000000) == 0)
  {
    v16 = v4[19];
    v17 = self->_previousItemGlobalID;
    v18 = v16;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if (v18)
      {
        v20 = [(BRCItemGlobalID *)v17 isEqual:v18];

        if (v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      v5 |= 0x4000000000000uLL;
    }
  }

LABEL_26:

  return v5;
}

- (BRCLocalVersion)initWithVersion:(id)a3
{
  v4.receiver = self;
  v4.super_class = BRCLocalVersion;
  return [(BRCVersion *)&v4 initWithVersion:a3];
}

- (BRCLocalVersion)initWithLocalVersion:(id)a3
{
  v4 = a3;
  v5 = [(BRCLocalVersion *)self initWithVersion:v4];
  if (v5)
  {
    v6 = [*(v4 + 17) copy];
    uploadedAssets = v5->_uploadedAssets;
    v5->_uploadedAssets = v6;

    v8 = [*(v4 + 18) copy];
    uploadError = v5->_uploadError;
    v5->_uploadError = v8;

    v10 = [*(v4 + 19) copy];
    previousItemGlobalID = v5->_previousItemGlobalID;
    v5->_previousItemGlobalID = v10;

    v5->_localChangeCount = *(v4 + 15);
    v12 = [*(v4 + 16) copy];
    oldVersionIdentifier = v5->_oldVersionIdentifier;
    v5->_oldVersionIdentifier = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithLocalVersion:self];
}

- (BOOL)isMissingUploadsWithDiffs:(unint64_t)a3
{
  if ([(NSData *)self->super._contentSignature brc_signatureIsPendingPlaceHolder])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalVersion isMissingUploadsWithDiffs:];
    }
  }

  else if ([(NSData *)self->super._thumbnailSignature brc_signatureIsPendingPlaceHolder])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalVersion isMissingUploadsWithDiffs:];
    }
  }

  else if ((a3 & 0x200000) != 0 && self->super._xattrSignature)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalVersion isMissingUploadsWithDiffs:];
    }
  }

  else if ((a3 & 0x1000000000000) != 0 && !self->_uploadedAssets)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalVersion isMissingUploadsWithDiffs:];
    }
  }

  else
  {
    if ((a3 & 0x2000000000000) == 0 || self->_uploadError)
    {
      return 0;
    }

    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalVersion isMissingUploadsWithDiffs:];
    }
  }

  return 1;
}

- (void)clearUploadedAssets
{
  uploadedAssets = self->_uploadedAssets;
  self->_uploadedAssets = 0;

  uploadError = self->_uploadError;
  self->_uploadError = 0;
}

- (void)_learnVersionFromStoredLocalVersionIdentifier:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@""];;
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = [v5 longLongValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectAtIndexedSubscript:0];
  v8 = 0;
  if (([v7 isEqualToString:&stru_2837504F0] & 1) == 0)
  {
    v8 = [v4 objectAtIndexedSubscript:0];
  }

  v9 = v8;
  v10 = v8;
  if (!self->super._ckInfo)
  {
    v11 = objc_alloc_init(BRFieldCKInfo);
    ckInfo = self->super._ckInfo;
    self->super._ckInfo = v11;

    [(BRFieldCKInfo *)self->super._ckInfo setKnownToServer:1];
  }

  if ([v10 containsString:@";"])
  {
    [BRCLocalVersion _learnVersionFromStoredLocalVersionIdentifier:];
  }

  [(BRFieldCKInfo *)self->super._ckInfo overwriteEtag:v10];
  self->_localChangeCount = v6;
}

- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4
{
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)updateServerFieldsFromVersion:(id)a3
{
  v4 = a3;
  v5 = [v4 conflictLoserEtags];
  conflictLoserEtags = self->super._conflictLoserEtags;
  self->super._conflictLoserEtags = v5;

  v7 = [v4 lastEditorDeviceOrUserRowID];
  [(BRCVersion *)self setLastEditorDeviceOrUserRowID:v7];

  v8 = [v4 lastEditorDeviceName];

  [(BRCVersion *)self setLastEditorDeviceName:v8];
}

- (BRFieldContentSignature)versionSignature
{
  v2 = [[BRFieldContentSignature alloc] initWithLocalVersion:self];

  return v2;
}

- (BRCLocalVersion)initWithImportObject:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRCLocalVersion;
  v5 = [(BRCLocalVersion *)&v9 init];
  if (v5)
  {
    v6 = [v4 quarantineInfo];
    quarantineInfo = v5->super._quarantineInfo;
    v5->super._quarantineInfo = v6;

    [(BRCLocalVersion *)v5 updateWithImportObject:v4 onlyContentDependentProperties:0];
  }

  return v5;
}

- (void)updateWithImportObject:(id)a3 onlyContentDependentProperties:(BOOL)a4
{
  v6 = a3;
  v10 = v6;
  if (a4)
  {
    p_originalPOSIXName = &self->super._originalPOSIXName;
    if (self->super._originalPOSIXName)
    {
      goto LABEL_6;
    }
  }

  else
  {
    self->super._mtime = [v6 modificationTime];
    p_originalPOSIXName = &self->super._originalPOSIXName;
  }

  v8 = [v10 logicalName];
  v9 = *p_originalPOSIXName;
  *p_originalPOSIXName = v8;

  v6 = v10;
LABEL_6:
  if (([v6 isPackageRoot] & 1) == 0)
  {
    self->super._size = [v10 size];
  }

  -[BRCLocalVersion _clearSignatures:isPackage:](self, "_clearSignatures:isPackage:", 3, [v10 isPackageRoot]);
}

- (void)bumpLocalChangeCount
{
  oldVersionIdentifier = self->_oldVersionIdentifier;
  self->_oldVersionIdentifier = 0;

  ++self->_localChangeCount;
}

- (void)clearCKInfo
{
  ckInfo = self->super._ckInfo;
  self->super._ckInfo = 0;

  oldVersionIdentifier = self->_oldVersionIdentifier;
  self->_oldVersionIdentifier = 0;
}

- (void)isMissingUploadsWithDiffs:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] we're a document with an xattr change%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isMissingUploadsWithDiffs:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] we're a document with an uploaded asset change%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isMissingUploadsWithDiffs:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] we're a document with an upload error change%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isMissingUploadsWithDiffs:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] we're a document missing a thumbnail signature%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isMissingUploadsWithDiffs:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] we're a document missing a content signature%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_learnVersionFromStoredLocalVersionIdentifier:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ![etag containsString:@;]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end