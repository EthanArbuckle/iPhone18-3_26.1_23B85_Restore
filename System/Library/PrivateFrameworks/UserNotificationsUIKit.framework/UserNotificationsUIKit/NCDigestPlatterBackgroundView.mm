@interface NCDigestPlatterBackgroundView
- (NCDigestPlatterBackgroundView)init;
- (void)_setupBackground;
@end

@implementation NCDigestPlatterBackgroundView

- (NCDigestPlatterBackgroundView)init
{
  v6.receiver = self;
  v6.super_class = NCDigestPlatterBackgroundView;
  v2 = [(NCDigestPlatterBackgroundView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(NCDigestPlatterBackgroundView *)v2 setUserInteractionEnabled:0];
    layer = [(NCDigestPlatterBackgroundView *)v3 layer];
    [layer setGroupName:@"NCDigestPlatterBackgroundView"];

    [(NCDigestPlatterBackgroundView *)v3 _setupBackground];
  }

  return v3;
}

- (void)_setupBackground
{
  layer = [(NCDigestPlatterBackgroundView *)self layer];
  quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
  [layer setBackgroundColor:{objc_msgSend(quaternarySystemFillColor, "CGColor")}];

  traitCollection = [(NCDigestPlatterBackgroundView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    quaternaryLabelColor = [systemGroupedBackgroundColor colorWithAlphaComponent:0.75];
  }

  else
  {
    quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
  }

  layer2 = [(NCDigestPlatterBackgroundView *)self layer];
  [layer2 setBorderWidth:1.2];

  layer3 = [(NCDigestPlatterBackgroundView *)self layer];
  v9 = quaternaryLabelColor;
  [layer3 setBorderColor:{objc_msgSend(quaternaryLabelColor, "CGColor")}];
}

@end