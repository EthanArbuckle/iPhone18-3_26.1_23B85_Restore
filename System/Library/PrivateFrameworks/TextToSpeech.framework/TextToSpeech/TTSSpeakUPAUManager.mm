@interface TTSSpeakUPAUManager
+ (void)registerAU;
@end

@implementation TTSSpeakUPAUManager

+ (void)registerAU
{
  *&v2.componentType = xmmword_1A9586A00;
  v2.componentFlagsMask = 0;
  AudioComponentRegister(&v2, @"SPEECH ENHANCER", 0, sub_1A9357614);
}

@end