@interface NCNotificationRequestCoalescingContentProvider
- (BOOL)_isThreadContainsCriticalNotificationRequest;
- (BOOL)_isThreadContainsMaybeImportantNotificationRequest;
- (BOOL)_shouldShowNotificationBody;
- (BOOL)_shouldShowSummary;
- (BOOL)isHidingContent;
- (NCNotificationRequestCoalescingContentProvider)init;
- (NCNotificationRequestCoalescingContentProvider)initWithNotificationRequest:(id)request;
- (id)_activeSummaryBuilder;
- (id)_localizedStringWithPlaceholderFormat:(id)format count:(unint64_t)count;
- (id)_placeholderSecondaryText;
- (id)_rawContentIndividualSummaryText;
- (id)_rawContentThreadSummaryText;
- (id)contentSummaryAttributionText;
- (id)copyWithZone:(_NSZone *)zone;
- (id)date;
- (id)importantAttributedTextWithImageConfiguration:(id)configuration importantAdornmentEligibleOptions:(unint64_t)options;
- (id)importantText;
- (id)inlineAction;
- (id)primarySubtitleText;
- (id)primaryText;
- (id)secondaryText;
- (id)secondaryTextCompact;
- (id)secondaryTextGroupCollapsed;
- (id)thumbnail;
- (unint64_t)_indexOfMatchingNotificationRequest:(id)request;
- (unint64_t)_notificationCount;
- (unint64_t)coalesceCount;
- (void)coalesceNotificationRequest:(id)request;
- (void)removeCoalescedNotificationRequest:(id)request;
- (void)updateCoalescedNotificationRequest:(id)request;
@end

@implementation NCNotificationRequestCoalescingContentProvider

