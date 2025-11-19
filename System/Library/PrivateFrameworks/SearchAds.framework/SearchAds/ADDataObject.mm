@interface ADDataObject
+ (id)adResponseTypeToString:(int64_t)a3;
- (ADDataObject)initWith:(id)a3;
- (NSDictionary)adResponseInUse;
- (id)AD_jsonDictionary;
- (id)_jsonToDict:(id)a3 error:(id *)a4;
- (id)addCachedFeaturesToOdmlResponse:(id)a3;
- (id)parseDataForAdResponse:(id)a3;
- (id)parseDataForODMLResponse:(id)a3;
- (id)parseOdmlResponseFromString:(id)a3;
- (id)parseOdmlStringFromResponseData:(id)a3;
- (id)parseResponseForAdditionalFeatures:(id)a3 odmlResponse:(id)a4;
- (void)parseResponseData;
- (void)setAdResponseInUseType:(int64_t)a3;
@end

@implementation ADDataObject

- (id)AD_jsonDictionary
{
  v5 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], a2, 1, v2, v3);
  v10 = objc_msgSend_adData(self, v6, v7, v8, v9);
  objc_msgSend_setValue_forKey_(v5, v11, v10, @"adData", v12);

  v17 = objc_msgSend_copy(v5, v13, v14, v15, v16);

  return v17;
}

- (ADDataObject)initWith:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ADDataObject;
  v6 = [(ADDataObject *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adData, a3);
    v7->_adResponseInUseType_Int = 2;
    objc_msgSend_parseResponseData(v7, v8, v9, v10, v11);
  }

  return v7;
}

- (void)setAdResponseInUseType:(int64_t)a3
{
  objc_msgSend_setAdResponseInUseType_Int_(self, a2, a3, v3, v4);
  v15 = objc_msgSend_adResponseInUse(self, v6, v7, v8, v9);
  v13 = objc_msgSend_parseDataForODMLResponse_(self, v10, v15, v11, v12);
  odmlResponse = self->_odmlResponse;
  self->_odmlResponse = v13;
}

- (NSDictionary)adResponseInUse
{
  v6 = objc_msgSend_adResponseInUseType_Int(self, a2, v2, v3, v4);
  if (v6 == 1)
  {
    v11 = objc_msgSend_noOrganicAdResponse(self, v7, v8, v9, v10);
  }

  else
  {
    if (v6)
    {
      objc_msgSend_normalAdResponse(self, v7, v8, v9, v10);
    }

    else
    {
      objc_msgSend_dupAdResponse(self, v7, v8, v9, v10);
    }
    v11 = ;
  }

  return v11;
}

+ (id)adResponseTypeToString:(int64_t)a3
{
  v3 = @"NORMAL";
  if (a3 == 1)
  {
    v3 = @"NOORGANIC";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"DUP";
  }
}

- (void)parseResponseData
{
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_adData, a2, @"DUP", v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_parseDataForAdResponse_(self, v5, v8, v6, v7);
    dupAdResponse = self->_dupAdResponse;
    self->_dupAdResponse = v9;
  }

  else
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264E42000, v14, OS_LOG_TYPE_DEFAULT, "Detected single ad representation. Using it for dup", buf, 2u);
    }

    self->_usesSingleRepresentation = 1;
    objc_storeStrong(&self->_dupAdResponse, self->_adData);
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(self->_adData, v11, @"NOORGANIC", v12, v13);
  if (v18)
  {
    v19 = objc_msgSend_parseDataForAdResponse_(self, v15, v18, v16, v17);
  }

  else
  {
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 0;
      _os_log_impl(&dword_264E42000, v20, OS_LOG_TYPE_DEFAULT, "Detected single ad representation. Using it for noorganic", v43, 2u);
    }

    v19 = self->_adData;
  }

  noOrganicAdResponse = self->_noOrganicAdResponse;
  self->_noOrganicAdResponse = v19;

  v28 = objc_msgSend_objectForKeyedSubscript_(self->_adData, v22, @"NORMAL", v23, v24);
  if (v28)
  {
    v29 = objc_msgSend_parseDataForAdResponse_(self, v25, v28, v26, v27);
  }

  else
  {
    v30 = APLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&dword_264E42000, v30, OS_LOG_TYPE_DEFAULT, "Detected single ad representation. Using it for normal", v42, 2u);
    }

    v29 = self->_adData;
  }

  normalAdResponse = self->_normalAdResponse;
  self->_normalAdResponse = v29;

  v36 = objc_msgSend_adResponseInUse(self, v32, v33, v34, v35);
  v40 = objc_msgSend_parseDataForODMLResponse_(self, v37, v36, v38, v39);
  odmlResponse = self->_odmlResponse;
  self->_odmlResponse = v40;
}

