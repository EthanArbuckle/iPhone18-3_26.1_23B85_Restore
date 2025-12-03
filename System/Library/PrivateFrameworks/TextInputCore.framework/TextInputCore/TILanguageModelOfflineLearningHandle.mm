@interface TILanguageModelOfflineLearningHandle
+ (id)handleForInputMode:(id)mode;
+ (id)handleForLanguageLikelihood;
- (TILanguageModelOfflineLearningHandle)initWithInputMode:(id)mode;
@end

@implementation TILanguageModelOfflineLearningHandle

- (TILanguageModelOfflineLearningHandle)initWithInputMode:(id)mode
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = TILanguageModelOfflineLearningHandle;
  v5 = [(TILanguageModelOfflineLearningHandle *)&v9 init];
  if (v5)
  {
    v6 = [modeCopy copy];
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

+ (id)handleForInputMode:(id)mode
{
  modeCopy = mode;
  normalizedIdentifier = [modeCopy normalizedIdentifier];
  v5 = TICanonicalInputModeName();
  v6 = TIInputManagerClassForInputMode();

  v7 = [v6 offlineLearningHandleForInputMode:modeCopy];

  return v7;
}

@end