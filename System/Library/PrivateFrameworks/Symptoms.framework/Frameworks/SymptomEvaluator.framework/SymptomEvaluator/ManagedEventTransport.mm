@interface ManagedEventTransport
+ (BOOL)setInfoProvider:(id)provider forId:(unint64_t)id;
+ (id)feedbackForEventId:(unint64_t)id;
+ (id)sharedInstance;
+ (unint64_t)obtainEventId:(id)id;
+ (void)retireEventId:(unint64_t)id;
+ (void)setListeningPort:(const char *)port;
- (BOOL)setInfoProvider:(id)provider forId:(unint64_t)id;
- (ManagedEventTransport)init;
- (id)feedbackForEventId:(unint64_t)id;
- (unint64_t)obtainEventId:(id)id;
- (void)_createReply:(id)reply forConnection:(id)connection;
- (void)retireEventId:(unint64_t)id;
- (void)sendReplyInfo:(id)info onConnection:(id)connection withErrCode:(unint64_t)code forId:(unint64_t)id name:(char *)name date:(id)date reason:(char *)reason reasonCode:(unint64_t)self0 info:(id)self1;
- (void)setListeningPort:(const char *)port;
@end

@implementation ManagedEventTransport

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ManagedEventTransport_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_24 != -1)
  {
    dispatch_once(&sharedInstance_pred_24, block);
  }

  v2 = sharedInstance_sharedInstance_25;

  return v2;
}

uint64_t __39__ManagedEventTransport_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_25;
  sharedInstance_sharedInstance_25 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (ManagedEventTransport)init
{
  v10.receiver = self;
  v10.super_class = ManagedEventTransport;
  v2 = [(ManagedEventTransport *)&v10 init];
  if (v2)
  {
    v3 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Managed Event Transport init", v9, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dynamicEventHandlers = v2->_dynamicEventHandlers;
    v2->_dynamicEventHandlers = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    staticEventHandlers = v2->_staticEventHandlers;
    v2->_staticEventHandlers = v6;

    v2->_event_id = 1000;
  }

  return v2;
}

