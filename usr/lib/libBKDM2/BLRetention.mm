@interface BLRetention
+ (id)retentionPolicyTypes;
+ (unint64_t)stripSequenceAtPath:(id)path;
+ (void)applyCustomerPolicyForType:(id)type withSequenceDirs:(id)dirs withSize:(unint64_t *)size;
+ (void)applyCustomerPolicyWithPath:(id)path;
+ (void)applyPolicyForType:(id)type withSequenceDirs:(id)dirs withSize:(unint64_t *)size;
+ (void)applyPolicyWithPath:(id)path sizeLimit:(unint64_t)limit freeMissingSpace:(unint64_t)space;
+ (void)applyPolicyWithPath:(id)path sizeLimit:(unint64_t)limit freeSpaceLimit:(unint64_t)spaceLimit;
+ (void)initialize;
+ (void)limitSequenceDirs:(id)dirs withSize:(unint64_t *)size;
+ (void)limitSequenceDirs:(id)dirs withSize:(unint64_t *)size removalMethod:(id)method;
+ (void)limitSequenceDirs:(id)dirs withSize:(unint64_t *)size toCount:(unint64_t)count withReplaceInterval:(double)interval removalMethod:(id)method;
+ (void)removeItemAtPath:(id)path;
+ (void)setPurgeableAtPath:(id)path directory:(BOOL)directory;
+ (void)setRetentionType:(id)type atPath:(id)path;
@end

@implementation BLRetention

+ (void)initialize
{
  v2 = os_log_create("com.apple.BiometricKit", "BioLog-Retention");
  v3 = __osLog_BioLog_Retention;
  __osLog_BioLog_Retention = v2;

  v4 = __osLog_BioLog_Retention;
  if (!__osLog_BioLog_Retention)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      +[BLRetention initialize];
    }

    v4 = __osLog_BioLog_Retention;
  }

  objc_storeStrong(&__osLogTrace_BioLog_Retention, v4);
}

+ (void)applyPolicyForType:(id)type withSequenceDirs:(id)dirs withSize:(unint64_t *)size
{
  typeCopy = type;
  dirsCopy = dirs;
  if (([typeCopy isEqualToString:@"rp_none"] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"rp_enroll") & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"rp_noface"])
    {
      v10 = objc_opt_class();
      v20 = MEMORY[0x29EDCA5F8];
      v21 = 3221225472;
      v22 = __60__BLRetention_applyPolicyForType_withSequenceDirs_withSize___block_invoke;
      v23 = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
      selfCopy = self;
      v11 = &v20;
      v12 = dirsCopy;
      sizeCopy2 = size;
      v14 = 100;
    }

    else
    {
      if (![typeCopy isEqualToString:@"rp_nomatch"])
      {
        [typeCopy isEqualToString:@"rp_update"];
        goto LABEL_9;
      }

      v10 = objc_opt_class();
      v15 = MEMORY[0x29EDCA5F8];
      v16 = 3221225472;
      v17 = __60__BLRetention_applyPolicyForType_withSequenceDirs_withSize___block_invoke_2;
      v18 = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
      selfCopy2 = self;
      v11 = &v15;
      v12 = dirsCopy;
      sizeCopy2 = size;
      v14 = 40;
    }

    [v10 limitSequenceDirs:v12 withSize:sizeCopy2 toCount:v14 keepNewest:1 removalMethod:{v11, v15, v16, v17, v18, selfCopy2, v20, v21, v22, v23, selfCopy}];
  }

LABEL_9:
}

uint64_t __60__BLRetention_applyPolicyForType_withSequenceDirs_withSize___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 objectAtIndexedSubscript:0];
  [v4 removeItemAtPath:v5];

  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

uint64_t __60__BLRetention_applyPolicyForType_withSequenceDirs_withSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 stripSequenceAtPath:v6];

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v4 objectAtIndexedSubscript:0];

  [v9 setRetentionType:@"rp_keep" atPath:v10];
  return v7;
}

+ (void)applyCustomerPolicyForType:(id)type withSequenceDirs:(id)dirs withSize:(unint64_t *)size
{
  typeCopy = type;
  dirsCopy = dirs;
  if ([typeCopy isEqualToString:@"rp_enroll"])
  {
    v10 = objc_opt_class();
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 3221225472;
    v32[2] = __68__BLRetention_applyCustomerPolicyForType_withSequenceDirs_withSize___block_invoke;
    v32[3] = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
    v32[4] = self;
    v11 = v32;
    v12 = dirsCopy;
    sizeCopy4 = size;
    v14 = 3;
    v15 = 1;
  }

  else
  {
    if (![typeCopy isEqualToString:@"rp_canceled"])
    {
      if ([typeCopy isEqualToString:@"rp_anyfailure"])
      {
        v16 = objc_opt_class();
        v26 = MEMORY[0x29EDCA5F8];
        v27 = 3221225472;
        v28 = __68__BLRetention_applyCustomerPolicyForType_withSequenceDirs_withSize___block_invoke_3;
        v29 = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
        selfCopy = self;
        v17 = &v26;
        v18 = dirsCopy;
        sizeCopy3 = size;
        v20 = 30;
      }

      else
      {
        if (![typeCopy isEqualToString:@"rp_anysuccess"])
        {
          goto LABEL_6;
        }

        v16 = objc_opt_class();
        v21 = MEMORY[0x29EDCA5F8];
        v22 = 3221225472;
        v23 = __68__BLRetention_applyCustomerPolicyForType_withSequenceDirs_withSize___block_invoke_4;
        v24 = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
        selfCopy2 = self;
        v17 = &v21;
        v18 = dirsCopy;
        sizeCopy3 = size;
        v20 = 10;
      }

      [v16 limitSequenceDirs:v18 withSize:sizeCopy3 toCount:v20 withReplaceInterval:v17 removalMethod:{14400.0, v21, v22, v23, v24, selfCopy2, v26, v27, v28, v29, selfCopy}];
      goto LABEL_6;
    }

    v10 = objc_opt_class();
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 3221225472;
    v31[2] = __68__BLRetention_applyCustomerPolicyForType_withSequenceDirs_withSize___block_invoke_2;
    v31[3] = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
    v31[4] = self;
    v11 = v31;
    v12 = dirsCopy;
    sizeCopy4 = size;
    v14 = 10;
    v15 = 0;
  }

  [v10 limitSequenceDirs:v12 withSize:sizeCopy4 toCount:v14 keepNewest:v15 removalMethod:v11];
LABEL_6:
}

uint64_t __68__BLRetention_applyCustomerPolicyForType_withSequenceDirs_withSize___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 objectAtIndexedSubscript:0];
  [v4 removeItemAtPath:v5];

  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

uint64_t __68__BLRetention_applyCustomerPolicyForType_withSequenceDirs_withSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 stripSequenceAtPath:v6];

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v4 objectAtIndexedSubscript:0];

  [v9 setRetentionType:@"rp_keep" atPath:v10];
  return v7;
}

