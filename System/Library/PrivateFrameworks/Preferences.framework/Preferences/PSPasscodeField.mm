@interface PSPasscodeField
- (BOOL)becomeFirstResponder;
- (CGSize)dotFullSize;
- (CGSize)promptSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PSPasscodeField)initWithNumberOfEntryFields:(unint64_t)fields;
- (PSPasscodeFieldDelegate)delegate;
- (id)digitFont;
- (int64_t)keyboardAppearance;
- (int64_t)keyboardType;
- (void)_delegateEnteredPasscode:(id)passcode;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)layoutSubviews;
- (void)passcodeFieldTapped:(id)tapped;
- (void)setFieldSpacing:(id)spacing;
- (void)setForegroundColor:(id)color;
- (void)setNumberOfEntryFields:(unint64_t)fields;
- (void)setStringValue:(id)value;
@end

@implementation PSPasscodeField

- (PSPasscodeField)initWithNumberOfEntryFields:(unint64_t)fields
{
  v17.receiver = self;
  v17.super_class = PSPasscodeField;
  v4 = [(PSPasscodeField *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:fields];
    dotOutlineViews = v4->_dotOutlineViews;
    v4->_dotOutlineViews = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:fields];
    dotFullViews = v4->_dotFullViews;
    v4->_dotFullViews = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:fields];
    dashViews = v4->_dashViews;
    v4->_dashViews = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:fields];
    digitViews = v4->_digitViews;
    v4->_digitViews = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
    stringValue = v4->_stringValue;
    v4->_stringValue = v13;

    v4->_enabled = 1;
    v4->_shouldBecomeFirstResponderOnTap = 1;
    v4->_securePasscodeEntry = 1;
    [(PSPasscodeField *)v4 setNumberOfEntryFields:fields];
    v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_passcodeFieldTapped_];
    [(PSPasscodeField *)v4 addGestureRecognizer:v15];
  }

  return v4;
}

- (void)setNumberOfEntryFields:(unint64_t)fields
{
  if (self->_numberOfEntryFields != fields)
  {
    fieldsCopy = fields;
    self->_numberOfEntryFields = fields;
    v6 = 416;
    [(NSMutableArray *)self->_dotFullViews removeAllObjects];
    v7 = 408;
    [(NSMutableArray *)self->_dotOutlineViews removeAllObjects];
    v8 = 424;
    [(NSMutableArray *)self->_dashViews removeAllObjects];
    [(NSMutableArray *)self->_digitViews removeAllObjects];
    v29 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:28.0];
    v9 = +[PSListController appearance];
    textColor = [v9 textColor];

    dotFullImage = [(PSPasscodeField *)self dotFullImage];
    dotOutlineImage = [(PSPasscodeField *)self dotOutlineImage];
    dashImage = [(PSPasscodeField *)self dashImage];
    if (fieldsCopy)
    {
      v13 = *MEMORY[0x1E695F058];
      v14 = *(MEMORY[0x1E695F058] + 8);
      v15 = *(MEMORY[0x1E695F058] + 16);
      v16 = *(MEMORY[0x1E695F058] + 24);
      v26 = dotFullImage;
      v27 = dotOutlineImage;
      do
      {
        v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:dotFullImage];
        [*(&self->super.super.super.isa + v6) addObject:v17];
        v18 = v6;
        v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:dotOutlineImage];
        [*(&self->super.super.super.isa + v7) addObject:v19];
        v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:dashImage];
        v21 = dashImage;
        v22 = v7;
        v23 = v20;
        [*(&self->super.super.super.isa + v8) addObject:v20];
        v24 = v8;
        v25 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v13, v14, v15, v16}];
        [v25 setFont:v29];
        [v25 setTextColor:textColor];
        [(NSMutableArray *)self->_digitViews addObject:v25];

        v8 = v24;
        v7 = v22;
        dashImage = v21;

        v6 = v18;
        dotFullImage = v26;
        dotOutlineImage = v27;

        --fieldsCopy;
      }

      while (fieldsCopy);
    }

    [(PSPasscodeField *)self sizeToFit];
    [(PSPasscodeField *)self setNeedsLayout];
  }
}

