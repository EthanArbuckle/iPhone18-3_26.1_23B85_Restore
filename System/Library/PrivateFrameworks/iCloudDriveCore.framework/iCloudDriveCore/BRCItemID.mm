@interface BRCItemID
+ (id)appLibraryRowIDFromRootOrDocumentsSQLiteValue:(sqlite3_value *)value;
+ (id)defaultDesktopItemID;
+ (id)defaultDocumentsItemID;
+ (id)documentsItemIDWithAppLibraryRowID:(id)d;
+ (id)newFromSqliteStatement:(sqlite3_stmt *)statement atIndex:(int)index;
+ (id)newFromSqliteValue:(sqlite3_value *)value;
+ (id)parseMangledItemIDString:(id)string mangledID:(id *)d etag:(id *)etag session:(id)session;
+ (id)shareAliasRecordIDFromTargetItemID:(id)d zone:(id)zone hasDerivedShareAlias:(BOOL)alias;
+ (id)structureRecordPrefixForItemType:(char)type targetZoneShared:(BOOL)shared;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemID:(id)d;
- (BRCALRowID)appLibraryRowID;
- (BRCItemID)init;
- (BRCItemID)initWithCoder:(id)coder;
- (BRCItemID)initWithItemID:(id)d;
- (BRCItemID)initWithRootObject:(RootItemObject *)object;
- (BRCItemID)initWithString:(id)string libraryRowID:(id)d sharedZoneRowID:(id)iD;
- (BRCItemID)initWithUUID:(const char *)d;
- (BRCItemID)initWithUUIDString:(id)string;
- (BRCZoneRowID)sharedZoneRowID;
- (NSString)itemIDString;
- (const)UTF8String;
- (id)_directoryRecordNameWithSession:(id)session;
- (id)_initAsLibraryRootWithAppLibraryRowID:(id)d;
- (id)_initAsZoneRootWithZoneRowID:(id)d;
- (id)contentsRecordIDInZoneID:(id)d;
- (id)derivedAliasItemIDWithOwnerName:(id)name;
- (id)directoryReferenceInZone:(id)zone action:(unint64_t)action;
- (id)directoryStructureRecordIDInZone:(id)zone;
- (id)documentStructureRecordIDInZoneID:(id)d;
- (id)initAsDocumentsWithAppLibraryRowID:(id)d;
- (id)itemUUIDString;
- (id)pcsChainDocumentStructureReferenceInZoneID:(id)d;
- (id)sideCarRecordIDWithZone:(id)zone;
- (id)sideCarRecordNameWithZone:(id)zone;
- (id)zoneUniqueItemIDStringWithSession:(id)session;
- (unint64_t)hash;
- (void)appLibraryRowID;
- (void)encodeWithCoder:(id)coder;
- (void)sharedZoneRowID;
- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index;
@end

@implementation BRCItemID

- (unint64_t)hash
{
  kind = self->_kind;
  v3 = kind ^ 0x6C885475B6449F5DLL;
  if (self->_kind > 2u)
  {
    if ((kind - 3) >= 2)
    {
      if (kind == 5)
      {
        zoneRowID = self->_zoneRowID;
        return [zoneRowID hash] ^ (33 * v3 + 13);
      }
    }

    else
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [BRCItemID isEqualToItemID:];
      }

      return 0;
    }
  }

  else
  {
    if ((kind - 1) < 2)
    {
      zoneRowID = self->_appLibraryRowID;
      return [zoneRowID hash] ^ (33 * v3 + 13);
    }

    if (!self->_kind)
    {
      v7 = 0;
      v8 = 0xC53A6F2A5ADB4AA5;
      do
      {
        v8 = (33 * v8 + (v8 >> 59)) ^ self->_uuid[v7++];
      }

      while (v7 != 16);
      return v8 ^ (33 * v3 + 13);
    }
  }

  return v3;
}

- (BRCALRowID)appLibraryRowID
{
  if (![(BRCItemID *)self isNonDesktopRoot]&& ![(BRCItemID *)self isDocumentsFolder])
  {
    [BRCItemID appLibraryRowID];
  }

  appLibraryRowID = self->_appLibraryRowID;

  return appLibraryRowID;
}

- (NSString)itemIDString
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  p_kind = &self->_kind;
  kind = self->_kind;
  if (kind > 1)
  {
    switch(kind)
    {
      case 2u:
        v4 = BRCItemIDDocuments;
        goto LABEL_12;
      case 3u:
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [BRCItemID_v9 itemIDString];
        }

        goto LABEL_16;
      case 5u:
LABEL_5:
        v4 = BRCItemIDZoneRoot;
LABEL_12:
        v7 = v4;
        goto LABEL_18;
    }

LABEL_8:
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID zoneUniqueItemIDStringWithSession:?];
    }

