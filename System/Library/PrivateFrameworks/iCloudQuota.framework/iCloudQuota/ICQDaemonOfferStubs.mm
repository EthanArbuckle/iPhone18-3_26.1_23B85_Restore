@interface ICQDaemonOfferStubs
- (BOOL)_isValidServerStubs:(id)stubs key:(id)key;
- (BOOL)_stubsArrayContainsOfferID:(id)d stubs:(id)stubs;
- (BOOL)containsOfferID:(id)d;
- (ICQDaemonOfferStubs)initWithDictionary:(id)dictionary;
- (id)_chooseStubFromServerStubs:(id)stubs conditions:(id)conditions;
- (id)_chooseStubFromServerStubs:(id)stubs offerType:(int64_t)type;
- (id)_initWithAccount:(id)account error:(id)error;
- (id)_initWithAccount:(id)account serverDictionary:(id)dictionary;
- (id)chooseBuddyStub;
- (id)chooseBuddyStubForConditions:(id)conditions;
- (id)chooseBuddyStubForOfferType:(int64_t)type;
- (id)chooseDefaultStub;
- (id)chooseDefaultStubForConditions:(id)conditions;
- (id)chooseEventStub;
- (id)chooseEventStubForConditions:(id)conditions;
- (id)chooseFirstDefaultStub;
- (id)chooseFirstEventStub;
- (id)chooseFirstPremiumStub;
- (id)chooseFirstStub;
- (id)choosePremiumStub;
- (id)choosePremiumStubForConditions:(id)conditions;
- (id)chooseStub;
- (id)chooseStubForConditions:(id)conditions;
- (id)chooseStubForOfferType:(int64_t)type;
- (void)_initServerStubsFromServerDictionary;
- (void)setServerDictionary:(id)dictionary;
@end

@implementation ICQDaemonOfferStubs

- (id)chooseStub
{
  serverStubs = [(ICQDaemonOfferStubs *)self serverStubs];
  v4 = +[ICQDaemonOfferConditions currentConditions];
  v5 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:serverStubs conditions:v4];

  return v5;
}

- (id)chooseStubForConditions:(id)conditions
{
  conditionsCopy = conditions;
  serverStubs = [(ICQDaemonOfferStubs *)self serverStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:serverStubs conditions:conditionsCopy];

  return v6;
}

- (id)chooseFirstStub
{
  serverStubs = [(ICQDaemonOfferStubs *)self serverStubs];
  v4 = [serverStubs count];

  if (v4)
  {
    serverStubs2 = [(ICQDaemonOfferStubs *)self serverStubs];
    firstObject = [serverStubs2 firstObject];

    v7 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)chooseBuddyStub
{
  buddyStubs = [(ICQDaemonOfferStubs *)self buddyStubs];
  v4 = +[ICQDaemonOfferConditions currentConditions];
  v5 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:buddyStubs conditions:v4];

  return v5;
}

- (id)chooseBuddyStubForConditions:(id)conditions
{
  conditionsCopy = conditions;
  buddyStubs = [(ICQDaemonOfferStubs *)self buddyStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:buddyStubs conditions:conditionsCopy];

  return v6;
}

- (id)chooseDefaultStub
{
  defaultStubs = [(ICQDaemonOfferStubs *)self defaultStubs];
  v4 = +[ICQDaemonOfferConditions currentConditions];
  v5 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:defaultStubs conditions:v4];

  return v5;
}

- (id)chooseDefaultStubForConditions:(id)conditions
{
  conditionsCopy = conditions;
  defaultStubs = [(ICQDaemonOfferStubs *)self defaultStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:defaultStubs conditions:conditionsCopy];

  return v6;
}

- (id)chooseFirstDefaultStub
{
  defaultStubs = [(ICQDaemonOfferStubs *)self defaultStubs];
  v4 = [defaultStubs count];

  if (v4)
  {
    defaultStubs2 = [(ICQDaemonOfferStubs *)self defaultStubs];
    firstObject = [defaultStubs2 firstObject];

    v7 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)choosePremiumStub
{
  premiumStubs = [(ICQDaemonOfferStubs *)self premiumStubs];
  v4 = +[ICQDaemonOfferConditions currentConditions];
  v5 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:premiumStubs conditions:v4];

  return v5;
}

