@interface SBFAnalyticsClient
+ (id)sharedInstance;
- (SBFAnalyticsClient)initWithBackend:(id)a3;
- (void)emitEvent:(unint64_t)a3 withPayload:(id)a4;
- (void)setSignificantTimeChangedNotificationName:(id)a3;
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

- (SBFAnalyticsClient)initWithBackend:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBFAnalyticsClient;
  v6 = [(SBFAnalyticsClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backend, a3);
  }

  return v7;
}

- (void)emitEvent:(unint64_t)a3 withPayload:(id)a4
{
  backend = self->_backend;
  v7 = a4;
  v8 = [[SBAnalyticsContextProvider alloc] initWithEventPayload:v7 backend:self->_backend];

  [(SBFAnalyticsBackend *)backend handleEvent:a3 withContext:v8];
}

- (void)setSignificantTimeChangedNotificationName:(id)a3
{
  if (self->_significantTimeChangedNotificationName != a3)
  {
    v5 = MEMORY[0x1E696AD88];
    v6 = a3;
    v9 = [v5 defaultCenter];
    [v9 removeObserver:self name:self->_significantTimeChangedNotificationName object:0];
    v7 = [v6 copy];

    significantTimeChangedNotificationName = self->_significantTimeChangedNotificationName;
    self->_significantTimeChangedNotificationName = v7;

    [v9 addObserver:self selector:sel__noteSignificantTimeChanged_ name:self->_significantTimeChangedNotificationName object:0];
  }
}

@end