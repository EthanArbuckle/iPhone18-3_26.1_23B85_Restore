@interface SFSessionCache
- (SFSessionCache)init;
- (SFSessionCache)initWithCoder:(id)a3;
- (id)_sessionWithDevice:(id)a3 activate:(BOOL)a4 withCompletion:(id)a5;
- (id)activePeerDeviceIDs;
- (id)activeSessions;
- (id)description;
- (id)sessionWithDevice:(id)a3 activate:(BOOL)a4 withCompletion:(id)a5;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)_popCache;
- (void)_sessionWasInterrupted:(id)a3;
- (void)_sessionWasInvalidated:(id)a3;
- (void)activate;
- (void)clearCache;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)sendRequestWithFlags:(unsigned int)a3 object:(id)a4 responseHandler:(id)a5 toDevice:(id)a6;
- (void)sendWithFlags:(unsigned int)a3 object:(id)a4 toDevice:(id)a5;
@end

@implementation SFSessionCache

- (SFSessionCache)init
{
  v9.receiver = self;
  v9.super_class = SFSessionCache;
  v2 = [(SFSessionCache *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_capacity = 6;
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v3->_identifier;
    v3->_identifier = v6;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeInteger:self->_capacity forKey:@"cp"];
  identifier = self->_identifier;
  if (identifier)
  {
    [v11 encodeObject:identifier forKey:@"id"];
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [v11 encodeObject:serviceIdentifier forKey:@"sid"];
  }

  sessions = self->_sessions;
  if (sessions)
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:sessions requiringSecureCoding:1 error:0];
    [v11 encodeObject:v7 forKey:@"sd"];
  }

  timestamps = self->_timestamps;
  v9 = v11;
  if (timestamps)
  {
    v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:timestamps requiringSecureCoding:1 error:0];
    [v11 encodeObject:v10 forKey:@"tsd"];

    v9 = v11;
  }
}

- (id)description
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = 0;
  identifier = self->_identifier;
  capacity = self->_capacity;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    v32 = v3;
    identifier = serviceIdentifier;
    NSAppendPrintF();
    v6 = v32;

    v4 = v6;
  }

  v31 = v4;
  NSAppendPrintF();
  v7 = v4;

  v30 = v7;
  v22 = [(NSMutableDictionary *)self->_sessions count:identifier];
  NSAppendPrintF();
  v8 = v7;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(NSMutableDictionary *)self->_sessions allKeys];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * v13);
        v16 = [(NSMutableDictionary *)self->_timestamps objectForKeyedSubscript:v15, v23, v25];
        [v16 doubleValue];
        v18 = v17;

        v25 = v18;
        v23 = v15;
        NSAppendPrintF();
        v8 = v14;

        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:{16, v23, v18}];
    }

    while (v11);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_ensureStarted
{
  if (gLogCategory_SFSessionCache <= 60 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)_ensureStopped
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->_sessions allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_sessions removeAllObjects];
  sessions = self->_sessions;
  self->_sessions = 0;

  [(NSMutableDictionary *)self->_timestamps removeAllObjects];
  timestamps = self->_timestamps;
  self->_timestamps = 0;

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_popCache
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy_;
  v11[4] = __Block_byref_object_dispose_;
  v3 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSince1970];
  v12 = [v3 numberWithDouble:?];

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_activated)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_8;
  }

  timestamps = self->_timestamps;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__SFSessionCache__popCache__block_invoke;
  v10[3] = &unk_1E788B2F0;
  v10[4] = v11;
  v10[5] = &v13;
  [(NSMutableDictionary *)timestamps enumerateKeysAndObjectsUsingBlock:v10];
  v6 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v14[5]];
  if (!v6)
  {
    if (gLogCategory_SFSessionCache <= 60 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
    {
      v8 = v14[5];
      LogPrintF();
    }

    goto LABEL_13;
  }

  if (gLogCategory_SFSessionCache <= 10 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {
    identifier = self->_identifier;
    v9 = v14[5];
    LogPrintF();
  }

  [v6 invalidate];
  [(NSMutableDictionary *)self->_sessions removeObjectForKey:v14[5]];
  [(NSMutableDictionary *)self->_timestamps removeObjectForKey:v14[5]];
LABEL_8:

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
}

void __27__SFSessionCache__popCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  [a3 doubleValue];
  v7 = v6;
  [*(*(*(a1 + 32) + 8) + 40) doubleValue];
  if (v7 < v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_4;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFSessionCache <= 30 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
    {
      __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_5_cold_1();
    }
  }

  else
  {
    if (gLogCategory_SFSessionCache <= 30 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
    {
      __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_5_cold_2();
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(*(a1 + 32) + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_6;
      v6[3] = &unk_1E788B318;
      v8 = v4;
      v7 = *(a1 + 40);
      dispatch_async(v5, v6);
    }
  }
}

- (void)_sessionWasInterrupted:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_SFSessionCache <= 30)
  {
    v6 = v3;
    if (gLogCategory_SFSessionCache != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [SFSessionCache _sessionWasInterrupted:];
      v4 = v6;
    }
  }
}

