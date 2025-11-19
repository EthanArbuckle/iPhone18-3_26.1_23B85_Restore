@interface ADSearchObject
- (ADSearchObject)init;
- (ADSearchObject)initWithSponsoredSearchRequestData:(id)a3 routingInfoData:(id)a4 deviceRequestID:(id)a5 userTargetingID:(id)a6 error:(id)a7;
- (BOOL)checkForNonWKDiscardOverrides:(BOOL)a3 forAdamID:(id)a4;
- (BOOL)isAppInstalled:(unint64_t)a3;
- (id)filterAdsForNonWK:(id)a3;
- (id)updatedWithTransparencyRenderingData:(id)a3;
- (int64_t)setAdvertisementsWithPolicy:(id)a3;
- (void)addFeaturesToAdvertisements;
- (void)orderedAds:(id)a3;
- (void)orderedAdsWithODMLSuccess:(id)a3;
- (void)setAdvertisements:(id)a3;
- (void)setOrganics:(id)a3;
@end

@implementation ADSearchObject

- (ADSearchObject)init
{
  v32.receiver = self;
  v32.super_class = ADSearchObject;
  v6 = [(ADSearchObject *)&v32 init];
  if (v6)
  {
    v7 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v2, v3, v4, v5);
    isRunningTests = objc_msgSend_isRunningTests(v7, v8, v9, v10, v11);

    if ((isRunningTests & 1) == 0)
    {
      v13 = objc_alloc(MEMORY[0x277D42CC0]);
      v18 = objc_msgSend_sharedInstance(MEMORY[0x277CE9638], v14, v15, v16, v17);
      isPersonalizedAdsEnabled = objc_msgSend_isPersonalizedAdsEnabled(v18, v19, v20, v21, v22);
      v26 = objc_msgSend_initWithPersonalizedAdsEnabled_placementType_(v13, v24, isPersonalizedAdsEnabled, 0, v25);
      reranker = v6->_reranker;
      v6->_reranker = v26;
    }

    v6->_SLA = 0.1;
    v28 = OdmlLogForCategory();
    v6->_ident = os_signpost_id_generate(v28);

    v29 = objc_alloc_init(ADDESRecordsManager);
    desRecordManager = v6->_desRecordManager;
    v6->_desRecordManager = v29;
  }

  return v6;
}

- (ADSearchObject)initWithSponsoredSearchRequestData:(id)a3 routingInfoData:(id)a4 deviceRequestID:(id)a5 userTargetingID:(id)a6 error:(id)a7
{
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21 = objc_msgSend_init(self, v17, v18, v19, v20);
  v22 = v21;
  if (v21)
  {
    objc_storeStrong((v21 + 8), a3);
    objc_storeStrong(&v22->_routingInfoData, a4);
    objc_storeStrong(&v22->_deviceRequestID, a5);
    objc_storeStrong(&v22->_userTargetingID, a6);
    objc_storeStrong(&v22->_error, a7);
  }

  return v22;
}

- (void)setAdvertisements:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v71 = "[ADSearchObject setAdvertisements:]";
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", buf, 0xCu);
  }

  if (MGGetBoolAnswer())
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = objc_msgSend_count(v4, v6, v7, v8, v9);
    v15 = objc_msgSend_arrayWithCapacity_(v10, v12, v11, v13, v14);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_264E49D6C;
    v68[3] = &unk_279B889B8;
    v16 = v15;
    v69 = v16;
    objc_msgSend_enumerateObjectsUsingBlock_(v4, v17, v68, v18, v19);
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_msgSend_AD_jsonString(v16, v21, v22, v23, v24);
      *buf = 138412290;
      v71 = v25;
      _os_log_impl(&dword_264E42000, v20, OS_LOG_TYPE_DEFAULT, "Received ADAppAdvertisement response: %@", buf, 0xCu);
    }
  }

  v26 = objc_msgSend_filterAdsForNonWK_(self, v6, v4, v8, v9);
  v30 = objc_msgSend_updatedWithTransparencyRenderingData_(self, v27, v26, v28, v29);
  advertisements = self->_advertisements;
  self->_advertisements = v30;

  objc_msgSend_addFeaturesToAdvertisements(self, v32, v33, v34, v35);
  v36 = OdmlLogForCategory();
  v41 = objc_msgSend_ident(self, v37, v38, v39, v40);
  if ((v41 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v42 = v41;
    if (os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_264E42000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v42, "App Store Total Reranking", "", buf, 2u);
    }
  }

  v47 = objc_msgSend_reranker(self, v43, v44, v45, v46);
  v52 = objc_msgSend_copy(v26, v48, v49, v50, v51);
  objc_msgSend_setAndRerankAds_(v47, v53, v52, v54, v55);

  v60 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v56, v57, v58, v59);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_264E49DC4;
  v66[3] = &unk_279B889E0;
  v67 = v26;
  v61 = v26;
  objc_msgSend_addOperationWithBlock_(v60, v62, v66, v63, v64);

  v65 = *MEMORY[0x277D85DE8];
}

