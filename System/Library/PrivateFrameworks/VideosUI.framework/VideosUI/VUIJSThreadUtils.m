@interface VUIJSThreadUtils
+ (BOOL)isVideosUICoreJSThread;
@end

@implementation VUIJSThreadUtils

+ (BOOL)isVideosUICoreJSThread
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 name];
  v4 = [v3 isEqualToString:@"VUICoreThread"];

  return v4;
}

@end