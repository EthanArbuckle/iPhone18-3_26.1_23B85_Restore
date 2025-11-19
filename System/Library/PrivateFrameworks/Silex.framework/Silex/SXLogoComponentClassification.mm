@interface SXLogoComponentClassification
- (id)accessibilityContextualLabel;
- (id)accessibilityCustomRotorMembership;
@end

@implementation SXLogoComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Logo" value:&stru_1F532F6C0 table:0];

  return v3;
}

- (id)accessibilityCustomRotorMembership
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[SXAXCustomRotorDefinition imagesRotor];
  v4 = [SXAXCustomRotor rotorWithName:v3];
  v5 = [v2 setWithObject:v4];

  return v5;
}

@end