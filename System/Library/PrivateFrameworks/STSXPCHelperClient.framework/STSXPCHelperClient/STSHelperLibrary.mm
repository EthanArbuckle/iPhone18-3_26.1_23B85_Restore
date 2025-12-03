@interface STSHelperLibrary
- (BOOL)setupConnectWithXPCService;
- (STSHelperLibraryDelegateProtocol)delegate;
- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)connectToNotificationListener:(id)listener;
- (id)signalUnifiedAccessStepUpWithEventDictionary:(id)dictionary;
- (id)startBTDeviceWithServiceUUID:(id)d peripheralAddress:(id)address centralRole:(BOOL)role;
- (id)startBTReaderWithServiceUUID:(id)d peripheralAddress:(id)address centralRole:(BOOL)role;
- (id)startISO18013WithConnectionHandoverConfiguration:(unint64_t)configuration type:(unint64_t)type credentialType:(unsigned __int8)credentialType delegate:(id)delegate;
- (id)startISO18013WithConnectionHandoverConfiguration:(unint64_t)configuration type:(unint64_t)type delegate:(id)delegate;
- (id)startReaderSEProxyListener:(id)listener workQueue:(id)queue;
- (id)startSEProxyListener:(id)listener parameters:(id)parameters workQueue:(id)queue;
- (id)startWifiPublisherWithServiceName:(id)name datapathPMK:(id)k datapathPMKID:(id)d;
- (id)startWifiSubscriberWithServiceName:(id)name datapathPMK:(id)k datapathPMKID:(id)d;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)connectRemoteWithConnectionHandoverSelect:(id)select callbackQueue:(id)queue responseHandler:(id)handler;
- (void)connectRemoteWithQRCodeHandoverData:(id)data callbackQueue:(id)queue responseHandler:(id)handler;
- (void)didInvalidateXPC:(BOOL)c connection:(id)connection;
- (void)generateConnectionHandoverRequestWithQueue:(id)queue responseHandler:(id)handler;
- (void)generateQRCodeCHRequestAndStartACWithQueue:(id)queue responseHandler:(id)handler;
- (void)invalidate;
- (void)processConnectionHandoverRequest:(id)request callbackQueue:(id)queue responseHandler:(id)handler;
- (void)processConnectionHandoverRequestData:(id)data callbackQueue:(id)queue responseHandler:(id)handler;
- (void)processUnifiedAccessStepupAPDU:(id)u callbackQueue:(id)queue responseHandler:(id)handler;
- (void)stopReaderSEProxyListener;
- (void)stopSEProxyListener;
@end

@implementation STSHelperLibrary

- (id)startISO18013WithConnectionHandoverConfiguration:(unint64_t)configuration type:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSHelperLibrary startISO18013WithConnectionHandoverConfiguration:type:delegate:]", 70, self, @"configuration = 0x%x", v9, v10, configuration);
  v11 = _os_activity_create(&dword_2644F6000, "startISO18013WithConnectionHandoverConfiguration:type:delegate:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_type = type;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2644FB8B8;
  v14[3] = &unk_279B5FDD8;
  v14[4] = self;
  v14[5] = configuration;
  v14[6] = type;
  v12 = sub_2644FB7E4(v14);

  return v12;
}

- (id)startISO18013WithConnectionHandoverConfiguration:(unint64_t)configuration type:(unint64_t)type credentialType:(unsigned __int8)credentialType delegate:(id)delegate
{
  delegateCopy = delegate;
  sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSHelperLibrary startISO18013WithConnectionHandoverConfiguration:type:credentialType:delegate:]", 96, self, @"configuration = 0x%x", v11, v12, configuration);
  v13 = _os_activity_create(&dword_2644F6000, "startISO18013WithConnectionHandoverConfiguration:type:delegate:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_type = type;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2644FBBFC;
  v16[3] = &unk_279B5FE00;
  v16[4] = self;
  v16[5] = configuration;
  v16[6] = type;
  credentialTypeCopy = credentialType;
  v14 = sub_2644FB7E4(v16);

  return v14;
}