- (void)_sessionWasInvalidated:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_SFSessionCache <= 30)
  {
    v6 = v3;
    if (gLogCategory_SFSessionCache != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [SFSessionCache _sessionWasInvalidated:];
      v4 = v6;
    }
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFSessionCache_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __26__SFSessionCache_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSessionCache <= 50 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {
    __26__SFSessionCache_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);

  return [v2 _ensureStarted];
}

- (void)clearCache
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFSessionCache_clearCache__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__SFSessionCache_clearCache__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSessionCache <= 50 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {
    __28__SFSessionCache_clearCache__block_invoke_cold_1();
  }

  [*(a1 + 32) _ensureStopped];
  v2 = *(a1 + 32);

  return [v2 _ensureStarted];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFSessionCache_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__SFSessionCache_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSessionCache <= 50 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {
    __28__SFSessionCache_invalidate__block_invoke_cold_1();
  }

  result = [*(a1 + 32) _ensureStopped];
  *(*(a1 + 32) + 9) = 1;
  return result;
}

- (void)sendRequestWithFlags:(unsigned int)a3 object:(id)a4 responseHandler:(id)a5 toDevice:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke;
  block[3] = &unk_1E788B390;
  v22 = a3;
  v18 = v10;
  v19 = self;
  v20 = v12;
  v21 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(dispatchQueue, block);
}

void __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke_2;
  aBlock[3] = &unk_1E788B368;
  v7 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 40) _sessionWithDevice:*(a1 + 48) activate:1 withCompletion:v2];
}

void __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFSessionCache <= 10 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {
    __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke_2_cold_1();
  }

  [v3 sendRequestWithFlags:*(a1 + 48) object:*(a1 + 32) responseHandler:*(a1 + 40)];
}

- (void)sendWithFlags:(unsigned int)a3 object:(id)a4 toDevice:(id)a5
{
  v8 = a4;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke;
  v13[3] = &unk_1E788B3E0;
  v17 = a3;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

void __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke_2;
  v7 = &unk_1E788B3B8;
  v9 = *(a1 + 56);
  v8 = *(a1 + 32);
  v2 = _Block_copy(&v4);
  v3 = [*(a1 + 40) _sessionWithDevice:*(a1 + 48) activate:1 withCompletion:{v2, v4, v5, v6, v7}];
}

void __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFSessionCache <= 10 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {
    __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke_2_cold_1();
  }

  [v3 sendWithFlags:*(a1 + 40) object:*(a1 + 32)];
}

