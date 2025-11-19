@interface NCNotificationRequestContentProvider
+ (id)primaryTextForRequest:(id)a3 isThreadSummary:(BOOL)a4 summarizedNotificationsAllHaveMatchingPrimaryText:(BOOL)a5;
- (BOOL)isDateAllDay;
- (BOOL)isHighlighted;
- (BOOL)isNumberOfLinesInfinite;
- (BOOL)isPrimarySubtitleTextDisplayingRecipientsSummary;
- (BOOL)isPrimarySubtitleTextDisplayingRequestTitle;
- (BOOL)showsTextInputOnAppearance;
- (MTVisualStylingProvider)importantTextVisualStylingProvider;
- (NCBadgedIconDescription)badgedIconDescription;
- (NCNotificationAction)inlineAction;
- (NCNotificationRequestContentProvider)init;
- (NCNotificationRequestContentProvider)initWithNotificationRequest:(id)a3;
- (NCNotificationStaticContentProvidingDelegate)delegate;
- (NSArray)currentActions;
- (NSArray)interfaceActions;
- (NSArray)menuActions;
- (NSAttributedString)secondaryText;
- (NSDate)date;
- (NSString)footerText;
- (NSString)importantText;
- (NSString)primarySubtitleText;
- (NSString)primaryText;
- (NSString)title;
- (NSTimeZone)timeZone;
- (UIImage)thumbnail;
- (id)_actionForNotificationAction:(id)a3;
- (id)_criticalAlertIconAttributedStringWithImageConfiguration:(id)a3;
- (id)_iconImageForNotificationAction:(id)a3;
- (id)_intelligentManagementIconAttributedStringWithImageConfiguration:(id)a3;
- (id)_rawContentIndividualSummaryText;
- (id)badgeText;
- (id)cancelAction;
- (id)clearAction;
- (id)closeAction;
- (id)copyWithContentHidingEnforcement:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultAction;
- (id)footerAttributedText;
- (id)importantAttributedTextWithImageConfiguration:(id)a3 importantAdornmentEligibleOptions:(unint64_t)a4;
- (void)defaultAction;
- (void)setIsThreadSummary:(BOOL)a3;
- (void)setNotificationRequest:(id)a3;
@end

@implementation NCNotificationRequestContentProvider

- (NCBadgedIconDescription)badgedIconDescription
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 topLevelSectionIdentifier];

  v5 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v6 = [v5 iconRecipe];

  v7 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v8 = [v7 subordinateIconRecipe];

  if (!(v6 | v8))
  {
    v9 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v10 = [v9 content];
    v11 = [v10 icons];
    v12 = [v11 firstObject];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v18 = [v17 content];
    v19 = [v18 icons];
    v20 = [v19 lastObject];
    v21 = objc_opt_class();
    v22 = v20;
    if (v21)
    {
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v16)
    {
      v25 = v16;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      v6 = [NCNotificationIconRecipe iconRecipeForImage:?];
    }

    else
    {
      v6 = 0;
    }
  }

  v26 = [(NCNotificationRequestContentProvider *)self badgeText];
  if (![(NCNotificationRequestContentProvider *)self isThreadSummary])
  {
    goto LABEL_23;
  }

  v27 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v28 = [v27 content];
  if ([v28 isCommunicationType])
  {

LABEL_23:
    v30 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v31 = [v30 content];
    v32 = [v31 communicationContext];

    v33 = [v32 isAvatarImagePossibleForBundleIdentifier:v4];
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = v6;
    }

    if (v34)
    {
      if (v33)
      {
        v35 = v6;
      }

      else
      {
        v35 = v8;
      }

      v36 = v35;
      v37 = v34;
      v38 = [[NCBadgedIconDescription alloc] initWithBundleIdentifier:v4 prominentIconDescription:v37 subordinateIconRecipe:v36 badgeText:v26];
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_32;
  }

  v29 = [(NCNotificationRequestContentProvider *)self summarizedNotificationsAllHaveMatchingIcons];

  if (v29)
  {
    goto LABEL_23;
  }

  if (v8)
  {
    v40 = v8;
  }

  else
  {
    v40 = v6;
  }

  if (v40)
  {
    v32 = v40;
    v38 = [[NCBadgedIconDescription alloc] initWithBundleIdentifier:v4 prominentIconDescription:v32 subordinateIconRecipe:0 badgeText:v26];
LABEL_32:

    goto LABEL_33;
  }

  v38 = 0;
