@interface NCNotificationRequestCoalescingContentProvider
- (BOOL)_isThreadContainsCriticalNotificationRequest;
- (BOOL)_isThreadContainsMaybeImportantNotificationRequest;
- (BOOL)_shouldShowNotificationBody;
- (BOOL)_shouldShowSummary;
- (BOOL)isHidingContent;
- (NCNotificationRequestCoalescingContentProvider)init;
- (NCNotificationRequestCoalescingContentProvider)initWithNotificationRequest:(id)a3;
- (id)_activeSummaryBuilder;
- (id)_localizedStringWithPlaceholderFormat:(id)a3 count:(unint64_t)a4;
- (id)_placeholderSecondaryText;
- (id)_rawContentIndividualSummaryText;
- (id)_rawContentThreadSummaryText;
- (id)contentSummaryAttributionText;
- (id)copyWithZone:(_NSZone *)a3;
- (id)date;
- (id)importantAttributedTextWithImageConfiguration:(id)a3 importantAdornmentEligibleOptions:(unint64_t)a4;
- (id)importantText;
- (id)inlineAction;
- (id)primarySubtitleText;
- (id)primaryText;
- (id)secondaryText;
- (id)secondaryTextCompact;
- (id)secondaryTextGroupCollapsed;
- (id)thumbnail;
- (unint64_t)_indexOfMatchingNotificationRequest:(id)a3;
- (unint64_t)_notificationCount;
- (unint64_t)coalesceCount;
- (void)coalesceNotificationRequest:(id)a3;
- (void)removeCoalescedNotificationRequest:(id)a3;
- (void)updateCoalescedNotificationRequest:(id)a3;
@end

@implementation NCNotificationRequestCoalescingContentProvider

- (id)date
{
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v4 = [v3 bulletin];
  v5 = [v4 context];

  if (-[NCNotificationRequestContentProvider isThreadSummary](self, "isThreadSummary") && ([v5 objectForKey:@"contentDate"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKey:@"recordDate"];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NCNotificationRequestCoalescingContentProvider;
    v7 = [(NCNotificationRequestContentProvider *)&v10 date];
  }

  v8 = v7;

  return v8;
}

- (id)primaryText
{
  if (-[NCNotificationRequestCoalescingContentProvider isHidingContent](self, "isHidingContent") && (-[NCNotificationRequestCoalescingContentProvider notificationRequest](self, "notificationRequest"), v3 = objc_claimAutoreleasedReturnValue(), [v3 options], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "suppressesTitleWhenLocked"), v4, v3, v5))
  {
    v6 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    v7 = [v6 content];
    v8 = [v7 defaultHeader];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NCNotificationRequestCoalescingContentProvider;
    v8 = [(NCNotificationRequestContentProvider *)&v10 primaryText];
  }

  return v8;
}

- (BOOL)isHidingContent
{
  v3 = [(NCNotificationRequestContentProvider *)self contentHidingEnforcement];
  result = v3 == -1;
  if (!v3)
  {
    v5 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    v6 = [v5 options];
    v7 = [v6 contentPreviewSetting];

    if (v7)
    {
      if (v7 == 1)
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
      v3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
      v4 = [v3 options];
      v5 = [v4 suppressesTitleWhenLocked];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v7 = [v6 options];
  if ([v7 suppressesSubtitleWhenLocked])
  {
    v8 = [(NCNotificationRequestCoalescingContentProvider *)self isHidingContent];

    if (v8 & v5)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v11.receiver = self;
  v11.super_class = NCNotificationRequestCoalescingContentProvider;
  v9 = [(NCNotificationRequestContentProvider *)&v11 primarySubtitleText];
LABEL_12:

  return v9;
}

- (id)secondaryText
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self _shouldShowNotificationBody])
  {
    v7.receiver = self;
    v7.super_class = NCNotificationRequestCoalescingContentProvider;
    v3 = [(NCNotificationRequestContentProvider *)&v7 secondaryText];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    v5 = [(NCNotificationRequestCoalescingContentProvider *)self _placeholderSecondaryText];
    v3 = [v4 nc_initWithAttributedString:v5 contentType:5];
  }

  return v3;
}

- (BOOL)_shouldShowNotificationBody
{
  v5 = [(NCNotificationRequestContentProvider *)self contentHidingEnforcement];
  v6 = v5 == -1;
  if (!v5)
  {
    v7 = [(NCNotificationRequestCoalescingContentProvider *)self isHidingContent];
    if (v7)
    {
      v2 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
      v3 = [v2 options];
      if ([v3 suppressesBodyWhenLocked])
      {
        v6 = 1;
LABEL_6:

        return v6 ^ 1;
      }
    }

    v8 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    v9 = [v8 options];
    v6 = [v9 coalescesWhenLocked];

    if (v7)
    {
      goto LABEL_6;
    }
  }

  return v6 ^ 1;
}

