@interface PMMPredictionNotification
+ (void)postPredictionUpdate:(id)a3 consumer:(unint64_t)a4;
- (PMMPredictionNotification)initWithPredictionUpdateListener:(id)a3;
- (void)dealloc;
@end

@implementation PMMPredictionNotification

- (PMMPredictionNotification)initWithPredictionUpdateListener:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PMMPredictionNotification;
  v5 = [(PMMPredictionNotification *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__PMMPredictionNotification_initWithPredictionUpdateListener___block_invoke;
    v10[3] = &unk_278592290;
    v11 = v4;
    v7 = [v6 addObserverForName:@"com.apple.proactive.ProactiveMagicalMoments.PMMPredictionNotification.updatePredictions" object:0 queue:0 usingBlock:v10];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_notificationToken];

  v4.receiver = self;
  v4.super_class = PMMPredictionNotification;
  [(PMMPredictionNotification *)&v4 dealloc];
}

+ (void)postPredictionUpdate:(id)a3 consumer:(unint64_t)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11 = @"consumer";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v7 mutableCopy];

  if (v5)
  {
    [v8 setObject:v5 forKeyedSubscript:@"predictions"];
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"com.apple.proactive.ProactiveMagicalMoments.PMMPredictionNotification.updatePredictions" object:0 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
}

@end