- (void)sendReplyInfo:(id)info onConnection:(id)connection withErrCode:(unint64_t)code forId:(unint64_t)id name:(char *)name date:(id)date reason:(char *)reason reasonCode:(unint64_t)self0 info:(id)self1
{
  reasonCopy = reason;
  v42 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  connectionCopy = connection;
  dateCopy = date;
  v20 = a11;
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = "nil-name";
  }

  if (!reason)
  {
    reasonCopy = "nil-reason";
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x277CBEC10];
  }

  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] date];
  }

  v23 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
  {
    v24 = v23;
    v25 = [v22 description];
    v34 = 134218754;
    codeCopy = code;
    v36 = 2080;
    v37 = nameCopy;
    v38 = 2080;
    v39 = reasonCopy;
    v40 = 2080;
    uTF8String = [v25 UTF8String];
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_INFO, "Reply with err %lld name %s reason %s info %s", &v34, 0x2Au);
  }

  if (!code)
  {
    v26 = xpc_array_create(0, 0);
    if (v26)
    {
      v27 = xpc_dictionary_create(0, 0, 0);
      v28 = v27;
      if (v27)
      {
        xpc_dictionary_set_uint64(v27, managed_event_key_seqno, id);
        xpc_dictionary_set_string(v28, managed_event_key_event_type, nameCopy);
        v29 = managed_event_key_timestamp;
        [dateCopy timeIntervalSinceReferenceDate];
        xpc_dictionary_set_double(v28, v29, v30);
        xpc_dictionary_set_string(v28, managed_event_key_reason_string, reasonCopy);
        xpc_dictionary_set_uint64(v28, managed_event_key_reason_code, reasonCode);
        v31 = managed_event_key_additional_info;
        v32 = _CFXPCCreateXPCMessageWithCFObject();
        xpc_dictionary_set_value(v28, v31, v32);

        xpc_array_append_value(v26, v28);
        xpc_dictionary_set_value(infoCopy, managed_event_key_event_data, v26);
        code = 0;
      }

      else
      {
        code = 12;
      }
    }

    else
    {
      code = 12;
    }
  }

  xpc_dictionary_set_uint64(infoCopy, managed_event_key_error, code);
  xpc_connection_send_message(connectionCopy, infoCopy);

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_createReply:(id)reply forConnection:(id)connection
{
  v40 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  connectionCopy = connection;
  reply = xpc_dictionary_create_reply(replyCopy);
  uint64 = xpc_dictionary_get_uint64(replyCopy, managed_event_key_type);
  v10 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v33 = uint64;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "processing request: %lld", buf, 0xCu);
  }

  if (reply)
  {
    if (uint64 != 1)
    {
      xpc_dictionary_set_uint64(reply, managed_event_key_error, 0x2BuLL);
LABEL_27:
      v24 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v33 = uint64;
        v34 = 2048;
        replyCopy2 = reply;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "processed request: %lld, reply at %p", buf, 0x16u);
      }

      xpc_connection_send_message(connectionCopy, reply);
      goto LABEL_30;
    }

    v11 = xpc_dictionary_get_uint64(replyCopy, managed_event_key_seqno);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", v11];
    if (v11 >= 0x3E9)
    {
      v13 = [(NSMutableDictionary *)self->_dynamicEventHandlers objectForKey:v12];
      if (v13)
      {
        [v13 populateReply:reply ForId:v11 Count:{xpc_dictionary_get_uint64(replyCopy, managed_event_key_howmany)}];
      }

      else
      {
        xpc_dictionary_set_uint64(reply, managed_event_key_error, 2uLL);
        v23 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v33 = v11;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Managed event request key %lld failed", buf, 0xCu);
        }
      }

      goto LABEL_26;
    }

    if (xpc_dictionary_get_uint64(replyCopy, managed_event_key_howmany) == 1)
    {
      v15 = self->_staticEventHandlers;
      objc_sync_enter(v15);
      v16 = [(NSMutableDictionary *)self->_staticEventHandlers objectForKey:v12];
      objc_sync_exit(v15);

      if (v16)
      {
        string = xpc_dictionary_get_string(replyCopy, managed_event_key_context);
        uuid = xpc_dictionary_get_uuid(replyCopy, managed_event_key_uuid);
        if (uuid)
        {
          uuid = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uuid];
        }

        v19 = evaluationLogHandle;
        if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          v33 = v16;
          v34 = 2048;
          replyCopy2 = v11;
          v36 = 2080;
          v37 = string;
          v38 = 2112;
          v39 = uuid;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Calling provider %p for key %lld, optional context: %s, optional uuid: %@", buf, 0x2Au);
        }

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __52__ManagedEventTransport__createReply_forConnection___block_invoke;
        v26[3] = &unk_27898D658;
        v31 = v11;
        v27 = v16;
        selfCopy = self;
        replyCopy3 = reply;
        v30 = connectionCopy;
        v20 = v16;
        [v20 generateInfoForId:v11 context:string uuid:uuid completionBlock:v26];

        goto LABEL_30;
      }

      xpc_dictionary_set_uint64(reply, managed_event_key_error, 2uLL);
      v21 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v33 = v11;
        v22 = "Managed event request static key %lld failed";
        goto LABEL_25;
      }
    }

    else
    {
      xpc_dictionary_set_uint64(reply, managed_event_key_error, 0x16uLL);
      v21 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v33 = v11;
        v22 = "Managed event request key %lld failed";
LABEL_25:
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  v14 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Can't create reply message", buf, 2u);
  }

LABEL_30:

  v25 = *MEMORY[0x277D85DE8];
}

