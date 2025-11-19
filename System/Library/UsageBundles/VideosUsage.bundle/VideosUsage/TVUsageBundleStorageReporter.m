@interface TVUsageBundleStorageReporter
- (TVUsageBundleStorageReporter)init;
- (float)sizeForCategory:(id)a3;
- (id)dataSourceForCategory:(id)a3 indexPath:(id)a4;
- (id)usageBundleApps;
- (unint64_t)_sizeForCategoryIdentifier:(id)a3;
- (unint64_t)_totalSizeForAllDownloads;
- (unint64_t)totalSize;
- (void)dealloc;
- (void)usageBundleApp:(id)a3 willDisplaySpecifier:(id *)a4;
@end

@implementation TVUsageBundleStorageReporter

- (TVUsageBundleStorageReporter)init
{
  v14.receiver = self;
  v14.super_class = TVUsageBundleStorageReporter;
  v2 = [(TVUsageBundleStorageReporter *)&v14 init];
  if (v2)
  {
    [MPMediaQuery setFilteringDisabled:1];
    v3 = +[MPMediaLibrary deviceMediaLibrary];
    v4 = [v3 libraryDataProvider];
    [MPMediaLibrary reloadDynamicPropertiesForLibraryDataProvider:v4];

    v2->_shouldShowVideosiTunesU = PSIsBundleIDInstalled() ^ 1;
    v2->_preferencesNotifyToken = -1;
    objc_initWeak(&location, v2);
    v5 = &_dispatch_main_q;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1F20;
    v11 = &unk_C428;
    objc_copyWeak(&v12, &location);
    v6 = notify_register_dispatch("com.apple.mobileipod.librarychanged", &v2->_preferencesNotifyToken, &_dispatch_main_q, &v8);

    if (v6)
    {
      NSLog(@"Unable to register for library change notifications", v8, v9, v10, v11);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_preferencesNotifyToken))
  {
    notify_cancel(self->_preferencesNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = TVUsageBundleStorageReporter;
  [(TVUsageBundleStorageReporter *)&v3 dealloc];
}

- (id)usageBundleApps
{
  *&v3 = [(TVUsageBundleStorageReporter *)self _totalSizeForAllDownloads];
  v4 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:@"com.apple.VideosUsage" withTotalSize:v3];
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_usageBundleApp, v4);
  objc_sync_exit(v5);

  LODWORD(v5) = WLKIsRegulatedSKU();
  v6 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
  v7 = v6;
  if (v5)
  {
    v8 = @"BUNDLE_NAME_VIDEOS";
  }

  else
  {
    v8 = @"BUNDLE_NAME_TV";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_C6C0 table:@"VideosUsage"];
  [v4 setName:v9];

  v24 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
  v23 = [v24 localizedStringForKey:@"MOVIES" value:&stru_C6C0 table:@"VideosUsage"];
  v22 = [PSUsageBundleCategory categoryNamed:v23 withIdentifier:@"CATEGORY_MOVIES" forUsageBundleApp:v4];
  v26[0] = v22;
  v21 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
  v10 = [v21 localizedStringForKey:@"TV_SHOWS" value:&stru_C6C0 table:@"VideosUsage"];
  v11 = [PSUsageBundleCategory categoryNamed:v10 withIdentifier:@"CATEGORY_TV_SHOWS" forUsageBundleApp:v4];
  v26[1] = v11;
  v12 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
  v13 = [v12 localizedStringForKey:@"HOME_VIDEOS" value:&stru_C6C0 table:@"VideosUsage"];
  v14 = [PSUsageBundleCategory categoryNamed:v13 withIdentifier:@"CATEGORY_HOME_VIDEOS" forUsageBundleApp:v4];
  v26[2] = v14;
  v15 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
  v16 = [v15 localizedStringForKey:@"ITUNESU_VIDEOS" value:&stru_C6C0 table:@"VideosUsage"];
  v17 = [PSUsageBundleCategory categoryNamed:v16 withIdentifier:@"CATEGORY_ITUNESU_VIDEOS" forUsageBundleApp:v4];
  v26[3] = v17;
  v18 = [NSArray arrayWithObjects:v26 count:4];

  [v4 setCategories:v18];
  v25 = v4;
  v19 = [NSArray arrayWithObjects:&v25 count:1];

  return v19;
}

- (float)sizeForCategory:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(TVUsageBundleStorageReporter *)self _sizeForCategoryIdentifier:v4];

  return v5;
}

