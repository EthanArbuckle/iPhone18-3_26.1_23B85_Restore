@interface TUSubtitleProvider
- (TUSubtitleProvider)initWithMetadataCache:(id)cache callProviderManager:(id)manager;
- (id)callProviderForRecentCall:(id)call;
- (id)localizedSubtitleForRecentCall:(id)call handle:(id)handle contact:(id)contact;
@end

@implementation TUSubtitleProvider

- (TUSubtitleProvider)initWithMetadataCache:(id)cache callProviderManager:(id)manager
{
  cacheCopy = cache;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = TUSubtitleProvider;
  v9 = [(TUSubtitleProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_callProviderManager, manager);
    objc_storeStrong(&v10->_metadataCache, cache);
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    callProviderCache = v10->_callProviderCache;
    v10->_callProviderCache = v11;
  }

  return v10;
}

- (id)localizedSubtitleForRecentCall:(id)call handle:(id)handle contact:(id)contact
{
  callCopy = call;
  handleCopy = handle;
  contactCopy = contact;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Using TUSubtitleProvider", buf, 2u);
  }

  v12 = [(TUSubtitleProvider *)self callProviderForRecentCall:callCopy];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_18;
  }

  if ([v12 isFaceTimeProvider])
  {
    mediaType = [callCopy mediaType];
    v15 = TUBundle();
    v16 = v15;
    if (mediaType == 2)
    {
      v17 = @"RECENTS_FACETIME_VIDEO";
    }

    else
    {
      v17 = @"RECENTS_FACETIME_AUDIO";
    }

    v19 = [v15 localizedStringForKey:v17 value:&stru_1F098C218 table:@"TelephonyUtilities"];
    goto LABEL_35;
  }

  if (![v13 isTelephonyProvider])
  {
    mediaType2 = [callCopy mediaType];
    if (mediaType2 == 1)
    {
      v23 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_AUDIO";
      goto LABEL_20;
    }

    if (mediaType2 == 2)
    {
      v23 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_VIDEO";
LABEL_20:
      v24 = MEMORY[0x1E696AEC0];
      v16 = TUBundle();
      v25 = [v16 localizedStringForKey:v23 value:&stru_1F098C218 table:@"TelephonyUtilities"];
      localizedName = [v13 localizedName];
      v19 = [v24 stringWithFormat:v25, localizedName];

LABEL_35:
      goto LABEL_36;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_36;
  }

  if (!handleCopy || (+[TUHandle normalizedHandleWithDestinationID:](TUHandle, "normalizedHandleWithDestinationID:", handleCopy), v18 = objc_claimAutoreleasedReturnValue(), [contactCopy tu_localizedDisplayStringForHandle:v18], v19 = objc_claimAutoreleasedReturnValue(), v18, !v19))
  {
    if (![callCopy isJunk])
    {
      goto LABEL_23;
    }

    junkIdentificationCategory = [callCopy junkIdentificationCategory];
    if (junkIdentificationCategory)
    {
      junkIdentificationCategory2 = [callCopy junkIdentificationCategory];
    }

    else
    {
      junkIdentificationCategory2 = @"MAYBE_JUNK";
    }

    v27 = TUBundle();
    v19 = [v27 localizedStringForKey:junkIdentificationCategory2 value:&stru_1F098C218 table:@"TelephonyUtilities"];

    if (!v19)
    {
LABEL_23:
      v28 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:callCopy];
      firstObject = [v28 firstObject];

      if (firstObject)
      {
        metadataCache = [(TUSubtitleProvider *)self metadataCache];
        v16 = [metadataCache metadataForDestinationID:firstObject];

        if (v16)
        {
          if (([callCopy callerIdIsBlocked] & 1) != 0 || (objc_msgSend(v16, "metadataForProvider:", objc_opt_class()), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            if (([callCopy callerIdIsBlocked] & 1) != 0 || (objc_msgSend(v16, "metadataForProvider:", objc_opt_class()), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v31 = [v16 metadataForProvider:objc_opt_class()];
              if (!v31)
              {
                v31 = [v16 metadataForProvider:objc_opt_class()];
              }
            }
          }

          v19 = v31;
          goto LABEL_34;
        }
      }

      else
      {
        v16 = 0;
      }

      v19 = 0;
LABEL_34:

      goto LABEL_35;
    }
  }

LABEL_36:
  if (![v19 length])
  {
    v32 = TUBundle();
    v33 = [v32 localizedStringForKey:@"UNKNOWN_LABEL" value:&stru_1F098C218 table:@"TelephonyUtilities"];

    v19 = v33;
  }

  return v19;
}

- (id)callProviderForRecentCall:(id)call
{
  v16 = *MEMORY[0x1E69E9840];
  callCopy = call;
  serviceProvider = [callCopy serviceProvider];
  callProviderManager = [(TUSubtitleProvider *)self callProviderManager];
  if (serviceProvider)
  {
    callProviderCache = [(TUSubtitleProvider *)self callProviderCache];
    v8 = [callProviderCache objectForKey:serviceProvider];

    if (v8)
    {
      goto LABEL_9;
    }

    v9 = [callProviderManager providerForRecentCall:callCopy];
    if (v9)
    {
      v8 = v9;
      callProviderCache2 = [(TUSubtitleProvider *)self callProviderCache];
      [callProviderCache2 setObject:v8 forKey:serviceProvider];

      goto LABEL_9;
    }

    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = callCopy;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Could not retrieve a call provider for the specified recent call: %@", &v14, 0xCu);
    }
  }

  v8 = 0;
LABEL_9:

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

@end