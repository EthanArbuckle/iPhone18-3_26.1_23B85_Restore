@interface TIKeyboardFeatureSpecialization_es
- (void)createInputManager:(id)manager;
@end

@implementation TIKeyboardFeatureSpecialization_es

- (void)createInputManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = TIKeyboardFeatureSpecialization_es;
  [(TIKeyboardQuickTypeSpecialization *)&v8 createInputManager:manager];
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  locale = [inputMode locale];

  KB::InputManagerSpecialization_es::create(locale, v6);
}

@end