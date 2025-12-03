@interface _ICQHelperFunctions
+ (BOOL)_checkOptions:(id)options forKey:(id)key;
+ (BOOL)defaultKeyExists:(id)exists;
+ (BOOL)isBackupEnabledForAccount:(id)account accountStore:(id)store;
+ (BOOL)isPhotosLibraryIncludedInBackupForAccount:(id)account;
+ (BOOL)userDefaultsBoolValueForKey:(id)key;
+ (id)_darwinNotificationNameForRequestType:(int64_t)type;
+ (id)_fetchNextBackupSize:(id)size;
+ (id)_getOfferDescriptionFromRequestType:(int64_t)type;
+ (id)_remoteBackupSizeOperationQueue;
+ (id)base64EncodeString:(id)string;
+ (id)defaultStringValueForKey:(id)key;
+ (id)defaultValueForKey:(id)key;
+ (id)dictionaryForKey:(id)key from:(id)from;
+ (id)findPlaceholdersInString:(id)string;
+ (id)followUpGroupIdentifierForString:(id)string;
+ (id)followUpIdentifierPrefixForRequestType:(int64_t)type;
+ (id)getStringFromNumber:(id)number;
+ (id)lastUpdatedForReason:(id)reason decayUntil:(double)until;
+ (id)numberForKey:(id)key from:(id)from;
+ (id)parseTemplates:(id)templates;
+ (id)replaceWordsIn:(id)in with:(id)with;
+ (id)standardDateFormat:(unint64_t)format;
+ (id)stringFromTemplates:(id)templates key:(id)key;
+ (id)usedCapacityForVolume:(id)volume;
+ (id)userDefaultsDictionaryForKey:(id)key;
+ (id)userDefaultsObjectForKey:(id)key;
+ (id)userDefaultsStringForKey:(id)key;
+ (int64_t)_getOfferRequestTypeFromOptions:(id)options bundleId:(id)id isBuddy:(BOOL)buddy;
+ (int64_t)_offerRequestTypeForStub:(id)stub;
+ (void)appLaunchLinkTrackerSetLastShownDate:(id)date forBundleID:(id)d;
+ (void)bubbleBannerTrackLastDismissed:(id)dismissed forReason:(id)reason;
+ (void)getOriginalPhotosSizeWithCompletion:(id)completion;
+ (void)remoteBackupSizeForAccount:(id)account timeoutInSeconds:(double)seconds completion:(id)completion;
+ (void)setUserDefaultsObject:(id)object forKey:(id)key;
@end

@implementation _ICQHelperFunctions

+ (id)replaceWordsIn:(id)in with:(id)with
{
  v21 = *MEMORY[0x277D85DE8];
  inCopy = in;
  withCopy = with;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [withCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      v11 = inCopy;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(withCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        v13 = [withCopy objectForKey:v12];
        inCopy = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = inCopy;
      }

      while (v8 != v10);
      v8 = [withCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return inCopy;
}

+ (id)stringFromTemplates:(id)templates key:(id)key
{
  keyCopy = key;
  templatesCopy = templates;
  v7 = [templatesCopy objectForKeyedSubscript:keyCopy];

  if (v7)
  {
    v8 = templatesCopy;
    v9 = keyCopy;
  }

  else
  {
    v9 = @"default";
    v8 = templatesCopy;
  }

  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

+ (id)findPlaceholdersInString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy containsString:@"%$"])
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v5 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

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

+ (BOOL)userDefaultsBoolValueForKey:(id)key
{
  v3 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:keyCopy];

  return v6;
}

+ (void)setUserDefaultsObject:(id)object forKey:(id)key
{
  v5 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  objectCopy = object;
  standardUserDefaults = [v5 standardUserDefaults];
  [standardUserDefaults setObject:objectCopy forKey:keyCopy];
}

+ (id)userDefaultsObjectForKey:(id)key
{
  v3 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:keyCopy];

  return v6;
}

+ (id)userDefaultsDictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [self userDefaultsObjectForKey:keyCopy];
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

+ (id)userDefaultsStringForKey:(id)key
{
  keyCopy = key;
  v5 = [self userDefaultsObjectForKey:keyCopy];
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

+ (BOOL)defaultKeyExists:(id)exists
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(exists, @"com.apple.cloud.quota", &keyExistsAndHasValidFormat);
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

+ (id)defaultValueForKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, @"com.apple.cloud.quota");

  return v3;
}

