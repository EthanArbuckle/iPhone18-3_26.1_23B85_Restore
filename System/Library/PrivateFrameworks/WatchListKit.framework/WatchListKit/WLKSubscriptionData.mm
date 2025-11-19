@interface WLKSubscriptionData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSubscriptionData:(id)a3;
- (BOOL)isTVPlusSubscriber;
- (WLKSubscriptionData)initWithCoder:(id)a3;
- (WLKSubscriptionData)initWithDictionary:(id)a3;
- (id)subscriptionByAdamID:(id)a3;
- (id)subscriptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLKSubscriptionData

- (WLKSubscriptionData)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v29.receiver = self;
    v29.super_class = WLKSubscriptionData;
    v5 = [(WLKSubscriptionData *)&v29 init];
    if (v5)
    {
      v6 = [v4 copy];
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
    v20 = self;
  }

  else
  {
    v21 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "Initializing WLKSubscriptionData with an empty dictionary", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
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

- (id)subscriptionByAdamID:(id)a3
{
  v3 = [(NSDictionary *)self->_subscriptionsByAdamID wlk_dictionaryForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isTVPlusSubscriber
{
  v2 = [(WLKSubscriptionData *)self activeTVPlusSubscription];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKSubscriptionData *)self isEqualToSubscriptionData:v4];
  }

  return v5;
}

- (BOOL)isEqualToSubscriptionData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 1);
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

- (WLKSubscriptionData)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_WLKSubscriptionDataCoderKeyBackingDictionary"];
    self = [(WLKSubscriptionData *)self initWithDictionary:v11];

    v12 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_backingDictionary forKey:@"_WLKSubscriptionDataCoderKeyBackingDictionary"];
}

@end