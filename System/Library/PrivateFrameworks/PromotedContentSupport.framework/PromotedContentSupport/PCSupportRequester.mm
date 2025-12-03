@interface PCSupportRequester
- (PCSupportRequester)init;
- (id)fetchGenderAndAgeGroupData;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)fetchConfigurationForClass:(id)class completion:(id)completion;
- (void)fetchGenderAndAgeGroupData:(id)data;
- (void)invokeTestingRigHandlerForMessage:(id)message payload:(id)payload completionHandler:(id)handler;
- (void)policiesForContainerType:(id)type adType:(id)adType adFormatType:(id)formatType completion:(id)completion;
- (void)policiesToEnforce:(id)enforce;
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

- (void)fetchGenderAndAgeGroupData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    remoteObjectProxy = [(APXPCActionRequester *)self remoteObjectProxy];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_260F1EFC8;
    v6[3] = &unk_279AC97B8;
    objc_copyWeak(&v8, &location);
    v7 = dataCopy;
    [remoteObjectProxy fetchGenderAndAgeGroupData:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)policiesForContainerType:(id)type adType:(id)adType adFormatType:(id)formatType completion:(id)completion
{
  typeCopy = type;
  adTypeCopy = adType;
  formatTypeCopy = formatType;
  completionCopy = completion;
  if (completionCopy)
  {
    remoteObjectProxy = [(APXPCActionRequester *)self remoteObjectProxy];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_260F1F21C;
    v15[3] = &unk_279AC97E0;
    objc_copyWeak(&v17, &location);
    v16 = completionCopy;
    [remoteObjectProxy policiesForContainerType:typeCopy adType:adTypeCopy adFormatType:formatTypeCopy completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)policiesToEnforce:(id)enforce
{
  enforceCopy = enforce;
  if (enforceCopy)
  {
    remoteObjectProxy = [(APXPCActionRequester *)self remoteObjectProxy];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_260F1F42C;
    v6[3] = &unk_279AC97E0;
    objc_copyWeak(&v8, &location);
    v7 = enforceCopy;
    [remoteObjectProxy policiesToEnforce:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)fetchConfigurationForClass:(id)class completion:(id)completion
{
  classCopy = class;
  completionCopy = completion;
  remoteObjectProxy = [(APXPCActionRequester *)self remoteObjectProxy];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_260F1F66C;
  v11[3] = &unk_279AC9808;
  objc_copyWeak(&v14, &location);
  v9 = classCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [remoteObjectProxy fetchConfigurationForClass:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)invokeTestingRigHandlerForMessage:(id)message payload:(id)payload completionHandler:(id)handler
{
  messageCopy = message;
  payloadCopy = payload;
  handlerCopy = handler;
  if ([MEMORY[0x277CE4AD0] isAppleInternalInstall])
  {
    remoteObjectProxy = [(APXPCActionRequester *)self remoteObjectProxy];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_260F1F8D4;
    v12[3] = &unk_279AC9830;
    v13 = handlerCopy;
    objc_copyWeak(&v14, &location);
    [remoteObjectProxy invokeTestingRigHandlerForMessage:messageCopy payload:payloadCopy completionHandler:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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