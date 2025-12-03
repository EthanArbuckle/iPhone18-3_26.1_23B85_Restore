@interface PNPStackedPillView
- (CGSize)intrinsicContentSize;
- (PNPStackedPillView)initWithFrame:(CGRect)frame topString:(id)string bottomString:(id)bottomString;
- (void)_configureConstraints;
- (void)layoutSubviews;
- (void)setDeviceState:(id)state;
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

- (void)setDeviceState:(id)state
{
  objc_storeStrong(&self->_deviceState, state);

  [(PNPStackedPillView *)self setNeedsLayout];
}

- (PNPStackedPillView)initWithFrame:(CGRect)frame topString:(id)string bottomString:(id)bottomString
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  bottomStringCopy = bottomString;
  v28.receiver = self;
  v28.super_class = PNPStackedPillView;
  height = [(PNPStackedPillView *)&v28 initWithFrame:x, y, width, height];
  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  topLabel = height->_topLabel;
  height->_topLabel = v14;

  v16 = objc_alloc_init(MEMORY[0x277D756B8]);
  bottomLabel = height->_bottomLabel;
  height->_bottomLabel = v16;

  v18 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentAreaView = height->_contentAreaView;
  height->_contentAreaView = v18;

  v20 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D743F8]];
  [(UILabel *)height->_topLabel setFont:v20];
  v21 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74410]];
  [(UILabel *)height->_bottomLabel setFont:v21];
  [(UILabel *)height->_topLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)height->_contentAreaView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)height->_bottomLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  defaultBottomLabelColor = [MEMORY[0x277D75348] defaultBottomLabelColor];
  bottomLabelColor = height->_bottomLabelColor;
  height->_bottomLabelColor = defaultBottomLabelColor;

  [(PNPStackedPillView *)height addSubview:height->_contentAreaView];
  [(PNPStackedPillView *)height addSubview:height->_topLabel];
  [(PNPStackedPillView *)height addSubview:height->_bottomLabel];
  topLabelString = height->_topLabelString;
  height->_topLabelString = stringCopy;
  v25 = stringCopy;

  bottomLabelString = height->_bottomLabelString;
  height->_bottomLabelString = bottomStringCopy;

  [(PNPStackedPillView *)height _configureConstraints];
  if (_UISolariumEnabled())
  {
    [(UIView *)height ppuiSetGlassBackground];
    [(UIView *)height ppuiSetCapsuleCornerMaskingConfiguration];
  }

  return height;
}

- (void)_configureConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  leadingAnchor = [(UIView *)self->_contentAreaView leadingAnchor];
  leadingAnchor2 = [(PNPStackedPillView *)self leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  [array addObject:v5];

  trailingAnchor = [(UIView *)self->_contentAreaView trailingAnchor];
  trailingAnchor2 = [(PNPStackedPillView *)self trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  [array addObject:v8];

  centerYAnchor = [(UIView *)self->_contentAreaView centerYAnchor];
  centerYAnchor2 = [(PNPStackedPillView *)self centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v11];

  leadingAnchor3 = [(UILabel *)self->_topLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_contentAreaView leadingAnchor];
  v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v14];

  trailingAnchor3 = [(UILabel *)self->_topLabel trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_contentAreaView trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v17];

  topAnchor = [(UILabel *)self->_topLabel topAnchor];
  topAnchor2 = [(UIView *)self->_contentAreaView topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v20];

  lastBaselineAnchor = [(UILabel *)self->_bottomLabel lastBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_topLabel lastBaselineAnchor];
  v23 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:16.0];
  [array addObject:v23];

  bottomAnchor = [(UILabel *)self->_bottomLabel bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_contentAreaView bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v26];

  centerXAnchor = [(UILabel *)self->_bottomLabel centerXAnchor];
  centerXAnchor2 = [(UILabel *)self->_topLabel centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v29];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

@end