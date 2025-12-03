@interface TIKeyboardFeatureSpecialization_nl
- (void)createInputManager:(id)manager;
@end

@implementation TIKeyboardFeatureSpecialization_nl

- (void)createInputManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = TIKeyboardFeatureSpecialization_nl;
  [(TIKeyboardQuickTypeSpecialization *)&v8 createInputManager:manager];
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  locale = [inputMode locale];

  KB::InputManagerSpecialization_nl::create(locale, v6);
}

@end