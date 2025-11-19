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
  v3 = [(_PKSummaryViewSubviewContainer *)self view];
  [v3 setAlpha:0.0];

  v4 = [(_PKSummaryViewSubviewContainer *)self view];
  v5 = [v4 layer];
  [v5 clearHasBeenCommitted];

  v6 = [(_PKSummaryViewSubviewContainer *)self view];
  [v6 pkui_setAlpha:1 animated:1.0];
}

@end