uint64_t __68__BLRetention_applyCustomerPolicyForType_withSequenceDirs_withSize___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 stripSequenceAtPath:v6];

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v4 objectAtIndexedSubscript:0];

  [v9 setRetentionType:@"rp_keep" atPath:v10];
  return v7;
}

uint64_t __68__BLRetention_applyCustomerPolicyForType_withSequenceDirs_withSize___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 stripSequenceAtPath:v6];

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v4 objectAtIndexedSubscript:0];

  [v9 setRetentionType:@"rp_keep" atPath:v10];
  return v7;
}

+ (id)retentionPolicyTypes
{
  if (retentionPolicyTypes_onceToken != -1)
  {
    +[BLRetention retentionPolicyTypes];
  }

  v3 = retentionPolicyTypes_types;

  return v3;
}

void __35__BLRetention_retentionPolicyTypes__block_invoke()
{
  v0 = retentionPolicyTypes_types;
  retentionPolicyTypes_types = &unk_2A1E03B08;
}

+ (void)applyPolicyWithPath:(id)path sizeLimit:(unint64_t)limit freeSpaceLimit:(unint64_t)spaceLimit
{
  v49 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  if (applyPolicyWithPath_sizeLimit_freeSpaceLimit__oldBioLogExists != 1)
  {
    goto LABEL_12;
  }

  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v10 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Logs/BioLog"];
  applyPolicyWithPath_sizeLimit_freeSpaceLimit__oldBioLogExists = v10;

  if (!v10)
  {
    goto LABEL_12;
  }

  defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
  applyPolicyWithPath_sizeLimit_freeSpaceLimit__oldBioLogExists = [defaultManager2 removeItemAtPath:@"/var/mobile/Library/Logs/BioLog" error:0] ^ 1;

  v12 = applyPolicyWithPath_sizeLimit_freeSpaceLimit__oldBioLogExists;
  if (__osLog_BioLog_Retention)
  {
    v13 = __osLog_BioLog_Retention;
  }

  else
  {
    v13 = MEMORY[0x29EDCA988];
  }

  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (v12 == 1)
  {
    if (!v14)
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v42 = @"/var/mobile/Library/Logs/BioLog";
    v15 = "%@ still exists!\n";
  }

  else
  {
    if (!v14)
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v42 = @"/var/mobile/Library/Logs/BioLog";
    v15 = "%@ was successfuly removed!\n";
  }

  _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
LABEL_12:
  if (limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = 5120;
  }

  if (spaceLimit)
  {
    spaceLimitCopy = spaceLimit;
  }

  else
  {
    spaceLimitCopy = 5120;
  }

  v18 = &biolog_cert_pem[984];
  if (spaceLimitCopy > 1)
  {
    defaultManager3 = [MEMORY[0x29EDB9FB8] defaultManager];
    v40 = 0;
    v20 = [defaultManager3 attributesOfFileSystemForPath:pathCopy error:&v40];
    v21 = v40;

    v22 = [v20 objectForKeyedSubscript:*MEMORY[0x29EDB9E98]];
    v23 = v22;
    if (v22)
    {
      v38 = v21;
      selfCopy = self;
      v24 = [v22 unsignedIntegerValue] >> 20;
      v25 = MEMORY[0x29EDCA988];
      if (__osLog_BioLog_Retention)
      {
        v26 = __osLog_BioLog_Retention;
      }

      else
      {
        v26 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        v42 = applyPolicyWithPath_sizeLimit_freeSpaceLimit__lastSizeLimit;
        v43 = 2048;
        v44 = limitCopy;
        v45 = 2048;
        v46 = spaceLimitCopy;
        v47 = 2048;
        v48 = v24;
        _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_DEFAULT, "Retention policy lastSizeLimit:%lu, newSizeLimit:%lu, freeSpaceLimit:%lu, freeSpace:%lu\n", buf, 0x2Au);
      }

      v27 = (v24 - spaceLimitCopy);
      if (v24 < spaceLimitCopy)
      {
        v28 = spaceLimitCopy - v24;
        if (applyPolicyWithPath_sizeLimit_freeSpaceLimit__lastSizeLimit >= limitCopy)
        {
          if (limitCopy <= v28)
          {
LABEL_49:
            if (__osLog_BioLog_Retention)
            {
              v35 = __osLog_BioLog_Retention;
            }

            else
            {
              v35 = v25;
            }

            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218496;
              v42 = (spaceLimitCopy - v24);
              v43 = 2048;
              v44 = spaceLimitCopy;
              v45 = 1024;
              LODWORD(v46) = 500;
              _os_log_impl(&dword_296CA4000, v35, OS_LOG_TYPE_DEFAULT, "Missing disk space %luMB of free space limit %luMB under minimal log size %dMB, removing entire BioLog...\n", buf, 0x1Cu);
            }

            self = selfCopy;
            [selfCopy removeItemAtPath:pathCopy];
            limitCopy = 0;
            goto LABEL_55;
          }
        }

        else
        {
          limitCopy = applyPolicyWithPath_sizeLimit_freeSpaceLimit__lastSizeLimit;
          if (applyPolicyWithPath_sizeLimit_freeSpaceLimit__lastSizeLimit <= v28)
          {
            goto LABEL_49;
          }
        }

        limitCopy -= v28;
        if (limitCopy <= 0x1F3)
        {
          goto LABEL_49;
        }

        if (__osLog_BioLog_Retention)
        {
          v37 = __osLog_BioLog_Retention;
        }

        else
        {
          v37 = v25;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v42 = v24;
          v43 = 2048;
          v44 = spaceLimitCopy;
          v45 = 2048;
          v46 = limitCopy;
          _os_log_impl(&dword_296CA4000, v37, OS_LOG_TYPE_DEFAULT, "Free disk space %luMB under %luMB limit, new size limit %luMB.\n", buf, 0x20u);
        }

LABEL_46:
        self = selfCopy;
LABEL_55:
        v18 = &biolog_cert_pem[984];
        v21 = v38;
        goto LABEL_56;
      }

      if (applyPolicyWithPath_sizeLimit_freeSpaceLimit__lastSizeLimit >= limitCopy || (v32 = v27 + applyPolicyWithPath_sizeLimit_freeSpaceLimit__lastSizeLimit, limitCopy <= v27 + applyPolicyWithPath_sizeLimit_freeSpaceLimit__lastSizeLimit))
      {
        v28 = 0;
        goto LABEL_46;
      }

      if (__osLog_BioLog_Retention)
      {
        v33 = __osLog_BioLog_Retention;
      }

      else
      {
        v33 = v25;
      }

      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v32 >= 0x1F5)
      {
        self = selfCopy;
        if (v34)
        {
          *buf = 134218496;
          v42 = v24;
          v43 = 2048;
          v44 = spaceLimitCopy;
          v45 = 2048;
          v46 = v32;
          _os_log_impl(&dword_296CA4000, v33, OS_LOG_TYPE_DEFAULT, "Free disk space %luMB over %luMB limit, new size limit %luMB.\n", buf, 0x20u);
        }

        v28 = 0;
        limitCopy = v32;
        goto LABEL_55;
      }

      v21 = v38;
      self = selfCopy;
      if (v34)
      {
        *buf = 134218496;
        v42 = v27;
        v43 = 2048;
        v44 = spaceLimitCopy;
        v45 = 1024;
        LODWORD(v46) = 500;
        _os_log_impl(&dword_296CA4000, v33, OS_LOG_TYPE_DEFAULT, "Available disk space %luMB on top of free space limit %luMB under minimal log size %dMB, removing BioLog...\n", buf, 0x1Cu);
      }

      [selfCopy removeItemAtPath:pathCopy];
      v28 = 0;
      limitCopy = 0;
      v18 = biolog_cert_pem + 984;
    }

    else
    {
      if (__osLog_BioLog_Retention)
      {
        v29 = __osLog_BioLog_Retention;
      }

      else
      {
        v29 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        localizedDescription = [v21 localizedDescription];
        *buf = 138412290;
        v42 = localizedDescription;
        _os_log_impl(&dword_296CA4000, v30, OS_LOG_TYPE_ERROR, "Warning: Could not get free disk space! Free space unrelated. %@\n", buf, 0xCu);
      }

      v28 = 0;
    }

