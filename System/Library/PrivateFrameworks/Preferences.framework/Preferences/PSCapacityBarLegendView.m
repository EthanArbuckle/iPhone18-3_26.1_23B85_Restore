@interface PSCapacityBarLegendView
- (PSCapacityBarLegendView)initWithCapacityBarCategory:(id)a3;
- (void)createConstraints;
- (void)setText:(id)a3;
@end

@implementation PSCapacityBarLegendView

- (PSCapacityBarLegendView)initWithCapacityBarCategory:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PSCapacityBarLegendView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(PSCapacityBarLegendView *)&v26 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(PSCapacityBarLegendView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [PSLegendColorView alloc];
    if (v4)
    {
      [v4 color];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemMidGrayColor];
    }
    v12 = ;
    v13 = [(PSLegendColorView *)v11 initWithColor:v12];
    legendColor = v10->_legendColor;
    v10->_legendColor = v13;

    [(PSLegendColorView *)v10->_legendColor setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1144750080;
    [(PSLegendColorView *)v10->_legendColor setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1144750080;
    [(PSLegendColorView *)v10->_legendColor setContentCompressionResistancePriority:1 forAxis:v16];
    [(PSCapacityBarLegendView *)v10 addSubview:v10->_legendColor];
    v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    legendLabel = v10->_legendLabel;
    v10->_legendLabel = v17;

    [(UILabel *)v10->_legendLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_legendLabel setLineBreakMode:4];
    [(UILabel *)v10->_legendLabel setNumberOfLines:1];
    if (v4)
    {
      v19 = [v4 title];
      [(UILabel *)v10->_legendLabel setText:v19];
    }

    else
    {
      [(UILabel *)v10->_legendLabel setText:@"????"];
    }

    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [(UILabel *)v10->_legendLabel setFont:v20];

    [(UILabel *)v10->_legendLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v21) = 1144750080;
    [(UILabel *)v10->_legendLabel setContentHuggingPriority:0 forAxis:v21];
    LODWORD(v22) = 1144750080;
    [(UILabel *)v10->_legendLabel setContentHuggingPriority:1 forAxis:v22];
    [(PSCapacityBarLegendView *)v10 addSubview:v10->_legendLabel];
    LODWORD(v23) = 1144750080;
    [(PSCapacityBarLegendView *)v10 setContentHuggingPriority:0 forAxis:v23];
    LODWORD(v24) = 1144750080;
    [(PSCapacityBarLegendView *)v10 setContentHuggingPriority:1 forAxis:v24];
    [(PSCapacityBarLegendView *)v10 createConstraints];
    [(PSCapacityBarLegendView *)v10 setNeedsLayout];
    [(PSCapacityBarLegendView *)v10 layoutIfNeeded];
  }

  return v10;
}

- (void)createConstraints
{
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v3 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendLabel attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [v11 addObject:v3];

  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:8 relatedBy:0 toItem:self->_legendLabel attribute:8 multiplier:1.0 constant:0.0];
  [v11 addObject:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendColor attribute:8 relatedBy:0 toItem:self->_legendLabel attribute:8 multiplier:0.5 constant:0.0];
  [v11 addObject:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendColor attribute:7 relatedBy:0 toItem:self->_legendColor attribute:8 multiplier:1.0 constant:0.0];
  [v11 addObject:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendColor attribute:4 relatedBy:0 toItem:self->_legendLabel attribute:12 multiplier:1.0 constant:0.0];
  [v11 addObject:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendColor attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [v11 addObject:v8];

  v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_legendLabel attribute:5 relatedBy:0 toItem:self->_legendColor attribute:6 multiplier:1.0 constant:6.0];
  [v11 addObject:v9];

  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:6 relatedBy:0 toItem:self->_legendLabel attribute:6 multiplier:1.0 constant:0.0];
  [v11 addObject:v10];

  [MEMORY[0x1E696ACD8] activateConstraints:v11];
}

- (void)setText:(id)a3
{
  legendLabel = self->_legendLabel;
  v5 = a3;
  [(UILabel *)legendLabel setText:v5];
  [(PSCapacityBarLegendView *)self setAccessibilityIdentifier:v5];

  [(PSCapacityBarLegendView *)self setNeedsLayout];
}

@end