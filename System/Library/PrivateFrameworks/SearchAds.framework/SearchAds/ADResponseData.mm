@interface ADResponseData
- (ADResponseData)initWithDict:(id)a3;
@end

@implementation ADResponseData

- (ADResponseData)initWithDict:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v69.receiver = self;
  v69.super_class = ADResponseData;
  v5 = [(ADResponseData *)&v69 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v7, @"impressionId", v6, v8);
    impressionID = v5->_impressionID;
    v5->_impressionID = v9;

    v11 = objc_opt_class();
    v14 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v12, @"metadata", v11, v13);
    metadata = v5->_metadata;
    v5->_metadata = v14;

    v16 = objc_opt_class();
    v19 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v17, @"lineItem", v16, v18);
    lineItem = v5->_lineItem;
    v5->_lineItem = v19;

    v21 = objc_opt_class();
    v24 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v22, @"algoId", v21, v23);
    algoID = v5->_algoID;
    v5->_algoID = v24;

    v26 = objc_opt_class();
    v29 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v27, @"privacy", v26, v28);
    privacy = v5->_privacy;
    v5->_privacy = v29;

    v31 = objc_opt_class();
    v34 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v32, @"templateType", v31, v33);
    templateType = v5->_templateType;
    v5->_templateType = v34;

    v36 = objc_opt_class();
    v39 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v37, @"clientRequestId", v36, v38);
    clientRequestID = v5->_clientRequestID;
    v5->_clientRequestID = v39;

    v41 = objc_opt_class();
    v44 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v42, @"triggers", v41, v43);
    triggers = v5->_triggers;
    v5->_triggers = v44;

    v46 = objc_opt_class();
    v49 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v47, @"format", v46, v48);
    format = v5->_format;
    v5->_format = v49;

    v51 = objc_opt_class();
    v54 = objc_msgSend_AD_objectForKey_ofKindOfClass_(v4, v52, @"installAttribution", v51, v53);
    if (v54)
    {
      v55 = [ADInstallAttributionData alloc];
      v59 = objc_msgSend_initWithDict_(v55, v56, v54, v57, v58);
      p_super = &v5->_installAttribution->super;
      v5->_installAttribution = v59;
    }

    else
    {
      p_super = APLogForCategory();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v66 = objc_msgSend_AD_jsonString(v4, v62, v63, v64, v65);
        *buf = 138412546;
        v71 = v61;
        v72 = 2112;
        v73 = v66;
        _os_log_impl(&dword_264E42000, p_super, OS_LOG_TYPE_ERROR, "[%@] ERROR: No Install Attribution dictionary was provided: %@", buf, 0x16u);
      }
    }
  }

  v67 = *MEMORY[0x277D85DE8];
  return v5;
}

@end