@interface PKDashboardMessageView
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardMessageView)initWithFrame:(CGRect)a3;
- (id)_messageWithImageAttributedText;
- (void)_updateAvatarView;
- (void)_updateFonts;
- (void)_updateMessageLabel;
- (void)_updateSymbolImage;
- (void)dismissButtonPressed:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActionOnButtonPress:(id)a3;
- (void)setActionOnDismiss:(id)a3;
- (void)setAvatarContact:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)setImageDescriptor:(id)a3;
- (void)setMessage:(id)a3;
- (void)setMessage:(id)a3 withImage:(id)a4;
- (void)setMessageImage:(id)a3;
- (void)setSecondaryMessage:(id)a3;
- (void)setSecondaryTitle:(id)a3;
- (void)setShowSpinner:(BOOL)a3;
- (void)setStrokeImage:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)updateWithMessage:(id)a3;
@end

@implementation PKDashboardMessageView

- (PKDashboardMessageView)initWithFrame:(CGRect)a3
{
  v61[2] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = PKDashboardMessageView;
  v3 = [(PKDashboardMessageView *)&v60 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = MEMORY[0x1E69DC628];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __40__PKDashboardMessageView_initWithFrame___block_invoke;
    v57[3] = &unk_1E8010A60;
    objc_copyWeak(&v58, &location);
    v54 = [v4 actionWithHandler:v57];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:22.0];
    v6 = MEMORY[0x1E69DCAD8];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v61[0] = v7;
    v8 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    v61[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    v10 = [v6 configurationWithPaletteColors:v9];
    v53 = [v5 configurationByApplyingConfiguration:v10];

    v52 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v53];
    v11 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v11 setImage:v52];
    v12 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v11 primaryAction:v54];
    dismissButton = v3->_dismissButton;
    v3->_dismissButton = v12;

    [(PKDashboardMessageView *)v3 addSubview:v3->_dismissButton];
    v14 = MEMORY[0x1E69DC628];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __40__PKDashboardMessageView_initWithFrame___block_invoke_2;
    v55[3] = &unk_1E8010A60;
    objc_copyWeak(&v56, &location);
    v15 = [v14 actionWithHandler:v55];
    v16 = [MEMORY[0x1E69DC740] filledButtonConfiguration];

    [v16 setCornerStyle:4];
    v17 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    [v16 setBaseBackgroundColor:v17];

    v18 = [MEMORY[0x1E69DC888] labelColor];
    [v16 setBaseForegroundColor:v18];

    [v16 setContentInsets:{16.0, 0.0, 16.0, 0.0}];
    [v16 setImagePadding:5.0];
    v19 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v16 primaryAction:v15];
    actionButton = v3->_actionButton;
    v3->_actionButton = v19;

    v21 = [(UIButton *)v3->_actionButton titleLabel];
    [v21 setNumberOfLines:0];
    [v21 setTextAlignment:1];
    v22 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB980]);
    [(UIButton *)v3->_actionButton pkui_updateTitleTextAttributesWithFont:v22];
    [(PKDashboardMessageView *)v3 addSubview:v3->_actionButton];
    v3->_smallDevice = PKUIGetMinScreenWidthType() == 0;
    [(UIButton *)v3->_dismissButton setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [(UIButton *)v3->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
    v23 = objc_alloc(MEMORY[0x1E69DCC10]);
    v24 = *MEMORY[0x1E695F058];
    v25 = *(MEMORY[0x1E695F058] + 8);
    v26 = *(MEMORY[0x1E695F058] + 16);
    v27 = *(MEMORY[0x1E695F058] + 24);
    v28 = [v23 initWithFrame:{*MEMORY[0x1E695F058], v25, v26, v27}];
    labelTitle = v3->_labelTitle;
    v3->_labelTitle = v28;

    v30 = v3->_labelTitle;
    v31 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v30 setTextColor:v31];

    [(UILabel *)v3->_labelTitle setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKDashboardMessageView *)v3 addSubview:v3->_labelTitle];
    v32 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v24, v25, v26, v27}];
    labelSecondaryTitle = v3->_labelSecondaryTitle;
    v3->_labelSecondaryTitle = v32;

    v34 = v3->_labelSecondaryTitle;
    v35 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v34 setTextColor:v35];

    [(UILabel *)v3->_labelSecondaryTitle setAccessibilityIdentifier:*MEMORY[0x1E69B9BF0]];
    [(PKDashboardMessageView *)v3 addSubview:v3->_labelSecondaryTitle];
    v36 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v24, v25, v26, v27}];
    labelMessage = v3->_labelMessage;
    v3->_labelMessage = v36;

    v38 = v3->_labelMessage;
    v39 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v38 setTextColor:v39];

    [(UILabel *)v3->_labelMessage setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKDashboardMessageView *)v3 addSubview:v3->_labelMessage];
    v40 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v24, v25, v26, v27}];
    labelSecondaryMessage = v3->_labelSecondaryMessage;
    v3->_labelSecondaryMessage = v40;

    v42 = v3->_labelSecondaryMessage;
    v43 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v42 setTextColor:v43];

    [(UILabel *)v3->_labelSecondaryMessage setAccessibilityIdentifier:*MEMORY[0x1E69B9BE8]];
    [(PKDashboardMessageView *)v3 addSubview:v3->_labelSecondaryMessage];
    v44 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v24, v25, v26, v27}];
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v44;

    [(UIImageView *)v3->_iconImageView setContentMode:1];
    [(UIImageView *)v3->_iconImageView setClipsToBounds:1];
    v46 = v3->_iconImageView;
    v47 = _UISolariumFeatureFlagEnabled();
    v48 = 4.0;
    if (v47)
    {
      v48 = 8.0;
    }

    [(UIImageView *)v46 _setContinuousCornerRadius:v48];
    [(PKDashboardMessageView *)v3 addSubview:v3->_iconImageView];
    v49 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v50 = [(PKDashboardMessageView *)v3 registerForTraitChanges:v49 withHandler:&__block_literal_global_72];

    [(PKDashboardMessageView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9958]];
    objc_destroyWeak(&v56);

    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __40__PKDashboardMessageView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained dismissButtonPressed:v4];
}

