@interface PKDashboardMessageView
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardMessageView)initWithFrame:(CGRect)frame;
- (id)_messageWithImageAttributedText;
- (void)_updateAvatarView;
- (void)_updateFonts;
- (void)_updateMessageLabel;
- (void)_updateSymbolImage;
- (void)dismissButtonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActionOnButtonPress:(id)press;
- (void)setActionOnDismiss:(id)dismiss;
- (void)setAvatarContact:(id)contact;
- (void)setButtonTitle:(id)title;
- (void)setImageDescriptor:(id)descriptor;
- (void)setMessage:(id)message;
- (void)setMessage:(id)message withImage:(id)image;
- (void)setMessageImage:(id)image;
- (void)setSecondaryMessage:(id)message;
- (void)setSecondaryTitle:(id)title;
- (void)setShowSpinner:(BOOL)spinner;
- (void)setStrokeImage:(BOOL)image;
- (void)setTitle:(id)title;
- (void)updateWithMessage:(id)message;
@end

@implementation PKDashboardMessageView

- (PKDashboardMessageView)initWithFrame:(CGRect)frame
{
  v61[2] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = PKDashboardMessageView;
  v3 = [(PKDashboardMessageView *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v61[0] = secondaryLabelColor;
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    v61[1] = quaternarySystemFillColor;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    v10 = [v6 configurationWithPaletteColors:v9];
    v53 = [v5 configurationByApplyingConfiguration:v10];

    v52 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v53];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setImage:v52];
    v12 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v54];
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
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];

    [filledButtonConfiguration setCornerStyle:4];
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    [filledButtonConfiguration setBaseBackgroundColor:systemGroupedBackgroundColor];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [filledButtonConfiguration setBaseForegroundColor:labelColor];

    [filledButtonConfiguration setContentInsets:{16.0, 0.0, 16.0, 0.0}];
    [filledButtonConfiguration setImagePadding:5.0];
    v19 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:v15];
    actionButton = v3->_actionButton;
    v3->_actionButton = v19;

    titleLabel = [(UIButton *)v3->_actionButton titleLabel];
    [titleLabel setNumberOfLines:0];
    [titleLabel setTextAlignment:1];
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
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v30 setTextColor:labelColor2];

    [(UILabel *)v3->_labelTitle setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKDashboardMessageView *)v3 addSubview:v3->_labelTitle];
    v32 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v24, v25, v26, v27}];
    labelSecondaryTitle = v3->_labelSecondaryTitle;
    v3->_labelSecondaryTitle = v32;

    v34 = v3->_labelSecondaryTitle;
    labelColor3 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v34 setTextColor:labelColor3];

    [(UILabel *)v3->_labelSecondaryTitle setAccessibilityIdentifier:*MEMORY[0x1E69B9BF0]];
    [(PKDashboardMessageView *)v3 addSubview:v3->_labelSecondaryTitle];
    v36 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v24, v25, v26, v27}];
    labelMessage = v3->_labelMessage;
    v3->_labelMessage = v36;

    v38 = v3->_labelMessage;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v38 setTextColor:secondaryLabelColor2];

    [(UILabel *)v3->_labelMessage setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKDashboardMessageView *)v3 addSubview:v3->_labelMessage];
    v40 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v24, v25, v26, v27}];
    labelSecondaryMessage = v3->_labelSecondaryMessage;
    v3->_labelSecondaryMessage = v40;

    v42 = v3->_labelSecondaryMessage;
    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v42 setTextColor:secondaryLabelColor3];

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
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v50 = [(PKDashboardMessageView *)v3 registerForTraitChanges:systemTraitsAffectingColorAppearance withHandler:&__block_literal_global_72];

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

