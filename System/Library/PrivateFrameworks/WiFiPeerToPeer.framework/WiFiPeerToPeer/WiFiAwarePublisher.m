@interface WiFiAwarePublisher
- (NSString)description;
- (WiFiAwarePublisher)initWithConfiguration:(id)a3;
- (WiFiAwarePublisherDelegate)delegate;
- (void)generateDiversifiedPINForDataSession:(id)a3 completionHandler:(id)a4;
- (void)generateStatisticsReportForDataSession:(id)a3 completionHandler:(id)a4;
- (void)handleError:(int64_t)a3;
- (void)publishDataTerminatedForHandle:(id)a3 reason:(int64_t)a4;
- (void)publishDetectedMulticastError:(int64_t)a3 fromMulticastReceiver:(id)a4;
- (void)publishFailedToStartWithError:(int64_t)a3;
- (void)publishPairingApprovalForSubscriber:(id)a3 withPairingMethod:(int64_t)a4 pairingSetupApprovalCompletion:(id)a5;
- (void)publishPairingApprovalForSubscriber:(id)a3 withPairingMethod:(int64_t)a4 pairingSetupApprovalHandler:(id)a5;
- (void)publishPairingDidSucceedWithPairingKeyStoreID:(id)a3 deviceID:(unint64_t)a4;
- (void)publishPairingRequestIndicatedBySubscriber:(id)a3 withPairingMethod:(int64_t)a4 pairingAuthenticationGeneratedCompletionHandler:(id)a5;
- (void)publishReceivedDataBlobForMulticastSession:(id)a3 fromPeer:(id)a4;
- (void)publishTerminatedWithReason:(int64_t)a3;
- (void)reportIssue:(id)a3 forDataSession:(id)a4;
- (void)sendDataBlobForMulticastSession:(id)a3 toPeerAddress:(id)a4 usingMulticastAddress:(unsigned __int8)a5 completionHandler:(id)a6;
- (void)sendMessage:(id)a3 toPeerAddress:(id)a4 withInstanceID:(unsigned __int8)a5 completionHandler:(id)a6;
- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4;
- (void)terminateDataSession:(id)a3 completionHandler:(id)a4;
- (void)terminateMulticastSession:(id)a3 completionHandler:(id)a4;
- (void)updateDatapathServiceSpecificInfo:(id)a3 completionHandler:(id)a4;
- (void)updateLinkStatus:(int64_t)a3 forDataSession:(id)a4;
- (void)updateServiceSpecificInfo:(id)a3 completionHandler:(id)a4;
- (void)updateTimeout:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation WiFiAwarePublisher

- (WiFiAwarePublisher)initWithConfiguration:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WiFiAwarePublisher;
  v5 = [(WiFiAwarePublisher *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dataSessionHandles = v5->_dataSessionHandles;
    v5->_dataSessionHandles = v8;

    v10 = [WiFiP2PXPCConnection alloc];
    v11 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v12 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiAwarePublisher", 0, v11);
    v13 = [(WiFiP2PXPCConnection *)v10 initWithEndpointType:1 queue:v12 retryTimeout:+[WiFiP2PXPCConnection defaultRetryTimeout]];
    xpcConnection = v5->_xpcConnection;
    v5->_xpcConnection = v13;

    [(WiFiP2PXPCConnection *)v5->_xpcConnection setDelegate:v5];
  }

  return v5;
}

- (void)handleError:(int64_t)a3
{
  v5 = [(WiFiAwarePublisher *)self delegate];
  v7 = v5;
  if (self->_publishID)
  {
    [v5 publisher:self terminatedWithReason:-1];
  }

  else
  {
    [v5 publisher:self failedToStartWithError:a3];
  }

  publishID = self->_publishID;
  self->_publishID = 0;
}

- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WiFiAwarePublisher *)self delegate];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_dataSessionHandles;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 publisher:self dataTerminatedForHandle:*(*(&v16 + 1) + 8 * v13++) reason:{-1, v16}];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_dataSessionHandles removeAllObjects];
  v14 = [(WiFiAwarePublisher *)self configuration];
  [v6 createPublishWithConfiguration:v14 completionHandler:v7];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 toPeerAddress:(id)a4 withInstanceID:(unsigned __int8)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__WiFiAwarePublisher_sendMessage_toPeerAddress_withInstanceID_completionHandler___block_invoke;
  v15[3] = &unk_2787AB430;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:a6];
}

- (void)sendDataBlobForMulticastSession:(id)a3 toPeerAddress:(id)a4 usingMulticastAddress:(unsigned __int8)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__WiFiAwarePublisher_sendDataBlobForMulticastSession_toPeerAddress_usingMulticastAddress_completionHandler___block_invoke;
  v15[3] = &unk_2787AB430;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:a6];
}

- (void)terminateDataSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__WiFiAwarePublisher_terminateDataSession_completionHandler___block_invoke;
  v9[3] = &unk_2787AB458;
  v10 = v6;
  v8 = v6;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9 clientCompletionHandler:a4];
}

- (void)terminateMulticastSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__WiFiAwarePublisher_terminateMulticastSession_completionHandler___block_invoke;
  v9[3] = &unk_2787AB458;
  v10 = v6;
  v8 = v6;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9 clientCompletionHandler:a4];
}

- (void)updateServiceSpecificInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = self;
  xpcConnection = v7->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__WiFiAwarePublisher_updateServiceSpecificInfo_completionHandler___block_invoke;
  v11[3] = &unk_2787AB4A8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11 clientCompletionHandler:a4];
}

void __66__WiFiAwarePublisher_updateServiceSpecificInfo_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__WiFiAwarePublisher_updateServiceSpecificInfo_completionHandler___block_invoke_2;
  v8[3] = &unk_2787AB480;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v5;
  v7 = v5;
  [a2 updateServiceSpecificInfo:v6 completionHandler:v8];
}

void __66__WiFiAwarePublisher_updateServiceSpecificInfo_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  if (!a2 && v4)
  {
    [v4[6] setServiceSpecificInfo:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)updateDatapathServiceSpecificInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = self;
  xpcConnection = v7->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__WiFiAwarePublisher_updateDatapathServiceSpecificInfo_completionHandler___block_invoke;
  v11[3] = &unk_2787AB4A8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11 clientCompletionHandler:a4];
}

void __74__WiFiAwarePublisher_updateDatapathServiceSpecificInfo_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__WiFiAwarePublisher_updateDatapathServiceSpecificInfo_completionHandler___block_invoke_2;
  v8[3] = &unk_2787AB480;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v5;
  v7 = v5;
  [a2 updateDatapathServiceSpecificInfo:v6 completionHandler:v8];
}

void __74__WiFiAwarePublisher_updateDatapathServiceSpecificInfo_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v7 = v4;
  if (!a2 && v4)
  {
    v5 = *(a1 + 40);
    v6 = [v4[6] datapathConfiguration];
    [v6 setServiceSpecificInfo:v5];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)updateTimeout:(unint64_t)a3 completionHandler:(id)a4
{
  xpcConnection = self->_xpcConnection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__WiFiAwarePublisher_updateTimeout_completionHandler___block_invoke;
  v5[3] = &__block_descriptor_40_e43_v24__0___WiFiAwarePublisherXPC__8___v__q_16l;
  v5[4] = a3;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v5 clientCompletionHandler:a4];
}

- (void)reportIssue:(id)a3 forDataSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__WiFiAwarePublisher_reportIssue_forDataSession___block_invoke;
  v11[3] = &unk_2787AB4F0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11];
}

- (void)updateLinkStatus:(int64_t)a3 forDataSession:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__WiFiAwarePublisher_updateLinkStatus_forDataSession___block_invoke;
  v9[3] = &unk_2787AB518;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9];
}

- (void)generateStatisticsReportForDataSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    xpcConnection = self->_xpcConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__WiFiAwarePublisher_generateStatisticsReportForDataSession_completionHandler___block_invoke;
    v11[3] = &unk_2787AB540;
    v12 = v6;
    v13 = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79__WiFiAwarePublisher_generateStatisticsReportForDataSession_completionHandler___block_invoke_3;
    v9[3] = &unk_2787AAC58;
    v10 = v13;
    [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11 clientCompletionHandler:v9];
  }
}

void __79__WiFiAwarePublisher_generateStatisticsReportForDataSession_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__WiFiAwarePublisher_generateStatisticsReportForDataSession_completionHandler___block_invoke_2;
  v8[3] = &unk_2787AAC08;
  v9 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  [a2 generateStatisticsReportForDataSession:v6 completionHandler:v8];
}

void __79__WiFiAwarePublisher_generateStatisticsReportForDataSession_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  if (!a2)
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __79__WiFiAwarePublisher_generateStatisticsReportForDataSession_completionHandler___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)generateDiversifiedPINForDataSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    xpcConnection = self->_xpcConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__WiFiAwarePublisher_generateDiversifiedPINForDataSession_completionHandler___block_invoke;
    v11[3] = &unk_2787AB540;
    v12 = v6;
    v13 = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__WiFiAwarePublisher_generateDiversifiedPINForDataSession_completionHandler___block_invoke_3;
    v9[3] = &unk_2787AAC58;
    v10 = v13;
    [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11 clientCompletionHandler:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "generateDiversifiedPINForDataSession: No completion handler provided!", buf, 2u);
  }
}

void __77__WiFiAwarePublisher_generateDiversifiedPINForDataSession_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__WiFiAwarePublisher_generateDiversifiedPINForDataSession_completionHandler___block_invoke_2;
  v8[3] = &unk_2787AACC8;
  v9 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  [a2 getDiversifiedPinCodeForDataSession:v6 completionHandler:v8];
}

void __77__WiFiAwarePublisher_generateDiversifiedPINForDataSession_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  if (!a2)
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __77__WiFiAwarePublisher_generateDiversifiedPINForDataSession_completionHandler___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)publishDataTerminatedForHandle:(id)a3 reason:(int64_t)a4
{
  v7 = a3;
  [(NSMutableArray *)self->_dataSessionHandles removeObject:?];
  v6 = [(WiFiAwarePublisher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 publisher:self dataTerminatedForHandle:v7 reason:a4];
  }
}

- (void)publishFailedToStartWithError:(int64_t)a3
{
  publishID = self->_publishID;
  self->_publishID = 0;

  v6 = [(WiFiAwarePublisher *)self delegate];
  [v6 publisher:self failedToStartWithError:a3];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (void)publishDetectedMulticastError:(int64_t)a3 fromMulticastReceiver:(id)a4
{
  v6 = a4;
  v7 = [(WiFiAwarePublisher *)self delegate];
  [v7 publisher:self detectedMulticastError:a3 fromMulticastReceiver:v6];
}

- (void)publishReceivedDataBlobForMulticastSession:(id)a3 fromPeer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WiFiAwarePublisher *)self delegate];
  [v8 publisher:self receivedDataBlobForMulticastSession:v7 fromPeer:v6];
}

