@interface UIButton(TSDUIButton)
+ (void)tsdPlatformButtonWithFrame:()TSDUIButton;
- (uint64_t)setAlternateImageNamed:()TSDUIButton inBundle:;
- (uint64_t)setImageNamed:()TSDUIButton inBundle:;
@end

@implementation UIButton(TSDUIButton)

+ (void)tsdPlatformButtonWithFrame:()TSDUIButton
{
  v8 = [MEMORY[0x277D75220] buttonWithType:0];
  [v8 setFrame:{self, a2, a3, a4}];
  return v8;
}

- (uint64_t)setImageNamed:()TSDUIButton inBundle:
{
  v5 = [MEMORY[0x277D755B8] imageNamed:a3 inBundle:a4 compatibleWithTraitCollection:0];
  [self setImage:v5 forState:0];

  return [self setImage:v5 forState:2];
}

- (uint64_t)setAlternateImageNamed:()TSDUIButton inBundle:
{
  v5 = [MEMORY[0x277D755B8] imageNamed:a3 inBundle:a4 compatibleWithTraitCollection:0];

  return [self setImage:v5 forState:1];
}

@end