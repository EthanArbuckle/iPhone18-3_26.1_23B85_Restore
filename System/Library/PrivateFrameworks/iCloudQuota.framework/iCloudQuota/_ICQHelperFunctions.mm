@interface _ICQHelperFunctions
+ (BOOL)_checkOptions:(id)a3 forKey:(id)a4;
+ (BOOL)defaultKeyExists:(id)a3;
+ (BOOL)isBackupEnabledForAccount:(id)a3 accountStore:(id)a4;
+ (BOOL)isPhotosLibraryIncludedInBackupForAccount:(id)a3;
+ (BOOL)userDefaultsBoolValueForKey:(id)a3;
+ (id)_darwinNotificationNameForRequestType:(int64_t)a3;
+ (id)_fetchNextBackupSize:(id)a3;
+ (id)_getOfferDescriptionFromRequestType:(int64_t)a3;
+ (id)_remoteBackupSizeOperationQueue;
+ (id)base64EncodeString:(id)a3;
+ (id)defaultStringValueForKey:(id)a3;
+ (id)defaultValueForKey:(id)a3;
+ (id)dictionaryForKey:(id)a3 from:(id)a4;
+ (id)findPlaceholdersInString:(id)a3;
+ (id)followUpGroupIdentifierForString:(id)a3;
+ (id)followUpIdentifierPrefixForRequestType:(int64_t)a3;
+ (id)getStringFromNumber:(id)a3;
+ (id)lastUpdatedForReason:(id)a3 decayUntil:(double)a4;
+ (id)numberForKey:(id)a3 from:(id)a4;
+ (id)parseTemplates:(id)a3;
+ (id)replaceWordsIn:(id)a3 with:(id)a4;
+ (id)standardDateFormat:(unint64_t)a3;
+ (id)stringFromTemplates:(id)a3 key:(id)a4;
+ (id)usedCapacityForVolume:(id)a3;
+ (id)userDefaultsDictionaryForKey:(id)a3;
+ (id)userDefaultsObjectForKey:(id)a3;
+ (id)userDefaultsStringForKey:(id)a3;
+ (int64_t)_getOfferRequestTypeFromOptions:(id)a3 bundleId:(id)a4 isBuddy:(BOOL)a5;
+ (int64_t)_offerRequestTypeForStub:(id)a3;
+ (void)appLaunchLinkTrackerSetLastShownDate:(id)a3 forBundleID:(id)a4;
+ (void)bubbleBannerTrackLastDismissed:(id)a3 forReason:(id)a4;
+ (void)getOriginalPhotosSizeWithCompletion:(id)a3;
+ (void)remoteBackupSizeForAccount:(id)a3 timeoutInSeconds:(double)a4 completion:(id)a5;
+ (void)setUserDefaultsObject:(id)a3 forKey:(id)a4;
@end

@implementation _ICQHelperFunctions

+ (id)replaceWordsIn:(id)a3 with:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        v13 = [v6 objectForKey:v12];
        v5 = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)stringFromTemplates:(id)a3 key:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = v6;
    v9 = v5;
  }

  else
  {
    v9 = @"default";
    v8 = v6;
  }

  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

+ (id)findPlaceholdersInString:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 containsString:@"%$"])
  {
    v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v5 = [v3 componentsSeparatedByCharactersInSet:v4];

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 hasPrefix:{@"%$", v16}])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)userDefaultsBoolValueForKey:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

+ (void)setUserDefaultsObject:(id)a3 forKey:(id)a4
{
  v5 = MEMORY[0x277CBEBD0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 standardUserDefaults];
  [v8 setObject:v7 forKey:v6];
}

+ (id)userDefaultsObjectForKey:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (id)userDefaultsDictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 userDefaultsObjectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[_ICQHelperFunctions userDefaultsDictionaryForKey:];
    }

    v6 = 0;
  }

  return v6;
}

+ (id)userDefaultsStringForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 userDefaultsObjectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[_ICQHelperFunctions userDefaultsStringForKey:];
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)defaultKeyExists:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a3, @"com.apple.cloud.quota", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

+ (id)defaultValueForKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.cloud.quota");

  return v3;
}

+ (id)defaultStringValueForKey:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [_ICQHelperFunctions defaultValueForKey:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    if (v4)
    {
      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "defaults key %@ is not of correct type", &v9, 0xCu);
      }
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)parseTemplates:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"format", v18}];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 objectForKeyedSubscript:@"key"];

          if (v13)
          {
            v14 = [v10 objectForKeyedSubscript:@"format"];
            v15 = [v10 objectForKeyedSubscript:@"key"];
            [v4 setObject:v14 forKey:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)standardDateFormat:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:a3];
  [v4 setTimeStyle:a3];
  v5 = [v4 dateFormat];

  return v5;
}

