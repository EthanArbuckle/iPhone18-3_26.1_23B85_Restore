@interface _UIInputViewContent
- (BOOL)_isToolbar;
- (CGSize)_contentSize;
- (CGSize)_sizeFittingContentViews;
- (_UIInputViewContent)initWithFrame:(CGRect)a3 inputView:(id)a4;
- (void)_setToolbarBackgroundImage:(id)a3;
- (void)_setToolbarBackgroundViewWithImage:(id)a3;
- (void)_updateCornerClipping;
- (void)addSubview:(id)a3;
@end

@implementation _UIInputViewContent

- (BOOL)_isToolbar
{
  v3 = [(UIView *)self subviews];
  if ([v3 count] == 1)
  {
    v4 = [(UIView *)self subviews];
    v5 = [v4 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_updateCornerClipping
{
  v3 = [(UIView *)self layer];
  [v3 setMask:0];

  LODWORD(v3) = [(UIView *)self _clipCorners];
  [(UIInputView *)self->_inputView _additionalClipHeight];
  v5 = v3 & ~LODWORD(self->_unclippableCorners) & 3;
  if (v5)
  {
    v6 = v4;
    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v8 = [v7 preferencesActions];
    [v8 rivenSizeFactor:10.0];
    v10 = v9;

    Mutable = CGPathCreateMutable();
    [(UIView *)self bounds];
    v13 = v12;
    [(UIView *)self bounds];
    UIKBAddRoundedRectToPath(Mutable, v5, 0, 0.0, 0.0, v13, v6 + v14, v10);
    v17 = [MEMORY[0x1E69794A0] layer];
    [v17 setPath:Mutable];
    v15 = +[UIColor blackColor];
    [v17 setFillColor:{objc_msgSend(v15, "CGColor")}];

    CGPathRelease(Mutable);
    v16 = [(UIView *)self layer];
    [v16 setMask:v17];
  }
}

- (_UIInputViewContent)initWithFrame:(CGRect)a3 inputView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = _UIInputViewContent;
  v11 = [(UIView *)&v15 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inputView, a4);
    v13 = v12;
  }

  return v12;
}

- (void)_setToolbarBackgroundImage:(id)a3
{
  v16 = a3;
  if ([(_UIInputViewContent *)self _isToolbar])
  {
    v4 = [(UIView *)self subviews];
    v5 = [v4 lastObject];

    [v5 setBackgroundImage:v16 forToolbarPosition:0 barMetrics:0];
    [v5 bounds];
    v10 = 1.0;
    if (!v16)
    {
      v10 = 0.0;
    }

    v18 = CGRectOffset(*&v6, 0.0, v10);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v15 = [v5 _backgroundView];
    [v15 setFrame:{x, y, width, height}];
  }
}

- (void)_setToolbarBackgroundViewWithImage:(id)a3
{
  v9 = a3;
  if ([(_UIInputViewContent *)self _isToolbar])
  {
    v4 = [(UIView *)self subviews];
    v5 = [v4 lastObject];

    if (v9)
    {
      v6 = [v5 _backgroundView];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 image], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != v9))
      {
        v8 = [[UIImageView alloc] initWithImage:v9];

        [(UIView *)v8 setAutoresizingMask:18];
        v6 = v8;
      }

      [v5 _setBackgroundView:v6];
      if (v6)
      {
        [v5 bounds];
        [v6 setFrame:?];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      [v5 _setBackgroundView:0];
    }

    [v5 setNeedsLayout];
    goto LABEL_10;
  }

LABEL_11:
}

- (CGSize)_sizeFittingContentViews
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = [(UIView *)self subviews];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___UIInputViewContent__sizeFittingContentViews__block_invoke;
  v7[3] = &unk_1E710E4B8;
  v7[4] = &v12;
  v7[5] = &v8;
  [v2 enumerateObjectsUsingBlock:v7];

  v3 = v13[3];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)addSubview:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIInputViewContent;
  [(UIView *)&v9 addSubview:a3];
  contentWidth = self->_contentWidth;
  contentHeight = self->_contentHeight;
  [(_UIInputViewContent *)self _sizeFittingContentViews];
  if (v6 != contentWidth || v7 != contentHeight)
  {
    self->_contentWidth = v6;
    self->_contentHeight = v7;
    [(UIInputView *)self->_inputView _setNeedsContentSizeUpdate];
  }
}

- (CGSize)_contentSize
{
  contentWidth = self->_contentWidth;
  contentHeight = self->_contentHeight;
  result.height = contentHeight;
  result.width = contentWidth;
  return result;
}

@end