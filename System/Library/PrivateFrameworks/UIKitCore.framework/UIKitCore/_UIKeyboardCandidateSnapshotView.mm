@interface _UIKeyboardCandidateSnapshotView
- (void)drawRect:(CGRect)rect;
@end

@implementation _UIKeyboardCandidateSnapshotView

- (void)drawRect:(CGRect)rect
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextClear();
  v5 = +[UIKeyboardImpl activeInstance];
  candidateController = [v5 candidateController];
  candidateBar = [candidateController candidateBar];
  layer = [candidateBar layer];

  [layer renderInContext:v4];
}

@end