- (id)date
{
  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  bulletin = [notificationRequest bulletin];
  context = [bulletin context];

  if (-[NCNotificationRequestContentProvider isThreadSummary](self, "isThreadSummary") && ([context objectForKey:@"contentDate"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    date = [context objectForKey:@"recordDate"];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NCNotificationRequestCoalescingContentProvider;
    date = [(NCNotificationRequestContentProvider *)&v10 date];
  }

  v8 = date;

  return v8;
}

- (id)primaryText
{
  if (-[NCNotificationRequestCoalescingContentProvider isHidingContent](self, "isHidingContent") && (-[NCNotificationRequestCoalescingContentProvider notificationRequest](self, "notificationRequest"), v3 = objc_claimAutoreleasedReturnValue(), [v3 options], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "suppressesTitleWhenLocked"), v4, v3, v5))
  {
    notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    content = [notificationRequest content];
    defaultHeader = [content defaultHeader];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NCNotificationRequestCoalescingContentProvider;
    defaultHeader = [(NCNotificationRequestContentProvider *)&v10 primaryText];
  }

  return defaultHeader;
}

- (BOOL)isHidingContent
{
  contentHidingEnforcement = [(NCNotificationRequestContentProvider *)self contentHidingEnforcement];
  result = contentHidingEnforcement == -1;
  if (!contentHidingEnforcement)
  {
    notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    options = [notificationRequest options];
    contentPreviewSetting = [options contentPreviewSetting];

    if (contentPreviewSetting)
    {
      if (contentPreviewSetting == 1)
      {
        return ![(NCNotificationRequestCoalescingContentProvider *)self isDeviceAuthenticated];
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)primarySubtitleText
{
  if ([(NCNotificationRequestContentProvider *)self isPrimarySubtitleTextDisplayingRequestTitle]|| [(NCNotificationRequestContentProvider *)self isPrimarySubtitleTextDisplayingRecipientsSummary])
  {
    if ([(NCNotificationRequestCoalescingContentProvider *)self isHidingContent])
    {
      notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
      options = [notificationRequest options];
      suppressesTitleWhenLocked = [options suppressesTitleWhenLocked];
    }

    else
    {
      suppressesTitleWhenLocked = 0;
    }
  }

  else
  {
    suppressesTitleWhenLocked = 1;
  }

  notificationRequest2 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  options2 = [notificationRequest2 options];
  if ([options2 suppressesSubtitleWhenLocked])
  {
    isHidingContent = [(NCNotificationRequestCoalescingContentProvider *)self isHidingContent];

    if (isHidingContent & suppressesTitleWhenLocked)
    {
      primarySubtitleText = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v11.receiver = self;
  v11.super_class = NCNotificationRequestCoalescingContentProvider;
  primarySubtitleText = [(NCNotificationRequestContentProvider *)&v11 primarySubtitleText];
LABEL_12:

  return primarySubtitleText;
}

- (id)secondaryText
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self _shouldShowNotificationBody])
  {
    v7.receiver = self;
    v7.super_class = NCNotificationRequestCoalescingContentProvider;
    secondaryText = [(NCNotificationRequestContentProvider *)&v7 secondaryText];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    _placeholderSecondaryText = [(NCNotificationRequestCoalescingContentProvider *)self _placeholderSecondaryText];
    secondaryText = [v4 nc_initWithAttributedString:_placeholderSecondaryText contentType:5];
  }

  return secondaryText;
}

- (BOOL)_shouldShowNotificationBody
{
  contentHidingEnforcement = [(NCNotificationRequestContentProvider *)self contentHidingEnforcement];
  coalescesWhenLocked = contentHidingEnforcement == -1;
  if (!contentHidingEnforcement)
  {
    isHidingContent = [(NCNotificationRequestCoalescingContentProvider *)self isHidingContent];
    if (isHidingContent)
    {
      notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
      options = [notificationRequest options];
      if ([options suppressesBodyWhenLocked])
      {
        coalescesWhenLocked = 1;
LABEL_6:

        return coalescesWhenLocked ^ 1;
      }
    }

    notificationRequest2 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    options2 = [notificationRequest2 options];
    coalescesWhenLocked = [options2 coalescesWhenLocked];

    if (isHidingContent)
    {
      goto LABEL_6;
    }
  }

  return coalescesWhenLocked ^ 1;
}

- (id)_rawContentIndividualSummaryText
{
  if (-[NCNotificationRequestCoalescingContentProvider _shouldShowNotificationBody](self, "_shouldShowNotificationBody") && -[NCNotificationRequestCoalescingContentProvider _shouldShowSummary](self, "_shouldShowSummary") && (!-[NCNotificationRequestCoalescingContentProvider isDisplayingInStack](self, "isDisplayingInStack") || (-[NCNotificationRequestCoalescingContentProvider notificationRequest](self, "notificationRequest"), v3 = objc_claimAutoreleasedReturnValue(), [v3 content], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isCommunicationType"), v4, v3, (v5 & 1) == 0)))
  {
    v8.receiver = self;
    v8.super_class = NCNotificationRequestCoalescingContentProvider;
    _rawContentIndividualSummaryText = [(NCNotificationRequestContentProvider *)&v8 _rawContentIndividualSummaryText];
  }

  else
  {
    _rawContentIndividualSummaryText = 0;
  }

  return _rawContentIndividualSummaryText;
}

- (BOOL)_shouldShowSummary
{
  isSummarizationEnabled = [(NCNotificationRequestCoalescingContentProvider *)self isSummarizationEnabled];
  if (isSummarizationEnabled)
  {
    notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    options = [notificationRequest options];
    canShowSummary = [options canShowSummary];

    LOBYTE(isSummarizationEnabled) = canShowSummary;
  }

  return isSummarizationEnabled;
}

- (id)secondaryTextCompact
{
  collapsedSectionSummaryString = [(NCNotificationRequestCoalescingContentProvider *)self collapsedSectionSummaryString];
  if (collapsedSectionSummaryString)
  {
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    secondaryText = [v4 nc_initWithString:collapsedSectionSummaryString contentType:6];
LABEL_3:

    goto LABEL_8;
  }

  if ([(NCNotificationRequestCoalescingContentProvider *)self isLeadingRequestInGroup]&& [(NCNotificationRequestCoalescingContentProvider *)self _notificationCount]>= 2)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_LIST_STACK_APP_CONTENT_SUMMARY" value:&stru_282FE84F8 table:0];
    v4 = [v6 stringWithFormat:v8, -[NCNotificationRequestCoalescingContentProvider _notificationCount](self, "_notificationCount")];

    v9 = objc_alloc(MEMORY[0x277CCA898]);
    secondaryText = [v9 nc_initWithString:v4 contentType:7];

    goto LABEL_3;
  }

  secondaryText = [(NCNotificationRequestCoalescingContentProvider *)self secondaryText];
LABEL_8:

  return secondaryText;
}

- (unint64_t)_notificationCount
{
  _activeSummaryBuilder = [(NCNotificationRequestCoalescingContentProvider *)self _activeSummaryBuilder];
  notificationRequests = [_activeSummaryBuilder notificationRequests];
  v4 = [notificationRequests count];

  return v4;
}

- (id)_activeSummaryBuilder
{
  overridenSummaryBuilder = self->_overridenSummaryBuilder;
  if (!overridenSummaryBuilder)
  {
    overridenSummaryBuilder = self->_summaryBuilder;
  }

  return overridenSummaryBuilder;
}

- (id)secondaryTextGroupCollapsed
{
  _rawContentThreadSummaryText = [(NCNotificationRequestCoalescingContentProvider *)self _rawContentThreadSummaryText];
  v4 = [_rawContentThreadSummaryText length];
  if ([(NCNotificationRequestCoalescingContentProvider *)self _shouldShowNotificationBody]&& [(NCNotificationRequestCoalescingContentProvider *)self _shouldShowSummary]&& v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCA898]);
    secondaryText = [v5 nc_initWithAttributedString:_rawContentThreadSummaryText contentType:2];
  }

  else
  {
    secondaryText = [(NCNotificationRequestCoalescingContentProvider *)self secondaryText];
  }

  return secondaryText;
}

- (id)_rawContentThreadSummaryText
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self _shouldShowNotificationBody]&& [(NCNotificationRequestCoalescingContentProvider *)self _shouldShowSummary])
  {
    notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    content = [notificationRequest content];
    threadSummary = [content threadSummary];
  }

  else
  {
    threadSummary = 0;
  }

  return threadSummary;
}

