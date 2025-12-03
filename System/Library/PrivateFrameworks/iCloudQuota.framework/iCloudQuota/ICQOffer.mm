@interface ICQOffer
+ (id)_settingsBannerSpecificationWithServerDictionary:(id)dictionary bundleId:(id)id;
+ (id)offerReasonForServerReason:(id)reason;
+ (id)sampleOfferForLevel:(int64_t)level;
- (BOOL)isExpired;
- (BOOL)showsPhotoVideoCounts;
- (ICQOffer)initWithCoder:(id)coder;
- (ICQOffer)initWithServerDictionary:(id)dictionary accountAltDSID:(id)d notificationID:(id)iD retrievalDate:(id)date callbackInterval:(double)interval appLaunchLink:(id)link bundleIdentifier:(id)identifier;
- (NSDate)lastUpdated;
- (NSURL)serverUIURL;
- (_ICQDynamicUISpecification)dynamicUISpecification;
- (double)_callbackInterval;
- (id)_processICQURL:(id)l;
- (id)alertSpecificationAtIndex:(unint64_t)index;
- (id)alertSpecificationForAlertKey:(id)key;
- (id)inAppMessageSpecificationForReason:(id)reason bundleId:(id)id;
- (id)journeyLinkForId:(id)id;
- (id)messageSpecificationForPlacement:(id)placement;
- (id)messageSpecificationForReason:(id)reason bundleId:(id)id placement:(id)placement;
- (id)settingsBannerSpecificationForReason:(id)reason bundleId:(id)id;
- (id)storagePurchaseKeybagForButtonId:(id)id;
- (id)universalLink;
- (id)universalLinkForContext:(id)context;
- (id)universalSuccessLink;
- (int64_t)action;
- (void)encodeWithCoder:(id)coder;
- (void)universalLink;
- (void)universalSuccessLink;
- (void)updateOfferWithPlanDetails:(id)details actionString:(id)string;
@end

@implementation ICQOffer

- (BOOL)isExpired
{
  expirationDate = self->_expirationDate;
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(expirationDate) = [(NSDate *)expirationDate compare:date]== NSOrderedAscending;

  return expirationDate;
}

