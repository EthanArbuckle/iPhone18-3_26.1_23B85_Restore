@interface WLKChannelDetails
+ (void)sui_fetchSeasonTitlesSettingWithCompletionHandler:(id)a3;
- (NSString)description;
- (NSURL)appStoreURL;
- (WLKChannelDetails)init;
- (WLKChannelDetails)initWithDictionary:(id)a3;
- (id)appIconURLForSize:(CGSize)a3;
- (id)sui_channelName;
- (id)sui_seasonEpisodeLabel:(BOOL)a3 seasonTitleAvailable:(BOOL)a4 seasonNumber:(id)a5 episodeNumber:(id)a6;
@end

@implementation WLKChannelDetails

- (id)sui_channelName
{
  v3 = [(WLKChannelDetails *)self title];
  if ([(WLKChannelDetails *)self isiTunes])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v5 = [v4 localizedStringForKey:@"ITUNES_CHANNEL_NAME" value:&stru_288206BC0 table:@"WatchListKit"];

    v3 = v5;
  }

  return v3;
}

+ (void)sui_fetchSeasonTitlesSettingWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[WLKConfigurationManager sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__WLKChannelDetails_SearchUIAdditions__sui_fetchSeasonTitlesSettingWithCompletionHandler___block_invoke;
  v6[3] = &unk_279E5E8A8;
  v7 = v3;
  v5 = v3;
  [v4 fetchConfigurationWithCompletionHandler:v6];
}

void __90__WLKChannelDetails_SearchUIAdditions__sui_fetchSeasonTitlesSettingWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WLKSystemLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __90__WLKChannelDetails_SearchUIAdditions__sui_fetchSeasonTitlesSettingWithCompletionHandler___block_invoke_cold_1(v5, v6);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [a2 features];
    [v7 wlk_BOOLForKey:@"seasonTitles" defaultValue:0];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)sui_seasonEpisodeLabel:(BOOL)a3 seasonTitleAvailable:(BOOL)a4 seasonNumber:(id)a5 episodeNumber:(id)a6
{
  v7 = a4;
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (v8 && v7)
  {
    if (v10)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
      v14 = [v13 localizedStringForKey:@"EPISODE_FORMAT" value:&stru_288206BC0 table:@"WatchListKit"];
      [v12 stringWithFormat:v14, v11, v21];
      v16 = LABEL_8:;

      goto LABEL_15;
    }

    v17 = WLKSystemLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "WLKChannelDetails+SearchUIAdditions - WLK episodeNumber is nil";
      v19 = buf;
      goto LABEL_13;
    }
  }

  else
  {
    if (v9 && v10)
    {
      v15 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
      v14 = [v13 localizedStringForKey:@"SEASON_EPISODE_FORMAT" value:&stru_288206BC0 table:@"WatchListKit"];
      [v15 stringWithFormat:v14, v9, v11];
      goto LABEL_8;
    }

    v17 = WLKSystemLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v18 = "WLKChannelDetails+SearchUIAdditions - WLK seasonNumber or episodeNumber is nil";
      v19 = &v22;
LABEL_13:
      _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
    }
  }

  v16 = &stru_288206BC0;
LABEL_15:

  return v16;
}

- (id)appIconURLForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(WLKChannelDetails *)self images];
  v6 = [v5 bestArtworkVariantOfType:10 forSize:{width, height}];
  v7 = [v6 artworkURLForSize:@"png" format:{width, height}];

  return v7;
}

