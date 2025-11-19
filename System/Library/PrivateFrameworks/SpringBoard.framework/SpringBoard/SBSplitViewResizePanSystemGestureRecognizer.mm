@interface SBSplitViewResizePanSystemGestureRecognizer
- (void)reset;
@end

@implementation SBSplitViewResizePanSystemGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBSplitViewResizePanSystemGestureRecognizer;
  [(SBPanSystemGestureRecognizer *)&v3 reset];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self setSplitPairAppLayout:0];
}

@end