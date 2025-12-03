@interface _ICQFollowupSpecification
+ (id)sharedFollowUpController;
+ (void)clearFollowupWithController:(id)controller offerType:(int64_t)type completion:(id)completion;
+ (void)clearLegacyFollowupWithController:(id)controller;
+ (void)clearNotificationWithController:(id)controller offerType:(int64_t)type completion:(id)completion;
- (NSString)purchaseAttribution;
- (NSURL)dynamicUIRouteURL;
- (NSURL)serverUIURL;
- (_ICQFollowupSpecification)init;
- (_ICQFollowupSpecification)initWithServerDictionary:(id)dictionary;
- (id)_buildFollowupItem;
- (id)followupActionForLink:(id)link needsFlow:(BOOL)flow;
- (id)identifierPrefix;
- (int64_t)primaryAction;
- (void)_postFollowupWithController:(id)controller completion:(id)completion;
- (void)addNotifyingAppIdForItem:(id)item;
- (void)postFollowupWithController:(id)controller;
- (void)postFollowupWithController:(id)controller replaceExisting:(BOOL)existing completion:(id)completion;
- (void)setServerDict:(id)dict;
@end

@implementation _ICQFollowupSpecification

- (_ICQFollowupSpecification)init
{
  v6.receiver = self;
  v6.super_class = _ICQFollowupSpecification;
  v2 = [(_ICQFollowupSpecification *)&v6 init];
  v3 = v2;
  if (v2)
  {
    links = v2->_links;
    v2->_links = MEMORY[0x277CBEBF8];

    *&v3->_premiumOffer = 0;
  }

  return v3;
}

- (_ICQFollowupSpecification)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(_ICQFollowupSpecification *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"followUpInfo"];
    [(_ICQFollowupSpecification *)v5 setServerDict:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"badgeApp"];
    v5->_badgeApp = _ICQBooleanForServerObjectDefault(v7, 1);

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isPremiumOffer"];
    v5->_premiumOffer = _ICQBooleanForServerObjectDefault(v8, 0);

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isEventOffer"];
    v5->_eventOffer = _ICQBooleanForServerObjectDefault(v9, 0);

    v10 = _ICQStringForKey(dictionaryCopy, @"offerId");
    offerId = v5->_offerId;
    v5->_offerId = v10;
  }

  return v5;
}

- (id)identifierPrefix
{
  if ([(_ICQFollowupSpecification *)self premiumOffer])
  {
    v3 = _ICQIdentifierPrefixPremium;
  }

  else
  {
    eventOffer = [(_ICQFollowupSpecification *)self eventOffer];
    v3 = _ICQIdentifierPrefixRegular;
    if (eventOffer)
    {
      v3 = _ICQIdentifierPrefixEvent;
    }
  }

  v5 = *v3;

  return v5;
}

- (id)followupActionForLink:(id)link needsFlow:(BOOL)flow
{
  v30[4] = *MEMORY[0x277D85DE8];
  linkCopy = link;
  parameters = [linkCopy parameters];
  v7 = [parameters objectForKeyedSubscript:@"skipCFU"];

  parameters2 = [linkCopy parameters];
  v9 = [parameters2 objectForKeyedSubscript:@"dismissLockScreen"];

  if ([v7 isEqualToString:@"true"])
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_ICQFollowupSpecification followupActionForLink:linkCopy needsFlow:v10];
    }

    v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"context" value:@"skipCFU"];
    v12 = MEMORY[0x277CCAD18];
    identifierPrefix = [(_ICQFollowupSpecification *)self identifierPrefix];
    v14 = [v12 queryItemWithName:@"followUpItemIdentifier" value:identifierPrefix];

    v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"dismissLockScreen" value:v9];
    v16 = [MEMORY[0x277CCAD18] queryItemWithName:@"ServerLinkId" value:@"lockscreen"];
    v17 = [MEMORY[0x277CBEBC0] URLWithString:@"https://icq.icloud.com"];
    v30[0] = v11;
    v30[1] = v14;
    v30[2] = v15;
    v30[3] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    v19 = [v17 icq_URLByAppendingQueryItems:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x277CFE4F8];
  text = [linkCopy text];
  v22 = [v20 actionWithLabel:text url:v19];

  v23 = _ICQStringForAction([linkCopy action]);
  v28[0] = @"ICQLinkAction";
  v28[1] = @"ICQLinkParameters";
  v29[0] = v23;
  parameters3 = [linkCopy parameters];
  v29[1] = parameters3;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v22 setUserInfo:v25];

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (NSURL)serverUIURL
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_links;
  serverUIURL2 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (serverUIURL2)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != serverUIURL2; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        serverUIURL = [v6 serverUIURL];

        if (serverUIURL)
        {
          serverUIURL2 = [v6 serverUIURL];
          goto LABEL_11;
        }
      }

      serverUIURL2 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (serverUIURL2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return serverUIURL2;
}

