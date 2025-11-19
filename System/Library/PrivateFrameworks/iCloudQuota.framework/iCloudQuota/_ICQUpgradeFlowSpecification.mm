@interface _ICQUpgradeFlowSpecification
+ (id)_upgradePageIdentifierForError:(id)a3;
+ (id)sanitizedUpgradeFlowServerDict:(id)a3;
+ (id)upgradeFlowSpecificationSampleForLevel:(int64_t)a3;
- (_ICQUpgradeFlowSpecification)initWithServerDictionary:(id)a3;
- (id)upgradeFailurePage;
- (id)upgradeFailurePageForNetwork;
- (id)upgradePageForError:(id)a3;
- (id)upgradePageForSuccess:(BOOL)a3;
- (id)upgradeSuccessPage;
- (id)upgradeSuccessPageForWiFi;
@end

@implementation _ICQUpgradeFlowSpecification

+ (id)upgradeFlowSpecificationSampleForLevel:(int64_t)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___UpgradeFlowSpecificationSampleForLevel_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  if (_UpgradeFlowSpecificationSampleForLevel_onceToken != -1)
  {
    dispatch_once(&_UpgradeFlowSpecificationSampleForLevel_onceToken, block);
  }

  v3 = _UpgradeFlowSpecificationSampleForLevel_sUpgradeFlowSpecification;

  return v3;
}

- (id)upgradeSuccessPage
{
  v2 = [(_ICQFlowSpecification *)self pagesByIdentifier];
  v3 = [v2 objectForKey:@"UpgradeComplete"];

  if (!v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "no upgrade success page available", v6, 2u);
    }
  }

  return v3;
}

- (id)upgradeFailurePage
{
  v2 = [(_ICQFlowSpecification *)self pagesByIdentifier];
  v3 = [v2 objectForKey:@"UpgradeFailure"];

  if (!v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "no upgrade failure page available", v6, 2u);
    }
  }

  return v3;
}

- (id)upgradePageForSuccess:(BOOL)a3
{
  if (a3)
  {
    [(_ICQUpgradeFlowSpecification *)self upgradeSuccessPage];
  }

  else
  {
    [(_ICQUpgradeFlowSpecification *)self upgradeFailurePage];
  }
  v3 = ;

  return v3;
}

- (id)upgradeSuccessPageForWiFi
{
  v3 = [(_ICQFlowSpecification *)self pagesByIdentifier];
  v4 = [v3 objectForKey:@"UpgradeSuccessWiFi"];

  if (!v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "missing wireless network success page, falling back on generic", v7, 2u);
    }

    v4 = [(_ICQUpgradeFlowSpecification *)self upgradeSuccessPage];
  }

  return v4;
}

- (id)upgradeFailurePageForNetwork
{
  v3 = [(_ICQFlowSpecification *)self pagesByIdentifier];
  v4 = [v3 objectForKey:@"UpgradeFailureNetwork"];

  if (!v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "missing network failure page, falling back on generic", v7, 2u);
    }

    v4 = [(_ICQUpgradeFlowSpecification *)self upgradeFailurePage];
  }

  return v4;
}

- (id)upgradePageForError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_opt_class() _upgradePageIdentifierForError:v4];
    v6 = [(_ICQFlowSpecification *)self pagesByIdentifier];
    v7 = [v6 objectForKey:v5];

    if (!v7)
    {
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "missing page spec for error: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_upgradePageIdentifierForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CEE188]];

  if (v5)
  {
    if ([v3 code] == 6)
    {
      v6 = 0;
    }

    else
    {
      v6 = @"UpgradeFailure";
    }
  }

  else
  {
    v7 = [v3 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v8 = [v3 code];

      if (v8 == -1001)
      {
        v6 = @"UpgradeFailureNetwork";
        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "code")}];
    v6 = [v9 stringValue];
  }

LABEL_10:

  return v6;
}

