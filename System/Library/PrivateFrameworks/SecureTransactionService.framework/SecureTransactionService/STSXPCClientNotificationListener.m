@interface STSXPCClientNotificationListener
- (BOOL)connected;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSXPCListenerEndpoint)xpcEndpoint;
- (STSXPCClientNotificationListener)initWithDelegate:(id)a3 queue:(id)a4;
- (STSXPCClientNotificationListenerDelegate)delegate;
- (id)_asynchronousRemoteProxyWithErrorHandler:(id)a3;
- (id)_generateFromCredRequest:(id)a3;
- (id)_stsHandoverNotificationListenerCallbackProtocol;
- (id)_stsHandoverNotificationListenerProtocol;
- (id)_synchronousRemoteProxyWithErrorHandler:(id)a3;
- (id)startHandoff;
- (unint64_t)_translateFromCarrierConnectionStatus:(unint64_t)a3;
- (void)_executeWhenXPCAvailable:(id)a3;
- (void)activateISO18013CredentialWithIdentifier:(id)a3 elementSelection:(id)a4 authData:(id)a5 completion:(id)a6;
- (void)alternativeCarrierConnectedWithStatus:(unint64_t)a3;
- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)a3;
- (void)alternativerCarrierSend:(id)a3 completion:(id)a4;
- (void)connectionEstablishedWithSTSReaderCryptarch:(id)a3 sessionTranscriptBytes:(id)a4;
- (void)dealloc;
- (void)invalidateXPCConnection;
- (void)iso18013DecryptedDeviceResponse:(id)a3 sessionDataStatus:(id)a4 mDocResponseStatus:(id)a5 error:(id)a6;
- (void)processCredentialRequestList:(id)a3 readerAuthInfo:(id)a4;
- (void)sendConnectionHandoverCompleted;
- (void)sendConnectionHandoverStarted;
- (void)sendISO18013SessionData:(id)a3 status:(id)a4 completion:(id)a5;
- (void)sendISO18013SessionEstablishment:(id)a3 completion:(id)a4;
- (void)testGetRemoteTransceiverProxyXPCEndpointWithType:(unint64_t)a3 completion:(id)a4;
- (void)transactionEndedWithIdentifier:(id)a3 error:(id)a4;
- (void)transactionStarted:(unint64_t)a3;
@end

@implementation STSXPCClientNotificationListener

- (STSXPCClientNotificationListener)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = STSXPCClientNotificationListener;
  v8 = [(STSXPCClientNotificationListener *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_callbackQueue, a4);
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
  v2 = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_265383F40;
  v5[3] = &unk_279B93D88;
  v5[4] = self;
  os_unfair_lock_lock(&self->_xpcUpdateLock);
  v3 = sub_265383F40(v5);
  os_unfair_lock_unlock(&v2->_xpcUpdateLock);
  LOBYTE(v2) = [v3 BOOLValue];

  return v2;
}

- (void)_executeWhenXPCAvailable:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = sub_2653840B0;
  v9 = &unk_279B93DB0;
  v10 = self;
  v12 = &v13;
  v5 = v4;
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

- (void)alternativerCarrierSend:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_265384218;
  v11[3] = &unk_279B93E28;
  v13 = v8;
  v14 = a2;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  v10 = v8;
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

- (void)activateISO18013CredentialWithIdentifier:(id)a3 elementSelection:(id)a4 authData:(id)a5 completion:(id)a6
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = sub_265387464([STSCredentialSelect alloc], v14, v13, v12);

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_265384C38;
  v18[3] = &unk_279B93DD8;
  v18[4] = self;
  v19 = v11;
  v20 = a2;
  v16 = v11;
  v17 = [(STSXPCClientNotificationListener *)self _asynchronousRemoteProxyWithErrorHandler:v18];
  [v17 sendCredentialSelect:v15 callback:v16];
}

