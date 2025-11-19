@interface TPSAnalyticsProcessor
+ (id)loadValueForKey:(id)a3 class:(Class)a4;
- (NSDate)dateLastRun;
- (TPSAnalyticsProcessor)init;
- (TPSAnalyticsProcessorDataSource)dataSource;
- (void)processAnalytics:(id)a3;
- (void)setDateLastRun:(id)a3;
@end

@implementation TPSAnalyticsProcessor

- (TPSAnalyticsProcessor)init
{
  v11.receiver = self;
  v11.super_class = TPSAnalyticsProcessor;
  v2 = [(TPSAnalyticsProcessor *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D71620] sharedInstance];
    analyticsEventController = v2->_analyticsEventController;
    v2->_analyticsEventController = v3;

    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"%@%@", v7, @"_DateLastRun"];
    dateLastRunKey = v2->_dateLastRunKey;
    v2->_dateLastRunKey = v8;
  }

  return v2;
}

- (NSDate)dateLastRun
{
  v3 = objc_opt_class();
  dateLastRunKey = self->_dateLastRunKey;
  v5 = objc_opt_class();

  return [v3 loadValueForKey:dateLastRunKey class:v5];
}

- (void)setDateLastRun:(id)a3
{
  v4 = a3;
  [objc_opt_class() saveValue:v4 forKey:self->_dateLastRunKey];
}

+ (id)loadValueForKey:(id)a3 class:(Class)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = [v5 setWithObject:a4];
  v8 = [MEMORY[0x277D717A8] unarchivedObjectOfClasses:v7 forKey:v6];

  return v8;
}

- (void)processAnalytics:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (TPSAnalyticsProcessorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end