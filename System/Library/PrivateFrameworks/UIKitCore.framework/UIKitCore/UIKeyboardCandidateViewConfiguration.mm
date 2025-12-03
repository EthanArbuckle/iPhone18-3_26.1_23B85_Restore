@interface UIKeyboardCandidateViewConfiguration
+ (double)fontSizeMultiplierForCurrentLanguage;
+ (double)lineHeightMultiplierForCurrentLanguage;
+ (id)configuration;
- (CGSize)preferredInlineFloatingViewSize;
- (UIColor)highlightedBackgroundColor;
- (id)candidateFontWithSize:(double)size;
- (id)candidateFontWithSize:(double)size language:(id)language;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfiguration

+ (id)configuration
{
  v2 = objc_alloc_init(self);

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
  style = [(UIKeyboardCandidateViewState *)v3 style];
  [style setCandidateFont:v6];

  style2 = [(UIKeyboardCandidateViewState *)v3 style];
  candidateFont = [style2 candidateFont];
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(candidateFont, 0.0, 0, 2u, 2u);
  style3 = [(UIKeyboardCandidateViewState *)v3 style];
  [style3 setSupplementalLexiconCandidateFont:CopyWithSymbolicTraits];

  style4 = [(UIKeyboardCandidateViewState *)v3 style];
  [style4 setMaxNumberOfProactiveCells:2];

  return v3;
}

- (id)candidateFontWithSize:(double)size
{
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v5 currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];

  v8 = [(UIKeyboardCandidateViewConfiguration *)self candidateFontWithSize:primaryLanguage language:size];

  return v8;
}

- (id)candidateFontWithSize:(double)size language:(id)language
{
  v5 = UIApp;
  languageCopy = language;
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  v8 = 0.0;
  if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryL"] & 1) == 0)
  {
    v8 = 2.0;
    if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXL"] & 1) == 0)
    {
      v8 = 4.0;
      if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXXL"] & 1) == 0)
      {
        if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXXXL"] & 1) != 0 || (v8 = 0.0, _UIContentSizeCategoryIsAccessibilityContentSizeCategory(preferredContentSizeCategory, v9)))
        {
          v8 = 6.0;
        }
      }
    }
  }

  [objc_opt_class() fontSizeMultiplierForCurrentLanguage];
  if (v10 >= 1.0)
  {
    v12 = v8 + size;
  }

  else
  {
    v11 = v10 * size;
    v12 = ceilf(v11);
  }

  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, v12, languageCopy);

  return UIFontForLanguage;
}

+ (double)lineHeightMultiplierForCurrentLanguage
{
  v2 = MEMORY[0x1E695DF58];
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v3 currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];
  v6 = [v2 localeWithLocaleIdentifier:primaryLanguage];

  languageCode = [v6 languageCode];
  LOBYTE(currentInputMode) = [&unk_1EFE2C190 containsObject:languageCode];

  if (currentInputMode)
  {
    v8 = 1.18;
  }

  else
  {
    languageCode2 = [v6 languageCode];
    v10 = [&unk_1EFE2C1A8 containsObject:languageCode2];

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
  currentInputMode = [v3 currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];
  v6 = [v2 localeWithLocaleIdentifier:primaryLanguage];

  languageCode = [v6 languageCode];
  LODWORD(currentInputMode) = [&unk_1EFE2C1C0 containsObject:languageCode];

  if (currentInputMode)
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