LABEL_56:

    *(v18 + 83) = limitCopy;
    if (!limitCopy)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v28 = 0;
  applyPolicyWithPath_sizeLimit_freeSpaceLimit__lastSizeLimit = limitCopy;
LABEL_57:
  [self applyPolicyWithPath:pathCopy sizeLimit:limitCopy << 20 freeMissingSpace:v28 << 20];
  if (v28)
  {
    *(v18 + 83) = __retentionSizeLimit >> 20;
  }

LABEL_59:

  v36 = *MEMORY[0x29EDCA608];
}

+ (void)applyPolicyWithPath:(id)path sizeLimit:(unint64_t)limit freeMissingSpace:(unint64_t)space
{
  v152 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  if (__osLog_BioLog_Retention)
  {
    v7 = __osLog_BioLog_Retention;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEFAULT, "Applying retention policy...\n", buf, 2u);
  }

  date = [MEMORY[0x29EDB8DB0] date];
  v8 = 0x29EDB8000uLL;
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
  v140 = 0;
  __retentionSizeLimit = limit;
  v11 = opendir([pathCopy cStringUsingEncoding:1]);
  if (!v11)
  {
    v16 = 0;
    goto LABEL_128;
  }

  v12 = v11;
  v13 = readdir(v11);
  v120 = dictionary;
  v127 = dictionary2;
  if (!v13)
  {
    v16 = 0;
    goto LABEL_75;
  }

  v15 = v13;
  v16 = 0;
  *&v14 = 134217984;
  v111 = v14;
  v113 = v12;
  do
  {
    if (v15->d_type != 4)
    {
      goto LABEL_15;
    }

    v17 = objc_autoreleasePoolPush();
    if (v15->d_name[0] == 46 && (!v15->d_name[1] || v15->d_name[1] == 46 && !v15->d_name[2]))
    {
      goto LABEL_14;
    }

    v18 = [MEMORY[0x29EDBA0F8] stringWithCString:v15->d_name encoding:{1, v111}];
    v19 = [pathCopy stringByAppendingPathComponent:v18];

    v20 = opendir([v19 cStringUsingEncoding:1]);
    if (!v20)
    {
      goto LABEL_72;
    }

    v21 = dictionary;
    v22 = v20;
    v23 = readdir(v20);
    if (!v23)
    {
      closedir(v22);
      dictionary = v21;
      goto LABEL_66;
    }

    v24 = v23;
    v126 = v22;
    v119 = 0;
    dictionary = v21;
    spaceCopy = space;
    v112 = v19;
    while (1)
    {
      if (v24->d_type == 4 && (v24->d_name[0] != 46 || v24->d_name[1] && (v24->d_name[1] != 46 || v24->d_name[2])))
      {
        ++v119;
        if (strstr(v24->d_name, ".seq") || strstr(v24->d_name, ".evt"))
        {
          break;
        }
      }

LABEL_25:
      v24 = readdir(v126);
      if (!v24)
      {
        goto LABEL_65;
      }
    }

    v117 = v16;
    context = objc_autoreleasePoolPush();
    v25 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v24->d_name];
    v26 = [v19 stringByAppendingPathComponent:v25];

    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    v121 = [defaultManager attributesOfItemAtPath:v26 error:0];

    __directorySize = 0;
    if (!ftw([v26 cStringUsingEncoding:1], addDirectoryEntrySize, 1))
    {
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      retentionPolicyTypes = [objc_opt_class() retentionPolicyTypes];
      v29 = [retentionPolicyTypes countByEnumeratingWithState:&v136 objects:v151 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v137;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v137 != v31)
            {
              objc_enumerationMutation(retentionPolicyTypes);
            }

            v33 = *(*(&v136 + 1) + 8 * i);
            v34 = [v26 stringByAppendingPathComponent:v33];
            defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
            v36 = [defaultManager2 fileExistsAtPath:v34];

            if (v36)
            {
              v37 = v33;

              goto LABEL_40;
            }
          }

          v30 = [retentionPolicyTypes countByEnumeratingWithState:&v136 objects:v151 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

        v37 = @"rp_none";
LABEL_40:
        dictionary = v120;
        v8 = 0x29EDB8000;
        space = spaceCopy;
      }

      else
      {
        v37 = @"rp_none";
      }

      fileModificationDate = [v121 fileModificationDate];
      [fileModificationDate timeIntervalSinceNow];
      v114 = v37;
      if (v39 <= -21600.0)
      {
      }

      else
      {
        v40 = [(__CFString *)v37 isEqualToString:@"rp_keep"];

        if ((v40 & 1) == 0)
        {
          v150[0] = v26;
          v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:__directorySize];
          v150[1] = v41;
          v42 = [MEMORY[0x29EDB8D80] arrayWithObjects:v150 count:2];
          v43 = MEMORY[0x29EDBA070];
          [v121 fileModificationDate];
          fileModificationDate3 = v44 = dictionary;
          [fileModificationDate3 timeIntervalSince1970];
          fileModificationDate2 = [v43 numberWithDouble:?];
          [v44 setObject:v42 forKeyedSubscript:fileModificationDate2];
LABEL_50:

          v56 = __directorySize;
          v140 += __directorySize;
          dictionary = v120;
          v19 = v112;
          if (v140 > __retentionSizeLimit)
          {
            if (__osLog_BioLog_Retention)
            {
              v57 = __osLog_BioLog_Retention;
            }

            else
            {
              v57 = MEMORY[0x29EDCA988];
            }

            v58 = v127;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v59 = v57;
              v60 = [v127 objectForKeyedSubscript:@"rp_none"];
              v61 = [v60 count];
              *buf = v111;
              v143 = v61;
              _os_log_impl(&dword_296CA4000, v59, OS_LOG_TYPE_DEFAULT, "Limiting on the fly, count %lu ...\n", buf, 0xCu);

              v58 = v127;
            }

            v62 = objc_opt_class();
            v63 = [v58 objectForKeyedSubscript:@"rp_none"];
            v135[0] = MEMORY[0x29EDCA5F8];
            v135[1] = 3221225472;
            v135[2] = __62__BLRetention_applyPolicyWithPath_sizeLimit_freeMissingSpace___block_invoke;
            v135[3] = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
            v135[4] = self;
            [v62 limitSequenceDirs:v63 withSize:&v140 removalMethod:v135];
          }

          v16 = v56 + v117;
          objc_autoreleasePoolPop(context);
          dictionary2 = v127;
          v8 = 0x29EDB8000;
          v12 = v113;
          goto LABEL_25;
        }
      }

      v47 = [v127 objectForKeyedSubscript:v37];

      if (v47)
      {
        v148[0] = v26;
        v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:__directorySize];
        v148[1] = v41;
        v148[2] = v37;
        v42 = [MEMORY[0x29EDB8D80] arrayWithObjects:v148 count:3];
        fileModificationDate3 = [v127 objectForKeyedSubscript:v37];
        v48 = MEMORY[0x29EDBA070];
        fileModificationDate2 = [v121 fileModificationDate];
        [fileModificationDate2 timeIntervalSince1970];
        v49 = [v48 numberWithDouble:?];
        v50 = fileModificationDate3;
        v51 = v42;
        v52 = v49;
      }

      else
      {
        v53 = v37;
        v54 = *(v8 + 3584);
        v149[0] = v26;
        v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:__directorySize];
        v149[1] = v41;
        v42 = [MEMORY[0x29EDB8D80] arrayWithObjects:v149 count:2];
        v55 = MEMORY[0x29EDBA070];
        fileModificationDate3 = [v121 fileModificationDate];
        [fileModificationDate3 timeIntervalSince1970];
        fileModificationDate2 = [v55 numberWithDouble:?];
        v49 = [v54 dictionaryWithObject:v42 forKey:fileModificationDate2];
        v50 = v127;
        v51 = v49;
        v52 = v53;
      }

      [v50 setObject:v51 forKeyedSubscript:v52];

      space = spaceCopy;
      goto LABEL_50;
    }

    if (__osLog_BioLog_Retention)
    {
      v64 = __osLog_BioLog_Retention;
    }

    else
    {
      v64 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v143 = v26;
      _os_log_impl(&dword_296CA4000, v64, OS_LOG_TYPE_ERROR, "applyPolicyWithPath: Cannot count file sizes for sequence %@\n", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
    v16 = v117;
LABEL_65:
    closedir(v126);
    if (!v119)
    {
LABEL_66:
      if (__osLog_BioLog_Retention)
      {
        v65 = __osLog_BioLog_Retention;
      }

      else
      {
        v65 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v143 = v19;
        _os_log_impl(&dword_296CA4000, v65, OS_LOG_TYPE_DEFAULT, "Removing empty log %@ ...\n", buf, 0xCu);
      }

      [objc_opt_class() removeItemAtPath:v19];
    }

LABEL_72:

LABEL_14:
    objc_autoreleasePoolPop(v17);
LABEL_15:
    v15 = readdir(v12);
  }

  while (v15);
LABEL_75:
  closedir(v12);
  if (v16 - v140 < space)
  {
    if (v16 <= space + 500)
    {
      __retentionSizeLimit = 0;
      if (__osLog_BioLog_Retention)
      {
        v67 = __osLog_BioLog_Retention;
      }

      else
      {
        v67 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v143 = space >> 20;
        v144 = 2048;
        v145 = v16 - 500;
        _os_log_impl(&dword_296CA4000, v67, OS_LOG_TYPE_DEFAULT, "Missing disk space %luMB over removable log size %ldMB, removing BioLog...\n", buf, 0x16u);
      }

      [self removeItemAtPath:{pathCopy, v111}];
      v140 = 0;
    }

    else
    {
      __retentionSizeLimit = v16 - space;
      if (__osLog_BioLog_Retention)
      {
        v66 = __osLog_BioLog_Retention;
      }

      else
      {
        v66 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v143 = v140 >> 20;
        v144 = 2048;
        v145 = space >> 20;
        v146 = 2048;
        v147 = __retentionSizeLimit >> 20;
        _os_log_impl(&dword_296CA4000, v66, OS_LOG_TYPE_DEFAULT, "Log size %luMB over free space limit by %luMB, new size limit %luMB\n", buf, 0x20u);
      }
    }
  }

  if (__retentionSizeLimit)
  {
    v68 = __retentionSizeLimit;
    v69 = __retentionSizeLimit / 0x4600000uLL;
    [dictionary2 objectForKeyedSubscript:@"rp_keep"];
    v71 = v70 = v16;
    v72 = [v71 count];

    v16 = v70;
    v73 = v72 > v69;
    dictionary2 = v127;
    if (v73)
    {
      if (__osLog_BioLog_Retention)
      {
        v74 = __osLog_BioLog_Retention;
      }

      else
      {
        v74 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v75 = v74;
        v76 = [v127 objectForKeyedSubscript:@"rp_keep"];
        v77 = [v76 count];
        *buf = 136315650;
        v143 = "rp_keep";
        v144 = 2048;
        v145 = v77;
        v146 = 2048;
        v147 = v68 / 0x4600000;
        _os_log_impl(&dword_296CA4000, v75, OS_LOG_TYPE_DEFAULT, "Limiting %s, count %lu to %lu ...\n", buf, 0x20u);

        dictionary2 = v127;
      }

      v78 = objc_opt_class();
      v79 = [dictionary2 objectForKeyedSubscript:@"rp_keep"];
      v134[0] = MEMORY[0x29EDCA5F8];
      v134[1] = 3221225472;
      v134[2] = __62__BLRetention_applyPolicyWithPath_sizeLimit_freeMissingSpace___block_invoke_48;
      v134[3] = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
      v134[4] = self;
      [v78 limitSequenceDirs:v79 withSize:&v140 toCount:v68 / 0x4600000 keepNewest:1 removalMethod:v134];

      dictionary2 = v127;
      v16 = v70;
    }
  }

  dictionary3 = [*(v8 + 3584) dictionary];
  v81 = [dictionary2 objectForKeyedSubscript:@"rp_noface"];

  if (v81)
  {
    v82 = [dictionary2 objectForKeyedSubscript:@"rp_noface"];
    [dictionary3 addEntriesFromDictionary:v82];
  }

  v83 = [dictionary2 objectForKeyedSubscript:@"rp_keep"];

  if (v83)
  {
    v84 = [dictionary2 objectForKeyedSubscript:@"rp_keep"];
    [dictionary3 addEntriesFromDictionary:v84];
  }

  v85 = [dictionary2 objectForKeyedSubscript:@"rp_nomatch"];

  if (v85)
  {
    v86 = [dictionary2 objectForKeyedSubscript:@"rp_nomatch"];
    [dictionary3 addEntriesFromDictionary:v86];
  }

  v87 = [dictionary2 objectForKeyedSubscript:@"rp_matchfailure"];

  if (v87)
  {
    v88 = [dictionary2 objectForKeyedSubscript:@"rp_matchfailure"];
    [dictionary3 addEntriesFromDictionary:v88];
  }

  v89 = [dictionary2 objectForKeyedSubscript:@"rp_passcode"];

  if (v89)
  {
    v90 = [dictionary2 objectForKeyedSubscript:@"rp_passcode"];
    [dictionary3 addEntriesFromDictionary:v90];
  }

  [dictionary2 setObject:dictionary3 forKeyedSubscript:@"rp_anyfailure"];
  [dictionary2 removeObjectForKey:@"rp_noface"];
  [dictionary2 removeObjectForKey:@"rp_keep"];
  [dictionary2 removeObjectForKey:@"rp_nomatch"];
  [dictionary2 removeObjectForKey:@"rp_matchfailure"];
  [dictionary2 removeObjectForKey:@"rp_passcode"];
  if (v140 > __retentionSizeLimit)
  {
    v122 = dictionary3;
    v118 = v16;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    selfCopy2 = self;
    retentionPolicyTypes2 = [objc_opt_class() retentionPolicyTypes];
    v93 = [retentionPolicyTypes2 countByEnumeratingWithState:&v130 objects:v141 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v131;
LABEL_110:
      v96 = 0;
      while (1)
      {
        if (*v131 != v95)
        {
          objc_enumerationMutation(retentionPolicyTypes2);
        }

        v97 = *(*(&v130 + 1) + 8 * v96);
        if (__osLog_BioLog_Retention)
        {
          v98 = __osLog_BioLog_Retention;
        }

        else
        {
          v98 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          v99 = v98;
          v100 = [v127 objectForKeyedSubscript:v97];
          v101 = [v100 count];
          *buf = 138412546;
          v143 = v97;
          v144 = 2048;
          v145 = v101;
          _os_log_impl(&dword_296CA4000, v99, OS_LOG_TYPE_DEFAULT, "Limiting %@, count %lu ...\n", buf, 0x16u);

          selfCopy2 = self;
        }

        v102 = [v97 isEqualToString:@"rp_anyfailure"];
        v103 = objc_opt_class();
        v104 = [v127 objectForKeyedSubscript:v97];
        if (v102)
        {
          [v103 limitSequenceDirs:v104 withSize:&v140];
        }

        else
        {
          v129[0] = MEMORY[0x29EDCA5F8];
          v129[1] = 3221225472;
          v129[2] = __62__BLRetention_applyPolicyWithPath_sizeLimit_freeMissingSpace___block_invoke_49;
          v129[3] = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
          v129[4] = selfCopy2;
          [v103 limitSequenceDirs:v104 withSize:&v140 removalMethod:v129];
        }

        if (v140 < __retentionSizeLimit)
        {
          break;
        }

        if (v94 == ++v96)
        {
          v94 = [retentionPolicyTypes2 countByEnumeratingWithState:&v130 objects:v141 count:16];
          if (v94)
          {
            goto LABEL_110;
          }

          break;
        }
      }
    }

    dictionary = v120;
    dictionary3 = v122;
    dictionary2 = v127;
    v16 = v118;
  }

  if (v140 > __retentionSizeLimit)
  {
    v105 = objc_opt_class();
    v128[0] = MEMORY[0x29EDCA5F8];
    v128[1] = 3221225472;
    v128[2] = __62__BLRetention_applyPolicyWithPath_sizeLimit_freeMissingSpace___block_invoke_2;
    v128[3] = &__block_descriptor_40_e17_Q16__0__NSArray_8l;
    v128[4] = self;
    [v105 limitSequenceDirs:dictionary withSize:&v140 removalMethod:v128];
  }

LABEL_128:
  if (__osLog_BioLog_Retention)
  {
    v106 = __osLog_BioLog_Retention;
  }

  else
  {
    v106 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    *&v107 = vcvtd_n_f64_u64(v16 - v140, 0x14uLL);
    v108 = v106;
    [date timeIntervalSinceNow];
    *buf = 134218496;
    v143 = v107;
    v144 = 2048;
    *&v145 = -v109;
    v146 = 2048;
    v147 = v140 >> 20;
    _os_log_impl(&dword_296CA4000, v108, OS_LOG_TYPE_DEFAULT, "Retention policy removed %.3fMB in %fs, resulting size %luMB\n", buf, 0x20u);
  }

  v110 = *MEMORY[0x29EDCA608];
}