- (id)_rawContentIndividualSummaryText
{
  if (-[NCNotificationRequestCoalescingContentProvider _shouldShowNotificationBody](self, "_shouldShowNotificationBody") && -[NCNotificationRequestCoalescingContentProvider _shouldShowSummary](self, "_shouldShowSummary") && (!-[NCNotificationRequestCoalescingContentProvider isDisplayingInStack](self, "isDisplayingInStack") || (-[NCNotificationRequestCoalescingContentProvider notificationRequest](self, "notificationRequest"), v3 = objc_claimAutoreleasedReturnValue(), [v3 content], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isCommunicationType"), v4, v3, (v5 & 1) == 0)))
  {
    v8.receiver = self;
    v8.super_class = NCNotificationRequestCoalescingContentProvider;
    v6 = [(NCNotificationRequestContentProvider *)&v8 _rawContentIndividualSummaryText];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldShowSummary
{
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self isSummarizationEnabled];
  if (v3)
  {
    v4 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    v5 = [v4 options];
    v6 = [v5 canShowSummary];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (id)secondaryTextCompact
{
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self collapsedSectionSummaryString];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    v5 = [v4 nc_initWithString:v3 contentType:6];
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
    v5 = [v9 nc_initWithString:v4 contentType:7];

    goto LABEL_3;
  }

  v5 = [(NCNotificationRequestCoalescingContentProvider *)self secondaryText];
LABEL_8:

  return v5;
}

- (unint64_t)_notificationCount
{
  v2 = [(NCNotificationRequestCoalescingContentProvider *)self _activeSummaryBuilder];
  v3 = [v2 notificationRequests];
  v4 = [v3 count];

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
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self _rawContentThreadSummaryText];
  v4 = [v3 length];
  if ([(NCNotificationRequestCoalescingContentProvider *)self _shouldShowNotificationBody]&& [(NCNotificationRequestCoalescingContentProvider *)self _shouldShowSummary]&& v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCA898]);
    v6 = [v5 nc_initWithAttributedString:v3 contentType:2];
  }

  else
  {
    v6 = [(NCNotificationRequestCoalescingContentProvider *)self secondaryText];
  }

  return v6;
}

- (id)_rawContentThreadSummaryText
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self _shouldShowNotificationBody]&& [(NCNotificationRequestCoalescingContentProvider *)self _shouldShowSummary])
  {
    v3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    v4 = [v3 content];
    v5 = [v4 threadSummary];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)inlineAction
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self _shouldShowNotificationBody])
  {
    v5.receiver = self;
    v5.super_class = NCNotificationRequestCoalescingContentProvider;
    v3 = [(NCNotificationRequestContentProvider *)&v5 inlineAction];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)contentSummaryAttributionText
{
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self _rawContentThreadSummaryText];
  v4 = [v3 length];

  if (v4 && (v5 = MEMORY[0x277D77E60], -[NCNotificationRequestCoalescingContentProvider notificationRequest](self, "notificationRequest"), v6 = objc_claimAutoreleasedReturnValue(), [v6 sectionIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "categoryOfBundleId:", v7), v7, v6, v8 == 1))
  {
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"NOTIFICATION_SUMMARY_ATTRIBUTION_TEXT" value:&stru_282FE84F8 table:0];
    v12 = [v11 uppercaseString];
    v13 = [v9 initWithString:v12];
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
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NCNotificationRequestCoalescingContentProvider;
    v3 = [(NCNotificationRequestContentProvider *)&v5 importantText];
  }

  return v3;
}

- (id)thumbnail
{
  if ([(NCNotificationRequestCoalescingContentProvider *)self isHidingContent]|| [(NCNotificationRequestContentProvider *)self isThreadSummary])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NCNotificationRequestCoalescingContentProvider;
    v3 = [(NCNotificationRequestContentProvider *)&v5 thumbnail];
  }

  return v3;
}

- (NCNotificationRequestCoalescingContentProvider)initWithNotificationRequest:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NCNotificationRequestCoalescingContentProvider;
  v5 = [(NCNotificationRequestContentProvider *)&v11 initWithNotificationRequest:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    coalescedNotificationRequests = v5->_coalescedNotificationRequests;
    v5->_coalescedNotificationRequests = v6;

    if (v4)
    {
      [(NSMutableArray *)v5->_coalescedNotificationRequests addObject:v4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationRequestCoalescingContentProvider;
  v4 = [(NCNotificationRequestContentProvider *)&v8 copyWithZone:a3];
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
  v2 = [(NCNotificationRequestCoalescingContentProvider *)self coalescedNotificationRequests];
  v3 = [v2 count];

  return v3;
}

- (void)coalesceNotificationRequest:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationRequestCoalescingContentProvider *)self _indexOfMatchingNotificationRequest:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_coalescedNotificationRequests removeObjectAtIndex:v4];
  }

  [(NSMutableArray *)self->_coalescedNotificationRequests _insertOrderedNotificationRequest:v5];
  [(NCNotificationRequestCoalescingContentProvider *)self _updateSummaryText];
}

