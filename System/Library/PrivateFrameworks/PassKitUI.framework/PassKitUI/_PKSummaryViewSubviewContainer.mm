@interface _PKSummaryViewSubviewContainer
- (_PKSummaryViewSubviewContainer)initWithFrame:(CGRect)a3;
- (void)animateTransition;
- (void)layoutSubviews;
@end

@implementation _PKSummaryViewSubviewContainer

- (_PKSummaryViewSubviewContainer)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _PKSummaryViewSubviewContainer;
  v3 = [(_PKSummaryViewSubviewContainer *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_PKSummaryViewSubviewContainer *)v3 createView];
    view = v4->_view;
    v4->_view = v5;

    [(_PKSummaryViewSubviewContainer *)v4 addSubview:v4->_view];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _PKSummaryViewSubviewContainer;
  [(_PKSummaryViewSubviewContainer *)&v4 layoutSubviews];
  view = self->_view;
  [(_PKSummaryViewSubviewContainer *)self bounds];
  [(UIView *)view setFrame:?];
}

- (void)animateTransition
{
  v3 = [(UIView *)self->_view snapshotViewAfterScreenUpdates:0];
  [(_PKSummaryViewSubviewContainer *)self bounds];
  [v3 setFrame:?];
  [(_PKSummaryViewSubviewContainer *)self insertSubview:v3 aboveSubview:self->_view];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51___PKSummaryViewSubviewContainer_animateTransition__block_invoke;
  v5[3] = &unk_1E8011D28;
  v6 = v3;
  v4 = v3;
  _PKViewSetAlphaAnimated(v4, v5, &v7, 0.0, 0.0);
}

@end