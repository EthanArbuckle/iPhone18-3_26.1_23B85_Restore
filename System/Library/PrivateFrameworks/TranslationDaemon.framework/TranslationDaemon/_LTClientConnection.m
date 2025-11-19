@interface _LTClientConnection
- (_LTClientConnection)initWithConnection:(id)a3 server:(id)a4 trusted:(BOOL)a5;
- (_LTClientConnectionDelegate)delegate;
- (void)assetRequestHandler:(id)a3;
- (void)cancelLanguageStatusChangeObservation:(id)a3;
- (void)cleanupOnDisconnect;
- (void)languageForText:(id)a3 completion:(id)a4;
- (void)languagesForText:(id)a3 usingModel:(unint64_t)a4 strategy:(unint64_t)a5 completion:(id)a6;
- (void)logRequestOfType:(id)a3 context:(id)a4;
- (void)logWithRequestData:(id)a3;
- (void)onDeviceModeEnabled:(id)a3;
- (void)onDeviceModeSupported:(id)a3;
- (void)preheatWithContext:(id)a3 completion:(id)a4;
- (void)selfLoggingEventWithData:(id)a3;
- (void)selfLoggingInvocationStartedWithData:(id)a3 invocationStartedTier1Data:(id)a4;
- (void)speak:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)startInstallRequest:(id)a3;
- (void)startLanguageStatusChangeObservation:(id)a3 taskHint:(int64_t)a4 completion:(id)a5;
- (void)startSpeechTranslationWithContext:(id)a3;
- (void)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4;
- (void)translate:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)translateParagraphs:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)translateSentence:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)translateStreamingInput:(id)a3 withContext:(id)a4 completion:(id)a5;
@end

@implementation _LTClientConnection

- (void)cleanupOnDisconnect
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_speechSessionID)
  {
    v3 = _LTOSLogXPC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Client disconnected, ask to cancel speech session", &v9, 2u);
    }

    [(_LTTranslationServer *)self->_server cancelSpeechSessionWithID:self->_speechSessionID];
  }

  v4 = self->_languageStatusSessionID;
  if (v4)
  {
    v5 = _LTOSLogAssetObservation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      trustedClientIdentifier = self->_trustedClientIdentifier;
      v9 = 138543618;
      v10 = trustedClientIdentifier;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling status updates because disconnecting from client %{public}@; identifier: %{public}@", &v9, 0x16u);
    }

    [_LTDLanguageAssetService cancelLanguageStatusSession:v4];
  }

  v7 = [(_LTClientConnection *)self delegate];
  [v7 clientConnectionClosed:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (_LTClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTClientConnection)initWithConnection:(id)a3 server:(id)a4 trusted:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v30.receiver = self;
  v30.super_class = _LTClientConnection;
  v11 = [(_LTClientConnection *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connection, a3);
    objc_storeStrong(&v12->_server, a4);
    v12->_trusted = v5;
    v13 = _LTOSLogXPC();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v14)
      {
        [_LTClientConnection initWithConnection:server:trusted:];
      }

      v15 = _LTTranslationServiceXPCInterface();
    }

    else
    {
      if (v14)
      {
        [_LTClientConnection initWithConnection:server:trusted:];
      }

      v15 = _LTTextTranslationServiceXPCInterface();
    }

    v16 = v15;
    [v9 setExportedInterface:v15];

    [v9 setExportedObject:v12];
    v17 = _LTTranslationServiceDelegateXPCInterface();
    [v9 setRemoteObjectInterface:v17];

    objc_initWeak(&location, v12);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57___LTClientConnection_initWithConnection_server_trusted___block_invoke;
    v27[3] = &unk_2789B53F0;
    objc_copyWeak(&v28, &location);
    v18 = MEMORY[0x238398770](v27);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57___LTClientConnection_initWithConnection_server_trusted___block_invoke_2;
    v25[3] = &unk_2789B5418;
    v19 = v18;
    v26 = v19;
    [v9 setInterruptionHandler:v25];
    [v9 setInvalidationHandler:v19];
    v20 = [v9 valueForEntitlement:@"application-identifier"];
    v21 = _LTOSLogXPC();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_LTClientConnection initWithConnection:v20 server:v21 trusted:?];
    }

    trustedClientIdentifier = v12->_trustedClientIdentifier;
    v12->_trustedClientIdentifier = &v20->isa;

    v23 = v12;
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)translateSentence:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(_LTClientConnection *)self logRequestOfType:@"sentence" context:v9];
  [v9 setTrustedClientIdentifier:self->_trustedClientIdentifier];
  [(_LTTranslationServer *)self->_server translateSentence:v10 withContext:v9 completion:v8];
}

