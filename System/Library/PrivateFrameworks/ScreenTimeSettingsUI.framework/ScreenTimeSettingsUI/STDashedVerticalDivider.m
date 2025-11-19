@interface STDashedVerticalDivider
- (STDashedVerticalDivider)initWithTintColor:(id)a3;
- (UIImage)dashedLineImage;
- (void)setLabelText:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation STDashedVerticalDivider

- (STDashedVerticalDivider)initWithTintColor:(id)a3
{
  v60[8] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = STDashedVerticalDivider;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = a3;
  v8 = [(STDashedVerticalDivider *)&v59 initWithFrame:v3, v4, v5, v6];
  v9 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = [(STDashedVerticalDivider *)v8 dashedLineImage];
  v11 = [v9 initWithImage:v10];
  dashedLine = v8->_dashedLine;
  v8->_dashedLine = v11;

  [(UIImageView *)v8->_dashedLine setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v8->_dashedLine setTintColor:v7];

  [(STDashedVerticalDivider *)v8 addSubview:v8->_dashedLine];
  v13 = objc_opt_new();
  label = v8->_label;
  v8->_label = v13;

  [(UILabel *)v8->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)v8->_label setFont:v15];

  v16 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(UILabel *)v8->_label setTextColor:v16];

  LODWORD(v17) = 1144750080;
  [(UILabel *)v8->_label setContentCompressionResistancePriority:0 forAxis:v17];
  LODWORD(v18) = 1144750080;
  [(UILabel *)v8->_label setContentHuggingPriority:1 forAxis:v18];
  LODWORD(v19) = 1144766464;
  [(UILabel *)v8->_label setContentCompressionResistancePriority:1 forAxis:v19];
  [(STDashedVerticalDivider *)v8 addSubview:v8->_label];
  v20 = [(UILabel *)v8->_label bottomAnchor];
  v21 = [(UIImageView *)v8->_dashedLine bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(UILabel *)v8->_label trailingAnchor];
  v24 = [(STDashedVerticalDivider *)v8 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [(UILabel *)v8->_label topAnchor];
  labelTopAnchor = v8->_labelTopAnchor;
  v8->_labelTopAnchor = v26;

  v28 = [(UIImageView *)v8->_dashedLine centerXAnchor];
  dashedLineCenterXAnchor = v8->_dashedLineCenterXAnchor;
  v8->_dashedLineCenterXAnchor = v28;

  v30 = [(UILabel *)v8->_label leadingAnchor];
  v31 = [(UIImageView *)v8->_dashedLine trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  labelLeadingConstraint = v8->_labelLeadingConstraint;
  v8->_labelLeadingConstraint = v32;

  v49 = MEMORY[0x277CCAAD0];
  v60[0] = v8->_labelLeadingConstraint;
  v58 = [(UILabel *)v8->_label bottomAnchor];
  v57 = [(UIImageView *)v8->_dashedLine bottomAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v60[1] = v56;
  v55 = [(UILabel *)v8->_label trailingAnchor];
  v54 = [(STDashedVerticalDivider *)v8 trailingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v60[2] = v53;
  v52 = [(UIImageView *)v8->_dashedLine topAnchor];
  v51 = [(STDashedVerticalDivider *)v8 topAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v60[3] = v50;
  v48 = [(UIImageView *)v8->_dashedLine leadingAnchor];
  v47 = [(STDashedVerticalDivider *)v8 leadingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v60[4] = v46;
  v45 = [(UIImageView *)v8->_dashedLine bottomAnchor];
  v44 = [(STDashedVerticalDivider *)v8 bottomAnchor];
  v34 = [v45 constraintEqualToAnchor:v44];
  v60[5] = v34;
  v35 = [(UIImageView *)v8->_dashedLine widthAnchor];
  v36 = [(STDashedVerticalDivider *)v8 traitCollection];
  [v36 displayScale];
  v38 = [v35 constraintEqualToConstant:1.0 / v37];
  v60[6] = v38;
  v39 = [(UILabel *)v8->_label trailingAnchor];
  v40 = [(STDashedVerticalDivider *)v8 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  v60[7] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:8];
  [v49 activateConstraints:v42];

  return v8;
}

- (void)setLabelText:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  labelText = self->_labelText;
  self->_labelText = v5;

  v7 = [(STDashedVerticalDivider *)self label];
  [v7 setText:v4];

  v8 = [v4 length];
  if (v8)
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [(STDashedVerticalDivider *)self labelLeadingConstraint];
  [v10 setConstant:v9];
}

- (void)setSelected:(BOOL)a3
{
  self->_selected = a3;
  if (a3)
  {
    [MEMORY[0x277D75348] systemDarkMidGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] tertiaryLabelColor];
  }
  v5 = ;
  v4 = [(STDashedVerticalDivider *)self label];
  [v4 setTextColor:v5];
}

- (UIImage)dashedLineImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__STDashedVerticalDivider_dashedLineImage__block_invoke;
  block[3] = &unk_279B7C998;
  block[4] = self;
  if (dashedLineImage_onceToken != -1)
  {
    dispatch_once(&dashedLineImage_onceToken, block);
  }

  return dashedLineImage_dashedLineImage;
}

void __42__STDashedVerticalDivider_dashedLineImage__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  [v1 displayScale];
  v3 = 1.0 / v2;

  v4 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v3, 4.0}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__STDashedVerticalDivider_dashedLineImage__block_invoke_2;
  v11[3] = &__block_descriptor_40_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v11[4] = v3;
  v5 = [v4 imageWithActions:v11];
  v6 = dashedLineImage_dashedLineImage;
  dashedLineImage_dashedLineImage = v5;

  v7 = [dashedLineImage_dashedLineImage resizableImageWithCapInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v8 = dashedLineImage_dashedLineImage;
  dashedLineImage_dashedLineImage = v7;

  v9 = [dashedLineImage_dashedLineImage imageWithRenderingMode:2];
  v10 = dashedLineImage_dashedLineImage;
  dashedLineImage_dashedLineImage = v9;
}

void __42__STDashedVerticalDivider_dashedLineImage__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a2 CGContext];
  CGContextSetLineWidth(v3, *(a1 + 32));
  *lengths = xmmword_264CD1A60;
  CGContextSetLineDash(v3, 0.0, lengths, 2uLL);
  v4.x = *(a1 + 32) * 0.5;
  v4.y = 0.0;
  x = v4.x;
  v6 = 0x4010000000000000;
  CGContextAddLines(v3, &v4, 2uLL);
  CGContextStrokeLineSegments(v3, &v4, 2uLL);
}

@end