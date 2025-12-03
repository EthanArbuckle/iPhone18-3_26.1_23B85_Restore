@interface ADInstallAttributionData
- (ADInstallAttributionData)initWithDict:(id)dict;
- (id)dictionaryRepresentation;
- (void)recordStoreKitAdTap:(id)tap;
@end

@implementation ADInstallAttributionData

- (ADInstallAttributionData)initWithDict:(id)dict
{
  v91 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v86.receiver = self;
  v86.super_class = ADInstallAttributionData;
  v5 = [(ADInstallAttributionData *)&v86 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = objc_opt_class();
  v9 = objc_msgSend_AD_objectForKey_ofKindOfClass_(dictCopy, v7, @"version", v6, v8);
  version = v5->_version;
  v5->_version = v9;

  if (!v5->_version)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      *buf = 138412290;
      v88 = v12;
      _os_log_impl(&dword_264E42000, v11, OS_LOG_TYPE_INFO, "[%@] No version information, assuming SKIV V1", buf, 0xCu);
    }
  }

  v13 = objc_opt_class();
  v16 = objc_msgSend_AD_objectForKey_ofKindOfClass_(dictCopy, v14, @"sourceAppAdamID", v13, v15);
  sourceAppAdamID = v5->_sourceAppAdamID;
  v5->_sourceAppAdamID = v16;

  if (!v5->_sourceAppAdamID)
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      *buf = 138412290;
      v88 = v19;
      _os_log_impl(&dword_264E42000, v18, OS_LOG_TYPE_INFO, "[%@] No Source App AdamID, assuming SKIV V1, or default is acceptable", buf, 0xCu);
    }
  }

  v20 = objc_opt_class();
  v23 = objc_msgSend_AD_objectForKey_ofKindOfClass_(dictCopy, v21, @"adNetworkId", v20, v22);
  adNetworkID = v5->_adNetworkID;
  v5->_adNetworkID = v23;

  if (!v5->_adNetworkID)
  {
    v51 = APLogForCategory();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v52 = objc_opt_class();
    v57 = objc_msgSend_AD_jsonString(dictCopy, v53, v54, v55, v56);
    *buf = 138412546;
    v88 = v52;
    v89 = 2112;
    v90 = v57;
    v58 = "[%@] ERROR: No Ad Network ID was provided: %@";
LABEL_29:
    _os_log_impl(&dword_264E42000, v51, OS_LOG_TYPE_ERROR, v58, buf, 0x16u);

    goto LABEL_30;
  }

  v25 = objc_opt_class();
  v28 = objc_msgSend_AD_objectForKey_ofKindOfClass_(dictCopy, v26, @"campaignId", v25, v27);
  campaignID = v5->_campaignID;
  v5->_campaignID = v28;

  if (!v5->_campaignID)
  {
    v51 = APLogForCategory();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v59 = objc_opt_class();
    v57 = objc_msgSend_AD_jsonString(dictCopy, v60, v61, v62, v63);
    *buf = 138412546;
    v88 = v59;
    v89 = 2112;
    v90 = v57;
    v58 = "[%@] ERROR: No Campaign ID was provided: %@";
    goto LABEL_29;
  }

  v30 = objc_opt_class();
  v33 = objc_msgSend_AD_objectForKey_ofKindOfClass_(dictCopy, v31, @"uuid", v30, v32);
  uuid = v5->_uuid;
  v5->_uuid = v33;

  if (!v5->_uuid)
  {
    v51 = APLogForCategory();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v64 = objc_opt_class();
    v57 = objc_msgSend_AD_jsonString(dictCopy, v65, v66, v67, v68);
    *buf = 138412546;
    v88 = v64;
    v89 = 2112;
    v90 = v57;
    v58 = "[%@] ERROR: No UUID was provided: %@";
    goto LABEL_29;
  }

  v35 = objc_opt_class();
  v38 = objc_msgSend_AD_objectForKey_ofKindOfClass_(dictCopy, v36, @"adamId", v35, v37);
  adamID = v5->_adamID;
  v5->_adamID = v38;

  if (!v5->_adamID)
  {
    v51 = APLogForCategory();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v69 = objc_opt_class();
    v57 = objc_msgSend_AD_jsonString(dictCopy, v70, v71, v72, v73);
    *buf = 138412546;
    v88 = v69;
    v89 = 2112;
    v90 = v57;
    v58 = "[%@] ERROR: No Adam ID was provided: %@";
    goto LABEL_29;
  }

  v40 = objc_opt_class();
  v43 = objc_msgSend_AD_objectForKey_ofKindOfClass_(dictCopy, v41, @"timestamp", v40, v42);
  timestamp = v5->_timestamp;
  v5->_timestamp = v43;

  if (!v5->_timestamp)
  {
    v51 = APLogForCategory();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v74 = objc_opt_class();
    v57 = objc_msgSend_AD_jsonString(dictCopy, v75, v76, v77, v78);
    *buf = 138412546;
    v88 = v74;
    v89 = 2112;
    v90 = v57;
    v58 = "[%@] ERROR: No Timestamp was provided: %@";
    goto LABEL_29;
  }

  v45 = objc_opt_class();
  v48 = objc_msgSend_AD_objectForKey_ofKindOfClass_(dictCopy, v46, @"signature", v45, v47);
  signature = v5->_signature;
  v5->_signature = v48;

  if (!v5->_signature)
  {
    v51 = APLogForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v79 = objc_opt_class();
      v57 = objc_msgSend_AD_jsonString(dictCopy, v80, v81, v82, v83);
      *buf = 138412546;
      v88 = v79;
      v89 = 2112;
      v90 = v57;
      v58 = "[%@] ERROR: No Signature was provided: %@";
      goto LABEL_29;
    }

