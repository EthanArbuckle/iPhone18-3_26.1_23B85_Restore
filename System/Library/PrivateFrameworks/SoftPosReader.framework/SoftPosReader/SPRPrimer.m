@interface SPRPrimer
+ (SPRPrimer)primerWithConfiguration:(id)a3 error:(id *)a4;
+ (SPRPrimer)shared;
- (NSDictionary)configuration;
- (NSURL)attestationBackendURL;
- (NSURL)backendURL;
- (NSURL)configuratorBackendURL;
- (NSURL)monitoringBackendURL;
- (NSURL)storageURL;
- (SPRPrimer)initWithConfiguration:(id)a3 error:(id *)a4;
- (SPRProvider)getProvider;
- (id)attestationManagerAndReturnError:(id *)a3;
- (id)monitorManagerAndReturnError:(id *)a3;
- (id)persistenceFactoryAndReturnError:(id *)a3;
- (id)secureChannelAndReturnError:(id *)a3;
@end

@implementation SPRPrimer

+ (SPRPrimer)shared
{
  v5 = objc_msgSend_shared(SPRServiceClient, a2, v2, v3, v4);
  v10 = objc_msgSend_sharedPrimer(v5, v6, v7, v8, v9);

  return v10;
}

- (NSDictionary)configuration
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_26A947300;
  v16 = sub_26A947310;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26A947318;
  v11[3] = &unk_279CA5478;
  v11[4] = self;
  v4 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v11, v2, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26A947384;
  v10[3] = &unk_279CA5AA8;
  v10[4] = &v12;
  objc_msgSend_copyConfigurationWithReply_(v4, v5, v10, v6, v7);

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (SPRProvider)getProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26A947438;
  block[3] = &unk_279CA5B20;
  block[4] = self;
  if (self->_providerPredicate != -1)
  {
    dispatch_once(&self->_providerPredicate, block);
  }

  return self->_provider;
}

- (NSURL)attestationBackendURL
{
  v5 = objc_msgSend_configuration(self, a2, v2, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Server.MPOC.Monitoring.Url", v7, v8);

  return v9;
}

- (NSURL)configuratorBackendURL
{
  v5 = objc_msgSend_configuration(self, a2, v2, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Server.Configurator.Url", v7, v8);

  return v9;
}

- (NSURL)monitoringBackendURL
{
  v5 = objc_msgSend_configuration(self, a2, v2, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Server.MPOC.Monitoring.Url", v7, v8);

  return v9;
}

- (NSURL)backendURL
{
  v6 = objc_msgSend_configuration(self, a2, v2, v3, v4);
  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"Server.Url", v8, v9);

  v15 = objc_msgSend_configuration(self, v11, v12, v13, v14);
  v19 = v15;
  if (v10)
  {
    objc_msgSend_objectForKeyedSubscript_(v15, v16, @"Server.Url", v17, v18);
  }

  else
  {
    v20 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"Server.Configurator.Url", v17, v18);

    v19 = objc_msgSend_configuration(self, v21, v22, v23, v24);
    if (v20)
    {
      objc_msgSend_objectForKeyedSubscript_(v19, v25, @"Server.Configurator.Url", v26, v27);
    }

    else
    {
      objc_msgSend_objectForKeyedSubscript_(v19, v25, @"Server.MPOC.Monitoring.Url", v26, v27);
    }
  }
  v28 = ;

  return v28;
}

- (NSURL)storageURL
{
  v5 = objc_msgSend_configuration(self, a2, v2, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Storage.Location.Path", v7, v8);

  return v9;
}

- (SPRPrimer)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_26A947300;
  v21[4] = sub_26A947310;
  v22 = objc_msgSend_mutableCopy(v6, v7, v8, v9, v10);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26A947A28;
  v20[3] = &unk_279CA5B70;
  v20[4] = v21;
  v14 = objc_msgSend_initWithConnector_(self, v11, v20, v12, v13);
  v18 = objc_msgSend_connectAndReturnError_(v14, v15, a4, v16, v17);

  _Block_object_dispose(v21, 8);
  return v18;
}

+ (SPRPrimer)primerWithConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [SPRPrimer alloc];
  v9 = objc_msgSend_initWithConfiguration_error_(v6, v7, v5, a4, v8);

  return v9;
}

- (id)attestationManagerAndReturnError:(id *)a3
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (a3 && v6)
  {
    *a3 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)monitorManagerAndReturnError:(id *)a3
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (a3 && v6)
  {
    *a3 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)persistenceFactoryAndReturnError:(id *)a3
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (a3 && v6)
  {
    *a3 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)secureChannelAndReturnError:(id *)a3
{
  v5 = [SPRSecureChannel alloc];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A948038;
  v17[3] = &unk_279CA5BC0;
  v17[4] = self;
  v9 = objc_msgSend_initWithConnector_(v5, v6, v17, v7, v8);
  v13 = v9;
  if (a3)
  {
    v14 = objc_msgSend_connectAndReturnError_(v9, v10, a3, v11, v12);
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;

  return v15;
}

@end