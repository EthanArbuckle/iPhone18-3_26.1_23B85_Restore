@interface SXHeading3ComponentClassification
- (id)accessibilityContextualLabel;
- (id)accessibilityCustomRotorMembership;
@end

@implementation SXHeading3ComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1F538A3D0 numberStyle:0];
  v3 = SXBundle();
  v4 = [v3 localizedStringForKey:@"Heading level %@" value:&stru_1F532F6C0 table:0];

  v5 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v4, v2];

  return v5;
}

- (id)accessibilityCustomRotorMembership
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[SXAXCustomRotorDefinition headingsRotor];
  v4 = [SXAXCustomRotor rotorWithName:v3];
  v5 = [v2 setWithObject:v4];

  return v5;
}

@end