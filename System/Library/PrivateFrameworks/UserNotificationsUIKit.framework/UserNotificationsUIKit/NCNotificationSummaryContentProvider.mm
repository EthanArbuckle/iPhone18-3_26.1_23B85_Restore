@interface NCNotificationSummaryContentProvider
+ (id)summaryContentProviderOfType:(unint64_t)type notificationRequests:(id)requests;
- (BOOL)_shouldShowContentForNotificationRequest:(id)request;
- (NSArray)summaryIconViews;
- (NSString)summary;
- (id)_communicationAvatarForNotificationRequest:(id)request;
- (id)_iconViewForNotificationRequest:(id)request;
- (id)_summaryIconViewForNotificationRequest:(id)request;
- (id)_summaryStringForCommunicationNotificationRequest:(id)request;
- (id)_summaryStringForNotificationRequest:(id)request;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)setNotificationRequests:(id)requests;
- (void)setTitlesForSectionListsInSummary:(id)summary;
@end

@implementation NCNotificationSummaryContentProvider

+ (id)summaryContentProviderOfType:(unint64_t)type notificationRequests:(id)requests
{
  requestsCopy = requests;
  if (type > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(*off_2783724D8[type]);
  }

  [v6 setNotificationRequests:requestsCopy];

  return v6;
}

- (void)setNotificationRequests:(id)requests
{
  requestsCopy = requests;
  p_notificationRequests = &self->_notificationRequests;
  if (self->_notificationRequests != requestsCopy)
  {
    objc_storeStrong(p_notificationRequests, requests);
    summaryTitle = self->_summaryTitle;
    self->_summaryTitle = 0;

    summary = self->_summary;
    self->_summary = 0;

    summaryIconViews = self->_summaryIconViews;
    self->_summaryIconViews = 0;

    summaryDate = self->_summaryDate;
    self->_summaryDate = 0;

    summaryTitleFontName = self->_summaryTitleFontName;
    self->_summaryTitleFontName = 0;
  }

  MEMORY[0x2821F96F8](p_notificationRequests);
}

- (void)setTitlesForSectionListsInSummary:(id)summary
{
  summaryCopy = summary;
  if (![(NSArray *)self->_titlesForSectionListsInSummary isEqualToArray:?])
  {
    v4 = [summaryCopy copy];
    titlesForSectionListsInSummary = self->_titlesForSectionListsInSummary;
    self->_titlesForSectionListsInSummary = v4;

    summary = self->_summary;
    self->_summary = 0;
  }
}

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  if (self->_deviceAuthenticated != authenticated)
  {
    self->_deviceAuthenticated = authenticated;
    self->_summary = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (NSString)summary
{
  p_summary = &self->_summary;
  if (!self->_summary && ([(NSArray *)self->_notificationRequests count]|| [(NSArray *)self->_titlesForSectionListsInSummary count]))
  {
    maxNumberOfSummaryItems = [(NCNotificationSummaryContentProvider *)self maxNumberOfSummaryItems];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(NSArray *)self->_titlesForSectionListsInSummary copy];
    v7 = v6;
    if (v6 && [v6 count])
    {
      [v5 addObjectsFromArray:v7];
    }

    notificationRequests = self->_notificationRequests;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __47__NCNotificationSummaryContentProvider_summary__block_invoke;
    v33[3] = &unk_2783705B0;
    v33[4] = self;
    v9 = v5;
    v34 = v9;
    [(NSArray *)notificationRequests enumerateObjectsUsingBlock:v33];
    v10 = [v9 count];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__10;
    v31 = __Block_byref_object_dispose__10;
    v32 = &stru_282FE84F8;
    v11 = v10 - maxNumberOfSummaryItems;
    if (v10 <= maxNumberOfSummaryItems)
    {
      v12 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v9];
      v13 = v28[5];
      v28[5] = v12;
    }

    else
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __47__NCNotificationSummaryContentProvider_summary__block_invoke_6;
      v26[3] = &unk_278372470;
      v26[4] = &v27;
      v26[5] = v10;
      v26[6] = maxNumberOfSummaryItems;
      [v9 enumerateObjectsUsingBlock:v26];
    }

    if (v11 >= 1)
    {
      v14 = MEMORY[0x277CCABB8];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      v16 = [v14 localizedStringFromNumber:v15 numberStyle:0];

      v17 = v28[5];
      v18 = MEMORY[0x277CCACA8];
      v19 = NCUserNotificationsUIKitFrameworkBundle();
      v20 = [v19 localizedStringForKey:@"NOTIFICATION_SUMMARY_COUNT" value:&stru_282FE84F8 table:0];
      v21 = [v18 stringWithFormat:v20, v16];
      v22 = [v17 stringByAppendingFormat:@" %@", v21];
      v23 = v28[5];
      v28[5] = v22;
    }

    objc_storeStrong(p_summary, v28[5]);
    _Block_object_dispose(&v27, 8);
  }

  v24 = *p_summary;

  return v24;
}