LABEL_16:
    v7 = 0;
    goto LABEL_18;
  }

  if (self->_kind)
  {
    if (kind == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  uuid_unparse_upper(self->_uuid, v12);
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v12 length:36 encoding:4];
LABEL_18:
  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)contentsRecordIDInZoneID:(id)d
{
  dCopy = d;
  itemIDString = [(BRCItemID *)self itemIDString];
  v6 = [@"documentContent/" stringByAppendingString:itemIDString];

  v7 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v6 zoneID:dCopy];

  return v7;
}

- (id)directoryStructureRecordIDInZone:(id)zone
{
  zoneCopy = zone;
  session = [zoneCopy session];
  v6 = [(BRCItemID *)self _directoryRecordNameWithSession:session];

  v7 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneID = [zoneCopy zoneID];

  v9 = [v7 initWithRecordName:v6 zoneID:zoneID];

  return v9;
}

- (id)documentStructureRecordIDInZoneID:(id)d
{
  dCopy = d;
  itemIDString = [(BRCItemID *)self itemIDString];
  v6 = [@"documentStructure/" stringByAppendingString:itemIDString];

  v7 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v6 zoneID:dCopy];

  return v7;
}

- (id)pcsChainDocumentStructureReferenceInZoneID:(id)d
{
  dCopy = d;
  itemIDString = [(BRCItemID *)self itemIDString];
  v6 = [@"documentStructure/" stringByAppendingString:itemIDString];

  v7 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v6 zoneID:dCopy];
  v8 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v7 action:0];

  return v8;
}

+ (id)structureRecordPrefixForItemType:(char)type targetZoneShared:(BOOL)shared
{
  if (type > 4)
  {
    if (type > 7)
    {
      if (type == 8)
      {
        return @"documentStructure/";
      }

      if (type != 9 && type != 10)
      {
LABEL_22:
        v5 = brc_bread_crumbs();
        v6 = brc_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          +[BRCItemID(CKConversions) structureRecordPrefixForItemType:targetZoneShared:];
        }

        return 0;
      }

      return @"directory/";
    }

    if (type == 5)
    {
      return @"symlink/";
    }

    else
    {
      return @"finderBookmark/";
    }
  }

  else
  {
    if (type <= 1)
    {
      if (type == -1)
      {
        return 0;
      }

      if (type)
      {
        if (type != 1)
        {
          goto LABEL_22;
        }

        return @"documentStructure/";
      }

      return @"directory/";
    }

    if (type == 2)
    {
      return @"documentStructure/";
    }

    if (type != 3)
    {
      return @"directory/";
    }

    if (shared)
    {
      return @"shareAlias/";
    }

    else
    {
      return @"alias/";
    }
  }
}

+ (id)shareAliasRecordIDFromTargetItemID:(id)d zone:(id)zone hasDerivedShareAlias:(BOOL)alias
{
  dCopy = d;
  zoneCopy = zone;
  itemID = [dCopy itemID];
  session = [zoneCopy session];
  zoneRowID = [dCopy zoneRowID];
  v12 = [session serverZoneByRowID:zoneRowID];

  if (!alias)
  {
    itemID2 = [dCopy itemID];
    ownerName = [v12 ownerName];
    v15 = [itemID2 derivedAliasItemIDWithOwnerName:ownerName];

    itemID = v15;
  }

  v16 = [itemID structureRecordIDForItemType:3 zone:zoneCopy aliasTargetZoneIsShared:{objc_msgSend(v12, "isSharedZone")}];

  return v16;
}

- (id)sideCarRecordNameWithZone:(id)zone
{
  ownerName = [zone ownerName];
  v5 = [ownerName substringFromIndex:1];
  v6 = [v5 substringToIndex:8];

  itemIDString = [(BRCItemID *)self itemIDString];
  v8 = [@"ppm_" stringByAppendingFormat:@"%@/%@", v6, itemIDString];

  return v8;
}

- (id)sideCarRecordIDWithZone:(id)zone
{
  v4 = MEMORY[0x277CBC5F8];
  zoneCopy = zone;
  brc_sideCarZoneID = [v4 brc_sideCarZoneID];
  v7 = [(BRCItemID *)self sideCarRecordNameWithZone:zoneCopy];

  v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v7 zoneID:brc_sideCarZoneID];

  return v8;
}