- (NSURL)dynamicUIRouteURL
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_links;
  dynamicUIRouteURL2 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (dynamicUIRouteURL2)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != dynamicUIRouteURL2; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        dynamicUIRouteURL = [v6 dynamicUIRouteURL];

        if (dynamicUIRouteURL)
        {
          dynamicUIRouteURL2 = [v6 dynamicUIRouteURL];
          goto LABEL_11;
        }
      }

      dynamicUIRouteURL2 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (dynamicUIRouteURL2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return dynamicUIRouteURL2;
}

- (NSString)purchaseAttribution
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_links;
  purchaseAttribution2 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (purchaseAttribution2)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != purchaseAttribution2; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        purchaseAttribution = [v6 purchaseAttribution];

        if (purchaseAttribution)
        {
          purchaseAttribution2 = [v6 purchaseAttribution];
          goto LABEL_11;
        }
      }

      purchaseAttribution2 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (purchaseAttribution2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return purchaseAttribution2;
}

- (void)postFollowupWithController:(id)controller
{
  v20[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierPrefix = [(_ICQFollowupSpecification *)self identifierPrefix];
  v20[0] = identifierPrefix;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [controllerCopy clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:0];

  _buildFollowupItem = [(_ICQFollowupSpecification *)self _buildFollowupItem];
  v13 = 0;
  [controllerCopy postFollowUpItem:_buildFollowupItem error:&v13];

  v8 = v13;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    title = [_buildFollowupItem title];
    groupIdentifier = [_buildFollowupItem groupIdentifier];
    *buf = 138412802;
    v15 = title;
    v16 = 2112;
    v17 = groupIdentifier;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Posted ICQFollowup item (title:%@ group:%@) with error: %@", buf, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)postFollowupWithController:(id)controller replaceExisting:(BOOL)existing completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  v10 = completionCopy;
  if (existing)
  {
    identifierPrefix = [(_ICQFollowupSpecification *)self identifierPrefix];
    v17[0] = identifierPrefix;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [controllerCopy clearPendingFollowUpItemsWithUniqueIdentifiers:v12 error:0];

    [(_ICQFollowupSpecification *)self _postFollowupWithController:controllerCopy completion:v10];
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83___ICQFollowupSpecification_postFollowupWithController_replaceExisting_completion___block_invoke;
    v14[3] = &unk_27A652E00;
    v14[4] = self;
    v16 = completionCopy;
    v15 = controllerCopy;
    [v15 pendingFollowUpItemsWithCompletion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_postFollowupWithController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  _buildFollowupItem = [(_ICQFollowupSpecification *)self _buildFollowupItem];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68___ICQFollowupSpecification__postFollowupWithController_completion___block_invoke;
  v11[3] = &unk_27A651DB8;
  v12 = _buildFollowupItem;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = _buildFollowupItem;
  [controllerCopy postFollowUpItem:v10 completion:v11];
}

- (id)_buildFollowupItem
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "Building followup item", buf, 2u);
  }

  v4 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  links = [(_ICQFollowupSpecification *)self links];
  v6 = [links countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(links);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        noteActivateLink = [(_ICQFollowupSpecification *)self noteActivateLink];
        v12 = [(_ICQFollowupSpecification *)self followupActionForLink:v10 needsFlow:v10 == noteActivateLink];
        [v4 addObject:v12];
      }

      v7 = [links countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v7);
  }

  noteTitle = [(_ICQFollowupSpecification *)self noteTitle];
  if (![noteTitle length])
  {

    goto LABEL_18;
  }

  noteMessage = [(_ICQFollowupSpecification *)self noteMessage];
  v15 = [noteMessage length];

  if (!v15)
  {
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v16 = objc_opt_new();
  noteTitle2 = [(_ICQFollowupSpecification *)self noteTitle];
  [v16 setTitle:noteTitle2];

  noteSubTitle = [(_ICQFollowupSpecification *)self noteSubTitle];
  [v16 setSubtitleText:noteSubTitle];

  noteMessage2 = [(_ICQFollowupSpecification *)self noteMessage];
  altNoteMessage = [(_ICQFollowupSpecification *)self altNoteMessage];
  v21 = [ICQDaemonOffer stringWithPlaceholderFormat:noteMessage2 alternateString:altNoteMessage];
  [v16 setInformativeText:v21];

  noteActivateLink2 = [(_ICQFollowupSpecification *)self noteActivateLink];

  if (noteActivateLink2)
  {
    noteActivateLink3 = [(_ICQFollowupSpecification *)self noteActivateLink];
    v24 = [(_ICQFollowupSpecification *)self followupActionForLink:noteActivateLink3 needsFlow:1];
    [v16 setActivateAction:v24];
  }

  noteClearLink = [(_ICQFollowupSpecification *)self noteClearLink];

  if (noteClearLink)
  {
    noteClearLink2 = [(_ICQFollowupSpecification *)self noteClearLink];
    v27 = [(_ICQFollowupSpecification *)self followupActionForLink:noteClearLink2];
    [v16 setClearAction:v27];
  }

  [v16 setFrequency:INFINITY];
LABEL_19:
  v28 = objc_opt_new();
  identifierPrefix = [(_ICQFollowupSpecification *)self identifierPrefix];
  [v28 setUniqueIdentifier:identifierPrefix];

  title = [(_ICQFollowupSpecification *)self title];
  [v28 setTitle:title];

  message = [(_ICQFollowupSpecification *)self message];
  altMessage = [(_ICQFollowupSpecification *)self altMessage];
  v33 = [ICQDaemonOffer stringWithPlaceholderFormat:message alternateString:altMessage];
  [v28 setInformativeText:v33];

  [v28 setActions:v4];
  [v28 setNotification:v16];
  [v28 setExtensionIdentifier:@"com.apple.iCloudQuota.ICQFollowup"];
  [(_ICQFollowupSpecification *)self addNotifyingAppIdForItem:v28];
  userInfo = [v28 userInfo];

  if (userInfo)
  {
    userInfo2 = [v28 userInfo];
    offerId2 = [userInfo2 mutableCopy];

    offerId = [(_ICQFollowupSpecification *)self offerId];
    [offerId2 setObject:offerId forKeyedSubscript:@"offerId"];

    [v28 setUserInfo:offerId2];
  }

  else
  {
    v56 = @"offerId";
    offerId2 = [(_ICQFollowupSpecification *)self offerId];
    v57 = offerId2;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    [v28 setUserInfo:v38];
  }

  if ([(_ICQFollowupSpecification *)self isForAccountGroup])
  {
    [v28 setGroupIdentifier:*MEMORY[0x277CFE430]];
  }

  if ([(_ICQFollowupSpecification *)self isZeroAction])
  {
    [v28 setDisplayStyle:{objc_msgSend(v28, "displayStyle") | 2}];
  }

  if (![(_ICQFollowupSpecification *)self badgeApp])
  {
    v39 = _ICQGetLogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v39, OS_LOG_TYPE_DEFAULT, "not badging app", buf, 2u);
    }

    [v28 setDisplayStyle:{objc_msgSend(v28, "displayStyle") | 0x10}];
  }

  if ([(_ICQFollowupSpecification *)self followupDisplayStyle]== 1)
  {
    [v28 setGroupIdentifier:*MEMORY[0x277CFE450]];
    [v28 setDisplayStyle:{objc_msgSend(v28, "displayStyle") | 0x12}];
  }

  groupIdentifier = [(_ICQFollowupSpecification *)self groupIdentifier];

  if (groupIdentifier)
  {
    groupIdentifier2 = [(_ICQFollowupSpecification *)self groupIdentifier];
    v42 = [_ICQHelperFunctions followUpGroupIdentifierForString:groupIdentifier2];

    v43 = _ICQGetLogSystem();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v42;
      _os_log_impl(&dword_275572000, v43, OS_LOG_TYPE_DEFAULT, "Setting CFU group identifier to %@", buf, 0xCu);
    }

    [v28 setGroupIdentifier:v42];
  }

  sfSymbolID = [(_ICQFollowupSpecification *)self sfSymbolID];

  if (sfSymbolID)
  {
    sfSymbolID2 = [(_ICQFollowupSpecification *)self sfSymbolID];
    [v28 setBundleIconName:sfSymbolID2];
  }

  sfSymbolBundlePath = [(_ICQFollowupSpecification *)self sfSymbolBundlePath];

  if (sfSymbolBundlePath)
  {
    sfSymbolBundlePath2 = [(_ICQFollowupSpecification *)self sfSymbolBundlePath];
    [v28 setRepresentingBundlePath:sfSymbolBundlePath2];
  }

  v48 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (void)clearLegacyFollowupWithController:(id)controller
{
  v8[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([_ICQHelperFunctions userDefaultsBoolValueForKey:@"_ICQLegacyQuotaFollowupCleanup.2"])
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [_ICQFollowupSpecification clearLegacyFollowupWithController:v4];
    }
  }

  else
  {
    [_ICQHelperFunctions setUserDefaultsBool:1 forKey:@"_ICQLegacyQuotaFollowupCleanup.2"];
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Clearing legacy ICQFollowup items", v7, 2u);
    }

    v8[0] = @"com.apple.iCloudQuotaDaemon.ICQFollowup";
    v8[1] = @"com.apple.iCloudQuotaDaemon.StorageManagement.followup";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    [controllerCopy clearPendingFollowUpItemsWithUniqueIdentifiers:v4 completion:&__block_literal_global_20];
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)clearFollowupWithController:(id)controller offerType:(int64_t)type completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  controllerCopy = controller;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:type];
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Clearing ICQFollowup items for offerType %@", buf, 0xCu);
  }

  v11 = [_ICQHelperFunctions followUpIdentifierPrefixForRequestType:type];
  v14 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [controllerCopy clearPendingFollowUpItemsWithUniqueIdentifiers:v12 completion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)sharedFollowUpController
{
  if (sharedFollowUpController_onceToken != -1)
  {
    +[_ICQFollowupSpecification sharedFollowUpController];
  }

  v3 = sharedFollowUpController_controller;

  return v3;
}

