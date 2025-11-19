@interface TILanguageModelOfflineLearningHandle
+ (id)handleForInputMode:(id)a3;
+ (id)handleForLanguageLikelihood;
- (TILanguageModelOfflineLearningHandle)initWithInputMode:(id)a3;
@end

@implementation TILanguageModelOfflineLearningHandle

- (TILanguageModelOfflineLearningHandle)initWithInputMode:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TILanguageModelOfflineLearningHandle;
  v5 = [(TILanguageModelOfflineLearningHandle *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    inputMode = v5->_inputMode;
    v5->_inputMode = v6;
  }

  return v5;
}

+ (id)handleForLanguageLikelihood
{
  v2 = [[TILanguageModelOfflineLearningHandleLanguageLikelihood alloc] initWithInputMode:0];
  [(TILanguageModelOfflineLearningHandle *)v2 setValid:1];

  return v2;
}

+ (id)handleForInputMode:(id)a3
{
  v3 = a3;
  v4 = [v3 normalizedIdentifier];
  v5 = TICanonicalInputModeName();
  v6 = TIInputManagerClassForInputMode();

  v7 = [v6 offlineLearningHandleForInputMode:v3];

  return v7;
}

@end