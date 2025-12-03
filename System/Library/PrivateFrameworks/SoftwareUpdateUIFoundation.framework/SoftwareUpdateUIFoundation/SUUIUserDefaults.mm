@interface SUUIUserDefaults
+ (SUUIUserDefaults)sharedDefaults;
+ (id)allDefaults;
- (BOOL)BOOLForEntry:(id)entry;
- (BOOL)containsKey:(id)key;
- (BOOL)defaultsContainsKey:(id)key;
- (BOOL)isNeRDProfileStatusInstalled;
- (BOOL)shouldBypassSystemRootWarning;
- (BOOL)shouldHideComingSoonTip;
- (BOOL)shouldKeepPreviousMockingKitSession;
- (BOOL)shouldShowComingSoonTip;
- (BOOL)shouldSkipMockingKitPIDValidation;
- (NSNumber)scanResultsCachingDuration;
- (NSString)comingSoonTipImageSystemName;
- (NSString)comingSoonTipLearnMoreLink;
- (NSString)comingSoonTipMessage;
- (NSString)comingSoonTipTitle;
- (SUUIUserDefaults)init;
- (id)numberForEntry:(id)entry;
- (id)objectForKey:(id)key ofClass:(Class)class;
- (id)stringForEntry:(id)entry;
- (void)comingSoonTipImageSystemName:(id)name;
- (void)comingSoonTipLearnMoreLink:(id)link;
- (void)comingSoonTipMessage:(id)message;
- (void)comingSoonTipTitle:(id)title;
- (void)isNeRDProfileStatusInstalled:(BOOL)installed;
- (void)removeEntry:(id)entry;
- (void)scanResultsCachingDuration:(id)duration;
- (void)setBool:(BOOL)bool forEntry:(id)entry;
- (void)setNumber:(id)number forEntry:(id)entry;
- (void)setObject:(id)object forKey:(id)key;
- (void)setString:(id)string forEntry:(id)entry;
- (void)shouldBypassSystemRootWarning:(BOOL)warning;
- (void)shouldHideComingSoonTip:(BOOL)tip;
- (void)shouldKeepPreviousMockingKitSession:(BOOL)session;
- (void)shouldShowComingSoonTip:(BOOL)tip;
- (void)shouldSkipMockingKitPIDValidation:(BOOL)validation;
@end

@implementation SUUIUserDefaults

+ (id)allDefaults
{
  v5 = &allDefaults_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_2);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = allDefaults_defaultsDeclarations;

  return v2;
}

