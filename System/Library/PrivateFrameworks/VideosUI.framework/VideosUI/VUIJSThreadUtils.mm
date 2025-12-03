@interface VUIJSThreadUtils
+ (BOOL)isVideosUICoreJSThread;
@end

@implementation VUIJSThreadUtils

+ (BOOL)isVideosUICoreJSThread
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  name = [currentThread name];
  v4 = [name isEqualToString:@"VUICoreThread"];

  return v4;
}

@end