void __52__ManagedEventTransport__createReply_forConnection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v37 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a7;
  v15 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 64);
    *buf = 134218240;
    v34 = v16;
    v35 = 2048;
    v36 = v17;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "provider %p calling block for key %lld", buf, 0x16u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__ManagedEventTransport__createReply_forConnection___block_invoke_7;
  v23[3] = &unk_27898D630;
  v18 = *(a1 + 48);
  v23[4] = *(a1 + 40);
  v24 = v18;
  v19 = *(a1 + 56);
  v29 = *(a1 + 64);
  v30 = a3;
  v25 = v19;
  v26 = v13;
  v31 = a5;
  v32 = a6;
  v27 = v14;
  v28 = a2;
  v20 = v14;
  v21 = v13;
  dispatch_async(MEMORY[0x277D85CD0], v23);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setListeningPort:(const char *)port
{
  v16 = *MEMORY[0x277D85DE8];
  mach_service = xpc_connection_create_mach_service(port, MEMORY[0x277D85CD0], 1uLL);
  listener = self->_listener;
  self->_listener = mach_service;

  v7 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->_listener;
    *buf = 134218242;
    v13 = v8;
    v14 = 2080;
    portCopy = port;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "listener %p set for port %s", buf, 0x16u);
  }

  v9 = self->_listener;
  if (v9)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__ManagedEventTransport_setListeningPort___block_invoke;
    handler[3] = &unk_27898D680;
    handler[4] = self;
    xpc_connection_set_event_handler(v9, handler);
    xpc_connection_resume(self->_listener);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __42__ManagedEventTransport_setListeningPort___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238389170]();
  if (v4 == MEMORY[0x277D86450])
  {
    v9 = v3;
    xpc_connection_set_target_queue(v9, MEMORY[0x277D85CD0]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__ManagedEventTransport_setListeningPort___block_invoke_2;
    v13[3] = &unk_27898A350;
    v13[4] = *(a1 + 32);
    v14 = v9;
    v10 = v9;
    xpc_connection_set_event_handler(v10, v13);
    xpc_connection_resume(v10);

    goto LABEL_8;
  }

  v5 = v4;
  v6 = MEMORY[0x277D86480];
  v7 = configurationLogHandle;
  v8 = os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR);
  if (v5 == v6)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v11 = *MEMORY[0x277D86400];
    v10 = v7;
    *buf = 136315138;
    string = xpc_dictionary_get_string(v3, v11);
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Received XPC error: %s", buf, 0xCu);
LABEL_8:

    goto LABEL_9;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "unknown message type", buf, 2u);
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __42__ManagedEventTransport_setListeningPort___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 != MEMORY[0x277D863F8])
  {
    return [*(result + 32) _createReply:a2 forConnection:*(result + 40)];
  }

  return result;
}

- (unint64_t)obtainEventId:(id)id
{
  event_id = self->_event_id;
  v5 = __CFADD__(event_id, 1);
  v6 = event_id + 1;
  if (v5)
  {
    v7 = 1001;
  }

  else
  {
    v7 = v6;
  }

  self->_event_id = v7;
  v8 = MEMORY[0x277CCACA8];
  idCopy = id;
  v10 = [v8 stringWithFormat:@"%lld", v7];
  [(NSMutableDictionary *)self->_dynamicEventHandlers setObject:idCopy forKey:v10];

  v11 = self->_event_id;
  return v11;
}

- (void)retireEventId:(unint64_t)id
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", id];
  [(NSMutableDictionary *)self->_dynamicEventHandlers removeObjectForKey:v4];
}

- (id)feedbackForEventId:(unint64_t)id
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", id];
  v6 = [(NSMutableDictionary *)self->_dynamicEventHandlers objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 feedbackForEventId:id];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setInfoProvider:(id)provider forId:(unint64_t)id
{
  v19 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if (id - 1001 > 0xFFFFFFFFFFFFFC17)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", id];
    v10 = self->_staticEventHandlers;
    objc_sync_enter(v10);
    v11 = [(NSMutableDictionary *)self->_staticEventHandlers objectForKey:v9];

    v8 = v11 == 0;
    v12 = configurationLogHandle;
    if (v11)
    {
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        idCopy3 = id;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "duplicate request for managed event id %lld", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        idCopy3 = providerCopy;
        v17 = 2048;
        idCopy2 = id;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Setting provider %p for key %lld", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_staticEventHandlers setObject:providerCopy forKey:v9];
    }

    objc_sync_exit(v10);
  }

  else
  {
    v7 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      idCopy3 = id;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "request for out of range managed event id %lld", buf, 0xCu);
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (unint64_t)obtainEventId:(id)id
{
  idCopy = id;
  v4 = +[ManagedEventTransport sharedInstance];
  v5 = [v4 obtainEventId:idCopy];

  return v5;
}

+ (void)retireEventId:(unint64_t)id
{
  v4 = +[ManagedEventTransport sharedInstance];
  [v4 retireEventId:id];
}

+ (void)setListeningPort:(const char *)port
{
  v4 = +[ManagedEventTransport sharedInstance];
  [v4 setListeningPort:port];
}

+ (id)feedbackForEventId:(unint64_t)id
{
  v4 = +[ManagedEventTransport sharedInstance];
  v5 = [v4 feedbackForEventId:id];

  return v5;
}

+ (BOOL)setInfoProvider:(id)provider forId:(unint64_t)id
{
  providerCopy = provider;
  v6 = +[ManagedEventTransport sharedInstance];
  LOBYTE(id) = [v6 setInfoProvider:providerCopy forId:id];

  return id;
}

@end