- (id)_directoryRecordNameWithSession:(id)session
{
  sessionCopy = session;
  if (![(BRCItemID *)self isDocumentsFolder]&& (![(BRCItemID *)self isNonDesktopRoot]|| [(BRCItemID *)self isSharedZoneRoot]))
  {
    goto LABEL_7;
  }

  appLibraryRowID = [(BRCItemID *)self appLibraryRowID];
  itemIDString = [sessionCopy appLibraryByRowID:appLibraryRowID];

  if (![itemIDString wasMovedToCloudDocs] || (objc_msgSend(itemIDString, "isCloudDocsAppLibrary") & 1) != 0)
  {
LABEL_4:

LABEL_7:
    itemIDString = [(BRCItemID *)self itemIDString];
    v7 = [@"directory/" stringByAppendingString:itemIDString];
    goto LABEL_8;
  }

  if ([(BRCItemID *)self isDocumentsFolder])
  {
    v9 = @"directory/appDocuments_";
  }

  else
  {
    if (![(BRCItemID *)self isNonDesktopRoot])
    {
      goto LABEL_4;
    }

    v9 = @"directory/appData_";
  }

  appLibraryID = [itemIDString appLibraryID];
  v7 = [(__CFString *)v9 stringByAppendingString:appLibraryID];

LABEL_8:

  return v7;
}

- (id)directoryReferenceInZone:(id)zone action:(unint64_t)action
{
  zoneCopy = zone;
  session = [zoneCopy session];
  v8 = [(BRCItemID *)self _directoryRecordNameWithSession:session];

  v9 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneID = [zoneCopy zoneID];

  v11 = [v9 initWithRecordName:v8 zoneID:zoneID];
  v12 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v11 action:action];

  return v12;
}

- (BRCZoneRowID)sharedZoneRowID
{
  if (![(BRCItemID *)self isSharedZoneRoot])
  {
    [BRCItemID sharedZoneRowID];
  }

  zoneRowID = self->_zoneRowID;

  return zoneRowID;
}

- (id)itemUUIDString
{
  v6 = *MEMORY[0x277D85DE8];
  if (self->_kind)
  {
    v2 = 0;
  }

  else
  {
    memset(v5, 0, sizeof(v5));
    uuid_unparse_upper(self->_uuid, v5);
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:36 encoding:1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)zoneUniqueItemIDStringWithSession:(id)session
{
  v22 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = sessionCopy;
  if (self->_appLibraryRowID)
  {
    v6 = [sessionCopy appLibraryByRowID:?];
  }

  else
  {
    v6 = 0;
  }

  if (self->_zoneRowID)
  {
    v7 = [v5 serverZoneByRowID:?];
    clientZone = [v7 clientZone];
  }

  else
  {
    clientZone = 0;
  }

  memset(v21, 0, 37);
  p_kind = &self->_kind;
  kind = self->_kind;
  if (kind <= 1)
  {
    if (!self->_kind)
    {
      uuid_unparse_upper(self->_uuid, v21);
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v21 length:36 encoding:4];
      goto LABEL_30;
    }

    if (kind != 1)
    {
      goto LABEL_26;
    }

    if (!v6)
    {
      [BRCItemID zoneUniqueItemIDStringWithSession:];
    }

    appLibraryID = [v6 appLibraryID];
    mangledID = appLibraryID;
    v15 = BRCItemIDZoneRoot;
LABEL_20:
    v13 = [appLibraryID stringByAppendingPathComponent:v15];
LABEL_21:

    goto LABEL_30;
  }

  switch(kind)
  {
    case 2u:
      appLibraryID = [v6 appLibraryID];
      mangledID = appLibraryID;
      v15 = BRCItemIDDocuments;
      goto LABEL_20;
    case 3u:
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BRCItemID_v9 itemIDString];
      }

      goto LABEL_29;
    case 5u:
      if (!clientZone)
      {
        [BRCItemID zoneUniqueItemIDStringWithSession:];
      }

      mangledID = [clientZone mangledID];
      mangledIDString = [mangledID mangledIDString];
      v13 = [mangledIDString stringByAppendingPathComponent:BRCItemIDZoneRoot];

      goto LABEL_21;
  }

LABEL_26:
  v16 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [BRCItemID zoneUniqueItemIDStringWithSession:?];
  }

LABEL_29:
  v13 = 0;
LABEL_30:

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (const)UTF8String
{
  itemIDString = [(BRCItemID *)self itemIDString];
  uTF8String = [itemIDString UTF8String];

  return uTF8String;
}

+ (id)documentsItemIDWithAppLibraryRowID:(id)d
{
  dCopy = d;
  if (!dCopy || (v4 = dCopy, ![dCopy unsignedLongLongValue]))
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"invalid library rowid"];
    objc_claimAutoreleasedReturnValue();
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __37__BRCPQLConnection__setLockedHandler__block_invoke_cold_1();
    }

    brc_append_system_info_to_message();
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("+[BRCItemID documentsItemIDWithAppLibraryRowID:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/items/BRCItemID.m", 273, uTF8String);
  }

  intValue = [v4 intValue];
  v10 = 2;
  v5 = [[BRCItemID alloc] initWithRootObject:&v10];

  return v5;
}