+ (void)clearNotificationWithController:(id)controller offerType:(int64_t)type completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v9 = [_ICQHelperFunctions followUpIdentifierPrefixForRequestType:type];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82___ICQFollowupSpecification_clearNotificationWithController_offerType_completion___block_invoke;
  v13[3] = &unk_27A652E28;
  v14 = v9;
  v15 = controllerCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = controllerCopy;
  v12 = v9;
  [v11 pendingFollowUpItemsWithCompletion:v13];
}

- (void)setServerDict:(id)dict
{
  v94 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  objc_storeStrong(&self->_serverDict, dict);
  v6 = [dictCopy objectForKeyedSubscript:@"title"];
  [(_ICQFollowupSpecification *)self setTitle:v6];

  v7 = [dictCopy objectForKeyedSubscript:@"mesg"];
  if (v7)
  {
    [(_ICQFollowupSpecification *)self setMessage:v7];
  }

  else
  {
    v8 = [dictCopy objectForKeyedSubscript:@"message"];
    [(_ICQFollowupSpecification *)self setMessage:v8];
  }

  v9 = [dictCopy objectForKeyedSubscript:@"altMesg"];
  if (v9)
  {
    [(_ICQFollowupSpecification *)self setAltMessage:v9];
  }

  else
  {
    v10 = [dictCopy objectForKeyedSubscript:@"altMessage"];
    [(_ICQFollowupSpecification *)self setAltMessage:v10];
  }

  message = [(_ICQFollowupSpecification *)self message];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    message2 = [(_ICQFollowupSpecification *)self message];

    if (message2)
    {
      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        Name = class_getName(v15);
        message3 = [(_ICQFollowupSpecification *)self message];
        *buf = 136315394;
        v91 = Name;
        v92 = 2112;
        v93 = message3;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    [(_ICQFollowupSpecification *)self setMessage:0];
  }

  altMessage = [(_ICQFollowupSpecification *)self altMessage];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if ((v19 & 1) == 0)
  {
    altMessage2 = [(_ICQFollowupSpecification *)self altMessage];

    if (altMessage2)
    {
      v21 = _ICQGetLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = class_getName(v22);
        altMessage3 = [(_ICQFollowupSpecification *)self altMessage];
        *buf = 136315394;
        v91 = v23;
        v92 = 2112;
        v93 = altMessage3;
        _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    [(_ICQFollowupSpecification *)self setAltMessage:0];
  }

  v25 = [dictCopy objectForKeyedSubscript:@"actions"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [dictCopy objectForKeyedSubscript:@"Actions"];
  }

  v28 = v27;
  selfCopy = self;
  v82 = dictCopy;

  v29 = v28;
  v85 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v29, "count")}];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v86 objects:buf count:16];
  v84 = v30;
  if (v31)
  {
    v32 = v31;
    v83 = 0;
    v33 = 0;
    v34 = *v87;
    while (1)
    {
      v35 = 0;
      do
      {
        if (*v87 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v86 + 1) + 8 * v35);
        v37 = _ICQLinkForServerMessageParameter(v36);
        if (v37)
        {
          [v85 addObject:v37];
          v38 = v36;
          v39 = [v38 objectForKeyedSubscript:@"btnDefault"];
          v40 = v39;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = [v38 objectForKeyedSubscript:@"BtnDefault"];
          }

          v42 = v41;

          if (objc_opt_respondsToSelector())
          {
            bOOLValue = [v42 BOOLValue];

            if (bOOLValue)
            {
              v44 = v37;
              v83 = v37;
            }
          }

          else
          {
          }

          v45 = v38;
          v46 = [v45 objectForKeyedSubscript:@"btnId"];
          if ([v46 isEqualToString:@"dlCancel"])
          {
            goto LABEL_38;
          }

          v47 = [v45 objectForKeyedSubscript:@"btnId"];
          if ([v47 isEqualToString:@"cancelled"])
          {

LABEL_38:
LABEL_39:
            v48 = v37;
            v33 = v37;
            goto LABEL_40;
          }

          v49 = v33;
          v50 = [v45 objectForKeyedSubscript:@"btnAction"];
          v51 = [v50 isEqualToString:@"DISMISS_ALERT"];

          v30 = v84;
          if (v51)
          {
            goto LABEL_39;
          }

          v33 = v49;
        }

LABEL_40:

        ++v35;
      }

      while (v32 != v35);
      v52 = [v30 countByEnumeratingWithState:&v86 objects:buf count:16];
      v32 = v52;
      if (!v52)
      {
        goto LABEL_47;
      }
    }
  }

  v83 = 0;
  v33 = 0;
