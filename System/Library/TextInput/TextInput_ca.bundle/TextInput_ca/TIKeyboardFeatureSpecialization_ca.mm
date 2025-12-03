@interface TIKeyboardFeatureSpecialization_ca
- (id)nonstopPunctuationCharacters;
@end

@implementation TIKeyboardFeatureSpecialization_ca

- (id)nonstopPunctuationCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_ca;
  nonstopPunctuationCharacters = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [nonstopPunctuationCharacters stringByAppendingString:@"·"];

  return v3;
}

@end