- (CGSize)dotFullSize
{
  firstObject = [(NSMutableArray *)self->_dotFullViews firstObject];
  image = [firstObject image];
  [image size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)promptSize
{
  if (self->_securePasscodeEntry)
  {
    v2 = &OBJC_IVAR___PSPasscodeField__dotOutlineViews;
  }

  else
  {
    v2 = &OBJC_IVAR___PSPasscodeField__dashViews;
  }

  firstObject = [*(&self->super.super.super.isa + *v2) firstObject];
  image = [firstObject image];
  [image size];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)digitFont
{
  firstObject = [(NSMutableArray *)self->_digitViews firstObject];
  font = [firstObject font];

  return font;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(PSPasscodeField *)self dotFullSize:fits.width];
  v5 = v4;
  v7 = v6;
  [(PSPasscodeField *)self promptSize];
  v9 = v8;
  v11 = v10;
  digitFont = [(PSPasscodeField *)self digitFont];
  v13 = digitFont;
  if (digitFont)
  {
    v39 = *MEMORY[0x1E69DB648];
    v40[0] = digitFont;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    [@"0" sizeWithAttributes:v14];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = self->_fieldSpacing;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    v23 = 0.0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v34 + 1) + 8 * i) floatValue];
        v23 = v23 + v25;
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 0.0;
  }

  if (v7 >= v11)
  {
    v26 = v7;
  }

  else
  {
    v26 = v11;
  }

  if (v26 >= v18)
  {
    v27 = v26;
  }

  else
  {
    v27 = v18;
  }

  if (v5 >= v9)
  {
    v28 = v5;
  }

  else
  {
    v28 = v9;
  }

  if (v28 >= v16)
  {
    v29 = v28;
  }

  else
  {
    v29 = v16;
  }

  numberOfEntryFields = self->_numberOfEntryFields;
  v31 = v23 + (v29 + 25.0) * numberOfEntryFields + -25.0;
  v32 = v27;
  v33 = ceilf(v32);
  result.height = v33;
  result.width = v31;
  return result;
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (self->_foregroundColor != colorCopy)
  {
    v14 = colorCopy;
    objc_storeStrong(&self->_foregroundColor, color);
    v6 = GetImageTemplate(@"passcodeDot-full", self->_foregroundColor);
    v7 = GetImageTemplate(@"passcodeDot-outline", self->_foregroundColor);
    v8 = GetImageTemplate(@"passcodeDash", self->_foregroundColor);
    if (self->_numberOfEntryFields)
    {
      v9 = 0;
      do
      {
        v10 = [(NSMutableArray *)self->_dotFullViews objectAtIndexedSubscript:v9];
        [v10 setImage:v6];

        v11 = [(NSMutableArray *)self->_dotOutlineViews objectAtIndexedSubscript:v9];
        [v11 setImage:v7];

        v12 = [(NSMutableArray *)self->_dashViews objectAtIndexedSubscript:v9];
        [v12 setImage:v8];

        v13 = [(NSMutableArray *)self->_digitViews objectAtIndexedSubscript:v9];
        [v13 setTextColor:self->_foregroundColor];

        ++v9;
      }

      while (v9 < self->_numberOfEntryFields);
    }

    colorCopy = v14;
  }
}

- (void)passcodeFieldTapped:(id)tapped
{
  if ([(PSPasscodeField *)self shouldBecomeFirstResponderOnTap])
  {

    [(PSPasscodeField *)self becomeFirstResponder];
  }
}

- (void)setFieldSpacing:(id)spacing
{
  spacingCopy = spacing;
  if (self->_fieldSpacing != spacingCopy)
  {
    v6 = spacingCopy;
    objc_storeStrong(&self->_fieldSpacing, spacing);
    [(PSPasscodeField *)self sizeToFit];
    [(PSPasscodeField *)self setNeedsLayout];
    spacingCopy = v6;
  }
}

