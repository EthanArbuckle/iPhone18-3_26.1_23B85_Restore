@interface APProxySessionConfigurationProvider
- (APProxySessionConfigurationProvider)initWithDefaultProxyURL:(id)l;
- (id)_createConnectProxyConfig;
- (id)connectProxyConfig;
- (void)addProtocolClasses:(id)classes;
- (void)setProxyURL:(id)l;
@end

@implementation APProxySessionConfigurationProvider

- (APProxySessionConfigurationProvider)initWithDefaultProxyURL:(id)l
{
  lCopy = l;
  v10 = objc_msgSend_init(self, v6, v7, v8, v9);
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CE4AD8]);
    v15 = objc_msgSend_initWithOptions_(v11, v12, 1, v13, v14);
    lock = v10->_lock;
    v10->_lock = v15;

    objc_storeStrong(&v10->_defaultProxyURL, l);
    protocolClasses = v10->_protocolClasses;
    v10->_protocolClasses = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (void)addProtocolClasses:(id)classes
{
  classesCopy = classes;
  v30 = objc_msgSend_lock(self, v5, v6, v7, v8);
  objc_msgSend_lock(v30, v9, v10, v11, v12);
  v17 = objc_msgSend_protocolClasses(self, v13, v14, v15, v16);
  v21 = objc_msgSend_arrayByAddingObjectsFromArray_(v17, v18, classesCopy, v19, v20);

  objc_msgSend_setProtocolClasses_(self, v22, v21, v23, v24);
  connectProxyConfig = self->_connectProxyConfig;
  self->_connectProxyConfig = 0;

  objc_msgSend_unlock(v30, v26, v27, v28, v29);
}

- (void)setProxyURL:(id)l
{
  lCopy = l;
  v20 = objc_msgSend_lock(self, v5, v6, v7, v8);
  objc_msgSend_lock(v20, v9, v10, v11, v12);
  proxyURL = self->_proxyURL;
  self->_proxyURL = lCopy;
  v14 = lCopy;

  connectProxyConfig = self->_connectProxyConfig;
  self->_connectProxyConfig = 0;

  objc_msgSend_unlock(v20, v16, v17, v18, v19);
}

- (id)connectProxyConfig
{
  v6 = objc_msgSend_lock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);
  if (!self->_connectProxyConfig)
  {
    v15 = objc_msgSend__createConnectProxyConfig(self, v11, v12, v13, v14);
    connectProxyConfig = self->_connectProxyConfig;
    self->_connectProxyConfig = v15;
  }

  objc_msgSend_unlock(v6, v11, v12, v13, v14);
  v17 = self->_connectProxyConfig;
  v18 = v17;

  return v17;
}

- (id)_createConnectProxyConfig
{
  v78[4] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_proxyURL(self, a2, v2, v3, v4);
  v11 = objc_msgSend_host(v6, v7, v8, v9, v10);
  v20 = objc_msgSend_port(v6, v12, v13, v14, v15);
  if (!v6 || !v11)
  {
    v21 = objc_msgSend_defaultProxyURL(self, v16, v17, v18, v19);

    v26 = objc_msgSend_host(v21, v22, v23, v24, v25);

    v31 = objc_msgSend_port(v21, v27, v28, v29, v30);

    v11 = v26;
    v20 = v31;
    v6 = v21;
  }

  v32 = objc_msgSend_scheme(v6, v16, v17, v18, v19);
  isEqualToString = objc_msgSend_isEqualToString_(v32, v33, @"http", v34, v35);

  v77[0] = @"HTTPEnable";
  v77[1] = @"HTTPSEnable";
  v78[0] = &unk_287370B90;
  v78[1] = &unk_287370B90;
  v38 = &unk_287370BA8;
  v39 = *MEMORY[0x277CBAE00];
  v77[2] = *MEMORY[0x277CBADE8];
  v77[3] = v39;
  v40 = &unk_287370BC0;
  if (v20)
  {
    v38 = v20;
    v40 = v20;
  }

  v78[2] = v38;
  v78[3] = v40;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v78, v77, 4);
  v46 = v41;
  if (v11)
  {
    v47 = objc_msgSend_mutableCopy(v41, v42, v43, v44, v45);
    objc_msgSend_setObject_forKeyedSubscript_(v47, v48, v11, *MEMORY[0x277CBADE0], v49);
    objc_msgSend_setObject_forKeyedSubscript_(v47, v50, v11, *MEMORY[0x277CBADF8], v51);
    v56 = objc_msgSend_copy(v47, v52, v53, v54, v55);

    v46 = v56;
  }

  v57 = objc_msgSend_ephemeralSessionConfiguration(MEMORY[0x277CBABC8], v42, v43, v44, v45);
  objc_msgSend_setConnectionProxyDictionary_(v57, v58, v46, v59, v60);
  v65 = objc_msgSend_protocolClasses(self, v61, v62, v63, v64);
  objc_msgSend_setProtocolClasses_(v57, v66, v65, v67, v68);

  objc_msgSend_set_preventsSystemHTTPProxyAuthentication_(v57, v69, 1, v70, v71);
  objc_msgSend_set_requiresSecureHTTPSProxyConnection_(v57, v72, isEqualToString ^ 1u, v73, v74);

  v75 = *MEMORY[0x277D85DE8];

  return v57;
}

@end