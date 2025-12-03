@interface ICQRemoteContext
+ (id)ICQContextFromRemoteAlertContext:(id)context;
+ (id)contextFromDictionary:(id)dictionary;
- (ICQRemoteContext)initWithCoder:(id)coder;
- (ICQRemoteContext)initWithOffer:(id)offer link:(id)link flowOptionsData:(id)data preloadedRemoteUIData:(id)iData;
- (ICQRemoteContext)initWithOffer:(id)offer link:(id)link flowOptionsData:(id)data preloadedRemoteUIData:(id)iData isPostPurchaseFlow:(BOOL)flow;
- (id)_serializedData;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQRemoteContext

+ (id)ICQContextFromRemoteAlertContext:(id)context
{
  userInfo = [context userInfo];
  v5 = [self contextFromDictionary:userInfo];

  return v5;
}

+ (id)contextFromDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [dictionary objectForKeyedSubscript:@"contextData"];
  v13 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v13];
  v5 = v13;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v3;
    v8 = "Caught error (%@) deserializing context data (%@)";
    v9 = v6;
    v10 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v15 = v4;
    v8 = "Successfully formed context: %@";
    v9 = v6;
    v10 = 12;
  }

  _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (ICQRemoteContext)initWithOffer:(id)offer link:(id)link flowOptionsData:(id)data preloadedRemoteUIData:(id)iData
{
  offerCopy = offer;
  linkCopy = link;
  dataCopy = data;
  iDataCopy = iData;
  v18.receiver = self;
  v18.super_class = ICQRemoteContext;
  v15 = [(ICQRemoteContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_offer, offer);
    objc_storeStrong(&v16->_link, link);
    objc_storeStrong(&v16->_flowOptionsData, data);
    objc_storeStrong(&v16->_preloadedRemoteUIData, iData);
    v16->_isPostPurchaseFlow = 0;
  }

  return v16;
}

- (ICQRemoteContext)initWithOffer:(id)offer link:(id)link flowOptionsData:(id)data preloadedRemoteUIData:(id)iData isPostPurchaseFlow:(BOOL)flow
{
  offerCopy = offer;
  linkCopy = link;
  dataCopy = data;
  iDataCopy = iData;
  v20.receiver = self;
  v20.super_class = ICQRemoteContext;
  v17 = [(ICQRemoteContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_offer, offer);
    objc_storeStrong(&v18->_link, link);
    objc_storeStrong(&v18->_flowOptionsData, data);
    objc_storeStrong(&v18->_preloadedRemoteUIData, iData);
    v18->_isPostPurchaseFlow = flow;
  }

  return v18;
}

- (id)_serializedData
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v10];
  v4 = v10;
  v5 = _ICQGetLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    selfCopy = v4;
    v7 = "Caught error (%@) serializing ICQRemoteContext";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    selfCopy = self;
    v7 = "ICQRemoteContext %@ encoded successfully";
  }

  _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
LABEL_7:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)toDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"contextData";
  _serializedData = [(ICQRemoteContext *)self _serializedData];
  v7[0] = _serializedData;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  offer = self->_offer;
  coderCopy = coder;
  [coderCopy encodeObject:offer forKey:@"offer"];
  [coderCopy encodeObject:self->_link forKey:@"link"];
  [coderCopy encodeObject:self->_flowOptionsData forKey:@"flowOptions"];
  [coderCopy encodeObject:self->_preloadedRemoteUIData forKey:@"preloadedRemoteUIData"];
  [coderCopy encodeObject:self->_presentingSceneIdentifier forKey:@"presentingSceneIdentifier"];
  [coderCopy encodeObject:self->_presentingSceneBundleIdentifier forKey:@"presentingSceneBundleIdentifier"];
  [coderCopy encodeBool:self->_isPostPurchaseFlow forKey:@"isPostPurchaseFlow"];
}

- (ICQRemoteContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ICQRemoteContext;
  v5 = [(ICQRemoteContext *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offer"];
    offer = v5->_offer;
    v5->_offer = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link"];
    link = v5->_link;
    v5->_link = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flowOptions"];
    flowOptionsData = v5->_flowOptionsData;
    v5->_flowOptionsData = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preloadedRemoteUIData"];
    preloadedRemoteUIData = v5->_preloadedRemoteUIData;
    v5->_preloadedRemoteUIData = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    presentingSceneIdentifier = v5->_presentingSceneIdentifier;
    v5->_presentingSceneIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
    presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
    v5->_presentingSceneBundleIdentifier = v16;

    v5->_isPostPurchaseFlow = [coderCopy decodeBoolForKey:@"isPostPurchaseFlow"];
  }

  return v5;
}

@end