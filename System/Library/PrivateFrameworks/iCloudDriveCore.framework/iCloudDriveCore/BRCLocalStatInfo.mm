@interface BRCLocalStatInfo
+ (char)modeFromImportObject:(id)object isPackageFault:(BOOL)fault;
+ (id)_finderTagsFromImportObject:(id)object;
- (BOOL)checkStateWithItemID:(id)d logToFile:(__sFILE *)file;
- (BRCLocalStatInfo)initWithImportObject:(id)object error:(id *)error;
- (BRCLocalStatInfo)initWithLocalStatInfo:(id)info;
- (BRFieldStructureSignature)versionSignature;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithContext:(id)context origName:(id)name;
- (id)initAsShareAcceptFaultWithName:(id)name mode:(char)mode isDirectory:(BOOL)directory;
- (id)logicalName;
- (unint64_t)diffAgainstLocalInfo:(id)info;
- (unsigned)itemScope;
- (void)_markChildPropagationComplete;
- (void)_markDead;
- (void)_markDeadAsSharedTopLevelItemWithDocumentsItemID:(id)d;
- (void)_markNeedsPropertiesPropagatedToChildren;
- (void)_markZombieForCrossZoneMove;
- (void)_moveItemAsideWithUUIDString;
- (void)_updateStatAliasMeta:(id)meta;
- (void)_updateStatMeta:(id)meta;
- (void)_updateStatMetaFromServer:(id)server;
- (void)bumpLocalChangeCount;
- (void)clearBouncedName;
- (void)clearCKInfo;
- (void)itemScope;
- (void)setFilename:(id)filename forceBouncedLogicalName:(id)name serverName:(id)serverName;
- (void)updateFromImportObject:(id)object onlyContentDependentProperties:(BOOL)properties;
- (void)updateWithFileSystemFlags:(unint64_t)flags ignoreExecutable:(BOOL)executable;
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

- (id)descriptionWithContext:(id)context origName:(id)name
{
  v13.receiver = self;
  v13.super_class = BRCLocalStatInfo;
  v5 = [(BRCStatInfo *)&v13 descriptionWithContext:context origName:name];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BRCLocalStatInfo descriptionWithContext:origName:];
  }

  bouncedLogicalName = self->_bouncedLogicalName;
  if (bouncedLogicalName)
  {
    fp_obfuscatedFilename = [(NSString *)bouncedLogicalName fp_obfuscatedFilename];
    [v5 appendFormat:@" bln:%@", fp_obfuscatedFilename];
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

- (id)initAsShareAcceptFaultWithName:(id)name mode:(char)mode isDirectory:(BOOL)directory
{
  directoryCopy = directory;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = BRCLocalStatInfo;
  v9 = [(BRCLocalStatInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->super._state = 0;
    if (directoryCopy)
    {
      v11 = 10;
    }

    else
    {
      v11 = 8;
    }

    v9->super._type = v11;
    v9->super._mode = mode;
    [(BRCLocalStatInfo *)v9 setFilename:nameCopy];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithLocalStatInfo:self];
}

- (void)setFilename:(id)filename forceBouncedLogicalName:(id)name serverName:(id)serverName
{
  filenameCopy = filename;
  nameCopy = name;
  serverNameCopy = serverName;
  if (([filenameCopy br_isSideFaultName] & 1) != 0 || objc_msgSend(nameCopy, "br_isSideFaultName"))
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalStatInfo setFilename:forceBouncedLogicalName:serverName:];
    }
  }

  else if (-[NSString isEqualToString:](self->_bouncedLogicalName, "isEqualToString:", filenameCopy) && ([serverNameCopy isEqualToString:self->_bouncedLogicalName] & 1) == 0)
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
    objc_storeStrong(&self->_bouncedLogicalName, name);
    objc_storeStrong(&self->super._logicalName, filename);
  }
}

