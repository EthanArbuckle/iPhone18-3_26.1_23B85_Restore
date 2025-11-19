@interface _ICQFollowupSpecification
+ (id)sharedFollowUpController;
+ (void)clearFollowupWithController:(id)a3 offerType:(int64_t)a4 completion:(id)a5;
+ (void)clearLegacyFollowupWithController:(id)a3;
+ (void)clearNotificationWithController:(id)a3 offerType:(int64_t)a4 completion:(id)a5;
- (NSString)purchaseAttribution;
- (NSURL)dynamicUIRouteURL;
- (NSURL)serverUIURL;
- (_ICQFollowupSpecification)init;
- (_ICQFollowupSpecification)initWithServerDictionary:(id)a3;
- (id)_buildFollowupItem;
- (id)followupActionForLink:(id)a3 needsFlow:(BOOL)a4;
- (id)identifierPrefix;
- (int64_t)primaryAction;
- (void)_postFollowupWithController:(id)a3 completion:(id)a4;
- (void)addNotifyingAppIdForItem:(id)a3;
- (void)postFollowupWithController:(id)a3;
- (void)postFollowupWithController:(id)a3 replaceExisting:(BOOL)a4 completion:(id)a5;
- (void)setServerDict:(id)a3;
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

- (_ICQFollowupSpecification)initWithServerDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_ICQFollowupSpecification *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"followUpInfo"];
    [(_ICQFollowupSpecification *)v5 setServerDict:v6];

    v7 = [v4 objectForKeyedSubscript:@"badgeApp"];
    v5->_badgeApp = _ICQBooleanForServerObjectDefault(v7, 1);

    v8 = [v4 objectForKeyedSubscript:@"isPremiumOffer"];
    v5->_premiumOffer = _ICQBooleanForServerObjectDefault(v8, 0);

    v9 = [v4 objectForKeyedSubscript:@"isEventOffer"];
    v5->_eventOffer = _ICQBooleanForServerObjectDefault(v9, 0);

    v10 = _ICQStringForKey(v4, @"offerId");
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
    v4 = [(_ICQFollowupSpecification *)self eventOffer];
    v3 = _ICQIdentifierPrefixRegular;
    if (v4)
    {
      v3 = _ICQIdentifierPrefixEvent;
    }
  }

  v5 = *v3;

  return v5;
}

