@interface SUUIUserDefaults
+ (SUUIUserDefaults)sharedDefaults;
+ (id)allDefaults;
- (BOOL)BOOLForEntry:(id)a3;
- (BOOL)containsKey:(id)a3;
- (BOOL)defaultsContainsKey:(id)a3;
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
- (id)numberForEntry:(id)a3;
- (id)objectForKey:(id)a3 ofClass:(Class)a4;
- (id)stringForEntry:(id)a3;
- (void)comingSoonTipImageSystemName:(id)a3;
- (void)comingSoonTipLearnMoreLink:(id)a3;
- (void)comingSoonTipMessage:(id)a3;
- (void)comingSoonTipTitle:(id)a3;
- (void)isNeRDProfileStatusInstalled:(BOOL)a3;
- (void)removeEntry:(id)a3;
- (void)scanResultsCachingDuration:(id)a3;
- (void)setBool:(BOOL)a3 forEntry:(id)a4;
- (void)setNumber:(id)a3 forEntry:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setString:(id)a3 forEntry:(id)a4;
- (void)shouldBypassSystemRootWarning:(BOOL)a3;
- (void)shouldHideComingSoonTip:(BOOL)a3;
- (void)shouldKeepPreviousMockingKitSession:(BOOL)a3;
- (void)shouldShowComingSoonTip:(BOOL)a3;
- (void)shouldSkipMockingKitPIDValidation:(BOOL)a3;
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
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUBypassSystemRootWarning"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldBypassSystemRootWarning:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUBypassSystemRootWarning"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v7 setBool:v5 forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (NSNumber)scanResultsCachingDuration
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUScanResultsCachingDuration"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 numberForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)scanResultsCachingDuration:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUScanResultsCachingDuration"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v6 setNumber:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldKeepPreviousMockingKitSession
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUKeepPreviousMockingKitSesson"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldKeepPreviousMockingKitSession:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUKeepPreviousMockingKitSesson"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v7 setBool:v5 forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (BOOL)shouldSkipMockingKitPIDValidation
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUSkipMockingKitPIDValidation"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldSkipMockingKitPIDValidation:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUSkipMockingKitPIDValidation"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v7 setBool:v5 forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (BOOL)isNeRDProfileStatusInstalled
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SURecoveryOSProfileStatus"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)isNeRDProfileStatusInstalled:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SURecoveryOSProfileStatus"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v7 setBool:v5 forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (BOOL)shouldShowComingSoonTip
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUShowComingSoonTip"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldShowComingSoonTip:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUShowComingSoonTip"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v7 setBool:v5 forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (BOOL)shouldHideComingSoonTip
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUHideComingSoonTip"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 BOOLForEntry:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)shouldHideComingSoonTip:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUHideComingSoonTip"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v7 setBool:v5 forEntry:v4];
  objc_storeStrong(&v4, 0);
}

- (NSString)comingSoonTipTitle
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUComingSoonTipTitle"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 stringForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)comingSoonTipTitle:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUComingSoonTipTitle"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v6 setString:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (NSString)comingSoonTipMessage
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUComingSoonTipMessage"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 stringForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)comingSoonTipMessage:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUComingSoonTipMessage"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v6 setString:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (NSString)comingSoonTipImageSystemName
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUComingSoonTipImageSystemName"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 stringForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)comingSoonTipImageSystemName:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUComingSoonTipImageSystemName"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v6 setString:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (NSString)comingSoonTipLearnMoreLink
{
  v6 = self;
  v5[1] = a2;
  v3 = [objc_opt_class() allDefaults];
  v5[0] = [v3 objectForKey:@"SUComingSoonTipLearnMoreLink"];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUUIUserDefaults *)v6 stringForEntry:v5[0]];
  objc_storeStrong(v5, 0);

  return v4;
}

- (void)comingSoonTipLearnMoreLink:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [objc_opt_class() allDefaults];
  v4 = [v3 objectForKey:@"SUComingSoonTipLearnMoreLink"];
  MEMORY[0x277D82BD8](v3);
  [(SUUIUserDefaults *)v6 setString:location[0] forEntry:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

+ (SUUIUserDefaults)sharedDefaults
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __34__SUUIUserDefaults_sharedDefaults__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
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

- (BOOL)containsKey:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [objc_opt_class() allDefaults];
  v3 = [v5 objectForKey:location[0]];
  v6 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)defaultsContainsKey:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [objc_opt_class() allDefaults];
  v8 = [v7 objectForKey:location[0]];
  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    userDefaults = v10->_userDefaults;
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

- (BOOL)BOOLForEntry:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [location[0] key];
  v7 = [(SUUIUserDefaults *)v5 objectForKey:v6 ofClass:objc_opt_class()];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v4 = [v7 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v4 != 0;
}

- (id)numberForEntry:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v8;
  v5 = [location[0] key];
  v6 = [(SUUIUserDefaults *)v4 objectForKey:v5 ofClass:objc_opt_class()];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)stringForEntry:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v8;
  v5 = [location[0] key];
  v6 = [(SUUIUserDefaults *)v4 objectForKey:v5 ofClass:objc_opt_class()];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)objectForKey:(id)a3 ofClass:(Class)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(NSUserDefaults *)v7->_userDefaults valueForKey:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

- (void)setString:(id)a3 forEntry:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v6 = v10;
  v5 = location[0];
  v7 = [v8 key];
  [(SUUIUserDefaults *)v6 setObject:v5 forKey:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)setBool:(BOOL)a3 forEntry:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v10;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v5 = [location key];
  [(SUUIUserDefaults *)v4 setObject:v6 forKey:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&location, 0);
}

- (void)setNumber:(id)a3 forEntry:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v6 = v10;
  v5 = location[0];
  v7 = [v8 key];
  [(SUUIUserDefaults *)v6 setObject:v5 forKey:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(NSUserDefaults *)v7->_userDefaults setObject:location[0] forKey:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)removeEntry:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  userDefaults = v6->_userDefaults;
  v4 = [location[0] key];
  [(NSUserDefaults *)userDefaults removeObjectForKey:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

@end