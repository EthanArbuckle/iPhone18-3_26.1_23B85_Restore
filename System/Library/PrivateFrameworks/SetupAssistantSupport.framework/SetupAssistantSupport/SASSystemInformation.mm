@interface SASSystemInformation
+ (id)productVersion;
+ (id)storageAvailable;
+ (id)storageCapacity;
+ (int64_t)compareProductVersion:(id)version toProductVersion:(id)productVersion;
+ (void)storageAvailable;
@end

@implementation SASSystemInformation

+ (id)productVersion
{
  v2 = _CFCopySystemVersionDictionary();
  if (v2)
  {
    v3 = v2;
    v4 = [CFDictionaryGetValue(v2 *MEMORY[0x277CBEC88])];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)storageAvailable
{
  v11 = *MEMORY[0x277D85DE8];
  memset(&v10, 0, 512);
  v2 = statfs([@"/private/var" fileSystemRepresentation], &v10);
  if (v2)
  {
    v3 = v2;
    v4 = +[SASLogging facility];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(SASSystemInformation *)v3];
    }

    v5 = &unk_2842FCEE0;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10.f_bavail * v10.f_bsize];
    v4 = +[SASLogging facility];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22E4D7000, v4, OS_LOG_TYPE_DEFAULT, "storageAvailable returning %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)storageCapacity
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:*MEMORY[0x277D823C0]];
  v4 = +[SASLogging facility];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_22E4D7000, v4, OS_LOG_TYPE_DEFAULT, "storageCapacity returning %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (int64_t)compareProductVersion:(id)version toProductVersion:(id)productVersion
{
  versionCopy = version;
  productVersionCopy = productVersion;
  if ([versionCopy isEqualToString:productVersionCopy])
  {
    v7 = 0;
  }

  else
  {
    v8 = [versionCopy componentsSeparatedByString:@"."];
    v9 = [productVersionCopy componentsSeparatedByString:@"."];
    v10 = [v8 count];
    if (v10 | [v9 count])
    {
      v11 = 0;
      v7 = 1;
      while (1)
      {
        if ([v8 count] <= v11)
        {
          intValue = 0;
        }

        else
        {
          v12 = [v8 objectAtIndexedSubscript:v11];
          intValue = [v12 intValue];
        }

        if ([v9 count] <= v11)
        {
          intValue2 = 0;
        }

        else
        {
          v14 = [v9 objectAtIndexedSubscript:v11];
          intValue2 = [v14 intValue];
        }

        if (intValue > intValue2)
        {
          break;
        }

        if (intValue < intValue2)
        {
          v7 = -1;
          break;
        }

        ++v11;
        v16 = [v8 count];
        v17 = [v9 count];
        if (v16 <= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        if (v18 <= v11)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v7 = 0;
    }
  }

  return v7;
}

+ (void)storageAvailable
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_22E4D7000, a2, OS_LOG_TYPE_ERROR, "storageAvailable statfs failed with error %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end