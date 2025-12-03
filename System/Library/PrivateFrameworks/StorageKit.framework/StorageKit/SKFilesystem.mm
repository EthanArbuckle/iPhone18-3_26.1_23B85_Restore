@interface SKFilesystem
+ (BOOL)_shouldShowFilesystemWithType:(id)type key:(id)key personality:(id)personality;
+ (NSArray)allFilesystems;
+ (NSArray)extensionFilesystems;
+ (NSArray)installedFilesystems;
+ (NSMutableDictionary)cachedFilesystems;
+ (NSMutableDictionary)extensionFilesystemsMapping;
+ (NSMutableDictionary)installedFilesystemsMapping;
+ (id)_skfilesystemTypeWithPersonality:(id)personality;
+ (id)buildSpecialFilesystems;
+ (id)collectFilesystemsWithPersonalityMapping:(id)mapping;
+ (id)fileSystems3rdPartyWithPersonalityKey:(id)key bundle:(id)bundle userVisibleName:(id)name;
+ (id)fileSystemsAPFSWithPersonalityKey:(id)key bundle:(id)bundle;
+ (id)fileSystemsHFSWithPersonalityKey:(id)key bundle:(id)bundle userVisibleName:(id)name;
+ (id)filesystemsFromBundle:(id)bundle;
+ (id)filesystemsWithBundle:(id)bundle filesystemPersonality:(id)personality userVisibleName:(id)name;
+ (id)getExtensionFilesystems;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExtension;
- (BOOL)isExtensionInsensitiveEqual:(id)equal;
- (BOOL)isValidName:(id)name error:(id *)error;
- (SKFilesystem)initWithDictionaryRepresentation:(id)representation;
- (SKFilesystem)initWithSpecialFilesystem:(id)filesystem majorType:(id)type localizedName:(id)name;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation SKFilesystem

+ (NSArray)allFilesystems
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SKFilesystem_allFilesystems__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allFilesystems_onceToken != -1)
  {
    dispatch_once(&allFilesystems_onceToken, block);
  }

  v2 = _allFilesystems;

  return v2;
}

void __30__SKFilesystem_allFilesystems__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) installedFilesystems];
  v3 = [*(a1 + 32) extensionFilesystems];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];
  v5 = [v4 mutableCopy];

  [v5 sortWithOptions:16 usingComparator:&__block_literal_global_2];
  v6 = _allFilesystems;
  _allFilesystems = v5;
}

uint64_t __30__SKFilesystem_allFilesystems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sortPriority];
  if (v6 >= [v5 sortPriority])
  {
    v8 = [v4 sortPriority];
    v7 = v8 > [v5 sortPriority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (NSMutableDictionary)extensionFilesystemsMapping
{
  installedFilesystems = [self installedFilesystems];
  objc_sync_enter(installedFilesystems);
  if (_extensionFilesystemsMapping && [_extensionFilesystemsMapping count])
  {
    v3 = _extensionFilesystemsMapping;
    objc_sync_exit(installedFilesystems);
  }

  else
  {
    v4 = +[SKFilesystem getExtensionFilesystems];
    v5 = _extensionFilesystemsMapping;
    _extensionFilesystemsMapping = v4;

    objc_sync_exit(installedFilesystems);
    v3 = _extensionFilesystemsMapping;
  }

  return v3;
}

+ (NSArray)extensionFilesystems
{
  installedFilesystems = [self installedFilesystems];
  objc_sync_enter(installedFilesystems);
  if (_extensionFilesystems && [_extensionFilesystems count])
  {
    v4 = _extensionFilesystems;
    objc_sync_exit(installedFilesystems);
  }

  else
  {
    extensionFilesystemsMapping = [self extensionFilesystemsMapping];
    v6 = [SKFilesystem collectFilesystemsWithPersonalityMapping:extensionFilesystemsMapping];
    v7 = _extensionFilesystems;
    _extensionFilesystems = v6;

    objc_sync_exit(installedFilesystems);
    v4 = _extensionFilesystems;
  }

  return v4;
}

+ (NSMutableDictionary)installedFilesystemsMapping
{
  if (installedFilesystemsMapping_onceToken != -1)
  {
    +[SKFilesystem installedFilesystemsMapping];
  }

  v3 = _installedFilesystemsMapping;

  return v3;
}

void __43__SKFilesystem_installedFilesystemsMapping__block_invoke()
{
  v29 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = [MEMORY[0x277CBEB18] array];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/Filesystems"];
  BundlesFromDirectory = CFBundleCreateBundlesFromDirectory(0, v2, @"fs");
  if (BundlesFromDirectory)
  {
    v4 = BundlesFromDirectory;
    if (CFArrayGetCount(BundlesFromDirectory) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        v7 = MEMORY[0x277CCA8D8];
        v8 = CFBundleCopyBundleURL(ValueAtIndex);
        v9 = [v7 bundleWithURL:v8];

        v10 = [v9 bundlePath];
        v11 = [v10 hasSuffix:@"apfs_userfs.fs"];

        if ((v11 & 1) == 0)
        {
          [v1 addObject:v9];
        }

        ++v5;
      }

      while (v5 < CFArrayGetCount(v4));
    }

    CFRelease(v4);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v1;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    v16 = *MEMORY[0x277CBED50];
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = [v18 infoDictionary];
        v20 = [v19 objectForKey:v16];

        if (v20)
        {
          v21 = [SKFilesystem filesystemsFromBundle:v18];
          [v0 setObject:v21 forKeyedSubscript:v20];
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v22 = _installedFilesystemsMapping;
  _installedFilesystemsMapping = v0;

  v23 = *MEMORY[0x277D85DE8];
}

+ (NSArray)installedFilesystems
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SKFilesystem_installedFilesystems__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (installedFilesystems_onceToken != -1)
  {
    dispatch_once(&installedFilesystems_onceToken, block);
  }

  v2 = _installedFilesystems;

  return v2;
}

void __36__SKFilesystem_installedFilesystems__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) installedFilesystemsMapping];
  v1 = [SKFilesystem collectFilesystemsWithPersonalityMapping:v3];
  v2 = _installedFilesystems;
  _installedFilesystems = v1;
}

