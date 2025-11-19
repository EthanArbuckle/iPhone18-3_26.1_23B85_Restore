@interface _UITextFieldVisualStyle_tvOS
- (BOOL)textShouldUseVibrancy;
- (id)_defaultEditingFont;
- (id)_defaultTextColorForUserInterfaceStyle;
- (id)defaultTextColor;
- (id)defaultTextColorForKeyboardAppearance;
- (id)editingProcessorOverridingEditingAttributes:(id)a3;
- (id)parentViewForTextContentView;
- (id)placeholderColor;
- (void)handleTextVibrancy;
@end

@implementation _UITextFieldVisualStyle_tvOS

- (id)defaultTextColor
{
  v3 = [(_UITextFieldVisualStyle *)self styleSubject];
  v4 = [v3 _shouldDetermineInterfaceStyleTextColor];

  if ((v4 & 1) != 0 && dyld_program_sdk_at_least())
  {
    v5 = [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorForUserInterfaceStyle];
  }

  else
  {
    v5 = [(_UITextFieldVisualStyle_tvOS *)self defaultTextColorForKeyboardAppearance];
  }

  return v5;
}

- (id)defaultTextColorForKeyboardAppearance
{
  v3 = [(_UITextFieldVisualStyle *)self styleSubject];
  v4 = [v3 _keyboardAppearance];

  if (v4 == 1)
  {
    v5 = [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorDarkKeyboard];
  }

  else if (v4 == 10)
  {
    v5 = [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorForUserInterfaceStyle];
  }

  else
  {
    if (v4 == 9)
    {
      [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorBlackKeyboard];
    }

    else
    {
      [(_UITextFieldVisualStyle_tvOS *)self _defaultTextColorLightKeyboard];
    }
    v5 = ;
  }

  return v5;
}

- (id)placeholderColor
{
  v3 = [(_UITextFieldVisualStyle *)self styleSubject];
  if ([v3 _isFocused])
  {
    v4 = [(_UITextFieldVisualStyle *)self styleSubject];
    v5 = [v4 _fieldEditorAttached];

    if (!v5)
    {
      v6 = [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorFocused];
LABEL_15:
      v12 = v6;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(_UITextFieldVisualStyle *)self styleSubject];
  v8 = [v7 _keyboardAppearance];

  v9 = [(_UITextFieldVisualStyle *)self styleSubject];
  v10 = [v9 _userInterfaceStyle];

  if (v8 == 1)
  {
    v6 = [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorDarkKeyboard];
    goto LABEL_15;
  }

  if (v8 != 10)
  {
    if (v8 == 9)
    {
      [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorBlackKeyboard];
    }

    else
    {
      [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorLightKeyboard];
    }
    v6 = ;
    goto LABEL_15;
  }

  if (v10 == 1000 || v10 == 2)
  {
    v11 = [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorDarkKeyboard];
  }

  else
  {
    v11 = [(_UITextFieldVisualStyle_tvOS *)self _placeholderTextColorLightKeyboard];
  }

  v14 = v11;
  v12 = v11;

LABEL_16:

  return v12;
}

- (id)parentViewForTextContentView
{
  v3 = [(_UITextFieldVisualStyle *)self styleSubject];
  v4 = [v3 _contentView];

  v5 = [(_UITextFieldVisualStyle *)self styleSubject];
  v6 = [v5 _contentBackdropView];
  v7 = [v6 contentView];

  if (v7 && [(_UITextFieldVisualStyle_tvOS *)self textShouldUseVibrancy])
  {
    v8 = v7;

    v4 = v8;
  }

  [v4 setClipsToBounds:0];

  return v4;
}

- (void)handleTextVibrancy
{
  v3 = [(_UITextFieldVisualStyle *)self styleSubject];
  v4 = [v3 _fieldEditorAttached];

  if ((v4 & 1) == 0)
  {
    v5 = [(_UITextFieldVisualStyle *)self styleSubject];
    v10 = [v5 _textCanvasView];

    if ([(_UITextFieldVisualStyle_tvOS *)self textShouldUseVibrancy])
    {
      v6 = [(_UITextFieldVisualStyle *)self styleSubject];
      v7 = [v6 _currentTextColor];
      v8 = [v7 CGColor];
      v9 = [v10 layer];
      [v9 setContentsMultiplyColor:v8];
    }

    else
    {
      v6 = [v10 layer];
      [v6 setContentsMultiplyColor:0];
    }
  }
}

- (BOOL)textShouldUseVibrancy
{
  v3 = [(_UITextFieldVisualStyle *)self styleSubject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  v6 = [(_UITextFieldVisualStyle *)self styleSubject];
  v7 = [v6 _textShouldUseVibrancy];

  return v7;
}

- (id)editingProcessorOverridingEditingAttributes:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)_defaultTextColorForUserInterfaceStyle
{
  v3 = [(_UITextFieldVisualStyle *)self styleSubject];
  v4 = [v3 _userInterfaceStyle];

  if (v4 == 2)
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
  v3 = [(_UITextFieldVisualStyle *)self styleSubject];
  v4 = [v3 _textShouldFillFieldEditorHeight];

  v5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  if (v4)
  {
    v6 = [(_UITextFieldVisualStyle *)self styleSubject];
    [v6 _fieldEditorHeight];
    v7 = [v5 fontWithSize:?];

    v5 = v7;
  }

  return v5;
}

@end