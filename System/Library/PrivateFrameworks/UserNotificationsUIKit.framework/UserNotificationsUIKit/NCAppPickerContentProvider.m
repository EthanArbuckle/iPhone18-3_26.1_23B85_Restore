@interface NCAppPickerContentProvider
+ (NCAppPickerContentProvider)providerWithPreviousBundleIdentifiersSelection:(id)a3 numDaysForAverageNotificationCount:(id)a4 onMainQueue:(id)a5;
- (BOOL)isSelectedForIndex:(unint64_t)a3;
- (NSArray)selectedBundleIdentifiers;
- (id)_appForIndex:(unint64_t)a3;
- (id)_initWithATXDigestSetupEntities:(id)a3 containsMessageAndTimeSensitiveData:(BOOL)a4 numberOfDays:(unint64_t)a5 previousBundleIdentifiersSelection:(id)a6;
- (id)bundleIdentifierForIndex:(unint64_t)a3;
- (id)imageForIndex:(unint64_t)a3 size:(CGSize)a4;
- (id)nameForIndex:(unint64_t)a3;
- (unint64_t)avgNumberOfNotificationsForIndex:(unint64_t)a3;
- (void)sortByAvgNumberOfNotifications;
- (void)sortByName;
- (void)toggleSelectedForIndex:(unint64_t)a3;
@end

@implementation NCAppPickerContentProvider

+ (NCAppPickerContentProvider)providerWithPreviousBundleIdentifiersSelection:(id)a3 numDaysForAverageNotificationCount:(id)a4 onMainQueue:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CEB4C0];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __124__NCAppPickerContentProvider_providerWithPreviousBundleIdentifiersSelection_numDaysForAverageNotificationCount_onMainQueue___block_invoke;
  v15[3] = &unk_278372528;
  v16 = v7;
  v17 = v8;
  v12 = v8;
  v13 = v7;
  [v11 appsSortedByNotificationsReceivedInPreviousNumDaysRaw:v10 completionHandler:v15];

  return result;
}

void __124__NCAppPickerContentProvider_providerWithPreviousBundleIdentifiersSelection_numDaysForAverageNotificationCount_onMainQueue___block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__NCAppPickerContentProvider_providerWithPreviousBundleIdentifiersSelection_numDaysForAverageNotificationCount_onMainQueue___block_invoke_2;
  block[3] = &unk_278372500;
  v14 = a3;
  v10 = v7;
  v13 = a4;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __124__NCAppPickerContentProvider_providerWithPreviousBundleIdentifiersSelection_numDaysForAverageNotificationCount_onMainQueue___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [[NCAppPickerContentProvider alloc] _initWithATXDigestSetupEntities:*(a1 + 32) containsMessageAndTimeSensitiveData:*(a1 + 64) numberOfDays:*(a1 + 56) previousBundleIdentifiersSelection:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = *MEMORY[0x277D77DE0];
    if (os_log_type_enabled(*MEMORY[0x277D77DE0], OS_LOG_TYPE_ERROR))
    {
      __124__NCAppPickerContentProvider_providerWithPreviousBundleIdentifiersSelection_numDaysForAverageNotificationCount_onMainQueue___block_invoke_2_cold_1(v2);
    }
  }
}

