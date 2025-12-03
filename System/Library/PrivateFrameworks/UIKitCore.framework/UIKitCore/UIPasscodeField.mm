@interface UIPasscodeField
+ (double)defaultHeight;
- (BOOL)becomeFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)textField:(id)field shouldInsertText:(id)text replacingRange:(_NSRange)range;
- (UIPasscodeField)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event;
- (id)stringValue;
- (void)_textDidChange;
- (void)_updateFields;
- (void)appendString:(id)string;
- (void)dealloc;
- (void)deleteLastCharacter;
- (void)okButtonClicked:(id)clicked;
- (void)setKeyboardType:(int64_t)type appearance:(int64_t)appearance emptyContentReturnKeyType:(int)keyType;
- (void)setNumberOfEntryFields:(int)fields opaqueBackground:(BOOL)background;
- (void)setShowsOKButton:(BOOL)button;
- (void)setStringValue:(id)value;
- (void)setTextCentersHorizontally:(BOOL)horizontally;
- (void)textFieldDidResignFirstResponder:(id)responder;
@end

@implementation UIPasscodeField

+ (double)defaultHeight
{
  v2 = _UIImageWithName(@"UIPasscodeFieldBackground.png");
  [v2 size];
  v4 = v3;

  return v4;
}

- (UIPasscodeField)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIPasscodeField;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    value = v3->_value;
    v3->_value = v4;

    v3->_centerHorizontally = 1;
    v3->_keyboardType = 11;
    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)setKeyboardType:(int64_t)type appearance:(int64_t)appearance emptyContentReturnKeyType:(int)keyType
{
  self->_keyboardType = type;
  self->_keyboardAppearance = appearance;
  self->_emptyContentReturnKeyType = keyType;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UITextFieldTextDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIPasscodeField;
  [(UIView *)&v4 dealloc];
}

- (void)_updateFields
{
  v3 = [(NSMutableArray *)self->_entryFields count];
  v13 = [(NSMutableString *)self->_value length];
  if (v3 >= 1)
  {
    v4 = 0;
    v12 = (v3 - 1);
    v5 = v3 & 0x7FFFFFFF;
    do
    {
      v6 = [(NSMutableArray *)self->_entryFields objectAtIndex:v4];
      string = &stru_1EFB14550;
      if (v4 < v13)
      {
        if (!_updateFields___bullet)
        {
          10625 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%C", 10625];
          v9 = _updateFields___bullet;
          _updateFields___bullet = 10625;
        }

        if (v4 != v12 || v13 - v4 == 1)
        {
          string = _updateFields___bullet;
        }

        else
        {
          string = [MEMORY[0x1E696AD60] string];
          v10 = v13;
          do
          {
            [(__CFString *)string appendString:_updateFields___bullet];
            --v10;
          }

          while (v10);
        }
      }

      [v6 setText:string];

      ++v4;
    }

    while (v4 != v5);
  }

  okButton = self->_okButton;
  if (okButton)
  {

    [(UIButton *)okButton setEnabled:v13 > 0];
  }
}