- (id)choosePremiumStubForConditions:(id)conditions
{
  conditionsCopy = conditions;
  premiumStubs = [(ICQDaemonOfferStubs *)self premiumStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:premiumStubs conditions:conditionsCopy];

  return v6;
}

- (id)chooseFirstPremiumStub
{
  premiumStubs = [(ICQDaemonOfferStubs *)self premiumStubs];
  v4 = [premiumStubs count];

  if (v4)
  {
    premiumStubs2 = [(ICQDaemonOfferStubs *)self premiumStubs];
    firstObject = [premiumStubs2 firstObject];

    v7 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)chooseEventStub
{
  v3 = +[ICQDaemonOfferConditions currentConditions];
  v4 = [(ICQDaemonOfferStubs *)self chooseEventStubForConditions:v3];

  return v4;
}

- (id)chooseEventStubForConditions:(id)conditions
{
  conditionsCopy = conditions;
  eventStubs = [(ICQDaemonOfferStubs *)self eventStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:eventStubs conditions:conditionsCopy];

  return v6;
}

- (id)chooseFirstEventStub
{
  eventStubs = [(ICQDaemonOfferStubs *)self eventStubs];
  v4 = [eventStubs count];

  if (v4)
  {
    eventStubs2 = [(ICQDaemonOfferStubs *)self eventStubs];
    firstObject = [eventStubs2 firstObject];

    v7 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:firstObject];
    v8 = +[ICQDaemonOfferConditions currentConditions];
    [(ICQDaemonOfferStub *)v7 setConditionsWhenChosen:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsOfferID:(id)d
{
  dCopy = d;
  serverStubs = [(ICQDaemonOfferStubs *)self serverStubs];
  if ([(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:dCopy stubs:serverStubs])
  {
    v6 = 1;
  }

  else
  {
    premiumStubs = [(ICQDaemonOfferStubs *)self premiumStubs];
    if ([(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:dCopy stubs:premiumStubs])
    {
      v6 = 1;
    }

    else
    {
      defaultStubs = [(ICQDaemonOfferStubs *)self defaultStubs];
      if ([(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:dCopy stubs:defaultStubs])
      {
        v6 = 1;
      }

      else
      {
        buddyStubs = [(ICQDaemonOfferStubs *)self buddyStubs];
        if ([(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:dCopy stubs:buddyStubs])
        {
          v6 = 1;
        }

        else
        {
          eventStubs = [(ICQDaemonOfferStubs *)self eventStubs];
          v6 = [(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:dCopy stubs:eventStubs];
        }
      }
    }
  }

  return v6;
}

- (id)_initWithAccount:(id)account serverDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = ICQDaemonOfferStubs;
  v4 = [(ICQDaemonPersisted *)&v7 _initWithAccount:account serverDictionary:dictionary];
  v5 = v4;
  if (v4)
  {
    [v4 _initServerStubsFromServerDictionary];
  }

  return v5;
}

- (id)_initWithAccount:(id)account error:(id)error
{
  v13.receiver = self;
  v13.super_class = ICQDaemonOfferStubs;
  v4 = [(ICQDaemonPersisted *)&v13 _initWithAccount:account error:error];
  v5 = v4;
  if (v4)
  {
    v6 = v4[7];
    v7 = MEMORY[0x277CBEBF8];
    v4[7] = MEMORY[0x277CBEBF8];

    v8 = v5[8];
    v5[8] = v7;

    v9 = v5[9];
    v5[9] = v7;

    v10 = v5[10];
    v5[10] = v7;

    v11 = v5[11];
    v5[11] = v7;
  }

  return v5;
}

- (ICQDaemonOfferStubs)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = ICQDaemonOfferStubs;
  v3 = [(ICQDaemonPersisted *)&v6 initWithDictionary:dictionary];
  v4 = v3;
  if (v3)
  {
    [(ICQDaemonOfferStubs *)v3 _initServerStubsFromServerDictionary];
  }

  return v4;
}

- (void)setServerDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = ICQDaemonOfferStubs;
  [(ICQDaemonPersisted *)&v4 setServerDictionary:dictionary];
  [(ICQDaemonOfferStubs *)self _initServerStubsFromServerDictionary];
}

uint64_t __41__ICQDaemonOfferStubs_sortedServerStubs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"priority"];
  v6 = [v4 objectForKeyedSubscript:@"priority"];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v5 integerValue];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 integerValue];
    goto LABEL_9;
  }

LABEL_8:
  v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
  if (v7 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7 > v8;
  }

  return v9;
}