- (void)layoutSubviews
{
  v53[1] = *MEMORY[0x1E69E9840];
  if (self->_securePasscodeEntry)
  {
    v3 = &OBJC_IVAR___PSPasscodeField__dotOutlineViews;
  }

  else
  {
    v3 = &OBJC_IVAR___PSPasscodeField__dashViews;
  }

  v4 = *(&self->super.super.super.isa + *v3);
  if (self->_numberOfEntryFields)
  {
    v5 = 0;
    securePasscodeEntry = self->_securePasscodeEntry;
    while (v5 >= [(NSMutableString *)self->_stringValue length])
    {
      v11 = [(NSMutableArray *)self->_dotFullViews objectAtIndexedSubscript:v5];
      [v11 removeFromSuperview];

      v12 = [(NSMutableArray *)self->_digitViews objectAtIndexedSubscript:v5];
      [v12 removeFromSuperview];

      v13 = [(NSMutableArray *)self->_digitViews objectAtIndexedSubscript:v5];
      [v13 setText:0];

      v14 = [v4 objectAtIndexedSubscript:v5];
      superview = [v14 superview];

      if (!superview)
      {
        v10 = [v4 objectAtIndexedSubscript:v5];
        goto LABEL_13;
      }

LABEL_15:
      if (++v5 >= self->_numberOfEntryFields)
      {
        goto LABEL_16;
      }
    }

    v6 = [(NSMutableArray *)self->_dotOutlineViews objectAtIndexedSubscript:v5];
    [v6 removeFromSuperview];

    v7 = [(NSMutableArray *)self->_dotFullViews objectAtIndexedSubscript:v5];
    [v7 removeFromSuperview];

    v8 = [(NSMutableArray *)self->_digitViews objectAtIndexedSubscript:v5];
    [v8 removeFromSuperview];

    v9 = [(NSMutableArray *)self->_dashViews objectAtIndexedSubscript:v5];
    [v9 removeFromSuperview];

    if (securePasscodeEntry)
    {
      v10 = [(NSMutableArray *)self->_dotFullViews objectAtIndexedSubscript:v5];
    }

    else
    {
      v10 = [(NSMutableArray *)self->_digitViews objectAtIndexedSubscript:v5];
      v16 = [(NSMutableString *)self->_stringValue substringWithRange:v5, 1];
      v17 = [(NSMutableArray *)self->_digitViews objectAtIndexedSubscript:v5];
      [v17 setText:v16];
    }

    superview2 = [v10 superview];

    if (!superview2)
    {
LABEL_13:
      [(PSPasscodeField *)self addSubview:v10];
    }

    goto LABEL_15;
  }

LABEL_16:
  digitFont = [(PSPasscodeField *)self digitFont];
  [(PSPasscodeField *)self dotFullSize];
  v49 = v21;
  v51 = v20;
  [(PSPasscodeField *)self promptSize];
  v47 = v23;
  v48 = v22;
  v52 = *MEMORY[0x1E69DB648];
  v53[0] = digitFont;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  [@"0" sizeWithAttributes:v24];
  v45 = v26;
  v46 = v25;

  if (self->_numberOfEntryFields)
  {
    v27 = 0;
    if (v51 >= v48)
    {
      v28 = v51;
    }

    else
    {
      v28 = v48;
    }

    if (v28 < v46)
    {
      v28 = v46;
    }

    if (v49 >= v47)
    {
      v29 = v49;
    }

    else
    {
      v29 = v47;
    }

    if (v29 < v45)
    {
      v29 = v45;
    }

    v44 = v28 + 25.0;
    v30 = (v28 - v51) * 0.5;
    v31 = (v29 - v49) * 0.5;
    v32 = (v28 - v48) * 0.5;
    v33 = (v29 - v47) * 0.5;
    v34 = (v28 - v46) * 0.5;
    v35 = (v29 - v45) * 0.5;
    v36 = 0.0;
    do
    {
      v37 = 0.0;
      if ((v27 - 1) >= 0 && [(NSArray *)self->_fieldSpacing count]> v27 - 1)
      {
        v38 = [(NSArray *)self->_fieldSpacing objectAtIndexedSubscript:v27 - 1];
        [v38 floatValue];
        v37 = v39;
      }

      v36 = v36 + v37;
      v40 = v36 + v44 * v27;
      v41 = [(NSMutableArray *)self->_dotFullViews objectAtIndexedSubscript:v27];
      v54.origin.x = v30 + v40;
      v54.origin.y = v31;
      v54.size.height = v49;
      v54.size.width = v51;
      v55 = CGRectIntegral(v54);
      [v41 setFrame:{v55.origin.x, v55.origin.y, v55.size.width, v55.size.height}];
      v42 = [v4 objectAtIndexedSubscript:v27];
      v56.origin.x = v32 + v40;
      v56.origin.y = v33;
      v56.size.height = v47;
      v56.size.width = v48;
      v57 = CGRectIntegral(v56);
      [v42 setFrame:{v57.origin.x, v57.origin.y, v57.size.width, v57.size.height}];
      v43 = [(NSMutableArray *)self->_digitViews objectAtIndexedSubscript:v27];
      v58.origin.x = v34 + v40;
      v58.origin.y = v35;
      v58.size.height = v45;
      v58.size.width = v46;
      v59 = CGRectIntegral(v58);
      [v43 setFrame:{v59.origin.x, v59.origin.y, v59.size.width, v59.size.height}];

      ++v27;
    }

    while (v27 < self->_numberOfEntryFields);
  }
}