uint64_t __47__NCNotificationSummaryContentProvider_summary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _summaryStringForNotificationRequest:a2];
  if (v3)
  {
    v5 = v3;
    v3 = [*(a1 + 40) containsObject:v3];
    if ((v3 & 1) == 0)
    {
      v3 = [*(a1 + 40) addObject:v5];
    }
  }

  return MEMORY[0x2821F96F8](v3);
}

void __47__NCNotificationSummaryContentProvider_summary__block_invoke_6(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v9 = [*(*(a1[4] + 8) + 40) stringByAppendingString:a2];
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = a1[5];
  if (v12 - 1 <= a3)
  {
    v14 = a3 + 1;
  }

  else
  {
    v13 = a1[6];
    v14 = a3 + 1;
    if (v13 > a3 && v14 != v13)
    {
      v16 = v12 - 2;
      v17 = *(a1[4] + 8);
      v18 = *(v17 + 40);
      if (v16 == a3)
      {
        [*(v17 + 40) stringByAppendingString:@" "];
      }

      else
      {
        v4 = NCUserNotificationsUIKitFrameworkBundle();
        v5 = [v4 localizedStringForKey:@"NOTIFICATION_SUMMARY_CONNECTOR_COMMA" value:&stru_282FE84F8 table:0];
        [v18 stringByAppendingString:v5];
      }
      v19 = ;
      objc_storeStrong((*(a1[4] + 8) + 40), v19);

      if (v16 != a3)
      {
      }
    }
  }

  if (v14 == a1[6])
  {
    *a4 = 1;
  }
}

- (NSArray)summaryIconViews
{
  if (!self->_summaryIconViews && [(NSArray *)self->_notificationRequests count]&& ![(NCNotificationSummaryContentProvider *)self hideSummaryIconViews])
  {
    maxNumberOfSummaryItems = [(NCNotificationSummaryContentProvider *)self maxNumberOfSummaryItems];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    notificationRequests = self->_notificationRequests;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__NCNotificationSummaryContentProvider_summaryIconViews__block_invoke;
    v13[3] = &unk_278372498;
    v9 = v6;
    v14 = v9;
    v15 = v7;
    selfCopy = self;
    v17 = maxNumberOfSummaryItems;
    v10 = v7;
    [(NSArray *)notificationRequests enumerateObjectsUsingBlock:v13];
    summaryIconViews = self->_summaryIconViews;
    self->_summaryIconViews = v9;
    v12 = v9;
  }

  v3 = self->_summaryIconViews;

  return v3;
}

