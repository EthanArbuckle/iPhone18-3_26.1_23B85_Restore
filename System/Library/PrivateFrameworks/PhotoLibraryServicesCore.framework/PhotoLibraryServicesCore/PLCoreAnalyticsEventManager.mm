@interface PLCoreAnalyticsEventManager
- (BOOL)hasEventWithName:(id)name;
- (PLCoreAnalyticsEventManager)init;
- (id)_eventForEventName:(id)name;
- (id)description;
- (id)descriptionForEventName:(id)name;
- (id)rawEventForEventName:(id)name;
- (id)valueForKey:(id)key onEventWithName:(id)name;
- (void)_setPayloadValue:(id)value forKey:(id)key onEventWithName:(id)name eventBlock:(id)block;
- (void)addRecordingTimedEventSnippetWithToken:(double)token forKey:(id)key onEventWithName:(id)name;
- (void)mergePayload:(id)payload onEventWithName:(id)name;
- (void)publishAllEvents;
- (void)publishEventWithName:(id)name;
- (void)removeEventWithName:(id)name;
- (void)removePayloadValueForKey:(id)key onEventWithName:(id)name;
- (void)setPayloadValue:(id)value forKey:(id)key onEventWithName:(id)name;
- (void)setPayloadValue:(id)value forKey:(id)key onlyOnExistingEventWithName:(id)name;
- (void)stopRecordingTimedEventWithToken:(double)token forKey:(id)key onEventWithName:(id)name;
@end

@implementation PLCoreAnalyticsEventManager

- (void)publishAllEvents
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableDictionary count](self->_eventMap, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__PLCoreAnalyticsEventManager_publishAllEvents__block_invoke;
  v14[3] = &unk_1E7932A28;
  v4 = v3;
  v15 = v4;
  selfCopy = self;
  PLRunWithUnfairLock(&self->_lock, v14);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) publish];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v17 count:16];
    }

    while (v7);
  }
}

uint64_t __47__PLCoreAnalyticsEventManager_publishAllEvents__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) allValues];
  [v2 addObjectsFromArray:v3];

  v4 = *(*(a1 + 40) + 8);

  return [v4 removeAllObjects];
}

- (void)publishEventWithName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__3762;
    v15 = __Block_byref_object_dispose__3763;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PLCoreAnalyticsEventManager_publishEventWithName___block_invoke;
    v8[3] = &unk_1E7930738;
    v8[4] = self;
    v10 = &v11;
    v6 = nameCopy;
    v9 = v6;
    PLRunWithUnfairLock(&self->_lock, v8);
    if ([(PLCoreAnalyticsEventManager *)self allowEventPublish])
    {
      [v12[5] publish];
    }

    else
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_DEFAULT, "CoreAnalyticsEventManager: publish to Core Analytics is disabled for event: %{public}@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v11, 8);
  }
}

uint64_t __52__PLCoreAnalyticsEventManager_publishEventWithName___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  if (result)
  {
    v3 = [*(a1 + 32) _eventForEventName:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 8);

    return [v7 removeObjectForKey:v6];
  }

  return result;
}

- (void)addRecordingTimedEventSnippetWithToken:(double)token forKey:(id)key onEventWithName:(id)name
{
  keyCopy = key;
  nameCopy = name;
  Current = CFAbsoluteTimeGetCurrent();
  if (token > 0.0 && keyCopy != 0 && nameCopy != 0)
  {
    v13 = Current;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__PLCoreAnalyticsEventManager_addRecordingTimedEventSnippetWithToken_forKey_onEventWithName___block_invoke;
    v14[3] = &unk_1E7930370;
    v14[4] = self;
    v15 = nameCopy;
    v16 = keyCopy;
    v17 = v13;
    tokenCopy = token;
    PLRunWithUnfairLock(&self->_lock, v14);
  }
}

void __93__PLCoreAnalyticsEventManager_addRecordingTimedEventSnippetWithToken_forKey_onEventWithName___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) _eventForEventName:*(a1 + 40)];
  v2 = [v9 payload];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];
  [v3 doubleValue];
  v5 = v4;

  v6 = v5 + *(a1 + 56) - *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [v9 addKey:v7 value:v8];
}

