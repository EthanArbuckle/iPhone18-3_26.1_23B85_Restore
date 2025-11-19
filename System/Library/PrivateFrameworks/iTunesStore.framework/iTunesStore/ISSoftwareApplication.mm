@interface ISSoftwareApplication
- (BOOL)isLaunchProhibited;
- (ISSoftwareApplication)initWithLaunchServicesApplication:(id)a3;
- (ISSoftwareApplication)initWithLaunchServicesApplication:(id)a3 containerPath:(id)a4;
- (ISSoftwareApplication)initWithXPCEncoding:(id)a3;
- (NSString)description;
- (NSString)deviceIdentifierForVendor;
- (NSString)vendorName;
- (id)ITunesMetadataDictionary;
- (id)copyXPCEncoding;
- (unint64_t)vppStateFlags;
- (void)_loadMetadataFromContainer:(id)a3;
- (void)dealloc;
@end

@implementation ISSoftwareApplication

- (ISSoftwareApplication)initWithLaunchServicesApplication:(id)a3
{
  v5 = [objc_msgSend(a3 "bundleContainerURL")];

  return [(ISSoftwareApplication *)self initWithLaunchServicesApplication:a3 containerPath:v5];
}

- (ISSoftwareApplication)initWithLaunchServicesApplication:(id)a3 containerPath:(id)a4
{
  __ISRecordSPIClassUsage(self);
  v9.receiver = self;
  v9.super_class = ISSoftwareApplication;
  v7 = [(ISSoftwareApplication *)&v9 init];
  if (v7)
  {
    [a3 applicationDSID];
    [(ISSoftwareApplication *)v7 setAccountDSID:SSAccountGetUniqueIdentifierFromValue()];
    -[ISSoftwareApplication setBeta:](v7, "setBeta:", [a3 isBetaApp]);
    -[ISSoftwareApplication setBundleIdentifier:](v7, "setBundleIdentifier:", [a3 bundleIdentifier]);
    -[ISSoftwareApplication setBundleShortVersionString:](v7, "setBundleShortVersionString:", [a3 shortVersionString]);
    -[ISSoftwareApplication setBundleVersion:](v7, "setBundleVersion:", [a3 bundleVersion]);
    [(ISSoftwareApplication *)v7 setContainerPath:a4];
    -[ISSoftwareApplication setPlaceholder:](v7, "setPlaceholder:", [a3 isPlaceholder]);
    -[ISSoftwareApplication setProfileValidated:](v7, "setProfileValidated:", [a3 profileValidated]);
    [(ISSoftwareApplication *)v7 _loadMetadataFromContainer:a4];
    -[ISSoftwareApplication setHasMIDBasedSINF:](v7, "setHasMIDBasedSINF:", [a3 hasMIDBasedSINF]);
    -[ISSoftwareApplication setMissingRequiredSINF:](v7, "setMissingRequiredSINF:", [a3 missingRequiredSINF]);
    v7->_removableStatus = 0;
    if ([objc_msgSend(a3 "applicationType")] && objc_msgSend(a3, "isDeletable"))
    {
      v7->_removableStatus |= 2uLL;
    }

    if ([a3 isRemovedSystemApp])
    {
      v7->_removableStatus |= 4uLL;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISSoftwareApplication;
  [(ISSoftwareApplication *)&v3 dealloc];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = ISSoftwareApplication;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: (%@, %@:%@)", -[ISSoftwareApplication description](&v3, sel_description), -[ISSoftwareApplication bundleIdentifier](self, "bundleIdentifier"), -[ISSoftwareApplication itemIdentifier](self, "itemIdentifier"), -[ISSoftwareApplication versionIdentifier](self, "versionIdentifier")];
}

- (NSString)deviceIdentifierForVendor
{
  if (!self->_deviceIdentifierForVendor)
  {
    if ([(NSString *)self->_bundleIdentifier length])
    {
      v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:self->_bundleIdentifier];
      if (v5)
      {
        self->_deviceIdentifierForVendor = [objc_msgSend(v5 "deviceIdentifierForVendor")];
      }
    }
  }

  v3 = self->_deviceIdentifierForVendor;

  return v3;
}

- (BOOL)isLaunchProhibited
{
  if (![(ISSoftwareApplication *)self didCheckLaunchProhibited]&& [(NSString *)self->_bundleIdentifier length])
  {
    v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:self->_bundleIdentifier];
    if (v3)
    {
      self->_launchProhibited = [v3 isLaunchProhibited];
    }

    [(ISSoftwareApplication *)self setDidCheckLaunchProhibited:1];
  }

  return self->_launchProhibited;
}

