@interface VSSpeechConnection
- (BOOL)isSystemSpeaking;
- (BOOL)isSystemSpeakingOnBehalfOfCurrentConnection;
- (BOOL)queryPhaticCapabilityWithRequest:(id)request;
- (NSXPCConnection)xpcConnection;
- (VSSpeechConnection)init;
- (VSSpeechConnectionDelegate)delegate;
- (id)_remoteObject;
- (id)_remoteObjectSync;
- (id)_remoteObjectWithErrorHandler:(id)handler;
- (id)availableFootprintsForVoice:(id)voice languageCode:(id)code;
- (id)availableVoicesForLanguageCode:(id)code;
- (id)currentAudioRequest;
- (id)currentRequest;
- (void)_connectionInvalidated;
- (void)beginAudioPowerUpdateWithReply:(id)reply;
- (void)cachePresynthesizedAudioRequest:(id)request;
- (void)cleanUnusedAssets:(id)assets;
- (void)continueSpeechRequest:(id)request;
- (void)dealloc;
- (void)endAudioPowerUpdate;
- (void)estimateDurationWithRequest:(id)request reply:(id)reply;
- (void)forwardStreamObject:(id)object;
- (void)getAllVoiceSubscriptionsWithReply:(id)reply;
- (void)getLocalVoiceAssetsForLanguage:(id)language reply:(id)reply;
- (void)getLocalVoiceResources:(id)resources;
- (void)getSubscribedVoiceAssetsWithClientID:(id)d forAccessoryID:(id)iD reply:(id)reply;
- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name footprint:(int64_t)footprint gender:(int64_t)gender type:(int64_t)type reply:(id)reply;
- (void)getVoiceResourceForLanguage:(id)language reply:(id)reply;
- (void)invokeDaemon:(id)daemon;
- (void)killDaemon;
- (void)pauseSpeechRequest:(id)request atMark:(int64_t)mark;
- (void)prewarmIfNeededWithRequest:(id)request reply:(id)reply;
- (void)setDelegate:(id)delegate;
- (void)setSubscribedVoiceAssets:(id)assets withClientID:(id)d forAccessoryID:(id)iD;
- (void)setXpcConnection:(id)connection;
- (void)startPhonemesRequest:(id)request phonemeSystem:(int64_t)system reply:(id)reply;
- (void)startPresynthesizedAudioRequest:(id)request;
- (void)startSpeechRequest:(id)request;
- (void)startSynthesisRequest:(id)request;
- (void)stopPresynthesizedAudioRequest:(id)request;
- (void)stopSpeechRequest:(id)request atMark:(int64_t)mark;
- (void)triggerCellularDownloadedVoiceAssets:(id)assets withClientID:(id)d;
@end

@implementation VSSpeechConnection

- (VSSpeechConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)killDaemon
{
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy killDaemon];
}

- (void)invokeDaemon:(id)daemon
{
  daemonCopy = daemon;
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy invokeDaemon:daemonCopy];
}

- (void)forwardStreamObject:(id)object
{
  objectCopy = object;
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v5 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_204];
  [v5 forwardStreamObject:objectCopy];
}

void __42__VSSpeechConnection_forwardStreamObject___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = [v2 localizedDescription];
    v6 = 136315394;
    v7 = "[VSSpeechConnection forwardStreamObject:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "%s, Error: %@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name footprint:(int64_t)footprint gender:(int64_t)gender type:(int64_t)type reply:(id)reply
{
  replyCopy = reply;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__VSSpeechConnection_getVoiceInfoForLanguageCode_name_footprint_gender_type_reply___block_invoke;
  v19[3] = &unk_279E4F8C8;
  v20 = replyCopy;
  v15 = replyCopy;
  nameCopy = name;
  codeCopy = code;
  v18 = [(VSSpeechConnection *)self _remoteObjectWithErrorHandler:v19];
  [v18 getVoiceInfoForLanguageCode:codeCopy name:nameCopy footprint:footprint gender:gender type:type reply:v15];
}

