@interface _SiriUINavigationContentView
- (_SiriUINavigationContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation _SiriUINavigationContentView

- (_SiriUINavigationContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _SiriUINavigationContentView;
  v3 = [(_SiriUINavigationContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_contentLayoutEnabled = 1;
    v3->_supportsSAE = [MEMORY[0x277CEF4D0] saeAvailable];
  }

  return v4;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = _SiriUINavigationContentView;
  [(_SiriUINavigationContentView *)&v35 layoutSubviews];
  if (self->_contentLayoutEnabled)
  {
    [(_SiriUINavigationContentView *)self safeAreaInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(_SiriUINavigationContentView *)self bounds];
    v31 = v14;
    v33 = v13;
    v15 = v12 - (v4 + v8);
    if (self->_supportsSAE)
    {
      [(_SiriUINavigationContentView *)self bounds];
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v17 = v11 - (v6 + v10);
      v19 = v12 - (v4 + v8);
    }

    v20 = [(_SiriUINavigationContentView *)self contentView:v31];
    [v20 sizeThatFits:{v17, v15}];
    v22 = v21;
    v24 = v23;

    if (self->_supportsSAE)
    {
      IsPhone = SiriUIDeviceIsPhone();
      v26 = v17 > v19;
      v27 = 0.0;
      v28 = v8;
      if (IsPhone && v26)
      {
        v29 = v4;
      }

      else
      {
        v29 = 0.0;
      }

      if (IsPhone && v26)
      {
        v22 = v17 - v4 - v28;
      }

      else
      {
        v22 = v17;
      }
    }

    else
    {
      v29 = v6 + v34;
      v27 = v4 + v32;
      if (v24 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v24;
      }
    }

    contentView = [(_SiriUINavigationContentView *)self contentView];
    [contentView setFrame:{v29, v27, v22, v19}];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  if (self->_contentView != viewCopy)
  {
    v7 = viewCopy;
    contentView = [(_SiriUINavigationContentView *)self contentView];
    [contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(UIView *)self->_contentView recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
    [(_SiriUINavigationContentView *)self addSubview:v7];

    viewCopy = v7;
  }
}

@end