- (WLKChannelDetails)initWithDictionary:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v56.receiver = self;
  v56.super_class = WLKChannelDetails;
  v5 = [(WLKChannelDetails *)&v56 init];
  if (v5)
  {
    v6 = [v4 wlk_stringForKey:@"id"];
    v7 = [v6 copy];
    channelID = v5->_channelID;
    v5->_channelID = v7;

    v9 = [v4 wlk_stringForKey:@"title"];
    v10 = [v9 copy];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 wlk_stringForKey:@"name"];
    v13 = [v12 copy];
    name = v5->_name;
    v5->_name = v13;

    v15 = [v4 wlk_arrayForKey:@"appAdamIds"];
    v16 = [v15 copy];
    appAdamIDs = v5->_appAdamIDs;
    v5->_appAdamIDs = v16;

    v18 = [v4 wlk_arrayForKey:@"appBundleIds"];
    v19 = [v18 copy];
    appBundleIDs = v5->_appBundleIDs;
    v5->_appBundleIDs = v19;

    v21 = [v4 wlk_stringForKey:@"appName"];
    v22 = [v21 copy];
    appName = v5->_appName;
    v5->_appName = v22;

    v24 = [v4 wlk_stringForKey:@"appStoreUrl"];
    v25 = [v24 copy];
    appStoreURLString = v5->_appStoreURLString;
    v5->_appStoreURLString = v25;

    v5->_subscribed = [v4 wlk_BOOLForKey:@"isSubscribed" defaultValue:0];
    v5->_itunes = [v4 wlk_BOOLForKey:@"isItunes" defaultValue:0];
    v5->_firstParty = [v4 wlk_BOOLForKey:@"isFirstParty" defaultValue:0];
    v5->_watchListEnabled = [v4 wlk_BOOLForKey:@"isWatchlistEnabled" defaultValue:0];
    v27 = [WLKArtworkVariantListing alloc];
    v28 = [v4 wlk_dictionaryForKey:@"images"];
    v29 = [(WLKArtworkVariantListing *)v27 initWithArtworkDictionary:v28];
    images = v5->_images;
    v5->_images = v29;

    v31 = [v4 wlk_dictionaryForKey:@"rateLimit"];
    v32 = [v31 copy];
    rateLimit = v5->_rateLimit;
    v5->_rateLimit = v32;

    v5->_shouldTrackPlayActivity = [v4 wlk_BOOLForKey:@"shouldTrackPlayActivity" defaultValue:1];
    v5->_consented = [v4 wlk_BOOLForKey:@"isConsented" defaultValue:0];
    v5->_apSubscription = [v4 wlk_BOOLForKey:@"isApSubscription" defaultValue:0];
    v34 = [v4 wlk_stringForKey:@"minWatchlistAppVersion"];
    minRequiredAppVersion = v5->_minRequiredAppVersion;
    v5->_minRequiredAppVersion = v34;

    v36 = [v4 wlk_numberForKey:@"channelType"];
    v37 = [v36 unsignedIntValue];
    v5->_channelType = v37;
    if (v5->_itunes || v37 == 1 || ([v4 wlk_numberForKey:@"isInstalled"], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqual:", &unk_288222D28), v38, v39))
    {
      v5->_appInstalled = 1;
    }

    else
    {
      v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v41 = +[WLKAppLibrary defaultAppLibrary];
      v42 = [v41 allAppBundleIdentifiers];
      [v40 addObjectsFromArray:v42];

      v43 = +[WLKAppLibrary defaultAppLibrary];
      v44 = [v43 _nonConformingAppBundleIdentifiers];
      [v40 addObjectsFromArray:v44];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v45 = v5->_appBundleIDs;
      v46 = [(NSArray *)v45 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v53;
        while (2)
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v53 != v48)
            {
              objc_enumerationMutation(v45);
            }

            if ([v40 containsObject:{*(*(&v52 + 1) + 8 * i), v52}])
            {
              v5->_appInstalled = 1;
              goto LABEL_16;
            }
          }

          v47 = [(NSArray *)v45 countByEnumeratingWithState:&v52 objects:v57 count:16];
          if (v47)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }

  v50 = *MEMORY[0x277D85DE8];
  return v5;
}

- (WLKChannelDetails)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKChannelDetailsInitException" format:@"-init not supported"];

  return 0;
}

- (NSURL)appStoreURL
{
  if (self->_appStoreURLString)
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = WLKChannelDetails;
  v3 = [(WLKChannelDetails *)&v9 description];
  v4 = [v3 mutableCopy];

  channelID = self->_channelID;
  title = self->_title;
  v7 = [(NSArray *)self->_appBundleIDs componentsJoinedByString:@", "];
  [v4 appendFormat:@" %@ - ID: %@ - Bundles: %@", title, channelID, v7];

  return v4;
}

void __90__WLKChannelDetails_SearchUIAdditions__sui_fetchSeasonTitlesSettingWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKChannelDetails+SearchUIAdditions - WLK init config fetch error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end