void __40__PKDashboardMessageView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[73];
    if (v3)
    {
      v4 = v2;
      (*(v3 + 16))(v3, v2[58]);
      v2 = v4;
    }
  }
}

- (void)updateWithMessage:(id)a3
{
  v4 = a3;
  -[PKDashboardMessageView setType:](self, "setType:", [v4 type]);
  v5 = [v4 title];
  [(PKDashboardMessageView *)self setTitle:v5];

  v6 = [v4 secondaryTitle];
  [(PKDashboardMessageView *)self setSecondaryTitle:v6];

  -[PKDashboardMessageView setParseEmphasisInMessage:](self, "setParseEmphasisInMessage:", [v4 parseEmphasisInMessage]);
  v7 = [v4 message];
  v8 = [v4 messageImage];
  [(PKDashboardMessageView *)self setMessage:v7 withImage:v8];

  v9 = [v4 secondaryMessage];
  [(PKDashboardMessageView *)self setSecondaryMessage:v9];

  -[PKDashboardMessageView setIconImageContentMode:](self, "setIconImageContentMode:", [v4 imageContentMode]);
  -[PKDashboardMessageView setImageOnTrailingEdge:](self, "setImageOnTrailingEdge:", [v4 imageOnTrailingEdge]);
  -[PKDashboardMessageView setImageRequestExtraLarge:](self, "setImageRequestExtraLarge:", [v4 imageRequestExtraLarge]);
  -[PKDashboardMessageView setStrokeImage:](self, "setStrokeImage:", [v4 strokeImage]);
  v10 = [v4 avatarContact];
  [(PKDashboardMessageView *)self setAvatarContact:v10];

  v11 = [v4 actionOnDismiss];
  v12 = v4;
  v13 = v11;
  v14 = v13;
  if (v13)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ReportableActionOnDismissPressedForMessageWithAction_block_invoke;
    v20[3] = &unk_1E8010E20;
    v22 = v13;
    v21 = v12;
    v15 = _Block_copy(v20);
  }

  else
  {
    v15 = 0;
  }

  [(PKDashboardMessageView *)self setActionOnDismiss:v15];
  v16 = [v12 buttonTitle];
  [(PKDashboardMessageView *)self setButtonTitle:v16];

  v17 = [v12 actionOnButtonPress];
  v18 = _ReportableActionOnButtonPressedForMessageWithAction(v12, v17);
  [(PKDashboardMessageView *)self setActionOnButtonPress:v18];

  [(PKDashboardMessageView *)self _updateFonts];
  -[PKDashboardMessageView setShowSpinner:](self, "setShowSpinner:", [v12 showSpinner]);
  v19 = [v12 imageDescriptor];
  [(PKDashboardMessageView *)self setImageDescriptor:v19];
}

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner == !a3)
  {
    self->_showSpinner = a3;
    [(UIButton *)self->_actionButton pkui_updateConfigurationShowingActivityIndicator:?];
  }
}

