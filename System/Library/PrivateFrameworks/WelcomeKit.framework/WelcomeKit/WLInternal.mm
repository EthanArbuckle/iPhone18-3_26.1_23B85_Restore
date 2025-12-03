@interface WLInternal
+ (BOOL)isInternal;
@end

@implementation WLInternal

+ (BOOL)isInternal
{
  uTF8String = [@"com.apple.welcomekit" UTF8String];

  return MEMORY[0x282203340](uTF8String);
}

@end