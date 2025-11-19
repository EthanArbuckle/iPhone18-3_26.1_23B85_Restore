@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __56__NSUserDefaults_SIAppleGlobalDomain__appleGlobalDomain__block_invoke()
{
  appleGlobalDomain_defaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"Apple Global Domain"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __62__NSUserDefaults_SIAppleGlobalDomain__appleGlobalDomainSIKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"com.apple.sceneintelligence."])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasPrefix:@"com_apple_sceneintelligence_"];
  }

  return v3;
}

@end