+ (id)defaultStringValueForKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [_ICQHelperFunctions defaultValueForKey:keyCopy];
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
        v10 = keyCopy;
        _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "defaults key %@ is not of correct type", &v9, 0xCu);
      }
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)parseTemplates:(id)templates
{
  v23 = *MEMORY[0x277D85DE8];
  templatesCopy = templates;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = templatesCopy;
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

+ (id)standardDateFormat:(unint64_t)format
{
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:format];
  [v4 setTimeStyle:format];
  dateFormat = [v4 dateFormat];

  return dateFormat;
}

+ (id)getStringFromNumber:(id)number
{
  numberCopy = number;
  v4 = objc_opt_new();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v4 setLocale:currentLocale];

  [v4 setNumberStyle:1];
  [v4 setUsesGroupingSeparator:1];
  [v4 setMaximumFractionDigits:0];
  v6 = [v4 stringFromNumber:numberCopy];

  return v6;
}

+ (id)base64EncodeString:(id)string
{
  if (string)
  {
    v3 = [string dataUsingEncoding:4];
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

+ (BOOL)_checkOptions:(id)options forKey:(id)key
{
  v4 = [options objectForKeyedSubscript:key];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (int64_t)_getOfferRequestTypeFromOptions:(id)options bundleId:(id)id isBuddy:(BOOL)buddy
{
  buddyCopy = buddy;
  optionsCopy = options;
  idCopy = id;
  v10 = [self _requestedFetchOffersInOptions:optionsCopy];
  v11 = [self _requestedPremiumOfferInOptions:optionsCopy];
  if ([self _requestedDefaultOfferInOptions:optionsCopy])
  {
    v12 = [self _requestedEventOfferInOptions:optionsCopy];
LABEL_4:
    v10 = 1;
    v14 = 1;
    goto LABEL_6;
  }

  v13 = [idCopy isEqualToString:@"com.apple.icq"];
  v12 = [self _requestedEventOfferInOptions:optionsCopy];
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

  if (buddyCopy)
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

+ (int64_t)_offerRequestTypeForStub:(id)stub
{
  stubCopy = stub;
  if ([stubCopy isDefaultOffer])
  {
    v4 = 1;
  }

  else if ([stubCopy isPremiumOffer])
  {
    v4 = 2;
  }

  else if ([stubCopy isBuddyOffer])
  {
    v4 = 4;
  }

  else if ([stubCopy isEventOffer])
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (id)followUpIdentifierPrefixForRequestType:(int64_t)type
{
  v3 = @"com.apple.iCloudQuotaDaemon.ICQFollowupRegular";
  if (type == 5)
  {
    v3 = @"com.apple.iCloudQuotaDaemon.ICQFollowupEvent";
  }

  if (type == 2)
  {
    return @"com.apple.iCloudQuotaDaemon.ICQFollowupPremium";
  }

  else
  {
    return v3;
  }
}

+ (id)_getOfferDescriptionFromRequestType:(int64_t)type
{
  if (type > 5)
  {
    return @"premium";
  }

  else
  {
    return off_27A651748[type];
  }
}

+ (id)_darwinNotificationNameForRequestType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_27A651778[type - 1];
  }
}

+ (BOOL)isBackupEnabledForAccount:(id)account accountStore:(id)store
{
  storeCopy = store;
  accountCopy = account;
  accountStore = [accountCopy accountStore];

  if (accountStore)
  {
    LOBYTE(v8) = [accountCopy isEnabledForDataclass:*MEMORY[0x277CB90C8]];
  }

  else
  {
    v9 = [storeCopy enabledDataclassesForAccount:accountCopy];

    v8 = [v9 containsObject:*MEMORY[0x277CB90C8]];
    accountCopy = v9;
  }

  return v8;
}

+ (BOOL)isPhotosLibraryIncludedInBackupForAccount:(id)account
{
  v3 = MEMORY[0x277D28A40];
  accountCopy = account;
  v5 = [v3 alloc];
  personaIdentifier = [accountCopy personaIdentifier];

  v7 = [v5 initWithDelegate:0 eventQueue:0 personaIdentifier:personaIdentifier];
  LOBYTE(accountCopy) = [v7 isBackupEnabledForDomainName:@"CameraRollDomain"];

  return accountCopy;
}

+ (void)getOriginalPhotosSizeWithCompletion:(id)completion
{
  completionCopy = completion;
  systemLibraryURL = [MEMORY[0x277D3B238] systemLibraryURL];
  v6 = completionCopy;
  v5 = completionCopy;
  PLRequestSizeOfOriginalResourcesForLibrary();
}

+ (id)usedCapacityForVolume:(id)volume
{
  v33[2] = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  v4 = ICQUsedDiskSpaceForVolume(volumeCopy);
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:volumeCopy];
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
    unsignedLongLongValue = [v11 unsignedLongLongValue];
    if (unsignedLongLongValue <= [v12 unsignedLongLongValue])
    {
      unsignedLongLongValue2 = [v12 unsignedLongLongValue];
      v14 = unsignedLongLongValue2 - [v11 unsignedLongLongValue];
      if (v14 > v4)
      {
        v18 = _ICQGetLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
          *buf = 138543874;
          v28 = volumeCopy;
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
      v28 = volumeCopy;
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

+ (void)remoteBackupSizeForAccount:(id)account timeoutInSeconds:(double)seconds completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
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
  v13 = accountCopy;
  v29 = &v31;
  selfCopy = self;
  v27 = v13;
  v14 = completionCopy;
  v28 = v14;
  v15 = [v12 blockOperationWithBlock:v26];
  v16 = v32[5];
  v32[5] = v15;

  v17 = dispatch_time(0, (seconds * 1000000000.0));
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __78___ICQHelperFunctions_remoteBackupSizeForAccount_timeoutInSeconds_completion___block_invoke_2;
  v23 = &unk_27A651708;
  v25 = &v31;
  v18 = v14;
  v24 = v18;
  dispatch_after(v17, v11, &v20);
  _remoteBackupSizeOperationQueue = [self _remoteBackupSizeOperationQueue];
  [_remoteBackupSizeOperationQueue addOperation:v32[5]];

  _Block_object_dispose(&v31, 8);
}

+ (id)_fetchNextBackupSize:(id)size
{
  v37 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v27 = 0;
  v4 = [sizeCopy getBackupListWithError:&v27];
  v5 = v27;
  backupDeviceUUID = [sizeCopy backupDeviceUUID];
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
        backupUUID = [v12 backupUUID];
        v14 = [backupUUID isEqualToString:backupDeviceUUID];

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

  snapshots = [v9 snapshots];
  v16 = [snapshots sortedArrayUsingComparator:&__block_literal_global_1];

  v17 = _ICQGetLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v29 = v8;
    v30 = 2112;
    v31 = backupDeviceUUID;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v16;
    _os_log_debug_impl(&dword_275572000, v17, OS_LOG_TYPE_DEBUG, "Backups array %@, current device uuid %@, matchingBackup %@, available snapshots %@", buf, 0x2Au);
  }

  v18 = MEMORY[0x277CCABB0];
  lastObject = [v16 lastObject];
  v20 = [v18 numberWithLongLong:{objc_msgSend(lastObject, "estimatedRestoreSize")}];

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

+ (id)dictionaryForKey:(id)key from:(id)from
{
  v4 = [from objectForKeyedSubscript:key];
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

+ (id)numberForKey:(id)key from:(id)from
{
  v4 = [from objectForKeyedSubscript:key];
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

+ (id)followUpGroupIdentifierForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"FLGroupIdentifierDevice"])
  {
    v4 = MEMORY[0x277CFE440];
  }

  else if ([stringCopy isEqualToString:@"FLGroupIdentifierNoGroup"])
  {
    v4 = MEMORY[0x277CFE450];
  }

  else if ([stringCopy isEqualToString:@"FLGroupIdentifierAppleServices"])
  {
    v4 = MEMORY[0x277CFE438];
  }

  else
  {
    v5 = [stringCopy isEqualToString:@"FLGroupIdentifierNewDeviceOutreach"];
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

+ (void)appLaunchLinkTrackerSetLastShownDate:(id)date forBundleID:(id)d
{
  dCopy = d;
  dateCopy = date;
  v7 = +[ICQAppLaunchLinkTracker shared];
  [v7 setLastShownDate:dateCopy forBundleID:dCopy];
}

+ (void)bubbleBannerTrackLastDismissed:(id)dismissed forReason:(id)reason
{
  dismissedCopy = dismissed;
  reasonCopy = reason;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v8 = +[ICQBubbleBannerTracker shared];
    [v8 trackLastDismissed:aa_primaryAppleAccount date:dismissedCopy reason:reasonCopy];
  }
}

+ (id)lastUpdatedForReason:(id)reason decayUntil:(double)until
{
  reasonCopy = reason;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v8 = +[ICQBubbleBannerTracker shared];
    v9 = [v8 account:aa_primaryAppleAccount lastUpdated:reasonCopy decayUntil:until];
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