- (NSString)vendorName
{
  if (!self->_vendorName)
  {
    if ([(NSString *)self->_bundleIdentifier length])
    {
      v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:self->_bundleIdentifier];
      if (v5)
      {
        self->_vendorName = [v5 vendorName];
      }
    }
  }

  v3 = self->_vendorName;

  return v3;
}

- (unint64_t)vppStateFlags
{
  result = self->_vppStateFlags;
  if (!result)
  {
    v4 = objc_autoreleasePoolPush();
    if (self->_bundleIdentifier)
    {
      v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:?];
    }

    else
    {
      v5 = 0;
    }

    v6 = [objc_msgSend(objc_msgSend(v5 "dataContainerURL")];
    if ([v5 profileValidated])
    {
      v7 = @"sandboxReceipt";
    }

    else
    {
      v7 = @"receipt";
    }

    v8 = [v6 stringByAppendingPathComponent:v7];
    v9 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if ([v9 fileExistsAtPath:v8])
    {
      v10 = [objc_alloc(MEMORY[0x277D69C18]) initWithContentsOfFile:v8];
      vppStateFlags = self->_vppStateFlags;
      if (v10)
      {
        v12 = v10;
        self->_vppStateFlags = vppStateFlags | 1;
        self->_receiptExpirationDate = [v10 expirationDate];
        if ([v12 isVPPLicensed])
        {
          self->_vppStateFlags |= 2uLL;
          if ([v12 isRevoked])
          {
            v13 = 8;
LABEL_18:
            self->_vppStateFlags |= v13;
            goto LABEL_19;
          }

          v15 = [v12 expirationDate];
          if ([v15 compare:{objc_msgSend(MEMORY[0x277CBEAA8], "date")}] == -1)
          {
            v13 = 4;
            goto LABEL_18;
          }
        }

LABEL_19:

        goto LABEL_20;
      }

      v14 = vppStateFlags | 0xFFFFFFFF80000000;
    }

    else
    {
      v14 = self->_vppStateFlags | 0x40000000;
    }

    self->_vppStateFlags = v14;
LABEL_20:

    objc_autoreleasePoolPop(v4);
    return self->_vppStateFlags;
  }

  return result;
}