- (void)_delegateEnteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  [(PSPasscodeField *)self forceDisplayIfNeeded];
  v5 = dispatch_time(0, 76000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PSPasscodeField__delegateEnteredPasscode___block_invoke;
  v7[3] = &unk_1E71DC570;
  v7[4] = self;
  v8 = passcodeCopy;
  v6 = passcodeCopy;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
}

void __44__PSPasscodeField__delegateEnteredPasscode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 456));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [WeakRetained passcodeField:v2 enteredPasscode:v3];
}

- (void)setStringValue:(id)value
{
  [(NSMutableString *)self->_stringValue setString:value];
  [(PSPasscodeField *)self setNeedsLayout];
  if ([(NSMutableString *)self->_stringValue length]== self->_numberOfEntryFields)
  {
    stringValue = self->_stringValue;

    [(PSPasscodeField *)self _delegateEnteredPasscode:stringValue];
  }
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = PSPasscodeField;
  becomeFirstResponder = [(PSPasscodeField *)&v5 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:0];
  }

  return becomeFirstResponder;
}

- (int64_t)keyboardType
{
  if (PSUsePadStylePIN())
  {
    return 11;
  }

  else
  {
    return 127;
  }
}

- (int64_t)keyboardAppearance
{
  v3 = +[PSListController appearance];
  usesDarkTheme = [v3 usesDarkTheme];

  if (usesDarkTheme)
  {
    return 1;
  }

  else
  {
    return self->_keyboardAppearance;
  }
}

- (void)insertText:(id)text
{
  textCopy = text;
  if (-[PSPasscodeField isEnabled](self, "isEnabled") && -[NSMutableString length](self->_stringValue, "length") != self->_numberOfEntryFields && ([textCopy isEqualToString:@"\n"] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = [v6 passcodeField:self shouldInsertText:textCopy];

      v8 = v7;
    }

    else
    {
      v8 = textCopy;
    }

    textCopy = v8;
    if ([v8 length])
    {
      [(NSMutableString *)self->_stringValue appendString:textCopy];
      [(PSPasscodeField *)self setNeedsLayout];
      if ([(NSMutableString *)self->_stringValue length]== self->_numberOfEntryFields)
      {
        [(PSPasscodeField *)self _delegateEnteredPasscode:self->_stringValue];
      }
    }
  }
}

- (void)deleteBackward
{
  if ([(NSMutableString *)self->_stringValue length])
  {
    [(NSMutableString *)self->_stringValue deleteCharactersInRange:[(NSMutableString *)self->_stringValue length]- 1, 1];

    [(PSPasscodeField *)self setNeedsLayout];
  }
}

- (PSPasscodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end