void __83__VSSpeechConnection_getVoiceInfoForLanguageCode_name_footprint_gender_type_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_272850000, v4, OS_LOG_TYPE_ERROR, "Can't get voice info: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceResourceForLanguage:(id)language reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__VSSpeechConnection_getVoiceResourceForLanguage_reply___block_invoke;
  v10[3] = &unk_279E4F8C8;
  v11 = replyCopy;
  v7 = replyCopy;
  languageCopy = language;
  v9 = [(VSSpeechConnection *)self _remoteObjectWithErrorHandler:v10];
  [v9 getVoiceResourceForLanguage:languageCopy reply:v7];
}

void __56__VSSpeechConnection_getVoiceResourceForLanguage_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_272850000, v4, OS_LOG_TYPE_ERROR, "Can't get VoiceResource: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getAllVoiceSubscriptionsWithReply:(id)reply
{
  replyCopy = reply;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__VSSpeechConnection_getAllVoiceSubscriptionsWithReply___block_invoke;
  v7[3] = &unk_279E4F8C8;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = [(VSSpeechConnection *)self _remoteObjectWithErrorHandler:v7];
  [v6 getAllVoiceSubscriptionsWithReply:v5];
}

void __56__VSSpeechConnection_getAllVoiceSubscriptionsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_272850000, v4, OS_LOG_TYPE_ERROR, "Can't get all subscribed voice assets: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getSubscribedVoiceAssetsWithClientID:(id)d forAccessoryID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__VSSpeechConnection_getSubscribedVoiceAssetsWithClientID_forAccessoryID_reply___block_invoke;
  v13[3] = &unk_279E4F8C8;
  v14 = replyCopy;
  v9 = replyCopy;
  iDCopy = iD;
  dCopy = d;
  v12 = [(VSSpeechConnection *)self _remoteObjectWithErrorHandler:v13];
  [v12 getSubscribedVoiceAssetsWithClientID:dCopy forAccessoryID:iDCopy reply:v9];
}

void __80__VSSpeechConnection_getSubscribedVoiceAssetsWithClientID_forAccessoryID_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_272850000, v4, OS_LOG_TYPE_ERROR, "Can't get subscribed voice assets: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)triggerCellularDownloadedVoiceAssets:(id)assets withClientID:(id)d
{
  dCopy = d;
  assetsCopy = assets;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject triggerCellularDownloadedVoiceAssets:assetsCopy withClientID:dCopy];
}

- (void)setSubscribedVoiceAssets:(id)assets withClientID:(id)d forAccessoryID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  assetsCopy = assets;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject setSubscribedVoiceAssets:assetsCopy withClientID:dCopy forAccessoryID:iDCopy];
}

- (void)getLocalVoiceResources:(id)resources
{
  resourcesCopy = resources;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__VSSpeechConnection_getLocalVoiceResources___block_invoke;
  v7[3] = &unk_279E4F8C8;
  v8 = resourcesCopy;
  v5 = resourcesCopy;
  v6 = [(VSSpeechConnection *)self _remoteObjectWithErrorHandler:v7];
  [v6 getLocalVoiceResourcesReply:v5];
}

uint64_t __45__VSSpeechConnection_getLocalVoiceResources___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getLocalVoiceAssetsForLanguage:(id)language reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__VSSpeechConnection_getLocalVoiceAssetsForLanguage_reply___block_invoke;
  v10[3] = &unk_279E4F8C8;
  v11 = replyCopy;
  v7 = replyCopy;
  languageCopy = language;
  v9 = [(VSSpeechConnection *)self _remoteObjectWithErrorHandler:v10];
  [v9 getLocalVoicesForLanguage:languageCopy reply:v7];
}

