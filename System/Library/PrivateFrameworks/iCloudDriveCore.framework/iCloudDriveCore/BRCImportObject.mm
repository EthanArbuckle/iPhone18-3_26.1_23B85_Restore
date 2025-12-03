@interface BRCImportObject
- (BOOL)isBRAlias;
- (BOOL)isDocument;
- (BOOL)isFault;
- (BOOL)isFileWithFinderInfoAliasBit;
- (BOOL)isFinderAlias;
- (BRCGenerationID)generationID;
- (BRCImportObject)initWithURL:(id)l existingItem:(id)item quarantineInfo:(id)info error:(id *)error;
- (BRCImportObject)initWithURL:(id)l logicalName:(id)name quarantineInfo:(id)info parentItem:(id)item error:(id *)error;
- (BRCImportObject)initWithURL:(id)l packageRoot:(id)root error:(id *)error;
- (id)initAsNewDirectoryWithLogicalName:(id)name parentItem:(id)item;
- (id)initAsSymlinkWithTarget:(id)target parentItem:(id)item logicalName:(id)name error:(id *)error;
- (void)_resolveParentBasedPropertiesWithParent:(id)parent logicalName:(id)name;
@end

@implementation BRCImportObject

- (BOOL)isDocument
{
  if ([(BRCImportObject *)self isFile])
  {
    if ((*(self + 161) & 0x40) != 0 || [(BRCImportObject *)self isSymLink])
    {
      return 0;
    }

    else
    {
      return ![(BRCImportObject *)self isFinderAlias];
    }
  }

  else
  {

    return [(BRCImportObject *)self isPackageRoot];
  }
}

- (BOOL)isFault
{
  isDocument = [(BRCImportObject *)self isDocument];
  if (isDocument)
  {
    logicalName = [(BRCImportObject *)self logicalName];
    br_isSideFaultName = [logicalName br_isSideFaultName];

    LOBYTE(isDocument) = br_isSideFaultName;
  }

  return isDocument;
}

- (BRCGenerationID)generationID
{
  generationID = self->_generationID;
  if (!generationID)
  {
    v4 = [[BRCGenerationID alloc] initWithFSGenerationID:self->_fsGenerationID];
    v5 = self->_generationID;
    self->_generationID = v4;

    generationID = self->_generationID;
  }

  return generationID;
}

- (BOOL)isFileWithFinderInfoAliasBit
{
  isFile = [(BRCImportObject *)self isFile];
  if (isFile)
  {
    return (*(self + 161) >> 5) & 1;
  }

  return isFile;
}

- (BOOL)isFinderAlias
{
  isFileWithFinderInfoAliasBit = [(BRCImportObject *)self isFileWithFinderInfoAliasBit];
  if (isFileWithFinderInfoAliasBit)
  {
    LOBYTE(isFileWithFinderInfoAliasBit) = (*(self + 161) & 0x40) == 0;
  }

  return isFileWithFinderInfoAliasBit;
}

- (BOOL)isBRAlias
{
  isFileWithFinderInfoAliasBit = [(BRCImportObject *)self isFileWithFinderInfoAliasBit];
  if (isFileWithFinderInfoAliasBit)
  {
    return (*(self + 161) >> 6) & 1;
  }

  return isFileWithFinderInfoAliasBit;
}