+ (id)defaultDesktopItemID
{
  v2 = [BRCItemID alloc];
  v3 = [(BRCItemID *)v2 initWithUUIDString:*MEMORY[0x277CFAD78]];

  return v3;
}

+ (id)defaultDocumentsItemID
{
  v2 = [BRCItemID alloc];
  v3 = [(BRCItemID *)v2 initWithUUIDString:*MEMORY[0x277CFAD88]];

  return v3;
}

- (BOOL)isEqualToItemID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (self == dCopy)
  {
    v3 = 1;
    goto LABEL_13;
  }

  if (!dCopy || (kind = self->_kind, kind != dCopy->_kind))
  {
LABEL_12:
    v3 = 0;
    goto LABEL_13;
  }

  if (self->_kind <= 2u)
  {
    if ((kind - 1) < 2)
    {
      appLibraryRowID = self->_appLibraryRowID;
      zoneRowID = v6->_appLibraryRowID;
LABEL_23:
      v3 = [appLibraryRowID br_isEqualToNumber:zoneRowID];
      goto LABEL_13;
    }

    if (!self->_kind)
    {
      v3 = *self->_uuid == *dCopy->_uuid && *&self->_uuid[8] == *&dCopy->_uuid[8];
    }

    goto LABEL_13;
  }

  if ((kind - 3) < 2)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID isEqualToItemID:];
    }

    goto LABEL_12;
  }

  if (kind == 5)
  {
    appLibraryRowID = self->_zoneRowID;
    zoneRowID = v6->_zoneRowID;
    goto LABEL_23;
  }

LABEL_13:

  return v3 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCItemID *)self isEqualToItemID:equalCopy];

  return v5;
}

- (BRCItemID)init
{
  v5.receiver = self;
  v5.super_class = BRCItemID;
  v2 = [(BRCItemID *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_kind = 0;
    uuid_generate_random(v2->_uuid);
  }

  return v3;
}

- (BRCItemID)initWithString:(id)string libraryRowID:(id)d sharedZoneRowID:(id)iD
{
  stringCopy = string;
  dCopy = d;
  iDCopy = iD;
  if ([stringCopy isEqualToString:BRCItemIDZoneRoot])
  {
    if (dCopy | iDCopy)
    {
      if (dCopy)
      {
        v11 = [(BRCItemID *)self _initAsLibraryRootWithAppLibraryRowID:dCopy];
        goto LABEL_12;
      }
    }

    else
    {
      [BRCItemID initWithString:libraryRowID:sharedZoneRowID:];
    }

    v11 = [(BRCItemID *)self _initAsZoneRootWithZoneRowID:iDCopy];
    goto LABEL_12;
  }

  if ([stringCopy isEqualToString:BRCItemIDDocuments])
  {
    if (!dCopy)
    {
      [BRCItemID initWithString:libraryRowID:sharedZoneRowID:];
    }

    v11 = [(BRCItemID *)self initAsDocumentsWithAppLibraryRowID:dCopy];
  }

  else
  {
    v11 = [(BRCItemID *)self initWithUUIDString:stringCopy];
  }

LABEL_12:
  v12 = v11;

  return v12;
}

- (BRCItemID)initWithUUIDString:(id)string
{
  v10[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v10[0] = 0;
  v10[1] = 0;
  if (_br_parseUUIDString())
  {
    self = [(BRCItemID *)self initWithUUID:v10];
    selfCopy = self;
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID initWithUUIDString:stringCopy];
    }

    selfCopy = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)_initAsLibraryRootWithAppLibraryRowID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BRCItemID;
  v6 = [(BRCItemID *)&v12 init];
  v7 = v6;
  if (!v6 || (v6->_kind = 1, objc_storeStrong(&v6->_appLibraryRowID, d), dCopy) && [dCopy unsignedLongLongValue])
  {
    v8 = v7;
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID _initAsLibraryRootWithAppLibraryRowID:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_initAsZoneRootWithZoneRowID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BRCItemID;
  v6 = [(BRCItemID *)&v12 init];
  v7 = v6;
  if (!v6 || (v6->_kind = 5, objc_storeStrong(&v6->_zoneRowID, d), dCopy) && [dCopy unsignedLongLongValue])
  {
    v8 = v7;
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID _initAsZoneRootWithZoneRowID:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)initAsDocumentsWithAppLibraryRowID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BRCItemID;
  v6 = [(BRCItemID *)&v12 init];
  v7 = v6;
  if (!v6 || (v6->_kind = 2, objc_storeStrong(&v6->_appLibraryRowID, d), dCopy) && [dCopy unsignedLongLongValue])
  {
    v8 = v7;
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID initAsDocumentsWithAppLibraryRowID:];
    }

    v8 = 0;
  }

  return v8;
}

