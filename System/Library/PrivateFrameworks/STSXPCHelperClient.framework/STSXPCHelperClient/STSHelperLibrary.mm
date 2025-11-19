@interface STSHelperLibrary
- (BOOL)setupConnectWithXPCService;
- (STSHelperLibraryDelegateProtocol)delegate;
- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)connectToNotificationListener:(id)a3;
- (id)signalUnifiedAccessStepUpWithEventDictionary:(id)a3;
- (id)startBTDeviceWithServiceUUID:(id)a3 peripheralAddress:(id)a4 centralRole:(BOOL)a5;
- (id)startBTReaderWithServiceUUID:(id)a3 peripheralAddress:(id)a4 centralRole:(BOOL)a5;
- (id)startISO18013WithConnectionHandoverConfiguration:(unint64_t)a3 type:(unint64_t)a4 credentialType:(unsigned __int8)a5 delegate:(id)a6;
- (id)startISO18013WithConnectionHandoverConfiguration:(unint64_t)a3 type:(unint64_t)a4 delegate:(id)a5;
- (id)startReaderSEProxyListener:(id)a3 workQueue:(id)a4;
- (id)startSEProxyListener:(id)a3 parameters:(id)a4 workQueue:(id)a5;
- (id)startWifiPublisherWithServiceName:(id)a3 datapathPMK:(id)a4 datapathPMKID:(id)a5;
- (id)startWifiSubscriberWithServiceName:(id)a3 datapathPMK:(id)a4 datapathPMKID:(id)a5;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)connectRemoteWithConnectionHandoverSelect:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5;
- (void)connectRemoteWithQRCodeHandoverData:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5;
- (void)didInvalidateXPC:(BOOL)a3 connection:(id)a4;
- (void)generateConnectionHandoverRequestWithQueue:(id)a3 responseHandler:(id)a4;
- (void)generateQRCodeCHRequestAndStartACWithQueue:(id)a3 responseHandler:(id)a4;
- (void)invalidate;
- (void)processConnectionHandoverRequest:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5;
- (void)processConnectionHandoverRequestData:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5;
- (void)processUnifiedAccessStepupAPDU:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5;
- (void)stopReaderSEProxyListener;
- (void)stopSEProxyListener;
@end

@implementation STSHelperLibrary

- (id)startISO18013WithConnectionHandoverConfiguration:(unint64_t)a3 type:(unint64_t)a4 delegate:(id)a5
{
  v8 = a5;
  sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSHelperLibrary startISO18013WithConnectionHandoverConfiguration:type:delegate:]", 70, self, @"configuration = 0x%x", v9, v10, a3);
  v11 = _os_activity_create(&dword_2644F6000, "startISO18013WithConnectionHandoverConfiguration:type:delegate:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  objc_storeWeak(&self->_delegate, v8);
  self->_type = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2644FB8B8;
  v14[3] = &unk_279B5FDD8;
  v14[4] = self;
  v14[5] = a3;
  v14[6] = a4;
  v12 = sub_2644FB7E4(v14);

  return v12;
}

- (id)startISO18013WithConnectionHandoverConfiguration:(unint64_t)a3 type:(unint64_t)a4 credentialType:(unsigned __int8)a5 delegate:(id)a6
{
  v10 = a6;
  sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSHelperLibrary startISO18013WithConnectionHandoverConfiguration:type:credentialType:delegate:]", 96, self, @"configuration = 0x%x", v11, v12, a3);
  v13 = _os_activity_create(&dword_2644F6000, "startISO18013WithConnectionHandoverConfiguration:type:delegate:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  objc_storeWeak(&self->_delegate, v10);
  self->_type = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2644FBBFC;
  v16[3] = &unk_279B5FE00;
  v16[4] = self;
  v16[5] = a3;
  v16[6] = a4;
  v17 = a5;
  v14 = sub_2644FB7E4(v16);

  return v14;
}

- (id)connectToNotificationListener:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v6 = v4;
  v7 = sub_2644FB7E4(v9);

  return v7;
}