- (void)_updateFonts
{
  v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, *MEMORY[0x1E69DB980]);
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
  [(UILabel *)self->_labelTitle setFont:v4];
  [(UILabel *)self->_labelSecondaryTitle setFont:v4];
  [(UILabel *)self->_labelMessage setFont:v3];
  [(UILabel *)self->_labelSecondaryMessage setFont:v3];
}

- (void)prepareForReuse
{
  [(PKDashboardMessageView *)self setImageDescriptor:0];
  [(PKDashboardMessageView *)self setIconImageContentMode:1];
  [(PKDashboardMessageView *)self setStrokeImage:0];
  [(UILabel *)self->_labelTitle setText:0];
  [(UILabel *)self->_labelSecondaryTitle setText:0];
  [(UILabel *)self->_labelMessage setText:0];
  [(UILabel *)self->_labelMessage setAttributedText:0];
  [(UILabel *)self->_labelSecondaryMessage setText:0];
  [(UIButton *)self->_dismissButton setHidden:1];
  actionButton = self->_actionButton;

  [(UIButton *)actionButton setHidden:1];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_labelTitle setText:self->_title];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)setButtonTitle:(id)a3
{
  objc_storeStrong(&self->_buttonTitle, a3);
  v5 = a3;
  [(UIButton *)self->_actionButton setTitle:v5 forState:0];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)setSecondaryTitle:(id)a3
{
  objc_storeStrong(&self->_secondaryTitle, a3);
  v5 = a3;
  [(UILabel *)self->_labelSecondaryTitle setText:self->_secondaryTitle];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)setMessage:(id)a3
{
  objc_storeStrong(&self->_message, a3);

  [(PKDashboardMessageView *)self _updateMessageLabel];
}

- (void)setMessageImage:(id)a3
{
  objc_storeStrong(&self->_messageImage, a3);

  [(PKDashboardMessageView *)self _updateMessageLabel];
}

- (void)setMessage:(id)a3 withImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  message = self->_message;
  self->_message = v6;
  v9 = v6;

  messageImage = self->_messageImage;
  self->_messageImage = v7;

  [(PKDashboardMessageView *)self _updateMessageLabel];
}