- (id)inlineAction
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self _shouldShowNotificationBody])
  {
    v5.receiver = self;
    v5.super_class = NCNotificationRequestCoalescingContentProvider;
    inlineAction = [(NCNotificationRequestContentProvider *)&v5 inlineAction];
  }

  else
  {
    inlineAction = 0;
  }

  return inlineAction;
}

- (id)contentSummaryAttributionText
{
  _rawContentThreadSummaryText = [(NCNotificationRequestCoalescingContentProvider *)self _rawContentThreadSummaryText];
  v4 = [_rawContentThreadSummaryText length];

  if (v4 && (v5 = MEMORY[0x277D77E60], -[NCNotificationRequestCoalescingContentProvider notificationRequest](self, "notificationRequest"), v6 = objc_claimAutoreleasedReturnValue(), [v6 sectionIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "categoryOfBundleId:", v7), v7, v6, v8 == 1))
  {
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"NOTIFICATION_SUMMARY_ATTRIBUTION_TEXT" value:&stru_282FE84F8 table:0];
    uppercaseString = [v11 uppercaseString];
    v13 = [v9 initWithString:uppercaseString];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)importantText
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self isHidingContent])
  {
    importantText = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NCNotificationRequestCoalescingContentProvider;
    importantText = [(NCNotificationRequestContentProvider *)&v5 importantText];
  }

  return importantText;
}

- (id)thumbnail
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self isHidingContent]|| [(NCNotificationRequestContentProvider *)self isThreadSummary])
  {
    thumbnail = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NCNotificationRequestCoalescingContentProvider;
    thumbnail = [(NCNotificationRequestContentProvider *)&v5 thumbnail];
  }

  return thumbnail;
}

