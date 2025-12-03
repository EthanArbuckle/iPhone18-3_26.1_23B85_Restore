@interface SBFAnalyticsClient
+ (id)sharedInstance;
- (SBFAnalyticsClient)initWithBackend:(id)backend;
- (void)emitEvent:(unint64_t)event withPayload:(id)payload;
- (void)setSignificantTimeChangedNotificationName:(id)name;
@end

@implementation SBFAnalyticsClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[SBFAnalyticsClient sharedInstance];
  }

  v3 = sharedInstance___client;

  return v3;
}

void __36__SBFAnalyticsClient_sharedInstance__block_invoke()
{
  v0 = [SBFAnalyticsClient alloc];
  v3 = +[SBFAnalyticsBackend sharedInstance];
  v1 = [(SBFAnalyticsClient *)v0 initWithBackend:v3];
  v2 = sharedInstance___client;
  sharedInstance___client = v1;
}

- (SBFAnalyticsClient)initWithBackend:(id)backend
{
  backendCopy = backend;
  v9.receiver = self;
  v9.super_class = SBFAnalyticsClient;
  v6 = [(SBFAnalyticsClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backend, backend);
  }

  return v7;
}

- (void)emitEvent:(unint64_t)event withPayload:(id)payload
{
  backend = self->_backend;
  payloadCopy = payload;
  v8 = [[SBAnalyticsContextProvider alloc] initWithEventPayload:payloadCopy backend:self->_backend];

  [(SBFAnalyticsBackend *)backend handleEvent:event withContext:v8];
}

- (void)setSignificantTimeChangedNotificationName:(id)name
{
  if (self->_significantTimeChangedNotificationName != name)
  {
    v5 = MEMORY[0x1E696AD88];
    nameCopy = name;
    defaultCenter = [v5 defaultCenter];
    [defaultCenter removeObserver:self name:self->_significantTimeChangedNotificationName object:0];
    v7 = [nameCopy copy];

    significantTimeChangedNotificationName = self->_significantTimeChangedNotificationName;
    self->_significantTimeChangedNotificationName = v7;

    [defaultCenter addObserver:self selector:sel__noteSignificantTimeChanged_ name:self->_significantTimeChangedNotificationName object:0];
  }
}

@end