- (id)sessionWithDevice:(id)a3 activate:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFSessionCache_sessionWithDevice_activate_withCompletion___block_invoke;
  block[3] = &unk_1E788B408;
  block[4] = self;
  v16 = v8;
  v19 = a4;
  v17 = v9;
  v18 = &v20;
  v11 = v9;
  v12 = v8;
  dispatch_sync(dispatchQueue, block);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __60__SFSessionCache_sessionWithDevice_activate_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sessionWithDevice:*(a1 + 40) activate:*(a1 + 64) withCompletion:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)activePeerDeviceIDs
{
  if (self->_activated && !self->_invalidated)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [(NSMutableDictionary *)self->_sessions allKeys];
    v2 = [v3 setWithArray:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)activeSessions
{
  if (self->_activated && !self->_invalidated)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [(NSMutableDictionary *)self->_sessions allValues];
    v2 = [v3 setWithArray:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (SFSessionCache)initWithCoder:(id)a3
{
  v29[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SFSessionCache;
  v5 = [(SFSessionCache *)&v27 init];
  v6 = v5;
  if (v5)
  {
    v7 = SFMainQueue(v5);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    if ([v4 containsValueForKey:@"cp"])
    {
      v6->_capacity = [v4 decodeIntegerForKey:@"cp"];
    }

    if ([v4 containsValueForKey:@"id"])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
      identifier = v6->_identifier;
      v6->_identifier = v9;
    }

    if ([v4 containsValueForKey:@"sid"])
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
      serviceIdentifier = v6->_serviceIdentifier;
      v6->_serviceIdentifier = v11;
    }

    if ([v4 containsValueForKey:@"sd"])
    {
      v13 = MEMORY[0x1E695DFD8];
      v29[0] = objc_opt_class();
      v29[1] = objc_opt_class();
      v29[2] = objc_opt_class();
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
      v15 = [v13 setWithArray:v14];

      [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sd"];
      objc_claimAutoreleasedReturnValue();
      v16 = [OUTLINED_FUNCTION_2_4() unarchivedObjectOfClasses:? fromData:? error:?];
      v17 = [v16 mutableCopy];
      sessions = v6->_sessions;
      v6->_sessions = v17;
    }

    if ([v4 containsValueForKey:@"tsd"])
    {
      v19 = MEMORY[0x1E695DFD8];
      v28[0] = objc_opt_class();
      v28[1] = objc_opt_class();
      v28[2] = objc_opt_class();
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
      v21 = [v19 setWithArray:v20];

      [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sd"];
      objc_claimAutoreleasedReturnValue();
      v22 = [OUTLINED_FUNCTION_2_4() unarchivedObjectOfClasses:? fromData:? error:?];
      v23 = [v22 mutableCopy];
      timestamps = v6->_timestamps;
      v6->_timestamps = v23;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)_sessionWithDevice:(id)a3 activate:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activated)
  {
    v11 = 0;
    if (!self->_invalidated && v10)
    {
      v12 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v10];
      if (v12)
      {
        v11 = v12;
        if (gLogCategory_SFSessionCache <= 30 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
        {
          v21 = v10;
          LogPrintF();
        }

        if (!v9)
        {
          goto LABEL_21;
        }

        dispatchQueue = self->_dispatchQueue;
        block = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_7;
        v25 = &unk_1E788B318;
        v27 = v9;
        v11 = v11;
        v26 = v11;
        dispatch_async(dispatchQueue, &block);

        v14 = v27;
      }

      else
      {
        if (gLogCategory_SFSessionCache <= 30 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
        {
          v21 = v10;
          LogPrintF();
        }

        v15 = objc_alloc_init(SFSession);
        [(SFSession *)v15 setDispatchQueue:self->_dispatchQueue];
        [(SFSession *)v15 setPeerDevice:v8];
        [(SFSession *)v15 setServiceIdentifier:self->_serviceIdentifier];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke;
        v33[3] = &unk_1E788A658;
        v33[4] = self;
        v16 = v15;
        v34 = v16;
        [(SFSession *)v16 setInterruptionHandler:v33];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_3;
        v31[3] = &unk_1E788A658;
        v31[4] = self;
        v11 = v16;
        v32 = v11;
        [(SFSession *)v11 setInvalidationHandler:v31];
        if (v6)
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_5;
          v28[3] = &unk_1E788B340;
          v30 = v9;
          v28[4] = self;
          v29 = v11;
          [(SFSession *)v29 activateWithCompletion:v28];
        }

        if ([(SFSessionCache *)self cacheFull])
        {
          [(SFSessionCache *)self _popCache];
        }

        [(NSMutableDictionary *)self->_sessions setObject:v11 forKeyedSubscript:v10];

        v14 = v34;
      }

LABEL_21:
      v17 = MEMORY[0x1E696AD98];
      v18 = [MEMORY[0x1E695DF00] date];
      [v18 timeIntervalSince1970];
      v19 = [v17 numberWithDouble:?];
      [(NSMutableDictionary *)self->_timestamps setObject:v19 forKeyedSubscript:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end