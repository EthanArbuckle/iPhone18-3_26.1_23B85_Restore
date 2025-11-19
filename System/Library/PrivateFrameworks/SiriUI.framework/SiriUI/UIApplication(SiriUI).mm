@interface UIApplication(SiriUI)
- (double)siriui_applicationFrame;
@end

@implementation UIApplication(SiriUI)

- (double)siriui_applicationFrame
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  if ([v0 conformsToProtocol:&unk_287A681D0])
  {
    [v0 applicationFrame];
    v2 = v1;
  }

  else
  {
    v3 = [*MEMORY[0x277D76620] keyWindow];
    [v3 frame];
    v2 = v4;
  }

  return v2;
}

@end