- (NCNotificationRequestCoalescingContentProvider)initWithNotificationRequest:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = NCNotificationRequestCoalescingContentProvider;
  v5 = [(NCNotificationRequestContentProvider *)&v11 initWithNotificationRequest:requestCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    coalescedNotificationRequests = v5->_coalescedNotificationRequests;
    v5->_coalescedNotificationRequests = v6;

    if (requestCopy)
    {
      [(NSMutableArray *)v5->_coalescedNotificationRequests addObject:requestCopy];
    }

    v8 = objc_opt_new();
    summaryBuilder = v5->_summaryBuilder;
    v5->_summaryBuilder = v8;

    [(NCNotificationRequestCoalescingContentProvider *)v5 _updateSummaryText];
  }

  return v5;
}

- (NCNotificationRequestCoalescingContentProvider)init
{
  [(NCNotificationRequestCoalescingContentProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NCNotificationRequestCoalescingContentProvider;
  v4 = [(NCNotificationRequestContentProvider *)&v8 copyWithZone:zone];
  v5 = [(NSMutableArray *)self->_coalescedNotificationRequests copy];
  v6 = *(v4 + 10);
  *(v4 + 10) = v5;

  *(v4 + 72) = self->_deviceAuthenticated;
  objc_storeStrong(v4 + 11, self->_overridenSummaryBuilder);
  *(v4 + 74) = self->_summarizationEnabled;
  return v4;
}

- (unint64_t)coalesceCount
{
  coalescedNotificationRequests = [(NCNotificationRequestCoalescingContentProvider *)self coalescedNotificationRequests];
  v3 = [coalescedNotificationRequests count];

  return v3;
}

- (void)coalesceNotificationRequest:(id)request
{
  requestCopy = request;
  v4 = [(NCNotificationRequestCoalescingContentProvider *)self _indexOfMatchingNotificationRequest:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_coalescedNotificationRequests removeObjectAtIndex:v4];
  }

  [(NSMutableArray *)self->_coalescedNotificationRequests _insertOrderedNotificationRequest:requestCopy];
  [(NCNotificationRequestCoalescingContentProvider *)self _updateSummaryText];
}

- (void)removeCoalescedNotificationRequest:(id)request
{
  v4 = [(NCNotificationRequestCoalescingContentProvider *)self _indexOfMatchingNotificationRequest:request];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_coalescedNotificationRequests removeObjectAtIndex:v4];

    [(NCNotificationRequestCoalescingContentProvider *)self _updateSummaryText];
  }
}

- (void)updateCoalescedNotificationRequest:(id)request
{
  requestCopy = request;
  v4 = [(NCNotificationRequestCoalescingContentProvider *)self _indexOfMatchingNotificationRequest:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_coalescedNotificationRequests removeObjectAtIndex:v4];
    [(NSMutableArray *)self->_coalescedNotificationRequests _insertOrderedNotificationRequest:requestCopy];
    [(NCNotificationRequestCoalescingContentProvider *)self _updateSummaryText];
  }
}