- (void)usageBundleApp:(id)a3 willDisplaySpecifier:(id *)a4
{
  v5 = [a3 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.VideosUsage"];

  if (v6)
  {
    v7 = *a4;
    v8 = PSLazyIconLoading;
    v10 = v7;
    [v10 setProperty:&__kCFBooleanTrue forKey:v8];
    if (WLKIsRegulatedSKU())
    {
      v9 = @"com.apple.videos";
    }

    else
    {
      v9 = @"com.apple.tv";
    }

    [v10 setProperty:v9 forKey:PSLazyIconAppID];
  }
}

- (id)dataSourceForCategory:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MPMediaItemPropertyTitle;
  v8 = [v6 length];
  v9 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  if ([v5 isEqualToString:@"CATEGORY_MOVIES"])
  {
    v10 = +[MPMediaQuery moviesQuery];
LABEL_3:
    v11 = v10;
    if (v8 > 1)
    {
LABEL_4:

      v12 = 0;
      v13 = 0;
      v11 = 0;
LABEL_31:
      v32 = 1;
      goto LABEL_32;
    }

    v12 = 0;
    v24 = 0;
    v13 = 0;
    goto LABEL_26;
  }

  if ([v5 isEqualToString:@"CATEGORY_TV_SHOWS"])
  {
    v11 = +[MPMediaQuery tvShowsQuery];
    [v11 setGroupingType:8];
    v14 = MPMediaItemPropertySeriesName;

    if (v8 < 2)
    {
      v24 = 0;
      v12 = 0;
      v19 = 0;
      v13 = 1;
    }

    else
    {
      [v11 addFilterPredicate:v9];
      v13 = 1;
      [v11 setIgnoreRestrictionsPredicates:1];
      v15 = [v6 indexAtPosition:1];
      v16 = [v11 collections];
      [v16 objectAtIndex:v15];
      v17 = v35 = v9;
      v18 = [v17 representativeItem];

      v19 = v18;
      v20 = [v18 objectForKeyedSubscript:MPMediaItemPropertyArtistPersistentID];
      v21 = [MPMediaPropertyPredicate predicateWithValue:v20 forProperty:MPMediaItemPropertyArtistPersistentID];

      v22 = [v11 copy];
      [v22 addFilterPredicate:v21];
      [v22 setGroupingType:9];
      v23 = MPMediaItemPropertySeasonName;

      if (v8 == &dword_0 + 2)
      {
        v24 = 0;
        v14 = v23;
        v11 = v22;
        v12 = &stru_C4D0;
        v9 = v35;
      }

      else
      {
        v14 = v23;
        [v22 addFilterPredicate:v35];
        v30 = [v22 collections];
        v31 = [v30 objectAtIndex:{objc_msgSend(v6, "indexAtPosition:", 2)}];
        v11 = [v31 itemsQuery];

        [v11 addFilterPredicate:v35];
        v9 = v35;
        if (v8 < 4)
        {
          v13 = 0;
        }

        else
        {

          v13 = 0;
          v11 = 0;
        }

        v12 = &stru_C4F0;
        v24 = &stru_C530;
      }
    }

    goto LABEL_25;
  }

  if (![v5 isEqualToString:@"CATEGORY_ITUNESU_VIDEOS"])
  {
    if (![v5 isEqualToString:@"CATEGORY_HOME_VIDEOS"])
    {
      v12 = 0;
      v11 = 0;
      v13 = 1;
      goto LABEL_31;
    }

    v10 = +[MPMediaQuery homeVideosQuery];
    goto LABEL_3;
  }

  v11 = +[MPMediaQuery ITunesUQuery];
  [v11 addFilterPredicate:v9];
  v13 = 1;
  [v11 setGroupingType:1];
  v14 = MPMediaItemPropertyAlbumTitle;

  if (v8 < 2)
  {
    v12 = 0;
    v24 = 0;
LABEL_25:
    v7 = v14;
    goto LABEL_26;
  }

  v25 = v9;
  v26 = [v11 collections];
  v27 = [v26 objectAtIndex:{objc_msgSend(v6, "indexAtPosition:", 1)}];
  v28 = [v27 itemsQuery];

  v29 = v7;
  if (v8 != &dword_0 + 2)
  {
    v11 = v28;
    v9 = v25;
    goto LABEL_4;
  }

  v12 = 0;
  v24 = 0;
  v13 = 0;
  v7 = v29;
  v11 = v28;
  v9 = v25;
LABEL_26:
  if (!v11)
  {
    if (v24)
    {
      v33 = 0;
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  [v11 setIgnoreSystemFilterPredicates:1];
  [v11 setIgnoreRestrictionsPredicates:1];
  [v11 addFilterPredicate:v9];
  if (v24)
  {
    goto LABEL_34;
  }

  v32 = 0;
LABEL_32:
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_2FA0;
  v36[3] = &unk_C450;
  v37 = v7;
  v38 = "artworkCatalog";
  v7 = v37;
  v24 = objc_retainBlock(v36);

  if (v32)
  {
    v33 = 0;
    goto LABEL_35;
  }

LABEL_34:
  v33 = [[TVUsageDataSource alloc] initWithQuery:v11 entityType:v13 categoryIdentifier:v5 usageItemBlock:v24 usageHeaderBlock:v12];
LABEL_35:

  return v33;
}

- (unint64_t)totalSize
{
  v15[0] = @"CATEGORY_MOVIES";
  v15[1] = @"CATEGORY_TV_SHOWS";
  v15[2] = @"CATEGORY_ITUNESU_VIDEOS";
  v15[3] = @"CATEGORY_HOME_VIDEOS";
  [NSArray arrayWithObjects:v15 count:4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(TVUsageBundleStorageReporter *)self _sizeForCategoryIdentifier:*(*(&v10 + 1) + 8 * i), v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_sizeForCategoryIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"CATEGORY_MOVIES"])
  {
    v5 = +[MPMediaQuery moviesQuery];
  }

  else if ([v4 isEqualToString:@"CATEGORY_TV_SHOWS"])
  {
    v5 = +[MPMediaQuery tvShowsQuery];
  }

  else if ([v4 isEqualToString:@"CATEGORY_ITUNESU_VIDEOS"])
  {
    if (!self->_shouldShowVideosiTunesU)
    {
      goto LABEL_12;
    }

    v5 = +[MPMediaQuery videoITunesUQuery];
  }

  else
  {
    if (![v4 isEqualToString:@"CATEGORY_HOME_VIDEOS"])
    {
      goto LABEL_12;
    }

    v5 = +[MPMediaQuery homeVideosQuery];
  }

  v6 = v5;
  if (!v5)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  [v5 setIgnoreSystemFilterPredicates:1];
  [v6 setIgnoreRestrictionsPredicates:1];
  v7 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  [v6 addFilterPredicate:v7];
  v8 = [v6 valueForAggregateFunction:MPMediaQueryAggregateFunctionTotal onItemsForProperty:MPMediaItemPropertyFileSize];
  v9 = [v8 unsignedLongLongValue];

LABEL_13:
  return v9;
}

- (unint64_t)_totalSizeForAllDownloads
{
  v2 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  v3 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyIsMusicShow];
  v4 = +[MPMediaQuery moviesQuery];
  [v4 setIgnoreSystemFilterPredicates:1];
  [v4 setIgnoreRestrictionsPredicates:1];
  v5 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyIsITunesU];
  [v4 addFilterPredicate:v5];

  [v4 addFilterPredicate:v2];
  [v4 addFilterPredicate:v3];
  [v4 setGroupingType:0];
  v6 = MPMediaQueryAggregateFunctionTotal;
  v7 = MPMediaItemPropertyFileSize;
  v18 = [v4 valueForAggregateFunction:MPMediaQueryAggregateFunctionTotal onItemsForProperty:MPMediaItemPropertyFileSize];
  v8 = [v18 unsignedLongLongValue];
  v9 = +[MPMediaQuery tvShowsQuery];
  [v9 setIgnoreSystemFilterPredicates:1];
  [v9 setIgnoreRestrictionsPredicates:1];
  [v9 addFilterPredicate:v2];
  v19 = v3;
  [v9 addFilterPredicate:v3];
  [v9 setGroupingType:8];
  v10 = [v9 valueForAggregateFunction:v6 onItemsForProperty:v7];
  v11 = &v8[[v10 unsignedLongLongValue]];
  v12 = +[MPMediaQuery homeVideosQuery];
  [v12 setIgnoreSystemFilterPredicates:1];
  [v12 setIgnoreRestrictionsPredicates:1];
  [v12 addFilterPredicate:v2];
  [v12 setGroupingType:0];
  v13 = [v12 valueForAggregateFunction:v6 onItemsForProperty:v7];
  v14 = [v13 unsignedLongLongValue] + v11;
  if ((PSIsBundleIDInstalled() & 1) == 0)
  {
    v15 = +[MPMediaQuery videoITunesUQuery];
    [v15 setIgnoreSystemFilterPredicates:1];
    [v15 setIgnoreRestrictionsPredicates:1];
    [v15 addFilterPredicate:v2];
    [v15 setGroupingType:1];
    v16 = [v15 valueForAggregateFunction:v6 onItemsForProperty:v7];
    v14 = &v14[[v16 unsignedLongLongValue]];
  }

  return v14;
}

@end