- (id)connectToNotificationListener:(id)listener
{
  listenerCopy = listener;
  v5 = _os_activity_create(&dword_2644F6000, "connectToNotificationListener:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2644FBEEC;
  v9[3] = &unk_279B5FE28;
  v9[4] = self;
  v10 = listenerCopy;
  v6 = listenerCopy;
  v7 = sub_2644FB7E4(v9);

  return v7;
}

- (void)processUnifiedAccessStepupAPDU:(id)u callbackQueue:(id)queue responseHandler:(id)handler
{
  uCopy = u;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_2644F6000, "processUnifiedAccessStepupAPDU:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = objc_msgSend_unifiedAccessHandler(selfCopy, v13, v14);

  if (!v15)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2644FC250;
    v19[3] = &unk_279B5FFB8;
    v19[4] = selfCopy;
    v20 = handlerCopy;
    dispatch_async(queueCopy, v19);
  }

  objc_sync_exit(selfCopy);

  v18 = objc_msgSend_unifiedAccessHandler(selfCopy, v16, v17);
  sub_26450429C(v18, uCopy, queueCopy, handlerCopy);
}

- (void)processConnectionHandoverRequest:(id)request callbackQueue:(id)queue responseHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  requestCopy = request;
  v11 = _os_activity_create(&dword_2644F6000, "processConnectionHandoverRequest:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2644FC574;
  v24[3] = &unk_279B5FE78;
  v25 = queueCopy;
  v26 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = MEMORY[0x26673B1B0](v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2644FC680;
  v22[3] = &unk_279B5FEA0;
  v22[4] = self;
  v15 = v14;
  v23 = v15;
  v17 = objc_msgSend_asynchronousRemoteObjectProxyWithErrorHandler_(self, v16, v22);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2644FC704;
  v20[3] = &unk_279B5FEC8;
  v21 = v15;
  v18 = v15;
  objc_msgSend_processAlternativeCarrierRequest_callback_(v17, v19, requestCopy, v20);
}

- (void)processConnectionHandoverRequestData:(id)data callbackQueue:(id)queue responseHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  dataCopy = data;
  v11 = _os_activity_create(&dword_2644F6000, "processConnectionHandoverRequestData:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2644FC8FC;
  v24[3] = &unk_279B5FF18;
  v25 = queueCopy;
  v26 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = MEMORY[0x26673B1B0](v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2644FCA20;
  v22[3] = &unk_279B5FEA0;
  v22[4] = self;
  v15 = v14;
  v23 = v15;
  v17 = objc_msgSend_asynchronousRemoteObjectProxyWithErrorHandler_(self, v16, v22);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2644FCAA8;
  v20[3] = &unk_279B5FF40;
  v21 = v15;
  v18 = v15;
  objc_msgSend_processHandoverRequest_callback_(v17, v19, dataCopy, v20);
}

- (void)generateConnectionHandoverRequestWithQueue:(id)queue responseHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_2644F6000, "generateConnectionHandoverRequestWithQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2644FCC84;
  v21[3] = &unk_279B5FF68;
  v22 = queueCopy;
  v23 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  v11 = MEMORY[0x26673B1B0](v21);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2644FCD90;
  v19[3] = &unk_279B5FEA0;
  v19[4] = self;
  v12 = v11;
  v20 = v12;
  v14 = objc_msgSend_asynchronousRemoteObjectProxyWithErrorHandler_(self, v13, v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2644FCE14;
  v17[3] = &unk_279B5FF90;
  v18 = v12;
  v15 = v12;
  objc_msgSend_generateHandoverRequestWithCallback_(v14, v16, v17);
}

- (void)generateQRCodeCHRequestAndStartACWithQueue:(id)queue responseHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_2644F6000, "generateQRCodeCHRequestAndStartACWithQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2644FCFF0;
  v21[3] = &unk_279B5FF68;
  v22 = queueCopy;
  v23 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  v11 = MEMORY[0x26673B1B0](v21);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2644FD0FC;
  v19[3] = &unk_279B5FEA0;
  v19[4] = self;
  v12 = v11;
  v20 = v12;
  v14 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v13, v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2644FD180;
  v17[3] = &unk_279B5FF90;
  v18 = v12;
  v15 = v12;
  objc_msgSend_generateQRCodeHandoverRequestWithCallback_(v14, v16, v17);
}

- (void)connectRemoteWithConnectionHandoverSelect:(id)select callbackQueue:(id)queue responseHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  selectCopy = select;
  v11 = _os_activity_create(&dword_2644F6000, "connectRemoteWithConnectionHandoverSelect:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2644FD370;
  v24[3] = &unk_279B5FEA0;
  v25 = queueCopy;
  v26 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = MEMORY[0x26673B1B0](v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2644FD454;
  v22[3] = &unk_279B5FEA0;
  v22[4] = self;
  v15 = v14;
  v23 = v15;
  v17 = objc_msgSend_asynchronousRemoteObjectProxyWithErrorHandler_(self, v16, v22);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2644FD4D4;
  v20[3] = &unk_279B5FFE0;
  v21 = v15;
  v18 = v15;
  objc_msgSend_processHandoverResponse_callback_(v17, v19, selectCopy, v20);
}

- (void)connectRemoteWithQRCodeHandoverData:(id)data callbackQueue:(id)queue responseHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  dataCopy = data;
  v11 = _os_activity_create(&dword_2644F6000, "connectRemoteWithQRCodeHandoverData:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2644FD6C4;
  v24[3] = &unk_279B5FEA0;
  v25 = queueCopy;
  v26 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = MEMORY[0x26673B1B0](v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2644FD7A8;
  v22[3] = &unk_279B5FEA0;
  v22[4] = self;
  v15 = v14;
  v23 = v15;
  v17 = objc_msgSend_asynchronousRemoteObjectProxyWithErrorHandler_(self, v16, v22);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2644FD828;
  v20[3] = &unk_279B5FFE0;
  v21 = v15;
  v18 = v15;
  objc_msgSend_processQRCodeHandoverRequestMessage_callback_(v17, v19, dataCopy, v20);
}

- (id)startSEProxyListener:(id)listener parameters:(id)parameters workQueue:(id)queue
{
  queueCopy = queue;
  listenerCopy = listener;
  v9 = _os_activity_create(&dword_2644F6000, "startSEProxyListener:parameters:workQueue:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v12 = objc_msgSend_seProxyListener(self, v10, v11);

  if (v12)
  {
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary startSEProxyListener:parameters:workQueue:]", 354, self, @"Replacing existig STSRemoteTransceiverProxyListener; invalidate existing copy", v13, v14, v30);
    v17 = objc_msgSend_seProxyListener(self, v15, v16);
    sub_264502408(v17, v18, v19);
  }

  v20 = [STSRemoteTransceiverProxyListener alloc];
  if (v20)
  {
    v21 = sub_2645022A4(&v20->super.isa, listenerCopy, 0, queueCopy);
  }

  else
  {
    v21 = 0;
  }

  objc_msgSend_setSeProxyListener_(self, v22, v21);
  v25 = objc_msgSend_seProxyListener(self, v23, v24);
  sub_264502394(v25, v26, v27);

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2644FD9CC;
  v31[3] = &unk_279B60008;
  v31[4] = self;
  v28 = sub_2644FB7E4(v31);

  return v28;
}

- (void)stopSEProxyListener
{
  v4 = objc_msgSend_seProxyListener(self, a2, v2);
  sub_264502408(v4, v5, v6);

  objc_msgSend_setSeProxyListener_(self, v7, 0);
}

- (id)startReaderSEProxyListener:(id)listener workQueue:(id)queue
{
  queueCopy = queue;
  listenerCopy = listener;
  v8 = _os_activity_create(&dword_2644F6000, "startReaderSEProxyListener:parameters:workQueue:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v33.opaque[0] = 0;
  v33.opaque[1] = 0;
  os_activity_scope_enter(v8, &v33);
  os_activity_scope_leave(&v33);

  v11 = objc_msgSend_seProxyListener(self, v9, v10);

  if (v11)
  {
    sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSHelperLibrary startReaderSEProxyListener:workQueue:]", 387, self, @"Replacing existig STSRemoteTransceiverProxyListener; invalidate existing copy", v12, v13, v33.opaque[0]);
    v16 = objc_msgSend_seProxyListener(self, v14, v15);
    sub_264502408(v16, v17, v18);
  }

  v19 = sub_2645022A4([STSRemoteTransceiverProxyListener alloc], listenerCopy, 1, queueCopy);

  objc_msgSend_setSeProxyListener_(self, v20, v19);
  v23 = objc_msgSend_seProxyListener(self, v21, v22);
  sub_264502394(v23, v24, v25);

  v28 = objc_msgSend_seProxyListener(self, v26, v27);
  v31 = sub_264502450(v28, v29, v30);

  return v31;
}

- (void)stopReaderSEProxyListener
{
  v4 = objc_msgSend_seProxyListener(self, a2, v2);
  sub_264502408(v4, v5, v6);

  objc_msgSend_setSeProxyListener_(self, v7, 0);
}

- (id)signalUnifiedAccessStepUpWithEventDictionary:(id)dictionary
{
  v47[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = _os_activity_create(&dword_2644F6000, "signalUnifiedAccessStepUpWithEventDictionary:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v46.opaque[0] = 0;
  v46.opaque[1] = 0;
  os_activity_scope_enter(v5, &v46);
  os_activity_scope_leave(&v46);

  if (objc_msgSend_type(self, v6, v7) == 2)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v8, @"endpointIdentifier");
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v12, @"sharedSecret");
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v16, @"appletIdentifier");
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v23 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v20, @"ProtocolVersion");
          if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v24 = v23;
          }

          else
          {
            sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary signalUnifiedAccessStepUpWithEventDictionary:]", 435, self, @"Invalid protocol version. Will assume legacy", v21, v22, v46.opaque[0]);
            v24 = &unk_2875FC4E8;
          }

          selfCopy = self;
          objc_sync_enter(selfCopy);
          v42 = sub_264502A80([STSUnifiedAccessHandler alloc], selfCopy, v19, v15, v11, v24);
          objc_msgSend_setUnifiedAccessHandler_(selfCopy, v43, v42);

          objc_sync_exit(selfCopy);
          v28 = 0;
        }

        else
        {
          sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary signalUnifiedAccessStepUpWithEventDictionary:]", 428, self, @"Invalid identifier.", v17, v18, v46.opaque[0]);
          v37 = MEMORY[0x277CCA9B8];
          v47[0] = *MEMORY[0x277CCA450];
          v46.opaque[0] = off_27FF71A78;
          v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v46, v47, 1);
          v28 = objc_msgSend_errorWithDomain_code_userInfo_(v37, v40, @"STSXPCHelperErrorDomain", 5, v39);
        }
      }

      else
      {
        sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary signalUnifiedAccessStepUpWithEventDictionary:]", 423, self, @"Invalid shared data.", v13, v14, v46.opaque[0]);
        v33 = MEMORY[0x277CCA9B8];
        v47[0] = *MEMORY[0x277CCA450];
        v46.opaque[0] = off_27FF71A78;
        v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, &v46, v47, 1);
        v28 = objc_msgSend_errorWithDomain_code_userInfo_(v33, v36, @"STSXPCHelperErrorDomain", 5, v35);
      }
    }

    else
    {
      sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary signalUnifiedAccessStepUpWithEventDictionary:]", 418, self, @"Invalid endpointID.", v9, v10, v46.opaque[0]);
      v29 = MEMORY[0x277CCA9B8];
      v47[0] = *MEMORY[0x277CCA450];
      v46.opaque[0] = off_27FF71A78;
      v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v46, v47, 1);
      v28 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v32, @"STSXPCHelperErrorDomain", 5, v31);
    }
  }

  else
  {
    v25 = MEMORY[0x277CCA9B8];
    v47[0] = *MEMORY[0x277CCA450];
    v46.opaque[0] = off_27FF71A60;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, &v46, v47, 1);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"STSXPCHelperErrorDomain", 2, v26);
  }

  v44 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)invalidate
{
  v3 = _os_activity_create(&dword_2644F6000, "invalidate:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_xpc)
  {
    objc_sync_exit(selfCopy);

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2644FE388;
    v14[3] = &unk_279B60008;
    v14[4] = selfCopy;
    v6 = sub_2644FB7E4(v14);
    v7 = selfCopy;
    objc_sync_enter(v7);
    objc_msgSend_setUnifiedAccessHandler_(v7, v8, 0);
    v11 = objc_msgSend_xpc(v7, v9, v10);
    objc_msgSend_invalidate(v11, v12, v13);

    objc_sync_exit(v7);
  }

  else
  {
    objc_msgSend_setUnifiedAccessHandler_(selfCopy, v5, 0);
    objc_sync_exit(selfCopy);
  }
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_setupConnectWithXPCService(selfCopy, v6, v7))
  {
    v10 = objc_msgSend_xpc(selfCopy, v8, v9);
    v12 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v11, handlerCopy);
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = off_27FF71A70;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v20, &v19, 1);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"STSXPCHelperErrorDomain", 4, v14);

    handlerCopy[2](handlerCopy, v16);
    v12 = 0;
  }

  objc_sync_exit(selfCopy);

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_setupConnectWithXPCService(selfCopy, v6, v7))
  {
    v10 = objc_msgSend_xpc(selfCopy, v8, v9);
    v12 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v11, handlerCopy);
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = off_27FF71A70;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v20, &v19, 1);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"STSXPCHelperErrorDomain", 4, v14);

    handlerCopy[2](handlerCopy, v16);
    v12 = 0;
  }

  objc_sync_exit(selfCopy);

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)setupConnectWithXPCService
{
  if (self->_xpc)
  {
    return 1;
  }

  v4 = objc_alloc(MEMORY[0x277CCAE80]);
  v6 = objc_msgSend_initWithServiceName_(v4, v5, @"com.apple.STSXPCHelper");
  xpc = self->_xpc;
  self->_xpc = v6;

  v10 = objc_msgSend__stsHelperInterface(self, v8, v9);
  objc_msgSend_setRemoteObjectInterface_(self->_xpc, v11, v10);

  v14 = objc_msgSend__stsHelperCallbackInterface(self, v12, v13);
  objc_msgSend_setExportedInterface_(self->_xpc, v15, v14);

  objc_msgSend_setExportedObject_(self->_xpc, v16, self);
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2644FEA40;
  v23[3] = &unk_279B60050;
  objc_copyWeak(&v24, &location);
  objc_msgSend_setInvalidationHandler_(self->_xpc, v17, v23);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2644FEAD4;
  v21[3] = &unk_279B60050;
  objc_copyWeak(&v22, &location);
  objc_msgSend_setInterruptionHandler_(self->_xpc, v18, v21);
  objc_msgSend_resume(self->_xpc, v19, v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
  return self->_xpc != 0;
}

- (void)didInvalidateXPC:(BOOL)c connection:(id)connection
{
  cCopy = c;
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (cCopy)
  {
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary didInvalidateXPC:connection:]", 557, selfCopy, @"XPC connection invalidated.  connection=%@", v7, v8, connectionCopy);
    objc_msgSend_stopSEProxyListener(selfCopy, v9, v10);
    objc_msgSend_setInvalidationHandler_(selfCopy->_xpc, v11, 0);
    objc_msgSend_setInterruptionHandler_(selfCopy->_xpc, v12, 0);
    xpc = selfCopy->_xpc;
    selfCopy->_xpc = 0;
  }

  else
  {
    sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSHelperLibrary didInvalidateXPC:connection:]", 565, selfCopy, @"XPC connection interrupted.  connection=%@", v7, v8, connectionCopy);
  }

  objc_sync_exit(selfCopy);
}