- (id)importantAttributedTextWithImageConfiguration:(id)configuration importantAdornmentEligibleOptions:(unint64_t)options
{
  configurationCopy = configuration;
  if (![(NCNotificationRequestContentProvider *)self isThreadSummary])
  {
    v23.receiver = self;
    v23.super_class = NCNotificationRequestCoalescingContentProvider;
    v10 = [(NCNotificationRequestContentProvider *)&v23 importantAttributedTextWithImageConfiguration:configurationCopy importantAdornmentEligibleOptions:options];
    goto LABEL_12;
  }

  _isThreadContainsCriticalNotificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self _isThreadContainsCriticalNotificationRequest];
  _isThreadContainsMaybeImportantNotificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self _isThreadContainsMaybeImportantNotificationRequest];
  if ((options & 1) != 0 && _isThreadContainsCriticalNotificationRequest)
  {
    v9 = [(NCNotificationRequestContentProvider *)self _criticalAlertIconAttributedStringWithImageConfiguration:configurationCopy];
    v10 = [v9 mutableCopy];

    v11 = objc_alloc(MEMORY[0x277CCA898]);
    v12 = MEMORY[0x277CCACA8];
    v13 = NCUserNotificationsUIKitFrameworkBundle();
    v14 = v13;
    v15 = @"CRITICAL_TEXT";
LABEL_10:
    v18 = [v13 localizedStringForKey:v15 value:&stru_282FE84F8 table:0];
    localizedUppercaseString = [v18 localizedUppercaseString];
    v20 = [v12 stringWithFormat:@" %@", localizedUppercaseString];
    v21 = [v11 initWithString:v20];
    [v10 appendAttributedString:v21];

    goto LABEL_12;
  }

  v16 = !_isThreadContainsMaybeImportantNotificationRequest;
  if ((options & 2) == 0)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v17 = [(NCNotificationRequestContentProvider *)self _intelligentManagementIconAttributedStringWithImageConfiguration:configurationCopy];
    v10 = [v17 mutableCopy];

    v11 = objc_alloc(MEMORY[0x277CCA898]);
    v12 = MEMORY[0x277CCACA8];
    v13 = NCUserNotificationsUIKitFrameworkBundle();
    v14 = v13;
    v15 = @"INTELLIGENCE_PRIORITY";
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)_isThreadContainsCriticalNotificationRequest
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _activeSummaryBuilder = [(NCNotificationRequestCoalescingContentProvider *)self _activeSummaryBuilder];
  notificationRequests = [_activeSummaryBuilder notificationRequests];

  v4 = [notificationRequests countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(notificationRequests);
        }

        if ([*(*(&v8 + 1) + 8 * i) interruptionLevel] == 3)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [notificationRequests countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)_isThreadContainsMaybeImportantNotificationRequest
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _activeSummaryBuilder = [(NCNotificationRequestCoalescingContentProvider *)self _activeSummaryBuilder];
  notificationRequests = [_activeSummaryBuilder notificationRequests];

  v4 = [notificationRequests countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(notificationRequests);
        }

        alertOptions = [*(*(&v10 + 1) + 8 * i) alertOptions];
        intelligentBehavior = [alertOptions intelligentBehavior];

        if (intelligentBehavior == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [notificationRequests countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_placeholderSecondaryText
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  overridenSummaryBuilder = [(NCNotificationRequestCoalescingContentProvider *)self overridenSummaryBuilder];
  if (overridenSummaryBuilder)
  {
    overridenSummaryBuilder2 = [(NCNotificationRequestCoalescingContentProvider *)self overridenSummaryBuilder];
    notificationRequests = [overridenSummaryBuilder2 notificationRequests];
  }

  else
  {
    notificationRequests = self->_coalescedNotificationRequests;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = notificationRequests;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v7);
        }

        content = [*(*(&v51 + 1) + 8 * i) content];
        hiddenPreviewsBodyPlaceholder = [content hiddenPreviewsBodyPlaceholder];

        if (![hiddenPreviewsBodyPlaceholder length])
        {
          v14 = NCUserNotificationsUIKitFrameworkBundle();
          v15 = [v14 localizedStringForKey:@"DEFAULT_HIDDEN_PREVIEW_PLACEHOLDER" value:&stru_282FE84F8 table:0];

          hiddenPreviewsBodyPlaceholder = v15;
        }

        v16 = [v3 objectForKey:hiddenPreviewsBodyPlaceholder];
        v17 = v16;
        v18 = MEMORY[0x277CCABB0];
        if (v16)
        {
          v19 = [v16 integerValue] + 1;
        }

        else
        {
          v19 = 1;
        }

        v20 = [v18 numberWithInteger:v19];
        [v3 setObject:v20 forKey:hiddenPreviewsBodyPlaceholder];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v9);
  }

  allKeys = [v3 allKeys];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __75__NCNotificationRequestCoalescingContentProvider__placeholderSecondaryText__block_invoke;
  v48[3] = &unk_278371D40;
  v22 = v3;
  v49 = v22;
  selfCopy = self;
  v23 = [allKeys bs_map:v48];

  v24 = [v23 sortedArrayUsingComparator:&__block_literal_global_63_0];

  v25 = [v24 count];
  v26 = v25 - 2;
  if (v25 == 2)
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = NCUserNotificationsUIKitFrameworkBundle();
    v30 = [v29 localizedStringForKey:@"COALESCED_NOTIFICATION_END_FORMAT" value:&stru_282FE84F8 table:0];
    v31 = [v24 objectAtIndexedSubscript:0];
    v32 = [v24 objectAtIndexedSubscript:1];
    v27 = [v28 stringWithFormat:v30, v31, v32];
  }

  else if (v25 == 1)
  {
    v27 = [v24 objectAtIndexedSubscript:0];
  }

  else if (v25 < 3)
  {
    v27 = 0;
  }

  else
  {
    v46 = v25 - 1;
    v47 = v22;
    v33 = [v24 objectAtIndexedSubscript:0];
    v34 = 1;
    do
    {
      v35 = v33;
      v36 = MEMORY[0x277CCACA8];
      v37 = NCUserNotificationsUIKitFrameworkBundle();
      v38 = [v37 localizedStringForKey:@"COALESCED_NOTIFICATION_MIDDLE_FORMAT" value:&stru_282FE84F8 table:0];
      v39 = [v24 objectAtIndexedSubscript:v34];
      v33 = [v36 stringWithFormat:v38, v35, v39];

      ++v34;
      --v26;
    }

    while (v26);
    v40 = MEMORY[0x277CCACA8];
    v41 = NCUserNotificationsUIKitFrameworkBundle();
    v42 = [v41 localizedStringForKey:@"COALESCED_NOTIFICATION_END_FORMAT" value:&stru_282FE84F8 table:0];
    v43 = [v24 objectAtIndexedSubscript:v46];
    v27 = [v40 stringWithFormat:v42, v33, v43];

    v22 = v47;
  }

  v44 = [MEMORY[0x277CCA898] nc_safeAttributedStringWithString:v27];

  return v44;
}

