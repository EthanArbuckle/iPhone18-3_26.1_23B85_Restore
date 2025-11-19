@interface PSEditableTableCell
- (BOOL)_cellIsEditing;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canReload;
- (BOOL)canResignFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)isTextFieldEditing;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (PSEditableTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PSListController)controllerDelegate;
- (id)_defaultTextColor;
- (id)value;
- (void)_setValueChanged;
- (void)cellRemovedFromView;
- (void)controlChanged:(id)a3;
- (void)dealloc;
- (void)endEditingAndSave;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setCellEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setValue:(id)a3;
- (void)setValueChangedTarget:(id)a3 action:(SEL)a4 specifier:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation PSEditableTableCell

- (PSEditableTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PSEditableTableCell;
  v4 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PSEditableTableCell *)v4 setAccessoryType:0];
    [(PSEditableTableCell *)v5 setSelectionStyle:0];
    [(PSEditableTableCell *)v5 defaultTextFieldIndentation];
    [(PSEditableTableCell *)v5 setTextFieldOffset:?];
    v6 = [(PSEditableTableCell *)v5 editableTextField];
    [v6 setDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(PSEditableTableCell *)self editableTextField];
  [v3 setDelegate:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDBD0] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DDBA0] object:0];

  v6.receiver = self;
  v6.super_class = PSEditableTableCell;
  [(PSTableCell *)&v6 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v77[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v75.receiver = self;
  v75.super_class = PSEditableTableCell;
  [(PSTableCell *)&v75 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSEditableTableCell *)self textField];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 setFont:v6];

  if (*(v4 + 7) == 12)
  {
    v7 = [v4 propertyForKey:@"overrideDevicePasscodeEntryPreset"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "will not set devicePasscodeEntry (refreshCellContentsWithSpecifier)";
LABEL_13:
        _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
      }
    }

    else
    {
      [v5 setDevicePasscodeEntry:1];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "set devicePasscodeEntry (refreshCellContentsWithSpecifier)";
        goto LABEL_13;
      }
    }

    [v5 setSecureTextEntry:1];
    [v5 setAutocapitalizationType:0];
    [v5 setAutocorrectionType:1];
    v14 = *(v4 + 12);
    switch(v14)
    {
      case 3:
        v15 = v5;
        v16 = 2;
        break;
      case 2:
        v15 = v5;
        v16 = 11;
        break;
      case 1:
        v15 = v5;
        v16 = 3;
        break;
      default:
        if (*(v4 + 9) < 1 || (v17 = [v5 keyboardType], v16 = *(v4 + 9), v17 == v16))
        {
          v15 = v5;
          v16 = 1;
        }

        else
        {
          v15 = v5;
        }

        break;
    }

    [v15 setKeyboardType:v16];
    goto LABEL_43;
  }

  if (!*(v4 + 12))
  {
    if ([v5 autocapitalizationType] != *(v4 + 10))
    {
      [v5 setAutocapitalizationType:?];
    }

    if ([v5 keyboardType] != *(v4 + 9))
    {
      [v5 setKeyboardType:?];
    }

    if ([v5 autocorrectionType] != *(v4 + 11))
    {
      [v5 setAutocorrectionType:?];
    }

    goto LABEL_37;
  }

  [v5 setAutocorrectionType:1];
  [v5 setAutocapitalizationType:0];
  v11 = *(v4 + 12);
  if (v11 > 3)
  {
    if (v11 == 4 || v11 == 5)
    {
      v12 = v5;
      v13 = 7;
      goto LABEL_36;
    }

    if (v11 == 6)
    {
      v12 = v5;
      v13 = 8;
      goto LABEL_36;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        v12 = v5;
        v13 = 3;
        goto LABEL_36;
      case 2:
        v12 = v5;
        v13 = 11;
        goto LABEL_36;
      case 3:
        v12 = v5;
        v13 = 2;
LABEL_36:
        [v12 setKeyboardType:v13];
        break;
    }
  }

LABEL_37:
  v18 = [v4 propertyForKey:@"noAutoCorrect"];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    [v5 setAutocorrectionType:1];
    [v5 setAutocapitalizationType:0];
  }

  v20 = [v4 propertyForKey:@"textContentType"];

  if (v20)
  {
    v21 = [v4 propertyForKey:@"textContentType"];
    [v5 setTextContentType:v21];
  }

