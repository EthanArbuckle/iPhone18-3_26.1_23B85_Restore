@interface TRDefaults
+ (double)getDoubleForKey:(id)key defaultValue:(double)value;
+ (id)sharedDefaults;
+ (id)sharedInstance;
+ (int64_t)getBoolForKey:(id)key defaultValue:(BOOL)value;
+ (int64_t)getIntegerForKey:(id)key defaultValue:(int64_t)value;
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
  defaults = [v2 defaults];

  return defaults;
}

+ (int64_t)getIntegerForKey:(id)key defaultValue:(int64_t)value
{
  keyCopy = key;
  sharedDefaults = [self sharedDefaults];
  v8 = [sharedDefaults objectForKey:keyCopy];

  if (v8)
  {
    value = [sharedDefaults integerForKey:keyCopy];
  }

  return value;
}

+ (double)getDoubleForKey:(id)key defaultValue:(double)value
{
  keyCopy = key;
  sharedDefaults = [self sharedDefaults];
  v8 = [sharedDefaults objectForKey:keyCopy];

  if (v8)
  {
    [sharedDefaults doubleForKey:keyCopy];
    value = v9;
  }

  return value;
}

+ (int64_t)getBoolForKey:(id)key defaultValue:(BOOL)value
{
  valueCopy = value;
  keyCopy = key;
  sharedDefaults = [self sharedDefaults];
  v8 = [sharedDefaults objectForKey:keyCopy];

  if (v8)
  {
    valueCopy = [sharedDefaults BOOLForKey:keyCopy];
  }

  return valueCopy;
}

@end