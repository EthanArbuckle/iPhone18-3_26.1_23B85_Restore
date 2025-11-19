@interface ADAppAdvertisement
- (ADAppAdvertisement)initWithAdamID:(id)a3 assetInfo:(id)a4 adData:(id)a5;
- (ADAppAdvertisement)initWithAdamID:(id)a3 assetInfo:(id)a4 adData:(id)a5 instanceID:(id)a6;
- (ADAppAdvertisement)initWithAdamID:(id)a3 cppIDs:(id)a4 serverCppID:(id)a5 adData:(id)a6 instanceID:(id)a7;
- (APOdmlServerResponse)odmlResponse;
- (id)AD_jsonDictionary;
@end

@implementation ADAppAdvertisement

- (ADAppAdvertisement)initWithAdamID:(id)a3 assetInfo:(id)a4 adData:(id)a5
{
  v8 = MEMORY[0x277CCAD78];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v16 = objc_msgSend_UUID(v8, v12, v13, v14, v15);
  v21 = objc_msgSend_UUIDString(v16, v17, v18, v19, v20);
  v23 = objc_msgSend_initWithAdamID_assetInfo_adData_instanceID_(self, v22, v11, v10, v9, v21);

  return v23;
}

- (ADAppAdvertisement)initWithAdamID:(id)a3 assetInfo:(id)a4 adData:(id)a5 instanceID:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = ADAppAdvertisement;
  v13 = [(ADAppRepresentation *)&v16 initWithAdamID:a3 assetInformation:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_adData, a5);
    objc_storeStrong(&v14->_instanceID, a6);
  }

  return v14;
}

- (ADAppAdvertisement)initWithAdamID:(id)a3 cppIDs:(id)a4 serverCppID:(id)a5 adData:(id)a6 instanceID:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v19 = @"nil";
    *buf = 138412802;
    v40 = v18;
    if (v14)
    {
      v19 = v14;
    }

    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&dword_264E42000, v17, OS_LOG_TYPE_INFO, "[%@] For adamID: %@ this is the serverCppID: %@.", buf, 0x20u);
  }

  if (v13)
  {
    v37 = v12;
    v23 = v14;
    v24 = a6;
    v25 = a7;
    v26 = a5;
    v27 = v16;
    v28 = v15;
    v29 = objc_msgSend_componentsJoinedByString_(v13, v20, @" , ", v21, v22);
    v30 = APLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      *buf = 138412546;
      v40 = v31;
      v41 = 2112;
      v42 = v29;
      _os_log_impl(&dword_264E42000, v30, OS_LOG_TYPE_INFO, "[%@] cppIDs provided from the server are: %@", buf, 0x16u);
    }

    v15 = v28;
    v16 = v27;
    a5 = v26;
    a7 = v25;
    a6 = v24;
    v14 = v23;
    v12 = v37;
  }

  else
  {
    v29 = APLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      *buf = 138412290;
      v40 = v32;
      _os_log_impl(&dword_264E42000, v29, OS_LOG_TYPE_INFO, "[%@] cppIDs are not provided from server", buf, 0xCu);
    }
  }

  v38.receiver = self;
  v38.super_class = ADAppAdvertisement;
  v33 = [(ADAppRepresentation *)&v38 initWithAdamID:v12];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_adData, a6);
    objc_storeStrong(&v34->_instanceID, a7);
    objc_storeStrong(&v34->_selectedCppID, a5);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (APOdmlServerResponse)odmlResponse
{
  v5 = objc_msgSend_adData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_odmlResponse(v5, v6, v7, v8, v9);

  return v10;
}

- (id)AD_jsonDictionary
{
  v5 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], a2, 5, v2, v3);
  v10 = objc_msgSend_instanceID(self, v6, v7, v8, v9);
  objc_msgSend_setValue_forKey_(v5, v11, v10, @"instanceID", v12);

  v17 = objc_msgSend_selectedCppID(self, v13, v14, v15, v16);
  objc_msgSend_setValue_forKey_(v5, v18, v17, @"selectedCppID", v19);

  v24 = objc_msgSend_adamID(self, v20, v21, v22, v23);
  objc_msgSend_setValue_forKey_(v5, v25, v24, @"adamID", v26);

  v31 = objc_msgSend_assetInformation(self, v27, v28, v29, v30);
  objc_msgSend_setValue_forKey_(v5, v32, v31, @"assetInformation", v33);

  v38 = objc_msgSend_adData(self, v34, v35, v36, v37);
  v43 = objc_msgSend_AD_jsonDictionary(v38, v39, v40, v41, v42);
  objc_msgSend_setValue_forKey_(v5, v44, v43, @"adData", v45);

  v50 = objc_msgSend_copy(v5, v46, v47, v48, v49);

  return v50;
}

@end