@interface WFCustomSymbolToolbarButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)setSymbolName:(id)name pointSizeToWidthRatio:(double)ratio;
- (void)traitCollectionDidChange:(id)change;
- (void)updateImage;
@end

@implementation WFCustomSymbolToolbarButton

- (void)updateImage
{
  symbolName = [(WFCustomSymbolToolbarButton *)self symbolName];
  if (symbolName)
  {
    v4 = symbolName;
    [(WFCustomSymbolToolbarButton *)self pointSizeToWidthRatio];
    v6 = v5;

    if (v6 != 0.0)
    {
      v11 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
      v7 = MEMORY[0x277D755B8];
      symbolName2 = [(WFCustomSymbolToolbarButton *)self symbolName];
      v9 = [v7 systemImageNamed:symbolName2 withConfiguration:v11];

      [(WFCustomSymbolToolbarButton *)self setImage:v9 forState:0];
      imageView = [(WFCustomSymbolToolbarButton *)self imageView];
      [imageView setContentMode:4];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFCustomSymbolToolbarButton;
  changeCopy = change;
  [(WFCustomSymbolToolbarButton *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(WFCustomSymbolToolbarButton *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(WFCustomSymbolToolbarButton *)self updateImage];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)setSymbolName:(id)name pointSizeToWidthRatio:(double)ratio
{
  [(WFCustomSymbolToolbarButton *)self setSymbolName:name];
  [(WFCustomSymbolToolbarButton *)self setPointSizeToWidthRatio:ratio];

  [(WFCustomSymbolToolbarButton *)self updateImage];
}

@end