@interface UIKeyboardCandidateViewConfiguration
+ (double)fontSizeMultiplierForCurrentLanguage;
+ (double)lineHeightMultiplierForCurrentLanguage;
+ (id)configuration;
- (CGSize)preferredInlineFloatingViewSize;
- (UIColor)highlightedBackgroundColor;
- (id)candidateFontWithSize:(double)a3;
- (id)candidateFontWithSize:(double)a3 language:(id)a4;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfiguration

+ (id)configuration
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)initialState
{
  v3 = objc_alloc_init(UIKeyboardCandidateViewState);
  v4 = [UIKeyboardCandidateViewStyle styleForDarkKeyboard:[(UIKeyboardCandidateViewConfiguration *)self darkKeyboard]];
  [(UIKeyboardCandidateViewState *)v3 setStyle:v4];

  v5 = [UIKeyboardCandidateViewStyle disambiguationStyleForDarkKeyboard:[(UIKeyboardCandidateViewConfiguration *)self darkKeyboard]];
  [(UIKeyboardCandidateViewState *)v3 setDisambiguationStyle:v5];

  [(UIKeyboardCandidateViewState *)v3 setPrimaryGridRowType:0];
  [(UIKeyboardCandidateViewState *)v3 setHasBackdrop:0];
  [(UIKeyboardCandidateViewConfiguration *)self candidateDefaultFontSize];
  v6 = [(UIKeyboardCandidateViewConfiguration *)self candidateFontWithSize:?];
  v7 = [(UIKeyboardCandidateViewState *)v3 style];
  [v7 setCandidateFont:v6];

  v8 = [(UIKeyboardCandidateViewState *)v3 style];
  v9 = [v8 candidateFont];
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v9, 0.0, 0, 2u, 2u);
  v11 = [(UIKeyboardCandidateViewState *)v3 style];
  [v11 setSupplementalLexiconCandidateFont:CopyWithSymbolicTraits];

  v12 = [(UIKeyboardCandidateViewState *)v3 style];
  [v12 setMaxNumberOfProactiveCells:2];

  return v3;
}

- (id)candidateFontWithSize:(double)a3
{
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 currentInputMode];
  v7 = [v6 primaryLanguage];

  v8 = [(UIKeyboardCandidateViewConfiguration *)self candidateFontWithSize:v7 language:a3];

  return v8;
}

- (id)candidateFontWithSize:(double)a3 language:(id)a4
{
  v5 = UIApp;
  v6 = a4;
  v7 = [v5 preferredContentSizeCategory];
  v8 = 0.0;
  if (([v7 isEqualToString:@"UICTContentSizeCategoryL"] & 1) == 0)
  {
    v8 = 2.0;
    if (([v7 isEqualToString:@"UICTContentSizeCategoryXL"] & 1) == 0)
    {
      v8 = 4.0;
      if (([v7 isEqualToString:@"UICTContentSizeCategoryXXL"] & 1) == 0)
      {
        if (([v7 isEqualToString:@"UICTContentSizeCategoryXXXL"] & 1) != 0 || (v8 = 0.0, _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v7, v9)))
        {
          v8 = 6.0;
        }
      }
    }
  }

  [objc_opt_class() fontSizeMultiplierForCurrentLanguage];
  if (v10 >= 1.0)
  {
    v12 = v8 + a3;
  }

  else
  {
    v11 = v10 * a3;
    v12 = ceilf(v11);
  }

  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, v12, v6);

  return UIFontForLanguage;
}

+ (double)lineHeightMultiplierForCurrentLanguage
{
  v2 = MEMORY[0x1E695DF58];
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 primaryLanguage];
  v6 = [v2 localeWithLocaleIdentifier:v5];

  v7 = [v6 languageCode];
  LOBYTE(v4) = [&unk_1EFE2C190 containsObject:v7];

  if (v4)
  {
    v8 = 1.18;
  }

  else
  {
    v9 = [v6 languageCode];
    v10 = [&unk_1EFE2C1A8 containsObject:v9];

    if (v10)
    {
      v8 = 1.27;
    }

    else
    {
      v8 = 1.0;
    }
  }

  return v8;
}

+ (double)fontSizeMultiplierForCurrentLanguage
{
  v2 = MEMORY[0x1E695DF58];
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 primaryLanguage];
  v6 = [v2 localeWithLocaleIdentifier:v5];

  v7 = [v6 languageCode];
  LODWORD(v4) = [&unk_1EFE2C1C0 containsObject:v7];

  if (v4)
  {
    v8 = 0.9;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (CGSize)preferredInlineFloatingViewSize
{
  v2 = 588.0;
  v3 = 41.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIColor)highlightedBackgroundColor
{
  if ([(UIKeyboardCandidateViewConfiguration *)self darkKeyboard])
  {
    +[UIColor secondarySystemFillColor];
  }

  else
  {
    [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBLightCandidateBarCellPressedBackgroundUseKeyboardBackground")];
  }
  v2 = ;

  return v2;
}

@end