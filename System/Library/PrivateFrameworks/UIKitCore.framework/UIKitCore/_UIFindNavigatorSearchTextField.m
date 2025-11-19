@interface _UIFindNavigatorSearchTextField
+ (id)_newlineImageForSize:(CGSize)a3 withTraitCollection:(id)a4;
- (BOOL)_isTextRectWideEnoughForRightView:(CGRect)a3;
- (BOOL)_showsClearButtonWhenNonEmpty:(BOOL)a3;
- (BOOL)canResignFirstResponder;
- (CGRect)_applyRightViewOffsetIfApplicable:(CGRect)a3;
- (CGRect)_availableTextRectForBounds:(CGRect)a3 forEditing:(BOOL)a4;
- (CGRect)_availableTextRectForBounds:(CGRect)a3 forEditing:(BOOL)a4 accountForRightView:(BOOL)a5;
- (CGRect)_baselineLeftViewRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (CGRect)visibleRect;
- (_UIFindNavigatorSearchTextField)initWithFrame:(CGRect)a3;
- (id)responderForKeyboardAppearance;
- (id)text;
- (id)undoManager;
- (int64_t)keyboardAppearance;
- (void)insertNewline;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIFindNavigatorSearchTextField

- (_UIFindNavigatorSearchTextField)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = _UIFindNavigatorSearchTextField;
  v3 = [(UITextField *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UITextField *)v3 _systemBackgroundView];
    [v5 setBackgroundContainer:1];
    objc_initWeak(&location, v4);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___UIFindNavigatorSearchTextField_initWithFrame___block_invoke;
    v9[3] = &unk_1E70F3D28;
    objc_copyWeak(&v10, &location);
    v7 = [v6 addObserverForName:@"UIKeyboardDidShowNotification" object:0 queue:0 usingBlock:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIFindNavigatorSearchTextField;
  [(UISearchTextField *)&v5 willMoveToWindow:?];
  if (!a3)
  {
    self->_keyboardDidAppear = 0;
  }
}

- (CGRect)visibleRect
{
  v2 = [(UIView *)self window];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)canResignFirstResponder
{
  v3 = [(UIResponder *)self _ui_findNavigatorResponder];
  v4 = [v3 isChangingInputModes];

  if (v4)
  {
    return 0;
  }

  v5 = [(UIResponder *)self _ui_findNavigatorResponder];
  if (v5)
  {
    keyboardDidAppear = self->_keyboardDidAppear;

    if (!keyboardDidAppear)
    {
      return 0;
    }
  }

  v8.receiver = self;
  v8.super_class = _UIFindNavigatorSearchTextField;
  return [(UISearchTextField *)&v8 canResignFirstResponder];
}

- (id)responderForKeyboardAppearance
{
  v2 = [(UIResponder *)self _ui_findNavigatorResponder];
  v3 = [v2 responderForKeyboardAppearance];

  return v3;
}

- (int64_t)keyboardAppearance
{
  v2 = [(UIResponder *)self _ui_findNavigatorResponder];
  v3 = [v2 keyboardAppearance];

  return v3;
}

- (id)undoManager
{
  v2 = [(UIView *)self nextResponder];
  v3 = [v2 undoManager];

  return v3;
}

- (BOOL)_showsClearButtonWhenNonEmpty:(BOOL)a3
{
  v4 = [(UIView *)self isFirstResponder];
  if (v4)
  {

    LOBYTE(v4) = [(UISearchTextField *)self _hasContent];
  }

  return v4;
}

