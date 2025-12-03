@interface STSRemoteTransceiverProxy
- (STSRemoteTransceiverProxy)initWithListenerEndpoint:(id)endpoint;
- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)transceive:(id)transceive outError:(id *)error;
- (void)dealloc;
@end

@implementation STSRemoteTransceiverProxy

- (STSRemoteTransceiverProxy)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSRemoteTransceiverProxy initWithListenerEndpoint:]", 24, self, @"endpoint=%@", v5, v6, endpointCopy);
  v21.receiver = self;
  v21.super_class = STSRemoteTransceiverProxy;
  v7 = [(STSRemoteTransceiverProxy *)&v21 init];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAE80]);
    v10 = objc_msgSend_initWithListenerEndpoint_(v8, v9, endpointCopy);
    xpc = v7->_xpc;
    v7->_xpc = v10;

    v13 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v12, &unk_2875FEF78);
    objc_msgSend_setRemoteObjectInterface_(v7->_xpc, v14, v13);

    objc_msgSend_setExportedObject_(v7->_xpc, v15, v7);
    objc_msgSend_setInterruptionHandler_(v7->_xpc, v16, &unk_2875F97F0);
    objc_msgSend_setInvalidationHandler_(v7->_xpc, v17, &unk_2875F9730);
    objc_msgSend_resume(v7->_xpc, v18, v19);
  }

  return v7;
}

- (void)dealloc
{
  v4 = objc_msgSend_xpc(self, a2, v2);
  objc_msgSend_invalidate(v4, v5, v6);

  v7.receiver = self;
  v7.super_class = STSRemoteTransceiverProxy;
  [(STSRemoteTransceiverProxy *)&v7 dealloc];
}

- (id)transceive:(id)transceive outError:(id *)error
{
  transceiveCopy = transceive;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_26450209C;
  v27 = sub_2645020AC;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_26450209C;
  v21 = sub_2645020AC;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2645020B4;
  v16[3] = &unk_279B5FD88;
  v16[4] = self;
  v16[5] = &v23;
  v8 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v7, v16);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26450212C;
  v15[3] = &unk_279B600C8;
  v15[4] = &v23;
  v15[5] = &v17;
  objc_msgSend_transceive_completion_(v8, v9, transceiveCopy, v15);

  if (v24[5])
  {
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSRemoteTransceiverProxy transceive:outError:]", 64, self, @"error=%@", v10, v11, v24[5]);
    v12 = v24[5];
  }

  else
  {
    v12 = 0;
  }

  *error = v12;
  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_xpc(self, v5, v6);
  v9 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v7, v8, handlerCopy);

  return v9;
}

- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_xpc(self, v5, v6);
  v9 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v8, handlerCopy);

  return v9;
}

@end