- (id)followupActionForLink:(id)a3 needsFlow:(BOOL)a4
{
  v30[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 parameters];
  v7 = [v6 objectForKeyedSubscript:@"skipCFU"];

  v8 = [v5 parameters];
  v9 = [v8 objectForKeyedSubscript:@"dismissLockScreen"];

  if ([v7 isEqualToString:@"true"])
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_ICQFollowupSpecification followupActionForLink:v5 needsFlow:v10];
    }

    v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"context" value:@"skipCFU"];
    v12 = MEMORY[0x277CCAD18];
    v13 = [(_ICQFollowupSpecification *)self identifierPrefix];
    v14 = [v12 queryItemWithName:@"followUpItemIdentifier" value:v13];

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
  v21 = [v5 text];
  v22 = [v20 actionWithLabel:v21 url:v19];

  v23 = _ICQStringForAction([v5 action]);
  v28[0] = @"ICQLinkAction";
  v28[1] = @"ICQLinkParameters";
  v29[0] = v23;
  v24 = [v5 parameters];
  v29[1] = v24;
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
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 serverUIURL];

        if (v7)
        {
          v3 = [v6 serverUIURL];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSURL)dynamicUIRouteURL
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_links;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 dynamicUIRouteURL];

        if (v7)
        {
          v3 = [v6 dynamicUIRouteURL];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)purchaseAttribution
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_links;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 purchaseAttribution];

        if (v7)
        {
          v3 = [v6 purchaseAttribution];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)postFollowupWithController:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_ICQFollowupSpecification *)self identifierPrefix];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v4 clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:0];

  v7 = [(_ICQFollowupSpecification *)self _buildFollowupItem];
  v13 = 0;
  [v4 postFollowUpItem:v7 error:&v13];

  v8 = v13;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 title];
    v11 = [v7 groupIdentifier];
    *buf = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Posted ICQFollowup item (title:%@ group:%@) with error: %@", buf, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)postFollowupWithController:(id)a3 replaceExisting:(BOOL)a4 completion:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4)
  {
    v11 = [(_ICQFollowupSpecification *)self identifierPrefix];
    v17[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v8 clearPendingFollowUpItemsWithUniqueIdentifiers:v12 error:0];

    [(_ICQFollowupSpecification *)self _postFollowupWithController:v8 completion:v10];
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83___ICQFollowupSpecification_postFollowupWithController_replaceExisting_completion___block_invoke;
    v14[3] = &unk_27A652E00;
    v14[4] = self;
    v16 = v9;
    v15 = v8;
    [v15 pendingFollowUpItemsWithCompletion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_postFollowupWithController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_ICQFollowupSpecification *)self _buildFollowupItem];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68___ICQFollowupSpecification__postFollowupWithController_completion___block_invoke;
  v11[3] = &unk_27A651DB8;
  v12 = v8;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  [v7 postFollowUpItem:v10 completion:v11];
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
  v5 = [(_ICQFollowupSpecification *)self links];
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v11 = [(_ICQFollowupSpecification *)self noteActivateLink];
        v12 = [(_ICQFollowupSpecification *)self followupActionForLink:v10 needsFlow:v10 == v11];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v7);
  }

  v13 = [(_ICQFollowupSpecification *)self noteTitle];
  if (![v13 length])
  {

    goto LABEL_18;
  }

  v14 = [(_ICQFollowupSpecification *)self noteMessage];
  v15 = [v14 length];

  if (!v15)
  {
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v16 = objc_opt_new();
  v17 = [(_ICQFollowupSpecification *)self noteTitle];
  [v16 setTitle:v17];

  v18 = [(_ICQFollowupSpecification *)self noteSubTitle];
  [v16 setSubtitleText:v18];

  v19 = [(_ICQFollowupSpecification *)self noteMessage];
  v20 = [(_ICQFollowupSpecification *)self altNoteMessage];
  v21 = [ICQDaemonOffer stringWithPlaceholderFormat:v19 alternateString:v20];
  [v16 setInformativeText:v21];

  v22 = [(_ICQFollowupSpecification *)self noteActivateLink];

  if (v22)
  {
    v23 = [(_ICQFollowupSpecification *)self noteActivateLink];
    v24 = [(_ICQFollowupSpecification *)self followupActionForLink:v23 needsFlow:1];
    [v16 setActivateAction:v24];
  }

  v25 = [(_ICQFollowupSpecification *)self noteClearLink];

  if (v25)
  {
    v26 = [(_ICQFollowupSpecification *)self noteClearLink];
    v27 = [(_ICQFollowupSpecification *)self followupActionForLink:v26];
    [v16 setClearAction:v27];
  }

  [v16 setFrequency:INFINITY];
LABEL_19:
  v28 = objc_opt_new();
  v29 = [(_ICQFollowupSpecification *)self identifierPrefix];
  [v28 setUniqueIdentifier:v29];

  v30 = [(_ICQFollowupSpecification *)self title];
  [v28 setTitle:v30];

  v31 = [(_ICQFollowupSpecification *)self message];
  v32 = [(_ICQFollowupSpecification *)self altMessage];
  v33 = [ICQDaemonOffer stringWithPlaceholderFormat:v31 alternateString:v32];
  [v28 setInformativeText:v33];

  [v28 setActions:v4];
  [v28 setNotification:v16];
  [v28 setExtensionIdentifier:@"com.apple.iCloudQuota.ICQFollowup"];
  [(_ICQFollowupSpecification *)self addNotifyingAppIdForItem:v28];
  v34 = [v28 userInfo];

  if (v34)
  {
    v35 = [v28 userInfo];
    v36 = [v35 mutableCopy];

    v37 = [(_ICQFollowupSpecification *)self offerId];
    [v36 setObject:v37 forKeyedSubscript:@"offerId"];

    [v28 setUserInfo:v36];
  }

  else
  {
    v56 = @"offerId";
    v36 = [(_ICQFollowupSpecification *)self offerId];
    v57 = v36;
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

  v40 = [(_ICQFollowupSpecification *)self groupIdentifier];

  if (v40)
  {
    v41 = [(_ICQFollowupSpecification *)self groupIdentifier];
    v42 = [_ICQHelperFunctions followUpGroupIdentifierForString:v41];

    v43 = _ICQGetLogSystem();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v42;
      _os_log_impl(&dword_275572000, v43, OS_LOG_TYPE_DEFAULT, "Setting CFU group identifier to %@", buf, 0xCu);
    }

    [v28 setGroupIdentifier:v42];
  }

  v44 = [(_ICQFollowupSpecification *)self sfSymbolID];

  if (v44)
  {
    v45 = [(_ICQFollowupSpecification *)self sfSymbolID];
    [v28 setBundleIconName:v45];
  }

  v46 = [(_ICQFollowupSpecification *)self sfSymbolBundlePath];

  if (v46)
  {
    v47 = [(_ICQFollowupSpecification *)self sfSymbolBundlePath];
    [v28 setRepresentingBundlePath:v47];
  }

  v48 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (void)clearLegacyFollowupWithController:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
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
    [v3 clearPendingFollowUpItemsWithUniqueIdentifiers:v4 completion:&__block_literal_global_20];
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)clearFollowupWithController:(id)a3 offerType:(int64_t)a4 completion:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a3;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:a4];
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Clearing ICQFollowup items for offerType %@", buf, 0xCu);
  }

  v11 = [_ICQHelperFunctions followUpIdentifierPrefixForRequestType:a4];
  v14 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v8 clearPendingFollowUpItemsWithUniqueIdentifiers:v12 completion:v7];

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

+ (void)clearNotificationWithController:(id)a3 offerType:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [_ICQHelperFunctions followUpIdentifierPrefixForRequestType:a4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82___ICQFollowupSpecification_clearNotificationWithController_offerType_completion___block_invoke;
  v13[3] = &unk_27A652E28;
  v14 = v9;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v9;
  [v11 pendingFollowUpItemsWithCompletion:v13];
}

