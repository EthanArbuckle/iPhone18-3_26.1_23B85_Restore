@interface SidecarStream
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
- ($DCF20CAD073027CB89FDEFA7A9A33809)nwClientID;
- (SidecarSession)session;
- (SidecarStream)initWithCoder:(id)a3;
- (SidecarStream)initWithIdentifier:(id)a3 rapportStream:(id)a4;
- (id)description;
- (id)handler;
- (int64_t)fileDescriptor;
- (int64_t)transport;
- (int64_t)type;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)sendOPACK:(id)a3 completion:(id)a4;
- (void)setHandler:(id)a3;
- (void)setStatus:(unint64_t)a3;
@end

@implementation SidecarStream

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"status", 0}];
  if ([v5 containsObject:v4])
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SidecarStream;
    v6 = objc_msgSendSuper2(&v8, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *MEMORY[0x277CCA2A0];
  v9 = a3;
  validateXPCCoder(self, v9, v4);
  v5 = atomic_load(&self->_activated);
  if (v5)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 raise:v4 format:{@"cannot encode activated %@", v8}];
  }

  encodeObject(v9, @"id", self->_identifier);
  encodeObject(v9, @"rp", self->_rapportStream);
}

- (SidecarStream)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SidecarStream;
  v5 = [(SidecarStream *)&v14 init];
  v6 = v5;
  if (v5)
  {
    validateXPCCoder(v5, v4, *MEMORY[0x277CCA2A8]);
    v7 = objc_opt_class();
    v8 = decodeObject(v4, @"id", v7);
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = NSClassFromString(&cfstr_Rpstreamsessio.isa);
    v11 = decodeObject(v4, @"rp", v10);
    rapportStream = v6->_rapportStream;
    v6->_rapportStream = v11;
  }

  return v6;
}

- (void)sendOPACK:(id)a3 completion:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_rapportStream)
  {
    v8 = atomic_load(&self->_activated);
    if ((v8 & 1) == 0)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = [(SidecarStream *)self description];
      [v9 raise:v10 format:{@"%@ not activated", v11}];
    }

    v19 = 0;
    v12 = SidecarOPACKEncode(v6, &v19);
    v13 = v19;
    if (v13)
    {
      v7[2](v7, v13);
    }

    else
    {
      rapportStream = self->_rapportStream;
      v16 = [(SidecarStream *)self identifier];
      v20 = &unk_2877BFCF8;
      v21[0] = v12;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [(RPStreamSession *)rapportStream sendEventID:v16 event:v17 options:0 completion:v7];
    }
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SidecarErrorDomain" code:-102 userInfo:0];
    v7[2](v7, v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  handler = self->_handler;
  self->_handler = v5;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__SidecarStream_setHandler___block_invoke;
  v9[3] = &unk_279BC3740;
  v10 = v4;
  rapportStream = self->_rapportStream;
  v8 = v4;
  [(RPStreamSession *)rapportStream setReceivedEventHandler:v9];
}

void __28__SidecarStream_setHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SidecarCoreLogSubsystem(OS_LOG_TYPE_DEBUG);
  v11 = v10;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_26604C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: %@, %@", buf, 0x20u);
  }

  v12 = [v8 objectForKeyedSubscript:&unk_2877BFCF8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0;
    v13 = SidecarOPACKDecode(v12, &v22);
    v14 = v22;
    if (v14)
    {
      v16 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      if (v16)
      {
        log = v16;
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        v16 = log;
        if (v17)
        {
          v18 = [v14 domain];
          v19 = [v14 code];
          v20 = [v14 localizedDescription];
          *buf = 138543875;
          v24 = v18;
          v25 = 2048;
          v26 = v19;
          v27 = 2113;
          v28 = v20;
          _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

          v16 = log;
        }
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)handler
{
  v2 = MEMORY[0x266777D20](self->_handler, a2);

  return v2;
}

- (void)invalidate
{
  [(RPStreamSession *)self->_rapportStream invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  if (WeakRetained)
  {
    v4 = self->_identifier;
    v5 = SidecarQueue();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__SidecarStream_invalidate__block_invoke;
    v6[3] = &unk_279BC3718;
    v6[4] = WeakRetained;
    v6[5] = v4;
    dispatch_async(v5, v6);
  }
}

void __27__SidecarStream_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = SidecarRelayProxyAsync(0, 0);
  [v3 relaySession:v2 closeStream:*(a1 + 40)];
}

- (void)activateWithCompletion:(id)a3
{
  v5 = a3;
  if (atomic_exchange(&self->_activated, 1u))
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE658];
    v8 = [(SidecarStream *)self description];
    [v6 raise:v7 format:{@"%@ already activated", v8}];
  }

  rapportStream = self->_rapportStream;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SidecarStream_activateWithCompletion___block_invoke;
  v11[3] = &unk_279BC36F0;
  v12 = v5;
  v13 = a2;
  v11[4] = self;
  v10 = v5;
  [(RPStreamSession *)rapportStream activateWithCompletion:v11];
}