LABEL_43:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v23 = v4;
    v24 = [v23 placeholder];
    if ([v24 length])
    {
      [(PSEditableTableCell *)self setPlaceholderText:v24];
    }
  }

  else
  {
    v23 = 0;
  }

  if (*(v4 + 2))
  {
    WeakRetained = objc_loadWeakRetained(v4 + 1);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = [v4 performGetter];
      if (v27 == 0 && (isKindOfClass & 1) != 0)
      {
        if (!v23[28])
        {
          v28 = [v23 propertyForKey:@"bestGuess"];
          if ([v28 length] && (v29 = NSSelectorFromString(v28)) != 0)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          v23[28] = v30;

          if (!v23[28])
          {
            goto LABEL_61;
          }
        }

        v31 = objc_loadWeakRetained(v23 + 1);
        v32 = objc_opt_respondsToSelector();

        if ((v32 & 1) == 0)
        {
          goto LABEL_61;
        }

        v33 = objc_loadWeakRetained(v23 + 1);
        v27 = SFPerformSelector();
      }

      if (v27)
      {
        [(PSEditableTableCell *)self setValue:v27];
      }
    }
  }

LABEL_61:
  v34 = +[PSListController appearance];
  v35 = [v34 editablePlaceholderTextColor];

  if (v35)
  {
    v36 = [v5 placeholder];
    if (v36)
    {
      v37 = objc_alloc(MEMORY[0x1E696AAB0]);
      v38 = [v5 placeholder];
      v76 = *MEMORY[0x1E69DB650];
      +[PSListController appearance];
      v39 = v73 = v23;
      v40 = [v39 editablePlaceholderTextColor];
      [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:v40];
      v41 = v4;
      v42 = v5;
      v44 = v43 = self;
      v77[0] = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      v46 = [v37 initWithString:v38 attributes:v45];

      self = v43;
      v5 = v42;
      v4 = v41;

      v23 = v73;
      [v5 setAttributedPlaceholder:v46];
    }
  }

  v47 = +[PSListController appearance];
  v48 = [v47 editableTextColor];

  if (v48)
  {
    v49 = +[PSListController appearance];
    v50 = [v49 editableTextColor];
    v51 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:v50];
    [v5 setTextColor:v51];
  }

  v52 = +[PSListController appearance];
  v53 = [v52 editableInsertionPointColor];

  if (v53)
  {
    v54 = +[PSListController appearance];
    v55 = [v54 editableInsertionPointColor];
    v56 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:v55];
    [v5 setInsertionPointColor:v56];
  }

  v57 = +[PSListController appearance];
  v58 = [v57 editableSelectionBarColor];

  if (v58)
  {
    v59 = +[PSListController appearance];
    v60 = [v59 editableSelectionBarColor];
    v61 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:v60];
    [v5 setSelectionBarColor:v61];
  }

  v62 = +[PSListController appearance];
  v63 = [v62 editableSelectionHighlightColor];

  if (v63)
  {
    v64 = +[PSListController appearance];
    v65 = [v64 editableSelectionHighlightColor];
    v66 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:v65];
    [v5 setSelectionHighlightColor:v66];
  }

  v67 = [v4 propertyForKey:@"alignment"];
  if (v67)
  {
    v68 = v67;
    v69 = [v4 propertyForKey:@"alignment"];
    objc_opt_class();
    v70 = objc_opt_isKindOfClass();

    if (v70)
    {
      v71 = [v4 propertyForKey:@"alignment"];
      if ([v71 isEqualToString:@"left"])
      {
        v72 = 0;
      }

      else if ([v71 isEqualToString:@"center"])
      {
        v72 = 1;
      }

      else if ([v71 isEqualToString:@"right"])
      {
        v72 = 2;
      }

      else
      {
        v72 = 4;
      }

      [v5 setTextAlignment:v72];
    }
  }
}

- (void)prepareForReuse
{
  v3 = [(PSEditableTableCell *)self textField];
  [v3 setSecureTextEntry:0];
  [v3 setKeyboardType:0];
  [v3 setAutocorrectionType:0];
  [v3 setAutocapitalizationType:2];
  [(PSEditableTableCell *)self setPlaceholderText:0];
  v4.receiver = self;
  v4.super_class = PSEditableTableCell;
  [(PSTableCell *)&v4 prepareForReuse];
}

- (BOOL)canReload
{
  v3 = objc_opt_class();

  return [(PSEditableTableCell *)self isMemberOfClass:v3];
}

- (void)controlChanged:(id)a3
{
  v11 = a3;
  v4 = [v11 value];
  WeakRetained = objc_loadWeakRetained(&self->_realTarget);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [(PSTableCell *)self specifier];

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_realTarget);
      v9 = [(PSTableCell *)self specifier];
      v10 = SFPerformSelector2();
    }
  }
}

