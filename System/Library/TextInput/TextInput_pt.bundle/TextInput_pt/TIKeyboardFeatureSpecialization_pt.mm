@interface TIKeyboardFeatureSpecialization_pt
- (id)nonstopPunctuationCharacters;
@end

@implementation TIKeyboardFeatureSpecialization_pt

- (id)nonstopPunctuationCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_pt;
  v2 = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [v2 stringByAppendingString:@"-"];

  return v3;
}

@end