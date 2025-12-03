@interface WFCircularImageView
- (WFCircularImageView)initWithFrame:(CGRect)frame;
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

  layer = [(WFCircularImageView *)self layer];
  [layer setCornerRadius:v3];

  v6 = 0.0;
  if ([(WFCircularImageView *)self isCircular]&& [(WFCircularImageView *)self hasBorder])
  {
    layer = [MEMORY[0x277D759A0] mainScreen];
    [layer scale];
    v7 = 1;
    v6 = 1.0 / v8;
  }

  else
  {
    v7 = 0;
  }

  layer2 = [(WFCircularImageView *)self layer];
  [layer2 setBorderWidth:v6];

  if (v7)
  {
  }
}

- (WFCircularImageView)initWithFrame:(CGRect)frame
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = WFCircularImageView;
  v3 = [(WFCircularImageView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WFCircularImageView *)v3 setClipsToBounds:1];
    [(WFCircularImageView *)v4 setContentMode:2];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    cGColor = [separatorColor CGColor];
    layer = [(WFCircularImageView *)v4 layer];
    [layer setBorderColor:cGColor];

    v8 = MEMORY[0x277CCAAD0];
    widthAnchor = [(WFCircularImageView *)v4 widthAnchor];
    heightAnchor = [(WFCircularImageView *)v4 heightAnchor];
    v11 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v8 activateConstraints:v12];

    v13 = v4;
  }

  return v4;
}

@end