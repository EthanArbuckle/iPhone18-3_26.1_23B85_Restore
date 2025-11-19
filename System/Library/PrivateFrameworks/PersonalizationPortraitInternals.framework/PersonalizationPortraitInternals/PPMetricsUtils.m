@interface PPMetricsUtils
+ (id)filterBundleId:(id)a3;
+ (id)filterGroupIdAllowance:(id)a3;
+ (id)loggingQueue;
+ (id)stringifyDomain:(unsigned __int8)a3;
+ (id)stringifyFeedbackDomainStatus:(unsigned __int8)a3;
+ (id)stringifyFeedbackType:(unsigned int)a3;
+ (id)truncatedClientBundleId:(id)a3;
+ (id)truncatedClientBundleIdOrCurrentBundleId:(id)a3;
+ (int)mapDomainForPET2:(unsigned __int8)a3;
+ (int)mapLocationAlgorithmForPET2:(unsigned __int16)a3;
+ (int)mapNamedEntityAlgorithmForPET2:(unint64_t)a3;
+ (int)mapNamedEntityCategory:(unint64_t)a3;
+ (int)mapTopicAlgorithmForPET2:(unint64_t)a3;
+ (int)mapTopicDonationErrorForPET2:(int64_t)a3;
+ (int)sourceForBundleId:(id)a3;
@end

@implementation PPMetricsUtils

+ (id)loggingQueue
{
  if (loggingQueue__pasOnceToken2 != -1)
  {
    dispatch_once(&loggingQueue__pasOnceToken2, &__block_literal_global_19069);
  }

  v3 = loggingQueue__pasExprOnceResult;

  return v3;
}

+ (id)filterGroupIdAllowance:(id)a3
{
  v21[9] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3A6F0];
  v13[0] = *MEMORY[0x277D3A6E8];
  v13[1] = v3;
  v21[0] = v13[0];
  v21[1] = v3;
  v4 = *MEMORY[0x277D3A700];
  v14 = *MEMORY[0x277D3A6F8];
  v15 = v4;
  v21[2] = v14;
  v21[3] = v4;
  v5 = *MEMORY[0x277D3A718];
  v16 = *MEMORY[0x277D3A708];
  v17 = v5;
  v21[4] = v16;
  v21[5] = v5;
  v6 = *MEMORY[0x277D3A710];
  v18 = *MEMORY[0x277D3A720];
  v19 = v6;
  v21[6] = v18;
  v21[7] = v6;
  v20 = *MEMORY[0x277D3A728];
  v21[8] = v20;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v21 forKeys:v13 count:9];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)truncatedClientBundleIdOrCurrentBundleId:(id)a3
{
  v4 = [a3 bundleIdentifierOrProcessName:0];
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v5 bundleIdentifier];
  }

  v6 = [a1 truncatedClientBundleId:v4];

  return v6;
}

+ (id)truncatedClientBundleId:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v5 = [v3 componentsSeparatedByString:@"."];
    if ([v5 count] >= 2)
    {
      v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1}];

      v3 = v6;
    }

    if ([v3 length] >= 0x19)
    {
      v7 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 24}];

      v3 = v7;
    }

    v8 = v3;
  }

  else
  {
    v8 = @"unknown";
  }

  objc_autoreleasePoolPop(v4);

  return v8;
}

+ (id)stringifyFeedbackDomainStatus:(unsigned __int8)a3
{
  if ((a3 - 1) > 4)
  {
    return @"NotInDomain";
  }

  else
  {
    return off_278976CC8[(a3 - 1)];
  }
}

+ (id)stringifyDomain:(unsigned __int8)a3
{
  if ((a3 - 1) > 6)
  {
    return @"Topics";
  }

  else
  {
    return off_278976C90[(a3 - 1)];
  }
}

+ (id)stringifyFeedbackType:(unsigned int)a3
{
  if (a3 > 5)
  {
    return @"Undefined";
  }

  else
  {
    return off_278976C60[a3];
  }
}

