@interface _UIDocumentUnavailablePageBackgroundAccessoryView
- (_UIDocumentUnavailablePageBackgroundAccessoryView)initWithFrame:(CGRect)frame;
- (unsigned)_layoutPageViews;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
@end

@implementation _UIDocumentUnavailablePageBackgroundAccessoryView

- (_UIDocumentUnavailablePageBackgroundAccessoryView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = _UIDocumentUnavailablePageBackgroundAccessoryView;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_UIDocumentUnavailablePageView);
    leftView = v3->_leftView;
    v3->_leftView = v4;

    v6 = objc_alloc_init(_UIDocumentUnavailablePageView);
    rightView = v3->_rightView;
    v3->_rightView = v6;

    [(UIView *)v3 addSubview:v3->_leftView];
    [(UIView *)v3 addSubview:v3->_rightView];
    if (_UISolariumEnabled())
    {
      layer = [(UIView *)v3->_leftView layer];
      [layer setCornerRadius:28.0];

      layer2 = [(UIView *)v3->_rightView layer];
      [layer2 setCornerRadius:28.0];
    }
  }

  return v3;
}

- (unsigned)_layoutPageViews
{
  if (result)
  {
    v1 = result;
    [result bounds];
    v3 = v2;
    v5 = v4;
    v41 = v7;
    v42 = v6;
    v8 = *(v1 + 54);
    v40 = *(v1 + 55);
    traitCollection = [v1 traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    [v1 safeAreaInsets];
    v12 = v11;
    v14 = v13;
    [v1 layoutMargins];
    v16 = v15;
    v18 = v17;
    v39 = v19;
    v20 = v1[424];
    if (horizontalSizeClass == 1)
    {
      v21 = 12.0;
    }

    else
    {
      v21 = 24.0;
    }

    v37 = v3;
    if (horizontalSizeClass == 1)
    {
      v44.origin.x = v3;
      v44.origin.y = v5;
      v44.size.height = v41;
      v44.size.width = v42;
      v22 = v12;
      v23 = v14;
      v24 = v16;
      Width = CGRectGetWidth(v44);
      v16 = v24;
      v14 = v23;
      v12 = v22;
      v27 = v1[424];
      v26 = 30.0;
    }

    else
    {
      Width = 100.0;
      v26 = 56.0;
      v27 = v1[424];
    }

    v28 = v18 - v21 - v12;
    if (v28 >= Width)
    {
      v28 = Width;
    }

    if (v39 - v21 - v14 < Width)
    {
      Width = v39 - v21 - v14;
    }

    if (v20)
    {
      v29 = Width;
    }

    else
    {
      v28 = 0.0;
      v29 = 0.0;
    }

    v30 = 0.4;
    if (v27)
    {
      v30 = 1.0;
    }

    v31 = v26 * v30;
    v32 = v8 * 0.5 + v18 - v28;
    v33 = v40 * 0.5 + v16 + v31;
    [*(v1 + 51) setCenter:{v32, v33, *&v37}];
    v34 = *MEMORY[0x1E695EFF8];
    v35 = *(MEMORY[0x1E695EFF8] + 8);
    [*(v1 + 51) setBounds:{*MEMORY[0x1E695EFF8], v35, v8, v40}];
    v45.origin.x = v38;
    v45.origin.y = v5;
    v45.size.height = v41;
    v45.size.width = v42;
    [*(v1 + 52) setCenter:{v8 * 0.5 + v29 + CGRectGetWidth(v45) - v39 - v8, v33}];
    v36 = *(v1 + 52);

    return [v36 setBounds:{v34, v35, v8, v40}];
  }

  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIDocumentUnavailablePageBackgroundAccessoryView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIDocumentUnavailablePageBackgroundAccessoryView *)self _layoutPageViews];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIDocumentUnavailablePageBackgroundAccessoryView;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(UIView *)self setNeedsLayout];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIDocumentUnavailablePageBackgroundAccessoryView;
  [(UIView *)&v3 safeAreaInsetsDidChange];
  [(UIView *)self setNeedsLayout];
}

@end