- (int64_t)setAdvertisementsWithPolicy:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v91 = "[ADSearchObject setAdvertisementsWithPolicy:]";
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", buf, 0xCu);
  }

  if (MGGetBoolAnswer())
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = objc_msgSend_count(v4, v6, v7, v8, v9);
    v15 = objc_msgSend_arrayWithCapacity_(v10, v12, v11, v13, v14);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_264E4A1F0;
    v88[3] = &unk_279B889B8;
    v16 = v15;
    v89 = v16;
    objc_msgSend_enumerateObjectsUsingBlock_(v4, v17, v88, v18, v19);
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_msgSend_AD_jsonString(v16, v21, v22, v23, v24);
      *buf = 138412290;
      v91 = v25;
      _os_log_impl(&dword_264E42000, v20, OS_LOG_TYPE_DEFAULT, "Received ADAppAdvertisement response: %@", buf, 0xCu);
    }
  }

  v26 = objc_msgSend_filterAdsForNonWK_(self, v6, v4, v8, v9);
  if (objc_msgSend_count(v26, v27, v28, v29, v30) || !objc_msgSend_count(v4, v31, v32, v33, v34))
  {
    v35 = objc_msgSend_filter(APSearchAdFilter, v31, v32, v33, v34);
    v39 = objc_msgSend_filterWithAds_(v35, v36, v26, v37, v38);

    if (objc_msgSend_count(v39, v40, v41, v42, v43) || !objc_msgSend_count(v4, v44, v45, v46, v47))
    {
      v48 = objc_msgSend_updatedWithTransparencyRenderingData_(self, v44, v39, v46, v47);
      advertisements = self->_advertisements;
      self->_advertisements = v48;

      objc_msgSend_addFeaturesToAdvertisements(self, v50, v51, v52, v53);
      v54 = OdmlLogForCategory();
      v59 = objc_msgSend_ident(self, v55, v56, v57, v58);
      if ((v59 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v60 = v59;
        if (os_signpost_enabled(v54))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_264E42000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v60, "App Store Total Reranking", "", buf, 2u);
        }
      }

      v65 = objc_msgSend_reranker(self, v61, v62, v63, v64);
      v70 = objc_msgSend_copy(v39, v66, v67, v68, v69);
      objc_msgSend_setAndRerankAds_(v65, v71, v70, v72, v73);

      v78 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v74, v75, v76, v77);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = sub_264E4A248;
      v86[3] = &unk_279B889E0;
      v87 = v39;
      objc_msgSend_addOperationWithBlock_(v78, v79, v86, v80, v81);

      v82 = 0;
      v83 = v87;
    }

    else
    {
      v83 = APLogForCategory();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264E42000, v83, OS_LOG_TYPE_DEFAULT, "All ads were filtered away for Age Restrictions.", buf, 2u);
      }

      v82 = 1;
    }
  }

  else
  {
    v39 = APLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264E42000, v39, OS_LOG_TYPE_DEFAULT, "All ads were filtered away for DMA.", buf, 2u);
    }

    v82 = 3;
  }

  v84 = *MEMORY[0x277D85DE8];
  return v82;
}

