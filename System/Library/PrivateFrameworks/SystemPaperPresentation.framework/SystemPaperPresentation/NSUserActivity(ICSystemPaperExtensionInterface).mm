@interface NSUserActivity(ICSystemPaperExtensionInterface)
+ (id)ic_userActivityWithData:()ICSystemPaperExtensionInterface;
@end

@implementation NSUserActivity(ICSystemPaperExtensionInterface)

+ (id)ic_userActivityWithData:()ICSystemPaperExtensionInterface
{
  v3 = MEMORY[0x277CCAE58];
  v4 = a3;
  v5 = [[v3 alloc] _initWithUserActivityData:v4];

  return v5;
}

@end