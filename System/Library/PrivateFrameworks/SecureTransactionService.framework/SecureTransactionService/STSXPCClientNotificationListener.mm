@interface STSXPCClientNotificationListener
- (BOOL)connected;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCListenerEndpoint)xpcEndpoint;
- (STSXPCClientNotificationListener)initWithDelegate:(id)delegate queue:(id)queue;
- (STSXPCClientNotificationListenerDelegate)delegate;
- (id)_asynchronousRemoteProxyWithErrorHandler:(id)handler;
- (id)_generateFromCredRequest:(id)request;
- (id)_stsHandoverNotificationListenerCallbackProtocol;
- (id)_stsHandoverNotificationListenerProtocol;
- (id)_synchronousRemoteProxyWithErrorHandler:(id)handler;
- (id)startHandoff;
- (unint64_t)_translateFromCarrierConnectionStatus:(unint64_t)status;
- (void)_executeWhenXPCAvailable:(id)available;
- (void)activateISO18013CredentialWithIdentifier:(id)identifier elementSelection:(id)selection authData:(id)data completion:(id)completion;
- (void)alternativeCarrierConnectedWithStatus:(unint64_t)status;
- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)status;
- (void)alternativerCarrierSend:(id)send completion:(id)completion;
- (void)connectionEstablishedWithSTSReaderCryptarch:(id)cryptarch sessionTranscriptBytes:(id)bytes;
- (void)dealloc;
- (void)invalidateXPCConnection;
- (void)iso18013DecryptedDeviceResponse:(id)response sessionDataStatus:(id)status mDocResponseStatus:(id)responseStatus error:(id)error;
- (void)processCredentialRequestList:(id)list readerAuthInfo:(id)info;
- (void)sendConnectionHandoverCompleted;
- (void)sendConnectionHandoverStarted;
- (void)sendISO18013SessionData:(id)data status:(id)status completion:(id)completion;
- (void)sendISO18013SessionEstablishment:(id)establishment completion:(id)completion;
- (void)testGetRemoteTransceiverProxyXPCEndpointWithType:(unint64_t)type completion:(id)completion;
- (void)transactionEndedWithIdentifier:(id)identifier error:(id)error;
- (void)transactionStarted:(unint64_t)started;
@end

@implementation STSXPCClientNotificationListener

- (STSXPCClientNotificationListener)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = STSXPCClientNotificationListener;
  v8 = [(STSXPCClientNotificationListener *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_callbackQueue, queue);
    if (!v9->_callbackQueue)
    {
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);

      v12 = dispatch_queue_create("STSHelperNotificaitonListener", v11);
      callbackQueue = v9->_callbackQueue;
      v9->_callbackQueue = v12;
    }

    v9->_xpcUpdateLock._os_unfair_lock_opaque = 0;
    v14 = objc_opt_new();
    delayWork = v9->_delayWork;
    v9->_delayWork = v14;
  }

  return v9;
}

- (BOOL)connected
{
  selfCopy = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_265383F40;
  v5[3] = &unk_279B93D88;
  v5[4] = self;
  os_unfair_lock_lock(&self->_xpcUpdateLock);
  v3 = sub_265383F40(v5);
  os_unfair_lock_unlock(&selfCopy->_xpcUpdateLock);
  LOBYTE(selfCopy) = [v3 BOOLValue];

  return selfCopy;
}

- (void)_executeWhenXPCAvailable:(id)available
{
  availableCopy = available;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = sub_2653840B0;
  v9 = &unk_279B93DB0;
  selfCopy = self;
  v12 = &v13;
  v5 = availableCopy;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_xpcUpdateLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_xpcUpdateLock);

  if (*(v14 + 24) == 1)
  {
    v5[2](v5);
  }

  _Block_object_dispose(&v13, 8);
}

- (void)alternativerCarrierSend:(id)send completion:(id)completion
{
  sendCopy = send;
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_265384218;
  v11[3] = &unk_279B93E28;
  v13 = completionCopy;
  v14 = a2;
  v11[4] = self;
  v12 = sendCopy;
  v9 = sendCopy;
  v10 = completionCopy;
  [(STSXPCClientNotificationListener *)self _executeWhenXPCAvailable:v11];
}