- (BOOL)showsPhotoVideoCounts
{
  v10 = *MEMORY[0x277D85DE8];
  bundleIdentifier = [(ICQOffer *)self bundleIdentifier];
  if (![bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"] || !-[ICQOffer isDetailAppBannerOffer](self, "isDetailAppBannerOffer"))
  {

    goto LABEL_8;
  }

  placeholderExists = [(ICQOffer *)self placeholderExists];

  if (!placeholderExists)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Offer %@ will show count", &v8, 0xCu);
  }

  result = 1;
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  serverDictionary = self->_serverDictionary;
  coderCopy = coder;
  [coderCopy encodeObject:serverDictionary forKey:@"serverDict"];
  [coderCopy encodeObject:self->_accountAltDSID forKey:@"accountAltDSID"];
  [coderCopy encodeObject:self->_notificationID forKey:@"notificationID"];
  [coderCopy encodeObject:self->_retrievalDate forKey:@"retrievalDate"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_appVersionId forKey:@"appVersionId"];
  [(ICQOffer *)self _callbackInterval];
  [coderCopy encodeDouble:@"callbackInterval" forKey:?];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  requestedServerUIURL = [(ICQOffer *)self requestedServerUIURL];
  [coderCopy encodeObject:requestedServerUIURL forKey:@"requestedServerUIURL"];

  [coderCopy encodeInteger:self->_actionOverride forKey:@"actionOverride"];
  [coderCopy encodeObject:self->_appLaunchLink forKey:@"appLaunchLink"];
}

- (ICQOffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = ICQOffer;
  v5 = [(ICQOffer *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v24 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v24 forKey:@"serverDict"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountAltDSID"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationID"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"retrievalDate"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    [coderCopy decodeDoubleForKey:@"callbackInterval"];
    v17 = v16;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appVersionId"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchLink"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedServerUIURL"];
    [(ICQOffer *)v5 setRequestedServerUIURL:v21];

    v5->_actionOverride = [coderCopy decodeIntegerForKey:@"actionOverride"];
    [(ICQOffer *)v5 setContext:v18];
    [(ICQOffer *)v5 setAppVersionId:v19];
    v5 = [(ICQOffer *)v5 initWithServerDictionary:v23 accountAltDSID:v12 notificationID:v13 retrievalDate:v14 callbackInterval:v20 appLaunchLink:v15 bundleIdentifier:v17];
  }

  return v5;
}

- (NSURL)serverUIURL
{
  requestedServerUIURL = [(ICQOffer *)self requestedServerUIURL];

  if (requestedServerUIURL)
  {
    requestedServerUIURL2 = [(ICQOffer *)self requestedServerUIURL];
  }

  else
  {
    serverUIURL = [(_ICQBannerSpecification *)self->_bannerSpecification serverUIURL];

    if (serverUIURL)
    {
      bannerSpecification = self->_bannerSpecification;
    }

    else
    {
      serverUIURL2 = [(_ICQFollowupSpecification *)self->_followupSpecification serverUIURL];

      if (serverUIURL2)
      {
        bannerSpecification = self->_followupSpecification;
      }

      else
      {
        serverUIURL3 = [(_ICQBannerSpecification *)self->_universalLinkSpecification serverUIURL];

        if (!serverUIURL3)
        {
          goto LABEL_15;
        }

        bannerSpecification = self->_universalLinkSpecification;
      }
    }

    requestedServerUIURL2 = [bannerSpecification serverUIURL];
  }

  serverUIURL3 = requestedServerUIURL2;
  if (requestedServerUIURL2)
  {
    bundleIdentifier = [(ICQOffer *)self bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.icq"])
    {
      context = [(ICQOffer *)self context];

      if (!context)
      {
        goto LABEL_15;
      }

      [(ICQOffer *)self _processICQURL:serverUIURL3];
      serverUIURL3 = bundleIdentifier = serverUIURL3;
    }
  }

LABEL_15:

  return serverUIURL3;
}

- (_ICQDynamicUISpecification)dynamicUISpecification
{
  serverUIURL = [(ICQOffer *)self serverUIURL];
  p_bannerSpecification = &self->_bannerSpecification;
  dynamicUIRouteURL = [(_ICQBannerSpecification *)self->_bannerSpecification dynamicUIRouteURL];

  if (dynamicUIRouteURL)
  {
    goto LABEL_5;
  }

  p_bannerSpecification = &self->_followupSpecification;
  dynamicUIRouteURL2 = [(_ICQFollowupSpecification *)self->_followupSpecification dynamicUIRouteURL];

  if (dynamicUIRouteURL2)
  {
    goto LABEL_5;
  }

  universalLinkSpecification = self->_universalLinkSpecification;
  p_universalLinkSpecification = &self->_universalLinkSpecification;
  dynamicUIRouteURL3 = [(_ICQBannerSpecification *)universalLinkSpecification dynamicUIRouteURL];

  if (dynamicUIRouteURL3)
  {
    p_bannerSpecification = p_universalLinkSpecification;
LABEL_5:
    dynamicUIRouteURL4 = [*p_bannerSpecification dynamicUIRouteURL];
    dynamicUIRouteURL3 = [*p_bannerSpecification purchaseAttribution];
    goto LABEL_6;
  }

  dynamicUIRouteURL4 = 0;
LABEL_6:
  v11 = [[_ICQDynamicUISpecification alloc] initWithRouteURL:dynamicUIRouteURL4 pageContentsURL:serverUIURL attributionSuffix:dynamicUIRouteURL3];

  return v11;
}

- (id)universalLink
{
  universalLinkSpecification = [(ICQOffer *)self universalLinkSpecification];
  links = [universalLinkSpecification links];
  v5 = [links count];

  if (v5)
  {
    universalLinkSpecification2 = [(ICQOffer *)self universalLinkSpecification];
    links2 = [universalLinkSpecification2 links];
    firstObject = [links2 firstObject];
  }

  else
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(ICQOffer *)self universalLink];
    }

    firstObject = 0;
  }

  return firstObject;
}

- (id)universalSuccessLink
{
  universalSuccessInfoSpecification = [(ICQOffer *)self universalSuccessInfoSpecification];
  links = [universalSuccessInfoSpecification links];
  v5 = [links count];

  if (v5)
  {
    universalSuccessInfoSpecification2 = [(ICQOffer *)self universalSuccessInfoSpecification];
    links2 = [universalSuccessInfoSpecification2 links];
    firstObject = [links2 firstObject];
  }

  else
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(ICQOffer *)self universalSuccessLink];
    }

    firstObject = 0;
  }

  return firstObject;
}