id __75__NCNotificationRequestCoalescingContentProvider__placeholderSecondaryText__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 40) _localizedStringWithPlaceholderFormat:v4 count:v6];

  return v7;
}

- (unint64_t)_indexOfMatchingNotificationRequest:(id)request
{
  requestCopy = request;
  coalescedNotificationRequests = self->_coalescedNotificationRequests;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__NCNotificationRequestCoalescingContentProvider__indexOfMatchingNotificationRequest___block_invoke;
  v9[3] = &unk_278370180;
  v10 = requestCopy;
  v6 = requestCopy;
  v7 = [(NSMutableArray *)coalescedNotificationRequests indexOfObjectPassingTest:v9];

  return v7;
}

- (id)_localizedStringWithPlaceholderFormat:(id)format count:(unint64_t)count
{
  v14 = 0;
  v6 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:format validFormatSpecifiers:@"%u" error:&v14, count];
  v7 = v14;
  if (v7)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [NCNotificationRequestCoalescingContentProvider _localizedStringWithPlaceholderFormat:v8 count:self];
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"DEFAULT_HIDDEN_PREVIEW_PLACEHOLDER" value:&stru_282FE84F8 table:0];
    v12 = [v9 localizedStringWithFormat:v11, count, 0];

    v6 = v12;
  }

  return v6;
}

- (void)_localizedStringWithPlaceholderFormat:(void *)a1 count:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 notificationRequest];
  v5 = [v4 notificationIdentifier];
  v6 = [v5 un_logDigest];
  v7 = [a2 notificationRequest];
  v8 = [v7 categoryIdentifier];
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_21E77E000, v3, OS_LOG_TYPE_ERROR, "Error formatting hidden preview placeholder. Notification: %{public}@, Category: %{public}@.", &v9, 0x16u);
}

@end