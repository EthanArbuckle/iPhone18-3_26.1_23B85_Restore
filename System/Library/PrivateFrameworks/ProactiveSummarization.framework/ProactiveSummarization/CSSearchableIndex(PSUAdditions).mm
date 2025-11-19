@interface CSSearchableIndex(PSUAdditions)
+ (id)psu_criticalIndexWithName:()PSUAdditions protectionClass:bundleIdentifier:;
@end

@implementation CSSearchableIndex(PSUAdditions)

+ (id)psu_criticalIndexWithName:()PSUAdditions protectionClass:bundleIdentifier:
{
  v7 = MEMORY[0x277CC34A8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] _initWithName:v10 protectionClass:v9 bundleIdentifier:v8 options:32];

  return v11;
}

@end