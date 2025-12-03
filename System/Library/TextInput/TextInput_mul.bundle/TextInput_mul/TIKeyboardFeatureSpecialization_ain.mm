@interface TIKeyboardFeatureSpecialization_ain
- (id)internalStringToExternal:(id)external;
- (id)wordCharacters;
@end

@implementation TIKeyboardFeatureSpecialization_ain

- (id)internalStringToExternal:(id)external
{
  v4 = [external _stringByReplacingCharacter:32 withCharacter:12288];
  v5 = [v4 _stringByReplacingCharacter:45 withCharacter:12540];

  v8.receiver = self;
  v8.super_class = TIKeyboardFeatureSpecialization_ain;
  v6 = [(TIKeyboardFeatureSpecialization *)&v8 internalStringToExternal:v5];

  return v6;
}

- (id)wordCharacters
{
  v3 = [objc_alloc(MEMORY[0x29EDC70E0]) initWithBaseCharacterSet:10];
  nonstopPunctuationCharacters = [(TIKeyboardFeatureSpecialization *)self nonstopPunctuationCharacters];
  [v3 addCharactersInString:nonstopPunctuationCharacters];

  [v3 removeCharactersInString:@"ー"];

  return v3;
}

@end