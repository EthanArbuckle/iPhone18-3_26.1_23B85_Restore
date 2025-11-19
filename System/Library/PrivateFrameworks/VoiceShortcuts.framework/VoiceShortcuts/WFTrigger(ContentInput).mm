@interface WFTrigger(ContentInput)
- (void)diskEventInfoForEvent:()ContentInput completion:;
@end

@implementation WFTrigger(ContentInput)

- (void)diskEventInfoForEvent:()ContentInput completion:
{
  if (!a3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"WFTrigger+ContentInput.m" lineNumber:93 description:@"eventInfo should never be nil"];
  }
}

@end