- (void)setOrganics:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ADSearchObject setOrganics:]";
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", &v8, 0xCu);
  }

  organics = self->_organics;
  self->_organics = v4;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)orderedAds:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[ADSearchObject orderedAds:]";
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", buf, 0xCu);
  }

  v10 = objc_msgSend_advertisements(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = objc_msgSend_reranker(self, v16, v17, v18, v19);
    objc_msgSend_SLA(self, v21, v22, v23, v24);
    v26 = v25;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_264E4A4D0;
    v32[3] = &unk_279B88A08;
    v32[4] = self;
    v33 = v4;
    objc_msgSend_getRerankedAdsWithTimeLimit_completion_(v20, v27, v32, v28, v29, v26);
  }

  else
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEA60]);
    if (v4)
    {
      (*(v4 + 2))(v4, v30, 0);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)orderedAdsWithODMLSuccess:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[ADSearchObject orderedAdsWithODMLSuccess:]";
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", buf, 0xCu);
  }

  v10 = objc_msgSend_advertisements(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = objc_msgSend_reranker(self, v16, v17, v18, v19);
    objc_msgSend_SLA(self, v21, v22, v23, v24);
    v26 = v25;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_264E4A848;
    v32[3] = &unk_279B88A08;
    v32[4] = self;
    v33 = v4;
    objc_msgSend_getRerankedAdsWithTimeLimit_completion_(v20, v27, v32, v28, v29, v26);
  }

  else
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEA60]);
    if (v4)
    {
      (*(v4 + 2))(v4, v30, 1);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)addFeaturesToAdvertisements
{
  v130 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_organics(self, a2, v2, v3, v4);
  v11 = objc_msgSend_firstObject(v6, v7, v8, v9, v10);
  v116 = objc_msgSend_adamID(v11, v12, v13, v14, v15);

  v120 = self;
  v20 = objc_msgSend_organics(self, v16, v17, v18, v19);
  v119 = objc_msgSend_count(v20, v21, v22, v23, v24);

  v25 = APLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_msgSend_organics(self, v26, v27, v28, v29);
    *buf = 134217984;
    v126 = objc_msgSend_count(v30, v31, v32, v33, v34);
    _os_log_impl(&dword_264E42000, v25, OS_LOG_TYPE_DEFAULT, "Organics count: %ld", buf, 0xCu);
  }

  v35 = APLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v40 = objc_msgSend_advertisements(self, v36, v37, v38, v39);
    v45 = objc_msgSend_count(v40, v41, v42, v43, v44);
    *buf = 134217984;
    v126 = v45;
    _os_log_impl(&dword_264E42000, v35, OS_LOG_TYPE_DEFAULT, "Advertisements count: %ld", buf, 0xCu);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = objc_msgSend_advertisements(self, v46, v47, v48, v49);
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v121, v129, 16);
  if (v51)
  {
    v57 = v51;
    v118 = *v122;
    v117 = *MEMORY[0x277D42CF0];
    v58 = *MEMORY[0x277D42CF8];
    *&v56 = 134218242;
    v114 = v56;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v122 != v118)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v121 + 1) + 8 * i);
        v61 = objc_msgSend_adamID(v60, v52, v53, v54, v55, v114);
        v66 = objc_msgSend_longLongValue(v61, v62, v63, v64, v65);
        isAppInstalled = objc_msgSend_isAppInstalled_(v120, v67, v66, v68, v69);

        if (v119)
        {
          v75 = objc_msgSend_adamID(v60, v71, v72, v73, v74);
          isEqualToString = objc_msgSend_isEqualToString_(v75, v76, v116, v77, v78);

          if ((isEqualToString & (isAppInstalled ^ 1)) != 0)
          {
            v80 = 0;
          }

          else
          {
            v80 = 2;
          }
        }

        else
        {
          isEqualToString = 0;
          v80 = 1;
        }

        v81 = APLogForCategory();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v86 = objc_msgSend_adamID(v60, v82, v83, v84, v85);
          *buf = v114;
          v126 = v80;
          v127 = 2114;
          v128 = v86;
          _os_log_impl(&dword_264E42000, v81, OS_LOG_TYPE_DEFAULT, "Selecting ad type: %ld for: %{public}@", buf, 0x16u);
        }

        v91 = objc_msgSend_adData(v60, v87, v88, v89, v90);
        objc_msgSend_setAdResponseInUseType_(v91, v92, v80, v93, v94);

        v99 = objc_msgSend_UTF8String(v117, v95, v96, v97, v98);
        v103 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v100, isEqualToString, v101, v102);
        objc_setAssociatedObject(v60, v99, v103, 0x301);

        v108 = objc_msgSend_UTF8String(v58, v104, v105, v106, v107);
        v112 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v109, isAppInstalled, v110, v111);
        objc_setAssociatedObject(v60, v108, v112, 0x301);
      }

      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v121, v129, 16);
    }

    while (v57);
  }

  v113 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAppInstalled:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CC1E70]);
  v7 = objc_msgSend_initWithStoreItemIdentifier_error_(v4, v5, a3, 0, v6);
  LOBYTE(a3) = v7 != 0;

  return a3;
}

