@interface REElementDataSource
+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)minimumSupportedSystemVersion;
+ (NSString)bundleIdentifier;
+ (id)contentAttributes;
- (NSString)name;
- (REElementDataSource)init;
- (REElementDataSourceDelegate)delegate;
- (id)activityDelegate;
- (void)beginActivity:(id)activity;
- (void)collectLoggableState:(id)state;
- (void)finishActivity:(id)activity;
- (void)getElementsDuringDateInterval:(id)interval inSection:(unint64_t)section withHandler:(id)handler;
- (void)loadLoggingHeader;
@end

@implementation REElementDataSource

- (REElementDataSource)init
{
  v5.receiver = self;
  v5.super_class = REElementDataSource;
  v2 = [(REElementDataSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 1;
    [(REElementDataSource *)v2 loadLoggingHeader];
  }

  return v3;
}

+ (id)contentAttributes
{
  if (contentAttributes_onceToken != -1)
  {
    +[REElementDataSource contentAttributes];
  }

  v3 = contentAttributes_ContentAttributes;

  return v3;
}

void __40__REElementDataSource_contentAttributes__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"REContentHeaderTextKey";
  v3[1] = @"REContentDescription1TextKey";
  v3[2] = @"REContentDescription2TextKey";
  v3[3] = @"REContentDescription3TextKey";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = contentAttributes_ContentAttributes;
  contentAttributes_ContentAttributes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)minimumSupportedSystemVersion
{
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 1;
  return result;
}

- (id)activityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activityDelegate);

  return WeakRetained;
}

- (void)beginActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_activityDelegate);
  [WeakRetained dataSource:self didBeginActivity:activityCopy];
}

- (void)finishActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_activityDelegate);
  [WeakRetained dataSource:self didFinishActivity:activityCopy];
}

- (void)loadLoggingHeader
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v9 = [v4 mutableCopy];

  [v9 replaceOccurrencesOfString:@"REUpNext" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"DataSource" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"Watch" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v9, "length")}];
  v5 = MEMORY[0x277CCACA8];
  lowercaseString = [v9 lowercaseString];
  v7 = [v5 stringWithFormat:@"[DS: %@]", lowercaseString];
  logHeader = self->_logHeader;
  self->_logHeader = v7;
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (REElementDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectLoggableState:(id)state
{
  if (state)
  {
    (*(state + 2))(state, &stru_283B97458);
  }
}

+ (NSString)bundleIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)getElementsDuringDateInterval:(id)interval inSection:(unint64_t)section withHandler:(id)handler
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end