uint64_t __62__BLRetention_applyPolicyWithPath_sizeLimit_freeMissingSpace___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 stripSequenceAtPath:v6];

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v4 objectAtIndexedSubscript:0];

  [v9 setRetentionType:@"rp_keep" atPath:v10];
  return v7;
}

uint64_t __62__BLRetention_applyPolicyWithPath_sizeLimit_freeMissingSpace___block_invoke_48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 objectAtIndexedSubscript:0];
  [v4 removeItemAtPath:v5];

  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

uint64_t __62__BLRetention_applyPolicyWithPath_sizeLimit_freeMissingSpace___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 stripSequenceAtPath:v6];

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v4 objectAtIndexedSubscript:0];

  [v9 setRetentionType:@"rp_keep" atPath:v10];
  return v7;
}

uint64_t __62__BLRetention_applyPolicyWithPath_sizeLimit_freeMissingSpace___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 stripSequenceAtPath:v6];

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v4 objectAtIndexedSubscript:0];

  [v9 setRetentionType:@"rp_keep" atPath:v10];
  return v7;
}

+ (void)applyCustomerPolicyWithPath:(id)path
{
  v117 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  if (__osLog_BioLog_Retention)
  {
    v4 = __osLog_BioLog_Retention;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEFAULT, "Applying customer retention policy...\n", buf, 2u);
  }

  date = [MEMORY[0x29EDB8DB0] date];
  v6 = 0x29EDB8000uLL;
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v106 = 0;
  v8 = opendir([pathCopy cStringUsingEncoding:1]);
  if (!v8)
  {
    v52 = 0;
    v53 = 0x2A18B8000;
    v54 = MEMORY[0x29EDCA988];
    goto LABEL_83;
  }

  v9 = v8;
  v10 = readdir(v8);
  v91 = date;
  v92 = pathCopy;
  if (!v10)
  {
    v94 = 0;
    goto LABEL_56;
  }

  v94 = 0;
  v12 = 0x29EDBA000uLL;
  *&v11 = 138412290;
  v86 = v11;
  do
  {
    if (v10->d_type != 4 || v10->d_name[0] == 46 && (!v10->d_name[1] || v10->d_name[1] == 46 && !v10->d_name[2]))
    {
      goto LABEL_14;
    }

    v13 = date;
    v14 = v12;
    v15 = [*(v12 + 248) stringWithCString:v10->d_name encoding:{1, v86}];
    v16 = [pathCopy stringByAppendingPathComponent:v15];

    v93 = v16;
    v17 = opendir([v16 cStringUsingEncoding:1]);
    if (!v17)
    {
      v12 = v14;
      date = v13;
      goto LABEL_47;
    }

    v90 = v17;
    v18 = readdir(v17);
    if (!v18)
    {
      v20 = v90;
      v12 = v14;
      date = v13;
      goto LABEL_46;
    }

    v19 = v18;
    v20 = v90;
    v12 = v14;
    date = v13;
    v87 = v9;
    while (v19->d_type != 4 || v19->d_name[0] == 46 && (!v19->d_name[1] || v19->d_name[1] == 46 && !v19->d_name[2]) || !strstr(v19->d_name, ".seq") && !strstr(v19->d_name, ".evt"))
    {
LABEL_24:
      v19 = readdir(v20);
      if (!v19)
      {
        goto LABEL_46;
      }
    }

    v21 = &biolog_cert_pem[984];
    v22 = [*(v12 + 248) stringWithUTF8String:v19->d_name];
    [v93 stringByAppendingPathComponent:v22];
    v24 = v23 = v12;

    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    v89 = [defaultManager attributesOfItemAtPath:v24 error:0];

    __directorySize = 0;
    v26 = v24;
    if (!ftw([v24 cStringUsingEncoding:1], addDirectoryEntrySize, 1))
    {
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      obj = [objc_opt_class() retentionPolicyTypes];
      v27 = [obj countByEnumeratingWithState:&v102 objects:v116 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v103;
        v30 = v24;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v103 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v102 + 1) + 8 * i);
            v33 = [v30 stringByAppendingPathComponent:v32];
            defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
            v35 = [defaultManager2 fileExistsAtPath:v33];

            if (v35)
            {
              v36 = v32;

              pathCopy = v92;
              v21 = biolog_cert_pem + 984;
              v30 = v26;
              goto LABEL_40;
            }

            v30 = v26;
          }

          v28 = [obj countByEnumeratingWithState:&v102 objects:v116 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

        v36 = @"rp_none";
        pathCopy = v92;
        v21 = biolog_cert_pem + 984;
      }

      else
      {
        v36 = @"rp_none";
        v30 = v24;
        pathCopy = v92;
      }

