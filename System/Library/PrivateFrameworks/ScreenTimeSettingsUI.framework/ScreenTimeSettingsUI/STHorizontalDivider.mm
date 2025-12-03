@interface STHorizontalDivider
- (STHorizontalDivider)initWithTintColor:(id)color;
- (UIImage)horizontalLineImage;
@end

@implementation STHorizontalDivider

- (STHorizontalDivider)initWithTintColor:(id)color
{
  v42[6] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = STHorizontalDivider;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  colorCopy = color;
  v8 = [(STHorizontalDivider *)&v41 initWithFrame:v3, v4, v5, v6];
  v9 = objc_alloc(MEMORY[0x277D755E8]);
  horizontalLineImage = [(STHorizontalDivider *)v8 horizontalLineImage];
  v11 = [v9 initWithImage:horizontalLineImage];
  horizontalLine = v8->_horizontalLine;
  v8->_horizontalLine = v11;

  [(UIImageView *)v8->_horizontalLine setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v8->_horizontalLine setTintColor:colorCopy];

  trailingAnchor = [(UIImageView *)v8->_horizontalLine trailingAnchor];
  horizontalLineTrailingAnchor = v8->_horizontalLineTrailingAnchor;
  v8->_horizontalLineTrailingAnchor = trailingAnchor;

  [(STHorizontalDivider *)v8 addSubview:v8->_horizontalLine];
  v15 = objc_opt_new();
  label = v8->_label;
  v8->_label = v15;

  [(UILabel *)v8->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)v8->_label setFont:v17];

  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(UILabel *)v8->_label setTextColor:tertiaryLabelColor];

  LODWORD(v19) = 1144750080;
  [(UILabel *)v8->_label setContentHuggingPriority:0 forAxis:v19];
  LODWORD(v20) = 1144766464;
  [(UILabel *)v8->_label setContentCompressionResistancePriority:0 forAxis:v20];
  [(STHorizontalDivider *)v8 addSubview:v8->_label];
  v33 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIImageView *)v8->_horizontalLine leadingAnchor];
  leadingAnchor2 = [(STHorizontalDivider *)v8 leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[0] = v38;
  centerYAnchor = [(UIImageView *)v8->_horizontalLine centerYAnchor];
  centerYAnchor2 = [(STHorizontalDivider *)v8 centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v42[1] = v35;
  topAnchor = [(UILabel *)v8->_label topAnchor];
  topAnchor2 = [(STHorizontalDivider *)v8 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[2] = v31;
  leadingAnchor3 = [(UILabel *)v8->_label leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:v8->_horizontalLineTrailingAnchor constant:4.0];
  v42[3] = v22;
  bottomAnchor = [(UILabel *)v8->_label bottomAnchor];
  bottomAnchor2 = [(STHorizontalDivider *)v8 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[4] = v25;
  trailingAnchor2 = [(UILabel *)v8->_label trailingAnchor];
  trailingAnchor3 = [(STHorizontalDivider *)v8 trailingAnchor];
  v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v42[5] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:6];
  [v33 activateConstraints:v29];

  return v8;
}

- (UIImage)horizontalLineImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__STHorizontalDivider_horizontalLineImage__block_invoke;
  block[3] = &unk_279B7C998;
  block[4] = self;
  if (horizontalLineImage_onceToken != -1)
  {
    dispatch_once(&horizontalLineImage_onceToken, block);
  }

  return horizontalLineImage_horizontalLineImage;
}

void __42__STHorizontalDivider_horizontalLineImage__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  [v1 displayScale];
  v3 = 1.0 / v2;

  v4 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v3, v3}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__STHorizontalDivider_horizontalLineImage__block_invoke_2;
  v11[3] = &__block_descriptor_40_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v11[4] = v3;
  v5 = [v4 imageWithActions:v11];
  v6 = horizontalLineImage_horizontalLineImage;
  horizontalLineImage_horizontalLineImage = v5;

  v7 = [horizontalLineImage_horizontalLineImage resizableImageWithCapInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v8 = horizontalLineImage_horizontalLineImage;
  horizontalLineImage_horizontalLineImage = v7;

  v9 = [horizontalLineImage_horizontalLineImage imageWithRenderingMode:2];
  v10 = horizontalLineImage_horizontalLineImage;
  horizontalLineImage_horizontalLineImage = v9;
}

void __42__STHorizontalDivider_horizontalLineImage__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = *(a1 + 32);
  v5 = 0;
  v6 = 0;
  v7 = v4;

  CGContextFillRect(v3, *&v5);
}

@end