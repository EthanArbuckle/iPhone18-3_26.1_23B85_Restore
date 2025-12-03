@interface NCAppPickerContentProvider
+ (NCAppPickerContentProvider)providerWithPreviousBundleIdentifiersSelection:(id)selection numDaysForAverageNotificationCount:(id)count onMainQueue:(id)queue;
- (BOOL)isSelectedForIndex:(unint64_t)index;
- (NSArray)selectedBundleIdentifiers;
- (id)_appForIndex:(unint64_t)index;
- (id)_initWithATXDigestSetupEntities:(id)entities containsMessageAndTimeSensitiveData:(BOOL)data numberOfDays:(unint64_t)days previousBundleIdentifiersSelection:(id)selection;
- (id)bundleIdentifierForIndex:(unint64_t)index;
- (id)imageForIndex:(unint64_t)index size:(CGSize)size;
- (id)nameForIndex:(unint64_t)index;
- (unint64_t)avgNumberOfNotificationsForIndex:(unint64_t)index;
- (void)sortByAvgNumberOfNotifications;
- (void)sortByName;
- (void)toggleSelectedForIndex:(unint64_t)index;
@end

@implementation NCAppPickerContentProvider

+ (NCAppPickerContentProvider)providerWithPreviousBundleIdentifiersSelection:(id)selection numDaysForAverageNotificationCount:(id)count onMainQueue:(id)queue
{
  selectionCopy = selection;
  queueCopy = queue;
  v9 = MEMORY[0x277CEB4C0];
  countCopy = count;
  v11 = objc_alloc_init(v9);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __124__NCAppPickerContentProvider_providerWithPreviousBundleIdentifiersSelection_numDaysForAverageNotificationCount_onMainQueue___block_invoke;
  v15[3] = &unk_278372528;
  v16 = selectionCopy;
  v17 = queueCopy;
  v12 = queueCopy;
  v13 = selectionCopy;
  [v11 appsSortedByNotificationsReceivedInPreviousNumDaysRaw:countCopy completionHandler:v15];

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

- (id)_initWithATXDigestSetupEntities:(id)entities containsMessageAndTimeSensitiveData:(BOOL)data numberOfDays:(unint64_t)days previousBundleIdentifiersSelection:(id)selection
{
  v89 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  selectionCopy = selection;
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
    v58 = entitiesCopy;
    v12 = entitiesCopy;
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

          bundleId = [*(*(&v77 + 1) + 8 * i) bundleId];
          [v11 addObject:bundleId];
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
          sectionID = [v24 sectionID];
          [v19 setValue:v24 forKey:sectionID];
        }

        v21 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
      }

      while (v21);
    }

    v64->_maxAvgNumberOfNotifications = 0;
    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedApps = v64->_selectedApps;
    v64->_selectedApps = v26;

    if (selectionCopy)
    {
      v59 = [MEMORY[0x277CBEB98] setWithArray:selectionCopy];
    }

    else
    {
      v59 = 0;
    }

    v55 = v11;
    v57 = selectionCopy;
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
        bundleId2 = [v32 bundleId];
        v34 = [MEMORY[0x277CC1E70] unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:bundleId2];
        localizedName = [v34 localizedName];
        if (localizedName)
        {
          if (bundleId2)
          {
            v36 = [v19 objectForKey:bundleId2];
            v37 = v36;
            if (v36 && [v36 authorizationStatus] != 1 && (objc_msgSend(v37, "suppressFromSettings") & 1) == 0 && (objc_msgSend(v37, "isRestricted") & 1) == 0)
            {
              numBasicNotifications = [v32 numBasicNotifications];
              v39 = objc_alloc_init(NCAppPickerContentProviderAppObject);
              [(NCAppPickerContentProviderAppObject *)v39 setName:localizedName];
              v40 = v65;
              if (!v65 || (v62 = [v65 length], v41 = objc_msgSend(localizedName, "length"), v40 = v65, v62 < v41))
              {
                v66 = v40;
                v63 = numBasicNotifications;
                v42 = localizedName;

                v65 = v42;
                numBasicNotifications = v63;
              }

              v43 = 7 * numBasicNotifications / days;
              [(NCAppPickerContentProviderAppObject *)v39 setBundleIdentifier:bundleId2];
              [(NCAppPickerContentProviderAppObject *)v39 setAvgNumberOfNotifications:v43];
              [(NSArray *)v61 addObject:v39];
              if ([v37 scheduledDeliverySetting] == 2 || objc_msgSend(v59, "containsObject:", bundleId2))
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
            v83 = bundleId2;
            _os_log_impl(&dword_21E77E000, v46, OS_LOG_TYPE_DEFAULT, "Ignoring bundle %@ for digest onboarding since it is not authorized to post notifications", buf, 0xCu);
          }

          goto LABEL_44;
        }

        v45 = *MEMORY[0x277D77DE0];
        if (os_log_type_enabled(*MEMORY[0x277D77DE0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v83 = bundleId2;
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

        selectionCopy = v57;
        entitiesCopy = v58;
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

        bundleIdentifier = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier copy];
        [v3 addObject:v10];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)nameForIndex:(unint64_t)index
{
  v3 = [(NCAppPickerContentProvider *)self _appForIndex:index];
  name = [v3 name];

  return name;
}

- (unint64_t)avgNumberOfNotificationsForIndex:(unint64_t)index
{
  v3 = [(NCAppPickerContentProvider *)self _appForIndex:index];
  avgNumberOfNotifications = [v3 avgNumberOfNotifications];

  return avgNumberOfNotifications;
}

- (id)imageForIndex:(unint64_t)index size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = [(NCAppPickerContentProvider *)self _appForIndex:index];
  bundleIdentifier = [v6 bundleIdentifier];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v9 = objc_alloc(MEMORY[0x277D1B1C8]);
  [mainScreen scale];
  v11 = [v9 initWithSize:width scale:{height, v10}];
  traitCollection = [mainScreen traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    [v11 setAppearance:1];
  }

  v14 = [bundleIdentifier isEqualToString:@"com.apple.mobilecal"];
  v15 = objc_alloc(MEMORY[0x277D1B1A8]);
  v16 = v15;
  if (v14)
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v19 = [v16 initWithDate:v17 calendar:currentCalendar format:0];

    v27[0] = v11;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v19 prepareImagesForImageDescriptors:v20];

    v21 = [v19 imageForDescriptor:v11];

    if (v21)
    {
LABEL_5:
      v22 = MEMORY[0x277D755B8];
      cGImage = [v21 CGImage];
      [v21 scale];
      v24 = [v22 imageWithCGImage:cGImage scale:0 orientation:?];
      goto LABEL_8;
    }
  }

  else
  {
    v25 = [v15 initWithBundleIdentifier:bundleIdentifier];
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

- (BOOL)isSelectedForIndex:(unint64_t)index
{
  selfCopy = self;
  v4 = [(NCAppPickerContentProvider *)self _appForIndex:index];
  LOBYTE(selfCopy) = [(NSMutableSet *)selfCopy->_selectedApps containsObject:v4];

  return selfCopy;
}

- (void)toggleSelectedForIndex:(unint64_t)index
{
  v6 = [(NCAppPickerContentProvider *)self _appForIndex:index];
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

- (id)bundleIdentifierForIndex:(unint64_t)index
{
  v3 = [(NCAppPickerContentProvider *)self _appForIndex:index];
  bundleIdentifier = [v3 bundleIdentifier];

  return bundleIdentifier;
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

- (id)_appForIndex:(unint64_t)index
{
  v4 = 16;
  if (self->_sortedByAvgNumberOfNotifications)
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);
  if ([v5 count] <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:index];
  }

  return v6;
}

@end