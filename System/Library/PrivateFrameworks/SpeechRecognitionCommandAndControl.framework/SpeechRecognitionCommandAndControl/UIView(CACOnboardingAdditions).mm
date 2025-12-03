@interface UIView(CACOnboardingAdditions)
- (void)addBottomBorderWithColor:()CACOnboardingAdditions thickness:margins:;
@end

@implementation UIView(CACOnboardingAdditions)

- (void)addBottomBorderWithColor:()CACOnboardingAdditions thickness:margins:
{
  v8 = MEMORY[0x277D75D18];
  v9 = a5;
  v10 = [v8 alloc];
  v15 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v15 setBackgroundColor:v9];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [self addSubview:v15];
  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:a2];
  [v15 addConstraint:v11];

  v12 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  [self addConstraint:v12];

  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:a3];
  [self addConstraint:v13];

  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:a3];
  [self addConstraint:v14];
}

@end