+ (id)sanitizedUpgradeFlowServerDict:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = _ICQDictionaryForOneOfKeys(v3, &unk_2884452F8);
  if (v5)
  {
    [v4 setObject:v5 forKey:@"UpgradeOffer"];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "missing upgradeInfo and actionInfo", buf, 2u);
    }
  }

  v7 = _ICQDictionaryForKey(v3, @"postUpgradeInfo");
  v8 = _ICQDictionaryForKey(v3, @"successInfo");
  v41 = v5;
  v42 = v8;
  if (!v7)
  {
    v19 = v8;
    if (!v8)
    {
      v34 = _ICQGetLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v34, OS_LOG_TYPE_DEFAULT, "missing postUpgradeInfo and successInfo", buf, 2u);
      }

      goto LABEL_49;
    }

    [v4 setObject:v8 forKey:@"UpgradeComplete"];
LABEL_21:
    v20 = _ICQDictionaryForKey(v3, @"failureInfo");
    if (v20)
    {
      [v4 setObject:v20 forKey:@"UpgradeFailure"];
    }

    else if (!v7)
    {
      v21 = _ICQGetLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "missing failureInfo", buf, 2u);
      }
    }

    v22 = _ICQDictionaryForKey(v3, @"network");
    v38 = v22;
    if (v22)
    {
      [v4 setObject:v22 forKey:{@"UpgradeFailureNetwork", v22}];
    }

    else if (!v7)
    {
      v23 = _ICQGetLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v23, OS_LOG_TYPE_DEFAULT, "missing network failure page (might not be needed)", buf, 2u);
      }
    }

    v24 = _ICQDictionaryForKey(v3, @"wifi");
    if (v24)
    {
      [v4 setObject:v24 forKey:@"UpgradeSuccessWiFi"];
    }

    else if (!v7)
    {
      v25 = _ICQGetLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "missing wifi failure page (might not be needed)", buf, 2u);
      }
    }

    v40 = v20;
    v26 = v7;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = v3;
    v28 = [v27 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v43 + 1) + 8 * i);
          if ([v32 integerValue])
          {
            v33 = _ICQDictionaryForKey(v27, v32);
            [v4 setObject:v33 forKey:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v29);
    }

    v7 = v26;
    v19 = v42;
    v34 = v40;
LABEL_49:

    goto LABEL_50;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v39 = v7;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v47 + 1) + 8 * j);
        v15 = _ICQDictionaryForKey(v9, v14);
        if ([(__CFString *)v14 isEqualToString:@"200"])
        {
          v16 = v4;
          v17 = v15;
          v18 = @"UpgradeComplete";
        }

        else
        {
          v16 = v4;
          v17 = v15;
          v18 = v14;
        }

        [v16 setObject:v17 forKey:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v11);
  }

  v7 = v39;
  v19 = v42;
  if (v42)
  {
    goto LABEL_21;
  }

LABEL_50:
  v35 = [v4 copy];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (_ICQUpgradeFlowSpecification)initWithServerDictionary:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _ICQServerDictToOfferTypeAndLevel(v4, &self->_offerType, 0);
  v5 = [v4 objectForKeyedSubscript:@"needsWifi"];
  self->_needsWiFi = _ICQBooleanForServerObjectDefault(v5, 0);

  v6 = [v4 objectForKeyedSubscript:@"offerInfo"];
  if (!v6)
  {
    v6 = v4;
  }

  v24 = v4;
  v7 = [_ICQUpgradeFlowSpecification sanitizedUpgradeFlowServerDict:v6];

  v8 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [_ICQUpgradeOfferPageSpecification alloc];
        v16 = [v9 objectForKeyedSubscript:v14];
        v17 = [(_ICQUpgradeOfferPageSpecification *)v15 initWithServerDictionary:v16 pageIdentifier:v14];

        if ([v14 isEqualToString:@"UpgradeOffer"])
        {
          [v8 insertObject:v17 atIndex:0];
        }

        else
        {
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v18 = [v8 copy];
  v25.receiver = self;
  v25.super_class = _ICQUpgradeFlowSpecification;
  v19 = [(_ICQFlowSpecification *)&v25 initWithPages:v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_serverDict, obj);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

@end