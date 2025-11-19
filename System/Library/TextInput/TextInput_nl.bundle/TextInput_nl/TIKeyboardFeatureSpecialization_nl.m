@interface TIKeyboardFeatureSpecialization_nl
- (void)createInputManager:(id)a3;
@end

@implementation TIKeyboardFeatureSpecialization_nl

- (void)createInputManager:(id)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardFeatureSpecialization_nl;
  [(TIKeyboardQuickTypeSpecialization *)&v8 createInputManager:a3];
  v4 = [(TIKeyboardFeatureSpecialization *)self inputMode];
  v5 = [v4 locale];

  KB::InputManagerSpecialization_nl::create(v5, v6);
}

@end