uint64_t __59__VSSpeechConnection_getLocalVoiceAssetsForLanguage_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)cleanUnusedAssets:(id)assets
{
  assetsCopy = assets;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject cleanUnusedAssets:assetsCopy];
}

- (void)continueSpeechRequest:(id)request
{
  requestCopy = request;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject continueSpeechRequest:requestCopy];
}

- (void)pauseSpeechRequest:(id)request atMark:(int64_t)mark
{
  requestCopy = request;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject pauseSpeechRequest:requestCopy atMark:mark];
}

- (void)stopSpeechRequest:(id)request atMark:(int64_t)mark
{
  requestCopy = request;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject stopSpeechRequest:requestCopy atMark:mark];
}

- (void)startSynthesisRequest:(id)request
{
  requestCopy = request;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject startSynthesisRequest:requestCopy];

  delegateWrapper = [(VSSpeechConnection *)self delegateWrapper];
  concurrentSynthesisRequests = [delegateWrapper concurrentSynthesisRequests];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "pointer")}];
  [concurrentSynthesisRequests setObject:requestCopy forKey:v7];
}

- (void)stopPresynthesizedAudioRequest:(id)request
{
  requestCopy = request;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject stopPresynthesizedAudioRequest:requestCopy];
}

- (void)cachePresynthesizedAudioRequest:(id)request
{
  requestCopy = request;
  _remoteObjectSync = [(VSSpeechConnection *)self _remoteObjectSync];
  [_remoteObjectSync cachePresynthesizedAudioRequest:requestCopy];
}

- (void)startPresynthesizedAudioRequest:(id)request
{
  requestCopy = request;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject startPresynthesizedAudioRequest:requestCopy];

  if ([requestCopy enqueue])
  {
    delegateWrapper = [(VSSpeechConnection *)self delegateWrapper];
    audioRequests = [delegateWrapper audioRequests];
    [audioRequests addObject:requestCopy];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    delegateWrapper2 = [(VSSpeechConnection *)self delegateWrapper];
    audioRequests2 = [delegateWrapper2 audioRequests];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__VSSpeechConnection_startPresynthesizedAudioRequest___block_invoke;
    v12[3] = &unk_279E4F968;
    v12[4] = &v13;
    [audioRequests2 enumerateObjectsUsingBlock:v12];

    delegateWrapper3 = [(VSSpeechConnection *)self delegateWrapper];
    audioRequests3 = [delegateWrapper3 audioRequests];
    [audioRequests3 insertObject:requestCopy atIndex:v14[3]];

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __54__VSSpeechConnection_startPresynthesizedAudioRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = a3;
  result = [a2 enqueue];
  *a4 = result;
  return result;
}

- (void)startSpeechRequest:(id)request
{
  requestCopy = request;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject startSpeechRequest:requestCopy reply:&__block_literal_global_202];

  if ([requestCopy shouldWaitCurrentSpeaking])
  {
    delegateWrapper = [(VSSpeechConnection *)self delegateWrapper];
    requests = [delegateWrapper requests];
    [requests addObject:requestCopy];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    delegateWrapper2 = [(VSSpeechConnection *)self delegateWrapper];
    requests2 = [delegateWrapper2 requests];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__VSSpeechConnection_startSpeechRequest___block_invoke_2;
    v12[3] = &unk_279E4F940;
    v12[4] = &v13;
    [requests2 enumerateObjectsUsingBlock:v12];

    delegateWrapper3 = [(VSSpeechConnection *)self delegateWrapper];
    requests3 = [delegateWrapper3 requests];
    [requests3 insertObject:requestCopy atIndex:v14[3]];

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __41__VSSpeechConnection_startSpeechRequest___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = a3;
  result = [a2 shouldWaitCurrentSpeaking];
  *a4 = result;
  return result;
}

- (void)endAudioPowerUpdate
{
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject endAudioPowerUpdate];
}

