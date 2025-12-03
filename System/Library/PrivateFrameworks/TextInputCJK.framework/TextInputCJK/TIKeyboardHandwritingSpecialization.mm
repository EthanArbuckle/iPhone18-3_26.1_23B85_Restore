@interface TIKeyboardHandwritingSpecialization
- (id)keyboardBehaviors;
- (id)nonstopPunctuationCharacters;
- (id)replacementForDoubleSpace;
@end

@implementation TIKeyboardHandwritingSpecialization

- (id)nonstopPunctuationCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardHandwritingSpecialization;
  nonstopPunctuationCharacters = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [nonstopPunctuationCharacters stringByAppendingString:@"☻"];

  return v3;
}

- (id)replacementForDoubleSpace
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  replacementForDoubleSpace = [inputMode replacementForDoubleSpace];
  v4 = replacementForDoubleSpace;
  if (replacementForDoubleSpace)
  {
    v5 = replacementForDoubleSpace;
  }

  else
  {
    v5 = @"。";
  }

  v6 = v5;

  return v5;
}

- (id)keyboardBehaviors
{
  v2 = objc_opt_new();

  return v2;
}

@end