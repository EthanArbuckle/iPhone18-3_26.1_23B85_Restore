@interface TPSAnalyticsProcessor
+ (id)loadValueForKey:(id)key class:(Class)class;
- (NSDate)dateLastRun;
- (TPSAnalyticsProcessor)init;
- (TPSAnalyticsProcessorDataSource)dataSource;
- (void)processAnalytics:(id)analytics;
- (void)setDateLastRun:(id)run;
@end

@implementation TPSAnalyticsProcessor

- (TPSAnalyticsProcessor)init
{
  v11.receiver = self;
  v11.super_class = TPSAnalyticsProcessor;
  v2 = [(TPSAnalyticsProcessor *)&v11 init];
  if (v2)
  {
    mEMORY[0x277D71620] = [MEMORY[0x277D71620] sharedInstance];
    analyticsEventController = v2->_analyticsEventController;
    v2->_analyticsEventController = mEMORY[0x277D71620];

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

- (void)setDateLastRun:(id)run
{
  runCopy = run;
  [objc_opt_class() saveValue:runCopy forKey:self->_dateLastRunKey];
}

+ (id)loadValueForKey:(id)key class:(Class)class
{
  v5 = MEMORY[0x277CBEB98];
  keyCopy = key;
  v7 = [v5 setWithObject:class];
  v8 = [MEMORY[0x277D717A8] unarchivedObjectOfClasses:v7 forKey:keyCopy];

  return v8;
}

- (void)processAnalytics:(id)analytics
{
  if (analytics)
  {
    (*(analytics + 2))(analytics);
  }
}

- (TPSAnalyticsProcessorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end