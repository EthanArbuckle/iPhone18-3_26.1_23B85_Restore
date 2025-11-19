@interface WLInternal
+ (BOOL)isInternal;
@end

@implementation WLInternal

+ (BOOL)isInternal
{
  v2 = [@"com.apple.welcomekit" UTF8String];

  return MEMORY[0x282203340](v2);
}

@end