@interface TIKeyboardCandidate(UIKeyboardAdditions)
+ (__CFString)imageNameForTextEffectsButton;
+ (id)textEffectsButtonCandidate;
- (BOOL)isReplacement;
- (uint64_t)isSlottedCandidate;
- (void)setHandler:()UIKeyboardAdditions;
@end

@implementation TIKeyboardCandidate(UIKeyboardAdditions)

+ (id)textEffectsButtonCandidate
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  textEffectsButtonLanguageCode = [v2 textEffectsButtonLanguageCode];

  imageNameForTextEffectsButton = [self imageNameForTextEffectsButton];
  v5 = imageNameForTextEffectsButton;
  if (textEffectsButtonLanguageCode)
  {
    v6 = imageNameForTextEffectsButton == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E69D95F0] candidateWithCandidate:&stru_1EFB14550 forInput:&stru_1EFB14550 customInfoType:0x8000];
    v8 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:-1];
    v9 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:20.0];
    v10 = [v8 configurationByApplyingConfiguration:v9];

    v11 = +[UIKeyboard activeKeyboard];
    if ([v11 _lightStyleRenderConfig])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v12];
    v14 = [v10 configurationWithTraitCollection:v13];

    v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:textEffectsButtonLanguageCode];
    v16 = [v14 configurationWithLocale:v15];

    v17 = [UIImage _systemImageNamed:v5 withConfiguration:v16];
    [v7 setIcon:v17];
  }

  return v7;
}

+ (__CFString)imageNameForTextEffectsButton
{
  v0 = +[UIKeyboardImpl activeInstance];
  traitCollection = [v0 traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {
    v2 = +[UIKeyboardImpl isFloating];

    if (!v2)
    {
      return 0;
    }
  }

  else
  {
  }

  v4 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v4 textInputTraits];
  allowsTextAnimationsType = [textInputTraits allowsTextAnimationsType];

  if (allowsTextAnimationsType == 2)
  {
    return @"character.motion";
  }

  else
  {
    return 0;
  }
}

- (void)setHandler:()UIKeyboardAdditions
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, &kKeyboardCandidateHandlerKey, v4, 1);
}

- (uint64_t)isSlottedCandidate
{
  if ([self isSecureContentCandidate])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isReplacement
{
  input = [self input];
  v2 = [input length] != 0;

  return v2;
}

@end