@interface WFTrigger(ContentInput)
- (void)diskEventInfoForEvent:()ContentInput completion:;
@end

@implementation WFTrigger(ContentInput)

- (void)diskEventInfoForEvent:()ContentInput completion:
{
  if (!a3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTrigger+ContentInput.m" lineNumber:93 description:@"eventInfo should never be nil"];
  }
}

@end