- (id)_processICQURL:(id)l
{
  lCopy = l;
  context = [(ICQOffer *)self context];
  v6 = [lCopy icq_URLByAppendingQueryParamtersFromContext:context];

  return v6;
}

- (id)journeyLinkForId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"journeyLinks"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"btnId", v19}];
        if ([v11 isEqualToString:idCopy])
        {
          v13 = [v10 objectForKeyedSubscript:@"btnTitle"];
          v14 = [v10 objectForKeyedSubscript:@"btnAction"];
          v15 = [v10 objectForKeyedSubscript:@"btnActParams"];
          v16 = [v10 objectForKeyedSubscript:@"btnId"];
          v12 = _ICQLinkForServerValues(v13, v14, v15, 0, v16, 0);

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)universalLinkForContext:(id)context
{
  contextCopy = context;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICQOffer universalLinkForContext:];
  }

  v6 = [(ICQActionBasedUniversalLinkSpecification *)self->_actionBasedUniversalLinkSpecification icqLinkForContext:contextCopy];
  v7 = _ICQGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "universalLinkForContext found action based link", buf, 2u);
    }

    universalLink = v6;
  }

  else
  {
    if (v8)
    {
      *v12 = 0;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "universalLinkForContext falling back to legacy universal link", v12, 2u);
    }

    universalLink = [(ICQOffer *)self universalLink];
  }

  v10 = universalLink;

  return v10;
}

- (id)messageSpecificationForPlacement:(id)placement
{
  placementCopy = placement;
  if ([placementCopy isEqualToString:@"InSettingsAppDetail"])
  {
    settingsBannerSpecification = [(ICQOffer *)self settingsBannerSpecification];
  }

  else
  {
    if ([placementCopy isEqualToString:@"InAppConcise"])
    {
      [(ICQOffer *)self conciseInAppMessageSpecification];
    }

    else
    {
      [(ICQOffer *)self inAppMessageSpecification];
    }
    settingsBannerSpecification = ;
  }

  v6 = settingsBannerSpecification;

  return v6;
}

- (id)messageSpecificationForReason:(id)reason bundleId:(id)id placement:(id)placement
{
  idCopy = id;
  reasonCopy = reason;
  if ([placement isEqualToString:@"InSettingsAppDetail"])
  {
    [(ICQOffer *)self settingsBannerSpecificationForReason:reasonCopy bundleId:idCopy];
  }

  else
  {
    [(ICQOffer *)self inAppMessageSpecificationForReason:reasonCopy bundleId:idCopy];
  }
  v10 = ;

  return v10;
}

- (id)inAppMessageSpecificationForReason:(id)reason bundleId:(id)id
{
  v26 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  idCopy = id;
  v8 = [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"detailAppBannerInfo"];
  if (v8)
  {

    goto LABEL_4;
  }

  v9 = [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"bubbleBannerInfo"];

  if (v9)
  {
LABEL_4:
    v10 = [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"bubbleBannerInfo"];
    v11 = _ICQBubbleBannerSpecificationForServerDict(v10, idCopy);

    if (v11)
    {
      v11 = v11;
      v12 = v11;
      goto LABEL_26;
    }

    v13 = [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"detailAppBannerInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = _ICQServerDictionaryForBundleIdentifier(v13, idCopy, reasonCopy, 0);
      if (!v14)
      {
        v15 = _ICQGetLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = reasonCopy;
          _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Using banner fallback search for reason %@", &v22, 0xCu);
        }

        v14 = _ICQServerDictionaryForBundleIdentifier(v13, @"__WILDCARD__", reasonCopy, 0);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[_ICQBannerSpecification alloc] initWithDetailBannerInfo:v14 source:@"ICQBannerSourceDetailAppBannerInfo"];
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      if (v14)
      {
        v17 = _ICQGetLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          Name = class_getName(v18);
          v22 = 136315394;
          v23 = Name;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v22, 0x16u);
        }
      }
    }

    else
    {
      if (!v13)
      {
        v12 = 0;
        goto LABEL_25;
      }

      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v22 = 136315394;
        v23 = class_getName(v16);
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v22, 0x16u);
      }
    }

    v12 = 0;
    goto LABEL_24;
  }

  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ICQOffer inAppMessageSpecificationForReason:v11 bundleId:?];
  }

  v12 = 0;
