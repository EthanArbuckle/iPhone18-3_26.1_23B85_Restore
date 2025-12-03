@interface PMMPredictionNotification
+ (void)postPredictionUpdate:(id)update consumer:(unint64_t)consumer;
- (PMMPredictionNotification)initWithPredictionUpdateListener:(id)listener;
- (void)dealloc;
@end

@implementation PMMPredictionNotification

- (PMMPredictionNotification)initWithPredictionUpdateListener:(id)listener
{
  listenerCopy = listener;
  v12.receiver = self;
  v12.super_class = PMMPredictionNotification;
  v5 = [(PMMPredictionNotification *)&v12 init];
  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__PMMPredictionNotification_initWithPredictionUpdateListener___block_invoke;
    v10[3] = &unk_278592290;
    v11 = listenerCopy;
    v7 = [defaultCenter addObserverForName:@"com.apple.proactive.ProactiveMagicalMoments.PMMPredictionNotification.updatePredictions" object:0 queue:0 usingBlock:v10];
    notificationToken = v5->_notificationToken;
    v5->_notificationToken = v7;
  }

  return v5;
}

void __62__PMMPredictionNotification_initWithPredictionUpdateListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v7 = [v4 objectForKeyedSubscript:@"predictions"];

  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"consumer"];
  [v6 unsignedIntegerValue];

  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_notificationToken];

  v4.receiver = self;
  v4.super_class = PMMPredictionNotification;
  [(PMMPredictionNotification *)&v4 dealloc];
}

+ (void)postPredictionUpdate:(id)update consumer:(unint64_t)consumer
{
  v12[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v11 = @"consumer";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:consumer];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v7 mutableCopy];

  if (updateCopy)
  {
    [v8 setObject:updateCopy forKeyedSubscript:@"predictions"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.proactive.ProactiveMagicalMoments.PMMPredictionNotification.updatePredictions" object:0 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
}

@end