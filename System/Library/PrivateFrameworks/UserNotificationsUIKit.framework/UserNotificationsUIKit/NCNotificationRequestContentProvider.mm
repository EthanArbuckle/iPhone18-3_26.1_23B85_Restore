@interface NCNotificationRequestContentProvider
+ (id)primaryTextForRequest:(id)request isThreadSummary:(BOOL)summary summarizedNotificationsAllHaveMatchingPrimaryText:(BOOL)text;
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
- (NCNotificationRequestContentProvider)initWithNotificationRequest:(id)request;
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
- (id)_actionForNotificationAction:(id)action;
- (id)_criticalAlertIconAttributedStringWithImageConfiguration:(id)configuration;
- (id)_iconImageForNotificationAction:(id)action;
- (id)_intelligentManagementIconAttributedStringWithImageConfiguration:(id)configuration;
- (id)_rawContentIndividualSummaryText;
- (id)badgeText;
- (id)cancelAction;
- (id)clearAction;
- (id)closeAction;
- (id)copyWithContentHidingEnforcement:(int64_t)enforcement;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultAction;
- (id)footerAttributedText;
- (id)importantAttributedTextWithImageConfiguration:(id)configuration importantAdornmentEligibleOptions:(unint64_t)options;
- (void)defaultAction;
- (void)setIsThreadSummary:(BOOL)summary;
- (void)setNotificationRequest:(id)request;
@end

@implementation NCNotificationRequestContentProvider

- (NCBadgedIconDescription)badgedIconDescription
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  topLevelSectionIdentifier = [notificationRequest topLevelSectionIdentifier];

  notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  iconRecipe = [notificationRequest2 iconRecipe];

  notificationRequest3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  subordinateIconRecipe = [notificationRequest3 subordinateIconRecipe];

  if (!(iconRecipe | subordinateIconRecipe))
  {
    notificationRequest4 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content = [notificationRequest4 content];
    icons = [content icons];
    firstObject = [icons firstObject];
    v13 = objc_opt_class();
    v14 = firstObject;
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

    notificationRequest5 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content2 = [notificationRequest5 content];
    icons2 = [content2 icons];
    lastObject = [icons2 lastObject];
    v21 = objc_opt_class();
    v22 = lastObject;
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
      iconRecipe = [NCNotificationIconRecipe iconRecipeForImage:?];
    }

    else
    {
      iconRecipe = 0;
    }
  }

  badgeText = [(NCNotificationRequestContentProvider *)self badgeText];
  if (![(NCNotificationRequestContentProvider *)self isThreadSummary])
  {
    goto LABEL_23;
  }

  notificationRequest6 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content3 = [notificationRequest6 content];
  if ([content3 isCommunicationType])
  {

LABEL_23:
    notificationRequest7 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content4 = [notificationRequest7 content];
    communicationContext = [content4 communicationContext];

    v33 = [communicationContext isAvatarImagePossibleForBundleIdentifier:topLevelSectionIdentifier];
    if (v33)
    {
      v34 = communicationContext;
    }

    else
    {
      v34 = iconRecipe;
    }

    if (v34)
    {
      if (v33)
      {
        v35 = iconRecipe;
      }

      else
      {
        v35 = subordinateIconRecipe;
      }

      v36 = v35;
      v37 = v34;
      v38 = [[NCBadgedIconDescription alloc] initWithBundleIdentifier:topLevelSectionIdentifier prominentIconDescription:v37 subordinateIconRecipe:v36 badgeText:badgeText];
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_32;
  }

  summarizedNotificationsAllHaveMatchingIcons = [(NCNotificationRequestContentProvider *)self summarizedNotificationsAllHaveMatchingIcons];

  if (summarizedNotificationsAllHaveMatchingIcons)
  {
    goto LABEL_23;
  }

  if (subordinateIconRecipe)
  {
    v40 = subordinateIconRecipe;
  }

  else
  {
    v40 = iconRecipe;
  }

  if (v40)
  {
    communicationContext = v40;
    v38 = [[NCBadgedIconDescription alloc] initWithBundleIdentifier:topLevelSectionIdentifier prominentIconDescription:communicationContext subordinateIconRecipe:0 badgeText:badgeText];
LABEL_32:

    goto LABEL_33;
  }

  v38 = 0;
LABEL_33:

  return v38;
}