- (void)_initServerStubsFromServerDictionary
{
  serverDictionary = [(ICQDaemonPersisted *)self serverDictionary];
  v22 = [serverDictionary objectForKeyedSubscript:@"deviceOffers"];

  if ([(ICQDaemonOfferStubs *)self _isValidServerStubs:v22 key:@"deviceOffers"])
  {
    v4 = [(ICQDaemonOfferStubs *)self sortedServerStubs:v22];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  serverStubs = self->_serverStubs;
  self->_serverStubs = v4;

  serverDictionary2 = [(ICQDaemonPersisted *)self serverDictionary];
  v7 = [serverDictionary2 objectForKeyedSubscript:@"buddyOffers"];

  if ([(ICQDaemonOfferStubs *)self _isValidServerStubs:v7 key:@"buddyOffers"])
  {
    v8 = [(ICQDaemonOfferStubs *)self sortedServerStubs:v7];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  buddyStubs = self->_buddyStubs;
  self->_buddyStubs = v8;

  serverDictionary3 = [(ICQDaemonPersisted *)self serverDictionary];
  v11 = [serverDictionary3 objectForKeyedSubscript:@"defaultOffers"];

  if ([(ICQDaemonOfferStubs *)self _isValidServerStubs:v11 key:@"defaultOffers"])
  {
    v12 = [(ICQDaemonOfferStubs *)self sortedServerStubs:v11];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  defaultStubs = self->_defaultStubs;
  self->_defaultStubs = v12;

  serverDictionary4 = [(ICQDaemonPersisted *)self serverDictionary];
  v15 = [serverDictionary4 objectForKeyedSubscript:@"premiumOffers"];

  if ([(ICQDaemonOfferStubs *)self _isValidServerStubs:v15 key:@"premiumOffers"])
  {
    v16 = [(ICQDaemonOfferStubs *)self sortedServerStubs:v15];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  premiumStubs = self->_premiumStubs;
  self->_premiumStubs = v16;

  serverDictionary5 = [(ICQDaemonPersisted *)self serverDictionary];
  v19 = [serverDictionary5 objectForKeyedSubscript:@"eventOffers"];

  if ([(ICQDaemonOfferStubs *)self _isValidServerStubs:v19 key:@"eventOffers"])
  {
    v20 = [(ICQDaemonOfferStubs *)self sortedServerStubs:v19];
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  eventStubs = self->_eventStubs;
  self->_eventStubs = v20;
}

- (BOOL)_isValidServerStubs:(id)stubs key:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  stubsCopy = stubs;
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  if (!stubsCopy)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = keyCopy;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ is missing", buf, 0xCu);
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v21 = keyCopy;
      v22 = 2112;
      v23 = v9;
      v10 = v9;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "invalid %{public}@ of class %@", buf, 0x16u);
    }

LABEL_9:

    v7 = 0;
    *(v17 + 24) = 0;
    goto LABEL_10;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__ICQDaemonOfferStubs__isValidServerStubs_key___block_invoke;
  v13[3] = &unk_27A652D40;
  v14 = keyCopy;
  v15 = &v16;
  [stubsCopy enumerateObjectsUsingBlock:v13];

  v7 = *(v17 + 24);
LABEL_10:
  _Block_object_dispose(&v16, 8);

  v11 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void __47__ICQDaemonOfferStubs__isValidServerStubs_key___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138543874;
      v13 = v9;
      v14 = 2048;
      v15 = a3;
      v16 = 2112;
      v17 = objc_opt_class();
      v10 = v17;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "invalid %{public}@[%ld] of class %@", &v12, 0x20u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_chooseStubFromServerStubs:(id)stubs conditions:(id)conditions
{
  v41 = *MEMORY[0x277D85DE8];
  stubsCopy = stubs;
  conditionsCopy = conditions;
  if ([stubsCopy count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = stubsCopy;
    obj = stubsCopy;
    v7 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      v10 = @"criteria";
      v11 = 0x27A650000uLL;
      v28 = *v31;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = _ICQDictionaryForKey(v13, v10);
        v15 = [objc_alloc(*(v11 + 3480)) initWithServerDictionary:v14];
        v16 = _ICQGetLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          _ICQStringForKey(v13, @"offerType");
          v17 = conditionsCopy;
          v19 = v18 = v10;
          _ICQStringForKey(v13, @"type");
          v21 = v20 = v8;
          *buf = 138543874;
          v35 = v19;
          v36 = 2114;
          v37 = v21;
          v38 = 2114;
          v39 = v14;
          _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "checking criteria for offer type %{public}@ type %{public}@ criteria\n%{public}@", buf, 0x20u);

          v8 = v20;
          v10 = v18;
          conditionsCopy = v17;
          v9 = v28;
          v11 = 0x27A650000;
        }

        if ([v15 isSatisfiedByConditions:conditionsCopy])
        {
          break;
        }

        if (v8 == ++v12)
        {
          v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      v22 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v13];

      if (!v22)
      {
        goto LABEL_15;
      }

      [(ICQDaemonOfferStub *)v22 setConditionsWhenChosen:conditionsCopy];
    }

    else
    {
LABEL_12:

LABEL_15:
      v23 = _ICQGetLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v23, OS_LOG_TYPE_DEFAULT, "choose stub: none with matching criteria found", buf, 2u);
      }

      v22 = 0;
    }

    stubsCopy = v27;
  }

  else
  {
    v24 = _ICQGetLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v24, OS_LOG_TYPE_DEFAULT, "choose stub: none present", buf, 2u);
    }

    v22 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_stubsArrayContainsOfferID:(id)d stubs:(id)stubs
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  stubsCopy = stubs;
  v7 = [stubsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(stubsCopy);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:{@"offerId", v16}];
        v12 = [v11 isEqualToString:dCopy];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [stubsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)chooseStubForOfferType:(int64_t)type
{
  serverStubs = [(ICQDaemonOfferStubs *)self serverStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:serverStubs offerType:type];

  return v6;
}