LABEL_26:

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)settingsBannerSpecificationForReason:(id)reason bundleId:(id)id
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  idCopy = id;
  v8 = [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"settingsBannerInfo"];

  if (v8)
  {
    v9 = @"ICQBannerSourceSettingsBannerInfo";
    v10 = [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"settingsBannerInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = _ICQServerDictionaryForBundleIdentifier(v10, idCopy, reasonCopy, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[_ICQBannerSpecification alloc] initWithDetailBannerInfo:v11 source:v9];
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      if (v11)
      {
        v14 = _ICQGetLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v18 = 136315394;
          Name = class_getName(v15);
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v18, 0x16u);
        }
      }
    }

    else
    {
      if (!v10)
      {
        v12 = 0;
        goto LABEL_17;
      }

      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v18 = 136315394;
        Name = class_getName(v13);
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v18, 0x16u);
      }
    }

    v12 = 0;
    goto LABEL_16;
  }

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ICQOffer settingsBannerSpecificationForReason:v9 bundleId:?];
  }

  v12 = 0;
LABEL_18:

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_settingsBannerSpecificationWithServerDictionary:(id)dictionary bundleId:(id)id
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  idCopy = id;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"settingsBannerInfo"];

  if (!v7)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"settingsBannerInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v8)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v16 = 136315394;
      Name = class_getName(v11);
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v16, 0x16u);
    }

    goto LABEL_13;
  }

  v9 = _ICQServerDictionaryForBundleIdentifier(v8, idCopy, 0, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v9)
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v16 = 136315394;
        Name = class_getName(v13);
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v16, 0x16u);
      }
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = [[_ICQBannerSpecification alloc] initWithDetailBannerInfo:v9 source:@"ICQBannerSourceSettingsBannerInfo"];
LABEL_14:

LABEL_15:
LABEL_16:

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)sampleOfferForLevel:(int64_t)level
{
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v4 setRetrievalDate:v5];

  [v4 setLevel:level];
  [v4 setAccountAltDSID:&stru_288431E38];
  [v4 setNotificationID:&stru_288431E38];
  [v4 setOfferId:&stru_288431E38];
  v6 = [_ICQBannerSpecification bannerSpecificationSampleForLevel:level];
  [v4 setBannerSpecification:v6];

  v7 = [_ICQButtonSpecification buttonSpecificationSampleForLevel:level];
  [v4 setButtonSpecification:v7];

  v8 = [_ICQUpgradeFlowSpecification upgradeFlowSpecificationSampleForLevel:level];
  [v4 setUpgradeFlowSpecification:v8];

  return v4;
}

- (ICQOffer)initWithServerDictionary:(id)dictionary accountAltDSID:(id)d notificationID:(id)iD retrievalDate:(id)date callbackInterval:(double)interval appLaunchLink:(id)link bundleIdentifier:(id)identifier
{
  v165 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  obj = link;
  linkCopy = link;
  identifierCopy = identifier;
  v152.receiver = self;
  v152.super_class = ICQOffer;
  v20 = [(ICQOffer *)&v152 init];
  if (!v20)
  {
    goto LABEL_103;
  }

  v21 = [dictionaryCopy copy];
  serverDictionary = v20->_serverDictionary;
  v20->_serverDictionary = v21;

  v23 = [identifierCopy copy];
  bundleIdentifier = v20->_bundleIdentifier;
  v20->_bundleIdentifier = v23;

  objc_storeStrong(&v20->_retrievalDate, date);
  v25 = [(NSDate *)v20->_retrievalDate dateByAddingTimeInterval:interval];
  expirationDate = v20->_expirationDate;
  v20->_expirationDate = v25;

  _ICQServerDictToOfferTypeAndLevel(dictionaryCopy, &v20->_offerType, &v20->_level);
  v27 = [dCopy copy];
  accountAltDSID = v20->_accountAltDSID;
  v20->_accountAltDSID = v27;

  v29 = [iDCopy copy];
  notificationID = v20->_notificationID;
  v20->_notificationID = v29;

  v31 = _ICQStringForKey(dictionaryCopy, @"offerId");
  offerId = v20->_offerId;
  v20->_offerId = v31;

  v33 = _ICQDetailBannerSpecificationForServerDict(dictionaryCopy, identifierCopy, 0);
  bannerSpecification = v20->_bannerSpecification;
  v20->_bannerSpecification = v33;

  v35 = identifierCopy;
  v36 = [dictionaryCopy objectForKeyedSubscript:@"iCloudInAppRecommendations"];
  objc_opt_class();
  v37 = 0x277CBE000uLL;
  v147 = identifierCopy;
  if (objc_opt_isKindOfClass())
  {
    v38 = _ICQServerDictionaryForBundleIdentifier(v36, v35, 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_ICQBannerSpecification alloc] initWithDetailBannerInfo:v38 source:@"ICQBannerSourceBubbleBannerInfo"];
LABEL_13:

      goto LABEL_14;
    }

    if (v38)
    {
      v42 = iDCopy;
      v43 = _ICQGetLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_opt_class();
        Name = class_getName(v44);
        *buf = 136315394;
        v162 = Name;
        v163 = 2112;
        v164 = v38;
        _os_log_impl(&dword_275572000, v43, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }

      v39 = 0;
      iDCopy = v42;
      goto LABEL_13;
    }

