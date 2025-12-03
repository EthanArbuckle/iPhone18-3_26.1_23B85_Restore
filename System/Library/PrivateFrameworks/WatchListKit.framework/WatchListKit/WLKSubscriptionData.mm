@interface WLKSubscriptionData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSubscriptionData:(id)data;
- (BOOL)isTVPlusSubscriber;
- (WLKSubscriptionData)initWithCoder:(id)coder;
- (WLKSubscriptionData)initWithDictionary:(id)dictionary;
- (id)subscriptionByAdamID:(id)d;
- (id)subscriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WLKSubscriptionData

- (WLKSubscriptionData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v29.receiver = self;
    v29.super_class = WLKSubscriptionData;
    v5 = [(WLKSubscriptionData *)&v29 init];
    if (v5)
    {
      v6 = [dictionaryCopy copy];
      backingDictionary = v5->_backingDictionary;
      v5->_backingDictionary = v6;

      v8 = [(NSDictionary *)v5->_backingDictionary wlk_arrayForKey:@"subscriptions"];
      subscriptionArray = v5->_subscriptionArray;
      v5->_subscriptionArray = v8;

      v10 = [(NSDictionary *)v5->_backingDictionary wlk_dictionaryForKey:@"account"];
      account = v5->_account;
      v5->_account = v10;

      v12 = [(NSDictionary *)v5->_backingDictionary wlk_dictionaryForKey:@"family"];
      family = v5->_family;
      v5->_family = v12;

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = v5->_subscriptionArray;
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __42__WLKSubscriptionData_initWithDictionary___block_invoke;
      v26 = &unk_279E60AD8;
      v16 = v14;
      v27 = v16;
      v17 = v5;
      v28 = v17;
      [(NSArray *)v15 enumerateObjectsUsingBlock:&v23];
      if ([v16 count])
      {
        v18 = [v16 copy];
        subscriptionsByAdamID = v17->_subscriptionsByAdamID;
        v17->_subscriptionsByAdamID = v18;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v21 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "Initializing WLKSubscriptionData with an empty dictionary", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

void __42__WLKSubscriptionData_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 wlk_numberForKey:@"adamId"];
  if (v3)
  {
    [*(a1 + 32) setObject:v8 forKey:v3];
  }

  if ([v8 wlk_BOOLForKey:@"isActive" defaultValue:0])
  {
    ++*(*(a1 + 40) + 48);
  }

  v4 = [v8 wlk_stringForKey:@"type"];
  if ([v4 isEqualToString:@"TV_PLUS"])
  {
    v5 = [v8 wlk_BOOLForKey:@"isActive" defaultValue:0];

    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = [v8 copy];
    v7 = *(a1 + 40);
    v4 = *(v7 + 56);
    *(v7 + 56) = v6;
  }

LABEL_9:
}

- (id)subscriptions
{
  v2 = [(NSArray *)self->_subscriptionArray copy];

  return v2;
}

- (id)subscriptionByAdamID:(id)d
{
  v3 = [(NSDictionary *)self->_subscriptionsByAdamID wlk_dictionaryForKey:d];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isTVPlusSubscriber
{
  activeTVPlusSubscription = [(WLKSubscriptionData *)self activeTVPlusSubscription];
  v3 = activeTVPlusSubscription != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKSubscriptionData *)self isEqualToSubscriptionData:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSubscriptionData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    v6 = *(dataCopy + 1);
    v7 = self->_backingDictionary;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [(NSDictionary *)v7 isEqual:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (WLKSubscriptionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_WLKSubscriptionDataCoderKeyBackingDictionary"];
    self = [(WLKSubscriptionData *)self initWithDictionary:v11];

    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_backingDictionary forKey:@"_WLKSubscriptionDataCoderKeyBackingDictionary"];
}

@end