@interface WLKStoreOffer
+ (id)offersWithMAPIDictionaries:(id)dictionaries;
+ (id)offersWithSubscriptionDictionaries:(id)dictionaries;
- (BOOL)specialOfferEligible;
- (WLKStoreOffer)initWithMAPIDictionary:(id)dictionary;
- (WLKStoreOffer)initWithSubscriptionDictionary:(id)dictionary;
- (id)sui_buttonSubtitleWithServiceName:(id)name;
- (id)sui_buttonTitle;
@end

@implementation WLKStoreOffer

- (id)sui_buttonSubtitleWithServiceName:(id)name
{
  nameCopy = name;
  v5 = [(WLKStoreOffer *)self offerType]- 1;
  if (v5 > 2)
  {
    v8 = 0;
  }

  else
  {
    v6 = off_279E5E5B0[v5];
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v8 = [v7 localizedStringForKey:v6 value:&stru_288206BC0 table:@"WatchListKit"];
  }

  if ([v8 length])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v11 = [v10 localizedStringForKey:@"OFFER_PURCHASE_SUBTITLE_FORMAT" value:&stru_288206BC0 table:@"WatchListKit"];
    v12 = [v9 stringWithFormat:v11, v8];

LABEL_6:
    goto LABEL_7;
  }

  v12 = nameCopy;
  if ([(WLKStoreOffer *)self offerType]== 4)
  {
    if (v12)
    {
      v14 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
      v15 = [v10 localizedStringForKey:@"OFFER_SUBSCRIPTION_SUBTITLE_FORMAT" value:&stru_288206BC0 table:@"WatchListKit"];
      v16 = [v14 stringWithFormat:v15, v12];

      v12 = v16;
    }

    else
    {
      v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
      v12 = [v10 localizedStringForKey:@"OFFER_SUBSCRIPTION_SUBTITLE_FALLBACK" value:&stru_288206BC0 table:@"WatchListKit"];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

- (id)sui_buttonTitle
{
  formattedPrice = [(WLKStoreOffer *)self formattedPrice];
  if ([(WLKStoreOffer *)self offerType]== 4)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v5 = [v4 localizedStringForKey:@"OFFER_ACTION_SUBSCRIBE" value:&stru_288206BC0 table:@"WatchListKit"];

    if ([(WLKStoreOffer *)self subscriptionType]== 2)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
      formattedPrice = [v6 localizedStringForKey:@"OFFER_ACTION_SUBSCRIBE_FREE_TRIAL" value:&stru_288206BC0 table:@"WatchListKit"];
    }

    else
    {
      formattedPrice = v5;
    }
  }

  return formattedPrice;
}

- (WLKStoreOffer)initWithSubscriptionDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = WLKStoreOffer;
  v5 = [(WLKStoreOffer *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v5->_offerType = 4;
    v8 = [dictionaryCopy wlk_stringForKey:@"buyParams"];
    v9 = [v8 copy];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v9;

    v11 = [dictionaryCopy wlk_stringForKey:@"title"];
    v12 = [v11 copy];
    title = v5->_title;
    v5->_title = v12;

    v14 = [dictionaryCopy wlk_stringForKey:@"price"];
    v15 = MEMORY[0x277CCABB0];
    [v14 floatValue];
    v16 = [v15 numberWithFloat:?];
    price = v5->_price;
    v5->_price = v16;

    v18 = [dictionaryCopy wlk_stringForKey:@"priceForDisplay"];
    formattedPrice = v5->_formattedPrice;
    v5->_formattedPrice = v18;

    v5->_subscriptionType = 1;
    v20 = [dictionaryCopy wlk_stringForKey:@"eligibilityType"];
    if ([v20 isEqualToString:@"INTRO"])
    {
      v21 = @"freeTrialPeriod";
      v22 = 72;
      v23 = 2;
    }

    else
    {
      if (![v20 isEqualToString:@"HARDWARE_1"])
      {
LABEL_7:
        v27 = [dictionaryCopy wlk_stringForKey:@"renewalPeriod"];
        v28 = [[WLKStoreOfferPeriod alloc] initWithString:v27];
        renewalPeriod = v5->_renewalPeriod;
        v5->_renewalPeriod = v28;

        goto LABEL_8;
      }

      v21 = @"introOfferPeriod";
      v22 = 80;
      v23 = 3;
    }

    v5->_subscriptionType = v23;
    v24 = [dictionaryCopy wlk_stringForKey:v21];
    v25 = [[WLKStoreOfferPeriod alloc] initWithString:v24];
    v26 = *(&v5->super.isa + v22);
    *(&v5->super.isa + v22) = v25;

    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (WLKStoreOffer)initWithMAPIDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = WLKStoreOffer;
  v5 = [(WLKStoreOffer *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = [dictionaryCopy wlk_stringForKey:@"buyParams"];
    v9 = [v8 copy];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v9;

    v11 = [dictionaryCopy wlk_stringForKey:@"price"];
    v12 = [dictionaryCopy wlk_numberForKey:@"price"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = MEMORY[0x277CCABB0];
      [v11 floatValue];
      v14 = [v15 numberWithFloat:?];
    }

    price = v5->_price;
    v5->_price = v14;

    v17 = [dictionaryCopy wlk_stringForKey:@"priceFormatted"];
    formattedPrice = v5->_formattedPrice;
    v5->_formattedPrice = v17;

    v5->_offerType = 0;
    v5->_subscriptionType = 0;
    v19 = [dictionaryCopy wlk_stringForKey:@"kind"];
    if ([v19 isEqualToString:@"buy"])
    {
      v20 = 1;
    }

    else if ([v19 isEqualToString:@"rent"])
    {
      v20 = 2;
    }

    else if ([v19 isEqualToString:@"preorder"])
    {
      v20 = 3;
    }

    else if ([v19 isEqualToString:@"get"])
    {
      v20 = 5;
    }

    else
    {
      if (![v19 isEqualToString:@"redownload"])
      {
LABEL_16:

        goto LABEL_17;
      }

      v20 = 6;
    }

    v5->_offerType = v20;
    goto LABEL_16;
  }

LABEL_17:

  return v5;
}

- (BOOL)specialOfferEligible
{
  freeTrialPeriod = [(WLKStoreOffer *)self freeTrialPeriod];
  if (freeTrialPeriod)
  {
    v4 = 1;
  }

  else
  {
    introOfferPeriod = [(WLKStoreOffer *)self introOfferPeriod];
    v4 = introOfferPeriod != 0;
  }

  return v4;
}

+ (id)offersWithSubscriptionDictionaries:(id)dictionaries
{
  v21 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [WLKStoreOffer alloc];
        v12 = [(WLKStoreOffer *)v11 initWithSubscriptionDictionary:v10, v16];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)offersWithMAPIDictionaries:(id)dictionaries
{
  v21 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [WLKStoreOffer alloc];
        v12 = [(WLKStoreOffer *)v11 initWithMAPIDictionary:v10, v16];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end