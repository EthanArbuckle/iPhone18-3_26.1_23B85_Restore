@interface SKFilesystem
+ (BOOL)_shouldShowFilesystemWithType:(id)a3 key:(id)a4 personality:(id)a5;
+ (NSArray)allFilesystems;
+ (NSArray)extensionFilesystems;
+ (NSArray)installedFilesystems;
+ (NSMutableDictionary)cachedFilesystems;
+ (NSMutableDictionary)extensionFilesystemsMapping;
+ (NSMutableDictionary)installedFilesystemsMapping;
+ (id)_skfilesystemTypeWithPersonality:(id)a3;
+ (id)buildSpecialFilesystems;
+ (id)collectFilesystemsWithPersonalityMapping:(id)a3;
+ (id)fileSystems3rdPartyWithPersonalityKey:(id)a3 bundle:(id)a4 userVisibleName:(id)a5;
+ (id)fileSystemsAPFSWithPersonalityKey:(id)a3 bundle:(id)a4;
+ (id)fileSystemsHFSWithPersonalityKey:(id)a3 bundle:(id)a4 userVisibleName:(id)a5;
+ (id)filesystemsFromBundle:(id)a3;
+ (id)filesystemsWithBundle:(id)a3 filesystemPersonality:(id)a4 userVisibleName:(id)a5;
+ (id)getExtensionFilesystems;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExtension;
- (BOOL)isExtensionInsensitiveEqual:(id)a3;
- (BOOL)isValidName:(id)a3 error:(id *)a4;
- (SKFilesystem)initWithDictionaryRepresentation:(id)a3;
- (SKFilesystem)initWithSpecialFilesystem:(id)a3 majorType:(id)a4 localizedName:(id)a5;
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
  block[4] = a1;
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
  v2 = [a1 installedFilesystems];
  objc_sync_enter(v2);
  if (_extensionFilesystemsMapping && [_extensionFilesystemsMapping count])
  {
    v3 = _extensionFilesystemsMapping;
    objc_sync_exit(v2);
  }

  else
  {
    v4 = +[SKFilesystem getExtensionFilesystems];
    v5 = _extensionFilesystemsMapping;
    _extensionFilesystemsMapping = v4;

    objc_sync_exit(v2);
    v3 = _extensionFilesystemsMapping;
  }

  return v3;
}

