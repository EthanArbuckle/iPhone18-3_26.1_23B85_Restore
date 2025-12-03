@interface DBSColorTemperatureSliderTableCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (DBSColorTemperatureSliderTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation DBSColorTemperatureSliderTableCell

- (DBSColorTemperatureSliderTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v28.receiver = self;
  v28.super_class = DBSColorTemperatureSliderTableCell;
  v5 = [(PSControlTableCell *)&v28 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    textLabel = [(DBSColorTemperatureSliderTableCell *)v5 textLabel];
    font = [textLabel font];

    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    coolerLabel = v6->_coolerLabel;
    v6->_coolerLabel = v9;

    [(UILabel *)v6->_coolerLabel setFont:font];
    v11 = DBS_LocalizedStringForColorTemperature(@"COOLER");
    [(UILabel *)v6->_coolerLabel setText:v11];

    [(UILabel *)v6->_coolerLabel setNumberOfLines:0];
    [(UILabel *)v6->_coolerLabel setLineBreakMode:0];
    appearance = [MEMORY[0x277D3FA48] appearance];
    textColor = [appearance textColor];
    [(UILabel *)v6->_coolerLabel setTextColor:textColor];

    contentView = [(DBSColorTemperatureSliderTableCell *)v6 contentView];
    [contentView addSubview:v6->_coolerLabel];

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    warmerLabel = v6->_warmerLabel;
    v6->_warmerLabel = v15;

    [(UILabel *)v6->_warmerLabel setFont:font];
    v17 = DBS_LocalizedStringForColorTemperature(@"WARMER");
    [(UILabel *)v6->_warmerLabel setText:v17];

    [(UILabel *)v6->_warmerLabel setNumberOfLines:0];
    [(UILabel *)v6->_warmerLabel setLineBreakMode:0];
    appearance2 = [MEMORY[0x277D3FA48] appearance];
    textColor2 = [appearance2 textColor];
    [(UILabel *)v6->_warmerLabel setTextColor:textColor2];

    contentView2 = [(DBSColorTemperatureSliderTableCell *)v6 contentView];
    [contentView2 addSubview:v6->_warmerLabel];

    v27.receiver = v6;
    v27.super_class = DBSColorTemperatureSliderTableCell;
    [(PSTableCell *)&v27 layoutSubviews];
    textLabel2 = [(DBSColorTemperatureSliderTableCell *)v6 textLabel];
    [textLabel2 frame];
    v23 = v22;
    v25 = v24;

    if ([(DBSColorTemperatureSliderTableCell *)v6 effectiveUserInterfaceLayoutDirection]== 1)
    {
      [(DBSColorTemperatureSliderTableCell *)v6 bounds];
      v23 = CGRectGetWidth(v29) - v23;
    }

    v6->_horizontalMargin = v23;
    v6->_verticalMargin = v25;
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(DBSColorTemperatureSliderTableCell *)self layoutSubviews:fits.width];
  control = [(PSControlTableCell *)self control];
  [control frame];
  v6 = CGRectGetMaxY(v10) + self->_verticalMargin;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = DBSColorTemperatureSliderTableCell;
  [(PSTableCell *)&v33 layoutSubviews];
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC78]);
  control = [(PSControlTableCell *)self control];
  [control frame];
  [v3 setFrame:?];

  effectiveUserInterfaceLayoutDirection = [(DBSColorTemperatureSliderTableCell *)self effectiveUserInterfaceLayoutDirection];
  [(DBSColorTemperatureSliderTableCell *)self bounds];
  Width = CGRectGetWidth(v34);
  PSRoundToPixel();
  v8 = v7;
  if (effectiveUserInterfaceLayoutDirection)
  {
    v9 = &OBJC_IVAR___DBSColorTemperatureSliderTableCell__warmerLabel;
  }

  else
  {
    v9 = &OBJC_IVAR___DBSColorTemperatureSliderTableCell__coolerLabel;
  }

  v10 = *(&self->super.super.super.super.super.super.super.isa + *v9);
  if (effectiveUserInterfaceLayoutDirection)
  {
    v11 = &OBJC_IVAR___DBSColorTemperatureSliderTableCell__coolerLabel;
  }

  else
  {
    v11 = &OBJC_IVAR___DBSColorTemperatureSliderTableCell__warmerLabel;
  }

  v12 = v10;
  [v12 setTextAlignment:0];
  v13 = *(&self->super.super.super.super.super.super.super.isa + *v11);
  [v13 setTextAlignment:2];
  [v12 frame];
  [v12 sizeThatFits:{v8, 1.79769313e308}];
  v31 = v15;
  v32 = v14;
  horizontalMargin = self->_horizontalMargin;
  verticalMargin = self->_verticalMargin;
  [v12 setFrame:{horizontalMargin, verticalMargin, v14, v15}];
  [v13 frame];
  [v13 sizeThatFits:{v8, 1.79769313e308}];
  v19 = v18;
  v21 = v20;
  v22 = Width - (self->_horizontalMargin + v18);
  v23 = self->_verticalMargin;
  [v13 setFrame:{v22, v23, v18, v20}];
  control2 = [(PSControlTableCell *)self control];

  [control2 sizeToFit];
  [control2 frame];
  PSRoundToPixel();
  v26 = v25;
  PSRoundToPixel();
  v28 = v27;
  v35.origin.x = horizontalMargin;
  v35.origin.y = verticalMargin;
  v35.size.height = v31;
  v35.size.width = v32;
  MaxY = CGRectGetMaxY(v35);
  v36.origin.x = v22;
  v36.origin.y = v23;
  v36.size.width = v19;
  v36.size.height = v21;
  v30 = CGRectGetMaxY(v36);
  if (MaxY >= v30)
  {
    v30 = MaxY;
  }

  [control2 setFrame:{v28, v30 + 10.0, v26, 31.0}];
}

@end