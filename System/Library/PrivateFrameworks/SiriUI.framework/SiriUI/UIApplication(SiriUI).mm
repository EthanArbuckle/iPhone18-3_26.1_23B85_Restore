@interface UIApplication(SiriUI)
- (double)siriui_applicationFrame;
@end

@implementation UIApplication(SiriUI)

- (double)siriui_applicationFrame
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if ([mEMORY[0x277D75128] conformsToProtocol:&unk_287A681D0])
  {
    [mEMORY[0x277D75128] applicationFrame];
    v2 = v1;
  }

  else
  {
    keyWindow = [*MEMORY[0x277D76620] keyWindow];
    [keyWindow frame];
    v2 = v4;
  }

  return v2;
}

@end