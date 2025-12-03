@interface TIKeyboardFeatureSpecialization_ta
- (void)specializeInputManager:(void *)manager forLayoutState:(id)state;
@end

@implementation TIKeyboardFeatureSpecialization_ta

- (void)specializeInputManager:(void *)manager forLayoutState:(id)state
{
  softwareLayout = [state softwareLayout];
  -[TIKeyboardFeatureSpecialization_ta setQwertyLayout:](self, "setQwertyLayout:", [softwareLayout isEqualToString:@"QWERTY-Tamil"]);

  [(TIKeyboardFeatureSpecialization *)self inputMode];
  [objc_claimAutoreleasedReturnValue() locale];
  objc_claimAutoreleasedReturnValue();
  [(TIKeyboardFeatureSpecialization_ta *)self isQwertyLayout];
  operator new();
}

@end