- (void)updateWithMessage:(id)message
{
  messageCopy = message;
  -[PKDashboardMessageView setType:](self, "setType:", [messageCopy type]);
  title = [messageCopy title];
  [(PKDashboardMessageView *)self setTitle:title];

  secondaryTitle = [messageCopy secondaryTitle];
  [(PKDashboardMessageView *)self setSecondaryTitle:secondaryTitle];

  -[PKDashboardMessageView setParseEmphasisInMessage:](self, "setParseEmphasisInMessage:", [messageCopy parseEmphasisInMessage]);
  message = [messageCopy message];
  messageImage = [messageCopy messageImage];
  [(PKDashboardMessageView *)self setMessage:message withImage:messageImage];

  secondaryMessage = [messageCopy secondaryMessage];
  [(PKDashboardMessageView *)self setSecondaryMessage:secondaryMessage];

  -[PKDashboardMessageView setIconImageContentMode:](self, "setIconImageContentMode:", [messageCopy imageContentMode]);
  -[PKDashboardMessageView setImageOnTrailingEdge:](self, "setImageOnTrailingEdge:", [messageCopy imageOnTrailingEdge]);
  -[PKDashboardMessageView setImageRequestExtraLarge:](self, "setImageRequestExtraLarge:", [messageCopy imageRequestExtraLarge]);
  -[PKDashboardMessageView setStrokeImage:](self, "setStrokeImage:", [messageCopy strokeImage]);
  avatarContact = [messageCopy avatarContact];
  [(PKDashboardMessageView *)self setAvatarContact:avatarContact];

  actionOnDismiss = [messageCopy actionOnDismiss];
  v12 = messageCopy;
  v13 = actionOnDismiss;
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
  buttonTitle = [v12 buttonTitle];
  [(PKDashboardMessageView *)self setButtonTitle:buttonTitle];

  actionOnButtonPress = [v12 actionOnButtonPress];
  v18 = _ReportableActionOnButtonPressedForMessageWithAction(v12, actionOnButtonPress);
  [(PKDashboardMessageView *)self setActionOnButtonPress:v18];

  [(PKDashboardMessageView *)self _updateFonts];
  -[PKDashboardMessageView setShowSpinner:](self, "setShowSpinner:", [v12 showSpinner]);
  imageDescriptor = [v12 imageDescriptor];
  [(PKDashboardMessageView *)self setImageDescriptor:imageDescriptor];
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner == !spinner)
  {
    self->_showSpinner = spinner;
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

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_labelTitle setText:self->_title];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)setButtonTitle:(id)title
{
  objc_storeStrong(&self->_buttonTitle, title);
  titleCopy = title;
  [(UIButton *)self->_actionButton setTitle:titleCopy forState:0];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)setSecondaryTitle:(id)title
{
  objc_storeStrong(&self->_secondaryTitle, title);
  titleCopy = title;
  [(UILabel *)self->_labelSecondaryTitle setText:self->_secondaryTitle];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)setMessage:(id)message
{
  objc_storeStrong(&self->_message, message);

  [(PKDashboardMessageView *)self _updateMessageLabel];
}

- (void)setMessageImage:(id)image
{
  objc_storeStrong(&self->_messageImage, image);

  [(PKDashboardMessageView *)self _updateMessageLabel];
}

- (void)setMessage:(id)message withImage:(id)image
{
  messageCopy = message;
  imageCopy = image;
  message = self->_message;
  self->_message = messageCopy;
  v9 = messageCopy;

  messageImage = self->_messageImage;
  self->_messageImage = imageCopy;

  [(PKDashboardMessageView *)self _updateMessageLabel];
}

