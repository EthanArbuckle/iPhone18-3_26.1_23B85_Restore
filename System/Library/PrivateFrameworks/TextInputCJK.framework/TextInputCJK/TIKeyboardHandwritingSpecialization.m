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
  v2 = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [v2 stringByAppendingString:@"☻"];

  return v3;
}

- (id)replacementForDoubleSpace
{
  v2 = [(TIKeyboardFeatureSpecialization *)self inputMode];
  v3 = [v2 replacementForDoubleSpace];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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