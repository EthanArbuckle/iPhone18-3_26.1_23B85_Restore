@interface PCSupportRequester
- (PCSupportRequester)init;
- (id)fetchGenderAndAgeGroupData;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)fetchConfigurationForClass:(id)a3 completion:(id)a4;
- (void)fetchGenderAndAgeGroupData:(id)a3;
- (void)invokeTestingRigHandlerForMessage:(id)a3 payload:(id)a4 completionHandler:(id)a5;
- (void)policiesForContainerType:(id)a3 adType:(id)a4 adFormatType:(id)a5 completion:(id)a6;
- (void)policiesToEnforce:(id)a3;
@end

@implementation PCSupportRequester

- (PCSupportRequester)init
{
  v3.receiver = self;
  v3.super_class = PCSupportRequester;
  return [(APXPCActionRequester *)&v3 init];
}

- (id)fetchGenderAndAgeGroupData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_260F1E1E0;
  v11 = sub_260F1E35C;
  v12 = 0;
  v3 = [(APXPCActionRequester *)self synchronousRemoteObjectProxyWithErrorHandler:&unk_287370D68];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_260F1E240;
  v6[3] = &unk_279AC9790;
  v6[4] = &v7;
  [v3 fetchGenderAndAgeGroupData:v6];
  [(APXPCActionRequester *)self finished];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)connectionInvalidated
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_260F1D000, v2, OS_LOG_TYPE_INFO, "Connection to PCSupport in Daemon was invalidated.", v3, 2u);
  }
}

- (void)fetchGenderAndAgeGroupData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(APXPCActionRequester *)self remoteObjectProxy];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_260F1EFC8;
    v6[3] = &unk_279AC97B8;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [v5 fetchGenderAndAgeGroupData:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)policiesForContainerType:(id)a3 adType:(id)a4 adFormatType:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [(APXPCActionRequester *)self remoteObjectProxy];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_260F1F21C;
    v15[3] = &unk_279AC97E0;
    objc_copyWeak(&v17, &location);
    v16 = v13;
    [v14 policiesForContainerType:v10 adType:v11 adFormatType:v12 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)policiesToEnforce:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(APXPCActionRequester *)self remoteObjectProxy];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_260F1F42C;
    v6[3] = &unk_279AC97E0;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [v5 policiesToEnforce:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)fetchConfigurationForClass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APXPCActionRequester *)self remoteObjectProxy];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_260F1F66C;
  v11[3] = &unk_279AC9808;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 fetchConfigurationForClass:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)invokeTestingRigHandlerForMessage:(id)a3 payload:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277CE4AD0] isAppleInternalInstall])
  {
    v11 = [(APXPCActionRequester *)self remoteObjectProxy];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_260F1F8D4;
    v12[3] = &unk_279AC9830;
    v13 = v10;
    objc_copyWeak(&v14, &location);
    [v11 invokeTestingRigHandlerForMessage:v8 payload:v9 completionHandler:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)connectionInterrupted
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_260F1D000, v2, OS_LOG_TYPE_ERROR, "Connection to PCSupport in Daemon was interrupted.", v3, 2u);
  }
}

@end