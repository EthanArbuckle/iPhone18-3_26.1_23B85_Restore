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
  v3 = [v2 textEffectsButtonLanguageCode];

  v4 = [a1 imageNameForTextEffectsButton];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
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

    v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v3];
    v16 = [v14 configurationWithLocale:v15];

    v17 = [UIImage _systemImageNamed:v5 withConfiguration:v16];
    [v7 setIcon:v17];
  }

  return v7;
}

+ (__CFString)imageNameForTextEffectsButton
{
  v0 = +[UIKeyboardImpl activeInstance];
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom])
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
  v5 = [v4 textInputTraits];
  v6 = [v5 allowsTextAnimationsType];

  if (v6 == 2)
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
  objc_setAssociatedObject(a1, &kKeyboardCandidateHandlerKey, v4, 1);
}

- (uint64_t)isSlottedCandidate
{
  if ([a1 isSecureContentCandidate])
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
  v1 = [a1 input];
  v2 = [v1 length] != 0;

  return v2;
}

@end