- (void)_updateMessageLabel
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_messageImage)
  {
    [(UILabel *)self->_labelMessage setText:0];
    labelMessage = self->_labelMessage;
    _messageWithImageAttributedText = [(PKDashboardMessageView *)self _messageWithImageAttributedText];
    [(UILabel *)labelMessage setAttributedText:_messageWithImageAttributedText];
  }

  else
  {
    message = self->_message;
    if (message && self->_parseEmphasisInMessage)
    {
      font = [(UILabel *)self->_labelMessage font];
      v10 = *MEMORY[0x1E69DB650];
      textColor = [(UILabel *)self->_labelMessage textColor];
      v11[0] = textColor;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v9 = PKAttributedStringByParsingEmphasisInString(message, font, v8);

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

- (void)setSecondaryMessage:(id)message
{
  objc_storeStrong(&self->_secondaryMessage, message);
  messageCopy = message;
  [(UILabel *)self->_labelSecondaryMessage setText:self->_secondaryMessage];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)setImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_storeStrong(&self->_imageDescriptor, descriptor);
  imageDescriptor = self->_imageDescriptor;
  if (imageDescriptor)
  {
    type = [(PKDashboardPassMessageImageDescriptor *)imageDescriptor type];
    if (type == 1)
    {
      [(PKDashboardMessageView *)self _updateSymbolImage];
    }

    else if (!type)
    {
      iconImageView = self->_iconImageView;
      image = [(PKDashboardPassMessageImageDescriptor *)self->_imageDescriptor image];
      [(UIImageView *)iconImageView setImage:image];

      v9 = self->_iconImageView;
      tintColor = [(PKDashboardPassMessageImageDescriptor *)self->_imageDescriptor tintColor];
      [(UIImageView *)v9 setTintColor:tintColor];

      v11 = self->_iconImageView;
      backgroundColor = [(PKDashboardPassMessageImageDescriptor *)self->_imageDescriptor backgroundColor];
      [(UIImageView *)v11 setBackgroundColor:backgroundColor];
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
    name = [(PKDashboardPassMessageImageDescriptor *)v4 name];
    v7 = [v5 systemImageNamed:name withConfiguration:v17];

    tintColor = [(PKDashboardPassMessageImageDescriptor *)v4 tintColor];
    backgroundColor = [(PKDashboardPassMessageImageDescriptor *)v4 backgroundColor];
    v10 = backgroundColor;
    if (backgroundColor)
    {
      clearColor = backgroundColor;
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
    }

    v12 = clearColor;

    if (tintColor)
    {
      tintColor2 = [(PKDashboardPassMessageImageDescriptor *)v4 tintColor];
      v14 = [v7 imageWithTintColor:tintColor2];

      v7 = v14;
    }

    iconImageView = self->_iconImageView;
    v16 = PKUIImageWithBackgroundAndCornerRadius(v7, v12, 45.0, 45.0, 0.0);
    [(UIImageView *)iconImageView setImage:v16];

    [(UIImageView *)self->_iconImageView setTintColor:0];
    [(UIImageView *)self->_iconImageView setBackgroundColor:0];
  }
}

- (void)setStrokeImage:(BOOL)image
{
  self->_strokeImage = image;
  v4 = 0.0;
  if (image)
  {
    v4 = PKUIPixelLength();
  }

  layer = [(UIImageView *)self->_iconImageView layer];
  [layer setBorderWidth:v4];

  strokeImage = self->_strokeImage;
  if (strokeImage)
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    cGColor = [systemGrayColor CGColor];
  }

  else
  {
    cGColor = 0;
  }

  layer2 = [(UIImageView *)self->_iconImageView layer];
  [layer2 setBorderColor:cGColor];

  if (strokeImage)
  {
  }
}

- (void)setActionOnDismiss:(id)dismiss
{
  v4 = _Block_copy(dismiss);
  actionOnDismiss = self->_actionOnDismiss;
  self->_actionOnDismiss = v4;

  [(UIButton *)self->_dismissButton setHidden:self->_actionOnDismiss == 0];

  [(PKDashboardMessageView *)self setNeedsLayout];
}

- (void)dismissButtonPressed:(id)pressed
{
  actionOnDismiss = self->_actionOnDismiss;
  if (actionOnDismiss)
  {
    actionOnDismiss[2](actionOnDismiss, a2, pressed);
    v5 = self->_actionOnDismiss == 0;
  }

  else
  {
    v5 = 1;
  }

  dismissButton = self->_dismissButton;

  [(UIButton *)dismissButton setHidden:v5];
}

- (void)setActionOnButtonPress:(id)press
{
  v4 = _Block_copy(press);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKDashboardMessageView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  _shouldReverseLayoutDirection = [(PKDashboardMessageView *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v72 = v11;
  if (_shouldReverseLayoutDirection)
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

- (void)setAvatarContact:(id)contact
{
  contactCopy = contact;
  if (self->_avatarContact != contactCopy)
  {
    v6 = contactCopy;
    objc_storeStrong(&self->_avatarContact, contact);
    [(PKDashboardMessageView *)self _updateAvatarView];
    contactCopy = v6;
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