LABEL_33:

  return v38;
}

- (id)badgeText
{
  v2 = [(NCNotificationRequestContentProvider *)self stackedNotificationsCount];
  if (v2 < 2)
  {
    v6 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCABB8] sbf_cachedDecimalNumberFormatter];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    v6 = [v4 stringFromNumber:v5];
  }

  return v6;
}

- (NSDate)date
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v3 = [v2 content];
  v4 = [v3 date];

  return v4;
}

- (NSTimeZone)timeZone
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v3 = [v2 content];
  v4 = [v3 timeZone];

  return v4;
}

- (NSString)primaryText
{
  v3 = objc_opt_class();
  v4 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v5 = [v3 primaryTextForRequest:v4 isThreadSummary:-[NCNotificationRequestContentProvider isThreadSummary](self summarizedNotificationsAllHaveMatchingPrimaryText:{"isThreadSummary"), -[NCNotificationRequestContentProvider summarizedNotificationsAllHaveMatchingPrimaryText](self, "summarizedNotificationsAllHaveMatchingPrimaryText")}];

  return v5;
}

- (NSString)primarySubtitleText
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 content];
  v5 = [v4 communicationContext];

  if ([(NCNotificationRequestContentProvider *)self isThreadSummary])
  {
    v6 = 0;
  }

  else if ([(NCNotificationRequestContentProvider *)self isPrimarySubtitleTextDisplayingRecipientsSummary])
  {
    v6 = [v5 preferredRecipientsSummary];
  }

  else
  {
    v7 = [(NCNotificationRequestContentProvider *)self isPrimarySubtitleTextDisplayingRequestTitle];
    v8 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v9 = [v8 content];
    v10 = v9;
    if (v7)
    {
      [v9 title];
    }

    else
    {
      [v9 subtitle];
    }
    v6 = ;
  }

  return v6;
}

- (BOOL)isPrimarySubtitleTextDisplayingRecipientsSummary
{
  if ([(NCNotificationRequestContentProvider *)self isPrimarySubtitleTextDisplayingRequestTitle])
  {
    return 0;
  }

  v4 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v5 = [v4 content];
  v6 = [v5 communicationContext];
  v3 = v6 != 0;

  return v3;
}

- (BOOL)isPrimarySubtitleTextDisplayingRequestTitle
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 content];
  v5 = [v4 customHeader];
  if (v5)
  {
    v6 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v7 = [v6 content];
    v8 = [v7 title];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSAttributedString)secondaryText
{
  v3 = [(NCNotificationRequestContentProvider *)self _rawContentIndividualSummaryText];
  v4 = [v3 length];
  v5 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v6 = [v5 isCollapsedNotification];

  if (v6)
  {
    v7 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v8 = [v7 content];
    v9 = [v8 customHeader];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v14 = [(NCNotificationRequestContentProvider *)self notificationRequest];
      v15 = [v14 content];
      v11 = [v15 defaultHeader];
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = NCUserNotificationsUIKitFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"COLLAPSED_NOTIFICATION_MESSAGE" value:&stru_282FE84F8 table:0];
    v19 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v20 = [v16 stringWithFormat:v18, objc_msgSend(v19, "collapsedNotificationsCount"), v11];

    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v20];
    v13 = 4;
  }

  else if (v4)
  {
    v12 = v3;
    v13 = 1;
  }

  else
  {
    v21 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v22 = [v21 content];
    v12 = [v22 attributedMessage];

    v13 = 3;
  }

  v23 = objc_alloc(MEMORY[0x277CCA898]);
  v24 = [v23 nc_initWithAttributedString:v12 contentType:v13];

  return v24;
}

- (BOOL)isDateAllDay
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v3 = [v2 content];
  v4 = [v3 isDateAllDay];

  return v4;
}

- (MTVisualStylingProvider)importantTextVisualStylingProvider
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v3 = [v2 interruptionLevel];

  if (v3 == 3)
  {
    v4 = MEMORY[0x277D26740];
    v5 = NCUserNotificationsUIKitFrameworkBundle();
    v6 = [v4 _visualStylingProviderForStyleSetNamed:@"notificationCritical" inBundle:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)footerAttributedText
{
  v2 = MEMORY[0x277CCA898];
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 content];
  v5 = [v4 footer];
  v6 = [v2 nc_safeAttributedStringWithString:v5];

  return v6;
}