- (void)translate:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_trusted)
  {
    v11 = [v9 sanitizedCopyForUntrustedTextTranslation];

    v9 = v11;
  }

  [(_LTClientConnection *)self logRequestOfType:@"singleParagraph" context:v9];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__0;
  v23[4] = __Block_byref_object_dispose__0;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__0;
  v21[4] = __Block_byref_object_dispose__0;
  v22 = 0;
  [v9 setTrustedClientIdentifier:self->_trustedClientIdentifier];
  server = self->_server;
  v25[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56___LTClientConnection_translate_withContext_completion___block_invoke;
  v20[3] = &unk_2789B5440;
  v20[4] = v23;
  v20[5] = v21;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56___LTClientConnection_translate_withContext_completion___block_invoke_2;
  v16[3] = &unk_2789B5468;
  v18 = v21;
  v19 = v23;
  v14 = v10;
  v17 = v14;
  [(_LTTranslationServer *)server translateParagraphs:v13 withContext:v9 paragraphResult:v20 completion:v16];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)translateParagraphs:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_trusted)
  {
    v11 = [v9 sanitizedCopyForUntrustedTextTranslation];

    v9 = v11;
  }

  [(_LTClientConnection *)self logRequestOfType:@"paragraphs" context:v9];
  [v9 setTrustedClientIdentifier:self->_trustedClientIdentifier];
  v12 = [(_LTClientConnection *)self _clientDelegate];
  server = self->_server;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66___LTClientConnection_translateParagraphs_withContext_completion___block_invoke;
  v15[3] = &unk_2789B5490;
  v16 = v12;
  v14 = v12;
  [(_LTTranslationServer *)server translateParagraphs:v8 withContext:v9 paragraphResult:v15 completion:v10];
}

- (void)translateStreamingInput:(id)a3 withContext:(id)a4 completion:(id)a5
{
  trustedClientIdentifier = self->_trustedClientIdentifier;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [v10 setTrustedClientIdentifier:trustedClientIdentifier];
  [(_LTClientConnection *)self logRequestOfType:@"stabilizationStreaming" context:v10];
  [(_LTTranslationServer *)self->_server translateStreamingInput:v11 withContext:v10 completion:v9];
}

- (void)speak:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(_LTClientConnection *)self logRequestOfType:@"tts" context:v9];
  [v9 setTrustedClientIdentifier:self->_trustedClientIdentifier];
  v11 = [(_LTClientConnection *)self _clientDelegate];
  [(_LTTranslationServer *)self->_server speak:v10 withContext:v9 delegate:v11 completion:v8];
}

- (void)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4
{
  v11 = a3;
  trustedClientIdentifier = self->_trustedClientIdentifier;
  v7 = a4;
  if ([(NSString *)trustedClientIdentifier isEqual:@"com.apple.TranslationUIServices.TranslationUIService"])
  {
    [v11 setTaskHint:5];
  }

  [(_LTClientConnection *)self logRequestOfType:@"text-to-speech" context:v11];
  [v11 setTrustedClientIdentifier:self->_trustedClientIdentifier];
  v8 = [(_LTClientConnection *)self _clientDelegate];
  v9 = [(_LTTranslationServer *)self->_server startTextToSpeechTranslationWithContext:v11 text:v7 delegate:v8];

  speechSessionID = self->_speechSessionID;
  self->_speechSessionID = v9;
}

- (void)startSpeechTranslationWithContext:(id)a3
{
  v4 = a3;
  [(_LTClientConnection *)self logRequestOfType:@"speech" context:v4];
  [v4 setTrustedClientIdentifier:self->_trustedClientIdentifier];
  v7 = [(_LTClientConnection *)self _clientDelegate];
  v5 = [(_LTTranslationServer *)self->_server startSpeechTranslationWithContext:v4 delegate:v7];

  speechSessionID = self->_speechSessionID;
  self->_speechSessionID = v5;
}

- (void)preheatWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_LTClientConnection *)self logRequestOfType:@"preheat" context:v7];
  [v7 setTrustedClientIdentifier:self->_trustedClientIdentifier];
  [(_LTTranslationServer *)self->_server preheatWithContext:v7 completion:v6];
}

- (void)languageForText:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_LTClientConnection *)self logRequestOfType:@"text-LID" context:0];
  [(_LTTranslationServer *)self->_server languageForText:v7 completion:v6];
}

- (void)languagesForText:(id)a3 usingModel:(unint64_t)a4 strategy:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  [(_LTClientConnection *)self logRequestOfType:@"text-LID" context:0];
  v12 = _LTOSLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "XPC languages for text call", v13, 2u);
  }

  [(_LTTranslationServer *)self->_server languagesForText:v11 usingModel:a4 strategy:a5 completion:v10];
}

