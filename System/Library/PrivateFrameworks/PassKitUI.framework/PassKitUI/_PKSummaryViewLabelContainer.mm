@interface _PKSummaryViewLabelContainer
- (id)createView;
- (void)animateTransition;
@end

@implementation _PKSummaryViewLabelContainer

- (id)createView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);

  return v2;
}

- (void)animateTransition
{
  v7.receiver = self;
  v7.super_class = _PKSummaryViewLabelContainer;
  [(_PKSummaryViewSubviewContainer *)&v7 animateTransition];
  view = [(_PKSummaryViewSubviewContainer *)self view];
  [view setAlpha:0.0];

  view2 = [(_PKSummaryViewSubviewContainer *)self view];
  layer = [view2 layer];
  [layer clearHasBeenCommitted];

  view3 = [(_PKSummaryViewSubviewContainer *)self view];
  [view3 pkui_setAlpha:1 animated:1.0];
}

@end