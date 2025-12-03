@interface CADisplayLink(RCAdditions)
+ (uint64_t)rc_displayLinkWithWeakTarget:()RCAdditions selector:;
+ (void)rc_displayWithFramesPerSecond:()RCAdditions handlerBlock:;
@end

@implementation CADisplayLink(RCAdditions)

+ (uint64_t)rc_displayLinkWithWeakTarget:()RCAdditions selector:
{
  v5 = [[RCWeakDisplayLinkTargetProxy alloc] initWithTarget:a3 selector:a4];

  return [self displayLinkWithTarget:v5 selector:sel_displayLinkFired_];
}

+ (void)rc_displayWithFramesPerSecond:()RCAdditions handlerBlock:
{
  v5 = [[RCDisplayLinkBlockTargetProxy alloc] initWithHandlerBlock:a4];
  v6 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v5 selector:sel_displayLinkFired_];
  [v6 setPreferredFramesPerSecond:a3];
  return v6;
}

@end