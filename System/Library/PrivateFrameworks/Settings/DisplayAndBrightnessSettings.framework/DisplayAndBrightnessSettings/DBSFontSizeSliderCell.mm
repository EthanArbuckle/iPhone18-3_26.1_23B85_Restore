@interface DBSFontSizeSliderCell
- (id)newControl;
- (void)layoutSubviews;
@end

@implementation DBSFontSizeSliderCell

- (id)newControl
{
  v2 = objc_alloc(MEMORY[0x277D3FAC0]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  appearance = [MEMORY[0x277D3FA48] appearance];
  altTextColor = [appearance altTextColor];
  if (altTextColor)
  {
    appearance2 = [MEMORY[0x277D3FA48] appearance];
    altTextColor2 = [appearance2 altTextColor];
  }

  else
  {
    altTextColor2 = [MEMORY[0x277D75348] colorWithWhite:0.596078431 alpha:1.0];
  }

  [v3 setMinimumTrackTintColor:altTextColor2];
  [v3 setMaximumTrackTintColor:altTextColor2];

  return v3;
}

- (void)layoutSubviews
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:22.0];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"textformat.size.smaller" withConfiguration:v3];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v6 = [v4 imageWithTintColor:systemGrayColor renderingMode:1];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"textformat.size.larger" withConfiguration:v3];
  systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
  v9 = [v7 imageWithTintColor:systemGrayColor2 renderingMode:1];

  control = [(PSControlTableCell *)self control];
  [control setMinimumValueImage:v6];
  [control setMaximumValueImage:v9];
  v11.receiver = self;
  v11.super_class = DBSFontSizeSliderCell;
  [(PSTableCell *)&v11 layoutSubviews];
}

@end