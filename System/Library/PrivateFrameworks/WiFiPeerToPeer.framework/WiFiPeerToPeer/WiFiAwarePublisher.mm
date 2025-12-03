@interface WiFiAwarePublisher
- (NSString)description;
- (WiFiAwarePublisher)initWithConfiguration:(id)configuration;
- (WiFiAwarePublisherDelegate)delegate;
- (void)generateDiversifiedPINForDataSession:(id)session completionHandler:(id)handler;
- (void)generateStatisticsReportForDataSession:(id)session completionHandler:(id)handler;
- (void)handleError:(int64_t)error;
- (void)publishDataTerminatedForHandle:(id)handle reason:(int64_t)reason;
- (void)publishDetectedMulticastError:(int64_t)error fromMulticastReceiver:(id)receiver;
- (void)publishFailedToStartWithError:(int64_t)error;
- (void)publishPairingApprovalForSubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingSetupApprovalCompletion:(id)completion;
- (void)publishPairingApprovalForSubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingSetupApprovalHandler:(id)handler;
- (void)publishPairingDidSucceedWithPairingKeyStoreID:(id)d deviceID:(unint64_t)iD;
- (void)publishPairingRequestIndicatedBySubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingAuthenticationGeneratedCompletionHandler:(id)handler;
- (void)publishReceivedDataBlobForMulticastSession:(id)session fromPeer:(id)peer;
- (void)publishTerminatedWithReason:(int64_t)reason;
- (void)reportIssue:(id)issue forDataSession:(id)session;
- (void)sendDataBlobForMulticastSession:(id)session toPeerAddress:(id)address usingMulticastAddress:(unsigned __int8)multicastAddress completionHandler:(id)handler;
- (void)sendMessage:(id)message toPeerAddress:(id)address withInstanceID:(unsigned __int8)d completionHandler:(id)handler;
- (void)startConnectionUsingProxy:(id)proxy completionHandler:(id)handler;
- (void)terminateDataSession:(id)session completionHandler:(id)handler;
- (void)terminateMulticastSession:(id)session completionHandler:(id)handler;
- (void)updateDatapathServiceSpecificInfo:(id)info completionHandler:(id)handler;
- (void)updateLinkStatus:(int64_t)status forDataSession:(id)session;
- (void)updateServiceSpecificInfo:(id)info completionHandler:(id)handler;
- (void)updateTimeout:(unint64_t)timeout completionHandler:(id)handler;
@end

@implementation WiFiAwarePublisher

- (WiFiAwarePublisher)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = WiFiAwarePublisher;
  v5 = [(WiFiAwarePublisher *)&v16 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
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

- (void)handleError:(int64_t)error
{
  delegate = [(WiFiAwarePublisher *)self delegate];
  v7 = delegate;
  if (self->_publishID)
  {
    [delegate publisher:self terminatedWithReason:-1];
  }

  else
  {
    [delegate publisher:self failedToStartWithError:error];
  }

  publishID = self->_publishID;
  self->_publishID = 0;
}

- (void)startConnectionUsingProxy:(id)proxy completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  handlerCopy = handler;
  delegate = [(WiFiAwarePublisher *)self delegate];
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

        [delegate publisher:self dataTerminatedForHandle:*(*(&v16 + 1) + 8 * v13++) reason:{-1, v16}];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_dataSessionHandles removeAllObjects];
  configuration = [(WiFiAwarePublisher *)self configuration];
  [proxyCopy createPublishWithConfiguration:configuration completionHandler:handlerCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message toPeerAddress:(id)address withInstanceID:(unsigned __int8)d completionHandler:(id)handler
{
  messageCopy = message;
  addressCopy = address;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__WiFiAwarePublisher_sendMessage_toPeerAddress_withInstanceID_completionHandler___block_invoke;
  v15[3] = &unk_2787AB430;
  v16 = messageCopy;
  v17 = addressCopy;
  dCopy = d;
  v13 = addressCopy;
  v14 = messageCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:handler];
}

