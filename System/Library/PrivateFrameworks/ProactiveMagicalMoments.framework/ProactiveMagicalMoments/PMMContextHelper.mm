@interface PMMContextHelper
+ (id)sharedInstance;
- (PMMContextHelper)init;
- (id)fetchDataDictionaryForKeyPath:(id)path;
@end

@implementation PMMContextHelper

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    +[PMMContextHelper sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __34__PMMContextHelper_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (PMMContextHelper)init
{
  v6.receiver = self;
  v6.super_class = PMMContextHelper;
  v2 = [(PMMContextHelper *)&v6 init];
  if (v2)
  {
    userContext = [MEMORY[0x277CFE318] userContext];
    context = v2->_context;
    v2->_context = userContext;
  }

  return v2;
}

- (id)fetchDataDictionaryForKeyPath:(id)path
{
  v3 = [(PMMContextHelper *)self fetchContextValueForKeyPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end