LABEL_12:
    v39 = 0;
    goto LABEL_13;
  }

  if (v36)
  {
    v38 = _ICQGetLogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      v41 = class_getName(v40);
      *buf = 136315394;
      v162 = v41;
      v163 = 2112;
      v164 = v36;
      _os_log_impl(&dword_275572000, v38, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v39 = 0;
LABEL_14:

  recommendationSpecification = v20->_recommendationSpecification;
  v20->_recommendationSpecification = v39;

  v47 = v35;
  v48 = [dictionaryCopy objectForKeyedSubscript:@"appBannerInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = _ICQServerDictionaryForBundleIdentifier(v48, v47, 0, 1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[_ICQButtonSpecification alloc] initWithServerDictionary:v49];
LABEL_25:

      goto LABEL_26;
    }

    if (v49)
    {
      v53 = iDCopy;
      v54 = _ICQGetLogSystem();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = objc_opt_class();
        v56 = class_getName(v55);
        *buf = 136315394;
        v162 = v56;
        v163 = 2112;
        v164 = v49;
        _os_log_impl(&dword_275572000, v54, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }

      v50 = 0;
      iDCopy = v53;
      goto LABEL_25;
    }

LABEL_24:
    v50 = 0;
    goto LABEL_25;
  }

  if (v48)
  {
    v49 = _ICQGetLogSystem();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v51 = objc_opt_class();
      v52 = class_getName(v51);
      *buf = 136315394;
      v162 = v52;
      v163 = 2112;
      v164 = v48;
      _os_log_impl(&dword_275572000, v49, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v50 = 0;
LABEL_26:

  buttonSpecification = v20->_buttonSpecification;
  v20->_buttonSpecification = v50;

  v58 = dictionaryCopy;
  v59 = [v58 objectForKeyedSubscript:@"followUpInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = [[_ICQDetailFollowupSpecification alloc] initWithServerDictionary:v58];
  }

  else if (v59)
  {
    v61 = iDCopy;
    v62 = _ICQGetLogSystem();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_opt_class();
      v64 = class_getName(v63);
      *buf = 136315394;
      v162 = v64;
      v163 = 2112;
      v164 = v59;
      _os_log_impl(&dword_275572000, v62, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }

    v60 = 0;
    iDCopy = v61;
  }

  else
  {
    v60 = 0;
  }

  followupSpecification = v20->_followupSpecification;
  v20->_followupSpecification = &v60->super;

  v66 = v58;
  v67 = v47;
  v68 = [v66 objectForKeyedSubscript:@"appContextInfo"];
  v69 = v66;
  v148 = dCopy;
  if (!v68)
  {
LABEL_66:
    v79 = [[_ICQUpgradeFlowSpecification alloc] initWithServerDictionary:v69];
    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v145 = v66;
    v146 = iDCopy;
    v144 = v68;
    v70 = v68;
    v71 = v67;
    if ([v71 isEqualToString:@"__WILDCARD__"])
    {
      firstObject = [v70 firstObject];
    }

    else
    {
      v142 = v67;
      v143 = dictionaryCopy;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v141 = v70;
      v80 = v70;
      v81 = [v80 countByEnumeratingWithState:&v153 objects:buf count:16];
      if (v81)
      {
        v82 = v81;
        v83 = *v154;
        do
        {
          for (i = 0; i != v82; ++i)
          {
            if (*v154 != v83)
            {
              objc_enumerationMutation(v80);
            }

            v85 = *(*(&v153 + 1) + 8 * i);
            v86 = v37;
            v87 = *(v37 + 2752);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v88 = [v85 objectForKeyedSubscript:@"appId"];
              v89 = [v88 isEqualToString:v71];

              if (v89)
              {
                firstObject = v85;

                dictionaryCopy = v143;
                v37 = v86;
                goto LABEL_57;
              }
            }

            else if (v85)
            {
              v90 = _ICQGetLogSystem();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                v91 = *(v37 + 2752);
                v92 = objc_opt_class();
                v93 = class_getName(v92);
                *v157 = 136315394;
                v158 = v93;
                v159 = 2112;
                v160 = v85;
                _os_log_impl(&dword_275572000, v90, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", v157, 0x16u);
              }
            }

            v37 = v86;
          }

          v82 = [v80 countByEnumeratingWithState:&v153 objects:buf count:16];
        }

        while (v82);
      }

      firstObject = 0;
      dictionaryCopy = v143;
LABEL_57:
      v70 = v141;
      v67 = v142;
    }

    v94 = _ICQGetLogSystem();
    v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
    if (firstObject)
    {
      if (v95)
      {
        *buf = 138412290;
        v162 = v71;
        _os_log_impl(&dword_275572000, v94, OS_LOG_TYPE_DEFAULT, "found app-specific flow for %@", buf, 0xCu);
      }

      v69 = firstObject;
      v66 = v145;
      v94 = v145;
    }

    else
    {
      if (v95)
      {
        *buf = 138412290;
        v162 = v71;
        _os_log_impl(&dword_275572000, v94, OS_LOG_TYPE_DEFAULT, "app-specific flow for %@ not found; using top-level flow", buf, 0xCu);
      }

      v66 = v145;
      v69 = v145;
    }

    iDCopy = v146;
    v68 = v144;
    goto LABEL_66;
  }

  v73 = dictionaryCopy;
  v74 = iDCopy;
  v75 = v68;
  v76 = _ICQGetLogSystem();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    v77 = objc_opt_class();
    v78 = class_getName(v77);
    *buf = 136315394;
    v162 = v78;
    v163 = 2112;
    v164 = v75;
    _os_log_impl(&dword_275572000, v76, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
  }

  v79 = 0;
  v69 = v66;
  v68 = v75;
  iDCopy = v74;
  dictionaryCopy = v73;
LABEL_67:

  upgradeFlowSpecification = v20->_upgradeFlowSpecification;
  v20->_upgradeFlowSpecification = v79;

  v97 = [_ICQXMLSpecification alloc];
  v98 = [v66 objectForKeyedSubscript:@"placeHolderInfo"];
  v99 = [(_ICQXMLSpecification *)v97 initWithPlaceholderInfo:v98];
  XMLSpecification = v20->_XMLSpecification;
  v20->_XMLSpecification = v99;

  v101 = v67;
  v102 = v66;
  v103 = [v66 objectForKeyedSubscript:@"universalLinkInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v104 = _ICQServerDictionaryForBundleIdentifier(v103, v101, 0, 0);
    if (!v104)
    {
      v104 = _ICQServerDictionaryForBundleIdentifier(v103, @"com.apple.icq", 0, 0);
    }

    v105 = *(v37 + 2752);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v106 = [[_ICQBannerSpecification alloc] initWithServerDictionary:v104];
LABEL_80:

      goto LABEL_81;
    }

    if (v104)
    {
      v109 = _ICQGetLogSystem();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = *(v37 + 2752);
        v111 = objc_opt_class();
        v112 = class_getName(v111);
        *buf = 136315394;
        v162 = v112;
        v163 = 2112;
        v164 = v104;
        _os_log_impl(&dword_275572000, v109, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

LABEL_79:
    v106 = 0;
    goto LABEL_80;
  }

  if (v103)
  {
    v104 = _ICQGetLogSystem();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v107 = objc_opt_class();
      v108 = class_getName(v107);
      *buf = 136315394;
      v162 = v108;
      v163 = 2112;
      v164 = v103;
      _os_log_impl(&dword_275572000, v104, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }

    goto LABEL_79;
  }

  v106 = 0;
LABEL_81:

  universalLinkSpecification = v20->_universalLinkSpecification;
  v20->_universalLinkSpecification = v106;

  v114 = v101;
  v115 = [v102 objectForKeyedSubscript:@"universalSuccessLinkInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v115)
    {
      v118 = 0;
      goto LABEL_95;
    }

    v116 = _ICQGetLogSystem();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v119 = objc_opt_class();
      v120 = class_getName(v119);
      *buf = 136315394;
      v162 = v120;
      v163 = 2112;
      v164 = v115;
      _os_log_impl(&dword_275572000, v116, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }

    goto LABEL_93;
  }

  v116 = _ICQServerDictionaryForBundleIdentifier(v115, v114, 0, 0);
  if (!v116)
  {
    v116 = _ICQServerDictionaryForBundleIdentifier(v115, @"com.apple.icq", 0, 0);
  }

  v117 = *(v37 + 2752);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v116)
    {
      v121 = _ICQGetLogSystem();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        v122 = *(v37 + 2752);
        v123 = objc_opt_class();
        v124 = class_getName(v123);
        *buf = 136315394;
        v162 = v124;
        v163 = 2112;
        v164 = v116;
        _os_log_impl(&dword_275572000, v121, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

LABEL_93:
    v118 = 0;
    goto LABEL_94;
  }

  v118 = [[_ICQBannerSpecification alloc] initWithServerDictionary:v116];
LABEL_94:

LABEL_95:
  universalSuccessInfoSpecification = v20->_universalSuccessInfoSpecification;
  v20->_universalSuccessInfoSpecification = v118;

  v126 = [v102 objectForKeyedSubscript:@"actionBasedUniversalLinkInfo"];
  v127 = *(v37 + 2752);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v128 = [[ICQActionBasedUniversalLinkSpecification alloc] initWithServerDictionary:v126];
  }

  else
  {
    if (v126)
    {
      v129 = _ICQGetLogSystem();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        v130 = *(v37 + 2752);
        v131 = objc_opt_class();
        v132 = class_getName(v131);
        *buf = 136315394;
        v162 = v132;
        v163 = 2112;
        v164 = v126;
        _os_log_impl(&dword_275572000, v129, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    v128 = 0;
  }

  actionBasedUniversalLinkSpecification = v20->_actionBasedUniversalLinkSpecification;
  v20->_actionBasedUniversalLinkSpecification = v128;

  objc_storeStrong(&v20->_inAppMessageSpecification, v20->_bannerSpecification);
  v134 = _ICQDetailBannerSpecificationForServerDict(v102, v114, 1);
  conciseInAppMessageSpecification = v20->_conciseInAppMessageSpecification;
  v20->_conciseInAppMessageSpecification = v134;

  v136 = [ICQOffer _settingsBannerSpecificationWithServerDictionary:v102 bundleId:v114];
  settingsBannerSpecification = v20->_settingsBannerSpecification;
  v20->_settingsBannerSpecification = v136;

  v138 = [v102 objectForKeyedSubscript:@"iTunesAccountExists"];
  v20->_iTunesAccountExists = _ICQBooleanForServerObjectDefault(v138, 1);

  objc_storeStrong(&v20->_appLaunchLink, obj);
  identifierCopy = v147;
  dCopy = v148;
LABEL_103:

  v139 = *MEMORY[0x277D85DE8];
  return v20;
}

- (int64_t)action
{
  actionOverride = self->_actionOverride;
  if (!actionOverride)
  {
    buttonSpecification = [(ICQOffer *)self buttonSpecification];
    buttonLink = [buttonSpecification buttonLink];
    actionOverride = [buttonLink action];

    if (!actionOverride)
    {
      followupSpecification = [(ICQOffer *)self followupSpecification];
      actionOverride = [followupSpecification primaryAction];
    }
  }

  return actionOverride;
}

- (void)updateOfferWithPlanDetails:(id)details actionString:(id)string
{
  stringCopy = string;
  v7 = [details copy];
  planDetailsOverride = self->_planDetailsOverride;
  self->_planDetailsOverride = v7;

  v9 = _ICQActionForServerActionString(stringCopy);
  self->_actionOverride = v9;
}

- (double)_callbackInterval
{
  expirationDate = [(ICQOffer *)self expirationDate];
  retrievalDate = [(ICQOffer *)self retrievalDate];
  [expirationDate timeIntervalSinceDate:retrievalDate];
  v6 = v5;

  return v6;
}

- (id)storagePurchaseKeybagForButtonId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  planDetailsOverride = self->_planDetailsOverride;
  if (planDetailsOverride)
  {
    v7 = planDetailsOverride;
LABEL_6:
    v9 = v7;
    goto LABEL_7;
  }

  if (!idCopy || (_ICQDictionaryForKey(self->_serverDictionary, @"planDetailsByBtnId"), v8 = objc_claimAutoreleasedReturnValue(), _ICQDictionaryForKey(v8, v5), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v7 = _ICQDictionaryForKey(self->_serverDictionary, @"planDetails");
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (id)alertSpecificationForAlertKey:(id)key
{
  v41 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"inlineAlertInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v31 = 0;
      v9 = *v33;
      v10 = 0x277CBE000uLL;
      v11 = @"alertKey";
      v12 = 0x277CCA000uLL;
      do
      {
        v13 = 0;
        v30 = v8;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v32 + 1) + 8 * v13);
          v15 = *(v10 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v14 objectForKeyedSubscript:v11];
            v17 = *(v12 + 3240);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 isEqualToString:keyCopy])
            {
              v38 = @"alertInfo";
              v39 = v14;
              v18 = [*(v10 + 2752) dictionaryWithObjects:&v39 forKeys:&v38 count:1];
              _ICQAlertSpecificationForServerDict(v18);
              v19 = v9;
              v20 = v10;
              v21 = v6;
              v22 = v11;
              v23 = v12;
              v25 = v24 = keyCopy;

              v31 = v25;
              keyCopy = v24;
              v12 = v23;
              v11 = v22;
              v6 = v21;
              v10 = v20;
              v9 = v19;
              v8 = v30;
            }
          }

          else
          {
            v16 = _ICQGetLogSystem();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v37 = v14;
              _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "expected inlineAlertInfo to be NSArray<NSDictionary *> but found %@", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v8 != v13);
        v8 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v8);
    }

    else
    {
      v31 = 0;
    }

    v5 = v29;
    v26 = v31;
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)alertSpecificationAtIndex:(unint64_t)index
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [(NSDictionary *)self->_serverDictionary objectForKeyedSubscript:@"inlineAlertInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v4 count] <= index)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v5 = [v4 objectAtIndexedSubscript:index];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "expected inlineAlertInfo to be NSArray<NSDictionary *> but found %@", &v11, 0xCu);
    }

    goto LABEL_9;
  }

  v6 = [v5 objectForKeyedSubscript:@"alertKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v13 = @"alertInfo";
  v14[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = _ICQAlertSpecificationForServerDict(v7);

LABEL_10:
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)offerReasonForServerReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"iCloudFullViolation"])
  {
    v4 = @"iCloudStorageFull";
  }

  else if ([reasonCopy isEqualToString:@"iCloudAlmostFullViolation"])
  {
    v4 = @"iCloudStorageAlmostFull";
  }

  else
  {
    v4 = reasonCopy;
  }

  return v4;
}

