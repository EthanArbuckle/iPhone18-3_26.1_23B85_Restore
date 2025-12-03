@interface PSEditableTableCell
- (BOOL)_cellIsEditing;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canReload;
- (BOOL)canResignFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)isTextFieldEditing;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (PSEditableTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PSListController)controllerDelegate;
- (id)_defaultTextColor;
- (id)value;
- (void)_setValueChanged;
- (void)cellRemovedFromView;
- (void)controlChanged:(id)changed;
- (void)dealloc;
- (void)endEditingAndSave;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setCellEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
- (void)setValue:(id)value;
- (void)setValueChangedTarget:(id)target action:(SEL)action specifier:(id)specifier;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation PSEditableTableCell

- (PSEditableTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PSEditableTableCell;
  v4 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PSEditableTableCell *)v4 setAccessoryType:0];
    [(PSEditableTableCell *)v5 setSelectionStyle:0];
    [(PSEditableTableCell *)v5 defaultTextFieldIndentation];
    [(PSEditableTableCell *)v5 setTextFieldOffset:?];
    editableTextField = [(PSEditableTableCell *)v5 editableTextField];
    [editableTextField setDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  [editableTextField setDelegate:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBD0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DDBA0] object:0];

  v6.receiver = self;
  v6.super_class = PSEditableTableCell;
  [(PSTableCell *)&v6 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v77[1] = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  v75.receiver = self;
  v75.super_class = PSEditableTableCell;
  [(PSTableCell *)&v75 refreshCellContentsWithSpecifier:specifierCopy];
  textField = [(PSEditableTableCell *)self textField];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [textField setFont:v6];

  if (*(specifierCopy + 7) == 12)
  {
    v7 = [specifierCopy propertyForKey:@"overrideDevicePasscodeEntryPreset"];
    bOOLValue = [v7 BOOLValue];

    if (bOOLValue)
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
      [textField setDevicePasscodeEntry:1];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "set devicePasscodeEntry (refreshCellContentsWithSpecifier)";
        goto LABEL_13;
      }
    }

    [textField setSecureTextEntry:1];
    [textField setAutocapitalizationType:0];
    [textField setAutocorrectionType:1];
    v14 = *(specifierCopy + 12);
    switch(v14)
    {
      case 3:
        v15 = textField;
        v16 = 2;
        break;
      case 2:
        v15 = textField;
        v16 = 11;
        break;
      case 1:
        v15 = textField;
        v16 = 3;
        break;
      default:
        if (*(specifierCopy + 9) < 1 || (v17 = [textField keyboardType], v16 = *(specifierCopy + 9), v17 == v16))
        {
          v15 = textField;
          v16 = 1;
        }

        else
        {
          v15 = textField;
        }

        break;
    }

    [v15 setKeyboardType:v16];
    goto LABEL_43;
  }

  if (!*(specifierCopy + 12))
  {
    if ([textField autocapitalizationType] != *(specifierCopy + 10))
    {
      [textField setAutocapitalizationType:?];
    }

    if ([textField keyboardType] != *(specifierCopy + 9))
    {
      [textField setKeyboardType:?];
    }

    if ([textField autocorrectionType] != *(specifierCopy + 11))
    {
      [textField setAutocorrectionType:?];
    }

    goto LABEL_37;
  }

  [textField setAutocorrectionType:1];
  [textField setAutocapitalizationType:0];
  v11 = *(specifierCopy + 12);
  if (v11 > 3)
  {
    if (v11 == 4 || v11 == 5)
    {
      v12 = textField;
      v13 = 7;
      goto LABEL_36;
    }

    if (v11 == 6)
    {
      v12 = textField;
      v13 = 8;
      goto LABEL_36;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        v12 = textField;
        v13 = 3;
        goto LABEL_36;
      case 2:
        v12 = textField;
        v13 = 11;
        goto LABEL_36;
      case 3:
        v12 = textField;
        v13 = 2;
LABEL_36:
        [v12 setKeyboardType:v13];
        break;
    }
  }

