@interface _TVActivityView
- (void)layoutSubviews;
- (void)setActivityView:(id)view;
- (void)setTextView:(id)view;
@end

@implementation _TVActivityView

- (void)setActivityView:(id)view
{
  viewCopy = view;
  activityView = self->_activityView;
  v7 = viewCopy;
  if (activityView != viewCopy)
  {
    [(UIView *)activityView removeFromSuperview];
    objc_storeStrong(&self->_activityView, view);
    if (self->_activityView)
    {
      [(_TVActivityView *)self addSubview:?];
    }
  }

  [(_TVActivityView *)self setNeedsLayout];
}

- (void)setTextView:(id)view
{
  viewCopy = view;
  textView = self->_textView;
  v7 = viewCopy;
  if (textView != viewCopy)
  {
    [(UIView *)textView removeFromSuperview];
    objc_storeStrong(&self->_textView, view);
    if (self->_textView)
    {
      [(_TVActivityView *)self addSubview:?];
    }
  }

  [(_TVActivityView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(_TVActivityView *)self bounds];
  v4 = v3;
  v6 = v5;
  activityView = [(_TVActivityView *)self activityView];
  [activityView tv_itemWidth];
  activityView2 = [(_TVActivityView *)self activityView];
  [activityView2 tv_itemHeight];
  UIRectCenteredIntegralRect();
  v10 = v9;
  recta = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  activityView3 = [(_TVActivityView *)self activityView];
  [activityView3 setFrame:{v10, v12, v14, v16}];

  textView = [(_TVActivityView *)self textView];
  [textView tv_margin];

  textView2 = [(_TVActivityView *)self textView];
  [textView2 sizeThatFits:{v4, v6}];

  v23.origin.x = recta;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  CGRectGetMinY(v23);
  rect = [(_TVActivityView *)self textView];
  UIRectCenteredXInRect();
  [rect setFrame:?];
}

@end