@interface ICQDaemonOfferStubs
- (BOOL)_isValidServerStubs:(id)a3 key:(id)a4;
- (BOOL)_stubsArrayContainsOfferID:(id)a3 stubs:(id)a4;
- (BOOL)containsOfferID:(id)a3;
- (ICQDaemonOfferStubs)initWithDictionary:(id)a3;
- (id)_chooseStubFromServerStubs:(id)a3 conditions:(id)a4;
- (id)_chooseStubFromServerStubs:(id)a3 offerType:(int64_t)a4;
- (id)_initWithAccount:(id)a3 error:(id)a4;
- (id)_initWithAccount:(id)a3 serverDictionary:(id)a4;
- (id)chooseBuddyStub;
- (id)chooseBuddyStubForConditions:(id)a3;
- (id)chooseBuddyStubForOfferType:(int64_t)a3;
- (id)chooseDefaultStub;
- (id)chooseDefaultStubForConditions:(id)a3;
- (id)chooseEventStub;
- (id)chooseEventStubForConditions:(id)a3;
- (id)chooseFirstDefaultStub;
- (id)chooseFirstEventStub;
- (id)chooseFirstPremiumStub;
- (id)chooseFirstStub;
- (id)choosePremiumStub;
- (id)choosePremiumStubForConditions:(id)a3;
- (id)chooseStub;
- (id)chooseStubForConditions:(id)a3;
- (id)chooseStubForOfferType:(int64_t)a3;
- (void)_initServerStubsFromServerDictionary;
- (void)setServerDictionary:(id)a3;
@end

@implementation ICQDaemonOfferStubs

- (id)chooseStub
{
  v3 = [(ICQDaemonOfferStubs *)self serverStubs];
  v4 = +[ICQDaemonOfferConditions currentConditions];
  v5 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v3 conditions:v4];

  return v5;
}

- (id)chooseStubForConditions:(id)a3
{
  v4 = a3;
  v5 = [(ICQDaemonOfferStubs *)self serverStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v5 conditions:v4];

  return v6;
}

- (id)chooseFirstStub
{
  v3 = [(ICQDaemonOfferStubs *)self serverStubs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ICQDaemonOfferStubs *)self serverStubs];
    v6 = [v5 firstObject];

    v7 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)chooseBuddyStub
{
  v3 = [(ICQDaemonOfferStubs *)self buddyStubs];
  v4 = +[ICQDaemonOfferConditions currentConditions];
  v5 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v3 conditions:v4];

  return v5;
}

- (id)chooseBuddyStubForConditions:(id)a3
{
  v4 = a3;
  v5 = [(ICQDaemonOfferStubs *)self buddyStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v5 conditions:v4];

  return v6;
}

- (id)chooseDefaultStub
{
  v3 = [(ICQDaemonOfferStubs *)self defaultStubs];
  v4 = +[ICQDaemonOfferConditions currentConditions];
  v5 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v3 conditions:v4];

  return v5;
}

- (id)chooseDefaultStubForConditions:(id)a3
{
  v4 = a3;
  v5 = [(ICQDaemonOfferStubs *)self defaultStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v5 conditions:v4];

  return v6;
}

- (id)chooseFirstDefaultStub
{
  v3 = [(ICQDaemonOfferStubs *)self defaultStubs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ICQDaemonOfferStubs *)self defaultStubs];
    v6 = [v5 firstObject];

    v7 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)choosePremiumStub
{
  v3 = [(ICQDaemonOfferStubs *)self premiumStubs];
  v4 = +[ICQDaemonOfferConditions currentConditions];
  v5 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v3 conditions:v4];

  return v5;
}

- (id)choosePremiumStubForConditions:(id)a3
{
  v4 = a3;
  v5 = [(ICQDaemonOfferStubs *)self premiumStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v5 conditions:v4];

  return v6;
}

- (id)chooseFirstPremiumStub
{
  v3 = [(ICQDaemonOfferStubs *)self premiumStubs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ICQDaemonOfferStubs *)self premiumStubs];
    v6 = [v5 firstObject];

    v7 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v6];
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

- (id)chooseEventStubForConditions:(id)a3
{
  v4 = a3;
  v5 = [(ICQDaemonOfferStubs *)self eventStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v5 conditions:v4];

  return v6;
}