- (void)removeCoalescedNotificationRequest:(id)a3
{
  v4 = [(NCNotificationRequestCoalescingContentProvider *)self _indexOfMatchingNotificationRequest:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_coalescedNotificationRequests removeObjectAtIndex:v4];

    [(NCNotificationRequestCoalescingContentProvider *)self _updateSummaryText];
  }
}

- (void)updateCoalescedNotificationRequest:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationRequestCoalescingContentProvider *)self _indexOfMatchingNotificationRequest:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_coalescedNotificationRequests removeObjectAtIndex:v4];
    [(NSMutableArray *)self->_coalescedNotificationRequests _insertOrderedNotificationRequest:v5];
    [(NCNotificationRequestCoalescingContentProvider *)self _updateSummaryText];
  }
}

- (id)importantAttributedTextWithImageConfiguration:(id)a3 importantAdornmentEligibleOptions:(unint64_t)a4
{
  v6 = a3;
  if (![(NCNotificationRequestContentProvider *)self isThreadSummary])
  {
    v23.receiver = self;
    v23.super_class = NCNotificationRequestCoalescingContentProvider;
    v10 = [(NCNotificationRequestContentProvider *)&v23 importantAttributedTextWithImageConfiguration:v6 importantAdornmentEligibleOptions:a4];
    goto LABEL_12;
  }

  v7 = [(NCNotificationRequestCoalescingContentProvider *)self _isThreadContainsCriticalNotificationRequest];
  v8 = [(NCNotificationRequestCoalescingContentProvider *)self _isThreadContainsMaybeImportantNotificationRequest];
  if ((a4 & 1) != 0 && v7)
  {
    v9 = [(NCNotificationRequestContentProvider *)self _criticalAlertIconAttributedStringWithImageConfiguration:v6];
    v10 = [v9 mutableCopy];

    v11 = objc_alloc(MEMORY[0x277CCA898]);
    v12 = MEMORY[0x277CCACA8];
    v13 = NCUserNotificationsUIKitFrameworkBundle();
    v14 = v13;
    v15 = @"CRITICAL_TEXT";
LABEL_10:
    v18 = [v13 localizedStringForKey:v15 value:&stru_282FE84F8 table:0];
    v19 = [v18 localizedUppercaseString];
    v20 = [v12 stringWithFormat:@" %@", v19];
    v21 = [v11 initWithString:v20];
    [v10 appendAttributedString:v21];

    goto LABEL_12;
  }

  v16 = !v8;
  if ((a4 & 2) == 0)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v17 = [(NCNotificationRequestContentProvider *)self _intelligentManagementIconAttributedStringWithImageConfiguration:v6];
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
  v2 = [(NCNotificationRequestCoalescingContentProvider *)self _activeSummaryBuilder];
  v3 = [v2 notificationRequests];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) interruptionLevel] == 3)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(NCNotificationRequestCoalescingContentProvider *)self _activeSummaryBuilder];
  v3 = [v2 notificationRequests];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) alertOptions];
        v8 = [v7 intelligentBehavior];

        if (v8 == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v4 = [(NCNotificationRequestCoalescingContentProvider *)self overridenSummaryBuilder];
  if (v4)
  {
    v5 = [(NCNotificationRequestCoalescingContentProvider *)self overridenSummaryBuilder];
    v6 = [v5 notificationRequests];
  }

  else
  {
    v6 = self->_coalescedNotificationRequests;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = v6;
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

        v12 = [*(*(&v51 + 1) + 8 * i) content];
        v13 = [v12 hiddenPreviewsBodyPlaceholder];

        if (![v13 length])
        {
          v14 = NCUserNotificationsUIKitFrameworkBundle();
          v15 = [v14 localizedStringForKey:@"DEFAULT_HIDDEN_PREVIEW_PLACEHOLDER" value:&stru_282FE84F8 table:0];

          v13 = v15;
        }

        v16 = [v3 objectForKey:v13];
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
        [v3 setObject:v20 forKey:v13];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v9);
  }

  v21 = [v3 allKeys];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __75__NCNotificationRequestCoalescingContentProvider__placeholderSecondaryText__block_invoke;
  v48[3] = &unk_278371D40;
  v22 = v3;
  v49 = v22;
  v50 = self;
  v23 = [v21 bs_map:v48];

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

- (unint64_t)_indexOfMatchingNotificationRequest:(id)a3
{
  v4 = a3;
  coalescedNotificationRequests = self->_coalescedNotificationRequests;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__NCNotificationRequestCoalescingContentProvider__indexOfMatchingNotificationRequest___block_invoke;
  v9[3] = &unk_278370180;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)coalescedNotificationRequests indexOfObjectPassingTest:v9];

  return v7;
}

- (id)_localizedStringWithPlaceholderFormat:(id)a3 count:(unint64_t)a4
{
  v14 = 0;
  v6 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:a3 validFormatSpecifiers:@"%u" error:&v14, a4];
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
    v12 = [v9 localizedStringWithFormat:v11, a4, 0];

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