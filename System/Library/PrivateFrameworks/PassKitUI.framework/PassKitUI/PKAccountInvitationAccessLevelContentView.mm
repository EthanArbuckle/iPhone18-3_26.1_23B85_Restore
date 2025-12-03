@interface PKAccountInvitationAccessLevelContentView
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountInvitationAccessLevelContentView)initWithConfiguration:(id)configuration;
- (PKAccountInvitationAccessLevelContentView)initWithFrame:(CGRect)frame;
- (void)_applyConfiguration:(id)configuration;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
@end

@implementation PKAccountInvitationAccessLevelContentView

- (PKAccountInvitationAccessLevelContentView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(PKAccountInvitationAccessLevelContentView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PKAccountInvitationAccessLevelContentView *)v5 _applyConfiguration:configurationCopy];
  }

  return v6;
}

- (PKAccountInvitationAccessLevelContentView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = PKAccountInvitationAccessLevelContentView;
  v3 = [(PKAccountInvitationAccessLevelContentView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    imageView = v3->_imageView;
    v3->_imageView = v9;

    [(PKAccountInvitationAccessLevelContentView *)v3 addSubview:v3->_imageView];
    v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v11;

    v13 = v3->_titleLabel;
    v14 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 2, 0);
    [(UILabel *)v13 setFont:v14];

    v15 = v3->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:labelColor];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKAccountInvitationAccessLevelContentView *)v3 addSubview:v3->_titleLabel];
    v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v17;

    v19 = v3->_subtitleLabel;
    v20 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [(UILabel *)v19 setFont:v20];

    v21 = v3->_subtitleLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v21 setTextColor:secondaryLabelColor];

    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v3->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKAccountInvitationAccessLevelContentView *)v3 addSubview:v3->_subtitleLabel];
    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    secondarySubtitleLabel = v3->_secondarySubtitleLabel;
    v3->_secondarySubtitleLabel = v23;

    v25 = v3->_secondarySubtitleLabel;
    v26 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], 0);
    [(UILabel *)v25 setFont:v26];

    v27 = v3->_secondarySubtitleLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v27 setTextColor:secondaryLabelColor2];

    [(UILabel *)v3->_secondarySubtitleLabel setNumberOfLines:0];
    [(UILabel *)v3->_secondarySubtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    [(PKAccountInvitationAccessLevelContentView *)v3 addSubview:v3->_secondarySubtitleLabel];
    [(PKAccountInvitationAccessLevelContentView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B93A0]];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAccountInvitationAccessLevelContentView;
  [(PKAccountInvitationAccessLevelContentView *)&v3 layoutSubviews];
  [(PKAccountInvitationAccessLevelContentView *)self bounds];
  [(PKAccountInvitationAccessLevelContentView *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKAccountInvitationAccessLevelContentView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKAccountInvitationAccessLevelContentView *)self _applyConfiguration:configurationCopy];
  }
}

- (void)_applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_configuration, configuration);
    imageView = self->_imageView;
    image = [configurationCopy image];
    [(UIImageView *)imageView setImage:image];

    titleLabel = self->_titleLabel;
    title = [configurationCopy title];
    [(UILabel *)titleLabel setText:title];

    subtitleLabel = self->_subtitleLabel;
    subtitle = [configurationCopy subtitle];
    [(UILabel *)subtitleLabel setText:subtitle];

    secondarySubtitleLabel = self->_secondarySubtitleLabel;
    secondarySubtitle = [configurationCopy secondarySubtitle];
    [(UILabel *)secondarySubtitleLabel setText:secondarySubtitle];

    [(PKAccountInvitationAccessLevelContentView *)self setNeedsLayout];
  }
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(PKAccountInvitationAccessLevelContentView *)self _shouldReverseLayoutDirection])
  {
    v8 = CGRectMaxXEdge;
  }

  else
  {
    v8 = CGRectMinXEdge;
  }

  v9 = *(MEMORY[0x1E695F050] + 16);
  v24.origin = *MEMORY[0x1E695F050];
  remainder.origin.x = x + 14.0;
  remainder.origin.y = y + 14.0;
  remainder.size.width = width + -28.0;
  remainder.size.height = height + -28.0;
  v10 = [(UIImageView *)self->_imageView image:*&v24.origin];

  if (v10)
  {
    v27.origin.x = x + 14.0;
    v27.origin.y = y + 14.0;
    v27.size.width = width + -28.0;
    v27.size.height = height + -28.0;
    CGRectDivide(v27, &v24, &remainder, 46.0, v8);
    if (!self->_isTemplateLayout)
    {
      imageView = self->_imageView;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UIImageView *)imageView setFrame:?];
    }

    CGRectDivide(remainder, &v24, &remainder, 10.0, v8);
  }

  else if (!self->_isTemplateLayout)
  {
    [(UIImageView *)self->_imageView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  text = [(UILabel *)self->_titleLabel text];

  if (text)
  {
    [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v14 = v13;
    CGRectDivide(remainder, &v24, &remainder, v13, CGRectMinYEdge);
    if (!self->_isTemplateLayout)
    {
      [(UILabel *)self->_titleLabel setFrame:*&v24.origin, *&v24.size];
    }

    v15 = v14 + 0.0;
  }

  else
  {
    v15 = 0.0;
    if (!self->_isTemplateLayout)
    {
      [(UILabel *)self->_titleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }
  }

  text2 = [(UILabel *)self->_subtitleLabel text];

  if (text2)
  {
    [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v18 = v17;
    CGRectDivide(remainder, &v24, &remainder, 5.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v24, &remainder, v18, CGRectMinYEdge);
    if (!self->_isTemplateLayout)
    {
      [(UILabel *)self->_subtitleLabel setFrame:*&v24.origin, *&v24.size];
    }

    v15 = v15 + v18 + 5.0;
  }

  else if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_subtitleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  text3 = [(UILabel *)self->_secondarySubtitleLabel text];

  if (text3)
  {
    [(UILabel *)self->_secondarySubtitleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v21 = v20;
    CGRectDivide(remainder, &v24, &remainder, 14.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v24, &remainder, v21, CGRectMinYEdge);
    if (!self->_isTemplateLayout)
    {
      [(UILabel *)self->_secondarySubtitleLabel setFrame:*&v24.origin, *&v24.size];
    }

    v15 = v15 + v21 + 14.0;
  }

  else if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_secondarySubtitleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v22 = CGRectGetWidth(v28);
  v23 = fmax(v15, 46.0) + 28.0;
  result.height = v23;
  result.width = v22;
  return result;
}

@end