@interface BundleControllerHelper
+ (id)sharedInstance;
- (BOOL)doubleTapRequiresHover;
- (id)loadSpecifiersFromPlistName:(id)a3 stringsName:(id)a4 bundle:(id)a5 specifier:(id)a6 target:(id)a7;
- (void)setDoubleTapRequiresHover:(BOOL)a3;
- (void)setOpaqueTouchProperty:(id)a3 value:(id)a4;
@end

@implementation BundleControllerHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BundleControllerHelper sharedInstance];
  }

  v3 = sharedInstance_sHelper;

  return v3;
}

uint64_t __40__BundleControllerHelper_sharedInstance__block_invoke()
{
  sharedInstance_sHelper = objc_alloc_init(BundleControllerHelper);

  return MEMORY[0x2821F96F8]();
}

- (id)loadSpecifiersFromPlistName:(id)a3 stringsName:(id)a4 bundle:(id)a5 specifier:(id)a6 target:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v28 = 0;
  v29 = 0;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = [v13 pathForResource:v12 ofType:@"plist"];
  if (!v17)
  {
    v18 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v13 bundlePath];
      *buf = 138412546;
      v31 = v12;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_25E1BC000, v18, OS_LOG_TYPE_DEFAULT, "Warning: failed to load preferences plist '%@.plist' for bundle %@", buf, 0x16u);
    }
  }

  v20 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v17];
  v27 = objc_opt_new();
  v21 = SpecifiersFromPlist();

  v22 = v27;
  bundleControllers = self->_bundleControllers;
  if (!bundleControllers)
  {
    v24 = objc_opt_new();
    v25 = self->_bundleControllers;
    self->_bundleControllers = v24;

    bundleControllers = self->_bundleControllers;
  }

  [(NSMutableArray *)bundleControllers addObjectsFromArray:v22, &v27];

  return v21;
}

- (BOOL)doubleTapRequiresHover
{
  v2 = [(BundleControllerHelper *)self opaqueTouchSenderDescriptor];
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"GesturesOnlyWhileHoveringEnabled"];
  v4 = BKSHIDServicesGetPersistentServiceProperties();

  v5 = [v4 objectForKeyedSubscript:@"GesturesOnlyWhileHoveringEnabled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDoubleTapRequiresHover:(BOOL)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"GesturesOnlyWhileHoveringEnabled";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v6 = [(BundleControllerHelper *)self opaqueTouchSenderDescriptor];
  BKSHIDServicesSetPersistentServiceProperties();
}

- (void)setOpaqueTouchProperty:(id)a3 value:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = v6;
  v16[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v9 = [(BundleControllerHelper *)self opaqueTouchSenderDescriptor];
  BKSHIDServicesSetPersistentServiceProperties();

  v10 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_25E1BC000, v10, OS_LOG_TYPE_DEFAULT, "Setting opaque touch property: %@: %@", &v11, 0x16u);
  }
}

@end