- (void)_updateMessageLabel
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_messageImage)
  {
    [(UILabel *)self->_labelMessage setText:0];
    labelMessage = self->_labelMessage;
    v4 = [(PKDashboardMessageView *)self _messageWithImageAttributedText];
    [(UILabel *)labelMessage setAttributedText:v4];
  }

  else
  {
    message = self->_message;
    if (message && self->_parseEmphasisInMessage)
    {
      v6 = [(UILabel *)self->_labelMessage font];
      v10 = *MEMORY[0x1E69DB650];
      v7 = [(UILabel *)self->_labelMessage textColor];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v9 = PKAttributedStringByParsingEmphasisInString(message, v6, v8);

      [(UILabel *)self->_labelMessage setText:0];
      [(UILabel *)self->_labelMessage setAttributedText:v9];
    }

    else
    {
      [(UILabel *)self->_labelMessage setText:self->_message];
    }
  }

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (id)_messageWithImageAttributedText
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_messageImage)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v3 setLineBreakMode:0];
    [v3 setFirstLineHeadIndent:0.0];
    v12 = *MEMORY[0x1E69DB688];
    v13[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v5 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:self->_messageImage];
    v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v7 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v5];
    [v6 appendAttributedString:v7];

    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [@" " stringByAppendingString:self->_message];
    v10 = [v8 initWithString:v9 attributes:v4];
    [v6 appendAttributedString:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setSecondaryMessage:(id)a3
{
  objc_storeStrong(&self->_secondaryMessage, a3);
  v5 = a3;
  [(UILabel *)self->_labelSecondaryMessage setText:self->_secondaryMessage];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)setImageDescriptor:(id)a3
{
  v13 = a3;
  objc_storeStrong(&self->_imageDescriptor, a3);
  imageDescriptor = self->_imageDescriptor;
  if (imageDescriptor)
  {
    v6 = [(PKDashboardPassMessageImageDescriptor *)imageDescriptor type];
    if (v6 == 1)
    {
      [(PKDashboardMessageView *)self _updateSymbolImage];
    }

    else if (!v6)
    {
      iconImageView = self->_iconImageView;
      v8 = [(PKDashboardPassMessageImageDescriptor *)self->_imageDescriptor image];
      [(UIImageView *)iconImageView setImage:v8];

      v9 = self->_iconImageView;
      v10 = [(PKDashboardPassMessageImageDescriptor *)self->_imageDescriptor tintColor];
      [(UIImageView *)v9 setTintColor:v10];

      v11 = self->_iconImageView;
      v12 = [(PKDashboardPassMessageImageDescriptor *)self->_imageDescriptor backgroundColor];
      [(UIImageView *)v11 setBackgroundColor:v12];
    }
  }

  else
  {
    [(UIImageView *)self->_iconImageView setImage:0];
    [(UIImageView *)self->_iconImageView setTintColor:0];
    [(UIImageView *)self->_iconImageView setBackgroundColor:0];
  }

  [(UIImageView *)self->_iconImageView setHidden:self->_imageDescriptor == 0];
  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)_updateSymbolImage
{
  imageDescriptor = self->_imageDescriptor;
  if (imageDescriptor && [(PKDashboardPassMessageImageDescriptor *)imageDescriptor type]== 1)
  {
    v17 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:26.0];
    v4 = self->_imageDescriptor;
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [(PKDashboardPassMessageImageDescriptor *)v4 name];
    v7 = [v5 systemImageNamed:v6 withConfiguration:v17];

    v8 = [(PKDashboardPassMessageImageDescriptor *)v4 tintColor];
    v9 = [(PKDashboardPassMessageImageDescriptor *)v4 backgroundColor];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E69DC888] clearColor];
    }

    v12 = v11;

    if (v8)
    {
      v13 = [(PKDashboardPassMessageImageDescriptor *)v4 tintColor];
      v14 = [v7 imageWithTintColor:v13];

      v7 = v14;
    }

    iconImageView = self->_iconImageView;
    v16 = PKUIImageWithBackgroundAndCornerRadius(v7, v12, 45.0, 45.0, 0.0);
    [(UIImageView *)iconImageView setImage:v16];

    [(UIImageView *)self->_iconImageView setTintColor:0];
    [(UIImageView *)self->_iconImageView setBackgroundColor:0];
  }
}