+ (id)collectFilesystemsWithPersonalityMapping:(id)mapping
{
  v18 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [mappingCopy allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [v4 addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = +[SKFilesystem buildSpecialFilesystems];
  [v4 addObjectsFromArray:v10];

  [v4 sortWithOptions:16 usingComparator:&__block_literal_global_26];
  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __57__SKFilesystem_collectFilesystemsWithPersonalityMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sortPriority];
  if (v6 >= [v5 sortPriority])
  {
    v8 = [v4 sortPriority];
    v7 = v8 > [v5 sortPriority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)getExtensionFilesystems
{
  v34 = *MEMORY[0x277D85DE8];
  v19 = objc_opt_new();
  mEMORY[0x277D07D38] = [MEMORY[0x277D07D38] sharedInstance];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = objc_opt_new();
  if (mEMORY[0x277D07D38])
  {
    v2 = dispatch_semaphore_create(0);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__SKFilesystem_getExtensionFilesystems__block_invoke;
    v24[3] = &unk_279D1F850;
    v26 = &v27;
    v3 = v2;
    v25 = v3;
    [mEMORY[0x277D07D38] installedExtensionsSync:v24];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v28[5];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v33 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = MEMORY[0x277CCA8D8];
        v9 = [*(*(&v20 + 1) + 8 * i) url];
        v10 = [v8 bundleWithURL:v9];

        if (v10)
        {
          infoDictionary = [v10 infoDictionary];
          v12 = [infoDictionary objectForKeyedSubscript:kExtensionAttributesKey];

          if (v12)
          {
            v13 = [v12 objectForKeyedSubscript:@"FSShortName"];
            v14 = v13;
            if (v13 && ([v13 isEqualToString:@"hfs"] & 1) == 0)
            {
              v15 = [SKFilesystem filesystemsFromBundle:v10];
              [v19 setObject:v15 forKeyedSubscript:v14];
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v33 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v27, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v19;
}

void __39__SKFilesystem_getExtensionFilesystems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[SKBaseManager sharedManager];
    [v8 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_35];

    v9 = SKGetOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_26BBB8000, v9, OS_LOG_TYPE_FAULT, "Failed to get extensions %@", &v11, 0xCu);
    }
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

id __39__SKFilesystem_getExtensionFilesystems__block_invoke_2()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKFilesystem.m", 221);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

+ (NSMutableDictionary)cachedFilesystems
{
  v2 = _cachedFilesystems;
  if (!_cachedFilesystems)
  {
    v3 = objc_opt_new();
    v4 = _cachedFilesystems;
    _cachedFilesystems = v3;

    v2 = _cachedFilesystems;
  }

  return v2;
}

- (SKFilesystem)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v51.receiver = self;
  v51.super_class = SKFilesystem;
  v5 = [(SKFilesystem *)&v51 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"localizedKey"];

    if (v6)
    {
      v7 = [representationCopy objectForKey:@"localizedKey"];
      [(SKFilesystem *)v5 setLocalizedKey:v7];

      v8 = +[SKError frameworkBundle];
      localizedKey = [(SKFilesystem *)v5 localizedKey];
      v10 = [v8 localizedStringForKey:localizedKey value:&stru_287C8F598 table:0];
      [(SKFilesystem *)v5 setLocalizedName:v10];
    }

    else
    {
      v8 = [representationCopy objectForKey:@"localizedName"];
      [(SKFilesystem *)v5 setLocalizedName:v8];
    }

    v11 = [representationCopy objectForKey:@"type"];
    [(SKFilesystem *)v5 setType:v11];

    v12 = [representationCopy objectForKey:@"majorType"];
    [(SKFilesystem *)v5 setMajorType:v12];

    v13 = [representationCopy objectForKey:@"isEncrypted"];
    -[SKFilesystem setIsEncrypted:](v5, "setIsEncrypted:", [v13 BOOLValue]);

    v14 = [representationCopy objectForKey:@"defaultEffaceable"];
    -[SKFilesystem setDefaultEffaceable:](v5, "setDefaultEffaceable:", [v14 BOOLValue]);

    v15 = [representationCopy objectForKey:@"isCaseSensitive"];
    -[SKFilesystem setIsCaseSensitive:](v5, "setIsCaseSensitive:", [v15 BOOLValue]);

    v16 = [representationCopy objectForKey:@"isJournaled"];
    -[SKFilesystem setIsJournaled:](v5, "setIsJournaled:", [v16 BOOLValue]);

    v17 = [representationCopy objectForKey:@"shouldShow"];
    -[SKFilesystem setShouldShow:](v5, "setShouldShow:", [v17 BOOLValue]);

    v18 = [representationCopy objectForKey:@"dmPersonality"];
    [(SKFilesystem *)v5 setDmPersonality:v18];

    v19 = [representationCopy objectForKey:@"sortPriority"];
    -[SKFilesystem setSortPriority:](v5, "setSortPriority:", [v19 intValue]);

    v20 = [representationCopy objectForKey:@"minimumSize"];
    -[SKFilesystem setMinimumSize:](v5, "setMinimumSize:", [v20 unsignedLongLongValue]);

    v21 = [representationCopy objectForKey:@"unlocalizedName"];
    [(SKFilesystem *)v5 setUnlocalizedName:v21];

    v22 = [representationCopy objectForKey:@"unlocalizedEncryptedName"];
    [(SKFilesystem *)v5 setUnlocalizedEncryptedName:v22];

    v23 = [representationCopy objectForKey:@"contentMask"];
    [(SKFilesystem *)v5 setContentMask:v23];

    v24 = [representationCopy objectForKey:@"formatArgs"];
    formatArgs = v5->_formatArgs;
    v5->_formatArgs = v24;

    v26 = MEMORY[0x277CBEBC0];
    v27 = [representationCopy objectForKey:@"formatExecutable"];
    v28 = [v26 URLWithString:v27];
    formatExecutable = v5->_formatExecutable;
    v5->_formatExecutable = v28;

    v30 = [representationCopy objectForKey:@"repairArgs"];
    repairArgs = v5->_repairArgs;
    v5->_repairArgs = v30;

    v32 = MEMORY[0x277CBEBC0];
    v33 = [representationCopy objectForKey:@"repairExecutable"];
    v34 = [v32 URLWithString:v33];
    repairExecutable = v5->_repairExecutable;
    v5->_repairExecutable = v34;

    v36 = [representationCopy objectForKey:@"verificationArgs"];
    verificationArgs = v5->_verificationArgs;
    v5->_verificationArgs = v36;

    v38 = [representationCopy objectForKey:@"liveVerificationArgs"];
    liveVerificationArgs = v5->_liveVerificationArgs;
    v5->_liveVerificationArgs = v38;

    v40 = MEMORY[0x277CBEBC0];
    v41 = [representationCopy objectForKey:@"verificationExecutable"];
    v42 = [v40 URLWithString:v41];
    verificationExecutable = v5->_verificationExecutable;
    v5->_verificationExecutable = v42;

    v44 = [representationCopy objectForKey:@"xmlOutputArg"];
    xmlOutputArg = v5->_xmlOutputArg;
    v5->_xmlOutputArg = v44;

    v46 = MEMORY[0x277CCA8D8];
    v47 = [representationCopy objectForKey:@"bundle"];
    v48 = [v46 bundleWithPath:v47];
    bundle = v5->_bundle;
    v5->_bundle = v48;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  localizedName = [(SKFilesystem *)self localizedName];

  if (localizedName)
  {
    localizedName2 = [(SKFilesystem *)self localizedName];
    [v3 setObject:localizedName2 forKey:@"localizedName"];
  }

  localizedKey = [(SKFilesystem *)self localizedKey];

  if (localizedKey)
  {
    localizedKey2 = [(SKFilesystem *)self localizedKey];
    [v3 setObject:localizedKey2 forKey:@"localizedKey"];
  }

  type = [(SKFilesystem *)self type];
  [v3 setObject:type forKey:@"type"];

  majorType = [(SKFilesystem *)self majorType];

  if (majorType)
  {
    majorType2 = [(SKFilesystem *)self majorType];
    [v3 setObject:majorType2 forKey:@"majorType"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKFilesystem isEncrypted](self, "isEncrypted")}];
  [v3 setObject:v11 forKey:@"isEncrypted"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKFilesystem defaultEffaceable](self, "defaultEffaceable")}];
  [v3 setObject:v12 forKey:@"defaultEffaceable"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKFilesystem isCaseSensitive](self, "isCaseSensitive")}];
  [v3 setObject:v13 forKey:@"isCaseSensitive"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKFilesystem shouldShow](self, "shouldShow")}];
  [v3 setObject:v14 forKey:@"shouldShow"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKFilesystem isJournaled](self, "isJournaled")}];
  [v3 setObject:v15 forKey:@"isJournaled"];

  dmPersonality = [(SKFilesystem *)self dmPersonality];
  [v3 setObject:dmPersonality forKey:@"dmPersonality"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[SKFilesystem sortPriority](self, "sortPriority")}];
  [v3 setObject:v17 forKey:@"sortPriority"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKFilesystem minimumSize](self, "minimumSize")}];
  [v3 setObject:v18 forKey:@"minimumSize"];

  unlocalizedName = [(SKFilesystem *)self unlocalizedName];
  [v3 setValue:unlocalizedName forKey:@"unlocalizedName"];

  unlocalizedEncryptedName = [(SKFilesystem *)self unlocalizedEncryptedName];
  [v3 setValue:unlocalizedEncryptedName forKey:@"unlocalizedEncryptedName"];

  contentMask = [(SKFilesystem *)self contentMask];
  [v3 setValue:contentMask forKey:@"contentMask"];

  formatArgs = [(SKFilesystem *)self formatArgs];
  [v3 setValue:formatArgs forKey:@"formatArgs"];

  formatExecutable = [(SKFilesystem *)self formatExecutable];
  absoluteString = [formatExecutable absoluteString];
  [v3 setValue:absoluteString forKey:@"formatExecutable"];

  repairArgs = [(SKFilesystem *)self repairArgs];
  [v3 setValue:repairArgs forKey:@"repairArgs"];

  repairExecutable = [(SKFilesystem *)self repairExecutable];
  absoluteString2 = [repairExecutable absoluteString];
  [v3 setValue:absoluteString2 forKey:@"repairExecutable"];

  verificationArgs = [(SKFilesystem *)self verificationArgs];
  [v3 setValue:verificationArgs forKey:@"verificationArgs"];

  liveVerificationArgs = [(SKFilesystem *)self liveVerificationArgs];
  [v3 setValue:liveVerificationArgs forKey:@"liveVerificationArgs"];

  verificationExecutable = [(SKFilesystem *)self verificationExecutable];
  absoluteString3 = [verificationExecutable absoluteString];
  [v3 setValue:absoluteString3 forKey:@"verificationExecutable"];

  xmlOutputArg = [(SKFilesystem *)self xmlOutputArg];
  [v3 setValue:xmlOutputArg forKey:@"xmlOutputArg"];

  bundle = [(SKFilesystem *)self bundle];
  bundlePath = [bundle bundlePath];
  [v3 setValue:bundlePath forKey:@"bundle"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localizedName = [(SKFilesystem *)self localizedName];
  shouldShow = [(SKFilesystem *)self shouldShow];
  v6 = @"NO";
  if (shouldShow)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"%@ - Show: %@", localizedName, v6];

  return v7;
}