- (void)publishTerminatedWithReason:(int64_t)a3
{
  publishID = self->_publishID;
  self->_publishID = 0;

  v6 = [(WiFiAwarePublisher *)self delegate];
  [v6 publisher:self terminatedWithReason:a3];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (void)publishPairingApprovalForSubscriber:(id)a3 withPairingMethod:(int64_t)a4 pairingSetupApprovalHandler:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v18 = a4;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Requesting for pair setup approval for subscriber with pairing method: %ld", buf, 0xCu);
  }

  v10 = [(WiFiAwarePublisher *)self configuration];
  v11 = [v10 datapathConfiguration];
  v12 = [v11 securityConfiguration];
  v13 = [v12 pairingDelegate];

  if (v13)
  {
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __104__WiFiAwarePublisher_publishPairingApprovalForSubscriber_withPairingMethod_pairingSetupApprovalHandler___block_invoke;
      v15[3] = &unk_2787AB568;
      v16 = v9;
      [v13 pairingRequestApprovalRequiredByPublisher:self forSubscriber:v8 withPairingMethod:a4 pairingSetupApprovalHandler:v15];
    }

    else
    {
      (*(v9 + 2))(v9, 1, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)publishPairingApprovalForSubscriber:(id)a3 withPairingMethod:(int64_t)a4 pairingSetupApprovalCompletion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v18 = a4;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Requesting for pair setup approval for subscriber with pairing method: %ld", buf, 0xCu);
  }

  v10 = [(WiFiAwarePublisher *)self configuration];
  v11 = [v10 datapathConfiguration];
  v12 = [v11 securityConfiguration];
  v13 = [v12 pairingDelegate];

  if (v13)
  {
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __107__WiFiAwarePublisher_publishPairingApprovalForSubscriber_withPairingMethod_pairingSetupApprovalCompletion___block_invoke;
      v15[3] = &unk_2787AB590;
      v16 = v9;
      [v13 pairingRequestApprovalRequiredByPublisher:self forSubscriber:v8 withPairingMethod:a4 pairingSetupApprovalCompletion:v15];
    }

    else
    {
      (*(v9 + 2))(v9, 1, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)publishPairingRequestIndicatedBySubscriber:(id)a3 withPairingMethod:(int64_t)a4 pairingAuthenticationGeneratedCompletionHandler:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v51 = a4;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "publishPairingRequestIndicatedBySubscriber with pairing method: %ld", buf, 0xCu);
  }

  v10 = [(WiFiAwarePublisher *)self configuration];
  v11 = [v10 datapathConfiguration];
  v12 = [v11 securityConfiguration];
  v13 = [v12 pairingDelegate];

  if (v13)
  {
    if (a4 <= 3)
    {
      if (a4 == 2)
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [MEMORY[0x277CCAB68] stringWithCapacity:6];
          v29 = [(WiFiAwarePublisher *)self configuration];
          v30 = [v29 datapathConfiguration];
          v31 = [v30 securityConfiguration];
          v32 = [v31 pairingPINCode];

          if (v32)
          {
            v33 = MEMORY[0x277CCAB68];
            v34 = [(WiFiAwarePublisher *)self configuration];
            v35 = [v34 datapathConfiguration];
            v36 = [v35 securityConfiguration];
            v37 = [v36 pairingPINCode];
            v38 = [v33 stringWithString:v37];

            v14 = v38;
          }

          else
          {
            v45 = 6;
            do
            {
              [v14 appendFormat:@"%d", arc4random_uniform(0xAu)];
              --v45;
            }

            while (v45);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invoking pairingAuthenticationGeneratedCompletionHandler callback", buf, 2u);
          }

          v46 = [v14 dataUsingEncoding:4];
          v9[2](v9, v46);

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invoking pairing delegate method pairingRequestIndicatedForPublisher for PIN", buf, 2u);
          }

          [v13 pairingRequestIndicatedForPublisher:self bySubscriber:v8 usingPINCode:v14];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Storing PIN code", buf, 2u);
          }

          v47 = [(WiFiAwarePublisher *)self configuration];
          v48 = [v47 datapathConfiguration];
          v49 = [v48 securityConfiguration];
          [v49 setPinCode:v14];

          goto LABEL_43;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 0;
        v41 = MEMORY[0x277D86220];
        v42 = "Pairing delegate does not implement method pairingRequestIndicatedForPublisher";
      }

      else
      {
        if (a4 != 3)
        {
          goto LABEL_11;
        }

        if (objc_opt_respondsToSelector())
        {
          v14 = [MEMORY[0x277CCAB68] stringWithCapacity:63];
          v15 = [(WiFiAwarePublisher *)self configuration];
          v16 = [v15 datapathConfiguration];
          v17 = [v16 securityConfiguration];
          v18 = [v17 pairingPassphrase];

          if (v18)
          {
            v19 = MEMORY[0x277CCAB68];
            v20 = [(WiFiAwarePublisher *)self configuration];
            v21 = [v20 datapathConfiguration];
            v22 = [v21 securityConfiguration];
            v23 = [v22 pairingPassphrase];
            v24 = [v19 stringWithString:v23];

            v14 = v24;
          }

          else
          {
            v43 = 8;
            do
            {
              [v14 appendFormat:@"%C", objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", "characterAtIndex:", arc4random_uniform(objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", "length")))];
              --v43;
            }

            while (v43);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invoking pairingAuthenticationGeneratedCompletionHandler callback", buf, 2u);
          }

          v44 = [v14 dataUsingEncoding:4];
          v9[2](v9, v44);

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invoking pairing delegate method pairingRequestIndicatedForPublisher for Passphrase", buf, 2u);
          }

          [v13 pairingRequestIndicatedForPublisher:self bySubscriber:v8 usingPassphrase:v14];