LABEL_40:

      v37 = [dictionary objectForKeyedSubscript:v36];

      v38 = v89;
      v88 = v30;
      if (v37)
      {
        v114[0] = v30;
        obja = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:*(v21 + 101)];
        v114[1] = obja;
        v114[2] = v36;
        v39 = [MEMORY[0x29EDB8D80] arrayWithObjects:v114 count:3];
        fileModificationDate2 = [dictionary objectForKeyedSubscript:v36];
        v41 = MEMORY[0x29EDBA070];
        fileModificationDate = [v89 fileModificationDate];
        [fileModificationDate timeIntervalSince1970];
        v43 = [v41 numberWithDouble:?];
        v44 = fileModificationDate2;
        v45 = v39;
        v46 = v43;
      }

      else
      {
        v47 = MEMORY[0x29EDB8E00];
        v115[0] = v30;
        obja = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:*(v21 + 101)];
        v115[1] = obja;
        v39 = [MEMORY[0x29EDB8D80] arrayWithObjects:v115 count:2];
        v48 = MEMORY[0x29EDBA070];
        fileModificationDate2 = [v89 fileModificationDate];
        [fileModificationDate2 timeIntervalSince1970];
        v49 = v48;
        v38 = v89;
        fileModificationDate = [v49 numberWithDouble:?];
        v43 = [v47 dictionaryWithObject:v39 forKey:fileModificationDate];
        v44 = dictionary;
        v45 = v43;
        v46 = v36;
      }

      [v44 setObject:v45 forKeyedSubscript:v46];

      v50 = *(v21 + 101);
      v106 += v50;
      v94 += v50;

      v6 = 0x29EDB8000;
      v9 = v87;
      v12 = 0x29EDBA000;
      v20 = v90;
      date = v91;
      goto LABEL_24;
    }

    v12 = v23;
    if (__osLog_BioLog_Retention)
    {
      v51 = __osLog_BioLog_Retention;
    }

    else
    {
      v51 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = v86;
      v108 = *&v26;
      _os_log_impl(&dword_296CA4000, v51, OS_LOG_TYPE_ERROR, "applyPolicyWithPath: Cannot count file sizes for sequence %@\n", buf, 0xCu);
    }

    v6 = 0x29EDB8000;
    date = v91;
    pathCopy = v92;