+ (id)getStringFromNumber:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  [v4 setLocale:v5];

  [v4 setNumberStyle:1];
  [v4 setUsesGroupingSeparator:1];
  [v4 setMaximumFractionDigits:0];
  v6 = [v4 stringFromNumber:v3];

  return v6;
}

+ (id)base64EncodeString:(id)a3
{
  if (a3)
  {
    v3 = [a3 dataUsingEncoding:4];
    v4 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Invalid string", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)_checkOptions:(id)a3 forKey:(id)a4
{
  v4 = [a3 objectForKeyedSubscript:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)_getOfferRequestTypeFromOptions:(id)a3 bundleId:(id)a4 isBuddy:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [a1 _requestedFetchOffersInOptions:v8];
  v11 = [a1 _requestedPremiumOfferInOptions:v8];
  if ([a1 _requestedDefaultOfferInOptions:v8])
  {
    v12 = [a1 _requestedEventOfferInOptions:v8];
LABEL_4:
    v10 = 1;
    v14 = 1;
    goto LABEL_6;
  }

  v13 = [v9 isEqualToString:@"com.apple.icq"];
  v12 = [a1 _requestedEventOfferInOptions:v8];
  if (v13)
  {
    goto LABEL_4;
  }

  v14 = 0;
LABEL_6:
  v15 = 3;
  if (v12)
  {
    v15 = 5;
  }

  if (v5)
  {
    v15 = 4;
  }

  if (v11)
  {
    v15 = 2;
  }

  if (v10)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

+ (int64_t)_offerRequestTypeForStub:(id)a3
{
  v3 = a3;
  if ([v3 isDefaultOffer])
  {
    v4 = 1;
  }

  else if ([v3 isPremiumOffer])
  {
    v4 = 2;
  }

  else if ([v3 isBuddyOffer])
  {
    v4 = 4;
  }

  else if ([v3 isEventOffer])
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (id)followUpIdentifierPrefixForRequestType:(int64_t)a3
{
  v3 = @"com.apple.iCloudQuotaDaemon.ICQFollowupRegular";
  if (a3 == 5)
  {
    v3 = @"com.apple.iCloudQuotaDaemon.ICQFollowupEvent";
  }

  if (a3 == 2)
  {
    return @"com.apple.iCloudQuotaDaemon.ICQFollowupPremium";
  }

  else
  {
    return v3;
  }
}

+ (id)_getOfferDescriptionFromRequestType:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"premium";
  }

  else
  {
    return off_27A651748[a3];
  }
}

+ (id)_darwinNotificationNameForRequestType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_27A651778[a3 - 1];
  }
}

+ (BOOL)isBackupEnabledForAccount:(id)a3 accountStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 accountStore];

  if (v7)
  {
    LOBYTE(v8) = [v6 isEnabledForDataclass:*MEMORY[0x277CB90C8]];
  }

  else
  {
    v9 = [v5 enabledDataclassesForAccount:v6];

    v8 = [v9 containsObject:*MEMORY[0x277CB90C8]];
    v6 = v9;
  }

  return v8;
}

+ (BOOL)isPhotosLibraryIncludedInBackupForAccount:(id)a3
{
  v3 = MEMORY[0x277D28A40];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 personaIdentifier];

  v7 = [v5 initWithDelegate:0 eventQueue:0 personaIdentifier:v6];
  LOBYTE(v4) = [v7 isBackupEnabledForDomainName:@"CameraRollDomain"];

  return v4;
}

+ (void)getOriginalPhotosSizeWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D3B238] systemLibraryURL];
  v6 = v3;
  v5 = v3;
  PLRequestSizeOfOriginalResourcesForLibrary();
}

+ (id)usedCapacityForVolume:(id)a3
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ICQUsedDiskSpaceForVolume(v3);
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v6 = *MEMORY[0x277CBEA00];
  v7 = *MEMORY[0x277CBE9F0];
  v33[0] = *MEMORY[0x277CBEA00];
  v33[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v26 = 0;
  v9 = [v5 resourceValuesForKeys:v8 error:&v26];
  v10 = v26;

  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:v6];
    v12 = [v9 objectForKeyedSubscript:v7];
    v13 = [v11 unsignedLongLongValue];
    if (v13 <= [v12 unsignedLongLongValue])
    {
      v17 = [v12 unsignedLongLongValue];
      v14 = v17 - [v11 unsignedLongLongValue];
      if (v14 > v4)
      {
        v18 = _ICQGetLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
          *buf = 138543874;
          v28 = v3;
          v29 = 2114;
          v30 = v24;
          v31 = 2114;
          v32 = v25;
          _os_log_error_impl(&dword_275572000, v18, OS_LOG_TYPE_ERROR, "Somehow reclaimable space is bigger than used space for %{public}@: %{public}@, %{public}@", buf, 0x20u);
        }

        v19 = MEMORY[0x277CCABB0];
        v20 = v4;
        goto LABEL_12;
      }
    }

    else
    {
      v14 = 0;
    }

    v19 = MEMORY[0x277CCABB0];
    v20 = v4 - v14;
