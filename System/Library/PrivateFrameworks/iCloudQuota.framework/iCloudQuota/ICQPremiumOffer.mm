@interface ICQPremiumOffer
- (BOOL)_hasFollowupEnabledFromServerDict:(id)dict;
- (BOOL)getBadgeAppFromServerDict:(id)dict;
- (ICQPremiumOffer)initWithServerDictionary:(id)dictionary accountAltDSID:(id)d notificationID:(id)iD retrievalDate:(id)date callbackInterval:(double)interval appLaunchLink:(id)link bundleIdentifier:(id)identifier;
- (id)_ICQOpportunityBubbleSpecificationForServerDict:(id)dict bundleId:(id)id;
- (id)_bundleStorageLevelFromServerDict:(id)dict;
- (id)_commerceStorageLevelFromServerDict:(id)dict;
- (id)_parseQuotaInfo:(id)info;
- (id)_serverUIURLFromOfferContents;
- (id)serverUIURL;
- (void)shouldShowOpportunityBubbleWithCompletion:(id)completion;
- (void)shouldShowOpportunityBubbleWithDisplayRuleResult:(BOOL)result completion:(id)completion;
@end

@implementation ICQPremiumOffer

- (ICQPremiumOffer)initWithServerDictionary:(id)dictionary accountAltDSID:(id)d notificationID:(id)iD retrievalDate:(id)date callbackInterval:(double)interval appLaunchLink:(id)link bundleIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = ICQPremiumOffer;
  v18 = [(ICQOffer *)&v28 initWithServerDictionary:dictionaryCopy accountAltDSID:d notificationID:iD retrievalDate:date callbackInterval:link appLaunchLink:identifierCopy bundleIdentifier:interval];
  v19 = v18;
  if (!v18)
  {
LABEL_6:
    v24 = v19;
    goto LABEL_10;
  }

  if ([(ICQOffer *)v18 offerType]== 8)
  {
    v19->_dismissed = 0;
    [(ICQPremiumOffer *)v19 setIsBadgeApp:[(ICQPremiumOffer *)v19 getBadgeAppFromServerDict:dictionaryCopy]];
    v20 = [(ICQPremiumOffer *)v19 _ICQOpportunityBubbleSpecificationForServerDict:dictionaryCopy bundleId:identifierCopy];
    [(ICQPremiumOffer *)v19 setOpportunityBubble:v20];

    v21 = [(ICQPremiumOffer *)v19 _bundleStorageLevelFromServerDict:dictionaryCopy];
    [(ICQPremiumOffer *)v19 setBundleQuotaInfo:v21];

    v22 = [(ICQPremiumOffer *)v19 _commerceStorageLevelFromServerDict:dictionaryCopy];
    [(ICQPremiumOffer *)v19 setCommerceQuotaInfo:v22];

    [(ICQPremiumOffer *)v19 setShouldStartOnDeviceJourney:[(ICQPremiumOffer *)v19 _hasFollowupEnabledFromServerDict:dictionaryCopy]];
    v23 = _ICQGetLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&dword_275572000, v23, OS_LOG_TYPE_DEFAULT, "Successfully initialized premium offer from server response: %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v25 = _ICQGetLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = dictionaryCopy;
    _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Cannot initialize premium offer from server dict due to invalid type: %@", buf, 0xCu);
  }

  v24 = 0;
LABEL_10:

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)getBadgeAppFromServerDict:(id)dict
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [dict objectForKeyedSubscript:@"badgeApp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    if (v3)
    {
      v5 = _ICQGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v9 = 136315394;
        Name = class_getName(v6);
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v9, 0x16u);
      }
    }

    bOOLValue = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)_hasFollowupEnabledFromServerDict:(id)dict
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [dict objectForKeyedSubscript:@"followUpEnabled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    if (v3)
    {
      v5 = _ICQGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v9 = 136315394;
        Name = class_getName(v6);
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v9, 0x16u);
      }
    }

    LOBYTE(v4) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_ICQOpportunityBubbleSpecificationForServerDict:(id)dict bundleId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  idCopy = id;
  v7 = [dictCopy objectForKeyedSubscript:@"opportunityBubble"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = _ICQServerDictionaryForBundleIdentifier(v7, idCopy, 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [dictCopy objectForKeyedSubscript:@"opportunitySheet"];
      if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = _ICQServerDictionaryForBundleIdentifier(v9, idCopy, 0, 0);
      }

      else
      {
        v10 = 0;
      }

      v14 = [[ICQOpportunityBubbleSpecification alloc] initWithOpportunityBubble:v8 andOpportunitySheet:v10];

      goto LABEL_17;
    }

    if (v8)
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v17 = 136315394;
        Name = class_getName(v13);
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v17, 0x16u);
      }
    }
  }

  else
  {
    if (!v7)
    {
      v14 = 0;
      goto LABEL_18;
    }

    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v17 = 136315394;
      Name = class_getName(v11);
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v17, 0x16u);
    }
  }

  v14 = 0;