- (id)_initWithATXDigestSetupEntities:(id)a3 containsMessageAndTimeSensitiveData:(BOOL)a4 numberOfDays:(unint64_t)a5 previousBundleIdentifiersSelection:(id)a6
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v81.receiver = self;
  v81.super_class = NCAppPickerContentProvider;
  v64 = [(NCAppPickerContentProvider *)&v81 init];
  if (v64)
  {
    v10 = objc_alloc_init(MEMORY[0x277CF3580]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v58 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v77 objects:v88 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v78;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v78 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v77 + 1) + 8 * i) bundleId];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v77 objects:v88 count:16];
      }

      while (v14);
    }

    v56 = v10;
    v18 = [v10 effectiveSectionInfoForSectionIDs:v11];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v18;
    v20 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v74;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v74 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v73 + 1) + 8 * j);
          v25 = [v24 sectionID];
          [v19 setValue:v24 forKey:v25];
        }

        v21 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
      }

      while (v21);
    }

    v64->_maxAvgNumberOfNotifications = 0;
    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedApps = v64->_selectedApps;
    v64->_selectedApps = v26;

    if (v9)
    {
      v59 = [MEMORY[0x277CBEB98] setWithArray:v9];
    }

    else
    {
      v59 = 0;
    }

    v55 = v11;
    v57 = v9;
    v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v67 = v12;
    v28 = [v67 countByEnumeratingWithState:&v69 objects:v86 count:16];
    if (!v28)
    {
      v65 = 0;
      goto LABEL_49;
    }

    v29 = v28;
    v65 = 0;
    v30 = *v70;
    while (1)
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v70 != v30)
        {
          objc_enumerationMutation(v67);
        }

        v32 = *(*(&v69 + 1) + 8 * k);
        v33 = [v32 bundleId];
        v34 = [MEMORY[0x277CC1E70] unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v33];
        v35 = [v34 localizedName];
        if (v35)
        {
          if (v33)
          {
            v36 = [v19 objectForKey:v33];
            v37 = v36;
            if (v36 && [v36 authorizationStatus] != 1 && (objc_msgSend(v37, "suppressFromSettings") & 1) == 0 && (objc_msgSend(v37, "isRestricted") & 1) == 0)
            {
              v38 = [v32 numBasicNotifications];
              v39 = objc_alloc_init(NCAppPickerContentProviderAppObject);
              [(NCAppPickerContentProviderAppObject *)v39 setName:v35];
              v40 = v65;
              if (!v65 || (v62 = [v65 length], v41 = objc_msgSend(v35, "length"), v40 = v65, v62 < v41))
              {
                v66 = v40;
                v63 = v38;
                v42 = v35;

                v65 = v42;
                v38 = v63;
              }

              v43 = 7 * v38 / a5;
              [(NCAppPickerContentProviderAppObject *)v39 setBundleIdentifier:v33];
              [(NCAppPickerContentProviderAppObject *)v39 setAvgNumberOfNotifications:v43];
              [(NSArray *)v61 addObject:v39];
              if ([v37 scheduledDeliverySetting] == 2 || objc_msgSend(v59, "containsObject:", v33))
              {
                [(NSMutableSet *)v64->_selectedApps addObject:v39];
              }

              maxAvgNumberOfNotifications = v64->_maxAvgNumberOfNotifications;
              if (maxAvgNumberOfNotifications <= v43)
              {
                maxAvgNumberOfNotifications = v43;
              }

              v64->_maxAvgNumberOfNotifications = maxAvgNumberOfNotifications;

LABEL_44:
              goto LABEL_45;
            }
          }

          else
          {
            v37 = 0;
          }

          v46 = *MEMORY[0x277D77DE0];
          if (os_log_type_enabled(*MEMORY[0x277D77DE0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v33;
            _os_log_impl(&dword_21E77E000, v46, OS_LOG_TYPE_DEFAULT, "Ignoring bundle %@ for digest onboarding since it is not authorized to post notifications", buf, 0xCu);
          }

          goto LABEL_44;
        }

        v45 = *MEMORY[0x277D77DE0];
        if (os_log_type_enabled(*MEMORY[0x277D77DE0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v83 = v33;
          v84 = 2112;
          v85 = 0;
          _os_log_error_impl(&dword_21E77E000, v45, OS_LOG_TYPE_ERROR, "Error getting LSApplicationRecord for %@. Error: %@", buf, 0x16u);
        }

LABEL_45:
      }

      v29 = [v67 countByEnumeratingWithState:&v69 objects:v86 count:16];
      if (!v29)
      {
LABEL_49:

        v47 = [v65 copy];
        longestAppName = v64->_longestAppName;
        v64->_longestAppName = v47;

        appsSortedByAvgNumberOfNotificationsDescending = v64->_appsSortedByAvgNumberOfNotificationsDescending;
        v64->_appsSortedByAvgNumberOfNotificationsDescending = v61;
        v50 = v61;

        v51 = [(NSArray *)v50 sortedArrayUsingComparator:&__block_literal_global_36];
        appsSortedByNameAscending = v64->_appsSortedByNameAscending;
        v64->_appsSortedByNameAscending = v51;

        v53 = v64->_maxAvgNumberOfNotifications != 0;
        v64->_ableToSortByAvgNumberOfNotifications = v53;
        v64->_sortedByAvgNumberOfNotifications = v53;

        v9 = v57;
        v8 = v58;
        break;
      }
    }
  }

  return v64;
}