- (BRCItemID)initWithUUID:(const char *)d
{
  v5.receiver = self;
  v5.super_class = BRCItemID;
  result = [(BRCItemID *)&v5 init];
  if (result)
  {
    result->_kind = 0;
    *result->_uuid = *d;
  }

  return result;
}

- (BRCItemID)initWithRootObject:(RootItemObject *)object
{
  v14.receiver = self;
  v14.super_class = BRCItemID;
  v4 = [(BRCItemID *)&v14 init];
  v5 = v4;
  if (v4)
  {
    var0 = object->var0;
    v4->_kind = var0;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&object->var0 + 1)];
    v8 = 8;
    if (var0 == 5)
    {
      v8 = 16;
    }

    v9 = *(&v5->super.isa + v8);
    *(&v5->super.isa + v8) = v7;

    v10 = object->var0;
    if (v10 > 5 || ((1 << v10) & 0x26) == 0)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BRCItemID initWithRootObject:];
      }
    }
  }

  return v5;
}

+ (id)newFromSqliteValue:(sqlite3_value *)value
{
  *&v26[13] = *MEMORY[0x277D85DE8];
  v4 = sqlite3_value_type(value);
  if (v4 == 5)
  {
LABEL_17:
    v20 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v5 = v4;
  if (v4 != 4)
  {
    v11 = sqlite3_value_text(value);
    v12 = sqlite3_value_bytes(value);
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:v12];
      v23 = 138412802;
      v24 = v21;
      v25 = 1024;
      *v26 = v5;
      v26[2] = 2112;
      *&v26[3] = v13;
      _os_log_fault_impl(&dword_223E7A000, v14, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unmigrated? invalid BRCItemID (%@) - %d%@", &v23, 0x1Cu);
    }

    goto LABEL_17;
  }

  v6 = sqlite3_value_blob(value);
  v7 = sqlite3_value_bytes(value);
  if (v7 == 16)
  {
    v8 = [BRCItemID alloc];
    v9 = *MEMORY[0x277D85DE8];

    return [(BRCItemID *)v8 initWithUUID:v6];
  }

  v15 = v7;
  if (v7 != 5)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v22 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v15];
      v23 = 138412546;
      v24 = v22;
      v25 = 2112;
      *v26 = v18;
      _os_log_fault_impl(&dword_223E7A000, v19, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid BRCItemID (%@)%@", &v23, 0x16u);
    }

    goto LABEL_17;
  }

  v16 = [BRCItemID alloc];
  v17 = *MEMORY[0x277D85DE8];

  return [(BRCItemID *)v16 initWithRootObject:v6];
}

+ (id)newFromSqliteStatement:(sqlite3_stmt *)statement atIndex:(int)index
{
  *&v28[13] = *MEMORY[0x277D85DE8];
  v6 = sqlite3_column_type(statement, index);
  if (v6 == 5)
  {
LABEL_17:
    v22 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v7 = v6;
  if (v6 != 4)
  {
    v13 = sqlite3_column_text(statement, index);
    v14 = sqlite3_column_bytes(statement, index);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v23 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:v14];
      v25 = 138412802;
      v26 = v23;
      v27 = 1024;
      *v28 = v7;
      v28[2] = 2112;
      *&v28[3] = v15;
      _os_log_fault_impl(&dword_223E7A000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unmigrated? invalid BRCItemID (%@) - %d%@", &v25, 0x1Cu);
    }

    goto LABEL_17;
  }

  v8 = sqlite3_column_blob(statement, index);
  v9 = sqlite3_column_bytes(statement, index);
  if (v9 == 16)
  {
    v10 = [BRCItemID alloc];
    v11 = *MEMORY[0x277D85DE8];

    return [(BRCItemID *)v10 initWithUUID:v8];
  }

  v17 = v9;
  if (v9 != 5)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v17];
      v25 = 138412546;
      v26 = v24;
      v27 = 2112;
      *v28 = v20;
      _os_log_fault_impl(&dword_223E7A000, v21, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid BRCItemID (%@)%@", &v25, 0x16u);
    }

    goto LABEL_17;
  }

  v18 = [BRCItemID alloc];
  v19 = *MEMORY[0x277D85DE8];

  return [(BRCItemID *)v18 initWithRootObject:v8];
}