+ (NSArray)extensionFilesystems
{
  v3 = [a1 installedFilesystems];
  objc_sync_enter(v3);
  if (_extensionFilesystems && [_extensionFilesystems count])
  {
    v4 = _extensionFilesystems;
    objc_sync_exit(v3);
  }

  else
  {
    v5 = [a1 extensionFilesystemsMapping];
    v6 = [SKFilesystem collectFilesystemsWithPersonalityMapping:v5];
    v7 = _extensionFilesystems;
    _extensionFilesystems = v6;

    objc_sync_exit(v3);
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
  block[4] = a1;
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

+ (id)collectFilesystemsWithPersonalityMapping:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v18 = [MEMORY[0x277D07D38] sharedInstance];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = objc_opt_new();
  if (v18)
  {
    v2 = dispatch_semaphore_create(0);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__SKFilesystem_getExtensionFilesystems__block_invoke;
    v24[3] = &unk_279D1F850;
    v26 = &v27;
    v3 = v2;
    v25 = v3;
    [v18 installedExtensionsSync:v24];
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
          v11 = [v10 infoDictionary];
          v12 = [v11 objectForKeyedSubscript:kExtensionAttributesKey];

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

- (SKFilesystem)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = SKFilesystem;
  v5 = [(SKFilesystem *)&v51 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"localizedKey"];

    if (v6)
    {
      v7 = [v4 objectForKey:@"localizedKey"];
      [(SKFilesystem *)v5 setLocalizedKey:v7];

      v8 = +[SKError frameworkBundle];
      v9 = [(SKFilesystem *)v5 localizedKey];
      v10 = [v8 localizedStringForKey:v9 value:&stru_287C8F598 table:0];
      [(SKFilesystem *)v5 setLocalizedName:v10];
    }

    else
    {
      v8 = [v4 objectForKey:@"localizedName"];
      [(SKFilesystem *)v5 setLocalizedName:v8];
    }

    v11 = [v4 objectForKey:@"type"];
    [(SKFilesystem *)v5 setType:v11];

    v12 = [v4 objectForKey:@"majorType"];
    [(SKFilesystem *)v5 setMajorType:v12];

    v13 = [v4 objectForKey:@"isEncrypted"];
    -[SKFilesystem setIsEncrypted:](v5, "setIsEncrypted:", [v13 BOOLValue]);

    v14 = [v4 objectForKey:@"defaultEffaceable"];
    -[SKFilesystem setDefaultEffaceable:](v5, "setDefaultEffaceable:", [v14 BOOLValue]);

    v15 = [v4 objectForKey:@"isCaseSensitive"];
    -[SKFilesystem setIsCaseSensitive:](v5, "setIsCaseSensitive:", [v15 BOOLValue]);

    v16 = [v4 objectForKey:@"isJournaled"];
    -[SKFilesystem setIsJournaled:](v5, "setIsJournaled:", [v16 BOOLValue]);

    v17 = [v4 objectForKey:@"shouldShow"];
    -[SKFilesystem setShouldShow:](v5, "setShouldShow:", [v17 BOOLValue]);

    v18 = [v4 objectForKey:@"dmPersonality"];
    [(SKFilesystem *)v5 setDmPersonality:v18];

    v19 = [v4 objectForKey:@"sortPriority"];
    -[SKFilesystem setSortPriority:](v5, "setSortPriority:", [v19 intValue]);

    v20 = [v4 objectForKey:@"minimumSize"];
    -[SKFilesystem setMinimumSize:](v5, "setMinimumSize:", [v20 unsignedLongLongValue]);

    v21 = [v4 objectForKey:@"unlocalizedName"];
    [(SKFilesystem *)v5 setUnlocalizedName:v21];

    v22 = [v4 objectForKey:@"unlocalizedEncryptedName"];
    [(SKFilesystem *)v5 setUnlocalizedEncryptedName:v22];

    v23 = [v4 objectForKey:@"contentMask"];
    [(SKFilesystem *)v5 setContentMask:v23];

    v24 = [v4 objectForKey:@"formatArgs"];
    formatArgs = v5->_formatArgs;
    v5->_formatArgs = v24;

    v26 = MEMORY[0x277CBEBC0];
    v27 = [v4 objectForKey:@"formatExecutable"];
    v28 = [v26 URLWithString:v27];
    formatExecutable = v5->_formatExecutable;
    v5->_formatExecutable = v28;

    v30 = [v4 objectForKey:@"repairArgs"];
    repairArgs = v5->_repairArgs;
    v5->_repairArgs = v30;

    v32 = MEMORY[0x277CBEBC0];
    v33 = [v4 objectForKey:@"repairExecutable"];
    v34 = [v32 URLWithString:v33];
    repairExecutable = v5->_repairExecutable;
    v5->_repairExecutable = v34;

    v36 = [v4 objectForKey:@"verificationArgs"];
    verificationArgs = v5->_verificationArgs;
    v5->_verificationArgs = v36;

    v38 = [v4 objectForKey:@"liveVerificationArgs"];
    liveVerificationArgs = v5->_liveVerificationArgs;
    v5->_liveVerificationArgs = v38;

    v40 = MEMORY[0x277CBEBC0];
    v41 = [v4 objectForKey:@"verificationExecutable"];
    v42 = [v40 URLWithString:v41];
    verificationExecutable = v5->_verificationExecutable;
    v5->_verificationExecutable = v42;

    v44 = [v4 objectForKey:@"xmlOutputArg"];
    xmlOutputArg = v5->_xmlOutputArg;
    v5->_xmlOutputArg = v44;

    v46 = MEMORY[0x277CCA8D8];
    v47 = [v4 objectForKey:@"bundle"];
    v48 = [v46 bundleWithPath:v47];
    bundle = v5->_bundle;
    v5->_bundle = v48;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  v4 = [(SKFilesystem *)self localizedName];

  if (v4)
  {
    v5 = [(SKFilesystem *)self localizedName];
    [v3 setObject:v5 forKey:@"localizedName"];
  }

  v6 = [(SKFilesystem *)self localizedKey];

  if (v6)
  {
    v7 = [(SKFilesystem *)self localizedKey];
    [v3 setObject:v7 forKey:@"localizedKey"];
  }

  v8 = [(SKFilesystem *)self type];
  [v3 setObject:v8 forKey:@"type"];

  v9 = [(SKFilesystem *)self majorType];

  if (v9)
  {
    v10 = [(SKFilesystem *)self majorType];
    [v3 setObject:v10 forKey:@"majorType"];
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

  v16 = [(SKFilesystem *)self dmPersonality];
  [v3 setObject:v16 forKey:@"dmPersonality"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[SKFilesystem sortPriority](self, "sortPriority")}];
  [v3 setObject:v17 forKey:@"sortPriority"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKFilesystem minimumSize](self, "minimumSize")}];
  [v3 setObject:v18 forKey:@"minimumSize"];

  v19 = [(SKFilesystem *)self unlocalizedName];
  [v3 setValue:v19 forKey:@"unlocalizedName"];

  v20 = [(SKFilesystem *)self unlocalizedEncryptedName];
  [v3 setValue:v20 forKey:@"unlocalizedEncryptedName"];

  v21 = [(SKFilesystem *)self contentMask];
  [v3 setValue:v21 forKey:@"contentMask"];

  v22 = [(SKFilesystem *)self formatArgs];
  [v3 setValue:v22 forKey:@"formatArgs"];

  v23 = [(SKFilesystem *)self formatExecutable];
  v24 = [v23 absoluteString];
  [v3 setValue:v24 forKey:@"formatExecutable"];

  v25 = [(SKFilesystem *)self repairArgs];
  [v3 setValue:v25 forKey:@"repairArgs"];

  v26 = [(SKFilesystem *)self repairExecutable];
  v27 = [v26 absoluteString];
  [v3 setValue:v27 forKey:@"repairExecutable"];

  v28 = [(SKFilesystem *)self verificationArgs];
  [v3 setValue:v28 forKey:@"verificationArgs"];

  v29 = [(SKFilesystem *)self liveVerificationArgs];
  [v3 setValue:v29 forKey:@"liveVerificationArgs"];

  v30 = [(SKFilesystem *)self verificationExecutable];
  v31 = [v30 absoluteString];
  [v3 setValue:v31 forKey:@"verificationExecutable"];

  v32 = [(SKFilesystem *)self xmlOutputArg];
  [v3 setValue:v32 forKey:@"xmlOutputArg"];

  v33 = [(SKFilesystem *)self bundle];
  v34 = [v33 bundlePath];
  [v3 setValue:v34 forKey:@"bundle"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SKFilesystem *)self localizedName];
  v5 = [(SKFilesystem *)self shouldShow];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"%@ - Show: %@", v4, v6];

  return v7;
}