- (id)badgeText
{
  stackedNotificationsCount = [(NCNotificationRequestContentProvider *)self stackedNotificationsCount];
  if (stackedNotificationsCount < 2)
  {
    v6 = 0;
  }

  else
  {
    v3 = stackedNotificationsCount;
    sbf_cachedDecimalNumberFormatter = [MEMORY[0x277CCABB8] sbf_cachedDecimalNumberFormatter];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    v6 = [sbf_cachedDecimalNumberFormatter stringFromNumber:v5];
  }

  return v6;
}

- (NSDate)date
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  date = [content date];

  return date;
}

- (NSTimeZone)timeZone
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  timeZone = [content timeZone];

  return timeZone;
}

- (NSString)primaryText
{
  v3 = objc_opt_class();
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  v5 = [v3 primaryTextForRequest:notificationRequest isThreadSummary:-[NCNotificationRequestContentProvider isThreadSummary](self summarizedNotificationsAllHaveMatchingPrimaryText:{"isThreadSummary"), -[NCNotificationRequestContentProvider summarizedNotificationsAllHaveMatchingPrimaryText](self, "summarizedNotificationsAllHaveMatchingPrimaryText")}];

  return v5;
}

- (NSString)primarySubtitleText
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  communicationContext = [content communicationContext];

  if ([(NCNotificationRequestContentProvider *)self isThreadSummary])
  {
    preferredRecipientsSummary = 0;
  }

  else if ([(NCNotificationRequestContentProvider *)self isPrimarySubtitleTextDisplayingRecipientsSummary])
  {
    preferredRecipientsSummary = [communicationContext preferredRecipientsSummary];
  }

  else
  {
    isPrimarySubtitleTextDisplayingRequestTitle = [(NCNotificationRequestContentProvider *)self isPrimarySubtitleTextDisplayingRequestTitle];
    notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content2 = [notificationRequest2 content];
    v10 = content2;
    if (isPrimarySubtitleTextDisplayingRequestTitle)
    {
      [content2 title];
    }

    else
    {
      [content2 subtitle];
    }
    preferredRecipientsSummary = ;
  }

  return preferredRecipientsSummary;
}

- (BOOL)isPrimarySubtitleTextDisplayingRecipientsSummary
{
  if ([(NCNotificationRequestContentProvider *)self isPrimarySubtitleTextDisplayingRequestTitle])
  {
    return 0;
  }

  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  communicationContext = [content communicationContext];
  v3 = communicationContext != 0;

  return v3;
}

- (BOOL)isPrimarySubtitleTextDisplayingRequestTitle
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  customHeader = [content customHeader];
  if (customHeader)
  {
    notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content2 = [notificationRequest2 content];
    title = [content2 title];
    v9 = title != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSAttributedString)secondaryText
{
  _rawContentIndividualSummaryText = [(NCNotificationRequestContentProvider *)self _rawContentIndividualSummaryText];
  v4 = [_rawContentIndividualSummaryText length];
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  isCollapsedNotification = [notificationRequest isCollapsedNotification];

  if (isCollapsedNotification)
  {
    notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content = [notificationRequest2 content];
    customHeader = [content customHeader];
    v10 = customHeader;
    if (customHeader)
    {
      defaultHeader = customHeader;
    }

    else
    {
      notificationRequest3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
      content2 = [notificationRequest3 content];
      defaultHeader = [content2 defaultHeader];
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = NCUserNotificationsUIKitFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"COLLAPSED_NOTIFICATION_MESSAGE" value:&stru_282FE84F8 table:0];
    notificationRequest4 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    v20 = [v16 stringWithFormat:v18, objc_msgSend(notificationRequest4, "collapsedNotificationsCount"), defaultHeader];

    attributedMessage = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v20];
    v13 = 4;
  }

  else if (v4)
  {
    attributedMessage = _rawContentIndividualSummaryText;
    v13 = 1;
  }

  else
  {
    notificationRequest5 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content3 = [notificationRequest5 content];
    attributedMessage = [content3 attributedMessage];

    v13 = 3;
  }

  v23 = objc_alloc(MEMORY[0x277CCA898]);
  v24 = [v23 nc_initWithAttributedString:attributedMessage contentType:v13];

  return v24;
}