LABEL_46:
    closedir(v20);
LABEL_47:

LABEL_14:
    v10 = readdir(v9);
  }

  while (v10);
LABEL_56:
  closedir(v9);
  dictionary2 = [*(v6 + 3584) dictionary];
  v56 = [dictionary objectForKeyedSubscript:@"rp_noface"];

  if (v56)
  {
    v57 = [dictionary objectForKeyedSubscript:@"rp_noface"];
    [dictionary2 addEntriesFromDictionary:v57];
  }

  v58 = [dictionary objectForKeyedSubscript:{@"rp_nomatch", v86}];

  if (v58)
  {
    v59 = [dictionary objectForKeyedSubscript:@"rp_nomatch"];
    [dictionary2 addEntriesFromDictionary:v59];
  }

  v60 = [dictionary objectForKeyedSubscript:@"rp_matchfailure"];

  if (v60)
  {
    v61 = [dictionary objectForKeyedSubscript:@"rp_matchfailure"];
    [dictionary2 addEntriesFromDictionary:v61];
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"rp_anyfailure"];
  [dictionary removeObjectForKey:@"rp_noface"];
  [dictionary removeObjectForKey:@"rp_nomatch"];
  [dictionary removeObjectForKey:@"rp_matchfailure"];
  dictionary3 = [*(v6 + 3584) dictionary];
  v63 = [dictionary objectForKeyedSubscript:@"rp_none"];

  if (v63)
  {
    v64 = [dictionary objectForKeyedSubscript:@"rp_none"];
    [dictionary3 addEntriesFromDictionary:v64];
  }

  objb = dictionary2;
  v65 = [dictionary objectForKeyedSubscript:@"rp_update"];

  if (v65)
  {
    v66 = [dictionary objectForKeyedSubscript:@"rp_update"];
    [dictionary3 addEntriesFromDictionary:v66];
  }

  [dictionary setObject:dictionary3 forKeyedSubscript:@"rp_anysuccess"];
  [dictionary removeObjectForKey:@"rp_none"];
  [dictionary removeObjectForKey:@"rp_update"];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  retentionPolicyTypes = [objc_opt_class() retentionPolicyTypes];
  v68 = [retentionPolicyTypes countByEnumeratingWithState:&v98 objects:v113 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v99;
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v99 != v70)
        {
          objc_enumerationMutation(retentionPolicyTypes);
        }

        v72 = *(*(&v98 + 1) + 8 * j);
        v73 = objc_opt_class();
        v74 = [dictionary objectForKeyedSubscript:v72];
        [v73 applyCustomerPolicyForType:v72 withSequenceDirs:v74 withSize:&v106];
      }

      v69 = [retentionPolicyTypes countByEnumeratingWithState:&v98 objects:v113 count:16];
    }

    while (v69);
  }

  v75 = [dictionary objectForKeyedSubscript:@"rp_anyfailure"];
  if ([v75 count] <= 0x1D)
  {

    date = v91;
    pathCopy = v92;
    v53 = 0x2A18B8000uLL;
    v54 = MEMORY[0x29EDCA988];
    v52 = v94;
    v79 = objb;
  }

  else
  {
    v76 = [dictionary objectForKeyedSubscript:@"rp_anysuccess"];
    v77 = [v76 count];

    v78 = v77 >= 0xA;
    date = v91;
    pathCopy = v92;
    v53 = 0x2A18B8000uLL;
    v54 = MEMORY[0x29EDCA988];
    v52 = v94;
    v79 = objb;
    if (v78)
    {
      v80 = (__osLog_BioLog_Retention ? __osLog_BioLog_Retention : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296CA4000, v80, OS_LOG_TYPE_DEFAULT, "Customer retention fullfilled! Turn customer logging off for some time?\n", buf, 2u);
      }
    }
  }

