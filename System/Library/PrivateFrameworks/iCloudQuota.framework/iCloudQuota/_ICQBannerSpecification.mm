@interface _ICQBannerSpecification
+ (id)bannerSpecificationSampleForLevel:(int64_t)level;
- (NSString)purchaseAttribution;
- (NSString)reason;
- (NSURL)dynamicUIRouteURL;
- (NSURL)serverUIURL;
- (_ICQBannerSpecification)initWithDetailBannerInfo:(id)info source:(id)source;
- (_ICQBannerSpecification)initWithServerDictionary:(id)dictionary;
- (id)_bannerSpecificationParams;
- (id)conciseTitleWithKey:(id)key;
- (id)iconPath;
- (id)messageWithKey:(id)key;
- (id)titleWithKey:(id)key;
- (void)_setDisplayConfigurations:(id)configurations;
- (void)setMessageWithServerMessage:(id)message;
@end

@implementation _ICQBannerSpecification

+ (id)bannerSpecificationSampleForLevel:(int64_t)level
{
  if (level == 3)
  {
    if (_BannerSpecificationSampleForFullLevel_onceToken != -1)
    {
      +[_ICQBannerSpecification(ICQDebugging) bannerSpecificationSampleForLevel:];
    }

    v3 = &_BannerSpecificationSampleForFullLevel_sBannerSpecification;
    goto LABEL_9;
  }

  if (level == 2)
  {
    if (_BannerSpecificationSampleForAlmostFullLevel_onceToken != -1)
    {
      +[_ICQBannerSpecification(ICQDebugging) bannerSpecificationSampleForLevel:];
    }

    v3 = &_BannerSpecificationSampleForAlmostFullLevel_sBannerSpecification;
LABEL_9:
    v4 = *v3;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

- (_ICQBannerSpecification)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [(_ICQBannerSpecification *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverDict, dictionary);
    *&v7->_isDetailBannerInfoAvailable = 0;
    bannerSource = v7->_bannerSource;
    v7->_bannerSource = @"ICQBannerSourceAppBannerInfo";

    v9 = [dictionaryCopy objectForKeyedSubscript:@"mesg"];
    [(_ICQBannerSpecification *)v7 setMessageWithServerMessage:v9];
  }

  return v7;
}

- (_ICQBannerSpecification)initWithDetailBannerInfo:(id)info source:(id)source
{
  v74 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  sourceCopy = source;
  v9 = [(_ICQBannerSpecification *)self init];
  v10 = v9;
  if (v9)
  {
    sourceCopy2 = source;
    v55 = sourceCopy;
    objc_storeStrong(&v9->_serverDict, info);
    v10->_isDetailBannerInfoAvailable = 1;
    v11 = [infoCopy objectForKeyedSubscript:@"placeHolderExists"];
    v10->_placeholderExists = [v11 BOOLValue];

    v12 = [infoCopy objectForKeyedSubscript:@"bannerFooter"];
    [(_ICQBannerSpecification *)v10 setMessageWithServerMessage:v12];

    v54 = [infoCopy objectForKeyedSubscript:@"displayConfiguration"];
    [(_ICQBannerSpecification *)v10 _setDisplayConfigurations:?];
    obj = objc_alloc_init(MEMORY[0x277CBEB38]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v13 = [infoCopy objectForKeyedSubscript:@"mesg"];
    v14 = [v13 countByEnumeratingWithState:&v67 objects:v73 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v68;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v68 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v67 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:{@"format", sourceCopy2}];
          v20 = [v18 objectForKeyedSubscript:@"key"];
          [obj setObject:v19 forKey:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v67 objects:v73 count:16];
      }

      while (v15);
    }

    v57 = v10;
    objc_storeStrong(&v10->_messageTemplates, obj);
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v22 = [infoCopy objectForKeyedSubscript:@"title"];
    v23 = [v22 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v64;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v64 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v63 + 1) + 8 * j);
          v28 = [v27 objectForKeyedSubscript:{@"format", sourceCopy2}];
          v29 = [v27 objectForKeyedSubscript:@"key"];
          [v21 setObject:v28 forKey:v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v24);
    }

    objc_storeStrong(&v57->_titleTemplates, v21);
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v56 = infoCopy;
    v31 = [infoCopy objectForKeyedSubscript:@"conciseTitle"];
    v32 = [v31 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v60;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v60 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v59 + 1) + 8 * k);
          v37 = [v36 objectForKeyedSubscript:{@"format", sourceCopy2}];
          v38 = [v36 objectForKeyedSubscript:@"key"];
          [(NSDictionary *)v30 setObject:v37 forKey:v38];
        }

        v33 = [v31 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v33);
    }

    conciseTitleTemplates = v57->_conciseTitleTemplates;
    v57->_conciseTitleTemplates = v30;
    v40 = v30;

    infoCopy = v56;
    v41 = [v56 objectForKeyedSubscript:@"iconDetails"];
    iconDetails = v57->_iconDetails;
    v57->_iconDetails = v41;

    objc_storeStrong(&v57->_bannerSource, sourceCopy2);
    v43 = [ICQIconSpecification alloc];
    v44 = [v56 objectForKeyedSubscript:@"iconDetails"];
    v45 = [(ICQIconSpecification *)v43 initWithDictionary:v44];
    symbolSpecification = v57->_symbolSpecification;
    v57->_symbolSpecification = v45;

    v10 = v57;
    v47 = [ICQIconSpecification alloc];
    v48 = [v56 objectForKeyedSubscript:@"icon"];
    v49 = [(ICQIconSpecification *)v47 initWithDictionary:v48];
    iconSpecification = v57->_iconSpecification;
    v57->_iconSpecification = v49;

    sourceCopy = v55;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)setMessageWithServerMessage:(id)message
{
  v13 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_ICQBannerSpecification *)self setLinksFormat:messageCopy];
    [(_ICQBannerSpecification *)self setLinks:MEMORY[0x277CBEBF8]];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [messageCopy objectForKeyedSubscript:@"format"];
      [(_ICQBannerSpecification *)self setLinksFormat:v5];

      v6 = [messageCopy objectForKeyedSubscript:@"params"];
      v7 = _ICQLinksForServerMessageParameters(v6);
      [(_ICQBannerSpecification *)self setLinks:v7];

      v8 = [ICQLink _icqDismissLinkForServerMessageParameters:v6];
      [(_ICQBannerSpecification *)self setDismissLink:v8];
    }

    else
    {
      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = messageCopy;
        _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "invalid banner spec server message:%@", &v11, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setDisplayConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v4 = [configurationsCopy objectForKeyedSubscript:@"decayUntilInMS"];
  if (v4)
  {
    v5 = v4;
    v6 = [configurationsCopy objectForKeyedSubscript:@"decayUntilInMS"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [configurationsCopy objectForKeyedSubscript:@"decayUntilInMS"];
      [(_ICQBannerSpecification *)self setDecayUntil:v8];
    }
  }

  v9 = [configurationsCopy objectForKeyedSubscript:@"suppressUntilInMS"];
  if (v9)
  {
    v10 = v9;
    v11 = [configurationsCopy objectForKeyedSubscript:@"suppressUntilInMS"];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = [configurationsCopy objectForKeyedSubscript:@"suppressUntilInMS"];
      [(_ICQBannerSpecification *)self setSupressUntil:v13];
    }
  }
}

