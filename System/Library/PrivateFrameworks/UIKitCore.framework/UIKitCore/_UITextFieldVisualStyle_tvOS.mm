@interface _UITextFieldVisualStyle_tvOS
- (BOOL)textShouldUseVibrancy;
- (id)_defaultEditingFont;
- (id)_defaultTextColorForUserInterfaceStyle;
- (id)defaultTextColor;
- (id)defaultTextColorForKeyboardAppearance;
- (id)editingProcessorOverridingEditingAttributes:(id)attributes;
- (id)parentViewForTextContentView;
- (id)placeholderColor;
- (void)handleTextVibrancy;
@end

@implementation _UITextFieldVisualStyle_tvOS

- (id)defaultTextColor
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  _shouldDetermineInterfaceStyleTextColor = [styleSubject _shouldDetermineInterfaceStyleTextColor];

  if ((_shouldDetermineInterfaceStyleTextColor & 1) != 0 && dyld_program_sdk_at_least())
  {
    _defaultTextColorForUserInterfaceStyle = [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorForUserInterfaceStyle];
  }

  else
  {
    _defaultTextColorForUserInterfaceStyle = [(_UITextFieldVisualStyle_tvOS *)self defaultTextColorForKeyboardAppearance];
  }

  return _defaultTextColorForUserInterfaceStyle;
}

- (id)defaultTextColorForKeyboardAppearance
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  _keyboardAppearance = [styleSubject _keyboardAppearance];

  if (_keyboardAppearance == 1)
  {
    _defaultTextColorDarkKeyboard = [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorDarkKeyboard];
  }

  else if (_keyboardAppearance == 10)
  {
    _defaultTextColorDarkKeyboard = [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorForUserInterfaceStyle];
  }

  else
  {
    if (_keyboardAppearance == 9)
    {
      [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorBlackKeyboard];
    }

    else
    {
      [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorLightKeyboard];
    }
    _defaultTextColorDarkKeyboard = ;
  }

  return _defaultTextColorDarkKeyboard;
}

- (id)placeholderColor
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  if ([styleSubject _isFocused])
  {
    styleSubject2 = [(_UITextFieldVisualStyle *)self styleSubject];
    _fieldEditorAttached = [styleSubject2 _fieldEditorAttached];

    if (!_fieldEditorAttached)
    {
      _placeholderTextColorFocused = [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorFocused];
LABEL_15:
      v12 = _placeholderTextColorFocused;
      goto LABEL_16;
    }
  }

  else
  {
  }

  styleSubject3 = [(_UITextFieldVisualStyle *)self styleSubject];
  _keyboardAppearance = [styleSubject3 _keyboardAppearance];

  styleSubject4 = [(_UITextFieldVisualStyle *)self styleSubject];
  _userInterfaceStyle = [styleSubject4 _userInterfaceStyle];

  if (_keyboardAppearance == 1)
  {
    _placeholderTextColorFocused = [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorDarkKeyboard];
    goto LABEL_15;
  }

  if (_keyboardAppearance != 10)
  {
    if (_keyboardAppearance == 9)
    {
      [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorBlackKeyboard];
    }

    else
    {
      [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorLightKeyboard];
    }
    _placeholderTextColorFocused = ;
    goto LABEL_15;
  }

  if (_userInterfaceStyle == 1000 || _userInterfaceStyle == 2)
  {
    _placeholderTextColorDarkKeyboard = [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorDarkKeyboard];
  }

  else
  {
    _placeholderTextColorDarkKeyboard = [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorLightKeyboard];
  }

  v14 = _placeholderTextColorDarkKeyboard;
  v12 = _placeholderTextColorDarkKeyboard;

LABEL_16:

  return v12;
}

- (id)parentViewForTextContentView
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  _contentView = [styleSubject _contentView];

  styleSubject2 = [(_UITextFieldVisualStyle *)self styleSubject];
  _contentBackdropView = [styleSubject2 _contentBackdropView];
  contentView = [_contentBackdropView contentView];

  if (contentView && [(_UITextFieldVisualStyle_tvOS *)self textShouldUseVibrancy])
  {
    v8 = contentView;

    _contentView = v8;
  }

  [_contentView setClipsToBounds:0];

  return _contentView;
}

- (void)handleTextVibrancy
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  _fieldEditorAttached = [styleSubject _fieldEditorAttached];

  if ((_fieldEditorAttached & 1) == 0)
  {
    styleSubject2 = [(_UITextFieldVisualStyle *)self styleSubject];
    _textCanvasView = [styleSubject2 _textCanvasView];

    if ([(_UITextFieldVisualStyle_tvOS *)self textShouldUseVibrancy])
    {
      styleSubject3 = [(_UITextFieldVisualStyle *)self styleSubject];
      _currentTextColor = [styleSubject3 _currentTextColor];
      cGColor = [_currentTextColor CGColor];
      layer = [_textCanvasView layer];
      [layer setContentsMultiplyColor:cGColor];
    }

    else
    {
      styleSubject3 = [_textCanvasView layer];
      [styleSubject3 setContentsMultiplyColor:0];
    }
  }
}

- (BOOL)textShouldUseVibrancy
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  styleSubject2 = [(_UITextFieldVisualStyle *)self styleSubject];
  _textShouldUseVibrancy = [styleSubject2 _textShouldUseVibrancy];

  return _textShouldUseVibrancy;
}

- (id)editingProcessorOverridingEditingAttributes:(id)attributes
{
  v3 = objc_opt_new();

  return v3;
}

- (id)_defaultTextColorForUserInterfaceStyle
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  _userInterfaceStyle = [styleSubject _userInterfaceStyle];

  if (_userInterfaceStyle == 2)
  {
    [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorDarkKeyboard];
  }

  else
  {
    [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorLightKeyboard];
  }
  v5 = ;

  return v5;
}

- (id)_defaultEditingFont
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  _textShouldFillFieldEditorHeight = [styleSubject _textShouldFillFieldEditorHeight];

  v5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  if (_textShouldFillFieldEditorHeight)
  {
    styleSubject2 = [(_UITextFieldVisualStyle *)self styleSubject];
    [styleSubject2 _fieldEditorHeight];
    v7 = [v5 fontWithSize:?];

    v5 = v7;
  }

  return v5;
}

@end