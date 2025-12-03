@interface WOChronicleClass
+ (id)chronicleInstance:(id)instance;
- (WOChronicleClass)initWithInstance:(id)instance;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation WOChronicleClass

+ (id)chronicleInstance:(id)instance
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, instance);
  v14 = 0;
  v10 = 0;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = 1;
    v10 = [standardUserDefaults hk_BOOLForKey:@"WOChronicleInstanceCalls" defaultValue:0];
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](standardUserDefaults);
  }

  if (v10)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v9 = type;
      v7 = location[0];
      v3 = objc_opt_class();
      v11 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_0_8_64(v19, v7, v11);
      _os_log_impl(&dword_20AEA4000, log, v9, "[chronicle] Chronicling instance %p of type %@", v19, 0x16u);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&oslog, 0);
    v4 = [selfCopy alloc];
    v18 = [v4 initWithInstance:location[0]];
  }

  else
  {
    v18 = MEMORY[0x277D82BE0](location[0]);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v18;

  return v5;
}

- (WOChronicleClass)initWithInstance:(id)instance
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, instance);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = WOChronicleClass;
  selfCopy = [(WOChronicleClass *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(WOChronicleClass *)selfCopy setChronicledInstance:location[0]];
    v4 = objc_opt_class();
    v7 = NSStringFromClass(v4);
    [(WOChronicleClass *)selfCopy setChronicledClassName:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v6 = +[WOChronicle shared];
  chronicledClassName = [(WOChronicleClass *)self chronicledClassName];
  chronicledInstance = [(WOChronicleClass *)self chronicledInstance];
  [WOChronicle recordWithClassName:v6 classInstance:"recordWithClassName:classInstance:selector:" selector:chronicledClassName];
  MEMORY[0x277D82BD8](chronicledInstance);
  MEMORY[0x277D82BD8](chronicledClassName);
  return [(WOChronicleClass *)self chronicledInstance];
}

- (id)description
{
  chronicledInstance = [(WOChronicleClass *)self chronicledInstance];
  v4 = [chronicledInstance description];
  MEMORY[0x277D82BD8](chronicledInstance);

  return v4;
}

@end