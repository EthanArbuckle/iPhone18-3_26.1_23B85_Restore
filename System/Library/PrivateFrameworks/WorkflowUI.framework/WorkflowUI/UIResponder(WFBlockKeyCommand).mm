@interface UIResponder(WFBlockKeyCommand)
- (void)wf_handleBlockKeyCommand:()WFBlockKeyCommand;
@end

@implementation UIResponder(WFBlockKeyCommand)

- (void)wf_handleBlockKeyCommand:()WFBlockKeyCommand
{
  v3 = [a3 block];
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

@end