@interface ICQDaemonOfferStub
- (Class)offerClass;
- (ICQDaemonOfferCriteria)criteria;
- (ICQDaemonOfferStub)initWithServerDictionary:(id)dictionary;
- (NSDictionary)offerResetPayload;
- (NSString)offerId;
- (NSString)offerResetURL;
- (id)persistedOffer;
- (int64_t)requestType;
- (void)offerResetURL;
@end

@implementation ICQDaemonOfferStub

- (ICQDaemonOfferStub)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICQDaemonOfferStub;
  v5 = [(ICQDaemonOfferStub *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    serverDict = v5->_serverDict;
    v5->_serverDict = v6;
  }

  return v5;
}

- (NSString)offerId
{
  v2 = [(NSDictionary *)self->_serverDict objectForKeyedSubscript:@"offerId"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_288431E38;
  }

  v5 = v4;

  return &v4->isa;
}

- (ICQDaemonOfferCriteria)criteria
{
  serverDictionary = [(ICQDaemonOfferStub *)self serverDictionary];
  v3 = [serverDictionary objectForKeyedSubscript:@"criteria"];

  v4 = [[ICQDaemonOfferCriteria alloc] initWithServerDictionary:v3];

  return v4;
}

- (Class)offerClass
{
  if ([(ICQDaemonOfferStub *)self isBuddyOffer])
  {
    v3 = off_27A650D70;
  }

  else if ([(ICQDaemonOfferStub *)self isPremiumOffer])
  {
    v3 = off_27A650DC0;
  }

  else if ([(ICQDaemonOfferStub *)self isDefaultOffer])
  {
    v3 = off_27A650D78;
  }

  else
  {
    isEventOffer = [(ICQDaemonOfferStub *)self isEventOffer];
    v3 = off_27A650D88;
    if (isEventOffer)
    {
      v3 = off_27A650D80;
    }
  }

  v5 = *v3;
  v6 = objc_opt_class();

  return v6;
}

- (id)persistedOffer
{
  offerClass = [(ICQDaemonOfferStub *)self offerClass];

  return [(objc_class *)offerClass persistedObject];
}

- (int64_t)requestType
{
  if ([(ICQDaemonOfferStub *)self isBuddyOffer])
  {
    return 4;
  }

  if ([(ICQDaemonOfferStub *)self isPremiumOffer])
  {
    return 2;
  }

  if ([(ICQDaemonOfferStub *)self isDefaultOffer])
  {
    return 1;
  }

  if ([(ICQDaemonOfferStub *)self isEventOffer])
  {
    return 5;
  }

  return 3;
}

- (NSString)offerResetURL
{
  v2 = [(NSDictionary *)self->_serverDict objectForKeyedSubscript:@"offerResetURL"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ICQDaemonOfferStub offerResetURL];
    }

    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (NSDictionary)offerResetPayload
{
  v2 = [(NSDictionary *)self->_serverDict objectForKeyedSubscript:@"offerResetPayload"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ICQDaemonOfferStub offerResetURL];
    }

    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)offerResetURL
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_2(&dword_275572000, v1, v2, "Expected String for offerResetURL got %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end