LABEL_37:
  v18 = [specifierCopy propertyForKey:@"noAutoCorrect"];
  bOOLValue2 = [v18 BOOLValue];

  if (bOOLValue2)
  {
    [textField setAutocorrectionType:1];
    [textField setAutocapitalizationType:0];
  }

  v20 = [specifierCopy propertyForKey:@"textContentType"];

  if (v20)
  {
    v21 = [specifierCopy propertyForKey:@"textContentType"];
    [textField setTextContentType:v21];
  }

LABEL_43:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v23 = specifierCopy;
    placeholder = [v23 placeholder];
    if ([placeholder length])
    {
      [(PSEditableTableCell *)self setPlaceholderText:placeholder];
    }
  }

  else
  {
    v23 = 0;
  }

  if (*(specifierCopy + 2))
  {
    WeakRetained = objc_loadWeakRetained(specifierCopy + 1);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      performGetter = [specifierCopy performGetter];
      if (performGetter == 0 && (isKindOfClass & 1) != 0)
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
        performGetter = SFPerformSelector();
      }

      if (performGetter)
      {
        [(PSEditableTableCell *)self setValue:performGetter];
      }
    }
  }

LABEL_61:
  v34 = +[PSListController appearance];
  editablePlaceholderTextColor = [v34 editablePlaceholderTextColor];

  if (editablePlaceholderTextColor)
  {
    placeholder2 = [textField placeholder];
    if (placeholder2)
    {
      v37 = objc_alloc(MEMORY[0x1E696AAB0]);
      placeholder3 = [textField placeholder];
      v76 = *MEMORY[0x1E69DB650];
      +[PSListController appearance];
      v39 = v73 = v23;
      editablePlaceholderTextColor2 = [v39 editablePlaceholderTextColor];
      [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:editablePlaceholderTextColor2];
      v41 = specifierCopy;
      v42 = textField;
      v44 = v43 = self;
      v77[0] = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      v46 = [v37 initWithString:placeholder3 attributes:v45];

      self = v43;
      textField = v42;
      specifierCopy = v41;

      v23 = v73;
      [textField setAttributedPlaceholder:v46];
    }
  }

  v47 = +[PSListController appearance];
  editableTextColor = [v47 editableTextColor];

  if (editableTextColor)
  {
    v49 = +[PSListController appearance];
    editableTextColor2 = [v49 editableTextColor];
    v51 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:editableTextColor2];
    [textField setTextColor:v51];
  }

  v52 = +[PSListController appearance];
  editableInsertionPointColor = [v52 editableInsertionPointColor];

  if (editableInsertionPointColor)
  {
    v54 = +[PSListController appearance];
    editableInsertionPointColor2 = [v54 editableInsertionPointColor];
    v56 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:editableInsertionPointColor2];
    [textField setInsertionPointColor:v56];
  }

  v57 = +[PSListController appearance];
  editableSelectionBarColor = [v57 editableSelectionBarColor];

  if (editableSelectionBarColor)
  {
    v59 = +[PSListController appearance];
    editableSelectionBarColor2 = [v59 editableSelectionBarColor];
    v61 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:editableSelectionBarColor2];
    [textField setSelectionBarColor:v61];
  }

  v62 = +[PSListController appearance];
  editableSelectionHighlightColor = [v62 editableSelectionHighlightColor];

  if (editableSelectionHighlightColor)
  {
    v64 = +[PSListController appearance];
    editableSelectionHighlightColor2 = [v64 editableSelectionHighlightColor];
    v66 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:editableSelectionHighlightColor2];
    [textField setSelectionHighlightColor:v66];
  }

  v67 = [specifierCopy propertyForKey:@"alignment"];
  if (v67)
  {
    v68 = v67;
    v69 = [specifierCopy propertyForKey:@"alignment"];
    objc_opt_class();
    v70 = objc_opt_isKindOfClass();

    if (v70)
    {
      v71 = [specifierCopy propertyForKey:@"alignment"];
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

      [textField setTextAlignment:v72];
    }
  }
}

