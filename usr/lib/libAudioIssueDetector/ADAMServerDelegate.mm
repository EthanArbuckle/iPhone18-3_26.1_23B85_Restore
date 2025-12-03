@interface ADAMServerDelegate
- (ADAMServerDelegate)initWithConnection:(id)connection andErrorCode:(int64_t)code;
- (BOOL)isActive:(unsigned int)active;
- (BOOL)verifyInvariantsWithReply:(id)reply;
- (id)DatatypeTo4CC:(unsigned int)c;
- (id)describeErrorCode:(int64_t)code;
- (id)errorWithCode:(int64_t)code andReason:(id)reason;
- (void)deactivateAll;
- (void)getCurrentConfigurationForAudioSampleType:(unsigned int)type withReply:(id)reply;
- (void)registerDelegate:(unsigned int)delegate;
- (void)sendAudioSample:(id)sample;
- (void)setupConnection:(id)connection;
- (void)unregisterDelegate;
@end

@implementation ADAMServerDelegate

- (id)describeErrorCode:(int64_t)code
{
  if (code <= 560295539)
  {
    if (!code)
    {
      return @"No Error";
    }

    if (code == 560164457)
    {
      return @"Invalid connection";
    }
  }

  else
  {
    switch(code)
    {
      case 560295540:
        return @"Missing Entitlements";
      case 560950886:
        return @"data type does not support on/off";
      case 1969974894:
        return @"Unknown Client";
    }
  }

  return @"Unknown Error";
}

- (BOOL)verifyInvariantsWithReply:(id)reply
{
  replyCopy = reply;
  error_code = self->_error_code;
  if (error_code)
  {
    v6 = [(ADAMServerDelegate *)self describeErrorCode:self->_error_code];
    v7 = [(ADAMServerDelegate *)self errorWithCode:error_code andReason:v6];
    replyCopy[2](replyCopy, v7);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);

    if (WeakRetained)
    {
      v8 = 1;
      goto LABEL_6;
    }

    v6 = [(ADAMServerDelegate *)self describeErrorCode:560164457];
    v7 = [(ADAMServerDelegate *)self errorWithCode:560164457 andReason:v6];
    replyCopy[2](replyCopy, v7);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)errorWithCode:(int64_t)code andReason:(id)reason
{
  v12[1] = *MEMORY[0x29EDCA608];
  reasonCopy = reason;
  v6 = MEMORY[0x29EDB9FA0];
  v11 = *MEMORY[0x29EDB9ED8];
  v12[0] = reasonCopy;
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"AudioDataAnalysisManager(ADAM)" code:code userInfo:v7];

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)DatatypeTo4CC:(unsigned int)c
{
  v5[4] = 0;
  v5[2] = BYTE1(c);
  v5[3] = c;
  v5[1] = BYTE2(c);
  v5[0] = HIBYTE(c);
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v5];

  return v3;
}

- (void)unregisterDelegate
{
  v10 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_lock);
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = self->_dataTypeStatus;
  if ([(NSMutableDictionary *)v3 countByEnumeratingWithState:&v5 objects:v9 count:16])
  {
    *v6;
    *v6;
    [**(&v5 + 1) unsignedIntegerValue];
    operator new();
  }

  os_unfair_lock_unlock(&self->_lock);
  v4 = *MEMORY[0x29EDCA608];
}

- (void)registerDelegate:(unsigned int)delegate
{
  inited = objc_initWeak(&v15, self);
  ADAM::AudioDataAnalysisManager::instance(inited);
  v5 = objc_loadWeakRetained(&v15);
  objc_initWeak(&location, v5);
  delegateCopy = delegate;
  v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:delegate];
  v8 = qword_2A18A5240;
  std::mutex::lock((qword_2A18A5240 + 24));
  v9 = [*(qword_2A18A5240 + 16) objectForKey:v7];

  if (v9)
  {
    v10 = [*(qword_2A18A5240 + 16) objectForKey:v7];
    v11 = objc_loadWeakRetained(&location);
    [v10 addObject:v11];
  }

  else
  {
    v12 = MEMORY[0x29EDB8DE8];
    v13 = objc_loadWeakRetained(&location);
    v10 = [v12 arrayWithObject:v13];

    v14 = *(qword_2A18A5240 + 16);
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:delegateCopy];
    [v14 setObject:v10 forKey:v11];
  }

  std::mutex::unlock((v8 + 24));
  objc_destroyWeak(&location);

  objc_destroyWeak(&v15);
}

- (void)deactivateAll
{
  v15 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_dataTypeStatus;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x29EDBA070] numberWithBool:{0, v10}];
        [(NSMutableDictionary *)self->_dataTypeStatus setObject:v8 forKeyedSubscript:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x29EDCA608];
}

