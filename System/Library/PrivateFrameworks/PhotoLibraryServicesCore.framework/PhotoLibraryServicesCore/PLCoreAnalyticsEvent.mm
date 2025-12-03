@interface PLCoreAnalyticsEvent
- (PLCoreAnalyticsEvent)initWithEvent:(id)event payload:(id)payload;
- (id)debugDescription;
- (id)description;
- (void)addKey:(id)key value:(id)value;
- (void)mergePayload:(id)payload;
- (void)publish;
- (void)removeKey:(id)key;
@end

@implementation PLCoreAnalyticsEvent

- (void)publish
{
  v14 = *MEMORY[0x1E69E9840];
  payload = [(PLCoreAnalyticsEvent *)self payload];
  v4 = [payload count];

  if (v4)
  {
    event = self->_event;
    payload2 = [(PLCoreAnalyticsEvent *)self payload];
    PLSendCoreAnalyticEvent(event, payload2);

    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_event;
      payload3 = [(PLCoreAnalyticsEvent *)self payload];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = payload3;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_DEFAULT, "CoreAnalytics published event: %{public}@ payload: %{public}@", &v10, 0x16u);
    }
  }
}

- (void)removeKey:(id)key
{
  if (key)
  {
    [(NSMutableDictionary *)self->_mutablePayload removeObjectForKey:?];
  }
}

- (void)mergePayload:(id)payload
{
  payloadCopy = payload;
  if (payloadCopy)
  {
    mutablePayload = self->_mutablePayload;
    v8 = payloadCopy;
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

- (void)addKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  if (keyCopy && valueCopy)
  {
    mutablePayload = self->_mutablePayload;
    if (!mutablePayload)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_mutablePayload;
      self->_mutablePayload = v8;

      mutablePayload = self->_mutablePayload;
    }

    [(NSMutableDictionary *)mutablePayload setObject:valueCopy forKeyedSubscript:keyCopy];
  }
}

- (id)debugDescription
{
  jsonConverter = self->_jsonConverter;
  payload = [(PLCoreAnalyticsEvent *)self payload];
  v5 = [(PFJSONDebugDumpConverter *)jsonConverter JSONForObject:payload error:0];

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
  payload = [(PLCoreAnalyticsEvent *)self payload];
  v6 = [v3 stringByAppendingFormat:@" event: %@, payload: %@", event, payload];

  return v6;
}

- (PLCoreAnalyticsEvent)initWithEvent:(id)event payload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  v16.receiver = self;
  v16.super_class = PLCoreAnalyticsEvent;
  v9 = [(PLCoreAnalyticsEvent *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, event);
    v11 = [payloadCopy mutableCopy];
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