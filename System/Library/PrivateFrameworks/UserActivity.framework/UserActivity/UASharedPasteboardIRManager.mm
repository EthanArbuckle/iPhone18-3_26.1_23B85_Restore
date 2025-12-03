@interface UASharedPasteboardIRManager
+ (id)sharedIRManager;
- (UASharedPasteboardIRManager)init;
- (id)converterForType:(id)type;
- (id)registeredConverters;
- (void)initializeConverters;
- (void)registerIRHandlerClass:(Class)class forType:(id)type;
@end

@implementation UASharedPasteboardIRManager

+ (id)sharedIRManager
{
  if (sharedIRManager_onceToken != -1)
  {
    +[UASharedPasteboardIRManager sharedIRManager];
  }

  v3 = sharedIRManager_instance;

  return v3;
}

void __46__UASharedPasteboardIRManager_sharedIRManager__block_invoke()
{
  v0 = objc_alloc_init(UASharedPasteboardIRManager);
  v1 = sharedIRManager_instance;
  sharedIRManager_instance = v0;
}

- (UASharedPasteboardIRManager)init
{
  v5.receiver = self;
  v5.super_class = UASharedPasteboardIRManager;
  v2 = [(UASharedPasteboardIRManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(UASharedPasteboardIRManager *)v2 setLookupTable:v3];
  }

  return v2;
}

- (void)initializeConverters
{
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_DEFAULT, "Initalizing PBIR Converters", v3, 2u);
  }

  [objc_opt_class() registerConverter];
  [objc_opt_class() registerConverter];
  [objc_opt_class() registerConverter];
  [objc_opt_class() registerConverter];
}

- (id)registeredConverters
{
  lookupTable = [(UASharedPasteboardIRManager *)self lookupTable];
  v3 = [lookupTable copy];

  return v3;
}

- (void)registerIRHandlerClass:(Class)class forType:(id)type
{
  typeCopy = type;
  if ([(objc_class *)class conformsToProtocol:&unk_283A646A0])
  {
    lookupTable = [(UASharedPasteboardIRManager *)self lookupTable];
    [lookupTable setObject:class forKey:typeCopy];
  }
}

- (id)converterForType:(id)type
{
  typeCopy = type;
  lookupTable = [(UASharedPasteboardIRManager *)self lookupTable];
  v6 = [lookupTable objectForKey:typeCopy];

  if (v6)
  {
    v6 = objc_alloc_init(v6);
  }

  return v6;
}

@end