- (void)logRequestOfType:(id)a3 context:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[_LTAnalyticsEvent alloc] initWithName:@"TranslateRequest"];
  trustedClientIdentifier = self->_trustedClientIdentifier;
  if (trustedClientIdentifier)
  {
    v10 = trustedClientIdentifier;
  }

  else
  {
    v10 = [v7 clientIdentifier];
  }

  v11 = v10;
  v12 = @"unknown";
  if (v10)
  {
    v12 = v10;
  }

  v17[0] = @"processName";
  v17[1] = @"type";
  v18[0] = v12;
  v18[1] = v6;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [(_LTAnalyticsEvent *)v8 addFieldsFromDictionary:v13];

  [(_LTAnalyticsEvent *)v8 sendLazy];
  if (v7)
  {
    v14 = [v7 route];
  }

  else
  {
    v14 = -1;
  }

  v15 = +[_LTPowerLogger sharedInstance];
  [v15 logTranslateRequestEvent:self->_trustedClientIdentifier requestType:v6 routeType:v14];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)assetRequestHandler:(id)a3
{
  v4 = a3;
  v5 = [(_LTClientConnection *)self _clientDelegate];
  server = self->_server;
  v7 = [v4 assets];
  v8 = [v4 options];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43___LTClientConnection_assetRequestHandler___block_invoke;
  v12[3] = &unk_2789B54B8;
  v13 = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43___LTClientConnection_assetRequestHandler___block_invoke_2;
  v10[3] = &unk_2789B54E0;
  v11 = v13;
  v9 = v13;
  [(_LTTranslationServer *)server setLanguageAssets:v7 options:v8 progress:v12 completion:v10];
}

- (void)startLanguageStatusChangeObservation:(id)a3 taskHint:(int64_t)a4 completion:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [(_LTClientConnection *)self _clientDelegate];
  objc_storeStrong(&self->_languageStatusSessionID, a3);
  trusted = self->_trusted;
  v13 = self->_trustedClientIdentifier;
  v14 = _LTOSLogAssetObservation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    trustedClientIdentifier = self->_trustedClientIdentifier;
    v16 = v10;
    v17 = trusted;
    v18 = self->_trusted;
    v19 = v14;
    v20 = _LTTranslationTaskHintString();
    *buf = 138478595;
    v36 = trustedClientIdentifier;
    v37 = 1024;
    v38 = v18;
    trusted = v17;
    v10 = v16;
    v39 = 2114;
    v40 = v20;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_DEFAULT, "Starting language observations for client %{private}@; trusted: %{BOOL}i; taskHint: %{public}@; identifier: %{public}@", buf, 0x26u);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __80___LTClientConnection_startLanguageStatusChangeObservation_taskHint_completion___block_invoke;
  v31[3] = &unk_2789B5508;
  v32 = v11;
  v33 = a4;
  v34 = trusted;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80___LTClientConnection_startLanguageStatusChangeObservation_taskHint_completion___block_invoke_2;
  v26[3] = &unk_2789B5530;
  v29 = v10;
  v30 = a4;
  v27 = v13;
  v28 = v9;
  v21 = v9;
  v22 = v13;
  v23 = v10;
  v24 = v11;
  [_LTDLanguageAssetService startLanguageStatusSession:v21 taskHint:a4 progress:trusted observations:v31 completion:v26];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)cancelLanguageStatusChangeObservation:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [_LTDLanguageAssetService cancelLanguageStatusSession:v4];
  v5 = _LTOSLogAssetObservation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    trustedClientIdentifier = self->_trustedClientIdentifier;
    v8 = 138543618;
    v9 = trustedClientIdentifier;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling language observations for client %{public}@; identifier: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startInstallRequest:(id)a3
{
  v4 = a3;
  v5 = [(_LTClientConnection *)self _clientDelegate];
  [(_LTTranslationServer *)self->_server startInstallRequest:v4 delegate:v5];
}

- (void)logWithRequestData:(id)a3
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a3;
  v7 = _LTLoggingRequestClasses();
  v12 = 0;
  v8 = [v5 unarchivedObjectOfClasses:v7 fromData:v6 error:&v12];

  v9 = v12;
  if (v9)
  {
    v10 = _LTOSLogXPC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_LTClientConnection *)v9 logWithRequestData:v10];
    }

    v11 = NSStringFromSelector(a2);
    _LTSendErrorEvent(v9, v11);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setProcessName:self->_trustedClientIdentifier];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setClientBundleID:self->_trustedClientIdentifier];
      }
    }

    [(_LTTranslationServer *)self->_server startLoggingRequest:v8];
  }
}

- (void)onDeviceModeEnabled:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "XPC on-device mode call", v6, 2u);
  }

  [(_LTTranslationServer *)self->_server onDeviceModeEnabled:v4];
}

- (void)onDeviceModeSupported:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "XPC on-device support call", v6, 2u);
  }

  [(_LTTranslationServer *)self->_server onDeviceModeSupported:v4];
}

- (void)selfLoggingEventWithData:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_LTClientConnection selfLoggingEventWithData:];
  }

  [(_LTTranslationServer *)self->_server selfLoggingEventWithData:v4];
}

- (void)selfLoggingInvocationStartedWithData:(id)a3 invocationStartedTier1Data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _LTOSLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_LTClientConnection selfLoggingInvocationStartedWithData:invocationStartedTier1Data:];
  }

  [(_LTTranslationServer *)self->_server selfLoggingEventWithData:v7];

  [v6 setTrustedClientIdentifier:self->_trustedClientIdentifier];
  [(_LTTranslationServer *)self->_server selfLoggingEventWithData:v6];
}

- (void)initWithConnection:(__CFString *)a1 server:(NSObject *)a2 trusted:.cold.3(__CFString *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = @"not set";
  if (a1)
  {
    v2 = a1;
  }

  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Connection application-identifier: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)logWithRequestData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Failed to deserialize logging request: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end