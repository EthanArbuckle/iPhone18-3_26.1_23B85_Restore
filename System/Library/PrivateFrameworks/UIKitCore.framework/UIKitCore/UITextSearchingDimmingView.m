@interface UITextSearchingDimmingView
- (UIEdgeInsets)contentInset;
- (UITextSearchingDimmingView)initWithFrame:(CGRect)a3;
- (void)_updatePunchoutPathForVisibleRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTextRects:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UITextSearchingDimmingView

- (UITextSearchingDimmingView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = UITextSearchingDimmingView;
  v3 = [(UIView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
    brighteningLayer = v3->_brighteningLayer;
    v3->_brighteningLayer = v4;

    v6 = [UIColor colorWithWhite:1.0 alpha:0.2];
    -[CAShapeLayer setFillColor:](v3->_brighteningLayer, "setFillColor:", [v6 CGColor]);

    [(CAShapeLayer *)v3->_brighteningLayer setCompositingFilter:*MEMORY[0x1E6979C30]];
    v7 = [(UIView *)v3 layer];
    [v7 addSublayer:v3->_brighteningLayer];

    v8 = objc_alloc_init(MEMORY[0x1E6979398]);
    dimmingLayer = v3->_dimmingLayer;
    v3->_dimmingLayer = v8;

    v10 = +[UIColor _dimmingViewColor];
    -[CALayer setBackgroundColor:](v3->_dimmingLayer, "setBackgroundColor:", [v10 CGColor]);

    v11 = [(UIView *)v3 layer];
    [v11 addSublayer:v3->_dimmingLayer];

    v12 = objc_alloc_init(MEMORY[0x1E69794A0]);
    punchoutLayer = v3->_punchoutLayer;
    v3->_punchoutLayer = v12;

    [(CAShapeLayer *)v3->_punchoutLayer setCompositingFilter:*MEMORY[0x1E69798E8]];
    [(CALayer *)v3->_dimmingLayer addSublayer:v3->_punchoutLayer];
  }

  return v3;
}

- (void)setTextRects:(id)a3
{
  self->_punchoutPathIsValid = 0;
  objc_storeStrong(&self->_textRects, a3);

  [(UIView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITextSearchingDimmingView;
  [(UIView *)&v4 traitCollectionDidChange:a3];
  [(UIView *)self setNeedsLayout];
}

- (void)_updatePunchoutPathForVisibleRect:(CGRect)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = self->_textRects;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    Height = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v39 + 1) + 8 * i) CGRectValue];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        left = self->_contentInset.left;
        [(UIView *)self bounds];
        v20 = v19;
        top = self->_contentInset.top;
        [(UIView *)self bounds];
        v23 = v22;
        v45.origin.x = v11;
        v45.origin.y = v13;
        v45.size.width = v15;
        v45.size.height = v17;
        if (CGRectGetWidth(v45) != 0.0)
        {
          v46.origin.x = v11;
          v46.origin.y = v13;
          v46.size.width = v15;
          v46.size.height = v17;
          if (CGRectIntersectsRect(v46, a3))
          {
            [(UIView *)self contentScaleFactor];
            v25 = UIRectIntegralWithScale(v11 - v20 - left, v13 - v23 - top, v15, v17, v24);
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v32 = [MEMORY[0x1E696B098] valueWithRect:?];
            [v4 addObject:v32];
            v47.origin.x = v25;
            v47.origin.y = v27;
            v47.size.width = v29;
            v47.size.height = v31;
            if (CGRectGetHeight(v47) < Height)
            {
              v48.origin.x = v25;
              v48.origin.y = v27;
              v48.size.width = v29;
              v48.size.height = v31;
              Height = CGRectGetHeight(v48);
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v7);
  }

  else
  {
    Height = 1.79769313e308;
  }

  if (Height == 1.79769313e308)
  {
    v33 = 3.0;
  }

  else
  {
    v33 = Height * 0.25;
  }

  v34 = [[UIPreviewParameters alloc] initWithTextLineRects:v4];
  [(UIPreviewParameters *)v34 _setTextPathCornerRadius:v33];
  [(UIPreviewParameters *)v34 _setTextPathInsets:0.0, 0.0, 0.0, 0.0];
  v35 = [(UIPreviewParameters *)v34 visiblePath];
  v36 = [v35 CGPath];

  [(CAShapeLayer *)self->_punchoutLayer setPath:CGPathCreateMutableCopy(v36)];
}

- (void)layoutSubviews
{
  if (!self->_punchoutPathIsValid)
  {
    [(UIView *)self visibleBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(UIView *)self _containingScrollView];

    if (v11)
    {
      v12 = [(UIView *)self _containingScrollView];
      [v12 visibleBounds];
      v4 = v13;
      v6 = v14;
      v8 = v15;
      v10 = v16;
    }

    [(UITextSearchingDimmingView *)self _updatePunchoutPathForVisibleRect:v4, v6, v8, v10];
    self->_punchoutPathIsValid = 1;
  }

  v17 = [(UIView *)self traitCollection];
  v18 = [v17 userInterfaceStyle];

  if (v18 == 2)
  {
    [(CAShapeLayer *)self->_brighteningLayer setPath:CGPathCreateMutableCopy([(CAShapeLayer *)self->_punchoutLayer path])];
  }

  [(CAShapeLayer *)self->_brighteningLayer setHidden:v18 != 2];
  [(UIView *)self bounds];
  dimmingLayer = self->_dimmingLayer;

  [(CALayer *)dimmingLayer setFrame:?];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end