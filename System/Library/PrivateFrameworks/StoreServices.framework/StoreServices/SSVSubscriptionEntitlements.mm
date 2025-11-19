@interface SSVSubscriptionEntitlements
+ (id)_parseJSONDictionary:(id)a3;
+ (id)_valueForKey:(id)a3 fromDictionary:(id)a4 ofType:(Class)a5;
- (SSVSubscriptionEntitlements)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
@end

@implementation SSVSubscriptionEntitlements

+ (id)_parseJSONDictionary:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(SSVSubscriptionEntitlements);
  v6 = [a1 _valueForKey:@"user" fromDictionary:v4 ofType:objc_opt_class()];
  v35 = [a1 _valueForKey:@"ISO3Country" fromDictionary:v6 ofType:objc_opt_class()];
  [(SSVSubscriptionEntitlements *)v5 setAccountISO3Country:?];
  v34 = [a1 _valueForKey:@"dsId" fromDictionary:v6 ofType:objc_opt_class()];
  [(SSVSubscriptionEntitlements *)v5 setAccountIdentifier:?];
  v36 = v6;
  v33 = [a1 _valueForKey:@"storeFrontId" fromDictionary:v6 ofType:objc_opt_class()];
  [(SSVSubscriptionEntitlements *)v5 setAccountStoreFrontIdentifier:?];
  [a1 _valueForKey:@"cacheTimestamp" fromDictionary:v4 ofType:objc_opt_class()];
  v32 = v38 = v5;
  [(SSVSubscriptionEntitlements *)v5 setCachedTimestamp:?];
  v37 = v4;
  v7 = [a1 _valueForKey:@"subscriptions" fromDictionary:v4 ofType:objc_opt_class()];
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v63;
    v39 = *v63;
    do
    {
      v11 = 0;
      v40 = v9;
      do
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v62 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = v11;
          v13 = v12;
          v46 = [a1 _valueForKey:@"appAdamId" fromDictionary:v13 ofType:objc_opt_class()];
          v42 = v13;
          v14 = [a1 _valueForKey:@"inAppSubscriptions" fromDictionary:v13 ofType:objc_opt_class()];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v48 = v14;
          v15 = [v14 countByEnumeratingWithState:&v58 objects:v66 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v59;
            v45 = *v59;
            do
            {
              v18 = 0;
              v47 = v16;
              do
              {
                if (*v59 != v17)
                {
                  objc_enumerationMutation(v48);
                }

                v19 = *(*(&v58 + 1) + 8 * v18);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = v19;
                  v21 = objc_alloc_init(SSVSubscriptionEntitlementsSubscription);
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setAppAdamId:v46];
                  v57 = [a1 _valueForKey:@"appVersion" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setAppVersion:?];
                  v56 = [a1 _valueForKey:@"chargeCountryCode" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setChargeCountryCode:?];
                  v55 = [a1 _valueForKey:@"chargeCurrencyCode" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setChargeCurrencyCode:?];
                  v54 = [a1 _valueForKey:@"chargeStoreFrontId" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setChargeStoreFrontIdentifier:?];
                  v22 = [a1 _valueForKey:@"expireDate" fromDictionary:v20 ofType:objc_opt_class()];
                  if (v22)
                  {
                    v23 = objc_alloc_init(MEMORY[0x1E696AB78]);
                    [v23 setDateFormat:@"EEE MMM dd HH:mm:ss z yyyy"];
                    v24 = [v23 dateFromString:v22];
                    if (v24)
                    {
                      [(SSVSubscriptionEntitlementsSubscription *)v21 setExpireDate:v24];
                    }
                  }

                  v53 = [a1 _valueForKey:@"familyId" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setFamilyId:v53];
                  v52 = [a1 _valueForKey:@"inAppAdamId" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setInAppAdamId:v52];
                  v51 = [a1 _valueForKey:@"inAppVersion" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setInAppVersion:v51];
                  v50 = [a1 _valueForKey:@"isNewsAppPurchase" fromDictionary:v20 ofType:objc_opt_class()];
                  -[SSVSubscriptionEntitlementsSubscription setNewsAppPurchase:](v21, "setNewsAppPurchase:", [v50 BOOLValue]);
                  v25 = [a1 _valueForKey:@"offerIdentifier" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setOfferIdentifier:v25];
                  v26 = [a1 _valueForKey:@"originalPurchaseDownloadId" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setOriginalPurchaseDownloadId:v26];
                  [a1 _valueForKey:@"purchasabilityType" fromDictionary:v20 ofType:objc_opt_class()];
                  v27 = v49 = v22;
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setPurchasabilityType:v27];
                  v28 = [a1 _valueForKey:@"purchaseDownloadId" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setPurchaseDownloadId:v28];
                  v29 = [a1 _valueForKey:@"quantity" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setQuantity:v29];
                  v30 = [a1 _valueForKey:@"vendorIdentifier" fromDictionary:v20 ofType:objc_opt_class()];
                  [(SSVSubscriptionEntitlementsSubscription *)v21 setVendorIdentifier:v30];
                  [v44 addObject:v21];

                  v17 = v45;
                  v16 = v47;
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v48 countByEnumeratingWithState:&v58 objects:v66 count:16];
            }

            while (v16);
          }

          v10 = v39;
          v9 = v40;
          v11 = v43;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v9);
  }

  [(SSVSubscriptionEntitlements *)v38 setEntitledSubscriptions:v44];

  return v38;
}

+ (id)_valueForKey:(id)a3 fromDictionary:(id)a4 ofType:(Class)a5
{
  v5 = [a4 valueForKey:a3];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SSVSubscriptionEntitlements *)self accountIdentifier];
  [v4 setAccountIdentifier:v5];

  v6 = [(SSVSubscriptionEntitlements *)self accountStoreFrontIdentifier];
  [v4 setAccountStoreFrontIdentifier:v6];

  v7 = [(SSVSubscriptionEntitlements *)self accountISO3Country];
  [v4 setAccountISO3Country:v7];

  v8 = [(SSVSubscriptionEntitlements *)self cachedTimestamp];
  [v4 setCachedTimestamp:v8];

  v9 = [(SSVSubscriptionEntitlements *)self entitledSubscriptions];
  [v4 setEntitledSubscriptions:v9];

  return v4;
}

- (SSVSubscriptionEntitlements)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v25.receiver = self;
    v25.super_class = SSVSubscriptionEntitlements;
    v6 = [(SSVSubscriptionEntitlements *)&v25 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      accountIdentifier = v6->_accountIdentifier;
      v6->_accountIdentifier = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      accountStoreFrontIdentifier = v6->_accountStoreFrontIdentifier;
      v6->_accountStoreFrontIdentifier = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v14);
      accountISO3Country = v6->_accountISO3Country;
      v6->_accountISO3Country = v15;

      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v17);
      cachedTimestamp = v6->_cachedTimestamp;
      v6->_cachedTimestamp = v18;

      v20 = xpc_dictionary_get_value(v5, "3");
      v21 = objc_opt_class();
      v22 = SSXPCCreateNSArrayFromXPCEncodedArray(v20, v21);
      v23 = [v22 copy];
      entitledSubscriptions = v6->_entitledSubscriptions;
      v6->_entitledSubscriptions = v23;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_accountIdentifier);
  SSXPCDictionarySetObject(v3, "1", self->_accountStoreFrontIdentifier);
  SSXPCDictionarySetObject(v3, "2", self->_accountISO3Country);
  SSXPCDictionarySetObject(v3, "4", self->_cachedTimestamp);
  SSXPCDictionarySetObject(v3, "3", self->_entitledSubscriptions);
  return v3;
}

@end