- (void)_moveItemAsideWithUUIDString
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't move aside a root item!%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)diffAgainstLocalInfo:(id)info
{
  infoCopy = info;
  v5 = [(BRCStatInfo *)self diffAgainst:infoCopy];
  v6 = v5;
  if ((v5 & 0x100000000) == 0 && self->super._state != *(infoCopy + 24))
  {
    v6 = v5 | 0x100000000;
  }

  if ((v6 & 0x1000000000) != 0)
  {
    goto LABEL_10;
  }

  v7 = infoCopy[19];
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
  if (self->_itemScope != *(infoCopy + 160))
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

- (void)_markDeadAsSharedTopLevelItemWithDocumentsItemID:(id)d
{
  dCopy = d;
  [(BRCLocalStatInfo *)self _markDead];
  parentID = self->super._parentID;
  self->super._parentID = dCopy;
}

- (void)_updateStatMeta:(id)meta
{
  metaCopy = meta;
  self->super._mode = [metaCopy mode];
  self->super._birthtime = [metaCopy birthtime];
  self->super._hiddenExt = [metaCopy isHiddenExt];
  xattrSignature = [metaCopy xattrSignature];
  xattrSignature = self->super._xattrSignature;
  self->super._xattrSignature = xattrSignature;

  lazyXattr = self->super._lazyXattr;
  self->super._lazyXattr = 0;

  finderTags = [metaCopy finderTags];
  finderTags = self->super._finderTags;
  self->super._finderTags = finderTags;

  self->super._favoriteRank = [metaCopy favoriteRank];
  self->super._lastUsedTime = [metaCopy lastUsedTime];
  trashPutBackPath = [metaCopy trashPutBackPath];
  trashPutBackPath = self->super._trashPutBackPath;
  self->super._trashPutBackPath = trashPutBackPath;

  trashPutBackParentID = [metaCopy trashPutBackParentID];

  trashPutBackParentID = self->super._trashPutBackParentID;
  self->super._trashPutBackParentID = trashPutBackParentID;
}

- (BOOL)checkStateWithItemID:(id)d logToFile:(__sFILE *)file
{
  v5.receiver = self;
  v5.super_class = BRCLocalStatInfo;
  return [(BRCStatInfo *)&v5 checkStateWithItemID:d logToFile:file];
}

- (BRCLocalStatInfo)initWithLocalStatInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = BRCLocalStatInfo;
  v5 = [(BRCStatInfo *)&v8 initWithStatInfo:infoCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_processingStamp, *(infoCopy + 21));
    objc_storeStrong(&v6->_bouncedLogicalName, *(infoCopy + 19));
    v6->_localChangeCount = *(infoCopy + 16);
    objc_storeStrong(&v6->_oldVersionIdentifier, *(infoCopy + 17));
    v6->_itemScope = *(infoCopy + 160);
    objc_storeStrong(&v6->_fpCreationItemIdentifier, *(infoCopy + 18));
  }

  return v6;
}

- (BRFieldStructureSignature)versionSignature
{
  v2 = [[BRFieldStructureSignature alloc] initWithLocalStatInfo:self];

  return v2;
}

- (void)_updateStatAliasMeta:(id)meta
{
  metaCopy = meta;
  if (([metaCopy isBRAlias] & 1) == 0)
  {
    [BRCLocalStatInfo(FPFSAdditions) _updateStatAliasMeta:];
  }

  v5 = [metaCopy st];
  logicalName = [v5 logicalName];
  logicalName = logicalName;
  if (!logicalName)
  {
    logicalName = self->super._logicalName;
  }

  objc_storeStrong(&self->super._logicalName, logicalName);

  parentItemIDOnFS = [metaCopy parentItemIDOnFS];
  parentID = parentItemIDOnFS;
  if (!parentItemIDOnFS)
  {
    parentID = self->super._parentID;
  }

  objc_storeStrong(&self->super._parentID, parentID);

  v10 = [metaCopy st];
  finderTags = [v10 finderTags];
  finderTags = self->super._finderTags;
  self->super._finderTags = finderTags;

  v13 = [metaCopy st];
  self->super._favoriteRank = [v13 favoriteRank];

  v14 = [metaCopy st];
  self->super._lastUsedTime = [v14 lastUsedTime];
}

- (void)updateWithFileSystemFlags:(unint64_t)flags ignoreExecutable:(BOOL)executable
{
  self->super._hiddenExt = (flags & 0x10) != 0;
  v4 = (flags >> 2) & 1;
  if ((flags & 1) != 0 && !executable)
  {
    LOBYTE(v4) = ((flags & 4) != 0) | 2;
  }

  self->super._mode = v4;
}