LABEL_83:
  if (*(v53 + 1992))
  {
    v81 = *(v53 + 1992);
  }

  else
  {
    v81 = v54;
  }

  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = vcvtd_n_f64_u64(v52 - v106, 0x14uLL);
    v83 = v81;
    [date timeIntervalSinceNow];
    *buf = 134218496;
    v108 = v82;
    v109 = 2048;
    v110 = -v84;
    v111 = 2048;
    v112 = v106 >> 20;
    _os_log_impl(&dword_296CA4000, v83, OS_LOG_TYPE_DEFAULT, "Customer retention policy removed %.3fMB in %fs, resulting size %luMB\n", buf, 0x20u);
  }

  v85 = *MEMORY[0x29EDCA608];
}

+ (void)limitSequenceDirs:(id)dirs withSize:(unint64_t *)size
{
  v35 = *MEMORY[0x29EDCA608];
  dirsCopy = dirs;
  v8 = &biolog_cert_pem[984];
  if (*size > __retentionSizeLimit)
  {
    v9 = sel_compare_;
    *&v7 = 138412546;
    v29 = v7;
    sizeCopy = size;
    do
    {
      if (![dirsCopy count])
      {
        break;
      }

      allKeys = [dirsCopy allKeys];
      v11 = [allKeys sortedArrayUsingSelector:v9];
      firstObject = [v11 firstObject];

      v13 = (__osLog_BioLog_Retention ? __osLog_BioLog_Retention : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [dirsCopy objectForKeyedSubscript:firstObject];
        [v15 objectAtIndexedSubscript:0];
        v16 = v9;
        selfCopy = self;
        v19 = v18 = v8;
        v20 = [dirsCopy objectForKeyedSubscript:firstObject];
        v21 = [v20 objectAtIndexedSubscript:1];
        unsignedIntegerValue = [v21 unsignedIntegerValue];
        *buf = v29;
        v32 = v19;
        v33 = 2048;
        v34 = vcvtd_n_f64_u64(unsignedIntegerValue, 0x14uLL);
        _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_DEFAULT, "Sequences exceeded limit size, removing %@ of size %.3fMB ...\n", buf, 0x16u);

        v8 = v18;
        self = selfCopy;
        v9 = v16;
        size = sizeCopy;
      }

      v23 = objc_opt_class();
      v24 = [dirsCopy objectForKeyedSubscript:firstObject];
      v25 = [v24 objectAtIndexedSubscript:0];
      [v23 removeItemAtPath:v25];

      v26 = [dirsCopy objectForKeyedSubscript:firstObject];
      v27 = [v26 objectAtIndexedSubscript:1];
      *size -= [v27 unsignedLongValue];

      [dirsCopy removeObjectForKey:firstObject];
    }

    while (*size > *(v8 + 102));
  }

  v28 = *MEMORY[0x29EDCA608];
}

+ (void)limitSequenceDirs:(id)dirs withSize:(unint64_t *)size removalMethod:(id)method
{
  v34 = *MEMORY[0x29EDCA608];
  dirsCopy = dirs;
  methodCopy = method;
  v10 = methodCopy;
  v11 = &biolog_cert_pem[984];
  if (*size > __retentionSizeLimit)
  {
    v12 = sel_compare_;
    *&v9 = 138412546;
    v28 = v9;
    v29 = methodCopy;
    do
    {
      if (![dirsCopy count])
      {
        break;
      }

      allKeys = [dirsCopy allKeys];
      v14 = [allKeys sortedArrayUsingSelector:v12];
      firstObject = [v14 firstObject];

      v16 = (__osLog_BioLog_Retention ? __osLog_BioLog_Retention : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [dirsCopy objectForKeyedSubscript:firstObject];
        [v18 objectAtIndexedSubscript:0];
        v19 = v12;
        v21 = v20 = v11;
        v22 = [dirsCopy objectForKeyedSubscript:firstObject];
        v23 = [v22 objectAtIndexedSubscript:1];
        unsignedIntegerValue = [v23 unsignedIntegerValue];
        *buf = v28;
        v31 = v21;
        v32 = 2048;
        v33 = vcvtd_n_f64_u64(unsignedIntegerValue, 0x14uLL);
        _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEFAULT, "Sequences exceeded limit size, processing %@ of size %.3fMB ...\n", buf, 0x16u);

        v11 = v20;
        v12 = v19;
        v10 = v29;
      }

      v25 = [dirsCopy objectForKeyedSubscript:firstObject];
      v26 = (v10)[2](v10, v25);

      *size -= v26;
      [dirsCopy removeObjectForKey:firstObject];
    }

    while (*size > *(v11 + 102));
  }

  v27 = *MEMORY[0x29EDCA608];
}

