@interface ICQRemoteContext
+ (id)ICQContextFromRemoteAlertContext:(id)a3;
+ (id)contextFromDictionary:(id)a3;
- (ICQRemoteContext)initWithCoder:(id)a3;
- (ICQRemoteContext)initWithOffer:(id)a3 link:(id)a4 flowOptionsData:(id)a5 preloadedRemoteUIData:(id)a6;
- (ICQRemoteContext)initWithOffer:(id)a3 link:(id)a4 flowOptionsData:(id)a5 preloadedRemoteUIData:(id)a6 isPostPurchaseFlow:(BOOL)a7;
- (id)_serializedData;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQRemoteContext

+ (id)ICQContextFromRemoteAlertContext:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [a1 contextFromDictionary:v4];

  return v5;
}

+ (id)contextFromDictionary:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"contextData"];
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

- (ICQRemoteContext)initWithOffer:(id)a3 link:(id)a4 flowOptionsData:(id)a5 preloadedRemoteUIData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICQRemoteContext;
  v15 = [(ICQRemoteContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_offer, a3);
    objc_storeStrong(&v16->_link, a4);
    objc_storeStrong(&v16->_flowOptionsData, a5);
    objc_storeStrong(&v16->_preloadedRemoteUIData, a6);
    v16->_isPostPurchaseFlow = 0;
  }

  return v16;
}

- (ICQRemoteContext)initWithOffer:(id)a3 link:(id)a4 flowOptionsData:(id)a5 preloadedRemoteUIData:(id)a6 isPostPurchaseFlow:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = ICQRemoteContext;
  v17 = [(ICQRemoteContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_offer, a3);
    objc_storeStrong(&v18->_link, a4);
    objc_storeStrong(&v18->_flowOptionsData, a5);
    objc_storeStrong(&v18->_preloadedRemoteUIData, a6);
    v18->_isPostPurchaseFlow = a7;
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
    v12 = v4;
    v7 = "Caught error (%@) serializing ICQRemoteContext";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v12 = self;
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
  v2 = [(ICQRemoteContext *)self _serializedData];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  offer = self->_offer;
  v5 = a3;
  [v5 encodeObject:offer forKey:@"offer"];
  [v5 encodeObject:self->_link forKey:@"link"];
  [v5 encodeObject:self->_flowOptionsData forKey:@"flowOptions"];
  [v5 encodeObject:self->_preloadedRemoteUIData forKey:@"preloadedRemoteUIData"];
  [v5 encodeObject:self->_presentingSceneIdentifier forKey:@"presentingSceneIdentifier"];
  [v5 encodeObject:self->_presentingSceneBundleIdentifier forKey:@"presentingSceneBundleIdentifier"];
  [v5 encodeBool:self->_isPostPurchaseFlow forKey:@"isPostPurchaseFlow"];
}

- (ICQRemoteContext)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICQRemoteContext;
  v5 = [(ICQRemoteContext *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offer"];
    offer = v5->_offer;
    v5->_offer = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link"];
    link = v5->_link;
    v5->_link = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flowOptions"];
    flowOptionsData = v5->_flowOptionsData;
    v5->_flowOptionsData = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preloadedRemoteUIData"];
    preloadedRemoteUIData = v5->_preloadedRemoteUIData;
    v5->_preloadedRemoteUIData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    presentingSceneIdentifier = v5->_presentingSceneIdentifier;
    v5->_presentingSceneIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
    presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
    v5->_presentingSceneBundleIdentifier = v16;

    v5->_isPostPurchaseFlow = [v4 decodeBoolForKey:@"isPostPurchaseFlow"];
  }

  return v5;
}

@end