- (NSDate)lastUpdated
{
  v21 = *MEMORY[0x277D85DE8];
  recommendationSpecification = [(ICQOffer *)self recommendationSpecification];
  v3 = recommendationSpecification;
  if (recommendationSpecification && ([recommendationSpecification reason], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    decayUntil = [v3 decayUntil];
    [decayUntil doubleValue];
    v7 = v6;

    reason = [v3 reason];
    date = [_ICQHelperFunctions lastUpdatedForReason:reason decayUntil:v7];

    v10 = _ICQBannerLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      reason2 = [v3 reason];
      v15 = 138412802;
      v16 = reason2;
      v17 = 2048;
      v18 = v7;
      v19 = 2112;
      v20 = date;
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Providing last updated for Photos Bubble Banner - Reason: %@ Decay: %f lastUpdated: %@", &v15, 0x20u);
    }
  }

  else
  {
    v12 = _ICQBannerLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "We do not have a recommendation banner spec. In this case sending the current timestamp.", &v15, 2u);
    }

    date = [MEMORY[0x277CBEAA8] date];
  }

  v13 = *MEMORY[0x277D85DE8];

  return date;
}

- (void)universalLink
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [self debugDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_275572000, v2, v3, "Universal link is not available in offer %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)universalSuccessLink
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [self debugDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_275572000, v2, v3, "Universal success link is not available in offer %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)universalLinkForContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_275572000, v0, OS_LOG_TYPE_DEBUG, "universalLinkForContext: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end