void __40__SidecarStream_activateWithCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  SidecarCoreLogObjCAPIError(v3, v4, v5);
  (*(a1[5] + 16))();
}

- ($DCF20CAD073027CB89FDEFA7A9A33809)nwClientID
{
  v5 = 0;
  v6 = 0;
  v2 = [(RPStreamSession *)self->_rapportStream nwClientID];
  [v2 getUUIDBytes:&v5];

  v3 = v5;
  v4 = v6;
  result.var8 = v4;
  result.var9 = BYTE1(v4);
  result.var10 = BYTE2(v4);
  result.var11 = BYTE3(v4);
  result.var12 = BYTE4(v4);
  result.var13 = BYTE5(v4);
  result.var14 = BYTE6(v4);
  result.var15 = HIBYTE(v4);
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = BYTE3(v3);
  result.var4 = BYTE4(v3);
  result.var5 = BYTE5(v3);
  result.var6 = BYTE6(v3);
  result.var7 = HIBYTE(v3);
  return result;
}

- (int64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  LODWORD(result) = [(RPStreamSession *)self->_rapportStream streamType];
  v3 = result;
  if ((result - 1) >= 3)
  {
    v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = "?";
      if (!v3)
      {
        v7 = "Invalid";
      }

      v8 = 136446466;
      v9 = v7;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_ERROR, "unexpected RPStreamType: %{public}s (%d)", &v8, 0x12u);
    }

    result = 0;
  }

  else
  {
    result = result;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)transport
{
  v2 = [(SidecarStream *)self session];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 transport];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setStatus:(unint64_t)a3
{
  if ([(SidecarStream *)self status]!= a3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[2] = __27__SidecarStream_setStatus___block_invoke;
    v6[3] = &unk_279BC36C8;
    v6[4] = self;
    v6[5] = a3;
    v5 = self;
    [(SidecarStream *)v5 willChangeValueForKey:@"status", v6[0], 3221225472];
    __27__SidecarStream_setStatus___block_invoke(v6);
    [(SidecarStream *)v5 didChangeValueForKey:@"status"];
  }
}

- (SidecarSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (int64_t)fileDescriptor
{
  rapportStream = self->_rapportStream;
  if (rapportStream)
  {
    return [(RPStreamSession *)rapportStream streamSocket];
  }

  else
  {
    return -1;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%@>", v5, self->_identifier];

  return v6;
}

- (void)dealloc
{
  [(SidecarStream *)self invalidate];
  v3.receiver = self;
  v3.super_class = SidecarStream;
  [(SidecarStream *)&v3 dealloc];
}

- (SidecarStream)initWithIdentifier:(id)a3 rapportStream:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = NSStringFromSelector(a2);
    v16 = [v14 stringWithFormat:@"-[%@] called with without supplying an identifier", v15];

    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v16 userInfo:0];
    objc_exception_throw(v17);
  }

  v10 = v9;
  v18.receiver = self;
  v18.super_class = SidecarStream;
  v11 = [(SidecarStream *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_rapportStream, a4);
  }

  return v12;
}

@end