- (void)setServerDict:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_serverDict, a3);
  v6 = [v5 objectForKeyedSubscript:@"title"];
  [(_ICQFollowupSpecification *)self setTitle:v6];

  v7 = [v5 objectForKeyedSubscript:@"mesg"];
  if (v7)
  {
    [(_ICQFollowupSpecification *)self setMessage:v7];
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:@"message"];
    [(_ICQFollowupSpecification *)self setMessage:v8];
  }

  v9 = [v5 objectForKeyedSubscript:@"altMesg"];
  if (v9)
  {
    [(_ICQFollowupSpecification *)self setAltMessage:v9];
  }

  else
  {
    v10 = [v5 objectForKeyedSubscript:@"altMessage"];
    [(_ICQFollowupSpecification *)self setAltMessage:v10];
  }

  v11 = [(_ICQFollowupSpecification *)self message];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = [(_ICQFollowupSpecification *)self message];

    if (v13)
    {
      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        Name = class_getName(v15);
        v17 = [(_ICQFollowupSpecification *)self message];
        *buf = 136315394;
        v91 = Name;
        v92 = 2112;
        v93 = v17;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    [(_ICQFollowupSpecification *)self setMessage:0];
  }

  v18 = [(_ICQFollowupSpecification *)self altMessage];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if ((v19 & 1) == 0)
  {
    v20 = [(_ICQFollowupSpecification *)self altMessage];

    if (v20)
    {
      v21 = _ICQGetLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = class_getName(v22);
        v24 = [(_ICQFollowupSpecification *)self altMessage];
        *buf = 136315394;
        v91 = v23;
        v92 = 2112;
        v93 = v24;
        _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    [(_ICQFollowupSpecification *)self setAltMessage:0];
  }

  v25 = [v5 objectForKeyedSubscript:@"actions"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [v5 objectForKeyedSubscript:@"Actions"];
  }

  v28 = v27;
  v81 = self;
  v82 = v5;

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
            v43 = [v42 BOOLValue];

            if (v43)
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
  v56 = v81;
  [(_ICQFollowupSpecification *)v81 setLinks:v53];

  v57 = [v82 objectForKeyedSubscript:@"lockTitle"];
  [(_ICQFollowupSpecification *)v81 setNoteTitle:v57];

  v58 = [v82 objectForKeyedSubscript:@"lockMesg"];
  if (v58)
  {
    [(_ICQFollowupSpecification *)v81 setNoteMessage:v58];
  }

  else
  {
    v59 = [v82 objectForKeyedSubscript:@"lockMessage"];
    [(_ICQFollowupSpecification *)v81 setNoteMessage:v59];
  }

  v60 = [v82 objectForKeyedSubscript:@"altLockMesg"];
  if (v60)
  {
    [(_ICQFollowupSpecification *)v81 setAltNoteMessage:v60];
  }

  else
  {
    v61 = [v82 objectForKeyedSubscript:@"altLockMessage"];
    [(_ICQFollowupSpecification *)v81 setAltNoteMessage:v61];
  }

  v62 = [(_ICQFollowupSpecification *)v81 noteMessage];
  objc_opt_class();
  v63 = objc_opt_isKindOfClass();

  if ((v63 & 1) == 0)
  {
    v64 = [(_ICQFollowupSpecification *)v81 noteMessage];

    if (v64)
    {
      v65 = _ICQGetLogSystem();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v66 = objc_opt_class();
        v67 = class_getName(v66);
        v68 = [(_ICQFollowupSpecification *)v81 noteMessage];
        *buf = 136315394;
        v91 = v67;
        v92 = 2112;
        v93 = v68;
        _os_log_impl(&dword_275572000, v65, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    [(_ICQFollowupSpecification *)v81 setNoteMessage:0, v81];
  }

  v69 = [(_ICQFollowupSpecification *)v56 altNoteMessage];
  objc_opt_class();
  v70 = objc_opt_isKindOfClass();

  if ((v70 & 1) == 0)
  {
    v71 = [(_ICQFollowupSpecification *)v56 altNoteMessage];

    if (v71)
    {
      v72 = _ICQGetLogSystem();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = objc_opt_class();
        v74 = class_getName(v73);
        v75 = [(_ICQFollowupSpecification *)v56 altNoteMessage];
        *buf = 136315394;
        v91 = v74;
        v92 = 2112;
        v93 = v75;
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
  v2 = [(_ICQFollowupSpecification *)self links];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 parameters];
        v10 = [v9 objectForKeyedSubscript:@"btnId"];
        v11 = [v10 isEqualToString:@"followUpOkBtnId"];

        v12 = [v8 action];
        if (v11)
        {
          v5 = v12;
          goto LABEL_14;
        }

        if (v12)
        {
          v5 = [v8 action];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)addNotifyingAppIdForItem:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_ICQFollowupSpecification *)self notifyingAppId];

  if (v5)
  {
    v9 = ICQFollowupNotifyingAppIdKey;
    v6 = [(_ICQFollowupSpecification *)self notifyingAppId];
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v4 setUserInfo:v7];
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