- (BOOL)isExtensionInsensitiveEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(SKFilesystem *)self type];
    v7 = [v5 type];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(SKFilesystem *)self dmPersonality];
      v9 = [v5 dmPersonality];
      if ([v8 isEqualToString:v9] && (v10 = -[SKFilesystem isEncrypted](self, "isEncrypted"), v10 == objc_msgSend(v5, "isEncrypted")) && (v11 = -[SKFilesystem defaultEffaceable](self, "defaultEffaceable"), v11 == objc_msgSend(v5, "defaultEffaceable")) && (v12 = -[SKFilesystem isJournaled](self, "isJournaled"), v12 == objc_msgSend(v5, "isJournaled")))
      {
        v15 = [(SKFilesystem *)self isCaseSensitive];
        v13 = v15 ^ [v5 isCaseSensitive] ^ 1;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([(SKFilesystem *)self isExtensionInsensitiveEqual:v4])
  {
    v5 = [(SKFilesystem *)self isExtension];
    v6 = v5 ^ [v4 isExtension] ^ 1;
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

+ (id)fileSystemsHFSWithPersonalityKey:(id)a3 bundle:(id)a4 userVisibleName:(id)a5
{
  v73[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = getPersonalityDict(v8, v7);
  v11 = [v8 infoDictionary];
  v68 = [v11 objectForKey:*MEMORY[0x277CBED50]];
  v12 = [v68 componentsSeparatedByString:@"."];
  v13 = [v12 lastObject];

  CaseSensitive = getCaseSensitive(v10, v7);
  v67 = v13;
  if ([v7 isEqualToString:@"Journaled HFS+"])
  {
    v15 = [SKFilesystem alloc];
    v16 = v8;
    v17 = kSKDiskFileSystemHFS[0];
    v18 = +[SKError frameworkBundle];
    v19 = [v18 localizedStringForKey:@"HFS Generic" value:&stru_287C8F598 table:0];
    v20 = CaseSensitive;
    v21 = v19;
    LODWORD(v62) = 2;
    v22 = v17;
    v8 = v16;
    v23 = [(SKFilesystem *)v15 initWithSKFilesystem:v22 bundle:v16 localizedName:v19 localizedKey:@"HFS Generic" caseSensitive:v20 encrypted:0 personalityKey:v7 sortPriority:v62];

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

  else if ([v7 isEqualToString:@"Case-sensitive Journaled HFS+"])
  {
    v30 = [SKFilesystem alloc];
    v31 = CaseSensitive;
    v32 = kSKDiskFileSystemHFS[0];
    v64 = v10;
    v33 = +[SKError frameworkBundle];
    [v33 localizedStringForKey:@"HFS Case-sensitive" value:&stru_287C8F598 table:0];
    v35 = v34 = v8;
    LODWORD(v62) = 4;
    v23 = [(SKFilesystem *)v30 initWithSKFilesystem:v32 bundle:v34 localizedName:v35 localizedKey:@"HFS Case-sensitive" caseSensitive:v31 encrypted:0 personalityKey:v7 sortPriority:v62];

    v8 = v34;
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

  else if ([v7 isEqualToString:@"HFS+"])
  {
    v39 = [SKFilesystem alloc];
    [SKFilesystem _skfilesystemTypeWithPersonality:v7];
    v41 = v40 = CaseSensitive;
    +[SKError frameworkBundle];
    v42 = v65 = v9;
    [v42 localizedStringForKey:@"HFS Not Journaled" value:&stru_287C8F598 table:0];
    v44 = v43 = v8;
    LODWORD(v62) = 8;
    v23 = [(SKFilesystem *)v39 initWithSKFilesystem:v41 bundle:v43 localizedName:v44 localizedKey:@"HFS Not Journaled" caseSensitive:v40 encrypted:0 personalityKey:v7 sortPriority:v62];

    v8 = v43;
    v45 = [SKFilesystem alloc];
    v46 = +[SKError frameworkBundle];
    v47 = [v46 localizedStringForKey:@"HFS Not Journaled Encrypted" value:&stru_287C8F598 table:0];
    v27 = [(SKFilesystem *)v45 initEncryptedFSWithUnencryptedFS:v23 localizedName:v47 sortPriority:8];

    v9 = v65;
    v71[0] = v23;
    v71[1] = v27;
    v28 = MEMORY[0x277CBEA60];
    v29 = v71;
  }

  else
  {
    if (![v7 isEqualToString:@"Case-sensitive HFS+"])
    {
      if ([SKFilesystem _shouldShowFilesystemWithType:v13 key:v7 personality:v10])
      {
        v59 = 6;
      }

      else
      {
        v59 = 8;
      }

      v60 = [SKFilesystem alloc];
      v61 = [SKFilesystem _skfilesystemTypeWithPersonality:v7];
      LODWORD(v62) = v59;
      v23 = [(SKFilesystem *)v60 initWithSKFilesystem:v61 bundle:v8 localizedName:v9 localizedKey:0 caseSensitive:0 encrypted:0 personalityKey:v7 sortPriority:v62];

      v69 = v23;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
      goto LABEL_10;
    }

    v63 = [SKFilesystem alloc];
    [SKFilesystem _skfilesystemTypeWithPersonality:v7];
    v49 = v48 = CaseSensitive;
    +[SKError frameworkBundle];
    v50 = v66 = v9;
    [v50 localizedStringForKey:@"HFS Case-sensitive Not Journaled" value:&stru_287C8F598 table:0];
    v52 = v51 = v8;
    LODWORD(v62) = 8;
    v23 = [(SKFilesystem *)v63 initWithSKFilesystem:v49 bundle:v51 localizedName:v52 localizedKey:@"HFS Case-sensitive Not Journaled" caseSensitive:v48 encrypted:0 personalityKey:v7 sortPriority:v62];

    v8 = v51;
    v53 = [SKFilesystem alloc];
    v54 = +[SKError frameworkBundle];
    v55 = [v54 localizedStringForKey:@"HFS Case-sensitive Not Journaled Encrypted" value:&stru_287C8F598 table:0];
    v27 = [(SKFilesystem *)v53 initEncryptedFSWithUnencryptedFS:v23 localizedName:v55 sortPriority:8];

    v9 = v66;
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

+ (id)fileSystemsAPFSWithPersonalityKey:(id)a3 bundle:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v25 = getPersonalityDict(v5, v6);
  CaseSensitive = getCaseSensitive(v25, v6);
  v7 = [SKFilesystem alloc];
  v8 = kSKDiskFileSystemAPFS[0];
  v9 = +[SKError frameworkBundle];
  v10 = [v9 localizedStringForKey:@"APFS" value:&stru_287C8F598 table:0];
  LODWORD(v23) = 1;
  v11 = [(SKFilesystem *)v7 initWithSKFilesystem:v8 bundle:v5 localizedName:v10 localizedKey:@"APFS" encrypted:0 personalityKey:v6 sortPriority:v23];

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

+ (id)fileSystems3rdPartyWithPersonalityKey:(id)a3 bundle:(id)a4 userVisibleName:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = getPersonalityDict(v8, v9);
  v11 = [v8 infoDictionary];
  v12 = [v11 objectForKey:*MEMORY[0x277CBED50]];
  v13 = [v12 componentsSeparatedByString:@"."];
  v14 = [v13 lastObject];

  if ([SKFilesystem _shouldShowFilesystemWithType:v14 key:v9 personality:v10])
  {
    v15 = 7;
  }

  else
  {
    v15 = 9;
  }

  v16 = [SKFilesystem alloc];
  v17 = [SKFilesystem _skfilesystemTypeWithPersonality:v9];
  LODWORD(v22) = v15;
  v18 = [(SKFilesystem *)v16 initWithSKFilesystem:v17 bundle:v8 localizedName:v7 localizedKey:0 encrypted:0 personalityKey:v9 sortPriority:v22];

  v23[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)filesystemsWithBundle:(id)a3 filesystemPersonality:(id)a4 userVisibleName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 infoDictionary];
  v12 = [v11 objectForKey:*MEMORY[0x277CBED50]];
  v13 = [v12 componentsSeparatedByString:@"."];
  v14 = [v13 lastObject];

  if ([v14 isEqualToString:@"hfs"])
  {
    v15 = [a1 fileSystemsHFSWithPersonalityKey:v9 bundle:v8 userVisibleName:v10];
  }

  else
  {
    if ([v14 isEqualToString:@"apfs"])
    {
      [a1 fileSystemsAPFSWithPersonalityKey:v9 bundle:v8];
    }

    else
    {
      [a1 fileSystems3rdPartyWithPersonalityKey:v9 bundle:v8 userVisibleName:v10];
    }
    v15 = ;
  }

  v16 = v15;

  return v16;
}

- (SKFilesystem)initWithSpecialFilesystem:(id)a3 majorType:(id)a4 localizedName:(id)a5
{
  v18[8] = *MEMORY[0x277D85DE8];
  v17[0] = @"type";
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [SKFilesystem _skfilesystemTypeWithPersonality:v10];
  v18[0] = v11;
  v18[1] = v9;
  v17[1] = @"majorType";
  v17[2] = @"localizedName";
  v18[2] = v8;
  v18[3] = MEMORY[0x277CBEC28];
  v17[3] = @"isCaseSensitive";
  v17[4] = @"isEncrypted";
  v18[4] = MEMORY[0x277CBEC28];
  v18[5] = MEMORY[0x277CBEC28];
  v17[5] = @"shouldShow";
  v17[6] = @"dmPersonality";
  v18[6] = v10;
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

+ (id)filesystemsFromBundle:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = v3;
  v4 = [v3 infoDictionary];
  v5 = [v4 objectForKeyedSubscript:kExtensionAttributesKey];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:kExtensionAttributesKey];

    v4 = v6;
  }

  v22 = v4;
  v7 = [v4 objectForKeyedSubscript:@"FSPersonalities"];
  v8 = [v3 objectForInfoDictionaryKey:@"FSPersonalities"];
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
        [v23 addObjectsFromArray:v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_skfilesystemTypeWithPersonality:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"kSKDiskFileSystem_%@", v3];

  return v4;
}

+ (BOOL)_shouldShowFilesystemWithType:(id)a3 key:(id)a4 personality:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:@"FSServerOnly"];
  v11 = NSNumberToBool(v10);

  if (v11 && (v12 = _CFCopyServerVersionDictionary(), v12, !v12))
  {
  }

  else
  {
    v13 = [v9 objectForKeyedSubscript:@"FSFormatExecutable"];

    if (v13)
    {
      goto LABEL_4;
    }
  }

  v15 = [v9 objectForKeyedSubscript:@"FSFormatInteractive"];
  if ((isValidNSNumber(v15) & 1) == 0)
  {

LABEL_14:
    LOBYTE(v14) = 0;
    goto LABEL_15;
  }

  v16 = [v15 BOOLValue];

  if (v16)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ([v7 isEqualToString:@"hfs"] && !objc_msgSend(v8, "containsString:", @"Journaled") || objc_msgSend(v7, "isEqualToString:", @"msdos") && !objc_msgSend(v8, "isEqualToString:", @"MS-DOS"))
  {
    goto LABEL_14;
  }

  v14 = [v7 isEqualToString:@"udf"] ^ 1;
LABEL_15:

  return v14;
}

- (BOOL)isExtension
{
  v2 = [(SKFilesystem *)self bundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKeyedSubscript:kExtensionAttributesKey];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isValidName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (v6 && [v6 length])
  {
    if ([(SKFilesystem *)self isExtension])
    {
      v8 = [MEMORY[0x277D07D38] sharedInstance];
      if (v8)
      {
        v9 = [(SKFilesystem *)self bundle];
        v10 = [v9 bundleIdentifier];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __34__SKFilesystem_isValidName_error___block_invoke;
        v14[3] = &unk_279D1F8B8;
        v16 = &v17;
        v11 = v7;
        v15 = v11;
        [v8 validateVolumeName:v6 usingBundle:v10 volumeID:0 replyHandler:v14];

        dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        if (a4)
        {
          *a4 = v18[5];
        }

        v12 = v18[5] == 0;
      }

      else if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        *a4 = v12 = 0;
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

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    *a4 = v12 = 0;
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