LABEL_12:
    v16 = [v19 numberWithUnsignedLongLong:v20];
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = v3;
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "Used Capacity on %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v15 = _ICQGetLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    +[_ICQHelperFunctions usedCapacityForVolume:];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)remoteBackupSizeForAccount:(id)a3 timeoutInSeconds:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.icloud.quota.remote-backup-size-timeout-queue", v10);

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  v12 = MEMORY[0x277CCA8C8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78___ICQHelperFunctions_remoteBackupSizeForAccount_timeoutInSeconds_completion___block_invoke;
  v26[3] = &unk_27A6516E0;
  v13 = v8;
  v29 = &v31;
  v30 = a1;
  v27 = v13;
  v14 = v9;
  v28 = v14;
  v15 = [v12 blockOperationWithBlock:v26];
  v16 = v32[5];
  v32[5] = v15;

  v17 = dispatch_time(0, (a4 * 1000000000.0));
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __78___ICQHelperFunctions_remoteBackupSizeForAccount_timeoutInSeconds_completion___block_invoke_2;
  v23 = &unk_27A651708;
  v25 = &v31;
  v18 = v14;
  v24 = v18;
  dispatch_after(v17, v11, &v20);
  v19 = [a1 _remoteBackupSizeOperationQueue];
  [v19 addOperation:v32[5]];

  _Block_object_dispose(&v31, 8);
}

+ (id)_fetchNextBackupSize:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v27 = 0;
  v4 = [v3 getBackupListWithError:&v27];
  v5 = v27;
  v6 = [v3 backupDeviceUUID];
  if (v5)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[_ICQHelperFunctions _fetchNextBackupSize:];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v9)
  {
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 backupUUID];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v9 = v12;
          goto LABEL_15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v36 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v15 = [v9 snapshots];
  v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_1];

  v17 = _ICQGetLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v29 = v8;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v16;
    _os_log_debug_impl(&dword_275572000, v17, OS_LOG_TYPE_DEBUG, "Backups array %@, current device uuid %@, matchingBackup %@, available snapshots %@", buf, 0x2Au);
  }

  v18 = MEMORY[0x277CCABB0];
  v19 = [v16 lastObject];
  v20 = [v18 numberWithLongLong:{objc_msgSend(v19, "estimatedRestoreSize")}];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_remoteBackupSizeOperationQueue
{
  if (_remoteBackupSizeOperationQueue_onceToken != -1)
  {
    +[_ICQHelperFunctions _remoteBackupSizeOperationQueue];
  }

  v3 = _remoteBackupSizeOperationQueue_operationQueue;

  return v3;
}

+ (id)dictionaryForKey:(id)a3 from:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)numberForKey:(id)a3 from:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)followUpGroupIdentifierForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FLGroupIdentifierDevice"])
  {
    v4 = MEMORY[0x277CFE440];
  }

  else if ([v3 isEqualToString:@"FLGroupIdentifierNoGroup"])
  {
    v4 = MEMORY[0x277CFE450];
  }

  else if ([v3 isEqualToString:@"FLGroupIdentifierAppleServices"])
  {
    v4 = MEMORY[0x277CFE438];
  }

  else
  {
    v5 = [v3 isEqualToString:@"FLGroupIdentifierNewDeviceOutreach"];
    v4 = MEMORY[0x277CFE430];
    if (v5)
    {
      v4 = MEMORY[0x277CFE448];
    }
  }

  v6 = *v4;
  v7 = *v4;

  return v6;
}

+ (void)appLaunchLinkTrackerSetLastShownDate:(id)a3 forBundleID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ICQAppLaunchLinkTracker shared];
  [v7 setLastShownDate:v6 forBundleID:v5];
}

+ (void)bubbleBannerTrackLastDismissed:(id)a3 forReason:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CB8F48] defaultStore];
  v7 = [v6 aa_primaryAppleAccount];

  if (v7)
  {
    v8 = +[ICQBubbleBannerTracker shared];
    [v8 trackLastDismissed:v7 date:v9 reason:v5];
  }
}

+ (id)lastUpdatedForReason:(id)a3 decayUntil:(double)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CB8F48] defaultStore];
  v7 = [v6 aa_primaryAppleAccount];

  if (v7)
  {
    v8 = +[ICQBubbleBannerTracker shared];
    v9 = [v8 account:v7 lastUpdated:v5 decayUntil:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)userDefaultsDictionaryForKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_275572000, v0, OS_LOG_TYPE_DEBUG, "Could not find a dictionary at key %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)userDefaultsStringForKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_275572000, v0, OS_LOG_TYPE_DEBUG, "Could not find a string at key %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)usedCapacityForVolume:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_275572000, v1, OS_LOG_TYPE_ERROR, "Failed to get resource values for %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchNextBackupSize:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_275572000, v0, OS_LOG_TYPE_ERROR, "Unable to retrieve remote backup info: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end