- (void)sendDataBlobForMulticastSession:(id)session toPeerAddress:(id)address usingMulticastAddress:(unsigned __int8)multicastAddress completionHandler:(id)handler
{
  sessionCopy = session;
  addressCopy = address;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__WiFiAwarePublisher_sendDataBlobForMulticastSession_toPeerAddress_usingMulticastAddress_completionHandler___block_invoke;
  v15[3] = &unk_2787AB430;
  v16 = sessionCopy;
  v17 = addressCopy;
  multicastAddressCopy = multicastAddress;
  v13 = addressCopy;
  v14 = sessionCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:handler];
}

- (void)terminateDataSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__WiFiAwarePublisher_terminateDataSession_completionHandler___block_invoke;
  v9[3] = &unk_2787AB458;
  v10 = sessionCopy;
  v8 = sessionCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9 clientCompletionHandler:handler];
}

- (void)terminateMulticastSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__WiFiAwarePublisher_terminateMulticastSession_completionHandler___block_invoke;
  v9[3] = &unk_2787AB458;
  v10 = sessionCopy;
  v8 = sessionCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9 clientCompletionHandler:handler];
}

- (void)updateServiceSpecificInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  selfCopy = self;
  xpcConnection = selfCopy->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__WiFiAwarePublisher_updateServiceSpecificInfo_completionHandler___block_invoke;
  v11[3] = &unk_2787AB4A8;
  v12 = infoCopy;
  v13 = selfCopy;
  v9 = selfCopy;
  v10 = infoCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11 clientCompletionHandler:handler];
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

- (void)updateDatapathServiceSpecificInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  selfCopy = self;
  xpcConnection = selfCopy->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__WiFiAwarePublisher_updateDatapathServiceSpecificInfo_completionHandler___block_invoke;
  v11[3] = &unk_2787AB4A8;
  v12 = infoCopy;
  v13 = selfCopy;
  v9 = selfCopy;
  v10 = infoCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11 clientCompletionHandler:handler];
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

- (void)updateTimeout:(unint64_t)timeout completionHandler:(id)handler
{
  xpcConnection = self->_xpcConnection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__WiFiAwarePublisher_updateTimeout_completionHandler___block_invoke;
  v5[3] = &__block_descriptor_40_e43_v24__0___WiFiAwarePublisherXPC__8___v__q_16l;
  v5[4] = timeout;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v5 clientCompletionHandler:handler];
}

- (void)reportIssue:(id)issue forDataSession:(id)session
{
  issueCopy = issue;
  sessionCopy = session;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__WiFiAwarePublisher_reportIssue_forDataSession___block_invoke;
  v11[3] = &unk_2787AB4F0;
  v12 = issueCopy;
  v13 = sessionCopy;
  v9 = sessionCopy;
  v10 = issueCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11];
}

- (void)updateLinkStatus:(int64_t)status forDataSession:(id)session
{
  sessionCopy = session;
  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__WiFiAwarePublisher_updateLinkStatus_forDataSession___block_invoke;
  v9[3] = &unk_2787AB518;
  v10 = sessionCopy;
  statusCopy = status;
  v8 = sessionCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9];
}

- (void)generateStatisticsReportForDataSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  if (handlerCopy)
  {
    xpcConnection = self->_xpcConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__WiFiAwarePublisher_generateStatisticsReportForDataSession_completionHandler___block_invoke;
    v11[3] = &unk_2787AB540;
    v12 = sessionCopy;
    v13 = handlerCopy;
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

- (void)generateDiversifiedPINForDataSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  if (handlerCopy)
  {
    xpcConnection = self->_xpcConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__WiFiAwarePublisher_generateDiversifiedPINForDataSession_completionHandler___block_invoke;
    v11[3] = &unk_2787AB540;
    v12 = sessionCopy;
    v13 = handlerCopy;
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

- (void)publishDataTerminatedForHandle:(id)handle reason:(int64_t)reason
{
  handleCopy = handle;
  [(NSMutableArray *)self->_dataSessionHandles removeObject:?];
  delegate = [(WiFiAwarePublisher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate publisher:self dataTerminatedForHandle:handleCopy reason:reason];
  }
}

- (void)publishFailedToStartWithError:(int64_t)error
{
  publishID = self->_publishID;
  self->_publishID = 0;

  delegate = [(WiFiAwarePublisher *)self delegate];
  [delegate publisher:self failedToStartWithError:error];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (void)publishDetectedMulticastError:(int64_t)error fromMulticastReceiver:(id)receiver
{
  receiverCopy = receiver;
  delegate = [(WiFiAwarePublisher *)self delegate];
  [delegate publisher:self detectedMulticastError:error fromMulticastReceiver:receiverCopy];
}

- (void)publishReceivedDataBlobForMulticastSession:(id)session fromPeer:(id)peer
{
  peerCopy = peer;
  sessionCopy = session;
  delegate = [(WiFiAwarePublisher *)self delegate];
  [delegate publisher:self receivedDataBlobForMulticastSession:sessionCopy fromPeer:peerCopy];
}

- (void)publishTerminatedWithReason:(int64_t)reason
{
  publishID = self->_publishID;
  self->_publishID = 0;

  delegate = [(WiFiAwarePublisher *)self delegate];
  [delegate publisher:self terminatedWithReason:reason];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (void)publishPairingApprovalForSubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingSetupApprovalHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    methodCopy = method;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Requesting for pair setup approval for subscriber with pairing method: %ld", buf, 0xCu);
  }

  configuration = [(WiFiAwarePublisher *)self configuration];
  datapathConfiguration = [configuration datapathConfiguration];
  securityConfiguration = [datapathConfiguration securityConfiguration];
  pairingDelegate = [securityConfiguration pairingDelegate];

  if (pairingDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __104__WiFiAwarePublisher_publishPairingApprovalForSubscriber_withPairingMethod_pairingSetupApprovalHandler___block_invoke;
      v15[3] = &unk_2787AB568;
      v16 = handlerCopy;
      [pairingDelegate pairingRequestApprovalRequiredByPublisher:self forSubscriber:subscriberCopy withPairingMethod:method pairingSetupApprovalHandler:v15];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 1, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)publishPairingApprovalForSubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingSetupApprovalCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    methodCopy = method;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Requesting for pair setup approval for subscriber with pairing method: %ld", buf, 0xCu);
  }

  configuration = [(WiFiAwarePublisher *)self configuration];
  datapathConfiguration = [configuration datapathConfiguration];
  securityConfiguration = [datapathConfiguration securityConfiguration];
  pairingDelegate = [securityConfiguration pairingDelegate];

  if (pairingDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __107__WiFiAwarePublisher_publishPairingApprovalForSubscriber_withPairingMethod_pairingSetupApprovalCompletion___block_invoke;
      v15[3] = &unk_2787AB590;
      v16 = completionCopy;
      [pairingDelegate pairingRequestApprovalRequiredByPublisher:self forSubscriber:subscriberCopy withPairingMethod:method pairingSetupApprovalCompletion:v15];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)publishPairingRequestIndicatedBySubscriber:(id)subscriber withPairingMethod:(int64_t)method pairingAuthenticationGeneratedCompletionHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    methodCopy = method;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "publishPairingRequestIndicatedBySubscriber with pairing method: %ld", buf, 0xCu);
  }

  configuration = [(WiFiAwarePublisher *)self configuration];
  datapathConfiguration = [configuration datapathConfiguration];
  securityConfiguration = [datapathConfiguration securityConfiguration];
  pairingDelegate = [securityConfiguration pairingDelegate];

  if (pairingDelegate)
  {
    if (method <= 3)
    {
      if (method == 2)
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [MEMORY[0x277CCAB68] stringWithCapacity:6];
          configuration2 = [(WiFiAwarePublisher *)self configuration];
          datapathConfiguration2 = [configuration2 datapathConfiguration];
          securityConfiguration2 = [datapathConfiguration2 securityConfiguration];
          pairingPINCode = [securityConfiguration2 pairingPINCode];

          if (pairingPINCode)
          {
            v33 = MEMORY[0x277CCAB68];
            configuration3 = [(WiFiAwarePublisher *)self configuration];
            datapathConfiguration3 = [configuration3 datapathConfiguration];
            securityConfiguration3 = [datapathConfiguration3 securityConfiguration];
            pairingPINCode2 = [securityConfiguration3 pairingPINCode];
            v38 = [v33 stringWithString:pairingPINCode2];

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
          handlerCopy[2](handlerCopy, v46);

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invoking pairing delegate method pairingRequestIndicatedForPublisher for PIN", buf, 2u);
          }

          [pairingDelegate pairingRequestIndicatedForPublisher:self bySubscriber:subscriberCopy usingPINCode:v14];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Storing PIN code", buf, 2u);
          }

          configuration4 = [(WiFiAwarePublisher *)self configuration];
          datapathConfiguration4 = [configuration4 datapathConfiguration];
          securityConfiguration4 = [datapathConfiguration4 securityConfiguration];
          [securityConfiguration4 setPinCode:v14];

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
        if (method != 3)
        {
          goto LABEL_11;
        }

        if (objc_opt_respondsToSelector())
        {
          v14 = [MEMORY[0x277CCAB68] stringWithCapacity:63];
          configuration5 = [(WiFiAwarePublisher *)self configuration];
          datapathConfiguration5 = [configuration5 datapathConfiguration];
          securityConfiguration5 = [datapathConfiguration5 securityConfiguration];
          pairingPassphrase = [securityConfiguration5 pairingPassphrase];

          if (pairingPassphrase)
          {
            v19 = MEMORY[0x277CCAB68];
            configuration6 = [(WiFiAwarePublisher *)self configuration];
            datapathConfiguration6 = [configuration6 datapathConfiguration];
            securityConfiguration6 = [datapathConfiguration6 securityConfiguration];
            pairingPassphrase2 = [securityConfiguration6 pairingPassphrase];
            v24 = [v19 stringWithString:pairingPassphrase2];

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
          handlerCopy[2](handlerCopy, v44);

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invoking pairing delegate method pairingRequestIndicatedForPublisher for Passphrase", buf, 2u);
          }

          [pairingDelegate pairingRequestIndicatedForPublisher:self bySubscriber:subscriberCopy usingPassphrase:v14];
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

    if (method != 4)
    {
      if (method != 5 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_11;
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v28 = [uUIDString dataUsingEncoding:4];

      handlerCopy[2](handlerCopy, v28);
      [pairingDelegate pairingRequestIndicatedForPublisher:self bySubscriber:subscriberCopy usingNFCTag:v28];
LABEL_22:

      goto LABEL_12;
    }

    if (objc_opt_respondsToSelector())
    {
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      uUIDString2 = [uUID2 UUIDString];
      v28 = [uUIDString2 dataUsingEncoding:4];

      handlerCopy[2](handlerCopy, v28);
      [pairingDelegate pairingRequestIndicatedForPublisher:self bySubscriber:subscriberCopy usingQRCodeInformation:v28];
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
  handlerCopy[2](handlerCopy, 0);
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)publishPairingDidSucceedWithPairingKeyStoreID:(id)d deviceID:(unint64_t)iD
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = dCopy;
    v14 = 2048;
    iDCopy = iD;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "publishPairingDidSucceed PairingKeyStoreID: %@ DeviceID: %llu", &v12, 0x16u);
  }

  configuration = [(WiFiAwarePublisher *)self configuration];
  datapathConfiguration = [configuration datapathConfiguration];
  securityConfiguration = [datapathConfiguration securityConfiguration];
  pairingDelegate = [securityConfiguration pairingDelegate];

  if (pairingDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [pairingDelegate pairingRequestCompletedForPublisher:self pairingKeyStoreID:dCopy deviceID:iD];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  publishID = self->_publishID;
  if (publishID)
  {
    publishID = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", publishID];
  }

  else
  {
    publishID = @"unset";
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
  configuration = [(WiFiAwarePublisher *)self configuration];
  serviceName = [configuration serviceName];
  v10 = [v7 stringWithFormat:@"<WiFiAwarePublisher: PublishID=%@, Service=%@, MaximumNANDataPathSupported=%@>", publishID, serviceName, v6];

  return v10;
}

- (WiFiAwarePublisherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end