- (id)updatedWithTransparencyRenderingData:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = objc_msgSend_sharedInstance(MEMORY[0x277CE4AB8], v4, v5, v6, v7);
  v13 = objc_msgSend_locationEnabled(v8, v9, v10, v11, v12);

  v14 = objc_alloc_init(MEMORY[0x277D23658]);
  v19 = objc_msgSend_personalizedAds(v14, v15, v16, v17, v18);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v3;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v35, v39, 16);
  if (v22)
  {
    v27 = v22;
    v28 = *v36;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v20);
        }

        v30 = objc_msgSend_adData(*(*(&v35 + 1) + 8 * i), v23, v24, v25, v26, v35);
        objc_msgSend_updateAdDataWithLocationState_personalizedAdsState_(v30, v31, v13, v19, v32);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v35, v39, 16);
    }

    while (v27);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)filterAdsForNonWK:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v59 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v61, v72, 16);
  if (v9)
  {
    v15 = v9;
    isCapableOfAction_capabilities = 0;
    v17 = *v62;
    *&v14 = 138412802;
    v57 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v61 + 1) + 8 * i);
        v20 = objc_msgSend_appBinaryTraits(v19, v10, v11, v12, v13, v57);
        v21 = APLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v66 = v20;
          _os_log_impl(&dword_264E42000, v21, OS_LOG_TYPE_DEFAULT, "App Binary Traits: %@", buf, 0xCu);
        }

        if (!v20)
        {
          v34 = 0;
          goto LABEL_14;
        }

        v26 = objc_msgSend_appBinaryTraits(v19, v22, v23, v24, v25);
        if (objc_msgSend_containsObject_(v26, v27, @"uses-non-webkit-browser-engine", v28, v29))
        {
        }

        else
        {
          v35 = objc_msgSend_appBinaryTraits(v19, v30, v31, v32, v33);
          v34 = objc_msgSend_containsObject_(v35, v36, @"is-custom-browser-engine-app", v37, v38);

          if (!v34)
          {
            goto LABEL_14;
          }
        }

        v71[0] = @"uses-non-webkit-browser-engine";
        v71[1] = @"is-custom-browser-engine-app";
        v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v71, 2, v25);
        isCapableOfAction_capabilities = objc_msgSend_isCapableOfAction_capabilities_(MEMORY[0x277CEC330], v40, 4, v39, v41);

        v34 = 1;
LABEL_14:
        v42 = objc_msgSend_adamID(v19, v22, v23, v24, v25);
        v43 = APLogForCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v57;
          v66 = v42;
          v67 = 1024;
          v68 = v34;
          v69 = 1024;
          v70 = isCapableOfAction_capabilities & 1;
          _os_log_impl(&dword_264E42000, v43, OS_LOG_TYPE_DEFAULT, "App discard state for %@: isEntitledApp: %d isDMAEligible: %d", buf, 0x18u);
        }

        v44 = v34 & (isCapableOfAction_capabilities ^ 1u);
        if (MGGetBoolAnswer())
        {
          if ((objc_msgSend_checkForNonWKDiscardOverrides_forAdamID_(self, v45, v44, v42, v48) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else if (!v44)
        {
LABEL_18:
          objc_msgSend_addObject_(v59, v45, v19, v47, v48);
          goto LABEL_23;
        }

        v49 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v45, v46, v47, v48);
        objc_msgSend_setValue_forKey_(v49, v50, MEMORY[0x277CBEC28], @"wasServed", v51);
        objc_msgSend_setValue_forKey_(v49, v52, &unk_2876A9CF8, @"placement", v53);
        AnalyticsSendEvent();
        v54 = APLogForCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v66 = v42;
          _os_log_impl(&dword_264E42000, v54, OS_LOG_TYPE_DEFAULT, "Discarding ad with adamID: %@ ", buf, 0xCu);
        }

LABEL_23:
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v61, v72, 16);
    }

    while (v15);
  }

  v55 = *MEMORY[0x277D85DE8];

  return v59;
}

- (BOOL)checkForNonWKDiscardOverrides:(BOOL)a3 forAdamID:(id)a4
{
  *&v37[5] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277CBEBD0]);
  v10 = objc_msgSend_initWithSuiteName_(v6, v7, *MEMORY[0x277CE95C8], v8, v9);
  if (objc_msgSend_BOOLForKey_(v10, v11, @"enableNonWKOverrides", v12, v13))
  {
    v17 = objc_msgSend_stringForKey_(v10, v14, @"nonWKAppsSearchAds", v15, v16);
    v21 = objc_msgSend_componentsSeparatedByString_(v17, v18, @",", v19, v20);
    v29 = (objc_msgSend_containsObject_(v21, v22, v5, v23, v24) & 1) != 0 || objc_msgSend_count(v21, v25, v26, v27, v28) == 0;
    v30 = objc_msgSend_BOOLForKey_(v10, v25, @"enableDMAEligible", v27, v28);
    v31 = APLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 67109376;
      v37[0] = v29;
      LOWORD(v37[1]) = 1024;
      *(&v37[1] + 2) = v30;
      _os_log_impl(&dword_264E42000, v31, OS_LOG_TYPE_DEFAULT, "App discard state after overrides check: isEntitledApp: %d isDMAEligible: %d", &v36, 0xEu);
    }

    v32 = !v29 | v30;
    if ((v32 & 1) == 0)
    {
      v33 = APLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138412290;
        *v37 = v5;
        _os_log_impl(&dword_264E42000, v33, OS_LOG_TYPE_DEFAULT, "Discarding ad with adamid: %@ based off overrides.", &v36, 0xCu);
      }
    }

    a3 = v32 ^ 1;
  }

  v34 = *MEMORY[0x277D85DE8];
  return a3;
}

@end