@interface SPRObject
- (NSString)proxyDescription;
- (SPRObject)initWithConnector:(id)a3;
- (id)asyncProxyWithErrorHandler:(id)a3;
- (id)connectAndReturnError:(id *)a3;
- (id)connectionWithErrorHandler:(id)a3;
- (id)mapXPCConnectionError:(id)a3;
- (id)syncProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SPRObject

- (SPRObject)initWithConnector:(id)a3
{
  v4 = MEMORY[0x26D666F80](a3, a2);
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

- (id)connectAndReturnError:(id *)a3
{
  v3 = self;
  if (!self->_connection)
  {
    connector = self->_connector;
    v5 = (*(v3->_connector + 2))();
    connection = v3->_connection;
    v3->_connection = v5;

    if (!v3->_connection)
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)syncProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_connectionWithErrorHandler_(self, v5, v4, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A94CD7C;
  v15[3] = &unk_279CA5F20;
  v15[4] = self;
  v16 = v4;
  v9 = v4;
  v13 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v8, v10, v15, v11, v12);

  return v13;
}

- (id)asyncProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_connectionWithErrorHandler_(self, v5, v4, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A94CEB0;
  v15[3] = &unk_279CA5F20;
  v15[4] = self;
  v16 = v4;
  v9 = v4;
  v13 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v10, v15, v11, v12);

  return v13;
}

- (id)mapXPCConnectionError:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_domain(v4, v5, v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x277CCA050], v11, v12);

  if (isEqualToString && (objc_msgSend_code(v4, v14, v15, v16, v17) | 2) == 0x1003)
  {
    v18 = self;
    objc_sync_enter(v18);
    if (v18->_connection)
    {
      v23 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v19, v20, v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_msgSend_proxyDescription(v18, v24, v25, v26, v27);
        sub_26AA7E5F4(v28, v45, v23);
      }

      connection = v18->_connection;
      v18->_connection = 0;

      objc_msgSend_onDisconnect(v18, v30, v31, v32, v33);
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v34, @"SoftPosReader", 14001, 0);
    }

    else
    {
      v36 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v19, v20, v21, v22);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_msgSend_proxyDescription(v18, v37, v38, v39, v40);
        sub_26AA7E64C(v41, v45, v36);
      }

      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v42, @"SoftPosReader", 14002, 0);
    }
    v35 = ;
    objc_sync_exit(v18);
  }

  else
  {
    v35 = v4;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)connectionWithErrorHandler:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  connection = v5->_connection;
  if (!connection)
  {
    for (i = 1; ; ++i)
    {
      v8 = (*(v5->_connector + 2))();
      v9 = 0;
      v10 = v5->_connection;
      v5->_connection = v8;

      if (v5->_connection)
      {
        break;
      }

      if (i == 3)
      {
        v4[2](v4, v9);
        goto LABEL_10;
      }

      objc_msgSend_sleepForTimeInterval_(MEMORY[0x277CCACC8], v11, v12, v13, v14, i * 0.1);
    }

    v15 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v11, v12, v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = objc_msgSend_proxyDescription(v5, v16, v17, v18, v19);
      *buf = 138412290;
      v25 = v20;
      _os_log_impl(&dword_26A93A000, v15, OS_LOG_TYPE_INFO, "%@ connected", buf, 0xCu);
    }

LABEL_10:
    connection = v5->_connection;
  }

  v21 = connection;
  objc_sync_exit(v5);

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