@interface STSRemoteTransceiverProxyListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
- (void)transceive:(id)transceive completion:(id)completion;
@end

@implementation STSRemoteTransceiverProxyListener

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_xpcListener;
  }

  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = selfCopy;
  v4.super_class = STSRemoteTransceiverProxyListener;
  [(STSRemoteTransceiverProxyListener *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v10 = objc_msgSend_processIdentifier(connectionCopy, v8, v9);
  sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSRemoteTransceiverProxyListener listener:shouldAcceptNewConnection:]", 74, self, @"Accepting new connection from pid %d", v11, v12, v10);
  if (!self || !self->_disableEntitlements)
  {
    v14 = sub_264505F28([STSXPCHelperClientEntitlementChecker alloc], connectionCopy);
    v17 = v14;
    if (!v14 || (v14[8] & 1) == 0)
    {
      sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSRemoteTransceiverProxyListener listener:shouldAcceptNewConnection:]", 80, self, @"Missing xpcHelperClientTransceiveProxyListenerAccess entitlement", v15, v16, v31);

      v29 = 0;
      goto LABEL_12;
    }
  }

  v18 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v13, &unk_2875FEF78);
  objc_msgSend_setExportedInterface_(connectionCopy, v19, v18);

  if (self)
  {
    objc_msgSend_addObject_(self->_xpcConnections, v20, connectionCopy);
  }

  else
  {
    objc_msgSend_addObject_(0, v20, connectionCopy);
  }

  objc_msgSend_setExportedObject_(connectionCopy, v21, self);
  objc_initWeak(&location, connectionCopy);
  objc_initWeak(&from, self);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_264502750;
  v35[3] = &unk_279B600F0;
  v35[4] = self;
  objc_copyWeak(&v36, &from);
  objc_copyWeak(&v37, &location);
  objc_msgSend_setInvalidationHandler_(connectionCopy, v22, v35);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2645027F4;
  v32[3] = &unk_279B600F0;
  v32[4] = self;
  objc_copyWeak(&v33, &from);
  objc_copyWeak(&v34, &location);
  objc_msgSend_setInterruptionHandler_(connectionCopy, v23, v32);
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v25 = workQueue;
  objc_msgSend__setQueue_(connectionCopy, v26, v25);

  objc_msgSend_resume(connectionCopy, v27, v28);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  v29 = 1;
LABEL_12:

  return v29;
}

- (void)transceive:(id)transceive completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  transceiveCopy = transceive;
  completionCopy = completion;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_delegate)) != 0)
  {
    v12 = WeakRetained;
    v20 = 0;
    v13 = objc_msgSend_transceiveWithData_outError_(WeakRetained, v11, transceiveCopy, &v20);
    v14 = v20;
    completionCopy[2](completionCopy, v13, v14);
  }

  else
  {
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSRemoteTransceiverProxyListener transceive:completion:]", 125, self, @"Invalid state", v7, v8, v20);
    v15 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = off_27FF71A60;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v22, &v21, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"STSXPCHelperErrorDomain", 2, v17);

    completionCopy[2](completionCopy, 0, v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end