- (BOOL)isDateAllDay
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  isDateAllDay = [content isDateAllDay];

  return isDateAllDay;
}

- (MTVisualStylingProvider)importantTextVisualStylingProvider
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  interruptionLevel = [notificationRequest interruptionLevel];

  if (interruptionLevel == 3)
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
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  footer = [content footer];
  v6 = [v2 nc_safeAttributedStringWithString:footer];

  return v6;
}

- (NSString)importantText
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  if ([notificationRequest interruptionLevel] == 2)
  {
    v3 = NCUserNotificationsUIKitFrameworkBundle();
    v4 = [v3 localizedStringForKey:@"TIME_SENSITIVE_TEXT" value:&stru_282FE84F8 table:0];
    localizedUppercaseString = [v4 localizedUppercaseString];
  }

  else
  {
    localizedUppercaseString = 0;
  }

  return localizedUppercaseString;
}

- (NSString)footerText
{
  footerAttributedText = [(NCNotificationRequestContentProvider *)self footerAttributedText];
  string = [footerAttributedText string];

  return string;
}

- (NSString)title
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  customHeader = [content customHeader];
  v6 = customHeader;
  if (customHeader)
  {
    defaultHeader = customHeader;
  }

  else
  {
    notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content2 = [notificationRequest2 content];
    defaultHeader = [content2 defaultHeader];
  }

  if (defaultHeader)
  {
    localizedUppercaseString = [defaultHeader localizedUppercaseString];
  }

  else
  {
    notificationRequest3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content3 = [notificationRequest3 content];
    title = [content3 title];
    localizedUppercaseString = [title localizedUppercaseString];
  }

  return localizedUppercaseString;
}

- (NCNotificationAction)inlineAction
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  inlineAction = [notificationRequest inlineAction];

  return inlineAction;
}

- (UIImage)thumbnail
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  attachmentImage = [content attachmentImage];

  return attachmentImage;
}

- (BOOL)isNumberOfLinesInfinite
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  options = [notificationRequest options];
  isNumberOfLinesInfinite = [options isNumberOfLinesInfinite];

  return isNumberOfLinesInfinite;
}

- (BOOL)isHighlighted
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  if ([notificationRequest isHighlight])
  {
    v3 = _NCIsNotificationHighlightsAllowed();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NCNotificationRequestContentProvider)initWithNotificationRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = NCNotificationRequestContentProvider;
  v6 = [(NCNotificationRequestContentProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationRequest, request);
  }

  return v7;
}