+ (int)sourceForBundleId:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (sourceForBundleId___pasOnceToken3 != -1)
  {
    dispatch_once(&sourceForBundleId___pasOnceToken3, &__block_literal_global_76_19052);
  }

  v4 = sourceForBundleId___pasExprOnceResult;
  v5 = [v4 objectForKeyedSubscript:v3];
  if (v5)
  {
LABEL_17:
    v12 = [v5 intValue];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [*MEMORY[0x277D3A6C8] objectForKeyedSubscript:{v3, 0}];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v4 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if ([v3 rangeOfString:@"com.apple." options:10] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v3)
      {
        v12 = 17;
      }

      else
      {
        v12 = 18;
      }
    }

    else
    {
      v15 = pp_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v21 = v3;
        _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPMetricsUtils: unknown first-party source %{sensitive}@", buf, 0xCu);
      }

      v12 = 16;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __36__PPMetricsUtils_sourceForBundleId___block_invoke()
{
  v15[21] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = *MEMORY[0x277D3A668];
  v14[0] = *MEMORY[0x277D3A698];
  v14[1] = v1;
  v15[0] = &unk_284784428;
  v15[1] = &unk_284784440;
  v2 = *MEMORY[0x277D3A658];
  v14[2] = *MEMORY[0x277D3A648];
  v14[3] = v2;
  v15[2] = &unk_284784458;
  v15[3] = &unk_284784470;
  v3 = *MEMORY[0x277D3A680];
  v14[4] = *MEMORY[0x277D3A6A8];
  v14[5] = v3;
  v15[4] = &unk_284784488;
  v15[5] = &unk_2847844A0;
  v4 = *MEMORY[0x277D3A688];
  v14[6] = *MEMORY[0x277D3A618];
  v14[7] = v4;
  v15[6] = &unk_2847844B8;
  v15[7] = &unk_2847844D0;
  v5 = *MEMORY[0x277D3A678];
  v14[8] = *MEMORY[0x277D3A5F0];
  v14[9] = v5;
  v15[8] = &unk_2847844E8;
  v15[9] = &unk_284784500;
  v6 = *MEMORY[0x277D3A650];
  v14[10] = *MEMORY[0x277D3A670];
  v14[11] = v6;
  v15[10] = &unk_284784518;
  v15[11] = &unk_284784530;
  v7 = *MEMORY[0x277D3A690];
  v14[12] = *MEMORY[0x277D3A600];
  v14[13] = v7;
  v15[12] = &unk_284784548;
  v15[13] = &unk_284784560;
  v8 = *MEMORY[0x277D3A5F8];
  v14[14] = *MEMORY[0x277D3A608];
  v14[15] = v8;
  v15[14] = &unk_284784578;
  v15[15] = &unk_284784590;
  v9 = *MEMORY[0x277D3A610];
  v14[16] = *MEMORY[0x277D3A6D0];
  v14[17] = v9;
  v15[16] = &unk_2847845A8;
  v15[17] = &unk_2847845C0;
  v10 = *MEMORY[0x277D3A6B8];
  v14[18] = *MEMORY[0x277D3A660];
  v14[19] = v10;
  v15[18] = &unk_2847845D8;
  v15[19] = &unk_2847845F0;
  v14[20] = *MEMORY[0x277D3A6C0];
  v15[20] = &unk_284784608;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:21];
  v12 = sourceForBundleId___pasExprOnceResult;
  sourceForBundleId___pasExprOnceResult = v11;

  objc_autoreleasePoolPop(v0);
  v13 = *MEMORY[0x277D85DE8];
}

+ (id)filterBundleId:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"com.apple"])
  {
    v4 = [v3 _pas_stringBackedByUTF8CString];
  }

  else
  {
    v4 = @"Third-Party";
  }

  return v4;
}

+ (int)mapDomainForPET2:(unsigned __int8)a3
{
  if ((a3 - 1) < 7)
  {
    return (a3 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)mapTopicDonationErrorForPET2:(int64_t)a3
{
  if (a3 > 8)
  {
    return 8;
  }

  else
  {
    return dword_2324188B0[a3];
  }
}

+ (int)mapTopicAlgorithmForPET2:(unint64_t)a3
{
  if (a3 - 1 > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_232418884[a3 - 1];
  }
}

+ (int)mapLocationAlgorithmForPET2:(unsigned __int16)a3
{
  if ((a3 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return dword_232418854[(a3 - 1)];
  }
}

+ (int)mapNamedEntityCategory:(unint64_t)a3
{
  if (a3 - 1 < 0x15)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

+ (int)mapNamedEntityAlgorithmForPET2:(unint64_t)a3
{
  if (a3 - 1 > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_232418810[a3 - 1];
  }
}

void __30__PPMetricsUtils_loggingQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);

  v3 = dispatch_queue_create("com.apple.PersonalizationPortrait.storeMetricsLogging", v2);
  v4 = loggingQueue__pasExprOnceResult;
  loggingQueue__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

@end