- (void)processUnifiedAccessStepupAPDU:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_2644F6000, "processUnifiedAccessStepupAPDU:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v12 = self;
  objc_sync_enter(v12);
  v15 = objc_msgSend_unifiedAccessHandler(v12, v13, v14);

  if (!v15)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2644FC250;
    v19[3] = &unk_279B5FFB8;
    v19[4] = v12;
    v20 = v10;
    dispatch_async(v9, v19);
  }

  objc_sync_exit(v12);

  v18 = objc_msgSend_unifiedAccessHandler(v12, v16, v17);
  sub_26450429C(v18, v8, v9, v10);
}

- (void)processConnectionHandoverRequest:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _os_activity_create(&dword_2644F6000, "processConnectionHandoverRequest:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2644FC574;
  v24[3] = &unk_279B5FE78;
  v25 = v8;
  v26 = v9;
  v12 = v9;
  v13 = v8;
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
  objc_msgSend_processAlternativeCarrierRequest_callback_(v17, v19, v10, v20);
}

- (void)processConnectionHandoverRequestData:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _os_activity_create(&dword_2644F6000, "processConnectionHandoverRequestData:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2644FC8FC;
  v24[3] = &unk_279B5FF18;
  v25 = v8;
  v26 = v9;
  v12 = v9;
  v13 = v8;
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
  objc_msgSend_processHandoverRequest_callback_(v17, v19, v10, v20);
}

- (void)generateConnectionHandoverRequestWithQueue:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_2644F6000, "generateConnectionHandoverRequestWithQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2644FCC84;
  v21[3] = &unk_279B5FF68;
  v22 = v6;
  v23 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)generateQRCodeCHRequestAndStartACWithQueue:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_2644F6000, "generateQRCodeCHRequestAndStartACWithQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2644FCFF0;
  v21[3] = &unk_279B5FF68;
  v22 = v6;
  v23 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)connectRemoteWithConnectionHandoverSelect:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _os_activity_create(&dword_2644F6000, "connectRemoteWithConnectionHandoverSelect:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2644FD370;
  v24[3] = &unk_279B5FEA0;
  v25 = v8;
  v26 = v9;
  v12 = v9;
  v13 = v8;
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
  objc_msgSend_processHandoverResponse_callback_(v17, v19, v10, v20);
}

- (void)connectRemoteWithQRCodeHandoverData:(id)a3 callbackQueue:(id)a4 responseHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _os_activity_create(&dword_2644F6000, "connectRemoteWithQRCodeHandoverData:callbackQueue:responseHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2644FD6C4;
  v24[3] = &unk_279B5FEA0;
  v25 = v8;
  v26 = v9;
  v12 = v9;
  v13 = v8;
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
  objc_msgSend_processQRCodeHandoverRequestMessage_callback_(v17, v19, v10, v20);
}