- (NCNotificationRequestContentProvider)init
{
  [(NCNotificationRequestContentProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithNotificationRequest:self->_notificationRequest];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak((v4 + 16), WeakRetained);

  *(v4 + 32) = self->_contentHidingEnforcement;
  objc_storeStrong((v4 + 24), self->_overriddenActions);
  return v4;
}

- (void)setNotificationRequest:(id)request
{
  requestCopy = request;
  notificationRequest = self->_notificationRequest;
  p_notificationRequest = &self->_notificationRequest;
  if (notificationRequest != requestCopy)
  {
    v8 = requestCopy;
    objc_storeStrong(p_notificationRequest, request);
    requestCopy = v8;
  }
}

+ (id)primaryTextForRequest:(id)request isThreadSummary:(BOOL)summary summarizedNotificationsAllHaveMatchingPrimaryText:(BOOL)text
{
  textCopy = text;
  summaryCopy = summary;
  requestCopy = request;
  content = [requestCopy content];
  customHeader = [content customHeader];

  content2 = [requestCopy content];
  communicationContext = [content2 communicationContext];

  if (customHeader)
  {
    preferredRecipientsSummary = customHeader;
  }

  else
  {
    if (!communicationContext)
    {
      if (!summaryCopy || textCopy)
      {
        content3 = [requestCopy content];
        title = [content3 title];
      }

      else
      {
        title = 0;
      }

      goto LABEL_9;
    }

    if (summaryCopy && ([communicationContext isGroup] & 1) != 0)
    {
      preferredRecipientsSummary = [communicationContext preferredRecipientsSummary];
    }

    else
    {
      preferredRecipientsSummary = [communicationContext preferredSenderSummary];
    }
  }

  title = preferredRecipientsSummary;
LABEL_9:
  if (![title length])
  {
    content4 = [requestCopy content];
    defaultHeader = [content4 defaultHeader];

    title = defaultHeader;
  }

  v16 = title;

  return title;
}

- (void)setIsThreadSummary:(BOOL)summary
{
  if (self->_isThreadSummary != summary)
  {
    self->_isThreadSummary = summary;
  }
}

- (id)importantAttributedTextWithImageConfiguration:(id)configuration importantAdornmentEligibleOptions:(unint64_t)options
{
  optionsCopy = options;
  configurationCopy = configuration;
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  interruptionLevel = [notificationRequest interruptionLevel];

  notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  alertOptions = [notificationRequest2 alertOptions];
  intelligentBehavior = [alertOptions intelligentBehavior];

  if ((optionsCopy & 1) != 0 && interruptionLevel == 3)
  {
    v12 = [(NCNotificationRequestContentProvider *)self _criticalAlertIconAttributedStringWithImageConfiguration:configurationCopy];
    v13 = @"CRITICAL_TEXT";
LABEL_7:
    v14 = [v12 mutableCopy];

    v15 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = MEMORY[0x277CCACA8];
    v17 = NCUserNotificationsUIKitFrameworkBundle();
    v18 = [v17 localizedStringForKey:v13 value:&stru_282FE84F8 table:0];
    localizedUppercaseString = [v18 localizedUppercaseString];
    v20 = [v16 stringWithFormat:@" %@", localizedUppercaseString];
    v21 = [v15 initWithString:v20];
    [v14 appendAttributedString:v21];

    goto LABEL_8;
  }

  v14 = 0;
  if ((optionsCopy & 2) != 0 && intelligentBehavior == 2)
  {
    v12 = [(NCNotificationRequestContentProvider *)self _intelligentManagementIconAttributedStringWithImageConfiguration:configurationCopy];
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
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  if ([notificationRequest showsTextInputOnAppearance])
  {
    overriddenActions = [(NCNotificationRequestContentProvider *)self overriddenActions];
    v5 = overriddenActions == 0;

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
        title = [v10 title];
        if (title)
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
          v14 = [v13 actionWithTitle:title type:v12 handler:v18];
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
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  if ([notificationRequest showsTextInputOnAppearance])
  {
    overriddenActions = [(NCNotificationRequestContentProvider *)self overriddenActions];

    if (!overriddenActions)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  currentActions = [(NCNotificationRequestContentProvider *)self currentActions];
  objc_initWeak(&location, self);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = currentActions;
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
        title = [v9 title];
        if (title)
        {
          notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
          notificationIdentifier = [notificationRequest2 notificationIdentifier];
          un_logDigest = [notificationIdentifier un_logDigest];
          v14 = [un_logDigest stringByAppendingPathExtension:title];

          v15 = MEMORY[0x277D750C8];
          v16 = [(NCNotificationRequestContentProvider *)self _iconImageForNotificationAction:v9];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __51__NCNotificationRequestContentProvider_menuActions__block_invoke;
          v22[3] = &unk_278371940;
          objc_copyWeak(&v23, &location);
          v22[4] = v9;
          v17 = [v15 actionWithTitle:title image:v16 identifier:v14 handler:v22];

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

- (id)_actionForNotificationAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  notificationIdentifier = [notificationRequest notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __69__NCNotificationRequestContentProvider__actionForNotificationAction___block_invoke;
  v16 = &unk_278371AC8;
  objc_copyWeak(&v19, &location);
  v8 = un_logDigest;
  v17 = v8;
  v9 = actionCopy;
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
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  defaultAction = [notificationRequest defaultAction];

  if (defaultAction)
  {
    v5 = [(NCNotificationRequestContentProvider *)self _actionForNotificationAction:defaultAction];
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
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  cancelAction = [notificationRequest cancelAction];
  v5 = [(NCNotificationRequestContentProvider *)self _actionForNotificationAction:cancelAction];

  return v5;
}

- (id)clearAction
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  clearAction = [notificationRequest clearAction];
  v5 = [(NCNotificationRequestContentProvider *)self _actionForNotificationAction:clearAction];

  return v5;
}

- (id)closeAction
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  closeAction = [notificationRequest closeAction];
  v5 = [(NCNotificationRequestContentProvider *)self _actionForNotificationAction:closeAction];

  return v5;
}

- (BOOL)showsTextInputOnAppearance
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  showsTextInputOnAppearance = [notificationRequest showsTextInputOnAppearance];

  return showsTextInputOnAppearance;
}

- (NSArray)currentActions
{
  overriddenActions = [(NCNotificationRequestContentProvider *)self overriddenActions];
  if (overriddenActions)
  {
    overriddenActions2 = [(NCNotificationRequestContentProvider *)self overriddenActions];
  }

  else
  {
    notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
    overriddenActions2 = [notificationRequest defaultEnvironmentActions];
  }

  notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
  inlineAction = [notificationRequest2 inlineAction];

  if (inlineAction)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithObject:inlineAction];
    [v8 addObjectsFromArray:overriddenActions2];
  }

  else
  {
    v8 = overriddenActions2;
  }

  return v8;
}

- (id)copyWithContentHidingEnforcement:(int64_t)enforcement
{
  result = [(NCNotificationRequestContentProvider *)self copy];
  *(result + 4) = enforcement;
  return result;
}

- (id)_iconImageForNotificationAction:(id)action
{
  actionCopy = action;
  iconImageName = [actionCopy iconImageName];
  if (![iconImageName length])
  {
    v9 = 0;
    goto LABEL_19;
  }

  iconImageBundlePath = [actionCopy iconImageBundlePath];
  if (![iconImageBundlePath length])
  {
    notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
    sectionIdentifier = [notificationRequest sectionIdentifier];
    un_isFirstPartyIdentifier = [sectionIdentifier un_isFirstPartyIdentifier];

    if (un_isFirstPartyIdentifier)
    {
      [MEMORY[0x277D755B8] _systemImageNamed:iconImageName];
    }

    else
    {
      [MEMORY[0x277D755B8] systemImageNamed:iconImageName];
    }
    v9 = ;
    goto LABEL_18;
  }

  v7 = [MEMORY[0x277CCA8D8] bundleWithPath:iconImageBundlePath];
  if (!v7)
  {
    notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    topLevelSectionIdentifier = [notificationRequest2 topLevelSectionIdentifier];

    if (topLevelSectionIdentifier)
    {
      v15 = MEMORY[0x277CC1E70];
      notificationRequest3 = [(NCNotificationRequestContentProvider *)self notificationRequest];
      topLevelSectionIdentifier2 = [notificationRequest3 topLevelSectionIdentifier];
      v18 = [v15 unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:topLevelSectionIdentifier2];

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
  v9 = [MEMORY[0x277D755B8] imageNamed:iconImageName inBundle:v8 withConfiguration:0];

LABEL_18:
LABEL_19:

  return v9;
}

- (NCNotificationStaticContentProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_criticalAlertIconAttributedStringWithImageConfiguration:(id)configuration
{
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill" withConfiguration:configuration];
  v4 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
  [v4 setImage:v3];
  v5 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v4];

  return v5;
}

- (id)_intelligentManagementIconAttributedStringWithImageConfiguration:(id)configuration
{
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"_gm" withConfiguration:configuration];
  v4 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
  [v4 setImage:v3];
  v5 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v4];

  return v5;
}

- (id)_rawContentIndividualSummaryText
{
  notificationRequest = [(NCNotificationRequestContentProvider *)self notificationRequest];
  options = [notificationRequest options];
  canShowSummary = [options canShowSummary];

  if (canShowSummary)
  {
    notificationRequest2 = [(NCNotificationRequestContentProvider *)self notificationRequest];
    content = [notificationRequest2 content];
    summary = [content summary];
  }

  else
  {
    summary = 0;
  }

  return summary;
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
  selfCopy = self;
  notificationRequest = [a2 notificationRequest];
  notificationIdentifier = [notificationRequest notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];
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