- (void)beginAudioPowerUpdateWithReply:(id)reply
{
  replyCopy = reply;
  _remoteObject = [(VSSpeechConnection *)self _remoteObject];
  [_remoteObject beginAudioPowerUpdateWithReply:replyCopy];
}

- (void)startPhonemesRequest:(id)request phonemeSystem:(int64_t)system reply:(id)reply
{
  replyCopy = reply;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__VSSpeechConnection_startPhonemesRequest_phonemeSystem_reply___block_invoke;
  v12[3] = &unk_279E4F8C8;
  v13 = replyCopy;
  v9 = replyCopy;
  requestCopy = request;
  v11 = [(VSSpeechConnection *)self _remoteObjectWithErrorHandler:v12];
  [v11 startPhonemesRequest:requestCopy phonemeSystem:system reply:v9];
}

void __63__VSSpeechConnection_startPhonemesRequest_phonemeSystem_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_272850000, v4, OS_LOG_TYPE_ERROR, "Can't start PhonemesRequest: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSystemSpeakingOnBehalfOfCurrentConnection
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  currentRequest = [(VSSpeechConnection *)self currentRequest];
  if (currentRequest)
  {
  }

  else
  {
    currentAudioRequest = [(VSSpeechConnection *)self currentAudioRequest];

    if (!currentAudioRequest)
    {
      v7 = 0;
      goto LABEL_5;
    }
  }

  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_196];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__VSSpeechConnection_isSystemSpeakingOnBehalfOfCurrentConnection__block_invoke_197;
  v9[3] = &unk_279E4F8F0;
  v9[4] = &v10;
  [v6 getSpeechIsActiveForConnectionReply:v9];

  v7 = *(v11 + 24);
LABEL_5:
  _Block_object_dispose(&v10, 8);
  return v7 & 1;
}

void __65__VSSpeechConnection_isSystemSpeakingOnBehalfOfCurrentConnection__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[VSSpeechConnection isSystemSpeakingOnBehalfOfCurrentConnection]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "Error at %s , %@ ", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSystemSpeaking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_193_3139];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__VSSpeechConnection_isSystemSpeaking__block_invoke_194;
  v5[3] = &unk_279E4F8F0;
  v5[4] = &v6;
  [v3 getSpeechIsActiveReply:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

void __38__VSSpeechConnection_isSystemSpeaking__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[VSSpeechConnection isSystemSpeaking]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "Error at %s , %@ ", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)availableFootprintsForVoice:(id)voice languageCode:(id)code
{
  voiceCopy = voice;
  codeCopy = code;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3142;
  v17 = __Block_byref_object_dispose__3143;
  v18 = 0;
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_190];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__VSSpeechConnection_availableFootprintsForVoice_languageCode___block_invoke_191;
  v12[3] = &unk_279E4F918;
  v12[4] = &v13;
  [v9 getFootprintsForVoiceName:voiceCopy languageCode:codeCopy reply:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __63__VSSpeechConnection_availableFootprintsForVoice_languageCode___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "Error %@ asking for voice footprints", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)availableVoicesForLanguageCode:(id)code
{
  codeCopy = code;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3142;
  v14 = __Block_byref_object_dispose__3143;
  v15 = 0;
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_186];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__VSSpeechConnection_availableVoicesForLanguageCode___block_invoke_187;
  v9[3] = &unk_279E4F918;
  v9[4] = &v10;
  [v6 getVoiceNamesForLanguage:codeCopy reply:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __53__VSSpeechConnection_availableVoicesForLanguageCode___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "Error %@ asking for voices", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)estimateDurationWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_184];
  [v8 estimateDurationWithRequest:requestCopy reply:replyCopy];
}

void __56__VSSpeechConnection_estimateDurationWithRequest_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = [v2 description];
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "Error estimateDurationWithRequest:reply: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)queryPhaticCapabilityWithRequest:(id)request
{
  requestCopy = request;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_180];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__VSSpeechConnection_queryPhaticCapabilityWithRequest___block_invoke_181;
  v8[3] = &unk_279E4F8F0;
  v8[4] = &v9;
  [v6 queryPhaticCapabilityWithRequest:requestCopy reply:v8];

  LOBYTE(xpcConnection) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return xpcConnection;
}