- (void)setShowsOKButton:(BOOL)button
{
  if (button)
  {
    okButton = self->_okButton;
    if (!okButton)
    {
      v5 = _UINSLocalizedStringWithDefaultValue(@"OK", @"OK");
      v6 = [UIColor colorWithWhite:1.0 alpha:0.4];
      v7 = [UIButton alloc];
      v8 = [(UIButton *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v9 = self->_okButton;
      self->_okButton = v8;

      [(UIButton *)self->_okButton setTitle:v5 forState:0];
      v10 = _UIImageWithName(@"UIPasscodeFieldButton.png");
      [v10 size];
      v12 = [v10 stretchableImageWithLeftCapWidth:vcvtmd_s64_f64(v11 * 0.5) topCapHeight:0];
      [(UIButton *)self->_okButton setBackgroundImage:v12 forState:0];
      v13 = _UIImageWithName(@"UIPasscodeFieldButtonPressed.png");
      [v13 size];
      v15 = [v13 stretchableImageWithLeftCapWidth:vcvtmd_s64_f64(v14 * 0.5) topCapHeight:0];
      [(UIButton *)self->_okButton setBackgroundImage:v15 forState:1];
      titleLabel = [(UIButton *)self->_okButton titleLabel];
      v17 = [off_1E70ECC18 boldSystemFontOfSize:20.0];
      [titleLabel setFont:v17];

      v18 = self->_okButton;
      v19 = +[UIColor blackColor];
      [(UIButton *)v18 setTitleShadowColor:v19 forState:0];

      [(UIButton *)self->_okButton setTitleColor:v6 forState:2];
      [(UIControl *)self->_okButton addTarget:self action:sel_okButtonClicked_ forControlEvents:64];
      [(UIView *)self->_okButton sizeToFit];
      v20 = self->_okButton;
      [(UIView *)v20 bounds];
      [(UIButton *)v20 contentRectForBounds:?];
      [(UIButton *)v20 titleRectForContentRect:?];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [(UIView *)self->_okButton frame];
      v30 = v29;
      v32 = v31;
      v42.origin.x = v22;
      v42.origin.y = v24;
      v42.size.width = v26;
      v42.size.height = v28;
      v33 = CGRectGetWidth(v42) + 24.0;
      v43.origin.x = v22;
      v43.origin.y = v24;
      v43.size.width = v26;
      v43.size.height = v28;
      [(UIButton *)self->_okButton setFrame:v30, v32, v33, CGRectGetHeight(v43) + 16.0];

      okButton = self->_okButton;
    }

    [(UIView *)okButton frame];
    v35 = v34;
    v37 = v36;
    [(UIView *)self bounds];
    [(UIButton *)self->_okButton setFrame:v38 - v35 + -7.0, floor((v39 - v37) * 0.5), v35, v37];
    [(UIPasscodeField *)self setNumberOfEntryFields:[(NSMutableArray *)self->_entryFields count] opaqueBackground:self->_opaqueBackground];
    [(UIView *)self setUserInteractionEnabled:1];
    [(UIView *)self addSubview:self->_okButton];

    [(UIPasscodeField *)self _updateFields];
  }

  else
  {
    [(UIView *)self setUserInteractionEnabled:?];
    [(UIView *)self->_okButton removeFromSuperview];
    v40 = self->_okButton;
    self->_okButton = 0;
  }
}

- (void)setTextCentersHorizontally:(BOOL)horizontally
{
  if (self->_centerHorizontally != horizontally)
  {
    self->_centerHorizontally = horizontally;
    v5 = [(NSMutableArray *)self->_entryFields count];
    opaqueBackground = self->_opaqueBackground;

    [(UIPasscodeField *)self setNumberOfEntryFields:v5 opaqueBackground:opaqueBackground];
  }
}

- (id)stringValue
{
  v2 = [(NSMutableString *)self->_value copy];

  return v2;
}

- (void)setStringValue:(id)value
{
  valueCopy = value;
  v4 = [(NSMutableArray *)self->_entryFields count];
  value = self->_value;
  if (v4 < 2)
  {
    if (valueCopy)
    {
      v9 = valueCopy;
    }

    else
    {
      v9 = &stru_1EFB14550;
    }

    [(NSMutableString *)value setString:v9];
  }

  else
  {
    v6 = [(__CFString *)valueCopy length];
    if (v6 >= (v4 & 0x7FFFFFFFu))
    {
      v7 = v4 & 0x7FFFFFFF;
    }

    else
    {
      v7 = v6;
    }

    v8 = [(__CFString *)valueCopy substringToIndex:v7];
    [(NSMutableString *)value setString:v8];
  }

  [(UIPasscodeField *)self _updateFields];
}

- (void)appendString:(id)string
{
  stringCopy = string;
  v4 = [(NSMutableArray *)self->_entryFields count];
  value = self->_value;
  if (v4 < 2)
  {
    [(NSMutableString *)value appendString:stringCopy];
  }

  else
  {
    v6 = v4 - [(NSMutableString *)value length];
    if (v6 >= 1)
    {
      v7 = self->_value;
      v8 = [stringCopy length];
      if (v8 >= (v6 & 0x7FFFFFFFu))
      {
        v9 = v6 & 0x7FFFFFFF;
      }

      else
      {
        v9 = v8;
      }

      v10 = [stringCopy substringToIndex:v9];
      [(NSMutableString *)v7 appendString:v10];
    }
  }

  [(UIPasscodeField *)self _updateFields];
}

- (void)deleteLastCharacter
{
  v3 = [(NSMutableString *)self->_value length];
  if (v3 >= 1)
  {
    [(NSMutableString *)self->_value deleteCharactersInRange:(v3 - 1), 1];

    [(UIPasscodeField *)self _updateFields];
  }
}

- (void)setNumberOfEntryFields:(int)fields opaqueBackground:(BOOL)background
{
  if (background)
  {
    v7 = @"UIPasscodeFieldBackground_Opaque.png";
  }

  else
  {
    v7 = @"UIPasscodeFieldBackground.png";
  }

  v33 = _UIImageWithName(v7);
  [v33 size];
  v34 = [v33 stretchableImageWithLeftCapWidth:vcvtmd_s64_f64(v8 * 0.5) topCapHeight:0];
  [v34 size];
  v10 = v9;
  [(UIView *)self bounds];
  v12 = v11;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  self->_opaqueBackground = background;
  okButton = self->_okButton;
  if (okButton)
  {
    [(UIView *)okButton frame];
    v15 = v12 - v14 + 0.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = -0.5;
  if (fields == 1)
  {
    if (self->_centerHorizontally)
    {
      v16 = -0.5;
    }

    else
    {
      v15 = v15 + -10.0;
      v16 = 4.5;
    }
  }

  if (self->_entryFields)
  {
    [defaultCenter removeObserver:self name:@"UITextFieldTextDidChangeNotification" object:0];
    [(NSMutableArray *)self->_entryFields makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableArray *)self->_entryFields removeAllObjects];
    [(NSMutableArray *)self->_entryBackgrounds removeAllObjects];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    entryFields = self->_entryFields;
    self->_entryFields = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    entryBackgrounds = self->_entryBackgrounds;
    self->_entryBackgrounds = v19;
  }

  v21 = 72.0;
  if (fields == 1)
  {
    v21 = 31.0;
  }

  v22 = [off_1E70ECC18 fontWithFamilyName:@"Helvetica" traits:0 size:v21];
  if (fields >= 1)
  {
    v23 = floor((v12 + (fields - 1) * -10.0) / fields);
    if (fields == 1)
    {
      v24 = 3.0;
    }

    else
    {
      v24 = 5.0;
    }

    v25 = v23 - v15;
    v26 = 0.0;
    fieldsCopy = fields;
    do
    {
      v28 = [[UIButton alloc] initWithFrame:v26, 0.0, v23, v10];
      v29 = [objc_alloc(objc_msgSend(objc_opt_class() "textFieldClass"))];
      [(UIButton *)v28 setAutosizesToFit:0];
      [(UIButton *)v28 setBackgroundImage:v34 forState:0];
      [(UIButton *)v28 setAdjustsImageWhenDisabled:0];
      [(UIButton *)v28 setEnabled:0];
      [(UIView *)self addSubview:v28];
      [(UIView *)v28 addSubview:v29];
      [v29 setUndoEnabled:0];
      v30 = +[UIColor blackColor];
      [v29 setTextColor:v30];

      [v29 setTextCentersVertically:1];
      [v29 setTextCentersHorizontally:self->_centerHorizontally];
      [v29 setFont:v22];
      [v29 setDelegate:self];
      [(NSMutableArray *)self->_entryFields addObject:v29];
      [(NSMutableArray *)self->_entryBackgrounds addObject:v28];
      textInputTraits = [v29 textInputTraits];
      v32 = textInputTraits;
      if (fields != 1)
      {
        [textInputTraits setInsertionPointColor:0];
      }

      [v32 setKeyboardType:self->_keyboardType];
      [v32 setKeyboardAppearance:self->_keyboardAppearance];
      [v32 setEmptyContentReturnKeyType:self->_emptyContentReturnKeyType];
      [v32 setAutocorrectionType:1];
      [v32 setTextLoupeVisibility:1];
      [v32 setShortcutConversionType:1];
      [v32 setLearnsCorrections:0];
      if (fields == 1)
      {
        [v29 setSecureTextEntry:1];
      }

      [defaultCenter addObserver:self selector:sel__textDidChange name:@"UITextFieldTextDidChangeNotification" object:v29];
      v26 = v23 + 10.0 + v26;

      --fieldsCopy;
    }

    while (fieldsCopy);
  }
}

- (BOOL)becomeFirstResponder
{
  if ([(NSMutableArray *)self->_entryFields count]!= 1)
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->_entryFields objectAtIndex:0];
  becomeFirstResponder = [v3 becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)isFirstResponder
{
  if ([(NSMutableArray *)self->_entryFields count]== 1)
  {
    v3 = [(NSMutableArray *)self->_entryFields objectAtIndex:0];
    isFirstResponder = [v3 isFirstResponder];

    return isFirstResponder;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasscodeField;
    return [(UIView *)&v6 isFirstResponder];
  }
}

- (void)_textDidChange
{
  if ([(NSMutableArray *)self->_entryFields count]== 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      value = self->_value;
      v4 = [(NSMutableArray *)self->_entryFields objectAtIndex:0];
      text = [v4 text];
      [(NSMutableString *)value setString:text];

      okButton = self->_okButton;
      if (okButton)
      {
        [(UIButton *)okButton setEnabled:[(NSMutableString *)self->_value length]!= 0];
      }

      [WeakRetained passcodeFieldTextDidChange:self];
    }
  }
}

- (BOOL)textField:(id)field shouldInsertText:(id)text replacingRange:(_NSRange)range
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained passcodeField:self shouldInsertText:textCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidResignFirstResponder:(id)responder
{
  if ([(NSMutableArray *)self->_entryFields count]== 1)
  {

    [(UIPasscodeField *)self _updateFields];
  }
}

- (void)okButtonClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passcodeFieldDidAcceptEntry:self];
  }
}

- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event
{
  v7.receiver = self;
  v7.super_class = UIPasscodeField;
  v5 = [(UIView *)&v7 hitTest:event forEvent:test.x, test.y];
  if (v5 == self && !self->_okButton)
  {

    v5 = 0;
  }

  return v5;
}

@end