- (id)parseDataForAdResponse:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
      v7 = objc_msgSend__jsonToDict_error_(self, v5, v4, &v13, v6);
      v8 = v13;
      if (v8)
      {
        v9 = APLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          *buf = 138412802;
          v15 = v10;
          v16 = 2112;
          v17 = v4;
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&dword_264E42000, v9, OS_LOG_TYPE_ERROR, "[%@] Error deserializing ad data response %@: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v8 = APLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = objc_opt_class();
        _os_log_impl(&dword_264E42000, v8, OS_LOG_TYPE_ERROR, "[%@] Data is not a string", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_jsonToDict:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_dataUsingEncoding_(a3, a2, 4, a4, v4);
  v8 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v7, v6, 0, a4);

  return v8;
}

- (id)parseDataForODMLResponse:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = objc_msgSend_parseOdmlStringFromResponseData_(self, v5, v4, v6, v7);
  if (v11)
  {
    v14 = objc_msgSend_parseOdmlResponseFromString_(self, v8, v11, v9, v10);
    if (v14)
    {
      v15 = objc_msgSend_parseResponseForAdditionalFeatures_odmlResponse_(self, v12, v4, v14, v13);
      goto LABEL_11;
    }

    v21 = APLogForCategory();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v27 = 138412290;
    v28 = objc_opt_class();
    v22 = "[%@] ERROR: Failed to parse ODML response from string.";
    v23 = v21;
    v24 = 12;
LABEL_8:
    _os_log_impl(&dword_264E42000, v23, OS_LOG_TYPE_ERROR, v22, &v27, v24);
LABEL_9:

    goto LABEL_10;
  }

  v14 = APLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v21 = objc_msgSend_AD_jsonString(v4, v17, v18, v19, v20);
    v27 = 138412546;
    v28 = v16;
    v29 = 2112;
    v30 = v21;
    v22 = "[%@] ERROR: No ODML data was returned with the Ad Response: %@";
    v23 = v14;
    v24 = 22;
    goto LABEL_8;
  }

LABEL_10:
  v15 = 0;
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)parseOdmlStringFromResponseData:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_class();
    v7 = objc_msgSend_objectForKey_ofKindOfClass_(v3, v5, @"ODMLDataV2", v4, v6);
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = objc_opt_class();
      _os_log_impl(&dword_264E42000, v8, OS_LOG_TYPE_ERROR, "[%@] Cannot find response dictionary in the ad response.", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)parseOdmlResponseFromString:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [v3 alloc];
  v8 = objc_msgSend_initWithBase64EncodedString_options_(v5, v6, v4, 0, v7);

  v13 = objc_msgSend_sharedInstance(MEMORY[0x277CE96B8], v9, v10, v11, v12);
  v31 = 0;
  v16 = objc_msgSend_deserializeMessage_error_(v13, v14, v8, &v31, v15);
  v17 = v31;

  if (v17)
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138412802;
      v33 = v19;
      v34 = 2112;
      v35 = v8;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_264E42000, v18, OS_LOG_TYPE_ERROR, "[%@] Error deserializing protobuf %@: %@", buf, 0x20u);
    }

    v20 = 0;
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277D42CA8]);
    v18 = objc_msgSend_initWithData_(v21, v22, v16, v23, v24);
    v25 = objc_alloc(MEMORY[0x277D42CC8]);
    v20 = objc_msgSend_initWithSRPResponse_(v25, v26, v18, v27, v28);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)parseResponseForAdditionalFeatures:(id)a3 odmlResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v11 = objc_msgSend_objectForKey_ofKindOfClass_(v7, v9, @"format", v8, v10);

  v15 = objc_msgSend_objectForKey_(v11, v12, @"userRating", v13, v14);
  objc_msgSend_addUserRating_(v6, v16, v15, v17, v18);
  v22 = objc_msgSend_addCachedFeaturesToOdmlResponse_(self, v19, v6, v20, v21);

  return v22;
}

- (id)addCachedFeaturesToOdmlResponse:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277CE9638], v5, v6, v7, v8);
  v14 = objc_msgSend_shortModelType(v9, v10, v11, v12, v13);

  v19 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], v15, v16, v17, v18);
  v24 = objc_msgSend_activeDSIDRecord(v19, v20, v21, v22, v23);
  v29 = objc_msgSend_segmentData(v24, v25, v26, v27, v28);

  if (v29)
  {
    v37 = 0;
    v34 = objc_msgSend__jsonToDict_error_(self, v30, v29, &v37, v31);
    if (v34)
    {
      v35 = v37 == 0;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      objc_msgSend_addCachedFeatures_deviceModel_(v4, v32, v34, v14, v33);
    }

    else
    {
      objc_msgSend_addCachedFeatures_deviceModel_(v4, v32, 0, v14, v33);
    }
  }

  else
  {
    objc_msgSend_addCachedFeatures_deviceModel_(v4, v30, 0, v14, v31);
  }

  return v4;
}

@end