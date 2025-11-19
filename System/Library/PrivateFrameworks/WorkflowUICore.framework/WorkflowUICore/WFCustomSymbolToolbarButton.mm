@interface WFCustomSymbolToolbarButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)setSymbolName:(id)a3 pointSizeToWidthRatio:(double)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateImage;
@end

@implementation WFCustomSymbolToolbarButton

- (void)updateImage
{
  v3 = [(WFCustomSymbolToolbarButton *)self symbolName];
  if (v3)
  {
    v4 = v3;
    [(WFCustomSymbolToolbarButton *)self pointSizeToWidthRatio];
    v6 = v5;

    if (v6 != 0.0)
    {
      v11 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
      v7 = MEMORY[0x277D755B8];
      v8 = [(WFCustomSymbolToolbarButton *)self symbolName];
      v9 = [v7 systemImageNamed:v8 withConfiguration:v11];

      [(WFCustomSymbolToolbarButton *)self setImage:v9 forState:0];
      v10 = [(WFCustomSymbolToolbarButton *)self imageView];
      [v10 setContentMode:4];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFCustomSymbolToolbarButton;
  v4 = a3;
  [(WFCustomSymbolToolbarButton *)&v8 traitCollectionDidChange:v4];
  v5 = [(WFCustomSymbolToolbarButton *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(WFCustomSymbolToolbarButton *)self updateImage];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v6 pointSize];
  v8 = v7;

  [(WFCustomSymbolToolbarButton *)self pointSizeToWidthRatio];
  v10 = fmin(v8, 21.0) * v9;
  v14.receiver = self;
  v14.super_class = WFCustomSymbolToolbarButton;
  [(WFCustomSymbolToolbarButton *)&v14 sizeThatFits:width, height];
  v12 = v11 + 10.0;
  v13 = v10;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setSymbolName:(id)a3 pointSizeToWidthRatio:(double)a4
{
  [(WFCustomSymbolToolbarButton *)self setSymbolName:a3];
  [(WFCustomSymbolToolbarButton *)self setPointSizeToWidthRatio:a4];

  [(WFCustomSymbolToolbarButton *)self updateImage];
}

@end