void __55__VSSpeechConnection_queryPhaticCapabilityWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[VSSpeechConnection queryPhaticCapabilityWithRequest:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "Error at %s , %@ ", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)prewarmIfNeededWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__VSSpeechConnection_prewarmIfNeededWithRequest_reply___block_invoke;
  v10[3] = &unk_279E4F8C8;
  v11 = replyCopy;
  v7 = replyCopy;
  requestCopy = request;
  v9 = [(VSSpeechConnection *)self _remoteObjectWithErrorHandler:v10];
  [v9 prewarmIfNeededWithRequest:requestCopy reply:v7];
}

void __55__VSSpeechConnection_prewarmIfNeededWithRequest_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_272850000, v4, OS_LOG_TYPE_ERROR, "Can't prewarm: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __64__VSSpeechConnection_updateWithConnectionIdentifier_keepActive___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "Error updateWithConnectionIdentifier: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    delegateWrapper = self->_delegateWrapper;
    v7 = v5;
    [(VSSpeechConnectionDelegateWrapper *)delegateWrapper setDelegate:obj];
  }
}

- (id)currentAudioRequest
{
  delegateWrapper = [(VSSpeechConnection *)self delegateWrapper];
  audioRequests = [delegateWrapper audioRequests];
  firstObject = [audioRequests firstObject];

  return firstObject;
}

- (id)currentRequest
{
  delegateWrapper = [(VSSpeechConnection *)self delegateWrapper];
  requests = [delegateWrapper requests];
  firstObject = [requests firstObject];

  return firstObject;
}

