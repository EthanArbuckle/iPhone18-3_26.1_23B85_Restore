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
    v4 = [(NCDigestPlatterBackgroundView *)v3 layer];
    [v4 setGroupName:@"NCDigestPlatterBackgroundView"];

    [(NCDigestPlatterBackgroundView *)v3 _setupBackground];
  }

  return v3;
}

- (void)_setupBackground
{
  v3 = [(NCDigestPlatterBackgroundView *)self layer];
  v4 = [MEMORY[0x277D75348] quaternarySystemFillColor];
  [v3 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(NCDigestPlatterBackgroundView *)self traitCollection];
  if ([v5 userInterfaceStyle] == 1)
  {
    v6 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    v10 = [v6 colorWithAlphaComponent:0.75];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] quaternaryLabelColor];
  }

  v7 = [(NCDigestPlatterBackgroundView *)self layer];
  [v7 setBorderWidth:1.2];

  v8 = [(NCDigestPlatterBackgroundView *)self layer];
  v9 = v10;
  [v8 setBorderColor:{objc_msgSend(v10, "CGColor")}];
}

@end