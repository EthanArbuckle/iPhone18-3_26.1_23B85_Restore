@interface TUSubtitleProvider
- (TUSubtitleProvider)initWithMetadataCache:(id)a3 callProviderManager:(id)a4;
- (id)callProviderForRecentCall:(id)a3;
- (id)localizedSubtitleForRecentCall:(id)a3 handle:(id)a4 contact:(id)a5;
@end

@implementation TUSubtitleProvider

- (TUSubtitleProvider)initWithMetadataCache:(id)a3 callProviderManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TUSubtitleProvider;
  v9 = [(TUSubtitleProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_callProviderManager, a4);
    objc_storeStrong(&v10->_metadataCache, a3);
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    callProviderCache = v10->_callProviderCache;
    v10->_callProviderCache = v11;
  }

  return v10;
}

- (id)localizedSubtitleForRecentCall:(id)a3 handle:(id)a4 contact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Using TUSubtitleProvider", buf, 2u);
  }

  v12 = [(TUSubtitleProvider *)self callProviderForRecentCall:v8];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_18;
  }

  if ([v12 isFaceTimeProvider])
  {
    v14 = [v8 mediaType];
    v15 = TUBundle();
    v16 = v15;
    if (v14 == 2)
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
    v22 = [v8 mediaType];
    if (v22 == 1)
    {
      v23 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_AUDIO";
      goto LABEL_20;
    }

    if (v22 == 2)
    {
      v23 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_VIDEO";
LABEL_20:
      v24 = MEMORY[0x1E696AEC0];
      v16 = TUBundle();
      v25 = [v16 localizedStringForKey:v23 value:&stru_1F098C218 table:@"TelephonyUtilities"];
      v26 = [v13 localizedName];
      v19 = [v24 stringWithFormat:v25, v26];

LABEL_35:
      goto LABEL_36;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_36;
  }

  if (!v9 || (+[TUHandle normalizedHandleWithDestinationID:](TUHandle, "normalizedHandleWithDestinationID:", v9), v18 = objc_claimAutoreleasedReturnValue(), [v10 tu_localizedDisplayStringForHandle:v18], v19 = objc_claimAutoreleasedReturnValue(), v18, !v19))
  {
    if (![v8 isJunk])
    {
      goto LABEL_23;
    }

    v20 = [v8 junkIdentificationCategory];
    if (v20)
    {
      v21 = [v8 junkIdentificationCategory];
    }

    else
    {
      v21 = @"MAYBE_JUNK";
    }

    v27 = TUBundle();
    v19 = [v27 localizedStringForKey:v21 value:&stru_1F098C218 table:@"TelephonyUtilities"];

    if (!v19)
    {
LABEL_23:
      v28 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:v8];
      v29 = [v28 firstObject];

      if (v29)
      {
        v30 = [(TUSubtitleProvider *)self metadataCache];
        v16 = [v30 metadataForDestinationID:v29];

        if (v16)
        {
          if (([v8 callerIdIsBlocked] & 1) != 0 || (objc_msgSend(v16, "metadataForProvider:", objc_opt_class()), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            if (([v8 callerIdIsBlocked] & 1) != 0 || (objc_msgSend(v16, "metadataForProvider:", objc_opt_class()), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
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

- (id)callProviderForRecentCall:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 serviceProvider];
  v6 = [(TUSubtitleProvider *)self callProviderManager];
  if (v5)
  {
    v7 = [(TUSubtitleProvider *)self callProviderCache];
    v8 = [v7 objectForKey:v5];

    if (v8)
    {
      goto LABEL_9;
    }

    v9 = [v6 providerForRecentCall:v4];
    if (v9)
    {
      v8 = v9;
      v10 = [(TUSubtitleProvider *)self callProviderCache];
      [v10 setObject:v8 forKey:v5];

      goto LABEL_9;
    }

    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Could not retrieve a call provider for the specified recent call: %@", &v14, 0xCu);
    }
  }

  v8 = 0;
LABEL_9:

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

@end