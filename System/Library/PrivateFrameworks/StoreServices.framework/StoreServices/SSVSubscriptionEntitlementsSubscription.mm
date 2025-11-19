@interface SSVSubscriptionEntitlementsSubscription
- (SSVSubscriptionEntitlementsSubscription)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
@end

@implementation SSVSubscriptionEntitlementsSubscription

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SSVSubscriptionEntitlementsSubscription *)self appAdamId];
  [v4 setAppAdamId:v5];

  v6 = [(SSVSubscriptionEntitlementsSubscription *)self appVersion];
  [v4 setAppVersion:v6];

  v7 = [(SSVSubscriptionEntitlementsSubscription *)self chargeCountryCode];
  [v4 setChargeCountryCode:v7];

  v8 = [(SSVSubscriptionEntitlementsSubscription *)self chargeCurrencyCode];
  [v4 setChargeCurrencyCode:v8];

  v9 = [(SSVSubscriptionEntitlementsSubscription *)self chargeStoreFrontIdentifier];
  [v4 setChargeStoreFrontIdentifier:v9];

  v10 = [(SSVSubscriptionEntitlementsSubscription *)self expireDate];
  [v4 setExpireDate:v10];

  v11 = [(SSVSubscriptionEntitlementsSubscription *)self familyId];
  [v4 setFamilyId:v11];

  v12 = [(SSVSubscriptionEntitlementsSubscription *)self inAppAdamId];
  [v4 setInAppAdamId:v12];

  v13 = [(SSVSubscriptionEntitlementsSubscription *)self inAppVersion];
  [v4 setInAppVersion:v13];

  [v4 setNewsAppPurchase:{-[SSVSubscriptionEntitlementsSubscription isNewsAppPurchase](self, "isNewsAppPurchase")}];
  v14 = [(SSVSubscriptionEntitlementsSubscription *)self offerIdentifier];
  [v4 setOfferIdentifier:v14];

  v15 = [(SSVSubscriptionEntitlementsSubscription *)self originalPurchaseDownloadId];
  [v4 setOriginalPurchaseDownloadId:v15];

  v16 = [(SSVSubscriptionEntitlementsSubscription *)self purchasabilityType];
  [v4 setPurchasabilityType:v16];

  v17 = [(SSVSubscriptionEntitlementsSubscription *)self purchaseDownloadId];
  [v4 setPurchaseDownloadId:v17];

  v18 = [(SSVSubscriptionEntitlementsSubscription *)self quantity];
  [v4 setQuantity:v18];

  v19 = [(SSVSubscriptionEntitlementsSubscription *)self vendorIdentifier];
  [v4 setVendorIdentifier:v19];

  return v4;
}

- (SSVSubscriptionEntitlementsSubscription)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v55.receiver = self;
    v55.super_class = SSVSubscriptionEntitlementsSubscription;
    v6 = [(SSVSubscriptionEntitlementsSubscription *)&v55 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      appAdamId = v6->_appAdamId;
      v6->_appAdamId = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      appVersion = v6->_appVersion;
      v6->_appVersion = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v14);
      chargeCountryCode = v6->_chargeCountryCode;
      v6->_chargeCountryCode = v15;

      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "14", v17);
      chargeCurrencyCode = v6->_chargeCurrencyCode;
      v6->_chargeCurrencyCode = v18;

      v20 = objc_opt_class();
      v21 = SSXPCDictionaryCopyObjectWithClass(v5, "15", v20);
      chargeStoreFrontIdentifier = v6->_chargeStoreFrontIdentifier;
      v6->_chargeStoreFrontIdentifier = v21;

      v23 = objc_opt_class();
      v24 = SSXPCDictionaryCopyObjectWithClass(v5, "3", v23);
      expireDate = v6->_expireDate;
      v6->_expireDate = v24;

      v26 = objc_opt_class();
      v27 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v26);
      familyId = v6->_familyId;
      v6->_familyId = v27;

      v29 = objc_opt_class();
      v30 = SSXPCDictionaryCopyObjectWithClass(v5, "5", v29);
      inAppAdamId = v6->_inAppAdamId;
      v6->_inAppAdamId = v30;

      v32 = objc_opt_class();
      v33 = SSXPCDictionaryCopyObjectWithClass(v5, "6", v32);
      inAppVersion = v6->_inAppVersion;
      v6->_inAppVersion = v33;

      v35 = objc_opt_class();
      v36 = SSXPCDictionaryCopyObjectWithClass(v5, "13", v35);
      v6->_newsAppPurchase = [v36 BOOLValue];

      v37 = objc_opt_class();
      v38 = SSXPCDictionaryCopyObjectWithClass(v5, "7", v37);
      offerIdentifier = v6->_offerIdentifier;
      v6->_offerIdentifier = v38;

      v40 = objc_opt_class();
      v41 = SSXPCDictionaryCopyObjectWithClass(v5, "8", v40);
      originalPurchaseDownloadId = v6->_originalPurchaseDownloadId;
      v6->_originalPurchaseDownloadId = v41;

      v43 = objc_opt_class();
      v44 = SSXPCDictionaryCopyObjectWithClass(v5, "9", v43);
      purchasabilityType = v6->_purchasabilityType;
      v6->_purchasabilityType = v44;

      v46 = objc_opt_class();
      v47 = SSXPCDictionaryCopyObjectWithClass(v5, "10", v46);
      purchaseDownloadId = v6->_purchaseDownloadId;
      v6->_purchaseDownloadId = v47;

      v49 = objc_opt_class();
      v50 = SSXPCDictionaryCopyObjectWithClass(v5, "11", v49);
      quantity = v6->_quantity;
      v6->_quantity = v50;

      v52 = objc_opt_class();
      v53 = SSXPCDictionaryCopyObjectWithClass(v5, "12", v52);
      vendorIdentifier = v6->_vendorIdentifier;
      v6->_vendorIdentifier = v53;
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
  SSXPCDictionarySetObject(v3, "0", self->_appAdamId);
  SSXPCDictionarySetObject(v3, "1", self->_appVersion);
  SSXPCDictionarySetObject(v3, "2", self->_chargeCountryCode);
  SSXPCDictionarySetObject(v3, "14", self->_chargeCurrencyCode);
  SSXPCDictionarySetObject(v3, "15", self->_chargeStoreFrontIdentifier);
  SSXPCDictionarySetObject(v3, "3", self->_expireDate);
  SSXPCDictionarySetObject(v3, "4", self->_familyId);
  SSXPCDictionarySetObject(v3, "5", self->_inAppAdamId);
  SSXPCDictionarySetObject(v3, "6", self->_inAppVersion);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_newsAppPurchase];
  SSXPCDictionarySetObject(v3, "13", v4);

  SSXPCDictionarySetObject(v3, "7", self->_offerIdentifier);
  SSXPCDictionarySetObject(v3, "8", self->_originalPurchaseDownloadId);
  SSXPCDictionarySetObject(v3, "9", self->_purchasabilityType);
  SSXPCDictionarySetObject(v3, "10", self->_purchaseDownloadId);
  SSXPCDictionarySetObject(v3, "11", self->_quantity);
  SSXPCDictionarySetObject(v3, "12", self->_vendorIdentifier);
  return v3;
}

@end