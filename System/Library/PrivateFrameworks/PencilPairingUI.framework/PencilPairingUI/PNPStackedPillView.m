@interface PNPStackedPillView
- (CGSize)intrinsicContentSize;
- (PNPStackedPillView)initWithFrame:(CGRect)a3 topString:(id)a4 bottomString:(id)a5;
- (void)_configureConstraints;
- (void)layoutSubviews;
- (void)setDeviceState:(id)a3;
@end

@implementation PNPStackedPillView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PNPStackedPillView;
  [(PNPStackedPillView *)&v3 layoutSubviews];
  [(UILabel *)self->_topLabel setText:self->_topLabelString];
  [(UILabel *)self->_topLabel setTextAlignment:1];
  [(UILabel *)self->_bottomLabel setText:self->_bottomLabelString];
  [(UILabel *)self->_bottomLabel setTextAlignment:1];
  [(UILabel *)self->_bottomLabel setTextColor:self->_bottomLabelColor];
}

- (CGSize)intrinsicContentSize
{
  topLabel = self->_topLabel;
  [(UILabel *)topLabel frame];
  [(UILabel *)topLabel sizeThatFits:v4, 1.79769313e308];
  v6 = v5;
  bottomLabel = self->_bottomLabel;
  [(UILabel *)bottomLabel frame];
  [(UILabel *)bottomLabel sizeThatFits:v8, 1.79769313e308];
  v10 = fmax(fmax(v6, v9) + 60.0, 188.0);
  v11 = 56.0;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setDeviceState:(id)a3
{
  objc_storeStrong(&self->_deviceState, a3);

  [(PNPStackedPillView *)self setNeedsLayout];
}

- (PNPStackedPillView)initWithFrame:(CGRect)a3 topString:(id)a4 bottomString:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v28.receiver = self;
  v28.super_class = PNPStackedPillView;
  v13 = [(PNPStackedPillView *)&v28 initWithFrame:x, y, width, height];
  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  topLabel = v13->_topLabel;
  v13->_topLabel = v14;

  v16 = objc_alloc_init(MEMORY[0x277D756B8]);
  bottomLabel = v13->_bottomLabel;
  v13->_bottomLabel = v16;

  v18 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentAreaView = v13->_contentAreaView;
  v13->_contentAreaView = v18;

  v20 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D743F8]];
  [(UILabel *)v13->_topLabel setFont:v20];
  v21 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74410]];
  [(UILabel *)v13->_bottomLabel setFont:v21];
  [(UILabel *)v13->_topLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v13->_contentAreaView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v13->_bottomLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [MEMORY[0x277D75348] defaultBottomLabelColor];
  bottomLabelColor = v13->_bottomLabelColor;
  v13->_bottomLabelColor = v22;

  [(PNPStackedPillView *)v13 addSubview:v13->_contentAreaView];
  [(PNPStackedPillView *)v13 addSubview:v13->_topLabel];
  [(PNPStackedPillView *)v13 addSubview:v13->_bottomLabel];
  topLabelString = v13->_topLabelString;
  v13->_topLabelString = v11;
  v25 = v11;

  bottomLabelString = v13->_bottomLabelString;
  v13->_bottomLabelString = v12;

  [(PNPStackedPillView *)v13 _configureConstraints];
  if (_UISolariumEnabled())
  {
    [(UIView *)v13 ppuiSetGlassBackground];
    [(UIView *)v13 ppuiSetCapsuleCornerMaskingConfiguration];
  }

  return v13;
}

- (void)_configureConstraints
{
  v30 = [MEMORY[0x277CBEB18] array];
  v3 = [(UIView *)self->_contentAreaView leadingAnchor];
  v4 = [(PNPStackedPillView *)self leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:30.0];
  [v30 addObject:v5];

  v6 = [(UIView *)self->_contentAreaView trailingAnchor];
  v7 = [(PNPStackedPillView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-30.0];
  [v30 addObject:v8];

  v9 = [(UIView *)self->_contentAreaView centerYAnchor];
  v10 = [(PNPStackedPillView *)self centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v30 addObject:v11];

  v12 = [(UILabel *)self->_topLabel leadingAnchor];
  v13 = [(UIView *)self->_contentAreaView leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v30 addObject:v14];

  v15 = [(UILabel *)self->_topLabel trailingAnchor];
  v16 = [(UIView *)self->_contentAreaView trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v30 addObject:v17];

  v18 = [(UILabel *)self->_topLabel topAnchor];
  v19 = [(UIView *)self->_contentAreaView topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v30 addObject:v20];

  v21 = [(UILabel *)self->_bottomLabel lastBaselineAnchor];
  v22 = [(UILabel *)self->_topLabel lastBaselineAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:16.0];
  [v30 addObject:v23];

  v24 = [(UILabel *)self->_bottomLabel bottomAnchor];
  v25 = [(UIView *)self->_contentAreaView bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v30 addObject:v26];

  v27 = [(UILabel *)self->_bottomLabel centerXAnchor];
  v28 = [(UILabel *)self->_topLabel centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v30 addObject:v29];

  [MEMORY[0x277CCAAD0] activateConstraints:v30];
}

@end