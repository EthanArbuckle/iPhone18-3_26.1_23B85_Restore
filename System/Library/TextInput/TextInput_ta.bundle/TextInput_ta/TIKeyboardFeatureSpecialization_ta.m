@interface TIKeyboardFeatureSpecialization_ta
- (void)specializeInputManager:(void *)a3 forLayoutState:(id)a4;
@end

@implementation TIKeyboardFeatureSpecialization_ta

- (void)specializeInputManager:(void *)a3 forLayoutState:(id)a4
{
  v5 = [a4 softwareLayout];
  -[TIKeyboardFeatureSpecialization_ta setQwertyLayout:](self, "setQwertyLayout:", [v5 isEqualToString:@"QWERTY-Tamil"]);

  [(TIKeyboardFeatureSpecialization *)self inputMode];
  [objc_claimAutoreleasedReturnValue() locale];
  objc_claimAutoreleasedReturnValue();
  [(TIKeyboardFeatureSpecialization_ta *)self isQwertyLayout];
  operator new();
}

@end