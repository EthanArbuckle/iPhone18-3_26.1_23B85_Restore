@interface SPRObject
- (NSString)proxyDescription;
- (SPRObject)initWithConnector:(id)connector;
- (id)asyncProxyWithErrorHandler:(id)handler;
- (id)connectAndReturnError:(id *)error;
- (id)connectionWithErrorHandler:(id)handler;
- (id)mapXPCConnectionError:(id)error;
- (id)syncProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SPRObject

- (SPRObject)initWithConnector:(id)connector
{
  v4 = MEMORY[0x26D666F80](connector, a2);
  connector = self->_connector;
  self->_connector = v4;

  connection = self->_connection;
  self->_connection = 0;

  return self;
}

- (void)dealloc
{
  if (self->_connection)
  {
    v6 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], a2, v2, v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_26AA7E544(self, v6, v7, v8, v9);
    }
  }

  v10.receiver = self;
  v10.super_class = SPRObject;
  [(SPRObject *)&v10 dealloc];
}

- (NSString)proxyDescription
{
  v2 = objc_opt_class();
  v7 = objc_msgSend_description(v2, v3, v4, v5, v6);
  v10 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v8, @"SPR", @"Remote", v9);

  return v10;
}

- (id)connectAndReturnError:(id *)error
{
  selfCopy = self;
  if (!self->_connection)
  {
    connector = self->_connector;
    v5 = (*(selfCopy->_connector + 2))();
    connection = selfCopy->_connection;
    selfCopy->_connection = v5;

    if (!selfCopy->_connection)
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)syncProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_connectionWithErrorHandler_(self, v5, handlerCopy, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A94CD7C;
  v15[3] = &unk_279CA5F20;
  v15[4] = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v13 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v8, v10, v15, v11, v12);

  return v13;
}

- (id)asyncProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_connectionWithErrorHandler_(self, v5, handlerCopy, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A94CEB0;
  v15[3] = &unk_279CA5F20;
  v15[4] = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v13 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v10, v15, v11, v12);

  return v13;
}

- (id)mapXPCConnectionError:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v9 = objc_msgSend_domain(errorCopy, v5, v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x277CCA050], v11, v12);

  if (isEqualToString && (objc_msgSend_code(errorCopy, v14, v15, v16, v17) | 2) == 0x1003)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_connection)
    {
      v23 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v19, v20, v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_msgSend_proxyDescription(selfCopy, v24, v25, v26, v27);
        sub_26AA7E5F4(v28, v45, v23);
      }

      connection = selfCopy->_connection;
      selfCopy->_connection = 0;

      objc_msgSend_onDisconnect(selfCopy, v30, v31, v32, v33);
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v34, @"SoftPosReader", 14001, 0);
    }

    else
    {
      v36 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v19, v20, v21, v22);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_msgSend_proxyDescription(selfCopy, v37, v38, v39, v40);
        sub_26AA7E64C(v41, v45, v36);
      }

      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v42, @"SoftPosReader", 14002, 0);
    }
    v35 = ;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v35 = errorCopy;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)connectionWithErrorHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  if (!connection)
  {
    for (i = 1; ; ++i)
    {
      v8 = (*(selfCopy->_connector + 2))();
      v9 = 0;
      v10 = selfCopy->_connection;
      selfCopy->_connection = v8;

      if (selfCopy->_connection)
      {
        break;
      }

      if (i == 3)
      {
        handlerCopy[2](handlerCopy, v9);
        goto LABEL_10;
      }

      objc_msgSend_sleepForTimeInterval_(MEMORY[0x277CCACC8], v11, v12, v13, v14, i * 0.1);
    }

    v15 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v11, v12, v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = objc_msgSend_proxyDescription(selfCopy, v16, v17, v18, v19);
      *buf = 138412290;
      v25 = v20;
      _os_log_impl(&dword_26A93A000, v15, OS_LOG_TYPE_INFO, "%@ connected", buf, 0xCu);
    }

LABEL_10:
    connection = selfCopy->_connection;
  }

  v21 = connection;
  objc_sync_exit(selfCopy);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  connection = obj->_connection;
  obj->_connection = 0;

  objc_msgSend_onDisconnect(obj, v3, v4, v5, v6);
  objc_sync_exit(obj);
}

@end