uint64_t __146__NCAppPickerContentProvider__initWithATXDigestSetupEntities_containsMessageAndTimeSensitiveData_numberOfDays_previousBundleIdentifiersSelection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (NSArray)selectedBundleIdentifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_selectedApps;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [v9 copy];
        [v3 addObject:v10];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)nameForIndex:(unint64_t)a3
{
  v3 = [(NCAppPickerContentProvider *)self _appForIndex:a3];
  v4 = [v3 name];

  return v4;
}

- (unint64_t)avgNumberOfNotificationsForIndex:(unint64_t)a3
{
  v3 = [(NCAppPickerContentProvider *)self _appForIndex:a3];
  v4 = [v3 avgNumberOfNotifications];

  return v4;
}

- (id)imageForIndex:(unint64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = [(NCAppPickerContentProvider *)self _appForIndex:a3];
  v7 = [v6 bundleIdentifier];

  v8 = [MEMORY[0x277D759A0] mainScreen];
  v9 = objc_alloc(MEMORY[0x277D1B1C8]);
  [v8 scale];
  v11 = [v9 initWithSize:width scale:{height, v10}];
  v12 = [v8 traitCollection];
  v13 = [v12 userInterfaceStyle];

  if (v13 == 2)
  {
    [v11 setAppearance:1];
  }

  v14 = [v7 isEqualToString:@"com.apple.mobilecal"];
  v15 = objc_alloc(MEMORY[0x277D1B1A8]);
  v16 = v15;
  if (v14)
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    v18 = [MEMORY[0x277CBEA80] currentCalendar];
    v19 = [v16 initWithDate:v17 calendar:v18 format:0];

    v27[0] = v11;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v19 prepareImagesForImageDescriptors:v20];

    v21 = [v19 imageForDescriptor:v11];

    if (v21)
    {
LABEL_5:
      v22 = MEMORY[0x277D755B8];
      v23 = [v21 CGImage];
      [v21 scale];
      v24 = [v22 imageWithCGImage:v23 scale:0 orientation:?];
      goto LABEL_8;
    }
  }

  else
  {
    v25 = [v15 initWithBundleIdentifier:v7];
    v21 = [v25 prepareImageForDescriptor:v11];

    if (v21)
    {
      goto LABEL_5;
    }
  }

  v24 = 0;
LABEL_8:

  return v24;
}

- (BOOL)isSelectedForIndex:(unint64_t)a3
{
  v3 = self;
  v4 = [(NCAppPickerContentProvider *)self _appForIndex:a3];
  LOBYTE(v3) = [(NSMutableSet *)v3->_selectedApps containsObject:v4];

  return v3;
}

- (void)toggleSelectedForIndex:(unint64_t)a3
{
  v6 = [(NCAppPickerContentProvider *)self _appForIndex:a3];
  v4 = [(NSMutableSet *)self->_selectedApps containsObject:?];
  selectedApps = self->_selectedApps;
  if (v4)
  {
    [(NSMutableSet *)selectedApps removeObject:v6];
  }

  else
  {
    [(NSMutableSet *)selectedApps addObject:v6];
  }
}

- (id)bundleIdentifierForIndex:(unint64_t)a3
{
  v3 = [(NCAppPickerContentProvider *)self _appForIndex:a3];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (void)sortByName
{
  if (self->_ableToSortByAvgNumberOfNotifications)
  {
    self->_sortedByAvgNumberOfNotifications = 0;
  }
}

- (void)sortByAvgNumberOfNotifications
{
  if (self->_ableToSortByAvgNumberOfNotifications)
  {
    self->_sortedByAvgNumberOfNotifications = 1;
  }
}

- (id)_appForIndex:(unint64_t)a3
{
  v4 = 16;
  if (self->_sortedByAvgNumberOfNotifications)
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);
  if ([v5 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
  }

  return v6;
}

@end