- (id)initAsSymlinkWithTarget:(id)target parentItem:(id)item logicalName:(id)name error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  itemCopy = item;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = BRCImportObject;
  v14 = [(BRCImportObject *)&v24 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_4;
  }

  if (targetCopy)
  {
    [(BRCImportObject *)v14 _resolveParentBasedPropertiesWithParent:itemCopy logicalName:nameCopy];
    v15->_mode = -24128;
    v15->_birthtime.tv_sec = time(0);
    v15->_mtime = v15->_birthtime;
    objc_storeStrong(&v15->_symlinkContent, target);
LABEL_4:
    v16 = v15;
    goto LABEL_11;
  }

  v17 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:96];
  if (v17)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      v23 = "(passed to caller)";
      *buf = 136315906;
      v26 = "[BRCImportObject initAsSymlinkWithTarget:parentItem:logicalName:error:]";
      v27 = 2080;
      if (!error)
      {
        v23 = "(ignored by caller)";
      }

      v28 = v23;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v20 = v17;
    *error = v17;
  }

  v16 = 0;
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BRCImportObject)initWithURL:(id)l existingItem:(id)item quarantineInfo:(id)info error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  lCopy = l;
  itemCopy = item;
  v39.receiver = self;
  v39.super_class = BRCImportObject;
  v12 = [(BRCImportObject *)&v39 init];
  if (!v12)
  {
LABEL_22:
    v26 = v12;
    goto LABEL_23;
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  objc_storeStrong(&v12->_fileURL, l);
  if (itemCopy)
  {
    v14 = [itemCopy st];
    logicalName = [v14 logicalName];
    p_logicalName = &v12->_logicalName;
    logicalName = v12->_logicalName;
    v12->_logicalName = logicalName;
  }

  else
  {
    lastPathComponent = [lCopy lastPathComponent];
    p_logicalName = &v12->_logicalName;
    v14 = v12->_logicalName;
    v12->_logicalName = lastPathComponent;
  }

  v19 = open(fileSystemRepresentation, 2129924);
  if ((v19 & 0x80000000) != 0)
  {
    v21 = *__error();
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v20 = v19;
  v21 = [(BRCImportObject *)v12 _resolveAgainstFileDescriptor:v19];
  close(v20);
  if (!v21)
  {
LABEL_14:
    if ([*p_logicalName br_isExcludedWithMaximumDepth:1024])
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        path = [(NSURL *)v12->_fileURL path];
        *buf = 138412546;
        v41 = path;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEFAULT, "[WARNING] fileURL is excluded at %@%@", buf, 0x16u);
      }

      *(v12 + 161) |= 1u;
    }

    if ([itemCopy isDocument] && -[BRCImportObject isUnixDir](v12, "isUnixDir"))
    {
      *(v12 + 161) |= 4u;
    }

    session = [itemCopy session];
    session = v12->_session;
    v12->_session = session;

    itemParentGlobalID = [itemCopy itemParentGlobalID];
    parentItemGlobalID = v12->_parentItemGlobalID;
    v12->_parentItemGlobalID = itemParentGlobalID;

    appLibrary = [itemCopy appLibrary];
    appLibrary = v12->_appLibrary;
    v12->_appLibrary = appLibrary;

    v12->_itemScope = [itemCopy itemScope];
    v12->_sharingOptions = [itemCopy sharingOptions];
    v12->_isUserVisible = [itemCopy isUserVisible];
    goto LABEL_22;
  }