- (void)prepareForReuse
{
  textField = [(PSEditableTableCell *)self textField];
  [textField setSecureTextEntry:0];
  [textField setKeyboardType:0];
  [textField setAutocorrectionType:0];
  [textField setAutocapitalizationType:2];
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

- (void)controlChanged:(id)changed
{
  changedCopy = changed;
  value = [changedCopy value];
  WeakRetained = objc_loadWeakRetained(&self->_realTarget);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    specifier = [(PSTableCell *)self specifier];

    if (specifier)
    {
      v8 = objc_loadWeakRetained(&self->_realTarget);
      specifier2 = [(PSTableCell *)self specifier];
      v10 = SFPerformSelector2();
    }
  }
}

- (void)endEditingAndSave
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBD0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DDBA0] object:0];

  if (self->_valueChanged)
  {
    [(PSEditableTableCell *)self controlChanged:self];
  }

  else
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69DE5C0];
    editableTextField = [(PSEditableTableCell *)self editableTextField];
    [defaultCenter3 removeObserver:self name:v6 object:editableTextField];
  }

  if (self->_delaySpecifierRelease)
  {

    [(PSTableCell *)self setSpecifier:0];
  }
}

- (void)cellRemovedFromView
{
  specifier = [(PSTableCell *)self specifier];
  v4.receiver = self;
  v4.super_class = PSEditableTableCell;
  [(PSTableCell *)&v4 cellRemovedFromView];
  if ([(PSEditableTableCell *)self isTextFieldEditing]|| [(PSEditableTableCell *)self isFirstResponder])
  {
    if (specifier)
    {
      [(PSTableCell *)self setSpecifier:specifier];
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69DE5C0];
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  [defaultCenter removeObserver:self name:v3 object:editableTextField];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  superview = [(PSEditableTableCell *)self superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && UIKeyboardAutomaticIsOnScreen())
  {
    v4 = [superview indexPathForCell:self];
    [superview scrollToRowAtIndexPath:v4 atScrollPosition:2 animated:1];
  }

  self->_valueChanged = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69DE5C0];
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  [defaultCenter addObserver:self selector:sel__setValueChanged name:v6 object:editableTextField];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__saveForExit name:*MEMORY[0x1E69DDBD0] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__saveForExit name:*MEMORY[0x1E69DDBA0] object:0];
}

