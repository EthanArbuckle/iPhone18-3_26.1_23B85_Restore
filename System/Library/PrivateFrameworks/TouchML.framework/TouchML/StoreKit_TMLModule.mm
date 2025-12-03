@interface StoreKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
@end

@implementation StoreKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F195B48;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9048 != -1)
  {
    dispatch_once(&qword_2806D9048, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  v24 = objc_msgSend_dictionary(v3, v5, v6);
  v7 = *MEMORY[0x277CD4630];
  objc_msgSend_setObject_forKeyedSubscript_(v24, v8, v9, *MEMORY[0x277CDD450], *MEMORY[0x277CD4630]);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v10, v11, @"SKStoreProductParameterITunesItemIdentifier", v24);
  objc_msgSend_setObject_forKeyedSubscript_(v24, v12, v13, *MEMORY[0x277CDD440], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v14, v15, @"SKStoreProductParameterAffiliateToken", v24);
  objc_msgSend_setObject_forKeyedSubscript_(v24, v16, v17, *MEMORY[0x277CDD448], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v18, v19, @"SKStoreProductParameterCampaignToken", v24);
  objc_msgSend_setObject_forKeyedSubscript_(v24, v20, v21, *MEMORY[0x277CDD458], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v22, v23, @"SKStoreProductParameterProviderToken", v24);
}

@end