- (void)setStrokeImage:(BOOL)a3
{
  self->_strokeImage = a3;
  v4 = 0.0;
  if (a3)
  {
    v4 = PKUIPixelLength();
  }

  v5 = [(UIImageView *)self->_iconImageView layer];
  [v5 setBorderWidth:v4];

  strokeImage = self->_strokeImage;
  if (strokeImage)
  {
    v9 = [MEMORY[0x1E69DC888] systemGrayColor];
    v7 = [v9 CGColor];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(UIImageView *)self->_iconImageView layer];
  [v8 setBorderColor:v7];

  if (strokeImage)
  {
  }
}

- (void)setActionOnDismiss:(id)a3
{
  v4 = _Block_copy(a3);
  actionOnDismiss = self->_actionOnDismiss;
  self->_actionOnDismiss = v4;

  [(UIButton *)self->_dismissButton setHidden:self->_actionOnDismiss == 0];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)dismissButtonPressed:(id)a3
{
  actionOnDismiss = self->_actionOnDismiss;
  if (actionOnDismiss)
  {
    actionOnDismiss[2](actionOnDismiss, a2, a3);
    v5 = self->_actionOnDismiss == 0;
  }

  else
  {
    v5 = 1;
  }

  dismissButton = self->_dismissButton;

  [(UIButton *)dismissButton setHidden:v5];
}

