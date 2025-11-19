@interface WFCircularImageView
- (WFCircularImageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation WFCircularImageView

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = WFCircularImageView;
  [(WFCircularImageView *)&v10 layoutSubviews];
  v3 = 5.0;
  if ([(WFCircularImageView *)self isCircular])
  {
    [(WFCircularImageView *)self bounds];
    v3 = v4 * 0.5;
  }

  v5 = [(WFCircularImageView *)self layer];
  [v5 setCornerRadius:v3];

  v6 = 0.0;
  if ([(WFCircularImageView *)self isCircular]&& [(WFCircularImageView *)self hasBorder])
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
    v7 = 1;
    v6 = 1.0 / v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = [(WFCircularImageView *)self layer];
  [v9 setBorderWidth:v6];

  if (v7)
  {
  }
}

- (WFCircularImageView)initWithFrame:(CGRect)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = WFCircularImageView;
  v3 = [(WFCircularImageView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(WFCircularImageView *)v3 setClipsToBounds:1];
    [(WFCircularImageView *)v4 setContentMode:2];
    v5 = [MEMORY[0x277D75348] separatorColor];
    v6 = [v5 CGColor];
    v7 = [(WFCircularImageView *)v4 layer];
    [v7 setBorderColor:v6];

    v8 = MEMORY[0x277CCAAD0];
    v9 = [(WFCircularImageView *)v4 widthAnchor];
    v10 = [(WFCircularImageView *)v4 heightAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v8 activateConstraints:v12];

    v13 = v4;
  }

  return v4;
}

@end