- (void)stopRecordingTimedEventWithToken:(double)token forKey:(id)key onEventWithName:(id)name
{
  keyCopy = key;
  nameCopy = name;
  Current = CFAbsoluteTimeGetCurrent();
  if (token > 0.0)
  {
    token = [MEMORY[0x1E696AD98] numberWithDouble:Current - token];
    [(PLCoreAnalyticsEventManager *)self setPayloadValue:token forKey:keyCopy onEventWithName:nameCopy];
  }
}

- (id)rawEventForEventName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3762;
  v16 = __Block_byref_object_dispose__3763;
  v17 = 0;
  if (nameCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PLCoreAnalyticsEventManager_rawEventForEventName___block_invoke;
    v9[3] = &unk_1E7930738;
    v11 = &v12;
    v9[4] = self;
    v10 = nameCopy;
    PLRunWithUnfairLock(&self->_lock, v9);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __52__PLCoreAnalyticsEventManager_rawEventForEventName___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (void)removeEventWithName:(id)name
{
  v11 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__PLCoreAnalyticsEventManager_removeEventWithName___block_invoke;
    v7[3] = &unk_1E7932A28;
    v7[4] = self;
    v8 = nameCopy;
    PLRunWithUnfairLock(&self->_lock, v7);
  }

  else
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = 0;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "CoreAnalyticsEventManager: invalid parameter for event name: %{public}@", buf, 0xCu);
    }
  }
}

- (BOOL)hasEventWithName:(id)name
{
  v9 = *MEMORY[0x1E69E9840];
  if (name)
  {
    v3 = [(PLCoreAnalyticsEventManager *)self rawEventForEventName:?];
    v4 = v3 != 0;
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "CoreAnalyticsEventManager: invalid parameter for event name: %{public}@", &v7, 0xCu);
    }

    return 0;
  }

  return v4;
}

- (void)removePayloadValueForKey:(id)key onEventWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  nameCopy = name;
  v8 = nameCopy;
  if (keyCopy && nameCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PLCoreAnalyticsEventManager_removePayloadValueForKey_onEventWithName___block_invoke;
    v10[3] = &unk_1E7930348;
    v10[4] = self;
    v11 = nameCopy;
    v12 = keyCopy;
    PLRunWithUnfairLock(&self->_lock, v10);
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = keyCopy;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "CoreAnalyticsEventManager: invalid parameter for event name: %{public}@ key: %{public}@", buf, 0x16u);
    }
  }
}

void __72__PLCoreAnalyticsEventManager_removePayloadValueForKey_onEventWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _eventForEventName:*(a1 + 40)];
  [v2 removeKey:*(a1 + 48)];
}

- (void)mergePayload:(id)payload onEventWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  nameCopy = name;
  v8 = nameCopy;
  if (payloadCopy && nameCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PLCoreAnalyticsEventManager_mergePayload_onEventWithName___block_invoke;
    v10[3] = &unk_1E7930348;
    v10[4] = self;
    v11 = nameCopy;
    v12 = payloadCopy;
    PLRunWithUnfairLock(&self->_lock, v10);
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = payloadCopy;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "CoreAnalyticsEventManager: invalid parameter for event name: %{public}@ payload: %{public}@", buf, 0x16u);
    }
  }
}

void __60__PLCoreAnalyticsEventManager_mergePayload_onEventWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _eventForEventName:*(a1 + 40)];
  [v2 mergePayload:*(a1 + 48)];
}

- (void)setPayloadValue:(id)value forKey:(id)key onlyOnExistingEventWithName:(id)name
{
  nameCopy = name;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PLCoreAnalyticsEventManager_setPayloadValue_forKey_onlyOnExistingEventWithName___block_invoke;
  v10[3] = &unk_1E7930320;
  v11 = nameCopy;
  v9 = nameCopy;
  [(PLCoreAnalyticsEventManager *)self _setPayloadValue:value forKey:key onEventWithName:v9 eventBlock:v10];
}

id __82__PLCoreAnalyticsEventManager_setPayloadValue_forKey_onlyOnExistingEventWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3[1] objectForKeyedSubscript:*(a1 + 32)];

  return v4;
}