- (void)_connectionInvalidated
{
  v53[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:-9 userInfo:0];
    delegateWrapper = [(VSSpeechConnection *)self delegateWrapper];
    requests = [delegateWrapper requests];
    v7 = [requests count];

    delegateWrapper2 = [(VSSpeechConnection *)self delegateWrapper];
    delegateWrapper6 = delegateWrapper2;
    if (v7)
    {
      requests2 = [delegateWrapper2 requests];
    }

    else
    {
      audioRequests = [delegateWrapper2 audioRequests];
      v12 = [audioRequests count];

      if (!v12)
      {
LABEL_8:
        delegateWrapper3 = [(VSSpeechConnection *)self delegateWrapper];
        requests3 = [delegateWrapper3 requests];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __44__VSSpeechConnection__connectionInvalidated__block_invoke;
        v51[3] = &unk_279E4F850;
        v51[4] = self;
        v32 = v4;
        v52 = v32;
        [requests3 enumerateObjectsUsingBlock:v51];

        delegateWrapper4 = [(VSSpeechConnection *)self delegateWrapper];
        audioRequests2 = [delegateWrapper4 audioRequests];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __44__VSSpeechConnection__connectionInvalidated__block_invoke_2;
        v49[3] = &unk_279E4F878;
        v49[4] = self;
        v35 = v32;
        v50 = v35;
        [audioRequests2 enumerateObjectsUsingBlock:v49];

        delegateWrapper5 = [(VSSpeechConnection *)self delegateWrapper];
        concurrentSynthesisRequests = [delegateWrapper5 concurrentSynthesisRequests];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __44__VSSpeechConnection__connectionInvalidated__block_invoke_3;
        v47[3] = &unk_279E4F8A0;
        v47[4] = self;
        v48 = v35;
        v38 = v35;
        [concurrentSynthesisRequests enumerateKeysAndObjectsUsingBlock:v47];

        v39 = objc_loadWeakRetained(&self->_delegate);
        [v39 connection:self invalidatedWithError:v38];

        goto LABEL_9;
      }

      delegateWrapper6 = [(VSSpeechConnection *)self delegateWrapper];
      requests2 = [delegateWrapper6 audioRequests];
    }

    v13 = requests2;
    firstObject = [requests2 firstObject];
    siriRequestId = [firstObject siriRequestId];

    if (siriRequestId)
    {
      v16 = objc_alloc_init(MEMORY[0x277D5B180]);
      v17 = [MEMORY[0x277CCABB0] numberWithInt:4294967287];
      v53[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
      [v16 setErrorCodes:v18];

      v19 = objc_alloc_init(MEMORY[0x277D5B150]);
      [v19 setFailed:v16];
      v20 = objc_alloc(MEMORY[0x277D5AC78]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      v22 = [v20 initWithNSUUID:uUID];
      [v19 setContextId:v22];

      v23 = objc_alloc_init(MEMORY[0x277D5B140]);
      [v23 setSpeechContext:v19];
      v24 = objc_alloc_init(MEMORY[0x277D5B148]);
      [v23 setEventMetadata:v24];

      v25 = objc_alloc(MEMORY[0x277D5AC78]);
      v26 = [MEMORY[0x277D552C0] derivedIdentifierForComponentName:13 fromSourceIdentifier:siriRequestId];
      v27 = [v25 initWithNSUUID:v26];
      eventMetadata = [v23 eventMetadata];
      [eventMetadata setTtsId:v27];

      mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
      [mEMORY[0x277D552C0] emitMessage:v23];
    }

    goto LABEL_8;
  }

LABEL_9:
  [(VSSpeechConnection *)self setXpcConnection:0];
  delegateWrapper7 = [(VSSpeechConnection *)self delegateWrapper];
  requests4 = [delegateWrapper7 requests];
  [requests4 removeAllObjects];

  delegateWrapper8 = [(VSSpeechConnection *)self delegateWrapper];
  audioRequests3 = [delegateWrapper8 audioRequests];
  [audioRequests3 removeAllObjects];

  delegateWrapper9 = [(VSSpeechConnection *)self delegateWrapper];
  concurrentSynthesisRequests2 = [delegateWrapper9 concurrentSynthesisRequests];
  [concurrentSynthesisRequests2 removeAllObjects];

  v46 = *MEMORY[0x277D85DE8];
}

void __44__VSSpeechConnection__connectionInvalidated__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 32));
  [WeakRetained connection:*(a1 + 32) speechRequest:v4 didStopAtEnd:0 phonemesSpoken:0 error:*(a1 + 40)];
}

void __44__VSSpeechConnection__connectionInvalidated__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 32));
  [WeakRetained connection:*(a1 + 32) presynthesizedAudioRequest:v4 didStopAtEnd:0 error:*(a1 + 40)];
}

void __44__VSSpeechConnection__connectionInvalidated__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 32));
  [WeakRetained connection:*(a1 + 32) synthesisRequest:v5 didFinishWithInstrumentMetrics:0 error:*(a1 + 40)];
}

- (id)_remoteObjectWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_remoteObjectSync
{
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_3155];

  return v3;
}