LABEL_7:
  v22 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v21];
  if (v22)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, 0x90u))
    {
      v38 = "(passed to caller)";
      *buf = 136315906;
      v41 = "[BRCImportObject initWithURL:existingItem:quarantineInfo:error:]";
      v42 = 2080;
      if (!error)
      {
        v38 = "(ignored by caller)";
      }

      v43 = v38;
      v44 = 2112;
      v45 = v22;
      v46 = 2112;
      v47 = v23;
      _os_log_error_impl(&dword_223E7A000, v24, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v25 = v22;
    *error = v22;
  }

  v26 = 0;
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_resolveParentBasedPropertiesWithParent:(id)parent logicalName:(id)name
{
  parentCopy = parent;
  nameCopy = name;
  objc_storeStrong(&self->_logicalName, name);
  session = [parentCopy session];
  session = self->_session;
  self->_session = session;

  itemGlobalID = [parentCopy itemGlobalID];
  parentItemGlobalID = self->_parentItemGlobalID;
  self->_parentItemGlobalID = itemGlobalID;

  appLibrary = [parentCopy appLibrary];
  appLibrary = self->_appLibrary;
  self->_appLibrary = appLibrary;

  includesDataScope = [(BRCAppLibrary *)self->_appLibrary includesDataScope];
  if ([parentCopy isZoneRoot])
  {
    if (includesDataScope)
    {
      v15 = [nameCopy isEqualToString:*MEMORY[0x277CFAD50]] == 0;
      v16 = 1;
    }

    else
    {
      v15 = [nameCopy isEqualToString:*MEMORY[0x277CFADB8]] == 0;
      v16 = 2;
    }

    if (!v15)
    {
      ++v16;
    }

    goto LABEL_10;
  }

  itemID = [parentCopy itemID];
  if ([itemID isDocumentsFolder])
  {
    v18 = [nameCopy isEqualToString:*MEMORY[0x277CFADB8]];

    if (v18)
    {
      v16 = 3;
LABEL_10:
      self->_itemScope = v16;
      goto LABEL_13;
    }
  }

  else
  {
  }

  self->_itemScope = [parentCopy itemScope];
LABEL_13:
  if ([nameCopy isEqualToString:*MEMORY[0x277CFAD90]])
  {
    fileObjectID = [parentCopy fileObjectID];
    if ([fileObjectID isAppLibraryRoot] && (objc_msgSend(fileObjectID, "isCloudDocsRoot") & 1) == 0)
    {
      appLibrary2 = [parentCopy appLibrary];
      v21 = self->_appLibrary;
      self->_appLibrary = appLibrary2;
      v22 = appLibrary2;

      *(self + 162) |= 2u;
      rootItemGlobalID = [(BRCAppLibrary *)v22 rootItemGlobalID];
      v24 = self->_parentItemGlobalID;
      self->_parentItemGlobalID = rootItemGlobalID;
    }
  }

  self->_sharingOptions = [parentCopy sharingOptions] & 0x78;
  isUserVisible = [parentCopy isUserVisible];
  itemID2 = [parentCopy itemID];
  isNonDesktopRoot = [itemID2 isNonDesktopRoot];
  itemScope = [parentCopy itemScope];
  isZoneRoot = [parentCopy isZoneRoot];
  if (isZoneRoot)
  {
    logicalName = 0;
  }

  else
  {
    v4 = [parentCopy st];
    logicalName = [v4 logicalName];
  }

  appLibrary3 = [parentCopy appLibrary];
  self->_isUserVisible = [BRCLocalItem computeUserVisibleStatusOfLiveItemWithParentVisible:isUserVisible parentIsNonDesktopRoot:isNonDesktopRoot parentScope:itemScope itemFilename:v32 parentFilename:logicalName appLibrary:appLibrary3];

  if ((isZoneRoot & 1) == 0)
  {
  }

  if ([(NSString *)self->_logicalName br_isExcludedWithMaximumDepth:1])
  {
    *(self + 161) |= 1u;
  }
}

- (id)initAsNewDirectoryWithLogicalName:(id)name parentItem:(id)item
{
  nameCopy = name;
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = BRCImportObject;
  v8 = [(BRCImportObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(BRCImportObject *)v8 _resolveParentBasedPropertiesWithParent:itemCopy logicalName:nameCopy];
    v9->_mode = 16832;
    v9->_birthtime.tv_sec = time(0);
    v9->_mtime = v9->_birthtime;
  }

  return v9;
}

- (BRCImportObject)initWithURL:(id)l logicalName:(id)name quarantineInfo:(id)info parentItem:(id)item error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  lCopy = l;
  nameCopy = name;
  infoCopy = info;
  itemCopy = item;
  v36.receiver = self;
  v36.super_class = BRCImportObject;
  v17 = [(BRCImportObject *)&v36 init];
  if (!v17)
  {
LABEL_15:
    v31 = v17;
    goto LABEL_16;
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  objc_storeStrong(&v17->_fileURL, l);
  objc_storeStrong(&v17->_logicalName, name);
  objc_storeStrong(&v17->_quarantineInfo, info);
  v24 = BRCOpenAt(0xFFFFFFFFLL, fileSystemRepresentation, 32772, v19, v20, v21, v22, v23, v36.receiver);
  if ((v24 & 0x80000000) != 0)
  {
    v26 = *__error();
    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v25 = v24;
  v26 = [(BRCImportObject *)v17 _resolveAgainstFileDescriptor:v24];
  close(v25);
  if (!v26)
  {
LABEL_11:
    if ([(BRCImportObject *)v17 isUnixDir])
    {
      v32 = 4;
    }

    else
    {
      v32 = 0;
    }

    *(v17 + 161) = *(v17 + 161) & 0xFB | v32;
    [(BRCImportObject *)v17 _resolveParentBasedPropertiesWithParent:itemCopy logicalName:nameCopy];
    goto LABEL_15;
  }

LABEL_4:
  v27 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v26];
  if (v27)
  {
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, 0x90u))
    {
      v35 = "(passed to caller)";
      *buf = 136315906;
      v38 = "[BRCImportObject initWithURL:logicalName:quarantineInfo:parentItem:error:]";
      v39 = 2080;
      if (!error)
      {
        v35 = "(ignored by caller)";
      }

      v40 = v35;
      v41 = 2112;
      v42 = v27;
      v43 = 2112;
      v44 = v28;
      _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v30 = v27;
    *error = v27;
  }

  v31 = 0;
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BRCImportObject)initWithURL:(id)l packageRoot:(id)root error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rootCopy = root;
  v35.receiver = self;
  v35.super_class = BRCImportObject;
  v11 = [(BRCImportObject *)&v35 init];
  if (!v11)
  {
    goto LABEL_18;
  }

  session = [rootCopy session];
  session = v11->_session;
  v11->_session = session;

  appLibrary = [rootCopy appLibrary];
  appLibrary = v11->_appLibrary;
  v11->_appLibrary = appLibrary;

  objc_storeStrong(&v11->_fileURL, l);
  lastPathComponent = [(NSURL *)v11->_fileURL lastPathComponent];
  logicalName = v11->_logicalName;
  v11->_logicalName = lastPathComponent;

  *(v11 + 161) |= 2u;
  if ([(NSString *)v11->_logicalName br_isExcludedWithMaximumDepth:1])
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      path = [(NSURL *)v11->_fileURL path];
      *buf = 138412546;
      v37 = path;
      v38 = 2112;
      *v39 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Package item is excluded at %@%@", buf, 0x16u);
    }

    *(v11 + 161) |= 1u;
  }

  v21 = open([(NSURL *)v11->_fileURL fileSystemRepresentation], 2129924);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = v21;
    v23 = [(BRCImportObject *)v11 _resolveAgainstFileDescriptor:v21];
    close(v22);
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v23 = *__error();
  v24 = *__error();
  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, 0x90u))
  {
    path2 = [(NSURL *)v11->_fileURL path];
    *buf = 138412802;
    v37 = path2;
    v38 = 1024;
    *v39 = v24;
    *&v39[4] = 2112;
    *&v39[6] = v25;
    _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] Failed opening %@ %{errno}d%@", buf, 0x1Cu);
  }

  *__error() = v24;
  if (v23)
  {
LABEL_12:
    v27 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v23];
    if (v27)
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        v33 = "(passed to caller)";
        *buf = 136315906;
        v37 = "[BRCImportObject(BRCPackageAdditions) initWithURL:packageRoot:error:]";
        v38 = 2080;
        if (!error)
        {
          v33 = "(ignored by caller)";
        }

        *v39 = v33;
        *&v39[8] = 2112;
        *&v39[10] = v27;
        v40 = 2112;
        v41 = v28;
        _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v30 = v27;
      *error = v27;
    }

    v11 = 0;
  }

LABEL_18:

  v31 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_resolveAgainstFileDescriptor:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Inappropriate location or an alias for '%@'%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_resolveAgainstFileDescriptor:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Directory is marked as alias, ignoring '%@'%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_resolveAgainstFileDescriptor:(NSObject *)a3 .cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 8) path];
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] BR alias is ignored at '%@'%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveAgainstFileDescriptor:(void *)a1 .cold.4(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _symlinkContent%@", &v7, 0xCu);
  }

  *a2 = *a1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveAgainstFileDescriptor:(NSObject *)a3 .cold.5(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 8) fileSystemRepresentation];
  OUTLINED_FUNCTION_1_0();
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] Recieved an error while reading xattrs at '%s'%@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end