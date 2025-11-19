@interface DCTCodeManager
+ (id)shared;
- (BOOL)hasCode;
- (void)addObserver:(id)a3 selector:(SEL)a4;
- (void)removeObserver:(id)a3;
- (void)setCode:(id)a3;
@end

@implementation DCTCodeManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[DCTCodeManager shared];
  }

  v3 = shared_instance;

  return v3;
}

uint64_t __24__DCTCodeManager_shared__block_invoke()
{
  shared_instance = objc_alloc_init(DCTCodeManager);

  return MEMORY[0x2821F96F8]();
}

- (void)setCode:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_code, a3);
  if (self->_code)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"DCTCodeDidChangeNotification" object:0];
  }
}

- (void)addObserver:(id)a3 selector:(SEL)a4
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = [v5 defaultCenter];
  [v7 addObserver:v6 selector:a4 name:@"DCTCodeDidChangeNotification" object:0];
}

- (void)removeObserver:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:@"DCTCodeDidChangeNotification" object:0];
}

- (BOOL)hasCode
{
  code = self->_code;
  if (code)
  {
    LOBYTE(code) = [(NSString *)code length]!= 0;
  }

  return code;
}

@end