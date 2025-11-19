@interface _UIKeyboardCandidateSnapshotView
- (void)drawRect:(CGRect)a3;
@end

@implementation _UIKeyboardCandidateSnapshotView

- (void)drawRect:(CGRect)a3
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
  v6 = [v5 candidateController];
  v7 = [v6 candidateBar];
  v8 = [v7 layer];

  [v8 renderInContext:v4];
}

@end