- (BOOL)textFieldShouldClear:(id)clear
{
  if (![(PSEditableTableCell *)self isTextFieldEditing])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E69DE5C0];
    editableTextField = [(PSEditableTableCell *)self editableTextField];
    [defaultCenter addObserver:self selector:sel__setValueChanged name:v5 object:editableTextField];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  [(PSEditableTableCell *)self endEditingAndSave];
  WeakRetained = objc_loadWeakRetained(&self->super._specifier);
  v5 = [WeakRetained propertyForKey:@"textFieldShouldPopOnReturn"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue && self->_returnKeyTapped)
  {
    v9 = objc_loadWeakRetained(&self->_controllerDelegate);
    navigationController = [v9 navigationController];
    v8 = [navigationController popViewControllerAnimated:1];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  self->_returnKeyTapped = 1;
  WeakRetained = objc_loadWeakRetained(&self->super._specifier);
  v4 = [WeakRetained propertyForKey:@"textFieldShouldPopOnReturn"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setValueChangedTarget:(id)target action:(SEL)action specifier:(id)specifier
{
  obj = target;
  [(PSTableCell *)self setCellTarget:self];
  [(PSTableCell *)self setCellAction:sel_controlChanged_];
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_targetSetter = actionCopy;
  objc_storeWeak(&self->_realTarget, obj);
}

- (id)_defaultTextColor
{
  v3 = +[PSListController appearance];
  editableTextColor = [v3 editableTextColor];
  if (editableTextColor)
  {
    v5 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:editableTextColor];
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v5 = [(PSEditableTableCell *)self _accessibilityHigherContrastTintColorForColor:blackColor];
  }

  return v5;
}

- (void)setCellEnabled:(BOOL)enabled
{
  if (self->super._cellEnabled != enabled)
  {
    v17 = v3;
    v18 = v4;
    enabledCopy = enabled;
    v16.receiver = self;
    v16.super_class = PSEditableTableCell;
    [(PSTableCell *)&v16 setCellEnabled:?];
    editableTextField = [(PSEditableTableCell *)self editableTextField];
    [editableTextField setEnabled:enabledCopy];

    if (enabledCopy)
    {
      textColor = self->_textColor;
      editableTextField2 = [(PSEditableTableCell *)self editableTextField];
      editableTextField4 = editableTextField2;
      if (textColor)
      {
        [editableTextField2 setTextColor:self->_textColor];

        editableTextField4 = self->_textColor;
        self->_textColor = 0;
LABEL_8:

        return;
      }

      _defaultTextColor = [(PSEditableTableCell *)self _defaultTextColor];
    }

    else
    {
      editableTextField3 = [(PSEditableTableCell *)self editableTextField];
      textColor = [editableTextField3 textColor];
      v13 = self->_textColor;
      self->_textColor = textColor;

      editableTextField4 = [(PSEditableTableCell *)self editableTextField];
      _defaultTextColor = [MEMORY[0x1E69DC888] tableCellGrayTextColor];
    }

    v15 = _defaultTextColor;
    [editableTextField4 setTextColor:_defaultTextColor];

    goto LABEL_8;
  }
}

- (void)setTitle:(id)title
{
  v10.receiver = self;
  v10.super_class = PSEditableTableCell;
  titleCopy = title;
  [(PSTableCell *)&v10 setTitle:titleCopy];
  v5 = [titleCopy length];

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
  titleLabel = [(PSTableCell *)self titleLabel];
  text = [titleLabel text];
  v5 = [text length];

  if (v5)
  {
    traitCollection = [(PSEditableTableCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (!IsAccessibilityCategory)
    {
      [titleLabel frame];
      v10 = v9;
      v12 = v11;
      [titleLabel sizeToFit];
      [titleLabel frame];
      v14 = v13;
      [titleLabel setFrame:{v10, v12}];
      _shouldReverseLayoutDirection = [(PSEditableTableCell *)self _shouldReverseLayoutDirection];
      [(PSEditableTableCell *)self textFieldHorizontalPadding];
      if (_shouldReverseLayoutDirection)
      {
        v17 = v10 - v16;
      }

      else
      {
        v17 = v10 + v14 + v16;
      }

      v18 = ceil(v17);
      editableTextField = [(PSEditableTableCell *)self editableTextField];
      [editableTextField frame];
      if (_shouldReverseLayoutDirection)
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
        [editableTextField setFrame:v20 + v22];
      }
    }
  }
}

- (BOOL)canBecomeFirstResponder
{
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  canBecomeFirstResponder = [editableTextField canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  canResignFirstResponder = [editableTextField canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)isFirstResponder
{
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  isFirstResponder = [editableTextField isFirstResponder];

  return isFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  becomeFirstResponder = [editableTextField becomeFirstResponder];

  return becomeFirstResponder;
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
    editableTextField = [(PSEditableTableCell *)self editableTextField];
    resignFirstResponder = [editableTextField resignFirstResponder];
  }

  return resignFirstResponder;
}

- (BOOL)isTextFieldEditing
{
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  isEditing = [editableTextField isEditing];

  return isEditing;
}

- (BOOL)_cellIsEditing
{
  v3.receiver = self;
  v3.super_class = PSEditableTableCell;
  return [(PSEditableTableCell *)&v3 isEditing];
}

- (id)value
{
  editableTextField = [(PSEditableTableCell *)self editableTextField];
  text = [editableTextField text];

  return text;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  detailTextLabel = [(PSEditableTableCell *)self detailTextLabel];
  text = [detailTextLabel text];

  v6 = valueCopy;
  if (text != valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      editableTextField = [(PSEditableTableCell *)self editableTextField];
      editableTextField2 = editableTextField;
      v9 = valueCopy;
LABEL_4:
      [editableTextField setText:v9];
LABEL_7:

      v6 = valueCopy;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      editableTextField2 = [(PSEditableTableCell *)self editableTextField];
      stringValue = [valueCopy stringValue];
      [editableTextField2 setText:stringValue];

      goto LABEL_7;
    }

    v6 = valueCopy;
    if (!valueCopy)
    {
      editableTextField3 = [(PSEditableTableCell *)self editableTextField];
      text2 = [editableTextField3 text];
      v13 = [text2 length];

      v6 = 0;
      if (v13)
      {
        editableTextField = [(PSEditableTableCell *)self editableTextField];
        editableTextField2 = editableTextField;
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