- (void)endEditingAndSave
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBD0] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDBA0] object:0];

  if (self->_valueChanged)
  {
    [(PSEditableTableCell *)self controlChanged:self];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69DE5C0];
    v7 = [(PSEditableTableCell *)self editableTextField];
    [v5 removeObserver:self name:v6 object:v7];
  }

  if (self->_delaySpecifierRelease)
  {

    [(PSTableCell *)self setSpecifier:0];
  }
}

- (void)cellRemovedFromView
{
  v3 = [(PSTableCell *)self specifier];
  v4.receiver = self;
  v4.super_class = PSEditableTableCell;
  [(PSTableCell *)&v4 cellRemovedFromView];
  if ([(PSEditableTableCell *)self isTextFieldEditing]|| [(PSEditableTableCell *)self isFirstResponder])
  {
    if (v3)
    {
      [(PSTableCell *)self setSpecifier:v3];
      self->_delaySpecifierRelease = 1;
    }
  }
}

- (void)_setValueChanged
{
  if ([(PSEditableTableCell *)self isTextFieldEditing])
  {
    self->_valueChanged = 1;
  }

  else
  {
    [(PSEditableTableCell *)self controlChanged:self];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69DE5C0];
  v4 = [(PSEditableTableCell *)self editableTextField];
  [v5 removeObserver:self name:v3 object:v4];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v10 = [(PSEditableTableCell *)self superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && UIKeyboardAutomaticIsOnScreen())
  {
    v4 = [v10 indexPathForCell:self];
    [v10 scrollToRowAtIndexPath:v4 atScrollPosition:2 animated:1];
  }

  self->_valueChanged = 0;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69DE5C0];
  v7 = [(PSEditableTableCell *)self editableTextField];
  [v5 addObserver:self selector:sel__setValueChanged name:v6 object:v7];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__saveForExit name:*MEMORY[0x1E69DDBD0] object:0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__saveForExit name:*MEMORY[0x1E69DDBA0] object:0];
}