- (NSString)importantText
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  if ([v2 interruptionLevel] == 2)
  {
    v3 = NCUserNotificationsUIKitFrameworkBundle();
    v4 = [v3 localizedStringForKey:@"TIME_SENSITIVE_TEXT" value:&stru_282FE84F8 table:0];
    v5 = [v4 localizedUppercaseString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)footerText
{
  v2 = [(NCNotificationRequestContentProvider *)self footerAttributedText];
  v3 = [v2 string];

  return v3;
}

- (NSString)title
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 content];
  v5 = [v4 customHeader];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v9 = [v8 content];
    v7 = [v9 defaultHeader];
  }

  if (v7)
  {
    v10 = [v7 localizedUppercaseString];
  }

  else
  {
    v11 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v12 = [v11 content];
    v13 = [v12 title];
    v10 = [v13 localizedUppercaseString];
  }

  return v10;
}

- (NCNotificationAction)inlineAction
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v3 = [v2 inlineAction];

  return v3;
}

- (UIImage)thumbnail
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v3 = [v2 content];
  v4 = [v3 attachmentImage];

  return v4;
}

- (BOOL)isNumberOfLinesInfinite
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v3 = [v2 options];
  v4 = [v3 isNumberOfLinesInfinite];

  return v4;
}

- (BOOL)isHighlighted
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  if ([v2 isHighlight])
  {
    v3 = _NCIsNotificationHighlightsAllowed();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NCNotificationRequestContentProvider)initWithNotificationRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationRequestContentProvider;
  v6 = [(NCNotificationRequestContentProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationRequest, a3);
  }

  return v7;
}

- (NCNotificationRequestContentProvider)init
{
  [(NCNotificationRequestContentProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithNotificationRequest:self->_notificationRequest];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak((v4 + 16), WeakRetained);

  *(v4 + 32) = self->_contentHidingEnforcement;
  objc_storeStrong((v4 + 24), self->_overriddenActions);
  return v4;
}

- (void)setNotificationRequest:(id)a3
{
  v5 = a3;
  notificationRequest = self->_notificationRequest;
  p_notificationRequest = &self->_notificationRequest;
  if (notificationRequest != v5)
  {
    v8 = v5;
    objc_storeStrong(p_notificationRequest, a3);
    v5 = v8;
  }
}

+ (id)primaryTextForRequest:(id)a3 isThreadSummary:(BOOL)a4 summarizedNotificationsAllHaveMatchingPrimaryText:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [v7 content];
  v9 = [v8 customHeader];

  v10 = [v7 content];
  v11 = [v10 communicationContext];

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    if (!v11)
    {
      if (!v6 || v5)
      {
        v18 = [v7 content];
        v13 = [v18 title];
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_9;
    }

    if (v6 && ([v11 isGroup] & 1) != 0)
    {
      v12 = [v11 preferredRecipientsSummary];
    }

    else
    {
      v12 = [v11 preferredSenderSummary];
    }
  }

  v13 = v12;
LABEL_9:
  if (![v13 length])
  {
    v14 = [v7 content];
    v15 = [v14 defaultHeader];

    v13 = v15;
  }

  v16 = v13;

  return v13;
}

- (void)setIsThreadSummary:(BOOL)a3
{
  if (self->_isThreadSummary != a3)
  {
    self->_isThreadSummary = a3;
  }
}

- (id)importantAttributedTextWithImageConfiguration:(id)a3 importantAdornmentEligibleOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v8 = [v7 interruptionLevel];

  v9 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v10 = [v9 alertOptions];
  v11 = [v10 intelligentBehavior];

  if ((v4 & 1) != 0 && v8 == 3)
  {
    v12 = [(NCNotificationRequestContentProvider *)self _criticalAlertIconAttributedStringWithImageConfiguration:v6];
    v13 = @"CRITICAL_TEXT";
LABEL_7:
    v14 = [v12 mutableCopy];

    v15 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = MEMORY[0x277CCACA8];
    v17 = NCUserNotificationsUIKitFrameworkBundle();
    v18 = [v17 localizedStringForKey:v13 value:&stru_282FE84F8 table:0];
    v19 = [v18 localizedUppercaseString];
    v20 = [v16 stringWithFormat:@" %@", v19];
    v21 = [v15 initWithString:v20];
    [v14 appendAttributedString:v21];

    goto LABEL_8;
  }

  v14 = 0;
  if ((v4 & 2) != 0 && v11 == 2)
  {
    v12 = [(NCNotificationRequestContentProvider *)self _intelligentManagementIconAttributedStringWithImageConfiguration:v6];
    v13 = @"INTELLIGENCE_PRIORITY";
    goto LABEL_7;
  }

