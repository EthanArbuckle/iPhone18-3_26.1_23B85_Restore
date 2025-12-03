@interface ADAppAdvertisement
- (ADAppAdvertisement)initWithAdamID:(id)d assetInfo:(id)info adData:(id)data;
- (ADAppAdvertisement)initWithAdamID:(id)d assetInfo:(id)info adData:(id)data instanceID:(id)iD;
- (ADAppAdvertisement)initWithAdamID:(id)d cppIDs:(id)ds serverCppID:(id)iD adData:(id)data instanceID:(id)instanceID;
- (APOdmlServerResponse)odmlResponse;
- (id)AD_jsonDictionary;
@end

@implementation ADAppAdvertisement

- (ADAppAdvertisement)initWithAdamID:(id)d assetInfo:(id)info adData:(id)data
{
  v8 = MEMORY[0x277CCAD78];
  dataCopy = data;
  infoCopy = info;
  dCopy = d;
  v16 = objc_msgSend_UUID(v8, v12, v13, v14, v15);
  v21 = objc_msgSend_UUIDString(v16, v17, v18, v19, v20);
  v23 = objc_msgSend_initWithAdamID_assetInfo_adData_instanceID_(self, v22, dCopy, infoCopy, dataCopy, v21);

  return v23;
}

- (ADAppAdvertisement)initWithAdamID:(id)d assetInfo:(id)info adData:(id)data instanceID:(id)iD
{
  dataCopy = data;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = ADAppAdvertisement;
  v13 = [(ADAppRepresentation *)&v16 initWithAdamID:d assetInformation:info];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_adData, data);
    objc_storeStrong(&v14->_instanceID, iD);
  }

  return v14;
}

- (ADAppAdvertisement)initWithAdamID:(id)d cppIDs:(id)ds serverCppID:(id)iD adData:(id)data instanceID:(id)instanceID
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  dataCopy = data;
  instanceIDCopy = instanceID;
  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v19 = @"nil";
    *buf = 138412802;
    v40 = v18;
    if (iDCopy)
    {
      v19 = iDCopy;
    }

    v41 = 2112;
    v42 = dCopy;
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&dword_264E42000, v17, OS_LOG_TYPE_INFO, "[%@] For adamID: %@ this is the serverCppID: %@.", buf, 0x20u);
  }

  if (dsCopy)
  {
    v37 = dCopy;
    v23 = iDCopy;
    dataCopy2 = data;
    instanceIDCopy2 = instanceID;
    iDCopy2 = iD;
    v27 = instanceIDCopy;
    v28 = dataCopy;
    v29 = objc_msgSend_componentsJoinedByString_(dsCopy, v20, @" , ", v21, v22);
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

    dataCopy = v28;
    instanceIDCopy = v27;
    iD = iDCopy2;
    instanceID = instanceIDCopy2;
    data = dataCopy2;
    iDCopy = v23;
    dCopy = v37;
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
  v33 = [(ADAppRepresentation *)&v38 initWithAdamID:dCopy];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_adData, data);
    objc_storeStrong(&v34->_instanceID, instanceID);
    objc_storeStrong(&v34->_selectedCppID, iD);
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