- (BOOL)isExtensionInsensitiveEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    type = [(SKFilesystem *)self type];
    type2 = [v5 type];
    if ([type isEqualToString:type2])
    {
      dmPersonality = [(SKFilesystem *)self dmPersonality];
      dmPersonality2 = [v5 dmPersonality];
      if ([dmPersonality isEqualToString:dmPersonality2] && (v10 = -[SKFilesystem isEncrypted](self, "isEncrypted"), v10 == objc_msgSend(v5, "isEncrypted")) && (v11 = -[SKFilesystem defaultEffaceable](self, "defaultEffaceable"), v11 == objc_msgSend(v5, "defaultEffaceable")) && (v12 = -[SKFilesystem isJournaled](self, "isJournaled"), v12 == objc_msgSend(v5, "isJournaled")))
      {
        isCaseSensitive = [(SKFilesystem *)self isCaseSensitive];
        v13 = isCaseSensitive ^ [v5 isCaseSensitive] ^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(SKFilesystem *)self isExtensionInsensitiveEqual:equalCopy])
  {
    isExtension = [(SKFilesystem *)self isExtension];
    v6 = isExtension ^ [equalCopy isExtension] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

BOOL __66__SKFilesystem_filesystemFor_caseSensitive_encrypted_isExtension___block_invoke_2(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  v4 = a1[32] == [v3 isEncrypted] && a1[33] == objc_msgSend(v3, "isCaseSensitive") && a1[34] == objc_msgSend(v3, "isExtension");

  return v4;
}

uint64_t __66__SKFilesystem_filesystemFor_caseSensitive_encrypted_isExtension___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sortPriority];
  if (v6 >= [v5 sortPriority])
  {
    v8 = [v4 sortPriority];
    v7 = v8 > [v5 sortPriority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)fileSystemsHFSWithPersonalityKey:(id)key bundle:(id)bundle userVisibleName:(id)name
{
  v73[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  bundleCopy = bundle;
  nameCopy = name;
  v10 = getPersonalityDict(bundleCopy, keyCopy);
  infoDictionary = [bundleCopy infoDictionary];
  v68 = [infoDictionary objectForKey:*MEMORY[0x277CBED50]];
  v12 = [v68 componentsSeparatedByString:@"."];
  lastObject = [v12 lastObject];

  CaseSensitive = getCaseSensitive(v10, keyCopy);
  v67 = lastObject;
  if ([keyCopy isEqualToString:@"Journaled HFS+"])
  {
    v15 = [SKFilesystem alloc];
    v16 = bundleCopy;
    v17 = kSKDiskFileSystemHFS[0];
    v18 = +[SKError frameworkBundle];
    v19 = [v18 localizedStringForKey:@"HFS Generic" value:&stru_287C8F598 table:0];
    v20 = CaseSensitive;
    v21 = v19;
    LODWORD(v62) = 2;
    v22 = v17;
    bundleCopy = v16;
    v23 = [(SKFilesystem *)v15 initWithSKFilesystem:v22 bundle:v16 localizedName:v19 localizedKey:@"HFS Generic" caseSensitive:v20 encrypted:0 personalityKey:keyCopy sortPriority:v62];

    [(SKFilesystem *)v23 setIsJournaled:1];
    v24 = [SKFilesystem alloc];
    v25 = +[SKError frameworkBundle];
    v26 = [v25 localizedStringForKey:@"HFS Generic Encrypted" value:&stru_287C8F598 table:0];
    v27 = [(SKFilesystem *)v24 initEncryptedFSWithUnencryptedFS:v23 localizedName:v26 sortPriority:3];

    v73[0] = v23;
    v73[1] = v27;
    v28 = MEMORY[0x277CBEA60];
    v29 = v73;
  }

  else if ([keyCopy isEqualToString:@"Case-sensitive Journaled HFS+"])
  {
    v30 = [SKFilesystem alloc];
    v31 = CaseSensitive;
    v32 = kSKDiskFileSystemHFS[0];
    v64 = v10;
    v33 = +[SKError frameworkBundle];
    [v33 localizedStringForKey:@"HFS Case-sensitive" value:&stru_287C8F598 table:0];
    v35 = v34 = bundleCopy;
    LODWORD(v62) = 4;
    v23 = [(SKFilesystem *)v30 initWithSKFilesystem:v32 bundle:v34 localizedName:v35 localizedKey:@"HFS Case-sensitive" caseSensitive:v31 encrypted:0 personalityKey:keyCopy sortPriority:v62];

    bundleCopy = v34;
    [(SKFilesystem *)v23 setIsJournaled:1];
    v36 = [SKFilesystem alloc];
    v10 = v64;
    v37 = +[SKError frameworkBundle];
    v38 = [v37 localizedStringForKey:@"HFS Case-sensitive Encrypted" value:&stru_287C8F598 table:0];
    v27 = [(SKFilesystem *)v36 initEncryptedFSWithUnencryptedFS:v23 localizedName:v38 sortPriority:5];

    v72[0] = v23;
    v72[1] = v27;
    v28 = MEMORY[0x277CBEA60];
    v29 = v72;
  }

  else if ([keyCopy isEqualToString:@"HFS+"])
  {
    v39 = [SKFilesystem alloc];
    [SKFilesystem _skfilesystemTypeWithPersonality:keyCopy];
    v41 = v40 = CaseSensitive;
    +[SKError frameworkBundle];
    v42 = v65 = nameCopy;
    [v42 localizedStringForKey:@"HFS Not Journaled" value:&stru_287C8F598 table:0];
    v44 = v43 = bundleCopy;
    LODWORD(v62) = 8;
    v23 = [(SKFilesystem *)v39 initWithSKFilesystem:v41 bundle:v43 localizedName:v44 localizedKey:@"HFS Not Journaled" caseSensitive:v40 encrypted:0 personalityKey:keyCopy sortPriority:v62];

    bundleCopy = v43;
    v45 = [SKFilesystem alloc];
    v46 = +[SKError frameworkBundle];
    v47 = [v46 localizedStringForKey:@"HFS Not Journaled Encrypted" value:&stru_287C8F598 table:0];
    v27 = [(SKFilesystem *)v45 initEncryptedFSWithUnencryptedFS:v23 localizedName:v47 sortPriority:8];

    nameCopy = v65;
    v71[0] = v23;
    v71[1] = v27;
    v28 = MEMORY[0x277CBEA60];
    v29 = v71;
  }

  else
  {
    if (![keyCopy isEqualToString:@"Case-sensitive HFS+"])
    {
      if ([SKFilesystem _shouldShowFilesystemWithType:lastObject key:keyCopy personality:v10])
      {
        v59 = 6;
      }

      else
      {
        v59 = 8;
      }

      v60 = [SKFilesystem alloc];
      v61 = [SKFilesystem _skfilesystemTypeWithPersonality:keyCopy];
      LODWORD(v62) = v59;
      v23 = [(SKFilesystem *)v60 initWithSKFilesystem:v61 bundle:bundleCopy localizedName:nameCopy localizedKey:0 caseSensitive:0 encrypted:0 personalityKey:keyCopy sortPriority:v62];

      v69 = v23;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
      goto LABEL_10;
    }

    v63 = [SKFilesystem alloc];
    [SKFilesystem _skfilesystemTypeWithPersonality:keyCopy];
    v49 = v48 = CaseSensitive;
    +[SKError frameworkBundle];
    v50 = v66 = nameCopy;
    [v50 localizedStringForKey:@"HFS Case-sensitive Not Journaled" value:&stru_287C8F598 table:0];
    v52 = v51 = bundleCopy;
    LODWORD(v62) = 8;
    v23 = [(SKFilesystem *)v63 initWithSKFilesystem:v49 bundle:v51 localizedName:v52 localizedKey:@"HFS Case-sensitive Not Journaled" caseSensitive:v48 encrypted:0 personalityKey:keyCopy sortPriority:v62];

    bundleCopy = v51;
    v53 = [SKFilesystem alloc];
    v54 = +[SKError frameworkBundle];
    v55 = [v54 localizedStringForKey:@"HFS Case-sensitive Not Journaled Encrypted" value:&stru_287C8F598 table:0];
    v27 = [(SKFilesystem *)v53 initEncryptedFSWithUnencryptedFS:v23 localizedName:v55 sortPriority:8];

    nameCopy = v66;
    v70[0] = v23;
    v70[1] = v27;
    v28 = MEMORY[0x277CBEA60];
    v29 = v70;
  }

  v56 = [v28 arrayWithObjects:v29 count:2];

LABEL_10:
  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

+ (id)fileSystemsAPFSWithPersonalityKey:(id)key bundle:(id)bundle
{
  v26[2] = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  keyCopy = key;
  v25 = getPersonalityDict(bundleCopy, keyCopy);
  CaseSensitive = getCaseSensitive(v25, keyCopy);
  v7 = [SKFilesystem alloc];
  v8 = kSKDiskFileSystemAPFS[0];
  v9 = +[SKError frameworkBundle];
  v10 = [v9 localizedStringForKey:@"APFS" value:&stru_287C8F598 table:0];
  LODWORD(v23) = 1;
  v11 = [(SKFilesystem *)v7 initWithSKFilesystem:v8 bundle:bundleCopy localizedName:v10 localizedKey:@"APFS" encrypted:0 personalityKey:keyCopy sortPriority:v23];

  v12 = [SKFilesystem alloc];
  v13 = +[SKError frameworkBundle];
  v14 = [v13 localizedStringForKey:@"APFS Encrypted" value:&stru_287C8F598 table:0];
  v15 = [(SKFilesystem *)v12 initEncryptedFSWithUnencryptedFS:v11 localizedName:v14 sortPriority:1];

  [v15 setLocalizedKey:@"APFS Encrypted"];
  if ((CaseSensitive & 1) == 0)
  {
    v16 = +[SKError frameworkBundle];
    v17 = [v16 localizedStringForKey:@"Case-insensitive APFS" value:&stru_287C8F598 table:0];
    [(SKFilesystem *)v11 setLocalizedName:v17];

    [(SKFilesystem *)v11 setLocalizedKey:@"Case-insensitive APFS"];
    [(SKFilesystem *)v11 setSortPriority:0];
    v18 = +[SKError frameworkBundle];
    v19 = [v18 localizedStringForKey:@"Case-insensitive APFS Encrypted" value:&stru_287C8F598 table:0];
    [v15 setLocalizedName:v19];

    [v15 setLocalizedKey:@"Case-insensitive APFS Encrypted"];
    [v15 setSortPriority:0];
  }

  v26[0] = v11;
  v26[1] = v15;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)fileSystems3rdPartyWithPersonalityKey:(id)key bundle:(id)bundle userVisibleName:(id)name
{
  v23[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bundleCopy = bundle;
  keyCopy = key;
  v10 = getPersonalityDict(bundleCopy, keyCopy);
  infoDictionary = [bundleCopy infoDictionary];
  v12 = [infoDictionary objectForKey:*MEMORY[0x277CBED50]];
  v13 = [v12 componentsSeparatedByString:@"."];
  lastObject = [v13 lastObject];

  if ([SKFilesystem _shouldShowFilesystemWithType:lastObject key:keyCopy personality:v10])
  {
    v15 = 7;
  }

  else
  {
    v15 = 9;
  }

  v16 = [SKFilesystem alloc];
  v17 = [SKFilesystem _skfilesystemTypeWithPersonality:keyCopy];
  LODWORD(v22) = v15;
  v18 = [(SKFilesystem *)v16 initWithSKFilesystem:v17 bundle:bundleCopy localizedName:nameCopy localizedKey:0 encrypted:0 personalityKey:keyCopy sortPriority:v22];

  v23[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)filesystemsWithBundle:(id)bundle filesystemPersonality:(id)personality userVisibleName:(id)name
{
  bundleCopy = bundle;
  personalityCopy = personality;
  nameCopy = name;
  infoDictionary = [bundleCopy infoDictionary];
  v12 = [infoDictionary objectForKey:*MEMORY[0x277CBED50]];
  v13 = [v12 componentsSeparatedByString:@"."];
  lastObject = [v13 lastObject];

  if ([lastObject isEqualToString:@"hfs"])
  {
    v15 = [self fileSystemsHFSWithPersonalityKey:personalityCopy bundle:bundleCopy userVisibleName:nameCopy];
  }

  else
  {
    if ([lastObject isEqualToString:@"apfs"])
    {
      [self fileSystemsAPFSWithPersonalityKey:personalityCopy bundle:bundleCopy];
    }

    else
    {
      [self fileSystems3rdPartyWithPersonalityKey:personalityCopy bundle:bundleCopy userVisibleName:nameCopy];
    }
    v15 = ;
  }

  v16 = v15;

  return v16;
}

- (SKFilesystem)initWithSpecialFilesystem:(id)filesystem majorType:(id)type localizedName:(id)name
{
  v18[8] = *MEMORY[0x277D85DE8];
  v17[0] = @"type";
  nameCopy = name;
  typeCopy = type;
  filesystemCopy = filesystem;
  v11 = [SKFilesystem _skfilesystemTypeWithPersonality:filesystemCopy];
  v18[0] = v11;
  v18[1] = typeCopy;
  v17[1] = @"majorType";
  v17[2] = @"localizedName";
  v18[2] = nameCopy;
  v18[3] = MEMORY[0x277CBEC28];
  v17[3] = @"isCaseSensitive";
  v17[4] = @"isEncrypted";
  v18[4] = MEMORY[0x277CBEC28];
  v18[5] = MEMORY[0x277CBEC28];
  v17[5] = @"shouldShow";
  v17[6] = @"dmPersonality";
  v18[6] = filesystemCopy;
  v17[7] = @"sortPriority";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v18[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];

  v14 = [(SKFilesystem *)self initWithDictionaryRepresentation:v13];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)buildSpecialFilesystems
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = [SKFilesystem alloc];
  v3 = +[SKError frameworkBundle];
  v4 = [v3 localizedStringForKey:@"Free Space" value:&stru_287C8F598 table:0];
  v5 = [(SKFilesystem *)v2 initWithSpecialFilesystem:@"Free Space" majorType:@"FREE_SPACE" localizedName:v4];

  v6 = [SKFilesystem alloc];
  v7 = +[SKError frameworkBundle];
  v8 = [v7 localizedStringForKey:@"Linux Swap" value:&stru_287C8F598 table:0];
  v9 = [(SKFilesystem *)v6 initWithSpecialFilesystem:@"Linux Swap" majorType:@"Linux Swap" localizedName:v8];

  v10 = [SKFilesystem alloc];
  v11 = +[SKError frameworkBundle];
  v12 = [v11 localizedStringForKey:@"Linux Native" value:&stru_287C8F598 table:0];
  v13 = [(SKFilesystem *)v10 initWithSpecialFilesystem:@"Linux Native" majorType:@"Linux Native" localizedName:v12];

  v17[0] = v5;
  v17[1] = v9;
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)filesystemsFromBundle:(id)bundle
{
  v30 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  array = [MEMORY[0x277CBEB18] array];
  v24 = bundleCopy;
  infoDictionary = [bundleCopy infoDictionary];
  v5 = [infoDictionary objectForKeyedSubscript:kExtensionAttributesKey];

  if (v5)
  {
    v6 = [infoDictionary objectForKeyedSubscript:kExtensionAttributesKey];

    infoDictionary = v6;
  }

  v22 = infoDictionary;
  v7 = [infoDictionary objectForKeyedSubscript:@"FSPersonalities"];
  v8 = [bundleCopy objectForInfoDictionaryKey:@"FSPersonalities"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [v8 objectForKeyedSubscript:v14];
        v17 = [v16 objectForKeyedSubscript:@"FSName"];
        if (!v17)
        {
          v18 = [v15 objectForKeyedSubscript:@"FSName"];
          if (v18)
          {
            v17 = v18;
          }

          else
          {
            v17 = &stru_287C8F598;
          }
        }

        v19 = [SKFilesystem filesystemsWithBundle:v24 filesystemPersonality:v14 userVisibleName:v17];
        [array addObjectsFromArray:v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)_skfilesystemTypeWithPersonality:(id)personality
{
  v3 = [personality stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"kSKDiskFileSystem_%@", v3];

  return v4;
}

+ (BOOL)_shouldShowFilesystemWithType:(id)type key:(id)key personality:(id)personality
{
  typeCopy = type;
  keyCopy = key;
  personalityCopy = personality;
  v10 = [personalityCopy objectForKeyedSubscript:@"FSServerOnly"];
  v11 = NSNumberToBool(v10);

  if (v11 && (v12 = _CFCopyServerVersionDictionary(), v12, !v12))
  {
  }

  else
  {
    v13 = [personalityCopy objectForKeyedSubscript:@"FSFormatExecutable"];

    if (v13)
    {
      goto LABEL_4;
    }
  }

  v15 = [personalityCopy objectForKeyedSubscript:@"FSFormatInteractive"];
  if ((isValidNSNumber(v15) & 1) == 0)
  {

LABEL_14:
    LOBYTE(v14) = 0;
    goto LABEL_15;
  }

  bOOLValue = [v15 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ([typeCopy isEqualToString:@"hfs"] && !objc_msgSend(keyCopy, "containsString:", @"Journaled") || objc_msgSend(typeCopy, "isEqualToString:", @"msdos") && !objc_msgSend(keyCopy, "isEqualToString:", @"MS-DOS"))
  {
    goto LABEL_14;
  }

  v14 = [typeCopy isEqualToString:@"udf"] ^ 1;
LABEL_15:

  return v14;
}

- (BOOL)isExtension
{
  bundle = [(SKFilesystem *)self bundle];
  infoDictionary = [bundle infoDictionary];
  v4 = [infoDictionary objectForKeyedSubscript:kExtensionAttributesKey];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isValidName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (nameCopy && [nameCopy length])
  {
    if ([(SKFilesystem *)self isExtension])
    {
      mEMORY[0x277D07D38] = [MEMORY[0x277D07D38] sharedInstance];
      if (mEMORY[0x277D07D38])
      {
        bundle = [(SKFilesystem *)self bundle];
        bundleIdentifier = [bundle bundleIdentifier];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __34__SKFilesystem_isValidName_error___block_invoke;
        v14[3] = &unk_279D1F8B8;
        v16 = &v17;
        v11 = v7;
        v15 = v11;
        [mEMORY[0x277D07D38] validateVolumeName:nameCopy usingBundle:bundleIdentifier volumeID:0 replyHandler:v14];

        dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        if (error)
        {
          *error = v18[5];
        }

        v12 = v18[5] == 0;
      }

      else if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __34__SKFilesystem_isValidName_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end