- (id)chooseFirstEventStub
{
  v3 = [(ICQDaemonOfferStubs *)self eventStubs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ICQDaemonOfferStubs *)self eventStubs];
    v6 = [v5 firstObject];

    v7 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v6];
    v8 = +[ICQDaemonOfferConditions currentConditions];
    [(ICQDaemonOfferStub *)v7 setConditionsWhenChosen:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsOfferID:(id)a3
{
  v4 = a3;
  v5 = [(ICQDaemonOfferStubs *)self serverStubs];
  if ([(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:v4 stubs:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ICQDaemonOfferStubs *)self premiumStubs];
    if ([(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:v4 stubs:v7])
    {
      v6 = 1;
    }

    else
    {
      v8 = [(ICQDaemonOfferStubs *)self defaultStubs];
      if ([(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:v4 stubs:v8])
      {
        v6 = 1;
      }

      else
      {
        v9 = [(ICQDaemonOfferStubs *)self buddyStubs];
        if ([(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:v4 stubs:v9])
        {
          v6 = 1;
        }

        else
        {
          v10 = [(ICQDaemonOfferStubs *)self eventStubs];
          v6 = [(ICQDaemonOfferStubs *)self _stubsArrayContainsOfferID:v4 stubs:v10];
        }
      }
    }
  }

  return v6;
}

- (id)_initWithAccount:(id)a3 serverDictionary:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICQDaemonOfferStubs;
  v4 = [(ICQDaemonPersisted *)&v7 _initWithAccount:a3 serverDictionary:a4];
  v5 = v4;
  if (v4)
  {
    [v4 _initServerStubsFromServerDictionary];
  }

  return v5;
}

- (id)_initWithAccount:(id)a3 error:(id)a4
{
  v13.receiver = self;
  v13.super_class = ICQDaemonOfferStubs;
  v4 = [(ICQDaemonPersisted *)&v13 _initWithAccount:a3 error:a4];
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

- (ICQDaemonOfferStubs)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICQDaemonOfferStubs;
  v3 = [(ICQDaemonPersisted *)&v6 initWithDictionary:a3];
  v4 = v3;
  if (v3)
  {
    [(ICQDaemonOfferStubs *)v3 _initServerStubsFromServerDictionary];
  }

  return v4;
}

- (void)setServerDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICQDaemonOfferStubs;
  [(ICQDaemonPersisted *)&v4 setServerDictionary:a3];
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
  v3 = [(ICQDaemonPersisted *)self serverDictionary];
  v22 = [v3 objectForKeyedSubscript:@"deviceOffers"];

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

  v6 = [(ICQDaemonPersisted *)self serverDictionary];
  v7 = [v6 objectForKeyedSubscript:@"buddyOffers"];

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

  v10 = [(ICQDaemonPersisted *)self serverDictionary];
  v11 = [v10 objectForKeyedSubscript:@"defaultOffers"];

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

  v14 = [(ICQDaemonPersisted *)self serverDictionary];
  v15 = [v14 objectForKeyedSubscript:@"premiumOffers"];

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

  v18 = [(ICQDaemonPersisted *)self serverDictionary];
  v19 = [v18 objectForKeyedSubscript:@"eventOffers"];

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

- (BOOL)_isValidServerStubs:(id)a3 key:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  if (!v5)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v6;
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
      v21 = v6;
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
  v14 = v6;
  v15 = &v16;
  [v5 enumerateObjectsUsingBlock:v13];

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

- (id)_chooseStubFromServerStubs:(id)a3 conditions:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v5;
    obj = v5;
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
          v17 = v6;
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
          v6 = v17;
          v9 = v28;
          v11 = 0x27A650000;
        }

        if ([v15 isSatisfiedByConditions:v6])
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

      [(ICQDaemonOfferStub *)v22 setConditionsWhenChosen:v6];
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

    v5 = v27;
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

- (BOOL)_stubsArrayContainsOfferID:(id)a3 stubs:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:{@"offerId", v16}];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)chooseStubForOfferType:(int64_t)a3
{
  v5 = [(ICQDaemonOfferStubs *)self serverStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v5 offerType:a3];

  return v6;
}

- (id)chooseBuddyStubForOfferType:(int64_t)a3
{
  v5 = [(ICQDaemonOfferStubs *)self buddyStubs];
  v6 = [(ICQDaemonOfferStubs *)self _chooseStubFromServerStubs:v5 offerType:a3];

  return v6;
}

- (id)_chooseStubFromServerStubs:(id)a3 offerType:(int64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[ICQDaemonOfferConditions currentConditions];
  if ([v5 count])
  {
    v24 = v6;
    v25 = v5;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v5;
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
        if (v13 == a4)
        {
          break;
        }

        if (v15)
        {
          v16 = _ICQStringForOfferType(v13);
          v17 = _ICQStringForOfferType(a4);
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
        v18 = _ICQStringForOfferType(a4);
        *buf = 138412546;
        v32 = v18;
        v33 = 2112;
        v34 = v11;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "choose offer type (%@):\n%@", buf, 0x16u);
      }

      v19 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v11];
      v5 = v25;
      if (v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_12:

      v5 = v25;
    }

    v20 = _ICQGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = _ICQStringForOfferType(a4);
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