- (void)sendConnectionHandoverStarted
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_265384580;
  v2[3] = &unk_279B93910;
  v2[4] = self;
  [(STSXPCClientNotificationListener *)self _executeWhenXPCAvailable:v2];
}

- (void)sendConnectionHandoverCompleted
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2653846B8;
  v2[3] = &unk_279B93910;
  v2[4] = self;
  [(STSXPCClientNotificationListener *)self _executeWhenXPCAvailable:v2];
}

- (id)startHandoff
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_26538489C;
  v11 = sub_2653848AC;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_265384A88;
  v6[3] = &unk_279B93E50;
  v6[4] = self;
  v6[5] = &v7;
  v2 = [(STSXPCClientNotificationListener *)self _synchronousRemoteProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_265384B00;
  v5[3] = &unk_279B93E78;
  v5[4] = &v7;
  [v2 startHandoffWithCompletion:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (void)activateISO18013CredentialWithIdentifier:(id)identifier elementSelection:(id)selection authData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  selectionCopy = selection;
  identifierCopy = identifier;
  v15 = sub_265387464([STSCredentialSelect alloc], identifierCopy, selectionCopy, dataCopy);

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_265384C38;
  v18[3] = &unk_279B93DD8;
  v18[4] = self;
  v19 = completionCopy;
  v20 = a2;
  v16 = completionCopy;
  v17 = [(STSXPCClientNotificationListener *)self _asynchronousRemoteProxyWithErrorHandler:v18];
  [v17 sendCredentialSelect:v15 callback:v16];
}

- (void)sendISO18013SessionEstablishment:(id)establishment completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_265384F38;
  v14[3] = &unk_279B93DD8;
  v14[4] = self;
  v8 = completionCopy;
  v15 = v8;
  v16 = a2;
  establishmentCopy = establishment;
  v10 = [(STSXPCClientNotificationListener *)self _asynchronousRemoteProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_265385110;
  v12[3] = &unk_279B93E00;
  v13 = v8;
  v11 = v8;
  [v10 iso18013ReaderSendSessionEstablishment:establishmentCopy callback:v12];
}

- (void)sendISO18013SessionData:(id)data status:(id)status completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_265385264;
  v17[3] = &unk_279B93DD8;
  v17[4] = self;
  v10 = completionCopy;
  v18 = v10;
  v19 = a2;
  statusCopy = status;
  dataCopy = data;
  v13 = [(STSXPCClientNotificationListener *)self _asynchronousRemoteProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26538543C;
  v15[3] = &unk_279B93E00;
  v16 = v10;
  v14 = v10;
  [v13 iso18013ReaderSendSessionData:dataCopy status:statusCopy callback:v15];
}

- (void)testGetRemoteTransceiverProxyXPCEndpointWithType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_265385570;
  v13[3] = &unk_279B93DD8;
  v13[4] = self;
  v8 = completionCopy;
  v14 = v8;
  v15 = a2;
  v9 = [(STSXPCClientNotificationListener *)self _asynchronousRemoteProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26538574C;
  v11[3] = &unk_279B93EA0;
  v12 = v8;
  v10 = v8;
  [v9 getRemoteTransceiverProxyXPCEndpointWithType:type == 0 callback:v11];
}

- (void)invalidateXPCConnection
{
  xpcConnection = [(STSXPCClientNotificationListener *)self xpcConnection];
  [xpcConnection invalidate];

  [(STSXPCClientNotificationListener *)self setXpcConnection:0];
}

- (void)dealloc
{
  v3 = [(STSXPCClientNotificationListener *)self xpc];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = STSXPCClientNotificationListener;
  [(STSXPCClientNotificationListener *)&v4 dealloc];
}

- (NSXPCListenerEndpoint)xpcEndpoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(STSXPCClientNotificationListener *)selfCopy xpc];

  if (!v3)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    [(STSXPCClientNotificationListener *)selfCopy setXpc:anonymousListener];

    v5 = [(STSXPCClientNotificationListener *)selfCopy xpc];
    [v5 setDelegate:selfCopy];

    v6 = [(STSXPCClientNotificationListener *)selfCopy xpc];
    [v6 resume];
  }

  v7 = [(STSXPCClientNotificationListener *)selfCopy xpc];
  endpoint = [v7 endpoint];

  objc_sync_exit(selfCopy);

  return endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2653859C4;
  v12 = &unk_279B93EF0;
  selfCopy = self;
  v14 = connectionCopy;
  v6 = connectionCopy;
  os_unfair_lock_lock(&self->_xpcUpdateLock);
  v7 = sub_2653859C4(&v9);
  os_unfair_lock_unlock(&self->_xpcUpdateLock);
  LOBYTE(self) = [v7 BOOLValue];

  return self;
}

