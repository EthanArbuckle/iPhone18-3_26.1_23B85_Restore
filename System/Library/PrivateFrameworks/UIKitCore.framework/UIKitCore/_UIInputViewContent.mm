@interface _UIInputViewContent
- (BOOL)_isToolbar;
- (CGSize)_contentSize;
- (CGSize)_sizeFittingContentViews;
- (_UIInputViewContent)initWithFrame:(CGRect)frame inputView:(id)view;
- (void)_setToolbarBackgroundImage:(id)image;
- (void)_setToolbarBackgroundViewWithImage:(id)image;
- (void)_updateCornerClipping;
- (void)addSubview:(id)subview;
@end

@implementation _UIInputViewContent

- (BOOL)_isToolbar
{
  subviews = [(UIView *)self subviews];
  if ([subviews count] == 1)
  {
    subviews2 = [(UIView *)self subviews];
    lastObject = [subviews2 lastObject];
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
  layer = [(UIView *)self layer];
  [layer setMask:0];

  LODWORD(layer) = [(UIView *)self _clipCorners];
  [(UIInputView *)self->_inputView _additionalClipHeight];
  v5 = layer & ~LODWORD(self->_unclippableCorners) & 3;
  if (v5)
  {
    v6 = v4;
    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v7 preferencesActions];
    [preferencesActions rivenSizeFactor:10.0];
    v10 = v9;

    Mutable = CGPathCreateMutable();
    [(UIView *)self bounds];
    v13 = v12;
    [(UIView *)self bounds];
    UIKBAddRoundedRectToPath(Mutable, v5, 0, 0.0, 0.0, v13, v6 + v14, v10);
    layer2 = [MEMORY[0x1E69794A0] layer];
    [layer2 setPath:Mutable];
    v15 = +[UIColor blackColor];
    [layer2 setFillColor:{objc_msgSend(v15, "CGColor")}];

    CGPathRelease(Mutable);
    layer3 = [(UIView *)self layer];
    [layer3 setMask:layer2];
  }
}

- (_UIInputViewContent)initWithFrame:(CGRect)frame inputView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = _UIInputViewContent;
  height = [(UIView *)&v15 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_inputView, view);
    v13 = v12;
  }

  return v12;
}

- (void)_setToolbarBackgroundImage:(id)image
{
  imageCopy = image;
  if ([(_UIInputViewContent *)self _isToolbar])
  {
    subviews = [(UIView *)self subviews];
    lastObject = [subviews lastObject];

    [lastObject setBackgroundImage:imageCopy forToolbarPosition:0 barMetrics:0];
    [lastObject bounds];
    v10 = 1.0;
    if (!imageCopy)
    {
      v10 = 0.0;
    }

    v18 = CGRectOffset(*&v6, 0.0, v10);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    _backgroundView = [lastObject _backgroundView];
    [_backgroundView setFrame:{x, y, width, height}];
  }
}

- (void)_setToolbarBackgroundViewWithImage:(id)image
{
  imageCopy = image;
  if ([(_UIInputViewContent *)self _isToolbar])
  {
    subviews = [(UIView *)self subviews];
    lastObject = [subviews lastObject];

    if (imageCopy)
    {
      _backgroundView = [lastObject _backgroundView];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([_backgroundView image], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != imageCopy))
      {
        v8 = [[UIImageView alloc] initWithImage:imageCopy];

        [(UIView *)v8 setAutoresizingMask:18];
        _backgroundView = v8;
      }

      [lastObject _setBackgroundView:_backgroundView];
      if (_backgroundView)
      {
        [lastObject bounds];
        [_backgroundView setFrame:?];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      [lastObject _setBackgroundView:0];
    }

    [lastObject setNeedsLayout];
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
  subviews = [(UIView *)self subviews];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___UIInputViewContent__sizeFittingContentViews__block_invoke;
  v7[3] = &unk_1E710E4B8;
  v7[4] = &v12;
  v7[5] = &v8;
  [subviews enumerateObjectsUsingBlock:v7];

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

- (void)addSubview:(id)subview
{
  v9.receiver = self;
  v9.super_class = _UIInputViewContent;
  [(UIView *)&v9 addSubview:subview];
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