@interface STRegionRatingsFetcher
- (id)_getRatingSystemTypeFrom:(id)a3;
- (void)loadRegionRatingsDataForStorefront:(id)a3 includeUnrated:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation STRegionRatingsFetcher

- (void)loadRegionRatingsDataForStorefront:(id)a3 includeUnrated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[AMSRatingsProviderTask createBagForSubProfile];
  v11 = [v8 lowercaseString];
  if (([v11 isEqualToString:v8] & 1) == 0)
  {
    v12 = +[STLog screentime];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "STRegionRatingsFetcher received storefront with uppercase characters: %@; using lowercase for AMS API: %@", buf, 0x16u);
    }
  }

  v13 = [AMSRatingsProviderTask alloc];
  if (v6)
  {
    v14 = [v13 initForAllMediaWithUnratedRatingsForStoreFront:v11 clientIdentifier:@"com.apple.ScreenTimeSettingsUI" useCase:1 bag:v10];
  }

  else
  {
    v14 = [v13 initForAllMediaWithStoreFront:v11 clientIdentifier:@"com.apple.ScreenTimeSettingsUI" useCase:1 bag:v10];
  }

  v15 = v14;
  if (_os_feature_enabled_impl())
  {
    [v15 setRegionalRatingSystem:1];
  }

  v16 = [v15 performTask];
  v17 = [v16 promiseWithTimeout:20.0];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009EE4C;
  v20[3] = &unk_1001A6400;
  v21 = v8;
  v22 = v9;
  v20[4] = self;
  v18 = v8;
  v19 = v9;
  [v17 addFinishBlock:v20];
}

- (id)_getRatingSystemTypeFrom:(id)a3
{
  v3 = a3;
  if (qword_1001E3968[0] != -1)
  {
    sub_1001218C8();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [qword_1001E3960 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
        if (v9)
        {
          v10 = v9;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end