- (id)ITunesMetadataDictionary
{
  v2 = [(NSString *)[(ISSoftwareApplication *)self containerPath] stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  v3 = MEMORY[0x277CBEAC0];

  return [v3 dictionaryWithContentsOfFile:v2];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  accountDSID = self->_accountDSID;
  SSXPCDictionarySetCFObject();
  accountIdentifier = self->_accountIdentifier;
  SSXPCDictionarySetCFObject();
  bundleIdentifier = self->_bundleIdentifier;
  SSXPCDictionarySetCFObject();
  bundleShortVersionString = self->_bundleShortVersionString;
  SSXPCDictionarySetCFObject();
  bundleVersion = self->_bundleVersion;
  SSXPCDictionarySetCFObject();
  containerPath = self->_containerPath;
  SSXPCDictionarySetCFObject();
  contentRating = self->_contentRating;
  SSXPCDictionarySetCFObject();
  familyAccountIdentifier = self->_familyAccountIdentifier;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_BOOL(v3, "15", self->_hasMIDBasedSINF);
  itemIdentifier = self->_itemIdentifier;
  SSXPCDictionarySetCFObject();
  itemName = self->_itemName;
  SSXPCDictionarySetCFObject();
  xpc_dictionary_set_BOOL(v3, "16", self->_missingRequiredSINF);
  xpc_dictionary_set_BOOL(v3, "9", self->_profileValidated);
  softwareType = self->_softwareType;
  SSXPCDictionarySetCFObject();
  storeFrontIdentifier = self->_storeFrontIdentifier;
  SSXPCDictionarySetCFObject();
  versionIdentifier = self->_versionIdentifier;
  SSXPCDictionarySetCFObject();
  versionOrdering = self->_versionOrdering;
  SSXPCDictionarySetCFObject();
  return v3;
}

- (ISSoftwareApplication)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x277C8C570](a3, a2) == MEMORY[0x277D86468])
  {
    v9.receiver = self;
    v9.super_class = ISSoftwareApplication;
    v5 = [(ISSoftwareApplication *)&v9 init];
    if (v5)
    {
      objc_opt_class();
      v5->_accountDSID = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_accountIdentifier = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_bundleIdentifier = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_bundleShortVersionString = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_bundleVersion = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_containerPath = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_familyAccountIdentifier = SSXPCDictionaryCopyCFObjectWithClass();
      v5->_hasMIDBasedSINF = xpc_dictionary_get_BOOL(a3, "15");
      objc_opt_class();
      v5->_itemIdentifier = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_itemName = SSXPCDictionaryCopyCFObjectWithClass();
      v5->_missingRequiredSINF = xpc_dictionary_get_BOOL(a3, "16");
      v5->_profileValidated = xpc_dictionary_get_BOOL(a3, "9");
      objc_opt_class();
      v5->_softwareType = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_storeFrontIdentifier = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_versionIdentifier = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_versionOrdering = SSXPCDictionaryCopyCFObjectWithClass();
      value = xpc_dictionary_get_value(a3, "6");
      if (value)
      {
        v8 = value;
        if (MEMORY[0x277C8C570]())
        {
          v5->_contentRating = [objc_alloc(MEMORY[0x277D69B10]) initWithXPCEncoding:v8];
        }
      }
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)_loadMetadataFromContainer:(id)a3
{
  v4 = [a3 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v4];
  if (v5)
  {
    v20 = v5;
    v6 = [v5 objectForKey:@"appleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISSoftwareApplication *)self setAccountIdentifier:v6];
    }

    v7 = [v20 objectForKey:@"itemId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISSoftwareApplication *)self setItemIdentifier:v7];
    }

    v8 = [v20 objectForKey:@"itemName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISSoftwareApplication *)self setItemName:v8];
    }

    v9 = [v20 objectForKey:*MEMORY[0x277D69F18]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277D69B10]) initWithDictionary:v9];
      [(ISSoftwareApplication *)self setContentRating:v10];
    }

    v11 = [v20 objectForKey:*MEMORY[0x277D69F20]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISSoftwareApplication *)self setSoftwareType:v11];
    }

    v12 = [v20 objectForKey:@"s"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISSoftwareApplication *)self setStoreFrontIdentifier:v12];
    }

    v13 = [v20 objectForKey:@"softwareVersionExternalIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISSoftwareApplication *)self setVersionIdentifier:v13];
    }

    v14 = [v20 objectForKey:@"softwareVersionExternalIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISSoftwareApplication *)self setVersionOrdering:v14];
    }

    v15 = [v20 objectForKey:*MEMORY[0x277D69F10]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 objectForKey:*MEMORY[0x277D69F08]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 objectForKey:*MEMORY[0x277D6A6C0]];
        if (![(ISSoftwareApplication *)self accountIdentifier])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ISSoftwareApplication *)self setAccountIdentifier:v17];
          }
        }

        v18 = [v16 objectForKey:*MEMORY[0x277D6A6B8]];
        if (![(ISSoftwareApplication *)self accountDSID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ISSoftwareApplication *)self setAccountDSID:v18];
          }
        }

        v19 = [v16 objectForKey:@"FamilyID"];
        if (![(ISSoftwareApplication *)self familyAccountIdentifier])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ISSoftwareApplication *)self setFamilyAccountIdentifier:v19];
          }
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

@end