LABEL_8:

  return v14;
}

- (NSArray)interfaceActions
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = objc_opt_new();
  objc_initWeak(&location, self);
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  if ([v3 showsTextInputOnAppearance])
  {
    v4 = [(NCNotificationRequestContentProvider *)self overriddenActions];
    v5 = v4 == 0;

    if (v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  [(NCNotificationRequestContentProvider *)self currentActions];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 title];
        if (v11)
        {
          if ([v10 isDestructiveAction])
          {
            v12 = 2;
          }

          else
          {
            v12 = 0;
          }

          v13 = MEMORY[0x277D75618];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __56__NCNotificationRequestContentProvider_interfaceActions__block_invoke;
          v18[3] = &unk_278371AF0;
          objc_copyWeak(&v19, &location);
          v18[4] = v10;
          v14 = [v13 actionWithTitle:v11 type:v12 handler:v18];
          [v17 addObject:v14];

          objc_destroyWeak(&v19);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

LABEL_18:
  v15 = [v17 copy];
  objc_destroyWeak(&location);

  return v15;
}

void __56__NCNotificationRequestContentProvider_interfaceActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 contentProvider:WeakRetained performAction:*(a1 + 32) animated:1];
}

- (NSArray)menuActions
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  if ([v3 showsTextInputOnAppearance])
  {
    v4 = [(NCNotificationRequestContentProvider *)self overriddenActions];

    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = [(NCNotificationRequestContentProvider *)self currentActions];
  objc_initWeak(&location, self);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 title];
        if (v10)
        {
          v11 = [(NCNotificationRequestContentProvider *)self notificationRequest];
          v12 = [v11 notificationIdentifier];
          v13 = [v12 un_logDigest];
          v14 = [v13 stringByAppendingPathExtension:v10];

          v15 = MEMORY[0x277D750C8];
          v16 = [(NCNotificationRequestContentProvider *)self _iconImageForNotificationAction:v9];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __51__NCNotificationRequestContentProvider_menuActions__block_invoke;
          v22[3] = &unk_278371940;
          objc_copyWeak(&v23, &location);
          v22[4] = v9;
          v17 = [v15 actionWithTitle:v10 image:v16 identifier:v14 handler:v22];

          if ([v9 isDestructiveAction])
          {
            v18 = 10;
          }

          else
          {
            v18 = 8;
          }

          [v17 setAttributes:v18];
          [v21 addObject:v17];

          objc_destroyWeak(&v23);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&location);
LABEL_18:

  return v21;
}

void __51__NCNotificationRequestContentProvider_menuActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 contentProvider:WeakRetained performAction:*(a1 + 32) animated:1];
}

- (id)_actionForNotificationAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v6 = [v5 notificationIdentifier];
  v7 = [v6 un_logDigest];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __69__NCNotificationRequestContentProvider__actionForNotificationAction___block_invoke;
  v16 = &unk_278371AC8;
  objc_copyWeak(&v19, &location);
  v8 = v7;
  v17 = v8;
  v9 = v4;
  v18 = v9;
  v10 = _Block_copy(&v13);
  v11 = [v10 copy];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

void __69__NCNotificationRequestContentProvider__actionForNotificationAction___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      __69__NCNotificationRequestContentProvider__actionForNotificationAction___block_invoke_cold_1(a1, v5);
    }
  }

  v6 = [WeakRetained delegate];
  [v6 contentProvider:WeakRetained performAction:*(a1 + 40) animated:a2];
}

- (id)defaultAction
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 defaultAction];

  if (v4)
  {
    v5 = [(NCNotificationRequestContentProvider *)self _actionForNotificationAction:v4];
  }

  else
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationRequestContentProvider *)v6 defaultAction];
    }

    v5 = 0;
  }

  v7 = _Block_copy(v5);

  return v7;
}

- (id)cancelAction
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 cancelAction];
  v5 = [(NCNotificationRequestContentProvider *)self _actionForNotificationAction:v4];

  return v5;
}

- (id)clearAction
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 clearAction];
  v5 = [(NCNotificationRequestContentProvider *)self _actionForNotificationAction:v4];

  return v5;
}