- (BOOL)isActive:(unsigned int)active
{
  os_unfair_lock_lock(&self->_lock);
  dataTypeStatus = self->_dataTypeStatus;
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:active];
  v7 = [(NSMutableDictionary *)dataTypeStatus objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)getCurrentConfigurationForAudioSampleType:(unsigned int)type withReply:(id)reply
{
  replyCopy = reply;
  ADAM::AudioDataAnalysisManager::instance(replyCopy);
  (*(replyCopy + 2))(replyCopy, 0);
}

- (void)sendAudioSample:(id)sample
{
  sampleCopy = sample;
  if (-[ADAMServerDelegate isActive:](self, "isActive:", [sampleCopy type]))
  {
    if ([sampleCopy type] == 1751213428)
    {
      os_unfair_lock_lock(&self->_lock);
      configs = self->_configs;
      v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:1751213428];
      WeakRetained = [(NSMutableDictionary *)configs objectForKey:v6];

      v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:1751215219];
      v9 = [WeakRetained objectForKey:v8];

      os_unfair_lock_unlock(&self->_lock);
      if (v9 && [v9 BOOLValue])
      {
        metadata = [sampleCopy metadata];
        v11 = [metadata objectForKey:@"_ADAFMetadataKeyIsLoud"];

        if (v11 && ([v11 BOOLValue] & 1) == 0)
        {

          goto LABEL_10;
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __38__ADAMServerDelegate_sendAudioSample___block_invoke;
    v12[3] = &unk_29EE524E8;
    v12[4] = self;
    v9 = [WeakRetained remoteObjectProxyWithErrorHandler:v12];
    [v9 receiveAudioSample:sampleCopy];
LABEL_10:
  }
}

void __38__ADAMServerDelegate_sendAudioSample___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*(a1 + 32) + 16);
    v8 = 136315906;
    v9 = "ADAMServerDelegate.mm";
    v10 = 1024;
    v11 = 226;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d connection to %@ failed: %@", &v8, 0x26u);
  }

LABEL_10:
  v7 = *MEMORY[0x29EDCA608];
}

void __56__ADAMServerDelegate_sendAudioSample_withType_metadata___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*(a1 + 32) + 16);
    v8 = 136315906;
    v9 = "ADAMServerDelegate.mm";
    v10 = 1024;
    v11 = 199;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d connection to %@ failed: %@", &v8, 0x26u);
  }

LABEL_10:
  v7 = *MEMORY[0x29EDCA608];
}

- (void)setupConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeWeak(&self->_connection, connectionCopy);

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __38__ADAMServerDelegate_setupConnection___block_invoke;
  v9[3] = &unk_29EE524C0;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained setInvalidationHandler:v9];

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __38__ADAMServerDelegate_setupConnection___block_invoke_6;
  v7[3] = &unk_29EE524C0;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  v6 = objc_loadWeakRetained(&self->_connection);
  [v6 setInterruptionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__ADAMServerDelegate_setupConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 16);
    v8 = 136315650;
    v9 = "ADAMServerDelegate.mm";
    v10 = 1024;
    v11 = 183;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d client connection invalidated: %@", &v8, 0x1Cu);
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deactivateAll];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 unregisterDelegate];

  v7 = *MEMORY[0x29EDCA608];
}

void __38__ADAMServerDelegate_setupConnection___block_invoke_6(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 16);
    v8 = 136315650;
    v9 = "ADAMServerDelegate.mm";
    v10 = 1024;
    v11 = 189;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d client connection interrupted: %@", &v8, 0x1Cu);
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deactivateAll];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 unregisterDelegate];

  v7 = *MEMORY[0x29EDCA608];
}

- (ADAMServerDelegate)initWithConnection:(id)connection andErrorCode:(int64_t)code
{
  objc_initWeak(&location, connection);
  v16.receiver = self;
  v16.super_class = ADAMServerDelegate;
  v6 = [(ADAMServerDelegate *)&v16 init];
  v7 = v6;
  if (v6)
  {
    clientName = v6->_clientName;
    v6->_clientName = 0;

    if (code)
    {
      objc_storeWeak(&v7->_connection, 0);
      dataTypeStatus = v7->_dataTypeStatus;
      v7->_dataTypeStatus = 0;

      v10 = 0;
    }

    else
    {
      v11 = objc_loadWeakRetained(&location);
      [(ADAMServerDelegate *)v7 setupConnection:v11];

      v12 = objc_alloc_init(MEMORY[0x29EDB8E00]);
      v13 = v7->_dataTypeStatus;
      v7->_dataTypeStatus = v12;

      v10 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    }

    configs = v7->_configs;
    v7->_configs = v10;

    v7->_error_code = code;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  objc_destroyWeak(&location);
  return v7;
}

@end