- (CGRect)_applyRightViewOffsetIfApplicable:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UITextField *)self rightView];
  if (v8)
  {
    v9 = v8;
    v10 = [(_UIFindNavigatorSearchTextField *)self _showsClearButtonWhenNonEmpty:[(UITextField *)self isEditing]];

    if (v10)
    {
      v11 = [(UIView *)self _shouldReverseLayoutDirection];
      [(UITextField *)self clearButtonRect];
      v12 = CGRectGetWidth(v18);
      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = -v12;
      }

      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v20 = CGRectOffset(v19, v13, 0.0);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
    }
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_baselineLeftViewRectForBounds:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = _UIFindNavigatorSearchTextField;
  [(UITextField *)&v20 _baselineLeftViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(UIView *)self _shouldReverseLayoutDirection])
  {
    [(_UIFindNavigatorSearchTextField *)self _applyRightViewOffsetIfApplicable:v5, v7, v9, v11];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = _UIFindNavigatorSearchTextField;
  [(UISearchTextField *)&v20 rightViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (![(UIView *)self _shouldReverseLayoutDirection])
  {
    [(_UIFindNavigatorSearchTextField *)self _applyRightViewOffsetIfApplicable:v5, v7, v9, v11];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)_isTextRectWideEnoughForRightView:(CGRect)a3
{
  width = a3.size.width;
  [(UIView *)self bounds:a3.origin.x];
  [(_UIFindNavigatorSearchTextField *)self rightViewRectForBounds:?];
  return width - CGRectGetWidth(v6) > 44.0;
}

- (CGRect)_availableTextRectForBounds:(CGRect)a3 forEditing:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(_UIFindNavigatorSearchTextField *)self _showsClearButtonWhenNonEmpty:?];

  [(_UIFindNavigatorSearchTextField *)self _availableTextRectForBounds:v4 forEditing:v10 accountForRightView:x, y, width, height];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_availableTextRectForBounds:(CGRect)a3 forEditing:(BOOL)a4 accountForRightView:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25.receiver = self;
  v25.super_class = _UIFindNavigatorSearchTextField;
  [(UISearchTextField *)&v25 _availableTextRectForBounds:a4 forEditing:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (v5)
  {
    v19 = [(UITextField *)self rightView];
    if (v19 && ![(UIView *)self _shouldReverseLayoutDirection])
    {
      v24 = [(_UIFindNavigatorSearchTextField *)self _isTextRectWideEnoughForRightView:v12, v14, v16, v18];

      if (v24)
      {
        [(_UIFindNavigatorSearchTextField *)self rightViewRectForBounds:x, y, width, height];
        v16 = v16 - CGRectGetWidth(v26);
      }
    }

    else
    {
    }
  }

  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v18;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _UIFindNavigatorSearchTextField;
  [(UISearchTextField *)&v9 layoutSubviews];
  [(UIView *)self bounds];
  [(_UIFindNavigatorSearchTextField *)self _availableTextRectForBounds:[(UITextField *)self isEditing] forEditing:0 accountForRightView:v3, v4, v5, v6];
  v7 = [(_UIFindNavigatorSearchTextField *)self _isTextRectWideEnoughForRightView:?];
  v8 = [(UITextField *)self rightView];
  [v8 setHidden:!v7];
}

+ (id)_newlineImageForSize:(CGSize)a3 withTraitCollection:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = +[UIColor secondarySystemFillColor];
  v8 = [v7 resolvedColorWithTraitCollection:v6];

  v9 = +[UIColor labelColor];
  v10 = [v9 resolvedColorWithTraitCollection:v6];

  v11 = [UIImage systemImageNamed:@"return"];
  v12 = [v11 imageWithTintColor:v10];

  [v6 displayScale];
  v14 = v13;

  _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, v14);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  v19 = [UIBezierPath bezierPathWithRoundedRect:*MEMORY[0x1E695EFF8] cornerRadius:v18, width, height, height * 0.25];
  [v19 addClip];

  [v8 setFill];
  v23.origin.x = v17;
  v23.origin.y = v18;
  v23.size.width = width;
  v23.size.height = height;
  CGContextFillRect(v16, v23);
  v24.origin.x = v17;
  v24.origin.y = v18;
  v24.size.width = width;
  v24.size.height = height;
  v25 = CGRectInset(v24, 1.0, 1.0);
  [v12 drawInRect:{v25.origin.x, v25.origin.y, v25.size.width, v25.size.height}];
  v20 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v20;
}

- (void)insertNewline
{
  v3 = [(UITextField *)self font];
  [v3 capHeight];
  v4 = [(UITextField *)self font];
  [v4 descender];
  UICeilToViewScale(self);
  v6 = v5;

  v18 = objc_alloc_init(off_1E70ECBA8);
  v7 = objc_opt_class();
  v8 = [(UIView *)self traitCollection];
  v9 = [v7 _newlineImageForSize:v8 withTraitCollection:{v6, v6}];
  [v18 setImage:v9];

  v10 = [(UITextField *)self font];
  [v10 descender];
  [v18 setBounds:{0.0, v11 * 0.5, v6, v6}];

  v12 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v18];
  v13 = [(UITextField *)self textStorage];
  [v13 appendAttributedString:v12];

  v14 = [(UITextField *)self selectedTextRange];
  v15 = [v14 end];
  v16 = [(UITextField *)self positionFromPosition:v15 inDirection:2 offset:1];

  v17 = [(UITextField *)self textRangeFromPosition:v16 toPosition:v16];
  [(UITextField *)self setSelectedTextRange:v17];

  [(UIControl *)self _sendActionsForEvents:0x20000 withEvent:0];
}

- (id)text
{
  v7.receiver = self;
  v7.super_class = _UIFindNavigatorSearchTextField;
  v2 = [(UISearchTextField *)&v7 text];
  v6 = -4;
  v3 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v6 length:1];
  v4 = [v2 stringByReplacingOccurrencesOfString:v3 withString:@"\n"];

  return v4;
}

@end