LABEL_47:

  v53 = [v85 copy];
  v54 = v83;
  v55 = v33;
  v56 = selfCopy;
  [(_ICQFollowupSpecification *)selfCopy setLinks:v53];

  v57 = [v82 objectForKeyedSubscript:@"lockTitle"];
  [(_ICQFollowupSpecification *)selfCopy setNoteTitle:v57];

  v58 = [v82 objectForKeyedSubscript:@"lockMesg"];
  if (v58)
  {
    [(_ICQFollowupSpecification *)selfCopy setNoteMessage:v58];
  }

  else
  {
    v59 = [v82 objectForKeyedSubscript:@"lockMessage"];
    [(_ICQFollowupSpecification *)selfCopy setNoteMessage:v59];
  }

  v60 = [v82 objectForKeyedSubscript:@"altLockMesg"];
  if (v60)
  {
    [(_ICQFollowupSpecification *)selfCopy setAltNoteMessage:v60];
  }

  else
  {
    v61 = [v82 objectForKeyedSubscript:@"altLockMessage"];
    [(_ICQFollowupSpecification *)selfCopy setAltNoteMessage:v61];
  }

  noteMessage = [(_ICQFollowupSpecification *)selfCopy noteMessage];
  objc_opt_class();
  v63 = objc_opt_isKindOfClass();

  if ((v63 & 1) == 0)
  {
    noteMessage2 = [(_ICQFollowupSpecification *)selfCopy noteMessage];

    if (noteMessage2)
    {
      v65 = _ICQGetLogSystem();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v66 = objc_opt_class();
        v67 = class_getName(v66);
        noteMessage3 = [(_ICQFollowupSpecification *)selfCopy noteMessage];
        *buf = 136315394;
        v91 = v67;
        v92 = 2112;
        v93 = noteMessage3;
        _os_log_impl(&dword_275572000, v65, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    [(_ICQFollowupSpecification *)selfCopy setNoteMessage:0, selfCopy];
  }

  altNoteMessage = [(_ICQFollowupSpecification *)v56 altNoteMessage];
  objc_opt_class();
  v70 = objc_opt_isKindOfClass();

  if ((v70 & 1) == 0)
  {
    altNoteMessage2 = [(_ICQFollowupSpecification *)v56 altNoteMessage];

    if (altNoteMessage2)
    {
      v72 = _ICQGetLogSystem();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = objc_opt_class();
        v74 = class_getName(v73);
        altNoteMessage3 = [(_ICQFollowupSpecification *)v56 altNoteMessage];
        *buf = 136315394;
        v91 = v74;
        v92 = 2112;
        v93 = altNoteMessage3;
        _os_log_impl(&dword_275572000, v72, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    [(_ICQFollowupSpecification *)v56 setAltNoteMessage:0];
  }

  [(_ICQFollowupSpecification *)v56 setNoteActivateLink:v54];
  if (v55)
  {
    [(_ICQFollowupSpecification *)v56 setNoteClearLink:v55];
  }

  else
  {
    v76 = [ICQLink alloc];
    v77 = [(ICQLink *)v76 initWithText:&stru_288431E38 action:101 parameters:MEMORY[0x277CBEC10]];
    [(_ICQFollowupSpecification *)v56 setNoteClearLink:v77];
  }

  v78 = [v82 objectForKeyedSubscript:@"enableDirectAction"];
  [(_ICQFollowupSpecification *)v56 setZeroAction:_ICQBooleanForServerObjectDefault(v78, 0)];

  v79 = [v82 objectForKeyedSubscript:@"groupIdentifier"];
  [(_ICQFollowupSpecification *)v56 setGroupIdentifier:v79];

  v80 = *MEMORY[0x277D85DE8];
}

- (int64_t)primaryAction
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  links = [(_ICQFollowupSpecification *)self links];
  v3 = [links countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    action2 = 0;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(links);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        parameters = [v8 parameters];
        v10 = [parameters objectForKeyedSubscript:@"btnId"];
        v11 = [v10 isEqualToString:@"followUpOkBtnId"];

        action = [v8 action];
        if (v11)
        {
          action2 = action;
          goto LABEL_14;
        }

        if (action)
        {
          action2 = [v8 action];
        }
      }

      v4 = [links countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    action2 = 0;
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return action2;
}

- (void)addNotifyingAppIdForItem:(id)item
{
  v10[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  notifyingAppId = [(_ICQFollowupSpecification *)self notifyingAppId];

  if (notifyingAppId)
  {
    v9 = ICQFollowupNotifyingAppIdKey;
    notifyingAppId2 = [(_ICQFollowupSpecification *)self notifyingAppId];
    v10[0] = notifyingAppId2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [itemCopy setUserInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)followupActionForLink:(uint64_t)a1 needsFlow:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_275572000, a2, OS_LOG_TYPE_DEBUG, "Skipping CFU for lockscreen link: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end