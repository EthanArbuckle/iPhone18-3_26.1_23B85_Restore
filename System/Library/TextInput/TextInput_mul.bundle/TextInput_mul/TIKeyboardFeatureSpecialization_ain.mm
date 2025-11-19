@interface TIKeyboardFeatureSpecialization_ain
- (id)internalStringToExternal:(id)a3;
- (id)wordCharacters;
@end

@implementation TIKeyboardFeatureSpecialization_ain

- (id)internalStringToExternal:(id)a3
{
  v4 = [a3 _stringByReplacingCharacter:32 withCharacter:12288];
  v5 = [v4 _stringByReplacingCharacter:45 withCharacter:12540];

  v8.receiver = self;
  v8.super_class = TIKeyboardFeatureSpecialization_ain;
  v6 = [(TIKeyboardFeatureSpecialization *)&v8 internalStringToExternal:v5];

  return v6;
}

- (id)wordCharacters
{
  v3 = [objc_alloc(MEMORY[0x29EDC70E0]) initWithBaseCharacterSet:10];
  v4 = [(TIKeyboardFeatureSpecialization *)self nonstopPunctuationCharacters];
  [v3 addCharactersInString:v4];

  [v3 removeCharactersInString:@"ー"];

  return v3;
}

@end