@interface DBSColorTemperatureSliderTableCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (DBSColorTemperatureSliderTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation DBSColorTemperatureSliderTableCell

- (DBSColorTemperatureSliderTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v28.receiver = self;
  v28.super_class = DBSColorTemperatureSliderTableCell;
  v5 = [(PSControlTableCell *)&v28 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(DBSColorTemperatureSliderTableCell *)v5 textLabel];
    v8 = [v7 font];

    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    coolerLabel = v6->_coolerLabel;
    v6->_coolerLabel = v9;

    [(UILabel *)v6->_coolerLabel setFont:v8];
    v11 = DBS_LocalizedStringForColorTemperature(@"COOLER");
    [(UILabel *)v6->_coolerLabel setText:v11];

    [(UILabel *)v6->_coolerLabel setNumberOfLines:0];
    [(UILabel *)v6->_coolerLabel setLineBreakMode:0];
    v12 = [MEMORY[0x277D3FA48] appearance];
    v13 = [v12 textColor];
    [(UILabel *)v6->_coolerLabel setTextColor:v13];

    v14 = [(DBSColorTemperatureSliderTableCell *)v6 contentView];
    [v14 addSubview:v6->_coolerLabel];

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    warmerLabel = v6->_warmerLabel;
    v6->_warmerLabel = v15;

    [(UILabel *)v6->_warmerLabel setFont:v8];
    v17 = DBS_LocalizedStringForColorTemperature(@"WARMER");
    [(UILabel *)v6->_warmerLabel setText:v17];

    [(UILabel *)v6->_warmerLabel setNumberOfLines:0];
    [(UILabel *)v6->_warmerLabel setLineBreakMode:0];
    v18 = [MEMORY[0x277D3FA48] appearance];
    v19 = [v18 textColor];
    [(UILabel *)v6->_warmerLabel setTextColor:v19];

    v20 = [(DBSColorTemperatureSliderTableCell *)v6 contentView];
    [v20 addSubview:v6->_warmerLabel];

    v27.receiver = v6;
    v27.super_class = DBSColorTemperatureSliderTableCell;
    [(PSTableCell *)&v27 layoutSubviews];
    v21 = [(DBSColorTemperatureSliderTableCell *)v6 textLabel];
    [v21 frame];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(DBSColorTemperatureSliderTableCell *)self layoutSubviews:a3.width];
  v5 = [(PSControlTableCell *)self control];
  [v5 frame];
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
  v4 = [(PSControlTableCell *)self control];
  [v4 frame];
  [v3 setFrame:?];

  v5 = [(DBSColorTemperatureSliderTableCell *)self effectiveUserInterfaceLayoutDirection];
  [(DBSColorTemperatureSliderTableCell *)self bounds];
  Width = CGRectGetWidth(v34);
  PSRoundToPixel();
  v8 = v7;
  if (v5)
  {
    v9 = &OBJC_IVAR___DBSColorTemperatureSliderTableCell__warmerLabel;
  }

  else
  {
    v9 = &OBJC_IVAR___DBSColorTemperatureSliderTableCell__coolerLabel;
  }

  v10 = *(&self->super.super.super.super.super.super.super.isa + *v9);
  if (v5)
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
  v24 = [(PSControlTableCell *)self control];

  [v24 sizeToFit];
  [v24 frame];
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

  [v24 setFrame:{v28, v30 + 10.0, v26, 31.0}];
}

@end