- (void)setActionOnButtonPress:(id)a3
{
  v4 = _Block_copy(a3);
  actionOnButtonPress = self->_actionOnButtonPress;
  self->_actionOnButtonPress = v4;

  [(UIButton *)self->_actionButton setHidden:self->_actionOnButtonPress == 0];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardMessageView;
  [(PKDashboardMessageView *)&v3 layoutSubviews];
  [(PKDashboardMessageView *)self bounds];
  [(PKDashboardMessageView *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  self->_isTemplateLayout = 1;
  [(PKDashboardMessageView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  v10 = [(PKDashboardMessageView *)self _shouldReverseLayoutDirection];
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v72 = v11;
  if (v10)
  {
    v12 = CGRectMinXEdge;
  }

  else
  {
    v12 = CGRectMaxXEdge;
  }

  type = self->_type;
  v14 = self->_imageDescriptor && self->_iconImageView || self->_avatarContact != 0;
  v71 = v14;
  actionOnDismiss = self->_actionOnDismiss;
  v16 = type == 3;
  v17 = type == 3;
  v18 = 1;
  if (v16)
  {
    v19 = 1;
  }

  else
  {
    v18 = 2;
    v19 = IsAccessibilityCategory;
  }

  if (IsAccessibilityCategory)
  {
    v20 = 2 * v17;
  }

  else
  {
    v20 = v18;
  }

  if (IsAccessibilityCategory)
  {
    v21 = 2 * v17;
  }

  else
  {
    v21 = v17;
  }

  [(UILabel *)self->_labelTitle setNumberOfLines:v20];
  [(UILabel *)self->_labelTitle setAdjustsFontSizeToFitWidth:v19 ^ 1u];
  [(UILabel *)self->_labelSecondaryTitle setNumberOfLines:v20];
  [(UILabel *)self->_labelSecondaryTitle setAdjustsFontSizeToFitWidth:v19 ^ 1u];
  [(UILabel *)self->_labelMessage setNumberOfLines:v21];
  [(UILabel *)self->_labelMessage setAdjustsFontSizeToFitWidth:v19 ^ 1u];
  [(UILabel *)self->_labelSecondaryMessage setNumberOfLines:v21];
  [(UILabel *)self->_labelSecondaryMessage setAdjustsFontSizeToFitWidth:v19 ^ 1u];
  memset(&v83, 0, sizeof(v83));
  v22 = 16.0;
  v23 = x + 16.0;
  v24 = y + 16.0;
  v74 = width;
  v25 = width + -32.0;
  v26 = height + -32.0;
  remainder.origin.x = v23;
  remainder.origin.y = v24;
  remainder.size.width = v25;
  remainder.size.height = v26;
  slice = remainder;
  v27 = MEMORY[0x1E695F058];
  if (self->_actionOnButtonPress && [(NSString *)self->_buttonTitle length])
  {
    [(UIButton *)self->_actionButton sizeThatFits:v25, v26];
    v29 = v28;
    v86.origin.x = v23;
    v86.origin.y = v24;
    v86.size.width = v25;
    v86.size.height = v26;
    CGRectDivide(v86, &slice, &remainder, v29, CGRectMaxYEdge);
    CGRectDivide(remainder, &v83, &remainder, 16.0, CGRectMaxYEdge);
    v22 = slice.size.height + 16.0 + 16.0;
    if (self->_isTemplateLayout)
    {
      goto LABEL_27;
    }

    actionButton = self->_actionButton;
    v31 = slice.origin.x;
    v32 = slice.origin.y;
    v33 = slice.size.width;
  }

  else
  {
    if (self->_isTemplateLayout)
    {
      goto LABEL_27;
    }

    actionButton = self->_actionButton;
    v31 = *v27;
    v32 = *(v27 + 8);
    v33 = *(v27 + 16);
  }

  [(UIButton *)actionButton setFrame:v31, v32, v33];
LABEL_27:
  v34 = *(v27 + 16);
  v81.origin = *v27;
  v81.size = v34;
  v80.origin = v81.origin;
  v80.size = v34;
  v79.origin = v81.origin;
  v79.size = v34;
  v78.origin = v81.origin;
  v78.size = v34;
  v35 = 30.0;
  if (!self->_smallDevice)
  {
    if (self->_imageOnTrailingEdge)
    {
      if (self->_imageRequestExtraLarge)
      {
        v35 = 83.0;
      }

      else
      {
        v35 = 60.0;
      }
    }

    else
    {
      v35 = 38.0;
    }
  }

  if (!v71)
  {
    v73 = v22;
    if (!actionOnDismiss)
    {
      goto LABEL_52;
    }

    CGRectDivide(remainder, &v78, &remainder, 28.0, v12);
    CGRectDivide(remainder, &v83, &remainder, 10.0, v12);
    v41 = remainder.origin.x;
    v42 = remainder.origin.y;
    v43 = remainder.size.width;
    v44 = remainder.size.height;
    v45 = 4.0;
    v46 = CGRectMinYEdge;
    goto LABEL_51;
  }

  if (self->_imageOnTrailingEdge)
  {
    v36 = v12;
  }

  else
  {
    v36 = v72;
  }

  v37 = remainder.origin.x;
  if (!IsAccessibilityCategory)
  {
    v47 = remainder.origin.y;
    v48 = remainder.size.width;
    v49 = remainder.size.height;
    if (actionOnDismiss)
    {
      memset(&v77, 0, sizeof(v77));
      CGRectDivide(*&v37, &v78, &remainder, 28.0, v12);
      if (!self->_imageOnTrailingEdge)
      {
        CGRectDivide(remainder, &v77, &remainder, 10.0, v12);
      }

      v37 = remainder.origin.x;
      v47 = remainder.origin.y;
      v48 = remainder.size.width;
      v49 = remainder.size.height;
    }

    v73 = v22;
    CGRectDivide(*&v37, &v81, &remainder, 4.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v81, &remainder, v35, v36);
    CGRectDivide(v81, &v80, &v79, v35, CGRectMinYEdge);
    if (self->_imageOnTrailingEdge)
    {
      v45 = 3.0;
    }

    else
    {
      v45 = 13.0;
    }

    v41 = remainder.origin.x;
    v42 = remainder.origin.y;
    v43 = remainder.size.width;
    v44 = remainder.size.height;
    v46 = v36;
LABEL_51:
    CGRectDivide(*&v41, &v83, &remainder, v45, v46);
    goto LABEL_52;
  }

  v38 = remainder.origin.y;
  v39 = remainder.size.width;
  v40 = remainder.size.height;
  CGRectDivide(*&v37, &v80, &remainder, v35, CGRectMinYEdge);
  CGRectDivide(remainder, &v83, &remainder, 10.0, CGRectMinYEdge);
  if (actionOnDismiss)
  {
    CGRectDivide(v80, &v78, &v80, 28.0, v12);
  }

  CGRectDivide(v80, &v80, &v79, v35, v36);
  v73 = v22 + v35 + 10.0;
LABEL_52:
  v77 = remainder;
  size = remainder.size;
  [(UILabel *)self->_labelTitle sizeThatFits:remainder.size.width, remainder.size.height];
  v52 = v51;
  [(UILabel *)self->_labelSecondaryTitle sizeThatFits:size];
  v54 = v53;
  [(UILabel *)self->_labelMessage sizeThatFits:size];
  v56 = v55;
  [(UILabel *)self->_labelSecondaryMessage sizeThatFits:size];
  v58 = v57;
  v59 = fmax(v52, 0.0);
  v60 = -0.0;
  if (v54 > 0.0)
  {
    v60 = v54;
  }

  v61 = v59 + v60;
  if (fmax(v56, v58) <= 0.0)
  {
    v62 = v61;
  }

  else
  {
    v62 = v61 + v56 + 3.0 + v58;
  }

  CGRectDivide(remainder, &v83, &remainder, v62, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v77 = v87;
  memset(&v76, 0, sizeof(v76));
  CGRectDivide(v87, &v76, &v77, v52 + v54, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    labelTitle = self->_labelTitle;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)labelTitle setFrame:?];
    CGRectDivide(v76, &v83, &v76, v52, CGRectMinYEdge);
    labelSecondaryTitle = self->_labelSecondaryTitle;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)labelSecondaryTitle setFrame:?];
  }

  CGRectDivide(v77, &v83, &v77, 3.0, CGRectMinYEdge);
  memset(&v75, 0, sizeof(v75));
  CGRectDivide(v77, &v75, &v77, v56 + v58, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    labelMessage = self->_labelMessage;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)labelMessage setFrame:?];
    CGRectDivide(v75, &v83, &v75, v56, CGRectMinYEdge);
    labelSecondaryMessage = self->_labelSecondaryMessage;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)labelSecondaryMessage setFrame:?];
    avatarView = self->_avatarView;
    if (avatarView || (avatarView = self->_iconImageView) != 0)
    {
      PKSizeAlignedInRect();
      [avatarView setFrame:?];
    }

    if (actionOnDismiss)
    {
      dismissButton = self->_dismissButton;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UIButton *)dismissButton setFrame:?];
    }
  }

  v69 = v73 + v62 + 16.0;
  v70 = v74;
  result.height = v69;
  result.width = v70;
  return result;
}

