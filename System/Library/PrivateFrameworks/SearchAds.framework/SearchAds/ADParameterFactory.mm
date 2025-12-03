@interface ADParameterFactory
- (ADParameterFactory)init;
- (id)campaignNamespaceParameterWithCampaignNamespace:(id)namespace;
- (id)frequencyCapDataParameter;
- (id)privacyDataKeyParameter;
- (id)requestedAdDataParameter;
- (id)requestedTemplateTypeParameter;
- (id)toroClickCountDataParameter;
@end

@implementation ADParameterFactory

- (ADParameterFactory)init
{
  v6.receiver = self;
  v6.super_class = ADParameterFactory;
  v2 = [(ADParameterFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ADCapService);
    capService = v2->_capService;
    v2->_capService = v3;
  }

  return v2;
}

- (id)campaignNamespaceParameterWithCampaignNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v7 = namespaceCopy;
  if (namespaceCopy && (objc_msgSend_isEqualToString_(namespaceCopy, v4, &stru_2876A6DB8, v5, v6) & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x277CE9690]);
    objc_msgSend_setKey_(v8, v9, @"campaignNamespace", v10, v11);
    objc_msgSend_setValue_(v8, v12, v7, v13, v14);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)privacyDataKeyParameter
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277CE9630], a2, v2, v3, v4);
  v9 = objc_msgSend_stringForKey_(v5, v6, @"PrivacyDataKey", v7, v8);

  if (v9 && (objc_msgSend_isEqualToString_(v9, v10, &stru_2876A6DB8, v11, v12) & 1) == 0)
  {
    v13 = objc_alloc_init(MEMORY[0x277CE9690]);
    objc_msgSend_setKey_(v13, v14, @"privacyData", v15, v16);
    objc_msgSend_setValue_(v13, v17, v9, v18, v19);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)requestedAdDataParameter
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v6 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v7, v8, v9, v10);
  isRequestedImage = objc_msgSend_isRequestedImage(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_numberWithBool_(v6, v17, isRequestedImage, v18, v19);
  objc_msgSend_setObject_forKey_(v5, v21, v20, @"images", v22);

  v27 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v23, v24, v25, v26);
  v32 = objc_msgSend_requestedText(v27, v28, v29, v30, v31);
  objc_msgSend_setObject_forKey_(v5, v33, v32, @"text", v34);

  v35 = MEMORY[0x277CCABB0];
  v40 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v36, v37, v38, v39);
  isRequestedRating = objc_msgSend_isRequestedRating(v40, v41, v42, v43, v44);
  v49 = objc_msgSend_numberWithBool_(v35, v46, isRequestedRating, v47, v48);
  objc_msgSend_setObject_forKey_(v5, v50, v49, @"userRating", v51);

  v56 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v52, v53, v54, v55);
  v61 = objc_msgSend_requestedIcon(v56, v57, v58, v59, v60);
  objc_msgSend_setObject_forKey_(v5, v62, v61, @"icon", v63);

  v81 = 0;
  v65 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], v64, v5, 0, &v81);
  v66 = v81;
  v67 = 0;
  if (!v66)
  {
    v68 = objc_alloc(MEMORY[0x277CCACA8]);
    v71 = objc_msgSend_initWithData_encoding_(v68, v69, v65, 4, v70);
    v72 = APLogForCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v83 = v71;
      _os_log_impl(&dword_264E42000, v72, OS_LOG_TYPE_DEFAULT, "JSON String for requested Ad Data: %@", buf, 0xCu);
    }

    v67 = objc_alloc_init(MEMORY[0x277CE9690]);
    objc_msgSend_setKey_(v67, v73, @"requestedTemplate", v74, v75);
    objc_msgSend_setValue_(v67, v76, v71, v77, v78);
  }

  v79 = *MEMORY[0x277D85DE8];

  return v67;
}

- (id)requestedTemplateTypeParameter
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277CE9630], a2, v2, v3, v4);
  v9 = objc_msgSend_stringForKey_(v5, v6, @"ToroTemplateType", v7, v8);

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CE9690]);
    objc_msgSend_setKey_(v10, v11, @"templateType", v12, v13);
    objc_msgSend_setValue_(v10, v14, v9, v15, v16);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)frequencyCapDataParameter
{
  v5 = objc_msgSend_capService(self, a2, v2, v3, v4);
  v10 = objc_msgSend_impressionCountByLine(v5, v6, v7, v8, v9);

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CE9690]);
    objc_msgSend_setKey_(v11, v12, @"impressionCountByLine", v13, v14);
    objc_msgSend_setValue_(v11, v15, v10, v16, v17);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)toroClickCountDataParameter
{
  v5 = objc_msgSend_capService(self, a2, v2, v3, v4);
  v10 = objc_msgSend_clickCountByLine(v5, v6, v7, v8, v9);

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CE9690]);
    objc_msgSend_setKey_(v11, v12, @"clickCountByLine", v13, v14);
    objc_msgSend_setValue_(v11, v15, v10, v16, v17);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end