- (void)sendISO18013SessionEstablishment:(id)a3 completion:(id)a4
{
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_265384F38;
  v14[3] = &unk_279B93DD8;
  v14[4] = self;
  v8 = v7;
  v15 = v8;
  v16 = a2;
  v9 = a3;
  v10 = [(STSXPCClientNotificationListener *)self _asynchronousRemoteProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_265385110;
  v12[3] = &unk_279B93E00;
  v13 = v8;
  v11 = v8;
  [v10 iso18013ReaderSendSessionEstablishment:v9 callback:v12];
}

- (void)sendISO18013SessionData:(id)a3 status:(id)a4 completion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_265385264;
  v17[3] = &unk_279B93DD8;
  v17[4] = self;
  v10 = v9;
  v18 = v10;
  v19 = a2;
  v11 = a4;
  v12 = a3;
  v13 = [(STSXPCClientNotificationListener *)self _asynchronousRemoteProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26538543C;
  v15[3] = &unk_279B93E00;
  v16 = v10;
  v14 = v10;
  [v13 iso18013ReaderSendSessionData:v12 status:v11 callback:v15];
}

- (void)testGetRemoteTransceiverProxyXPCEndpointWithType:(unint64_t)a3 completion:(id)a4
{
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_265385570;
  v13[3] = &unk_279B93DD8;
  v13[4] = self;
  v8 = v7;
  v14 = v8;
  v15 = a2;
  v9 = [(STSXPCClientNotificationListener *)self _asynchronousRemoteProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26538574C;
  v11[3] = &unk_279B93EA0;
  v12 = v8;
  v10 = v8;
  [v9 getRemoteTransceiverProxyXPCEndpointWithType:a3 == 0 callback:v11];
}

- (void)invalidateXPCConnection
{
  v3 = [(STSXPCClientNotificationListener *)self xpcConnection];
  [v3 invalidate];

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(STSXPCClientNotificationListener *)v2 xpc];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCAE98] anonymousListener];
    [(STSXPCClientNotificationListener *)v2 setXpc:v4];

    v5 = [(STSXPCClientNotificationListener *)v2 xpc];
    [v5 setDelegate:v2];

    v6 = [(STSXPCClientNotificationListener *)v2 xpc];
    [v6 resume];
  }

  v7 = [(STSXPCClientNotificationListener *)v2 xpc];
  v8 = [v7 endpoint];

  objc_sync_exit(v2);

  return v8;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2653859C4;
  v12 = &unk_279B93EF0;
  v13 = self;
  v14 = v5;
  v6 = v5;
  os_unfair_lock_lock(&self->_xpcUpdateLock);
  v7 = sub_2653859C4(&v9);
  os_unfair_lock_unlock(&self->_xpcUpdateLock);
  LOBYTE(self) = [v7 BOOLValue];

  return self;
}

- (void)transactionStarted:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_2653A6F60[a3 - 1];
  }

  v4 = [(STSXPCClientNotificationListener *)self delegate];
  [v4 transactionStarted:v3];
}

- (void)processCredentialRequestList:(id)a3 readerAuthInfo:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = [(STSXPCClientNotificationListener *)self delegate];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v47 = v10;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v48 = v6;
    v12 = v6;
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

    if (v7)
    {
      v21 = *(v7 + 10);
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
    if (v7)
    {
      v30 = *(v7 + 1);
      v31 = *(v7 + 2);
      v32 = *(v7 + 3);
      v33 = *(v7 + 4);
      v43 = *(v7 + 5);
      v42 = *(v7 + 6);
      v34 = *(v7 + 7);
      v35 = *(v7 + 8);
      v36 = *(v7 + 9);
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

    v6 = v48;
    v37 = v36;
    v41 = v33;
    v38 = [(STS18013ReaderAuthInfo *)v44 initWithIdentifier:v30 organization:v31 organizationUnit:v32 iconData:v33 iconURL:v43 iconMediaType:v42 privacyPolicyURL:v34 merchantCategoryCode:v35 certificateData:v37 readerAnalyticsData:v49];

    v10 = v47;
    [v47 processISO18013CredentialProposals:v45 readerAuthInfo:v38];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener processCredentialRequestList:readerAuthInfo:]", 321, self, @"Not implemented", v8, v9, v40);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)transactionEndedWithIdentifier:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STSXPCClientNotificationListener *)self delegate];
  [v8 transactionEndedWithIdentifier:v7 error:v6];
}

- (void)alternativeCarrierConnectedWithStatus:(unint64_t)a3
{
  v5 = [(STSXPCClientNotificationListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 alternativeCarrierConnectedWithStatus:{-[STSXPCClientNotificationListener _translateFromCarrierConnectionStatus:](self, "_translateFromCarrierConnectionStatus:", a3)}];
  }
}

- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)a3
{
  v5 = [(STSXPCClientNotificationListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 alternativeCarrierDisconnectedWithStatus:{-[STSXPCClientNotificationListener _translateFromCarrierConnectionStatus:](self, "_translateFromCarrierConnectionStatus:", a3)}];
  }
}

- (void)iso18013DecryptedDeviceResponse:(id)a3 sessionDataStatus:(id)a4 mDocResponseStatus:(id)a5 error:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(STSXPCClientNotificationListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 receiveISO18013DeviceResponse:v14 sessionDataStatus:v10 mDocResponseStatus:v11 error:v12];
  }
}

- (void)connectionEstablishedWithSTSReaderCryptarch:(id)a3 sessionTranscriptBytes:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(STSXPCClientNotificationListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 connectionEstablishedWithSTSReaderCryptarch:v8 sessionTranscript:v6];
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

- (id)_generateFromCredRequest:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = objc_opt_new();
    v6 = 0;
    goto LABEL_5;
  }

  if (!v3[1])
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

- (unint64_t)_translateFromCarrierConnectionStatus:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_2653A6F80[a3 - 1];
  }
}

- (id)_synchronousRemoteProxyWithErrorHandler:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_265386D24;
  v9[3] = &unk_279B93F40;
  v9[4] = self;
  v10 = v5;
  v11 = a2;
  v6 = v5;
  os_unfair_lock_lock(&self->_xpcUpdateLock);
  v7 = sub_265386D24(v9);
  os_unfair_lock_unlock(&self->_xpcUpdateLock);

  return v7;
}

- (id)_asynchronousRemoteProxyWithErrorHandler:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2653870B4;
  v9[3] = &unk_279B93F40;
  v9[4] = self;
  v10 = v5;
  v11 = a2;
  v6 = v5;
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