- (id)startSEProxyListener:(id)a3 parameters:(id)a4 workQueue:(id)a5
{
  v7 = a5;
  v8 = a3;
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
    v21 = sub_2645022A4(&v20->super.isa, v8, 0, v7);
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

- (id)startReaderSEProxyListener:(id)a3 workQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
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

  v19 = sub_2645022A4([STSRemoteTransceiverProxyListener alloc], v7, 1, v6);

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

- (id)signalUnifiedAccessStepUpWithEventDictionary:(id)a3
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _os_activity_create(&dword_2644F6000, "signalUnifiedAccessStepUpWithEventDictionary:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v46.opaque[0] = 0;
  v46.opaque[1] = 0;
  os_activity_scope_enter(v5, &v46);
  os_activity_scope_leave(&v46);

  if (objc_msgSend_type(self, v6, v7) == 2)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(v4, v8, @"endpointIdentifier");
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(v4, v12, @"sharedSecret");
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(v4, v16, @"appletIdentifier");
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v23 = objc_msgSend_objectForKeyedSubscript_(v4, v20, @"ProtocolVersion");
          if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v24 = v23;
          }

          else
          {
            sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary signalUnifiedAccessStepUpWithEventDictionary:]", 435, self, @"Invalid protocol version. Will assume legacy", v21, v22, v46.opaque[0]);
            v24 = &unk_2875FC4E8;
          }

          v41 = self;
          objc_sync_enter(v41);
          v42 = sub_264502A80([STSUnifiedAccessHandler alloc], v41, v19, v15, v11, v24);
          objc_msgSend_setUnifiedAccessHandler_(v41, v43, v42);

          objc_sync_exit(v41);
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

  v4 = self;
  objc_sync_enter(v4);
  if (v4->_xpc)
  {
    objc_sync_exit(v4);

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2644FE388;
    v14[3] = &unk_279B60008;
    v14[4] = v4;
    v6 = sub_2644FB7E4(v14);
    v7 = v4;
    objc_sync_enter(v7);
    objc_msgSend_setUnifiedAccessHandler_(v7, v8, 0);
    v11 = objc_msgSend_xpc(v7, v9, v10);
    objc_msgSend_invalidate(v11, v12, v13);

    objc_sync_exit(v7);
  }

  else
  {
    objc_msgSend_setUnifiedAccessHandler_(v4, v5, 0);
    objc_sync_exit(v4);
  }
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (objc_msgSend_setupConnectWithXPCService(v5, v6, v7))
  {
    v10 = objc_msgSend_xpc(v5, v8, v9);
    v12 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v11, v4);
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = off_27FF71A70;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v20, &v19, 1);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"STSXPCHelperErrorDomain", 4, v14);

    v4[2](v4, v16);
    v12 = 0;
  }

  objc_sync_exit(v5);

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (objc_msgSend_setupConnectWithXPCService(v5, v6, v7))
  {
    v10 = objc_msgSend_xpc(v5, v8, v9);
    v12 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v11, v4);
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = off_27FF71A70;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v20, &v19, 1);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"STSXPCHelperErrorDomain", 4, v14);

    v4[2](v4, v16);
    v12 = 0;
  }

  objc_sync_exit(v5);

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

- (void)didInvalidateXPC:(BOOL)a3 connection:(id)a4
{
  v4 = a3;
  v14 = a4;
  v6 = self;
  objc_sync_enter(v6);
  if (v4)
  {
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary didInvalidateXPC:connection:]", 557, v6, @"XPC connection invalidated.  connection=%@", v7, v8, v14);
    objc_msgSend_stopSEProxyListener(v6, v9, v10);
    objc_msgSend_setInvalidationHandler_(v6->_xpc, v11, 0);
    objc_msgSend_setInterruptionHandler_(v6->_xpc, v12, 0);
    xpc = v6->_xpc;
    v6->_xpc = 0;
  }

  else
  {
    sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSHelperLibrary didInvalidateXPC:connection:]", 565, v6, @"XPC connection interrupted.  connection=%@", v7, v8, v14);
  }

  objc_sync_exit(v6);
}

- (STSHelperLibraryDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)startWifiPublisherWithServiceName:(id)a3 datapathPMK:(id)a4 datapathPMKID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = sub_2644FB7E4(v17);

  return v15;
}

- (id)startWifiSubscriberWithServiceName:(id)a3 datapathPMK:(id)a4 datapathPMKID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = sub_2644FB7E4(v17);

  return v15;
}

- (id)startBTReaderWithServiceUUID:(id)a3 peripheralAddress:(id)a4 centralRole:(BOOL)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_2644F6000, "startBTReaderWithServiceUUID:peripheralAddrss:centralRole:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  if (v8 | v9)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2644FF504;
    v18[3] = &unk_279B600A0;
    v18[4] = self;
    v21 = a5;
    v19 = v8;
    v20 = v9;
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

- (id)startBTDeviceWithServiceUUID:(id)a3 peripheralAddress:(id)a4 centralRole:(BOOL)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_2644F6000, "startBTDeviceWithServiceUUID:peripheralAddrss:centralRole:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  if (v8 | v9)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2644FF864;
    v18[3] = &unk_279B600A0;
    v18[4] = self;
    v21 = a5;
    v19 = v8;
    v20 = v9;
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