- (id)closeAction
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 closeAction];
  v5 = [(NCNotificationRequestContentProvider *)self _actionForNotificationAction:v4];

  return v5;
}

- (BOOL)showsTextInputOnAppearance
{
  v2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v3 = [v2 showsTextInputOnAppearance];

  return v3;
}

- (NSArray)currentActions
{
  v3 = [(NCNotificationRequestContentProvider *)self overriddenActions];
  if (v3)
  {
    v4 = [(NCNotificationRequestContentProvider *)self overriddenActions];
  }

  else
  {
    v5 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v4 = [v5 defaultEnvironmentActions];
  }

  v6 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v7 = [v6 inlineAction];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
    [v8 addObjectsFromArray:v4];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (id)copyWithContentHidingEnforcement:(int64_t)a3
{
  result = [(NCNotificationRequestContentProvider *)self copy];
  *(result + 4) = a3;
  return result;
}

- (id)_iconImageForNotificationAction:(id)a3
{
  v4 = a3;
  v5 = [v4 iconImageName];
  if (![v5 length])
  {
    v9 = 0;
    goto LABEL_19;
  }

  v6 = [v4 iconImageBundlePath];
  if (![v6 length])
  {
    v10 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v11 = [v10 sectionIdentifier];
    v12 = [v11 un_isFirstPartyIdentifier];

    if (v12)
    {
      [MEMORY[0x277D755B8] _systemImageNamed:v5];
    }

    else
    {
      [MEMORY[0x277D755B8] systemImageNamed:v5];
    }
    v9 = ;
    goto LABEL_18;
  }

  v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
  if (!v7)
  {
    v13 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v14 = [v13 topLevelSectionIdentifier];

    if (v14)
    {
      v15 = MEMORY[0x277CC1E70];
      v16 = [(NCNotificationRequestContentProvider *)self notificationRequest];
      v17 = [v16 topLevelSectionIdentifier];
      v18 = [v15 unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v17];

      if (v18)
      {
        v19 = MEMORY[0x277CCA8D8];
        v20 = [v18 URL];
        v8 = [v19 bundleWithURL:v20];

        if (v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v21 = *MEMORY[0x277D77DC0];
        if (os_log_type_enabled(*MEMORY[0x277D77DC0], OS_LOG_TYPE_ERROR))
        {
          [(NCNotificationRequestContentProvider *)v21 _iconImageForNotificationAction:?];
        }
      }
    }

    v9 = 0;
    goto LABEL_18;
  }

  v8 = v7;
LABEL_5:
  v9 = [MEMORY[0x277D755B8] imageNamed:v5 inBundle:v8 withConfiguration:0];

LABEL_18:
LABEL_19:

  return v9;
}

- (NCNotificationStaticContentProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_criticalAlertIconAttributedStringWithImageConfiguration:(id)a3
{
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill" withConfiguration:a3];
  v4 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
  [v4 setImage:v3];
  v5 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v4];

  return v5;
}

- (id)_intelligentManagementIconAttributedStringWithImageConfiguration:(id)a3
{
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"_gm" withConfiguration:a3];
  v4 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
  [v4 setImage:v3];
  v5 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v4];

  return v5;
}

- (id)_rawContentIndividualSummaryText
{
  v3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v4 = [v3 options];
  v5 = [v4 canShowSummary];

  if (v5)
  {
    v6 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v7 = [v6 content];
    v8 = [v7 summary];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __69__NCNotificationRequestContentProvider__actionForNotificationAction___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21E77E000, a2, OS_LOG_TYPE_ERROR, "ContentProvider couldn't strongify self to execute action for %{public}@", &v3, 0xCu);
}

- (void)defaultAction
{
  v3 = a1;
  v4 = [a2 notificationRequest];
  v5 = [v4 notificationIdentifier];
  v6 = [v5 un_logDigest];
  OUTLINED_FUNCTION_0_6(&dword_21E77E000, v7, v8, "ContentProvider: no defaultAction for %{public}@", v9, v10, v11, v12, 2u);
}

- (void)_iconImageForNotificationAction:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 notificationRequest];
  v5 = [v4 topLevelSectionIdentifier];
  OUTLINED_FUNCTION_0_6(&dword_21E77E000, v6, v7, "Failed to load bundle for '%@'.", v8, v9, v10, v11, 2u);
}

@end