LABEL_17:

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)serverUIURL
{
  requestedServerUIURL = [(ICQOffer *)self requestedServerUIURL];

  if (requestedServerUIURL)
  {
    requestedServerUIURL2 = [(ICQOffer *)self requestedServerUIURL];
    if (requestedServerUIURL2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _serverUIURLFromOfferContents = [(ICQPremiumOffer *)self _serverUIURLFromOfferContents];

    if (_serverUIURLFromOfferContents)
    {
      requestedServerUIURL2 = [(ICQPremiumOffer *)self _serverUIURLFromOfferContents];
      if (requestedServerUIURL2)
      {
        goto LABEL_9;
      }
    }
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(ICQPremiumOffer *)v6 serverUIURL];
  }

  requestedServerUIURL2 = 0;
LABEL_9:

  return requestedServerUIURL2;
}

- (id)_serverUIURLFromOfferContents
{
  followupSpecification = [(ICQOffer *)self followupSpecification];

  if (followupSpecification)
  {
    followupSpecification2 = [(ICQOffer *)self followupSpecification];
  }

  else
  {
    opportunityBubble = [(ICQPremiumOffer *)self opportunityBubble];

    if (!opportunityBubble)
    {
      goto LABEL_6;
    }

    followupSpecification2 = [(ICQPremiumOffer *)self opportunityBubble];
  }

  v6 = followupSpecification2;
  opportunityBubble = [followupSpecification2 serverUIURL];

LABEL_6:

  return opportunityBubble;
}

- (id)_bundleStorageLevelFromServerDict:(id)dict
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [dict objectForKeyedSubscript:@"quotaInfo"];
  v5 = [v4 objectForKeyedSubscript:@"bundleQuotaInBytes"];

  v6 = [(ICQPremiumOffer *)self _parseQuotaInfo:v5];
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Current bundle storage level from Premium offer: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_commerceStorageLevelFromServerDict:(id)dict
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [dict objectForKeyedSubscript:@"quotaInfo"];
  v5 = [v4 objectForKeyedSubscript:@"commerceQuotaInBytes"];

  v6 = [(ICQPremiumOffer *)self _parseQuotaInfo:v5];
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Current commerce storage level from Premium offer: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_parseQuotaInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = infoCopy;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(infoCopy, "longLongValue")}];
  }

  v5 = v4;

  return v5;
}

- (void)shouldShowOpportunityBubbleWithCompletion:(id)completion
{
  completionCopy = completion;
  opportunityBubble = [(ICQPremiumOffer *)self opportunityBubble];
  reportingDetails = [opportunityBubble reportingDetails];

  if (reportingDetails && [reportingDetails displayRuleType] == 2)
  {
    -[ICQPremiumOffer shouldShowOpportunityBubbleWithDisplayRuleResult:completion:](self, "shouldShowOpportunityBubbleWithDisplayRuleResult:completion:", [reportingDetails displayRuleServerAlwaysShow], completionCopy);
  }

  else
  {
    bundleIdentifier = [(ICQOffer *)self bundleIdentifier];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__ICQPremiumOffer_shouldShowOpportunityBubbleWithCompletion___block_invoke;
    v8[3] = &unk_27A652DB0;
    v8[4] = self;
    v9 = completionCopy;
    [ICQEngagementReporter shouldShowOpportunityBubbleWithBundleID:bundleIdentifier completion:v8];
  }
}

- (void)shouldShowOpportunityBubbleWithDisplayRuleResult:(BOOL)result completion:(id)completion
{
  resultCopy = result;
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  opportunityBubble = [(ICQPremiumOffer *)self opportunityBubble];
  v8 = opportunityBubble != 0;

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (opportunityBubble)
    {
      v10 = @"YES";
    }

    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "bubble not nil: %@", &v15, 0xCu);
  }

  v11 = +[ICQPreferences shouldEnableUnifiedMessaging];
  v12 = _ICQGetLogSystem();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Using Unified Messaging based on Internal Settings", &v15, 2u);
    }

    if (opportunityBubble)
    {
      v8 = resultCopy;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (v13)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Not using Unified Messaging based on Internal Settings", &v15, 2u);
    }
  }

  completionCopy[2](completionCopy, v8);

  v14 = *MEMORY[0x277D85DE8];
}

@end