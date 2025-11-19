@interface TIKeyboardFeatureSpecialization_es
- (void)createInputManager:(id)a3;
@end

@implementation TIKeyboardFeatureSpecialization_es

- (void)createInputManager:(id)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardFeatureSpecialization_es;
  [(TIKeyboardQuickTypeSpecialization *)&v8 createInputManager:a3];
  v4 = [(TIKeyboardFeatureSpecialization *)self inputMode];
  v5 = [v4 locale];

  KB::InputManagerSpecialization_es::create(v5, v6);
}

@end