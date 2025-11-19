@interface ICQPremiumOffer
- (BOOL)_hasFollowupEnabledFromServerDict:(id)a3;
- (BOOL)getBadgeAppFromServerDict:(id)a3;
- (ICQPremiumOffer)initWithServerDictionary:(id)a3 accountAltDSID:(id)a4 notificationID:(id)a5 retrievalDate:(id)a6 callbackInterval:(double)a7 appLaunchLink:(id)a8 bundleIdentifier:(id)a9;
- (id)_ICQOpportunityBubbleSpecificationForServerDict:(id)a3 bundleId:(id)a4;
- (id)_bundleStorageLevelFromServerDict:(id)a3;
- (id)_commerceStorageLevelFromServerDict:(id)a3;
- (id)_parseQuotaInfo:(id)a3;
- (id)_serverUIURLFromOfferContents;
- (id)serverUIURL;
- (void)shouldShowOpportunityBubbleWithCompletion:(id)a3;
- (void)shouldShowOpportunityBubbleWithDisplayRuleResult:(BOOL)a3 completion:(id)a4;
@end

@implementation ICQPremiumOffer

- (ICQPremiumOffer)initWithServerDictionary:(id)a3 accountAltDSID:(id)a4 notificationID:(id)a5 retrievalDate:(id)a6 callbackInterval:(double)a7 appLaunchLink:(id)a8 bundleIdentifier:(id)a9
{
  v31 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a9;
  v28.receiver = self;
  v28.super_class = ICQPremiumOffer;
  v18 = [(ICQOffer *)&v28 initWithServerDictionary:v16 accountAltDSID:a4 notificationID:a5 retrievalDate:a6 callbackInterval:a8 appLaunchLink:v17 bundleIdentifier:a7];
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
    [(ICQPremiumOffer *)v19 setIsBadgeApp:[(ICQPremiumOffer *)v19 getBadgeAppFromServerDict:v16]];
    v20 = [(ICQPremiumOffer *)v19 _ICQOpportunityBubbleSpecificationForServerDict:v16 bundleId:v17];
    [(ICQPremiumOffer *)v19 setOpportunityBubble:v20];

    v21 = [(ICQPremiumOffer *)v19 _bundleStorageLevelFromServerDict:v16];
    [(ICQPremiumOffer *)v19 setBundleQuotaInfo:v21];

    v22 = [(ICQPremiumOffer *)v19 _commerceStorageLevelFromServerDict:v16];
    [(ICQPremiumOffer *)v19 setCommerceQuotaInfo:v22];

    [(ICQPremiumOffer *)v19 setShouldStartOnDeviceJourney:[(ICQPremiumOffer *)v19 _hasFollowupEnabledFromServerDict:v16]];
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
    v30 = v16;
    _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Cannot initialize premium offer from server dict due to invalid type: %@", buf, 0xCu);
  }

  v24 = 0;
LABEL_10:

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)getBadgeAppFromServerDict:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"badgeApp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
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

    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_hasFollowupEnabledFromServerDict:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"followUpEnabled"];
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

- (id)_ICQOpportunityBubbleSpecificationForServerDict:(id)a3 bundleId:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"opportunityBubble"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = _ICQServerDictionaryForBundleIdentifier(v7, v6, 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 objectForKeyedSubscript:@"opportunitySheet"];
      if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = _ICQServerDictionaryForBundleIdentifier(v9, v6, 0, 0);
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
  v3 = [(ICQOffer *)self requestedServerUIURL];

  if (v3)
  {
    v4 = [(ICQOffer *)self requestedServerUIURL];
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = [(ICQPremiumOffer *)self _serverUIURLFromOfferContents];

    if (v5)
    {
      v4 = [(ICQPremiumOffer *)self _serverUIURLFromOfferContents];
      if (v4)
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

  v4 = 0;
LABEL_9:

  return v4;
}

- (id)_serverUIURLFromOfferContents
{
  v3 = [(ICQOffer *)self followupSpecification];

  if (v3)
  {
    v4 = [(ICQOffer *)self followupSpecification];
  }

  else
  {
    v5 = [(ICQPremiumOffer *)self opportunityBubble];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [(ICQPremiumOffer *)self opportunityBubble];
  }

  v6 = v4;
  v5 = [v4 serverUIURL];

LABEL_6:

  return v5;
}

- (id)_bundleStorageLevelFromServerDict:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"quotaInfo"];
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

- (id)_commerceStorageLevelFromServerDict:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"quotaInfo"];
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

- (id)_parseQuotaInfo:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];
  }

  v5 = v4;

  return v5;
}

- (void)shouldShowOpportunityBubbleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICQPremiumOffer *)self opportunityBubble];
  v6 = [v5 reportingDetails];

  if (v6 && [v6 displayRuleType] == 2)
  {
    -[ICQPremiumOffer shouldShowOpportunityBubbleWithDisplayRuleResult:completion:](self, "shouldShowOpportunityBubbleWithDisplayRuleResult:completion:", [v6 displayRuleServerAlwaysShow], v4);
  }

  else
  {
    v7 = [(ICQOffer *)self bundleIdentifier];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__ICQPremiumOffer_shouldShowOpportunityBubbleWithCompletion___block_invoke;
    v8[3] = &unk_27A652DB0;
    v8[4] = self;
    v9 = v4;
    [ICQEngagementReporter shouldShowOpportunityBubbleWithBundleID:v7 completion:v8];
  }
}

- (void)shouldShowOpportunityBubbleWithDisplayRuleResult:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(ICQPremiumOffer *)self opportunityBubble];
  v8 = v7 != 0;

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v7)
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

    if (v7)
    {
      v8 = v4;
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

  v6[2](v6, v8);

  v14 = *MEMORY[0x277D85DE8];
}

@end