- (id)_bannerSpecificationParams
{
  isDetailBannerInfoAvailable = [(_ICQBannerSpecification *)self isDetailBannerInfoAvailable];
  serverDict = self->_serverDict;
  if (isDetailBannerInfoAvailable)
  {
    v5 = @"bannerFooter.params";
  }

  else
  {
    v5 = @"mesg.params";
  }

  v6 = [(NSDictionary *)self->_serverDict valueForKeyPath:v5];

  return v6;
}

- (NSURL)serverUIURL
{
  v17 = *MEMORY[0x277D85DE8];
  [(_ICQBannerSpecification *)self _bannerSpecificationParams];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v12 + 1) + 8 * i) valueForKeyPath:{@"actParams.openUrl", v12}];
        if (v7)
        {
          v9 = v7;
          v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSURL)dynamicUIRouteURL
{
  v17 = *MEMORY[0x277D85DE8];
  [(_ICQBannerSpecification *)self _bannerSpecificationParams];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v12 + 1) + 8 * i) valueForKeyPath:{@"actParams.route", v12}];
        if (v7)
        {
          v9 = v7;
          v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSString)purchaseAttribution
{
  v16 = *MEMORY[0x277D85DE8];
  [(_ICQBannerSpecification *)self _bannerSpecificationParams];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) valueForKeyPath:{@"actParams.purchaseAttribution", v11}];
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)titleWithKey:(id)key
{
  keyCopy = key;
  if ([(_ICQBannerSpecification *)self isDetailBannerInfoAvailable])
  {
    titleTemplates = [(_ICQBannerSpecification *)self titleTemplates];
    v6 = [titleTemplates objectForKeyedSubscript:keyCopy];

    titleTemplates2 = [(_ICQBannerSpecification *)self titleTemplates];
    v8 = titleTemplates2;
    if (v6)
    {
      v9 = keyCopy;
    }

    else
    {
      v9 = @"default";
    }

    v10 = [titleTemplates2 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)conciseTitleWithKey:(id)key
{
  keyCopy = key;
  if ([(_ICQBannerSpecification *)self isDetailBannerInfoAvailable])
  {
    conciseTitleTemplates = [(_ICQBannerSpecification *)self conciseTitleTemplates];
    v6 = [conciseTitleTemplates objectForKeyedSubscript:keyCopy];

    conciseTitleTemplates2 = [(_ICQBannerSpecification *)self conciseTitleTemplates];
    v8 = conciseTitleTemplates2;
    if (v6)
    {
      v9 = keyCopy;
    }

    else
    {
      v9 = @"default";
    }

    v10 = [conciseTitleTemplates2 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)messageWithKey:(id)key
{
  keyCopy = key;
  if ([(_ICQBannerSpecification *)self isDetailBannerInfoAvailable])
  {
    messageTemplates = [(_ICQBannerSpecification *)self messageTemplates];
    v6 = [messageTemplates objectForKeyedSubscript:keyCopy];

    messageTemplates2 = [(_ICQBannerSpecification *)self messageTemplates];
    v8 = messageTemplates2;
    if (v6)
    {
      v9 = keyCopy;
    }

    else
    {
      v9 = @"default";
    }

    v10 = [messageTemplates2 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)iconPath
{
  iconDetails = [(_ICQBannerSpecification *)self iconDetails];
  v3 = [iconDetails objectForKeyedSubscript:@"sfSymbolBundlePath"];

  return v3;
}

- (NSString)reason
{
  v2 = [(NSDictionary *)self->_serverDict objectForKeyedSubscript:@"reason"];
  v3 = [ICQOffer offerReasonForServerReason:v2];

  return v3;
}

@end