LABEL_43:

          goto LABEL_12;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 0;
        v41 = MEMORY[0x277D86220];
        v42 = "Pairing delegate does not implement method pairingRequestIndicatedForPublisher";
      }

      goto LABEL_45;
    }

    if (a4 != 4)
    {
      if (a4 != 5 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_11;
      }

      v26 = [MEMORY[0x277CCAD78] UUID];
      v27 = [v26 UUIDString];
      v28 = [v27 dataUsingEncoding:4];

      v9[2](v9, v28);
      [v13 pairingRequestIndicatedForPublisher:self bySubscriber:v8 usingNFCTag:v28];
LABEL_22:

      goto LABEL_12;
    }

    if (objc_opt_respondsToSelector())
    {
      v39 = [MEMORY[0x277CCAD78] UUID];
      v40 = [v39 UUIDString];
      v28 = [v40 dataUsingEncoding:4];

      v9[2](v9, v28);
      [v13 pairingRequestIndicatedForPublisher:self bySubscriber:v8 usingQRCodeInformation:v28];
      goto LABEL_22;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v41 = MEMORY[0x277D86220];
    v42 = "No pairing delegate, skipping invoking pairingRequestIndicatedForPublisher";
LABEL_45:
    _os_log_error_impl(&dword_22DFDF000, v41, OS_LOG_TYPE_ERROR, v42, buf, 2u);
  }

LABEL_11:
  v9[2](v9, 0);
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)publishPairingDidSucceedWithPairingKeyStoreID:(id)a3 deviceID:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "publishPairingDidSucceed PairingKeyStoreID: %@ DeviceID: %llu", &v12, 0x16u);
  }

  v7 = [(WiFiAwarePublisher *)self configuration];
  v8 = [v7 datapathConfiguration];
  v9 = [v8 securityConfiguration];
  v10 = [v9 pairingDelegate];

  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 pairingRequestCompletedForPublisher:self pairingKeyStoreID:v6 deviceID:a4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  publishID = self->_publishID;
  if (publishID)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", publishID];
  }

  else
  {
    v4 = @"unset";
  }

  maximumNANDataPath = self->_maximumNANDataPath;
  if (maximumNANDataPath && [(NSNumber *)maximumNANDataPath intValue]>= 1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_maximumNANDataPath];
  }

  else
  {
    v6 = @"unset";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(WiFiAwarePublisher *)self configuration];
  v9 = [v8 serviceName];
  v10 = [v7 stringWithFormat:@"<WiFiAwarePublisher: PublishID=%@, Service=%@, MaximumNANDataPathSupported=%@>", v4, v9, v6];

  return v10;
}

- (WiFiAwarePublisherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end