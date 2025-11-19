@interface UIColor(PersonaUI)
+ (id)pr_colorNamed:()PersonaUI;
@end

@implementation UIColor(PersonaUI)

+ (id)pr_colorNamed:()PersonaUI
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.PersonaUI"];
  v6 = [MEMORY[0x277D75348] colorNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

@end