- (void)setPayloadValue:(id)value forKey:(id)key onEventWithName:(id)name
{
  nameCopy = name;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PLCoreAnalyticsEventManager_setPayloadValue_forKey_onEventWithName___block_invoke;
  v10[3] = &unk_1E7930320;
  v11 = nameCopy;
  v9 = nameCopy;
  [(PLCoreAnalyticsEventManager *)self _setPayloadValue:value forKey:key onEventWithName:v9 eventBlock:v10];
}

id __70__PLCoreAnalyticsEventManager_setPayloadValue_forKey_onEventWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _eventForEventName:*(a1 + 32)];

  return v4;
}

- (void)_setPayloadValue:(id)value forKey:(id)key onEventWithName:(id)name eventBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  nameCopy = name;
  blockCopy = block;
  v14 = blockCopy;
  if (!keyCopy || !nameCopy)
  {
    v15 = PLBackendGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138543874;
    v24 = nameCopy;
    v25 = 2114;
    v26 = keyCopy;
    v27 = 2114;
    v28 = valueCopy;
    v16 = "CoreAnalyticsEventManager: invalid parameter for event name: %{public}@ key: %{public}@ value: %{public}@";
    v17 = v15;
    v18 = 32;
LABEL_7:
    _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_8;
  }

  if (valueCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__PLCoreAnalyticsEventManager__setPayloadValue_forKey_onEventWithName_eventBlock___block_invoke;
    v19[3] = &unk_1E7932DF8;
    v22 = blockCopy;
    v19[4] = self;
    v20 = valueCopy;
    v21 = keyCopy;
    PLRunWithUnfairLock(&self->_lock, v19);

    v15 = v22;
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"error"])
  {
    goto LABEL_9;
  }

  v15 = PLBackendGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v24 = nameCopy;
    v25 = 2114;
    v26 = keyCopy;
    v16 = "CoreAnalyticsEventManager: invalid value for event name: %{public}@ key: %{public}@";
    v17 = v15;
    v18 = 22;
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
}

void __82__PLCoreAnalyticsEventManager__setPayloadValue_forKey_onEventWithName_eventBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  if (v2)
  {
    v6 = v2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = *(a1 + 48);
    if (isKindOfClass)
    {
      v5 = build_error_event_string(*(a1 + 40));
      [v6 addKey:v4 value:v5];
    }

    else
    {
      [v6 addKey:*(a1 + 48) value:*(a1 + 40)];
    }

    v2 = v6;
  }
}

- (id)valueForKey:(id)key onEventWithName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  nameCopy = name;
  v8 = nameCopy;
  if (keyCopy && nameCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__PLCoreAnalyticsEventManager_valueForKey_onEventWithName___block_invoke;
    v12[3] = &unk_1E79302F8;
    v12[4] = self;
    v13 = nameCopy;
    v14 = keyCopy;
    v9 = PLResultWithUnfairLock(&self->_lock, v12);
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = keyCopy;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "CoreAnalyticsEventManager: invalid parameter for event name: %{public}@ key: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

id __59__PLCoreAnalyticsEventManager_valueForKey_onEventWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _eventForEventName:*(a1 + 40)];
  v3 = [v2 payload];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  return v4;
}

- (id)_eventForEventName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_eventMap objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    v5 = [[PLCoreAnalyticsEvent alloc] initWithEvent:nameCopy payload:0];
    [(NSMutableDictionary *)self->_eventMap setObject:v5 forKeyedSubscript:nameCopy];
  }

  return v5;
}

- (id)descriptionForEventName:(id)name
{
  v3 = [(PLCoreAnalyticsEventManager *)self _eventForEventName:name];
  v4 = [v3 debugDescription];

  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PLCoreAnalyticsEventManager;
  v3 = [(PLCoreAnalyticsEventManager *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" Events: %@", self->_eventMap];

  return v4;
}

- (PLCoreAnalyticsEventManager)init
{
  v6.receiver = self;
  v6.super_class = PLCoreAnalyticsEventManager;
  v2 = [(PLCoreAnalyticsEventManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    eventMap = v2->_eventMap;
    v2->_eventMap = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_allowEventPublish = 1;
  }

  return v2;
}

@end