+ (id)appLibraryRowIDFromRootOrDocumentsSQLiteValue:(sqlite3_value *)value
{
  if (sqlite3_value_type(value) != 4 || sqlite3_value_bytes(value) != 5 || !*(sqlite3_value_blob(value) + 1) || ([MEMORY[0x277CCABB0] numberWithUnsignedInt:?], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    +[BRCItemID appLibraryRowIDFromRootOrDocumentsSQLiteValue:];
    v4 = 0;
  }

  return v4;
}

- (BRCItemID)initWithItemID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = BRCItemID;
  v5 = [(BRCItemID *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_kind = dCopy[24];
    objc_storeStrong(&v5->_appLibraryRowID, *(dCopy + 1));
    *v6->_uuid = *(dCopy + 25);
  }

  return v6;
}

- (BRCItemID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = 0;
  v5 = [coderCopy decodeBytesForKey:@"bytes" returnedLength:&v12];
  if (v12 == 16)
  {
    v6 = [(BRCItemID *)self initWithUUID:v5];
LABEL_5:
    self = v6;
    selfCopy = self;
    goto LABEL_9;
  }

  v7 = [coderCopy decodeBytesForKey:@"root_object" returnedLength:&v12];
  if (v12 == 5)
  {
    v6 = [(BRCItemID *)self initWithRootObject:v7];
    goto LABEL_5;
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [BRCItemID initWithCoder:];
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  memset(v13, 0, 5);
  kind = self->_kind;
  if (kind > 2)
  {
    if (kind - 3 < 2)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BRCItemID isEqualToItemID:];
      }

      goto LABEL_15;
    }

    if (kind == 5)
    {
      LOBYTE(v13[0]) = 5;
      zoneRowID = self->_zoneRowID;
      goto LABEL_11;
    }

LABEL_13:
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID encodeWithCoder:];
    }

LABEL_15:

    goto LABEL_16;
  }

  if (kind - 1 < 2)
  {
    LOBYTE(v13[0]) = kind;
    zoneRowID = self->_appLibraryRowID;
LABEL_11:
    *(v13 + 1) = [zoneRowID intValue];
    v10 = @"root_object";
    uuid = v13;
    coderCopy = v5;
    v12 = 5;
    goto LABEL_12;
  }

  if (self->_kind)
  {
    goto LABEL_13;
  }

  v10 = @"bytes";
  uuid = self->_uuid;
  v12 = 16;
LABEL_12:
  [coderCopy encodeBytes:uuid length:v12 forKey:v10];
LABEL_16:
}

- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index
{
  memset(v9, 0, 5);
  kind = self->_kind;
  if (kind > 2)
  {
    if (kind - 3 < 2)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BRCItemID isEqualToItemID:];
      }

      goto LABEL_18;
    }

    if (kind == 5)
    {
      LOBYTE(v9[0]) = 5;
      *(v9 + 1) = [(BRCZoneRowID *)self->_zoneRowID intValue];
      if (!*(v9 + 1))
      {
        [BRCItemID sqliteBind:index:];
      }

      goto LABEL_21;
    }

LABEL_16:
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID sqliteBind:index:];
    }

LABEL_18:

    sqlite3_bind_null(bind, index);
    return;
  }

  if (self->_kind)
  {
    if (kind == 1)
    {
      LOBYTE(v9[0]) = 1;
      *(v9 + 1) = [(BRCALRowID *)self->_appLibraryRowID intValue];
      if (!*(v9 + 1))
      {
        [BRCItemID sqliteBind:index:];
      }

      goto LABEL_21;
    }

    if (kind == 2)
    {
      LOBYTE(v9[0]) = 2;
      *(v9 + 1) = [(BRCALRowID *)self->_appLibraryRowID intValue];
      if (!*(v9 + 1))
      {
        [BRCItemID sqliteBind:index:];
      }

LABEL_21:
      sqlite3_bind_blob(bind, index, v9, 5, 0xFFFFFFFFFFFFFFFFLL);
      return;
    }

    goto LABEL_16;
  }

  sqlite3_bind_blob(bind, index, self->_uuid, 16, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)derivedAliasItemIDWithOwnerName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  *v15 = 0u;
  selfCopy = self;
  nameCopy = name;
  v7 = [(BRCItemID *)self UTF8String:0];
  uTF8String = [nameCopy UTF8String];

  CC_MD5_Init(&v14);
  v9 = strlen(uTF8String);
  CC_MD5_Update(&v14, uTF8String, v9);
  v10 = strlen(v7);
  CC_MD5_Update(&v14, v7, v10);
  CC_MD5_Final(md, &v14);
  md[6] = md[6] & 0xF | 0x30;
  md[8] = md[8] & 0x3F | 0x80;
  v11 = objc_alloc_init(BRCItemID);
  if (v11)
  {
    v11->_kind = 0;
    *v11->_uuid = *md;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)parseMangledItemIDString:(id)string mangledID:(id *)d etag:(id *)etag session:(id)session
{
  stringCopy = string;
  sessionCopy = session;
  v11 = [stringCopy componentsSeparatedByString:@"_"];
  serverDB = [sessionCopy serverDB];

  serialQueue = [serverDB serialQueue];
  dispatch_assert_queue_not_V2(serialQueue);

  if ([v11 count] == 3)
  {
    v14 = [v11 objectAtIndexedSubscript:0];
    v15 = [v11 objectAtIndexedSubscript:1];
    v16 = [v11 objectAtIndexedSubscript:2];
    v17 = [[BRCItemID alloc] initWithUUIDString:v15];
    v18 = [objc_alloc(MEMORY[0x277CFAE60]) initWithMangledString:v14];
    if (d)
    {
      objc_storeStrong(d, v18);
    }

    if (etag)
    {
      objc_storeStrong(etag, v16);
    }

LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if ([v11 count] == 4)
  {
    v14 = [v11 objectAtIndexedSubscript:0];
    v19 = [v11 objectAtIndexedSubscript:1];
    v18 = [@"_" stringByAppendingString:v19];

    v15 = [v11 objectAtIndexedSubscript:2];
    v16 = [v11 objectAtIndexedSubscript:3];
    v24 = stringCopy;
    if ([v14 hasSuffix:@":"])
    {
      v20 = [v14 substringToIndex:[v14 length]- 1];

      v14 = v20;
    }

    v21 = [v14 stringByReplacingOccurrencesOfString:@"~" withString:@"."];
    v22 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v21 ownerName:v18];
    v17 = [[BRCItemID alloc] initWithUUIDString:v15];
    if (d)
    {
      objc_storeStrong(d, v22);
    }

    if (etag)
    {
      objc_storeStrong(etag, v16);
    }

    stringCopy = v24;
    goto LABEL_14;
  }

  if ([v11 count] != 1)
  {
    v15 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [BRCItemID parseMangledItemIDString:stringCopy mangledID:? etag:? session:?];
    }

    v17 = 0;
    goto LABEL_15;
  }

  v17 = 0;