- (STSHelperLibraryDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)startWifiPublisherWithServiceName:(id)name datapathPMK:(id)k datapathPMKID:(id)d
{
  nameCopy = name;
  kCopy = k;
  dCopy = d;
  v11 = _os_activity_create(&dword_2644F6000, "startWifiPublisherWithServiceName:datapathPMK:dataPathPMKID:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2644FEED4;
  v17[3] = &unk_279B60078;
  v17[4] = self;
  v18 = nameCopy;
  v19 = kCopy;
  v20 = dCopy;
  v12 = dCopy;
  v13 = kCopy;
  v14 = nameCopy;
  v15 = sub_2644FB7E4(v17);

  return v15;
}

- (id)startWifiSubscriberWithServiceName:(id)name datapathPMK:(id)k datapathPMKID:(id)d
{
  nameCopy = name;
  kCopy = k;
  dCopy = d;
  v11 = _os_activity_create(&dword_2644F6000, "startWifiSubscriberWithServiceName:datapathPMK:dataPathPMKID:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2644FF1A4;
  v17[3] = &unk_279B60078;
  v17[4] = self;
  v18 = nameCopy;
  v19 = kCopy;
  v20 = dCopy;
  v12 = dCopy;
  v13 = kCopy;
  v14 = nameCopy;
  v15 = sub_2644FB7E4(v17);

  return v15;
}

- (id)startBTReaderWithServiceUUID:(id)d peripheralAddress:(id)address centralRole:(BOOL)role
{
  v23[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  addressCopy = address;
  v10 = _os_activity_create(&dword_2644F6000, "startBTReaderWithServiceUUID:peripheralAddrss:centralRole:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  if (dCopy | addressCopy)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2644FF504;
    v18[3] = &unk_279B600A0;
    v18[4] = self;
    roleCopy = role;
    v19 = dCopy;
    v20 = addressCopy;
    v15 = sub_2644FB7E4(v18);
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v23[0] = *MEMORY[0x277CCA450];
    state.opaque[0] = off_27FF71A78;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, &state, v23, 1);
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"STSXPCHelperErrorDomain", 5, v13);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)startBTDeviceWithServiceUUID:(id)d peripheralAddress:(id)address centralRole:(BOOL)role
{
  v23[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  addressCopy = address;
  v10 = _os_activity_create(&dword_2644F6000, "startBTDeviceWithServiceUUID:peripheralAddrss:centralRole:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  if (dCopy | addressCopy)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2644FF864;
    v18[3] = &unk_279B600A0;
    v18[4] = self;
    roleCopy = role;
    v19 = dCopy;
    v20 = addressCopy;
    v15 = sub_2644FB7E4(v18);
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v23[0] = *MEMORY[0x277CCA450];
    state.opaque[0] = off_27FF71A78;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, &state, v23, 1);
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"STSXPCHelperErrorDomain", 5, v13);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end