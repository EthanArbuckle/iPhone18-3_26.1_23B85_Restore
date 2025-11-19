@interface DBSFontSizeSliderCell
- (id)newControl;
- (void)layoutSubviews;
@end

@implementation DBSFontSizeSliderCell

- (id)newControl
{
  v2 = objc_alloc(MEMORY[0x277D3FAC0]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = [MEMORY[0x277D3FA48] appearance];
  v5 = [v4 altTextColor];
  if (v5)
  {
    v6 = [MEMORY[0x277D3FA48] appearance];
    v7 = [v6 altTextColor];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.596078431 alpha:1.0];
  }

  [v3 setMinimumTrackTintColor:v7];
  [v3 setMaximumTrackTintColor:v7];

  return v3;
}

- (void)layoutSubviews
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:22.0];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"textformat.size.smaller" withConfiguration:v3];
  v5 = [MEMORY[0x277D75348] systemGrayColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"textformat.size.larger" withConfiguration:v3];
  v8 = [MEMORY[0x277D75348] systemGrayColor];
  v9 = [v7 imageWithTintColor:v8 renderingMode:1];

  v10 = [(PSControlTableCell *)self control];
  [v10 setMinimumValueImage:v6];
  [v10 setMaximumValueImage:v9];
  v11.receiver = self;
  v11.super_class = DBSFontSizeSliderCell;
  [(PSTableCell *)&v11 layoutSubviews];
}

@end