- (id)chooseBuddyStubForOfferType:(int64_t)type
{
  buddyStubs = [(ICQDaemonOfferStubs *)self buddyStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:buddyStubs offerType:type];

  return v6;
}

- (id)_chooseStubFromServerStubs:(id)stubs offerType:(int64_t)type
{
  v38 = *MEMORY[0x277D85DE8];
  stubsCopy = stubs;
  v6 = +[ICQDaemonOfferConditions currentConditions];
  if ([stubsCopy count])
  {
    v24 = v6;
    v25 = stubsCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = stubsCopy;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = _ICQStringForKey(v11, @"offerType");
        v13 = _ICQOfferTypeForServerString(v12);
        v14 = _ICQGetLogSystem();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13 == type)
        {
          break;
        }

        if (v15)
        {
          v16 = _ICQStringForOfferType(v13);
          v17 = _ICQStringForOfferType(type);
          *buf = 138412802;
          v32 = v16;
          v33 = 2112;
          v34 = v12;
          v35 = 2112;
          v36 = v17;
          _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "skipping server offer type %@ (%@) because it doesn't match requested %@", buf, 0x20u);
        }

        if (v8 == ++v10)
        {
          v8 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      if (v15)
      {
        v18 = _ICQStringForOfferType(type);
        *buf = 138412546;
        v32 = v18;
        v33 = 2112;
        v34 = v11;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "choose offer type (%@):\n%@", buf, 0x16u);
      }

      v19 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v11];
      stubsCopy = v25;
      if (v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_12:

      stubsCopy = v25;
    }

    v20 = _ICQGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = _ICQStringForOfferType(type);
      *buf = 138412290;
      v32 = v21;
      _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "choose offer type (%@): none found", buf, 0xCu);
    }
  }

  else
  {
    v20 = _ICQGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "choose offer type: none present", buf, 2u);
    }
  }

  v19 = 0;
LABEL_21:
  [(ICQDaemonOfferStub *)v19 setConditionsWhenChosen:v6, v24, v25];

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

@end