LABEL_16:

  return v17;
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_cold_1();
  }

  v7 = sqlite3_value_blob(*a4);
  if (sqlite3_value_bytes(*a4) == 16)
  {
    v9 = 4;
    v10 = [*(a1 + 32) intValue];
    v11 = *v7;
    sqlite3_result_blob(a2, &v9, 21, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_cold_2(a2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_66(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 != 2)
  {
    __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_66_cold_1();
  }

  v6 = sqlite3_value_blob(*a4);
  v7 = sqlite3_value_bytes(*a4);
  v8 = sqlite3_value_int(a4[1]);
  if (v7 == 16)
  {
    v10 = 3;
    v11 = v8;
    v12 = *v6;
    sqlite3_result_blob(a2, &v10, 21, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_66_cold_2(a2);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_70(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_70_cold_1();
  }

  v6 = sqlite3_value_int(*a4);
  v7 = 1;
  v8 = v6;
  sqlite3_result_blob(a2, &v7, 5, 0xFFFFFFFFFFFFFFFFLL);
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_73(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_73_cold_1();
  }

  v6 = sqlite3_value_int(*a4);
  v7 = 2;
  v8 = v6;
  sqlite3_result_blob(a2, &v7, 5, 0xFFFFFFFFFFFFFFFFLL);
}

void __56__BRCItemID_migrateItemIDsToVersion8WithDB_serverTruth___block_invoke(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __56__BRCItemID_migrateItemIDsToVersion8WithDB_serverTruth___block_invoke_cold_1();
  }

  v6 = sqlite3_value_blob(*a4);
  if (sqlite3_value_bytes(*a4) == 21)
  {
    sqlite3_result_blob(a2, v6 + 5, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    __56__BRCItemID_migrateItemIDsToVersion8WithDB_serverTruth___block_invoke_cold_2(a2);
  }
}

void __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_cold_1();
  }

  v6 = sqlite3_value_blob(*a4);
  if (sqlite3_value_bytes(*a4) == 21)
  {
    if (*v6 != 4)
    {
      __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_cold_3();
    }

    v8 = *(v6 + 5);
    sqlite3_result_blob(a2, &v8, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_cold_2(a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_95(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_95_cold_1();
  }

  v7 = sqlite3_value_bytes(*a4);
  v8 = sqlite3_value_blob(*a4);
  v9 = v8;
  if (*(a1 + 40) == 1)
  {
    if (v7 != 21 || *v8 != 5)
    {
      __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_95_cold_2();
    }

    v12 = 5;
    v13 = [*(a1 + 32) intValue];
    v9 = &v12;
    v10 = a2;
    v11 = 5;
  }

  else
  {
    v10 = a2;
    v11 = v7;
  }

  sqlite3_result_blob(v10, v9, v11, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)appLibraryRowID
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isNonDesktopRoot || self.isDocumentsFolder%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sharedZoneRowID
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isSharedZoneRoot%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)zoneUniqueItemIDStringWithSession:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: sharedZone%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)zoneUniqueItemIDStringWithSession:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: appLibrary%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)zoneUniqueItemIDStringWithSession:(unsigned __int8 *)a1 .cold.4(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)debugItemIDStringWithVerbose:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: we should not have alias or share uuid types anymores%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isEqualToItemID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: we should not have alias or shared uuid types anymores%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithString:libraryRowID:sharedZoneRowID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: libraryRowID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithString:libraryRowID:sharedZoneRowID:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: libraryRowID || sharedZoneRowID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithUUIDString:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: invalid UUID: %s%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_initAsLibraryRootWithAppLibraryRowID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_initAsZoneRootWithZoneRowID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initAsDocumentsWithAppLibraryRowID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithRootObject:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: object->item_code == BRCItemIDCodeDocuments || object->item_code == BRCItemIDCodeZoneRoot || object->item_code == BRCItemIDCodeSharedZoneRoot%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)appLibraryRowIDFromRootOrDocumentsSQLiteValue:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: appLibraryRowID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: decoding an unknown kind of itemid%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: encoding an item id with an unknown kind%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: rio.zone_rowid%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: rio.app_lib_rowid%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: rio.app_lib_rowid%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sqliteBind:index:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: unknown itemID kind%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)parseMangledItemIDString:(void *)a1 mangledID:etag:session:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: unparsable mangled itemID: %s%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)migrateItemIDsToVersion5WithDB:(uint8_t *)a1 serverTruth:(void *)a2 .cold.1(uint8_t *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: rio.app_lib_rowid%@", a1, 0xCu);
  }
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_cold_2(sqlite3_context *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_4();
  v4 = brc_default_log();
  if (OUTLINED_FUNCTION_13_1(v4))
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_4_4(&dword_223E7A000, v7, v8, "[CRIT] Assertion failed: len == sizeof(uuid_t)%@", v9, v10, v11, v12, v19);
  }

  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_4();
  v5 = brc_default_log();
  if (OUTLINED_FUNCTION_13_1(v5))
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_4_4(&dword_223E7A000, v13, v14, "[CRIT] UNREACHABLE: Invalid Shared ItemID%@", v15, v16, v17, v18, v19);
  }

  sqlite3_result_null(a1);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_66_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 2%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_66_cold_2(sqlite3_context *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_4();
  v4 = brc_default_log();
  if (OUTLINED_FUNCTION_13_1(v4))
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_4_4(&dword_223E7A000, v7, v8, "[CRIT] Assertion failed: len == sizeof(uuid_t)%@", v9, v10, v11, v12, v19);
  }

  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_4();
  v5 = brc_default_log();
  if (OUTLINED_FUNCTION_13_1(v5))
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_4_4(&dword_223E7A000, v13, v14, "[CRIT] UNREACHABLE: Invalid Shared ItemID%@", v15, v16, v17, v18, v19);
  }

  sqlite3_result_null(a1);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_70_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion5WithDB_serverTruth___block_invoke_73_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion8WithDB_serverTruth___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __56__BRCItemID_migrateItemIDsToVersion8WithDB_serverTruth___block_invoke_cold_2(sqlite3_context *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_4();
  v4 = brc_default_log();
  if (OUTLINED_FUNCTION_13_1(v4))
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_4_4(&dword_223E7A000, v7, v8, "[CRIT] Assertion failed: len == sizeof(_UUIDItemObject_OLD)%@", v9, v10, v11, v12, v19);
  }

  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_4();
  v5 = brc_default_log();
  if (OUTLINED_FUNCTION_13_1(v5))
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_4_4(&dword_223E7A000, v13, v14, "[CRIT] UNREACHABLE: Invalid Alias ItemID%@", v15, v16, v17, v18, v19);
  }

  sqlite3_result_null(a1);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_cold_2(sqlite3_context *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_4();
  v4 = brc_default_log();
  if (OUTLINED_FUNCTION_13_1(v4))
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_4_4(&dword_223E7A000, v7, v8, "[CRIT] Assertion failed: len == sizeof(_UUIDItemObject_OLD)%@", v9, v10, v11, v12, v19);
  }

  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_4();
  v5 = brc_default_log();
  if (OUTLINED_FUNCTION_13_1(v5))
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_4_4(&dword_223E7A000, v13, v14, "[CRIT] UNREACHABLE: Invalid Shared ItemID%@", v15, v16, v17, v18, v19);
  }

  sqlite3_result_null(a1);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_cold_3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: p->item_code == _UNUSED_BRCItemIDCodeSharedUUID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_95_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __57__BRCItemID_migrateItemIDsToVersion11WithDB_serverTruth___block_invoke_95_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: len == sizeof(_UUIDItemObject_OLD) && ((_UUIDItemObject_OLD*)blob)->item_code == BRCItemIDCodeSharedZoneRoot%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end