- (void)transactionStarted:(unint64_t)started
{
  if (started - 1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_2653A6F60[started - 1];
  }

  delegate = [(STSXPCClientNotificationListener *)self delegate];
  [delegate transactionStarted:v3];
}

- (void)processCredentialRequestList:(id)list readerAuthInfo:(id)info
{
  v55 = *MEMORY[0x277D85DE8];
  listCopy = list;
  infoCopy = info;
  delegate = [(STSXPCClientNotificationListener *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v47 = delegate;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v48 = listCopy;
    v12 = listCopy;
    v13 = [v12 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v13)
    {
      v16 = v13;
      v17 = *v51;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v50 + 1) + 8 * i);
          if (v19 && *(v19 + 8))
          {
            sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCClientNotificationListener processCredentialRequestList:readerAuthInfo:]", 328, self, @"Unexpected type=%lu", v14, v15, *(v19 + 8));
          }

          else
          {
            v20 = [(STSXPCClientNotificationListener *)self _generateFromCredRequest:?];
            if (v20)
            {
              [v11 addObject:v20];
            }
          }
        }

        v16 = [v12 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v16);
    }

    if (infoCopy)
    {
      v21 = *(infoCopy + 10);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [STS18013ReaderAnalyticsData alloc];
    if (v22)
    {
      v24 = *(v22 + 8);
      v25 = *(v22 + 2);
      v26 = *(v22 + 3);
      v27 = *(v22 + 4);
      v28 = *(v22 + 5);
    }

    else
    {
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v26 = 0;
      v28 = 0;
    }

    v29 = v28;
    v49 = [(STS18013ReaderAnalyticsData *)v23 initWithTrusted:v24 & 1 untrustedIdentifier:v25 untrustedOrganization:v26 untrustedIssuerIdentifier:v27 untrustedIssuerOrganization:v29];

    v45 = [v11 copy];
    v44 = [STS18013ReaderAuthInfo alloc];
    v46 = v22;
    if (infoCopy)
    {
      v30 = *(infoCopy + 1);
      v31 = *(infoCopy + 2);
      v32 = *(infoCopy + 3);
      v33 = *(infoCopy + 4);
      v43 = *(infoCopy + 5);
      v42 = *(infoCopy + 6);
      v34 = *(infoCopy + 7);
      v35 = *(infoCopy + 8);
      v36 = *(infoCopy + 9);
    }

    else
    {
      v35 = 0;
      v42 = 0;
      v43 = 0;
      v33 = 0;
      v31 = 0;
      v30 = 0;
      v32 = 0;
      v34 = 0;
      v36 = 0;
    }

    listCopy = v48;
    v37 = v36;
    v41 = v33;
    v38 = [(STS18013ReaderAuthInfo *)v44 initWithIdentifier:v30 organization:v31 organizationUnit:v32 iconData:v33 iconURL:v43 iconMediaType:v42 privacyPolicyURL:v34 merchantCategoryCode:v35 certificateData:v37 readerAnalyticsData:v49];

    delegate = v47;
    [v47 processISO18013CredentialProposals:v45 readerAuthInfo:v38];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener processCredentialRequestList:readerAuthInfo:]", 321, self, @"Not implemented", v8, v9, v40);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)transactionEndedWithIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  identifierCopy = identifier;
  delegate = [(STSXPCClientNotificationListener *)self delegate];
  [delegate transactionEndedWithIdentifier:identifierCopy error:errorCopy];
}