void __56__NCNotificationSummaryContentProvider_summaryIconViews__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if ([*(a1 + 32) count] >= *(a1 + 56))
  {
    *a4 = 1;
    goto LABEL_7;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [v16 sectionIdentifier];
  v8 = [v16 threadIdentifier];
  v9 = [v6 stringWithFormat:@"%@:%@", v7, v8];

  v10 = *(a1 + 40);
  v11 = [v16 sectionIdentifier];
  if (([v10 containsObject:v11] & 1) == 0)
  {
    v12 = [*(a1 + 40) containsObject:v9];

    if (v12)
    {
      goto LABEL_6;
    }

    v11 = [*(a1 + 48) _summaryIconViewForNotificationRequest:v16];
    if (v11)
    {
      [*(a1 + 32) addObject:v11];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v14 = *(a1 + 40);
      if (isKindOfClass)
      {
        [v14 addObject:v9];
      }

      else
      {
        v15 = [v16 sectionIdentifier];
        [v14 addObject:v15];
      }
    }
  }

LABEL_6:
LABEL_7:
}

- (BOOL)_shouldShowContentForNotificationRequest:(id)request
{
  options = [request options];
  contentPreviewSetting = [options contentPreviewSetting];

  if (!contentPreviewSetting)
  {
    return 1;
  }

  if (contentPreviewSetting != 1)
  {
    return 0;
  }

  return [(NCNotificationSummaryContentProvider *)self isDeviceAuthenticated];
}

- (id)_summaryStringForNotificationRequest:(id)request
{
  requestCopy = request;
  content = [requestCopy content];
  title = [content title];

  if ([(NCNotificationSummaryContentProvider *)self _shouldShowContentForNotificationRequest:requestCopy]&& title)
  {
    defaultHeader = title;
  }

  else
  {
    content2 = [requestCopy content];
    defaultHeader = [content2 defaultHeader];
  }

  return defaultHeader;
}

- (id)_summaryIconViewForNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [(NCNotificationSummaryContentProvider *)self _communicationAvatarForNotificationRequest:requestCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NCNotificationSummaryContentProvider *)self _iconViewForNotificationRequest:requestCopy];
  }

  v8 = v7;

  return v8;
}

- (id)_iconViewForNotificationRequest:(id)request
{
  requestCopy = request;
  subordinateIconRecipe = [requestCopy subordinateIconRecipe];
  v5 = subordinateIconRecipe;
  if (subordinateIconRecipe)
  {
    iconRecipe = subordinateIconRecipe;
  }

  else
  {
    iconRecipe = [requestCopy iconRecipe];
  }

  v7 = iconRecipe;

  v8 = [NCBadgedIconDescription alloc];
  topLevelSectionIdentifier = [requestCopy topLevelSectionIdentifier];
  v10 = [(NCBadgedIconDescription *)v8 initWithBundleIdentifier:topLevelSectionIdentifier prominentIconDescription:v7 subordinateIconRecipe:0 badgeText:0];

  v11 = [[NCBadgedIconView alloc] initWithBadgedIconDescription:v10 pointSize:38.0];

  return v11;
}

- (id)_communicationAvatarForNotificationRequest:(id)request
{
  requestCopy = request;
  content = [requestCopy content];
  communicationContext = [content communicationContext];

  topLevelSectionIdentifier = [requestCopy topLevelSectionIdentifier];
  v7 = [communicationContext isAvatarImagePossibleForBundleIdentifier:topLevelSectionIdentifier];

  if (v7)
  {
    v8 = [NCAvatarView alloc];
    topLevelSectionIdentifier2 = [requestCopy topLevelSectionIdentifier];
    v10 = [(NCAvatarView *)v8 initWithBundleIdentifier:topLevelSectionIdentifier2 communicationContext:communicationContext pointSize:38.0];

    [(NCAvatarView *)v10 setMaterialBacked:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_summaryStringForCommunicationNotificationRequest:(id)request
{
  requestCopy = request;
  if (-[NCNotificationSummaryContentProvider _shouldShowContentForNotificationRequest:](self, "_shouldShowContentForNotificationRequest:", requestCopy) && ([requestCopy content], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isCommunicationType"), v5, v6))
  {
    content = [requestCopy content];
    communicationContext = [content communicationContext];

    preferredSenderSummary = [communicationContext preferredSenderSummary];
  }

  else
  {
    preferredSenderSummary = 0;
  }

  return preferredSenderSummary;
}

@end