@interface PLCoreAnalyticsEvent
- (PLCoreAnalyticsEvent)initWithEvent:(id)a3 payload:(id)a4;
- (id)debugDescription;
- (id)description;
- (void)addKey:(id)a3 value:(id)a4;
- (void)mergePayload:(id)a3;
- (void)publish;
- (void)removeKey:(id)a3;
@end

@implementation PLCoreAnalyticsEvent

- (void)publish
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PLCoreAnalyticsEvent *)self payload];
  v4 = [v3 count];

  if (v4)
  {
    event = self->_event;
    v6 = [(PLCoreAnalyticsEvent *)self payload];
    PLSendCoreAnalyticEvent(event, v6);

    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_event;
      v9 = [(PLCoreAnalyticsEvent *)self payload];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_DEFAULT, "CoreAnalytics published event: %{public}@ payload: %{public}@", &v10, 0x16u);
    }
  }
}

- (void)removeKey:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_mutablePayload removeObjectForKey:?];
  }
}

- (void)mergePayload:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mutablePayload = self->_mutablePayload;
    v8 = v4;
    if (!mutablePayload)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = self->_mutablePayload;
      self->_mutablePayload = v6;

      mutablePayload = self->_mutablePayload;
    }

    [(NSMutableDictionary *)mutablePayload addEntriesFromDictionary:v8];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)addKey:(id)a3 value:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    mutablePayload = self->_mutablePayload;
    if (!mutablePayload)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_mutablePayload;
      self->_mutablePayload = v8;

      mutablePayload = self->_mutablePayload;
    }

    [(NSMutableDictionary *)mutablePayload setObject:v6 forKeyedSubscript:v10];
  }
}

- (id)debugDescription
{
  jsonConverter = self->_jsonConverter;
  v4 = [(PLCoreAnalyticsEvent *)self payload];
  v5 = [(PFJSONDebugDumpConverter *)jsonConverter JSONForObject:v4 error:0];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  }

  else
  {
    v6 = @"unknown";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" event: %@, payload: %@", self->_event, v6];

  return v7;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLCoreAnalyticsEvent;
  v3 = [(PLCoreAnalyticsEvent *)&v8 description];
  event = self->_event;
  v5 = [(PLCoreAnalyticsEvent *)self payload];
  v6 = [v3 stringByAppendingFormat:@" event: %@, payload: %@", event, v5];

  return v6;
}

- (PLCoreAnalyticsEvent)initWithEvent:(id)a3 payload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PLCoreAnalyticsEvent;
  v9 = [(PLCoreAnalyticsEvent *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, a3);
    v11 = [v8 mutableCopy];
    mutablePayload = v10->_mutablePayload;
    v10->_mutablePayload = v11;

    v13 = [objc_alloc(MEMORY[0x1E69C06E8]) initWithUnknownTypeHandler:0];
    jsonConverter = v10->_jsonConverter;
    v10->_jsonConverter = v13;

    [(PFJSONDebugDumpConverter *)v10->_jsonConverter setEnablePretty:0];
  }

  return v10;
}

@end