uint64_t __31__SUUIUserDefaults_allDefaults__block_invoke()
{
  v15[11] = *MEMORY[0x277D85DE8];
  v14[0] = @"SUBypassSystemRootWarning";
  v13 = [SUUIUserDefaultsEntry initWithType:"initWithType:key:description:" key:? description:?];
  v15[0] = v13;
  v14[1] = @"SUScanResultsCachingDuration";
  v12 = [[SUUIUserDefaultsEntry alloc] initWithType:1 key:@"SUScanResultsCachingDuration" description:@"The amount of time, in minutes, to cache the discovered scan results, if supported by the platform."];
  v15[1] = v12;
  v14[2] = @"SUKeepPreviousMockingKitSesson";
  v11 = [[SUUIUserDefaultsEntry alloc] initWithType:0 key:@"SUKeepPreviousMockingKitSesson" description:@"Whether Mocking Kit test plans sessions should be kept alive after the end of the test execution."];
  v15[2] = v11;
  v14[3] = @"SUSkipMockingKitPIDValidation";
  v10 = [[SUUIUserDefaultsEntry alloc] initWithType:0 key:@"SUSkipMockingKitPIDValidation" description:@"Whether Mocking Kit test plans sessions should be kept bypass the Process ID validation."];
  v15[3] = v10;
  v14[4] = @"SUShowComingSoonTip";
  v9 = [[SUUIUserDefaultsEntry alloc] initWithType:0 key:@"SUShowComingSoonTip" description:@"Indicates whether the Coming Soon tip should be forcibly shown regardless of its actual status."];
  v15[4] = v9;
  v14[5] = @"SURecoveryOSProfileStatus";
  v8 = [[SUUIUserDefaultsEntry alloc] initWithType:0 key:@"SURecoveryOSProfileStatus" description:@"Indicates whether RecoveryOS profile is installed so the user will be able to get the status Constellation display criterias"];
  v15[5] = v8;
  v14[6] = @"SUHideComingSoonTip";
  v7 = [[SUUIUserDefaultsEntry alloc] initWithType:0 key:@"SUHideComingSoonTip" description:@"Indicates whether the Coming Soon tip should be forcibly hidden regardless of its Constellation display criterias"];
  v15[6] = v7;
  v14[7] = @"SUComingSoonTipTitle";
  v6 = [SUUIUserDefaultsEntry initWithType:"initWithType:key:description:" key:? description:?];
  v15[7] = v6;
  v14[8] = @"SUComingSoonTipImageSystemName";
  v5 = [[SUUIUserDefaultsEntry alloc] initWithType:2 key:@"SUComingSoonTipImageSystemName" description:@"The image system name for the Coming Soon tip. This field will override the value returned by Constellation."];
  v15[8] = v5;
  v14[9] = @"SUComingSoonTipMessage";
  v4 = [[SUUIUserDefaultsEntry alloc] initWithType:2 key:@"SUComingSoonTipMessage" description:@"The message body for the Coming Soon tip. This field will override the value returned by Constellation."];
  v15[9] = v4;
  v14[10] = @"SUComingSoonTipLearnMoreLink";
  v3 = [[SUUIUserDefaultsEntry alloc] initWithType:2 key:@"SUComingSoonTipLearnMoreLink" description:@"The action URL that will be opened by the Learn More link, referenced in the Coming Soon tip. This field will override the value returned by Constellation."];
  v15[10] = v3;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:11];
  v1 = allDefaults_defaultsDeclarations;
  allDefaults_defaultsDeclarations = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  result = MEMORY[0x277D82BD8](v13);
  *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldBypassSystemRootWarning
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUBypassSystemRootWarning"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldBypassSystemRootWarning:(BOOL)warning
{
  selfCopy = self;
  v6 = a2;
  warningCopy = warning;
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUBypassSystemRootWarning"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setBool:warningCopy forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (NSNumber)scanResultsCachingDuration
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUScanResultsCachingDuration"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy numberForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)scanResultsCachingDuration:(id)duration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, duration);
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUScanResultsCachingDuration"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setNumber:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldKeepPreviousMockingKitSession
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUKeepPreviousMockingKitSesson"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldKeepPreviousMockingKitSession:(BOOL)session
{
  selfCopy = self;
  v6 = a2;
  sessionCopy = session;
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUKeepPreviousMockingKitSesson"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setBool:sessionCopy forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (BOOL)shouldSkipMockingKitPIDValidation
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUSkipMockingKitPIDValidation"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldSkipMockingKitPIDValidation:(BOOL)validation
{
  selfCopy = self;
  v6 = a2;
  validationCopy = validation;
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUSkipMockingKitPIDValidation"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setBool:validationCopy forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (BOOL)isNeRDProfileStatusInstalled
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SURecoveryOSProfileStatus"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)isNeRDProfileStatusInstalled:(BOOL)installed
{
  selfCopy = self;
  v6 = a2;
  installedCopy = installed;
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SURecoveryOSProfileStatus"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setBool:installedCopy forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (BOOL)shouldShowComingSoonTip
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUShowComingSoonTip"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldShowComingSoonTip:(BOOL)tip
{
  selfCopy = self;
  v6 = a2;
  tipCopy = tip;
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUShowComingSoonTip"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setBool:tipCopy forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (BOOL)shouldHideComingSoonTip
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUHideComingSoonTip"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldHideComingSoonTip:(BOOL)tip
{
  selfCopy = self;
  v6 = a2;
  tipCopy = tip;
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUHideComingSoonTip"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setBool:tipCopy forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (NSString)comingSoonTipTitle
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUComingSoonTipTitle"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy stringForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)comingSoonTipTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUComingSoonTipTitle"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setString:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (NSString)comingSoonTipMessage
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUComingSoonTipMessage"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy stringForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)comingSoonTipMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUComingSoonTipMessage"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setString:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (NSString)comingSoonTipImageSystemName
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUComingSoonTipImageSystemName"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy stringForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)comingSoonTipImageSystemName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUComingSoonTipImageSystemName"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setString:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (NSString)comingSoonTipLearnMoreLink
{
  selfCopy = self;
  v5[1] = a2;
  allDefaults = [objc_opt_class() allDefaults];
  v5[0] = [allDefaults objectForKey:@"SUComingSoonTipLearnMoreLink"];
  MEMORY[0x277D82BD8](allDefaults);
  v4 = [(SUUIUserDefaults *)selfCopy stringForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)comingSoonTipLearnMoreLink:(id)link
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, link);
  allDefaults = [objc_opt_class() allDefaults];
  v4 = [allDefaults objectForKey:@"SUComingSoonTipLearnMoreLink"];
  MEMORY[0x277D82BD8](allDefaults);
  [(SUUIUserDefaults *)selfCopy setString:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

+ (SUUIUserDefaults)sharedDefaults
{
  selfCopy = self;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __34__SUUIUserDefaults_sharedDefaults__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  selfCopy2 = self;
  v13 = &sharedDefaults_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedDefaults_sharedInstance;

  return v2;
}

uint64_t __34__SUUIUserDefaults_sharedDefaults__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedDefaults_sharedInstance;
  sharedDefaults_sharedInstance = v1;
  return MEMORY[0x277D82BD8](v2);
}

- (SUUIUserDefaults)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = SUUIUserDefaults;
  v6 = [(SUUIUserDefaults *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.softwareupdatesettings"];
    userDefaults = v9->_userDefaults;
    v9->_userDefaults = v2;
    MEMORY[0x277D82BD8](userDefaults);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (BOOL)containsKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  allDefaults = [objc_opt_class() allDefaults];
  v3 = [allDefaults objectForKey:location[0]];
  v6 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](allDefaults);
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)defaultsContainsKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  allDefaults = [objc_opt_class() allDefaults];
  v8 = [allDefaults objectForKey:location[0]];
  MEMORY[0x277D82BD8](allDefaults);
  if (v8)
  {
    userDefaults = selfCopy->_userDefaults;
    v6 = [v8 key];
    v3 = [(NSUserDefaults *)userDefaults objectForKey:?];
    v11 = v3 != 0;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (BOOL)BOOLForEntry:(id)entry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entry);
  v5 = selfCopy;
  v6 = [location[0] key];
  v7 = [(SUUIUserDefaults *)v5 objectForKey:v6 ofClass:objc_opt_class()];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return bOOLValue != 0;
}

- (id)numberForEntry:(id)entry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entry);
  v4 = selfCopy;
  v5 = [location[0] key];
  v6 = [(SUUIUserDefaults *)v4 objectForKey:v5 ofClass:objc_opt_class()];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)stringForEntry:(id)entry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entry);
  v4 = selfCopy;
  v5 = [location[0] key];
  v6 = [(SUUIUserDefaults *)v4 objectForKey:v5 ofClass:objc_opt_class()];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)objectForKey:(id)key ofClass:(Class)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v5 = [(NSUserDefaults *)selfCopy->_userDefaults valueForKey:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

- (void)setString:(id)string forEntry:(id)entry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v8 = 0;
  objc_storeStrong(&v8, entry);
  v6 = selfCopy;
  v5 = location[0];
  v7 = [v8 key];
  [(SUUIUserDefaults *)v6 setObject:v5 forKey:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)setBool:(BOOL)bool forEntry:(id)entry
{
  selfCopy = self;
  v9 = a2;
  boolCopy = bool;
  location = 0;
  objc_storeStrong(&location, entry);
  v4 = selfCopy;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:boolCopy];
  v5 = [location key];
  [(SUUIUserDefaults *)v4 setObject:v6 forKey:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&location, 0);
}

- (void)setNumber:(id)number forEntry:(id)entry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v8 = 0;
  objc_storeStrong(&v8, entry);
  v6 = selfCopy;
  v5 = location[0];
  v7 = [v8 key];
  [(SUUIUserDefaults *)v6 setObject:v5 forKey:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)setObject:(id)object forKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  v5 = 0;
  objc_storeStrong(&v5, key);
  [(NSUserDefaults *)selfCopy->_userDefaults setObject:location[0] forKey:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)removeEntry:(id)entry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entry);
  userDefaults = selfCopy->_userDefaults;
  v4 = [location[0] key];
  [(NSUserDefaults *)userDefaults removeObjectForKey:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

@end