- (BOOL)textFieldShouldClear:(id)a3
{
  if (![(PSEditableTableCell *)self isTextFieldEditing])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E69DE5C0];
    v6 = [(PSEditableTableCell *)self editableTextField];
    [v4 addObserver:self selector:sel__setValueChanged name:v5 object:v6];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  [(PSEditableTableCell *)self endEditingAndSave];
  WeakRetained = objc_loadWeakRetained(&self->super._specifier);
  v5 = [WeakRetained propertyForKey:@"textFieldShouldPopOnReturn"];
  v6 = [v5 BOOLValue];

  if (v6 && self->_returnKeyTapped)
  {
    v9 = objc_loadWeakRetained(&self->_controllerDelegate);
    v7 = [v9 navigationController];
    v8 = [v7 popViewControllerAnimated:1];
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  self->_returnKeyTapped = 1;
  WeakRetained = objc_loadWeakRetained(&self->super._specifier);
  v4 = [WeakRetained propertyForKey:@"textFieldShouldPopOnReturn"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setValueChangedTarget:(id)a3 action:(SEL)a4 specifier:(id)a5
{
  obj = a3;
  [(PSTableCell *)self setCellTarget:self];
  [(PSTableCell *)self setCellAction:sel_controlChanged_];
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  self->_targetSetter = v7;
  objc_storeWeak(&self->_realTarget, obj);
}

- (id)_defaultTextColor
{
  v3 = +[PSListController appearance];
  v4 = [v3 editableTextColor];
  if (v4)
  {
    v5 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:v6];
  }

  return v5;
}

- (void)setCellEnabled:(BOOL)a3
{
  if (self->super._cellEnabled != a3)
  {
    v17 = v3;
    v18 = v4;
    v5 = a3;
    v16.receiver = self;
    v16.super_class = PSEditableTableCell;
    [(PSTableCell *)&v16 setCellEnabled:?];
    v7 = [(PSEditableTableCell *)self editableTextField];
    [v7 setEnabled:v5];

    if (v5)
    {
      textColor = self->_textColor;
      v9 = [(PSEditableTableCell *)self editableTextField];
      v10 = v9;
      if (textColor)
      {
        [v9 setTextColor:self->_textColor];

        v10 = self->_textColor;
        self->_textColor = 0;
LABEL_8:

        return;
      }

      v14 = [(PSEditableTableCell *)self _defaultTextColor];
    }

    else
    {
      v11 = [(PSEditableTableCell *)self editableTextField];
      v12 = [v11 textColor];
      v13 = self->_textColor;
      self->_textColor = v12;

      v10 = [(PSEditableTableCell *)self editableTextField];
      v14 = [MEMORY[0x1E69DC888] tableCellGrayTextColor];
    }

    v15 = v14;
    [v10 setTextColor:v14];

    goto LABEL_8;
  }
}

- (void)setTitle:(id)a3
{
  v10.receiver = self;
  v10.super_class = PSEditableTableCell;
  v4 = a3;
  [(PSTableCell *)&v10 setTitle:v4];
  v5 = [v4 length];

  [(PSTableCell *)self textFieldOffset];
  v7 = v6;
  if (v5)
  {
    [(PSEditableTableCell *)self minTextFieldIndentation];
    if (v7 == v8)
    {
      return;
    }

    [(PSEditableTableCell *)self minTextFieldIndentation];
  }

  else
  {
    [(PSEditableTableCell *)self defaultTextFieldIndentation];
    if (v7 == v9)
    {
      return;
    }

    [(PSEditableTableCell *)self defaultTextFieldIndentation];
  }

  [(PSEditableTableCell *)self setTextFieldOffset:?];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = PSEditableTableCell;
  [(PSTableCell *)&v23 layoutSubviews];
  v3 = [(PSTableCell *)self titleLabel];
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(PSEditableTableCell *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

    if (!IsAccessibilityCategory)
    {
      [v3 frame];
      v10 = v9;
      v12 = v11;
      [v3 sizeToFit];
      [v3 frame];
      v14 = v13;
      [v3 setFrame:{v10, v12}];
      v15 = [(PSEditableTableCell *)self _shouldReverseLayoutDirection];
      [(PSEditableTableCell *)self textFieldHorizontalPadding];
      if (v15)
      {
        v17 = v10 - v16;
      }

      else
      {
        v17 = v10 + v14 + v16;
      }

      v18 = ceil(v17);
      v19 = [(PSEditableTableCell *)self editableTextField];
      [v19 frame];
      if (v15)
      {
        v21 = v20 > v18;
      }

      else
      {
        v21 = v20 < v18;
      }

      if (v21)
      {
        v22 = v18 - v20;
        [v19 setFrame:v20 + v22];
      }
    }
  }
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(PSEditableTableCell *)self editableTextField];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(PSEditableTableCell *)self editableTextField];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)isFirstResponder
{
  v2 = [(PSEditableTableCell *)self editableTextField];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(PSEditableTableCell *)self editableTextField];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v7.receiver = self;
  v7.super_class = PSEditableTableCell;
  if ([(PSEditableTableCell *)&v7 isFirstResponder])
  {
    v6.receiver = self;
    v6.super_class = PSEditableTableCell;
    return [(PSEditableTableCell *)&v6 resignFirstResponder];
  }

  else
  {
    v4 = [(PSEditableTableCell *)self editableTextField];
    v3 = [v4 resignFirstResponder];
  }

  return v3;
}

- (BOOL)isTextFieldEditing
{
  v2 = [(PSEditableTableCell *)self editableTextField];
  v3 = [v2 isEditing];

  return v3;
}

- (BOOL)_cellIsEditing
{
  v3.receiver = self;
  v3.super_class = PSEditableTableCell;
  return [(PSEditableTableCell *)&v3 isEditing];
}

- (id)value
{
  v2 = [(PSEditableTableCell *)self editableTextField];
  v3 = [v2 text];

  return v3;
}

- (void)setValue:(id)a3
{
  v14 = a3;
  v4 = [(PSEditableTableCell *)self detailTextLabel];
  v5 = [v4 text];

  v6 = v14;
  if (v5 != v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(PSEditableTableCell *)self editableTextField];
      v8 = v7;
      v9 = v14;
LABEL_4:
      [v7 setText:v9];
LABEL_7:

      v6 = v14;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(PSEditableTableCell *)self editableTextField];
      v10 = [v14 stringValue];
      [v8 setText:v10];

      goto LABEL_7;
    }

    v6 = v14;
    if (!v14)
    {
      v11 = [(PSEditableTableCell *)self editableTextField];
      v12 = [v11 text];
      v13 = [v12 length];

      v6 = 0;
      if (v13)
      {
        v7 = [(PSEditableTableCell *)self editableTextField];
        v8 = v7;
        v9 = 0;
        goto LABEL_4;
      }
    }
  }

LABEL_8:
}

- (PSListController)controllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerDelegate);

  return WeakRetained;
}

@end