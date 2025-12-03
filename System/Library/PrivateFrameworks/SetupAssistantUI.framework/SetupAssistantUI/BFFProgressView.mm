@interface BFFProgressView
- (BFFProgressView)init;
@end

@implementation BFFProgressView

- (BFFProgressView)init
{
  v6.receiver = self;
  v6.super_class = BFFProgressView;
  v2 = [(BFFProgressView *)&v6 initWithProgressViewStyle:0];
  if (v2)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(BFFProgressView *)v2 setProgressTintColor:systemBlueColor];

    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.15];
    [(BFFProgressView *)v2 setTrackTintColor:v4];
  }

  return v2;
}

@end