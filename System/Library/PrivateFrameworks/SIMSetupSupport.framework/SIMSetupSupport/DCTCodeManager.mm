@interface DCTCodeManager
+ (id)shared;
- (BOOL)hasCode;
- (void)addObserver:(id)observer selector:(SEL)selector;
- (void)removeObserver:(id)observer;
- (void)setCode:(id)code;
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

- (void)setCode:(id)code
{
  codeCopy = code;
  objc_storeStrong(&self->_code, code);
  if (self->_code)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"DCTCodeDidChangeNotification" object:0];
  }
}

- (void)addObserver:(id)observer selector:(SEL)selector
{
  v5 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter addObserver:observerCopy selector:selector name:@"DCTCodeDidChangeNotification" object:0];
}

- (void)removeObserver:(id)observer
{
  v3 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:observerCopy name:@"DCTCodeDidChangeNotification" object:0];
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