- (void)alternativeCarrierConnectedWithStatus:(unint64_t)status
{
  delegate = [(STSXPCClientNotificationListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alternativeCarrierConnectedWithStatus:{-[STSXPCClientNotificationListener _translateFromCarrierConnectionStatus:](self, "_translateFromCarrierConnectionStatus:", status)}];
  }
}

- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)status
{
  delegate = [(STSXPCClientNotificationListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alternativeCarrierDisconnectedWithStatus:{-[STSXPCClientNotificationListener _translateFromCarrierConnectionStatus:](self, "_translateFromCarrierConnectionStatus:", status)}];
  }
}

- (void)iso18013DecryptedDeviceResponse:(id)response sessionDataStatus:(id)status mDocResponseStatus:(id)responseStatus error:(id)error
{
  responseCopy = response;
  statusCopy = status;
  responseStatusCopy = responseStatus;
  errorCopy = error;
  delegate = [(STSXPCClientNotificationListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate receiveISO18013DeviceResponse:responseCopy sessionDataStatus:statusCopy mDocResponseStatus:responseStatusCopy error:errorCopy];
  }
}

- (void)connectionEstablishedWithSTSReaderCryptarch:(id)cryptarch sessionTranscriptBytes:(id)bytes
{
  cryptarchCopy = cryptarch;
  bytesCopy = bytes;
  delegate = [(STSXPCClientNotificationListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate connectionEstablishedWithSTSReaderCryptarch:cryptarchCopy sessionTranscript:bytesCopy];
  }
}

- (id)_stsHandoverNotificationListenerProtocol
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876F0BD8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_processCredentialRequestList_readerAuthInfo_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)_stsHandoverNotificationListenerCallbackProtocol
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876F5470];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_sendCredentialSelect_callback_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)_generateFromCredRequest:(id)request
{
  requestCopy = request;
  v4 = requestCopy;
  if (!requestCopy)
  {
    v5 = objc_opt_new();
    v6 = 0;
    goto LABEL_5;
  }

  if (!requestCopy[1])
  {
    v5 = objc_opt_new();
    v6 = *(v4 + 2);
LABEL_5:
    v7 = v6;
    [v5 setCredentialIdentifier:v7];

    if (v4)
    {
      v8 = *(v4 + 4);
      [v5 setAuthenticationACL:v8];

      v9 = *(v4 + 6);
    }

    else
    {
      [v5 setAuthenticationACL:0];
      v9 = 0;
    }

    v10 = v9;
    [v5 setDocType:v10];

    v11 = objc_opt_new();
    if (v4)
    {
      v12 = *(v4 + 3);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_265386A88;
    v17[3] = &unk_279B93F18;
    v18 = v11;
    v14 = v11;
    [v13 enumerateKeysAndObjectsUsingBlock:v17];

    v15 = [v14 copy];
    [v5 setElementsByNamespace:v15];

    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (unint64_t)_translateFromCarrierConnectionStatus:(unint64_t)status
{
  if (status - 1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_2653A6F80[status - 1];
  }
}

- (id)_synchronousRemoteProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_265386D24;
  v9[3] = &unk_279B93F40;
  v9[4] = self;
  v10 = handlerCopy;
  v11 = a2;
  v6 = handlerCopy;
  os_unfair_lock_lock(&self->_xpcUpdateLock);
  v7 = sub_265386D24(v9);
  os_unfair_lock_unlock(&self->_xpcUpdateLock);

  return v7;
}

- (id)_asynchronousRemoteProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2653870B4;
  v9[3] = &unk_279B93F40;
  v9[4] = self;
  v10 = handlerCopy;
  v11 = a2;
  v6 = handlerCopy;
  os_unfair_lock_lock(&self->_xpcUpdateLock);
  v7 = sub_2653870B4(v9);
  os_unfair_lock_unlock(&self->_xpcUpdateLock);

  return v7;
}

- (STSXPCClientNotificationListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end