- (void)setAvatarContact:(id)a3
{
  v5 = a3;
  if (self->_avatarContact != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_avatarContact, a3);
    [(PKDashboardMessageView *)self _updateAvatarView];
    v5 = v6;
  }
}

- (void)_updateAvatarView
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self->_avatarContact)
  {
    [(PKDashboardMessageView *)self setImageDescriptor:0];
    avatarView = self->_avatarView;
    if (!avatarView)
    {
      v4 = [objc_alloc(getCNAvatarViewClass[0]()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v5 = self->_avatarView;
      self->_avatarView = v4;

      [(CNAvatarView *)self->_avatarView setUserInteractionEnabled:0];
      [(CNAvatarView *)self->_avatarView setAsynchronousRendering:1];
      [(CNAvatarView *)self->_avatarView setShowsContactOnTap:0];
      [(PKDashboardMessageView *)self addSubview:self->_avatarView];
      avatarView = self->_avatarView;
    }

    v9[0] = self->_avatarContact;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(CNAvatarView *)avatarView setContacts:v6];

    [(PKDashboardMessageView *)self setNeedsLayout];
  }

  else
  {
    v7 = self->_avatarView;
    if (v7)
    {
      [(CNAvatarView *)v7 removeFromSuperview];
      v8 = self->_avatarView;
      self->_avatarView = 0;

      [(PKDashboardMessageView *)self setNeedsLayout];
    }
  }
}

@end