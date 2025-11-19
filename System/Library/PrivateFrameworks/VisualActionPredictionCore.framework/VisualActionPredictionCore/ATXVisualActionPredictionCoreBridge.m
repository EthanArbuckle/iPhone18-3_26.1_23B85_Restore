@interface ATXVisualActionPredictionCoreBridge
+ (id)sharedInstance;
- (id)_init;
@end

@implementation ATXVisualActionPredictionCoreBridge

+ (id)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[ATXVisualActionPredictionCoreBridge sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __53__ATXVisualActionPredictionCoreBridge_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = [[ATXVisualActionPredictionCoreBridge alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ATXVisualActionPredictionCoreBridge;
  v2 = [(ATXVisualActionPredictionCoreBridge *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ATXVisualActionPredictionCoreServer);
    server = v2->_server;
    v2->_server = v3;

    [(ATXVisualActionPredictionCoreServer *)v2->_server activate];
  }

  return v2;
}

@end