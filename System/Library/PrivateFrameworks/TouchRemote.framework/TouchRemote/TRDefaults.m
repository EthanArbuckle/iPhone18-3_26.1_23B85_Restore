@interface TRDefaults
+ (double)getDoubleForKey:(id)a3 defaultValue:(double)a4;
+ (id)sharedDefaults;
+ (id)sharedInstance;
+ (int64_t)getBoolForKey:(id)a3 defaultValue:(BOOL)a4;
+ (int64_t)getIntegerForKey:(id)a3 defaultValue:(int64_t)a4;
- (TRDefaults)init;
@end

@implementation TRDefaults

- (TRDefaults)init
{
  v6.receiver = self;
  v6.super_class = TRDefaults;
  v2 = [(TRDefaults *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.TouchRemote"];
    defaults = v2->_defaults;
    v2->_defaults = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[TRDefaults sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __28__TRDefaults_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(TRDefaults);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedDefaults
{
  v2 = +[TRDefaults sharedInstance];
  v3 = [v2 defaults];

  return v3;
}

+ (int64_t)getIntegerForKey:(id)a3 defaultValue:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 sharedDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    a4 = [v7 integerForKey:v6];
  }

  return a4;
}

+ (double)getDoubleForKey:(id)a3 defaultValue:(double)a4
{
  v6 = a3;
  v7 = [a1 sharedDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    [v7 doubleForKey:v6];
    a4 = v9;
  }

  return a4;
}

+ (int64_t)getBoolForKey:(id)a3 defaultValue:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 sharedDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v4 = [v7 BOOLForKey:v6];
  }

  return v4;
}

@end