- (BRCLocalStatInfo)initWithImportObject:(id)object error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = BRCLocalStatInfo;
  v7 = [(BRCLocalStatInfo *)&v24 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  v7->super._state = 0;
  if (![objectCopy isFault])
  {
    if ([objectCopy isSymLink])
    {
      v16 = 5;
    }

    else
    {
      if ([objectCopy isBRAlias])
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
        if (!error)
        {
          v21 = "(ignored by caller)";
        }

        goto LABEL_32;
      }

      if ([objectCopy isFinderAlias])
      {
        v16 = 6;
      }

      else if ([objectCopy isDocument])
      {
        v16 = 1;
      }

      else
      {
        if (([objectCopy isUnixDir] & 1) == 0)
        {
          v22 = brc_bread_crumbs();
          v23 = brc_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            [BRCLocalStatInfo(FPFSAdditions) initWithImportObject:error:];
          }

          v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Unexpected import object %@", objectCopy}];
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
          if (!error)
          {
            v21 = "(ignored by caller)";
          }

          goto LABEL_32;
        }

        v16 = 0;
      }
    }

    v8->super._type = v16;
    [(BRCLocalStatInfo *)v8 updateFromImportObject:objectCopy onlyContentDependentProperties:0];
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
    if (!error)
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
  if (error)
  {
    v14 = v11;
    *error = v11;
  }

  v15 = 0;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (char)modeFromImportObject:(id)object isPackageFault:(BOOL)fault
{
  faultCopy = fault;
  objectCopy = object;
  isWritable = [objectCopy isWritable];
  if ([objectCopy isExecutable] && objc_msgSend(objectCopy, "isFile") && (objc_msgSend(objectCopy, "isFault") & faultCopy) == 0)
  {
    isWritable |= 2u;
  }

  return isWritable;
}

+ (id)_finderTagsFromImportObject:(id)object
{
  v27 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (![objectCopy hasFinderTags])
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  fileURL = [objectCopy fileURL];
  v24 = 0;
  v25 = 0;
  v5 = [fileURL br_getTagNames:&v25 error:&v24];
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
  data = [(BRFieldFinderTags *)v10 data];

  v18 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)_updateStatMetaFromServer:(id)server
{
  serverCopy = server;
  v5 = [serverCopy st];
  self->super._mode = [v5 mode];
  self->super._birthtime = [v5 birthtime];
  self->super._hiddenExt = [v5 isHiddenExt];
  xattrSignature = [v5 xattrSignature];
  xattrSignature = self->super._xattrSignature;
  self->super._xattrSignature = xattrSignature;

  lazyXattr = self->super._lazyXattr;
  self->super._lazyXattr = 0;

  finderTags = [v5 finderTags];
  finderTags = self->super._finderTags;
  self->super._finderTags = finderTags;

  self->super._favoriteRank = [v5 favoriteRank];
  self->super._lastUsedTime = [v5 lastUsedTime];
  trashPutBackPath = [v5 trashPutBackPath];
  trashPutBackPath = self->super._trashPutBackPath;
  self->super._trashPutBackPath = trashPutBackPath;

  trashPutBackParentID = [v5 trashPutBackParentID];
  trashPutBackParentID = self->super._trashPutBackParentID;
  self->super._trashPutBackParentID = trashPutBackParentID;

  ckInfo = [v5 ckInfo];
  ckInfo = self->super._ckInfo;
  self->super._ckInfo = ckInfo;

  if (self->super._state == 1 && ![v5 state])
  {
    bouncedLogicalName = self->_bouncedLogicalName;
    self->_bouncedLogicalName = 0;
  }

  self->super._state = [v5 state];
  logicalName = [v5 logicalName];
  logicalName = self->super._logicalName;
  self->super._logicalName = logicalName;

  parentItemIDOnFS = [serverCopy parentItemIDOnFS];

  parentID = self->super._parentID;
  self->super._parentID = parentItemIDOnFS;

  aliasTarget = self->super._aliasTarget;
  if (aliasTarget)
  {
    aliasTarget = [v5 aliasTarget];
    v24 = [(NSString *)aliasTarget isEqualToString:aliasTarget];

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

- (void)updateFromImportObject:(id)object onlyContentDependentProperties:(BOOL)properties
{
  v26 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if ([objectCopy isUnixDir] && (objc_msgSend(objectCopy, "isExecutable") & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = objectCopy;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Inaccessible folder %@%@", &v22, 0x16u);
    }
  }

  self->super._state = 0;
  parentItemGlobalID = [objectCopy parentItemGlobalID];

  if (parentItemGlobalID)
  {
    parentItemGlobalID2 = [objectCopy parentItemGlobalID];
    itemID = [parentItemGlobalID2 itemID];
    parentID = self->super._parentID;
    self->super._parentID = itemID;
  }

  if (!properties)
  {
    self->super._birthtime = [objectCopy birthTime];
    logicalName = [objectCopy logicalName];
    [(BRCLocalStatInfo *)self setFilename:logicalName];

    v14 = [BRCLocalStatInfo _finderTagsFromImportObject:objectCopy];
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
    self->super._hiddenExt = [objectCopy isHiddenExtension];
    if ([objectCopy isFault])
    {
      isPackageRoot = [objectCopy isPackageRoot];
    }

    else
    {
      isPackageRoot = 0;
    }

    self->super._mode = [BRCLocalStatInfo modeFromImportObject:objectCopy isPackageFault:isPackageRoot];
  }

  etag = [(BRFieldCKInfo *)self->super._ckInfo etag];

  if (!etag)
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

  *a2 = *self;
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