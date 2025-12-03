@interface _UIFindNavigatorSearchTextField
+ (id)_newlineImageForSize:(CGSize)size withTraitCollection:(id)collection;
- (BOOL)_isTextRectWideEnoughForRightView:(CGRect)view;
- (BOOL)_showsClearButtonWhenNonEmpty:(BOOL)empty;
- (BOOL)canResignFirstResponder;
- (CGRect)_applyRightViewOffsetIfApplicable:(CGRect)applicable;
- (CGRect)_availableTextRectForBounds:(CGRect)bounds forEditing:(BOOL)editing;
- (CGRect)_availableTextRectForBounds:(CGRect)bounds forEditing:(BOOL)editing accountForRightView:(BOOL)view;
- (CGRect)_baselineLeftViewRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)visibleRect;
- (_UIFindNavigatorSearchTextField)initWithFrame:(CGRect)frame;
- (id)responderForKeyboardAppearance;
- (id)text;
- (id)undoManager;
- (int64_t)keyboardAppearance;
- (void)insertNewline;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIFindNavigatorSearchTextField

- (_UIFindNavigatorSearchTextField)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = _UIFindNavigatorSearchTextField;
  v3 = [(UITextField *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _systemBackgroundView = [(UITextField *)v3 _systemBackgroundView];
    [_systemBackgroundView setBackgroundContainer:1];
    objc_initWeak(&location, v4);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___UIFindNavigatorSearchTextField_initWithFrame___block_invoke;
    v9[3] = &unk_1E70F3D28;
    objc_copyWeak(&v10, &location);
    v7 = [defaultCenter addObserverForName:@"UIKeyboardDidShowNotification" object:0 queue:0 usingBlock:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = _UIFindNavigatorSearchTextField;
  [(UISearchTextField *)&v5 willMoveToWindow:?];
  if (!window)
  {
    self->_keyboardDidAppear = 0;
  }
}

- (CGRect)visibleRect
{
  window = [(UIView *)self window];
  [window bounds];
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
  _ui_findNavigatorResponder = [(UIResponder *)self _ui_findNavigatorResponder];
  isChangingInputModes = [_ui_findNavigatorResponder isChangingInputModes];

  if (isChangingInputModes)
  {
    return 0;
  }

  _ui_findNavigatorResponder2 = [(UIResponder *)self _ui_findNavigatorResponder];
  if (_ui_findNavigatorResponder2)
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
  _ui_findNavigatorResponder = [(UIResponder *)self _ui_findNavigatorResponder];
  responderForKeyboardAppearance = [_ui_findNavigatorResponder responderForKeyboardAppearance];

  return responderForKeyboardAppearance;
}

- (int64_t)keyboardAppearance
{
  _ui_findNavigatorResponder = [(UIResponder *)self _ui_findNavigatorResponder];
  keyboardAppearance = [_ui_findNavigatorResponder keyboardAppearance];

  return keyboardAppearance;
}

- (id)undoManager
{
  nextResponder = [(UIView *)self nextResponder];
  undoManager = [nextResponder undoManager];

  return undoManager;
}

- (BOOL)_showsClearButtonWhenNonEmpty:(BOOL)empty
{
  isFirstResponder = [(UIView *)self isFirstResponder];
  if (isFirstResponder)
  {

    LOBYTE(isFirstResponder) = [(UISearchTextField *)self _hasContent];
  }

  return isFirstResponder;
}

- (CGRect)_applyRightViewOffsetIfApplicable:(CGRect)applicable
{
  height = applicable.size.height;
  width = applicable.size.width;
  y = applicable.origin.y;
  x = applicable.origin.x;
  rightView = [(UITextField *)self rightView];
  if (rightView)
  {
    v9 = rightView;
    v10 = [(_UIFindNavigatorSearchTextField *)self _showsClearButtonWhenNonEmpty:[(UITextField *)self isEditing]];

    if (v10)
    {
      _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
      [(UITextField *)self clearButtonRect];
      v12 = CGRectGetWidth(v18);
      if (_shouldReverseLayoutDirection)
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

- (CGRect)_baselineLeftViewRectForBounds:(CGRect)bounds
{
  v20.receiver = self;
  v20.super_class = _UIFindNavigatorSearchTextField;
  [(UITextField *)&v20 _baselineLeftViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  v20.receiver = self;
  v20.super_class = _UIFindNavigatorSearchTextField;
  [(UISearchTextField *)&v20 rightViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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

- (BOOL)_isTextRectWideEnoughForRightView:(CGRect)view
{
  width = view.size.width;
  [(UIView *)self bounds:view.origin.x];
  [(_UIFindNavigatorSearchTextField *)self rightViewRectForBounds:?];
  return width - CGRectGetWidth(v6) > 44.0;
}

- (CGRect)_availableTextRectForBounds:(CGRect)bounds forEditing:(BOOL)editing
{
  editingCopy = editing;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = [(_UIFindNavigatorSearchTextField *)self _showsClearButtonWhenNonEmpty:?];

  [(_UIFindNavigatorSearchTextField *)self _availableTextRectForBounds:editingCopy forEditing:v10 accountForRightView:x, y, width, height];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_availableTextRectForBounds:(CGRect)bounds forEditing:(BOOL)editing accountForRightView:(BOOL)view
{
  viewCopy = view;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v25.receiver = self;
  v25.super_class = _UIFindNavigatorSearchTextField;
  [(UISearchTextField *)&v25 _availableTextRectForBounds:editing forEditing:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (viewCopy)
  {
    rightView = [(UITextField *)self rightView];
    if (rightView && ![(UIView *)self _shouldReverseLayoutDirection])
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
  rightView = [(UITextField *)self rightView];
  [rightView setHidden:!v7];
}

+ (id)_newlineImageForSize:(CGSize)size withTraitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  v7 = +[UIColor secondarySystemFillColor];
  v8 = [v7 resolvedColorWithTraitCollection:collectionCopy];

  v9 = +[UIColor labelColor];
  v10 = [v9 resolvedColorWithTraitCollection:collectionCopy];

  v11 = [UIImage systemImageNamed:@"return"];
  v12 = [v11 imageWithTintColor:v10];

  [collectionCopy displayScale];
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
  font = [(UITextField *)self font];
  [font capHeight];
  font2 = [(UITextField *)self font];
  [font2 descender];
  UICeilToViewScale(self);
  v6 = v5;

  v18 = objc_alloc_init(off_1E70ECBA8);
  v7 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v9 = [v7 _newlineImageForSize:traitCollection withTraitCollection:{v6, v6}];
  [v18 setImage:v9];

  font3 = [(UITextField *)self font];
  [font3 descender];
  [v18 setBounds:{0.0, v11 * 0.5, v6, v6}];

  v12 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v18];
  textStorage = [(UITextField *)self textStorage];
  [textStorage appendAttributedString:v12];

  selectedTextRange = [(UITextField *)self selectedTextRange];
  v15 = [selectedTextRange end];
  v16 = [(UITextField *)self positionFromPosition:v15 inDirection:2 offset:1];

  v17 = [(UITextField *)self textRangeFromPosition:v16 toPosition:v16];
  [(UITextField *)self setSelectedTextRange:v17];

  [(UIControl *)self _sendActionsForEvents:0x20000 withEvent:0];
}

- (id)text
{
  v7.receiver = self;
  v7.super_class = _UIFindNavigatorSearchTextField;
  text = [(UISearchTextField *)&v7 text];
  v6 = -4;
  v3 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v6 length:1];
  v4 = [text stringByReplacingOccurrencesOfString:v3 withString:@"\n"];

  return v4;
}

@end