LABEL_30:

    v50 = 0;
    goto LABEL_31;
  }

LABEL_16:
  v50 = v5;
LABEL_31:

  v84 = *MEMORY[0x277D85DE8];
  return v50;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v10 = v6;
  version = self->_version;
  if (version)
  {
    objc_msgSend_setObject_forKey_(v6, v7, version, @"version", v9);
  }

  adNetworkID = self->_adNetworkID;
  if (adNetworkID)
  {
    objc_msgSend_setObject_forKey_(v10, v7, adNetworkID, @"adNetworkId", v9);
  }

  campaignID = self->_campaignID;
  if (campaignID)
  {
    objc_msgSend_setObject_forKey_(v10, v7, campaignID, @"campaignId", v9);
  }

  uuid = self->_uuid;
  if (uuid)
  {
    objc_msgSend_setObject_forKey_(v10, v7, uuid, @"uuid", v9);
  }

  adamID = self->_adamID;
  if (adamID)
  {
    objc_msgSend_setObject_forKey_(v10, v7, adamID, @"adamId", v9);
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    objc_msgSend_setObject_forKey_(v10, v7, timestamp, @"timestamp", v9);
  }

  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setObject_forKey_(v10, v7, signature, @"signature", v9);
  }

  sourceAppAdamID = self->_sourceAppAdamID;
  if (sourceAppAdamID)
  {
    objc_msgSend_setObject_forKey_(v10, v7, sourceAppAdamID, @"sourceAppAdamID", v9);
  }

  v19 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v7, v10, v8, v9);

  return v19;
}

- (void)recordStoreKitAdTap:(id)tap
{
  v123 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v12 = objc_msgSend_dictionaryRepresentation(self, v8, v9, v10, v11);
    v17 = objc_msgSend_AD_jsonString(v12, v13, v14, v15, v16);
    *buf = 138412546;
    v120 = v6;
    v121 = 2112;
    v122 = v17;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to update StoreKit Install Attribution with data: %@", buf, 0x16u);
  }

  v18 = objc_alloc_init(MEMORY[0x277CEC3D0]);
  v23 = objc_msgSend_adamID(self, v19, v20, v21, v22);
  objc_msgSend_setAppAdamId_(v18, v24, v23, v25, v26);

  v31 = objc_msgSend_adNetworkID(self, v27, v28, v29, v30);
  objc_msgSend_setAdNetworkId_(v18, v32, v31, v33, v34);

  v39 = objc_msgSend_campaignID(self, v35, v36, v37, v38);
  objc_msgSend_setCampaignId_(v18, v40, v39, v41, v42);

  v47 = objc_msgSend_uuid(self, v43, v44, v45, v46);
  objc_msgSend_setImpressionId_(v18, v48, v47, v49, v50);

  v55 = objc_msgSend_timestamp(self, v51, v52, v53, v54);
  objc_msgSend_setTimestamp_(v18, v56, v55, v57, v58);

  v63 = objc_msgSend_signature(self, v59, v60, v61, v62);
  objc_msgSend_setAttributionSignature_(v18, v64, v63, v65, v66);

  objc_msgSend_setSourceAppBundleId_(v18, v67, 0, v68, v69);
  objc_msgSend_setOverrideCampaignLimit_(v18, v70, 1, v71, v72);
  v77 = objc_msgSend_version(self, v73, v74, v75, v76);
  if (v77)
  {
    v82 = v77;
    v83 = objc_msgSend_version(self, v78, v79, v80, v81);
    v88 = objc_msgSend_length(v83, v84, v85, v86, v87);

    if (v88)
    {
      v93 = objc_msgSend_version(self, v89, v90, v91, v92);
      objc_msgSend_setVersion_(v18, v94, v93, v95, v96);

      v101 = objc_msgSend_sourceAppAdamID(self, v97, v98, v99, v100);
      objc_msgSend_setSourceAppAdamId_(v18, v102, v101, v103, v104);
    }
  }

  v105 = APLogForCategory();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v106 = objc_opt_class();
    *buf = 138412546;
    v120 = v106;
    v121 = 2112;
    v122 = v18;
    v107 = v106;
    _os_log_impl(&dword_264E42000, v105, OS_LOG_TYPE_DEFAULT, "[%@] Making call to StoreKit Install Attribution with ASDInstallAttributionParamsConfig: %@", buf, 0x16u);
  }

  v112 = objc_msgSend_sharedInstance(MEMORY[0x277CEC3C8], v108, v109, v110, v111);
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = sub_264E50808;
  v117[3] = &unk_279B88AD0;
  v117[4] = self;
  v118 = tapCopy;
  v113 = tapCopy;
  objc_msgSend_addInstallAttributionParamsWithConfig_completionHandler_(v112, v114, v18, v117, v115);

  v116 = *MEMORY[0x277D85DE8];
}

@end