void __39__VSSpeechConnection__remoteObjectSync__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[VSSpeechConnection _remoteObjectSync]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "%s, error: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_remoteObject
{
  xpcConnection = [(VSSpeechConnection *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)setXpcConnection:(id)connection
{
  connectionCopy = connection;
  threadSafeQueue = self->_threadSafeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__VSSpeechConnection_setXpcConnection___block_invoke;
  v7[3] = &unk_279E4F808;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(threadSafeQueue, v7);
}

- (NSXPCConnection)xpcConnection
{
  threadSafeQueue = self->_threadSafeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__VSSpeechConnection_xpcConnection__block_invoke;
  block[3] = &unk_279E4F7E0;
  block[4] = self;
  dispatch_sync(threadSafeQueue, block);
  return self->_xpcConnection;
}

void __35__VSSpeechConnection_xpcConnection__block_invoke(uint64_t a1)
{
  v35[2] = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.voiceservices.tts" options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2881EE8A8];
    v6 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v8 = [v6 setWithArray:v7];

    [v5 setClasses:v8 forSelector:sel_getLocalVoicesForLanguage_reply_ argumentIndex:0 ofReply:1];
    [v5 setClasses:v8 forSelector:sel_getSubscribedVoiceAssetsWithClientID_forAccessoryID_reply_ argumentIndex:0 ofReply:1];
    v9 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v11 = [v9 setWithArray:v10];

    [v5 setClasses:v11 forSelector:sel_getLocalVoiceResourcesReply_ argumentIndex:0 ofReply:1];
    [v5 setClasses:v11 forSelector:sel_getVoiceResourceForLanguage_reply_ argumentIndex:0 ofReply:1];
    v12 = MEMORY[0x277CBEB98];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v33[2] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
    v14 = [v12 setWithArray:v13];

    [v5 setClasses:v14 forSelector:sel_getAllVoiceSubscriptionsWithReply_ argumentIndex:0 ofReply:1];
    [*(*(a1 + 32) + 16) setRemoteObjectInterface:v5];
    objc_initWeak(&location, *(a1 + 32));
    v15 = *(*(a1 + 32) + 16);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __35__VSSpeechConnection_xpcConnection__block_invoke_2;
    v29[3] = &unk_279E4F7B8;
    objc_copyWeak(&v30, &location);
    [v15 setInvalidationHandler:v29];
    v16 = *(*(a1 + 32) + 16);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __35__VSSpeechConnection_xpcConnection__block_invoke_3;
    v27[3] = &unk_279E4F7B8;
    objc_copyWeak(&v28, &location);
    [v16 setInterruptionHandler:v27];
    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2881E9A78];
    v18 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v32[3] = objc_opt_class();
    v32[4] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];
    v20 = [v18 setWithArray:v19];

    [v17 setClasses:v20 forSelector:sel_speechRequest_didReceiveTimingInfo_ argumentIndex:1 ofReply:0];
    [v17 setClasses:v20 forSelector:sel_synthesisRequest_didReceiveTimingInfo_ argumentIndex:1 ofReply:0];
    [v17 setClasses:v20 forSelector:sel_synthesisRequest_didGenerateAudioChunk_ argumentIndex:1 ofReply:0];
    [*(*(a1 + 32) + 16) setExportedInterface:v17];
    v21 = *(a1 + 32);
    v22 = v21[2];
    v23 = [v21 delegateWrapper];
    [v22 setExportedObject:v23];

    [*(*(a1 + 32) + 16) resume];
    v24 = *(a1 + 32);
    if (*(v24 + 24))
    {
      v25 = [*(v24 + 16) remoteObjectProxy];
      [v25 updateWithConnectionIdentifier:*(*(a1 + 32) + 24) keepActive:*(*(a1 + 32) + 8)];
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __35__VSSpeechConnection_xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

void __35__VSSpeechConnection_xpcConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnection];
  [v1 invalidate];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_272850000, v3, OS_LOG_TYPE_DEFAULT, "Closing xpc connection %p", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v5.receiver = self;
  v5.super_class = VSSpeechConnection;
  [(VSSpeechConnection *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (VSSpeechConnection)init
{
  v8.receiver = self;
  v8.super_class = VSSpeechConnection;
  v2 = [(VSSpeechConnection *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSSpeechConnectionDelegateWrapper);
    delegateWrapper = v2->_delegateWrapper;
    v2->_delegateWrapper = v3;

    [(VSSpeechConnectionDelegateWrapper *)v2->_delegateWrapper setConnection:v2];
    v5 = dispatch_queue_create("com.apple.voiceservices.xpcconnection", 0);
    threadSafeQueue = v2->_threadSafeQueue;
    v2->_threadSafeQueue = v5;
  }

  return v2;
}

@end