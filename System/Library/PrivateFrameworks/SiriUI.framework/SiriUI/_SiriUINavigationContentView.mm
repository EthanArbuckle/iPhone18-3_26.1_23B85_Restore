@interface _SiriUINavigationContentView
- (_SiriUINavigationContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
@end

@implementation _SiriUINavigationContentView

- (_SiriUINavigationContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _SiriUINavigationContentView;
  v3 = [(_SiriUINavigationContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v30 = [(_SiriUINavigationContentView *)self contentView];
    [v30 setFrame:{v29, v27, v22, v19}];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  if (self->_contentView != v5)
  {
    v7 = v5;
    v6 = [(_SiriUINavigationContentView *)self contentView];
    [v6 removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)self->_contentView recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
    [(_SiriUINavigationContentView *)self addSubview:v7];

    v5 = v7;
  }
}

@end