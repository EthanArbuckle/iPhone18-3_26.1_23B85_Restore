@interface UIResponder(WFBlockKeyCommand)
- (void)wf_handleBlockKeyCommand:()WFBlockKeyCommand;
@end

@implementation UIResponder(WFBlockKeyCommand)

- (void)wf_handleBlockKeyCommand:()WFBlockKeyCommand
{
  block = [a3 block];
  if (block)
  {
    v4 = block;
    block[2]();
    block = v4;
  }
}

@end