+ (void)limitSequenceDirs:(id)dirs withSize:(unint64_t *)size toCount:(unint64_t)count withReplaceInterval:(double)interval removalMethod:(id)method
{
  v45 = *MEMORY[0x29EDCA608];
  dirsCopy = dirs;
  methodCopy = method;
  countCopy = count;
  if ([dirsCopy count] > count)
  {
    *&v13 = 134218498;
    v35 = v13;
    sizeCopy = size;
    do
    {
      allKeys = [dirsCopy allKeys];
      v15 = [allKeys sortedArrayUsingSelector:sel_compare_];

      firstObject = [v15 firstObject];
      reverseObjectEnumerator = [v15 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      firstObject2 = [allObjects firstObject];

      [firstObject floatValue];
      v21 = v20;
      [firstObject2 floatValue];
      if (v22 - interval >= v21)
      {
        v23 = firstObject;
      }

      else
      {
        v23 = firstObject2;
      }

      v24 = v23;
      if (__osLog_BioLog_Retention)
      {
        v25 = __osLog_BioLog_Retention;
      }

      else
      {
        v25 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = v25;
        v37 = [dirsCopy objectForKeyedSubscript:v24];
        v27 = [v37 objectAtIndexedSubscript:0];
        v28 = [dirsCopy objectForKeyedSubscript:v24];
        [v28 objectAtIndexedSubscript:1];
        v30 = v29 = methodCopy;
        unsignedIntegerValue = [v30 unsignedIntegerValue];
        *buf = v35;
        v40 = countCopy;
        v41 = 2112;
        v42 = v27;
        v43 = 2048;
        v44 = vcvtd_n_f64_u64(unsignedIntegerValue, 0x14uLL);
        _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_DEBUG, "Sequences exceeded limit count %lu, processing %@ of size %.3fMB...\n", buf, 0x20u);

        methodCopy = v29;
        size = sizeCopy;
      }

      v32 = [dirsCopy objectForKeyedSubscript:v24];
      v33 = methodCopy[2](methodCopy, v32);

      *size -= v33;
      [dirsCopy removeObjectForKey:v24];
    }

    while ([dirsCopy count] > countCopy);
  }

  v34 = *MEMORY[0x29EDCA608];
}

+ (void)removeItemAtPath:(id)path
{
  v16 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v11 = 0;
  v5 = [defaultManager removeItemAtPath:pathCopy error:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    if (__osLog_BioLog_Retention)
    {
      v7 = __osLog_BioLog_Retention;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      localizedFailureReason = [v6 localizedFailureReason];
      *buf = 138412546;
      v13 = pathCopy;
      v14 = 2112;
      v15 = localizedFailureReason;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_ERROR, "Warning: Could not remove item %@! %@\n", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

+ (unint64_t)stripSequenceAtPath:(id)path
{
  v48 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v42 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v42];
  v6 = v42;

  if ([v5 count])
  {
    v33 = v6;
    v34 = v5;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v37 = 0;
      v10 = @".";
      v11 = *v39;
      v36 = *v39;
      do
      {
        v12 = 0;
        v35 = v9;
        do
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v38 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          pathExtension = [v13 pathExtension];
          v16 = [(__CFString *)v10 stringByAppendingString:pathExtension];

          v17 = [pathCopy stringByAppendingPathComponent:v13];
          if (([v16 isEqualToString:@".json"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @".prle") & 1) == 0)
          {
            v18 = v10;
            v19 = v7;
            v20 = pathCopy;
            if (__osLog_BioLog_Retention)
            {
              v21 = __osLog_BioLog_Retention;
            }

            else
            {
              v21 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = v17;
              _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_DEBUG, "Removing data %@\n", buf, 0xCu);
            }

            defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
            v23 = [defaultManager2 attributesOfItemAtPath:v17 error:0];
            v37 += [v23 fileSize];

            [objc_opt_class() removeItemAtPath:v17];
            pathCopy = v20;
            v7 = v19;
            v10 = v18;
            v9 = v35;
            v11 = v36;
          }

          if ([v16 isEqualToString:{@".json", v33, v34}] && (objc_msgSend(v13, "containsString:", @"seq-") & 1) == 0)
          {
            if (__osLog_BioLog_Retention)
            {
              v24 = __osLog_BioLog_Retention;
            }

            else
            {
              v24 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = v17;
              _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_DEBUG, "Removing frame context %@\n", buf, 0xCu);
            }

            defaultManager3 = [MEMORY[0x29EDB9FB8] defaultManager];
            v26 = [defaultManager3 attributesOfItemAtPath:v17 error:0];
            v37 += [v26 fileSize];

            [objc_opt_class() removeItemAtPath:v17];
            v11 = v36;
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v9);
    }

    else
    {
      v37 = 0;
    }

    v6 = v33;
    v5 = v34;
    v30 = v37;
  }

  else
  {
    if (__osLog_BioLog_Retention)
    {
      v27 = __osLog_BioLog_Retention;
    }

    else
    {
      v27 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      localizedFailureReason = [v6 localizedFailureReason];
      *buf = 138412546;
      v44 = pathCopy;
      v45 = 2112;
      v46 = localizedFailureReason;
      _os_log_impl(&dword_296CA4000, v28, OS_LOG_TYPE_ERROR, "Warning: Could not strip sequence at %@! %@\n", buf, 0x16u);
    }

    v30 = 0;
  }

  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

+ (void)setPurgeableAtPath:(id)path directory:(BOOL)directory
{
  v12 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  v6 = pathCopy;
  v9 = 66053;
  if (!directory && fsctl([pathCopy UTF8String], 0xC0084A44uLL, &v9, 0))
  {
    if (__osLog_BioLog_Retention)
    {
      v7 = __osLog_BioLog_Retention;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Could not mark file purgeable: %@\n", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

+ (void)setRetentionType:(id)type atPath:(id)path
{
  v36 = *MEMORY[0x29EDCA608];
  typeCopy = type;
  pathCopy = path;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  retentionPolicyTypes = [objc_opt_class() retentionPolicyTypes];
  v8 = [retentionPolicyTypes countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(retentionPolicyTypes);
        }

        v12 = [pathCopy stringByAppendingPathComponent:*(*(&v25 + 1) + 8 * i)];
        defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
        v14 = [defaultManager fileExistsAtPath:v12];

        if (v14)
        {
          [objc_opt_class() removeItemAtPath:v12];
        }
      }

      v9 = [retentionPolicyTypes countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v9);
  }

  if (typeCopy)
  {
    defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
    v16 = [pathCopy stringByAppendingPathComponent:typeCopy];
    v17 = *MEMORY[0x29EDB9E80];
    v33[0] = *MEMORY[0x29EDB9E58];
    v33[1] = v17;
    v18 = *MEMORY[0x29EDB9E70];
    v34[0] = @"mobile";
    v34[1] = v18;
    v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v20 = [defaultManager2 createFileAtPath:v16 contents:0 attributes:v19];

    if (v20)
    {
      v21 = [pathCopy stringByAppendingPathComponent:typeCopy];
      [self setPurgeableAtPath:v21 directory:0];
    }

    else
    {
      if (__osLog_BioLog_Retention)
      {
        v22 = __osLog_BioLog_Retention;
      }

      else
      {
        v22 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v30 = typeCopy;
        v31 = 2112;
        v32 = pathCopy;
        _os_log_impl(&dword_296CA4000, v22, OS_LOG_TYPE_ERROR, "Warning: Could not create retention type file %@ at path %@!\n", buf, 0x16u);
      }
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

@end