@interface PKPaymentPreferenceCardCell
+ (double)textOffset;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (PKPaymentPreferenceCardCell)initWithReuseIdentifier:(id)identifier;
- (PKPaymentPreferenceCardCellAccessoryViewDelegate)delegate;
- (void)_calculateAccessoryLayout;
- (void)_performSwitchToggle:(id)toggle;
- (void)_setUpConstraints;
- (void)_updateAccessoryView;
- (void)_updateAdditionalContextLabel;
- (void)_updateCellContent;
- (void)_updateDisclosureLabel;
- (void)_updateLabelTextColors;
- (void)_updateSubtitleLabel;
- (void)pk_applyAppearance:(id)appearance;
- (void)prepareForReuse;
- (void)setAccessoryViewType:(int64_t)type;
- (void)setActivityIndicatorActive:(BOOL)active;
- (void)setActivityIndicatorColor:(id)color;
- (void)setAdditionalContextString:(id)string;
- (void)setDimCardArt:(BOOL)art;
- (void)setDisabledMainLabelColor:(id)color;
- (void)setDisabledSubtitleLabelColor:(id)color;
- (void)setDisclosureString:(id)string;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHasError:(BOOL)error;
- (void)setMainLabelColor:(id)color;
- (void)setPass:(id)pass;
- (void)setSubtitleLabelColor:(id)color;
- (void)setSubtitleOverrideString:(id)string;
- (void)setTransitBalanceModel:(id)model;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation PKPaymentPreferenceCardCell

- (PKPaymentPreferenceCardCell)initWithReuseIdentifier:(id)identifier
{
  v51.receiver = self;
  v51.super_class = PKPaymentPreferenceCardCell;
  v3 = [(PKPaymentPreferenceCell *)&v51 initWithReuseIdentifier:identifier];
  if (v3)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v3->_isRightToLeft = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

    v3->_editing = 0;
    v3->_accessoryViewType = 0;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    mainLabelColor = v3->_mainLabelColor;
    v3->_mainLabelColor = labelColor;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    subtitleLabelColor = v3->_subtitleLabelColor;
    v3->_subtitleLabelColor = secondaryLabelColor;

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    disabledMainLabelColor = v3->_disabledMainLabelColor;
    v3->_disabledMainLabelColor = tertiaryLabelColor;

    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    disabledSubtitleLabelColor = v3->_disabledSubtitleLabelColor;
    v3->_disabledSubtitleLabelColor = quaternaryLabelColor;

    contentView = [(PKPaymentPreferenceCardCell *)v3 contentView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    displayLabel = v3->_displayLabel;
    v3->_displayLabel = v13;

    v15 = v3->_displayLabel;
    v16 = *MEMORY[0x1E69DDC30];
    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC30], 16.0)}];
    [(UILabel *)v15 setFont:v17];

    [(UILabel *)v3->_displayLabel setTextColor:v3->_mainLabelColor];
    [(UILabel *)v3->_displayLabel setNumberOfLines:0];
    [(UILabel *)v3->_displayLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v18;

    v20 = v3->_subtitleLabel;
    v21 = [MEMORY[0x1E69DB878] systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(v16, 12.0)}];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v3->_subtitleLabel setTextColor:v3->_subtitleLabelColor];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    additionalContextLabel = v3->_additionalContextLabel;
    v3->_additionalContextLabel = v22;

    v24 = v3->_additionalContextLabel;
    v25 = [MEMORY[0x1E69DB878] systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(v16, 12.0)}];
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v3->_additionalContextLabel setTextColor:v3->_subtitleLabelColor];
    [(UILabel *)v3->_additionalContextLabel setNumberOfLines:0];
    [(UILabel *)v3->_additionalContextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    cardArtView = v3->_cardArtView;
    v3->_cardArtView = v26;

    [(UIImageView *)v3->_cardArtView setContentMode:1];
    [(UIImageView *)v3->_cardArtView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_cardArtView setAccessibilityIgnoresInvertColors:1];
    [contentView addSubview:v3->_cardArtView];
    v28 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    snapshotSpinner = v3->_snapshotSpinner;
    v3->_snapshotSpinner = v28;

    [(UIActivityIndicatorView *)v3->_snapshotSpinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v3->_snapshotSpinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v3->_snapshotSpinner];
    v30 = objc_alloc(MEMORY[0x1E69DCF90]);
    v31 = [v30 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    labelStackView = v3->_labelStackView;
    v3->_labelStackView = v31;

    [(UIStackView *)v3->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_labelStackView setAxis:1];
    [(UIStackView *)v3->_labelStackView setDistribution:0];
    [(UIStackView *)v3->_labelStackView addArrangedSubview:v3->_displayLabel];
    [(UIStackView *)v3->_labelStackView addArrangedSubview:v3->_subtitleLabel];
    [(UIStackView *)v3->_labelStackView addArrangedSubview:v3->_additionalContextLabel];
    [contentView addSubview:v3->_labelStackView];
    v33 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = v3->_activityIndicator;
    v3->_activityIndicator = v33;

    [(UIActivityIndicatorView *)v3->_activityIndicator setHidesWhenStopped:1];
    v35 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    actionSwitch = v3->_actionSwitch;
    v3->_actionSwitch = v35;

    [(UISwitch *)v3->_actionSwitch addTarget:v3 action:sel__performSwitchToggle_ forControlEvents:4096];
    v37 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v38 = ;
    v39 = [v37 initWithImage:v38];
    disclosureView = v3->_disclosureView;
    v3->_disclosureView = v39;

    v41 = v3->_disclosureView;
    tertiaryLabelColor2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v41 setTintColor:tertiaryLabelColor2];

    v43 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    disclosureLabel = v3->_disclosureLabel;
    v3->_disclosureLabel = v43;

    v45 = v3->_disclosureLabel;
    v46 = [MEMORY[0x1E69DB878] systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(v16, 16.0)}];
    [(UILabel *)v45 setFont:v46];

    v47 = v3->_disclosureLabel;
    tertiaryLabelColor3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UILabel *)v47 setTextColor:tertiaryLabelColor3];

    [(PKPaymentPreferenceCardCell *)v3 _setUpConstraints];
  }

  return v3;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = PKPaymentPreferenceCardCell;
  [(PKPaymentPreferenceCell *)&v7 prepareForReuse];
  [(PKPaymentPreferenceCardCell *)self setUserInteractionEnabled:1];
  textLabel = [(PKPaymentPreferenceCardCell *)self textLabel];
  [textLabel setText:0];

  ++self->_snapshotCounter;
  pass = self->_pass;
  self->_pass = 0;

  additionalContextString = self->_additionalContextString;
  self->_additionalContextString = 0;

  disclosureString = self->_disclosureString;
  self->_disclosureString = 0;

  [(UIImageView *)self->_cardArtView setImage:0];
  [(PKPaymentPreferenceCardCell *)self setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(UILabel *)self->_displayLabel setText:0];
  [(UILabel *)self->_subtitleLabel setText:0];
  [(UILabel *)self->_additionalContextLabel setText:0];
  [(UILabel *)self->_disclosureLabel setText:0];
  [(PKPaymentPreferenceCardCell *)self setAccessoryViewType:0];
  objc_storeWeak(&self->_delegate, 0);
}

- (void)setHasError:(BOOL)error
{
  errorCopy = error;
  v6.receiver = self;
  v6.super_class = PKPaymentPreferenceCardCell;
  [(PKPaymentPreferenceCell *)&v6 setHasError:?];
  if (errorCopy)
  {
    pkui_osloErrorColor = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
  }

  else
  {
    pkui_osloErrorColor = 0;
  }

  if (self->_subtitleLabelColorOverride != pkui_osloErrorColor)
  {
    objc_storeStrong(&self->_subtitleLabelColorOverride, pkui_osloErrorColor);
    [(PKPaymentPreferenceCardCell *)self _updateLabelTextColors];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = PKPaymentPreferenceCardCell;
  [(PKPaymentPreferenceCardCell *)&v5 setUserInteractionEnabled:?];
  [(UISwitch *)self->_actionSwitch setEnabled:enabledCopy];
  [(PKPaymentPreferenceCardCell *)self _updateLabelTextColors];
}

- (void)setAccessoryViewType:(int64_t)type
{
  if (self->_accessoryViewType != type)
  {
    self->_accessoryViewType = type;
    [(PKPaymentPreferenceCardCell *)self _updateAccessoryView];
  }
}

- (void)setMainLabelColor:(id)color
{
  colorCopy = color;
  if (self->_mainLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_mainLabelColor, color);
    [(PKPaymentPreferenceCardCell *)self _updateLabelTextColors];
    colorCopy = v6;
  }
}

- (void)setSubtitleLabelColor:(id)color
{
  colorCopy = color;
  if (self->_subtitleLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_subtitleLabelColor, color);
    [(PKPaymentPreferenceCardCell *)self _updateLabelTextColors];
    colorCopy = v6;
  }
}

- (void)setDisabledMainLabelColor:(id)color
{
  colorCopy = color;
  if (self->_disabledMainLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_disabledMainLabelColor, color);
    [(PKPaymentPreferenceCardCell *)self _updateLabelTextColors];
    colorCopy = v6;
  }
}

- (void)setDisabledSubtitleLabelColor:(id)color
{
  colorCopy = color;
  if (self->_disabledSubtitleLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_disabledSubtitleLabelColor, color);
    [(PKPaymentPreferenceCardCell *)self _updateLabelTextColors];
    colorCopy = v6;
  }
}

- (void)setActivityIndicatorColor:(id)color
{
  colorCopy = color;
  if (self->_activityIndicatorColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_activityIndicatorColor, color);
    [(UIActivityIndicatorView *)self->_activityIndicator setColor:v6];
    colorCopy = v6;
  }
}

- (void)setActivityIndicatorActive:(BOOL)active
{
  if (self->_activityIndicatorActive == !active)
  {
    self->_activityIndicatorActive = active;
    [(PKPaymentPreferenceCardCell *)self _updateAccessoryView];
  }
}

- (void)setDimCardArt:(BOOL)art
{
  if (self->_dimCardArt == !art)
  {
    self->_dimCardArt = art;
    [(PKPaymentPreferenceCardCell *)self _updateCellContent];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing == !editing)
  {
    animatedCopy = animated;
    self->_editing = editing;
    if (editing)
    {
      v6 = 0.2;
    }

    else
    {
      v6 = 1.0;
    }

    if (editing)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    [(PKPaymentPreferenceCardCell *)self setSelectionStyle:v7];
    if (animatedCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__PKPaymentPreferenceCardCell_setEditing_animated___block_invoke;
      v8[3] = &unk_1E80119C8;
      v8[4] = self;
      *&v8[5] = v6;
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v8 completion:0];
    }

    else
    {

      [(PKPaymentPreferenceCardCell *)self setAlpha:v6];
    }
  }
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_pass, pass);
    [(PKPaymentPreferenceCardCell *)self _updateCellContent];
  }
}

- (void)setTransitBalanceModel:(id)model
{
  modelCopy = model;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_transitBalanceModel, model);
    [(PKPaymentPreferenceCardCell *)self _updateSubtitleLabel];
  }
}

- (void)setSubtitleOverrideString:(id)string
{
  stringCopy = string;
  v5 = self->_subtitleOverrideString;
  v6 = stringCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    subtitleOverrideString = self->_subtitleOverrideString;
    self->_subtitleOverrideString = v8;

    [(PKPaymentPreferenceCardCell *)self _updateSubtitleLabel];
  }

LABEL_9:
}

- (void)setDisclosureString:(id)string
{
  stringCopy = string;
  v5 = self->_disclosureString;
  v6 = stringCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    disclosureString = self->_disclosureString;
    self->_disclosureString = v8;

    [(PKPaymentPreferenceCardCell *)self _updateDisclosureLabel];
  }

LABEL_9:
}

- (void)setAdditionalContextString:(id)string
{
  stringCopy = string;
  v5 = self->_additionalContextString;
  v6 = stringCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    additionalContextString = self->_additionalContextString;
    self->_additionalContextString = v8;

    [(PKPaymentPreferenceCardCell *)self _updateAdditionalContextLabel];
  }

LABEL_9:
}

- (void)_performSwitchToggle:(id)toggle
{
  toggleCopy = toggle;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained paymentPreferenceCardCell:self didChangeSwitchState:{objc_msgSend(toggleCopy, "isOn")}];
  }
}

- (void)_updateSubtitleLabel
{
  if ([(NSString *)self->_subtitleOverrideString length])
  {
    subtitleLabel = self->_subtitleLabel;
    subtitleOverrideString = self->_subtitleOverrideString;

    [(UILabel *)subtitleLabel setText:subtitleOverrideString];
    return;
  }

  isAccessPass = [(PKPaymentPass *)self->_pass isAccessPass];
  pass = self->_pass;
  if (!isAccessPass)
  {
    if ([(PKPaymentPass *)pass isTransitPass])
    {
      peerPaymentBalance2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      minimalFormattedStringValue = PKSanitizedPrimaryAccountRepresentationForPass();
      if ([minimalFormattedStringValue length])
      {
        [peerPaymentBalance2 addObject:minimalFormattedStringValue];
      }

      primaryDisplayableBalance = [(PKTransitBalanceModel *)self->_transitBalanceModel primaryDisplayableBalance];
      [peerPaymentBalance2 safelyAddObject:primaryDisplayableBalance];

      displayableCommutePlanCount = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableCommutePlanCount];
      [peerPaymentBalance2 safelyAddObject:displayableCommutePlanCount];

      if (![peerPaymentBalance2 count])
      {

        goto LABEL_18;
      }

      v12 = [peerPaymentBalance2 componentsJoinedByString:{@", "}];
    }

    else
    {
      if (![(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
      {
        goto LABEL_18;
      }

      peerPaymentBalance = [(PKPaymentPass *)self->_pass peerPaymentBalance];

      if (!peerPaymentBalance)
      {
        goto LABEL_18;
      }

      peerPaymentBalance2 = [(PKPaymentPass *)self->_pass peerPaymentBalance];
      minimalFormattedStringValue = [peerPaymentBalance2 minimalFormattedStringValue];
      v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInA.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
    }

    value = v12;

    if (value)
    {
      goto LABEL_19;
    }

LABEL_18:
    value = PKSanitizedPrimaryAccountRepresentationForPass();
    goto LABEL_19;
  }

  v7 = [(PKPaymentPass *)pass fieldForKey:*MEMORY[0x1E69BC0D8]];
  value = [v7 value];

LABEL_19:
  v14 = self->_availabilityString;
  if ([value length] && -[NSString length](v14, "length"))
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", value, v14];
LABEL_26:
    v16 = v15;
    goto LABEL_27;
  }

  if ([value length])
  {
    v15 = value;
    goto LABEL_26;
  }

  if ([(NSString *)v14 length])
  {
    v15 = v14;
    goto LABEL_26;
  }

  v16 = 0;
LABEL_27:
  defaults = [MEMORY[0x1E69B8CF8] defaults];
  v18 = [defaults defaultBillingAddressForPaymentPass:self->_pass];

  if (self->_showBillingAddress && v18)
  {
    pkSingleLineFormattedContactAddress = [v18 pkSingleLineFormattedContactAddress];
    v20 = self->_subtitleLabel;
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v16, pkSingleLineFormattedContactAddress];
    [(UILabel *)v20 setText:v21];
  }

  else
  {
    [(UILabel *)self->_subtitleLabel setText:v16];
  }
}

- (void)_updateAdditionalContextLabel
{
  [(UILabel *)self->_additionalContextLabel setText:self->_additionalContextString];

  [(PKPaymentPreferenceCardCell *)self setNeedsLayout];
}

- (void)_updateDisclosureLabel
{
  [(UILabel *)self->_disclosureLabel setText:self->_disclosureString];
  [(PKPaymentPreferenceCardCell *)self _calculateAccessoryLayout];

  [(PKPaymentPreferenceCardCell *)self setNeedsLayout];
}

- (void)_updateCellContent
{
  displayLabel = self->_displayLabel;
  localizedDescription = [(PKPaymentPass *)self->_pass localizedDescription];
  [(UILabel *)displayLabel setText:localizedDescription];

  [(PKPaymentPreferenceCardCell *)self _updateSubtitleLabel];
  [(PKPaymentPreferenceCardCell *)self _updateAdditionalContextLabel];
  [(PKPaymentPreferenceCardCell *)self _updateDisclosureLabel];
  v5 = self->_snapshotCounter + 1;
  self->_snapshotCounter = v5;
  if (self->_pass && self->_passSnapshotter)
  {
    PKPassFrontFaceContentSize();
    PKFloatRoundToPixel();
    [(PKPaymentPreferenceCardCell *)self setSeparatorInset:0.0, 64.0, 0.0, 16.0];
    [(UIActivityIndicatorView *)self->_snapshotSpinner startAnimating];
    [(UIImageView *)self->_cardArtView setImage:0];
    passSnapshotter = self->_passSnapshotter;
    pass = self->_pass;
    PKPassFrontFaceContentSize();
    PKFloatRoundToPixel();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__PKPaymentPreferenceCardCell__updateCellContent__block_invoke;
    v13[3] = &unk_1E801CF48;
    v14 = v5;
    v13[4] = self;
    [(PKPassSnapshotter *)passSnapshotter snapshotWithPass:pass size:v13 completion:40.0, v8];
  }

  else
  {
    [(UIImageView *)self->_cardArtView setImage:0];
    v9 = *MEMORY[0x1E69DDCE0];
    v10 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);

    [(PKPaymentPreferenceCardCell *)self setSeparatorInset:v9, v10, v11, v12];
  }
}

void __49__PKPaymentPreferenceCardCell__updateCellContent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PKPaymentPreferenceCardCell__updateCellContent__block_invoke_2;
  block[3] = &unk_1E801CF20;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __49__PKPaymentPreferenceCardCell__updateCellContent__block_invoke_2(uint64_t result)
{
  v7 = *(result + 32);
  if (*(result + 48) != *(v7 + 1128))
  {
    return result;
  }

  v16 = v3;
  v17 = v2;
  v18 = v1;
  v8 = result;
  if (!*(v7 + 1152))
  {
    v13 = *(v7 + 1240);
    v14 = 0;
LABEL_8:
    [v13 setImage:{v14, v4, v16, v17, v18, v5}];
    goto LABEL_9;
  }

  v9 = *(v7 + 1240);
  v10 = *(result + 40);
  if (*(v7 + 1133) != 1)
  {
    v13 = *(v7 + 1240);
    v14 = *(v8 + 40);
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:0.7];
  v12 = [v10 pkui_imageOverlaidWithColor:v11];
  [v9 setImage:v12];

LABEL_9:
  v15 = *(*(v8 + 32) + 1088);

  return [v15 stopAnimating];
}

- (void)_updateLabelTextColors
{
  isUserInteractionEnabled = [(PKPaymentPreferenceCardCell *)self isUserInteractionEnabled];
  displayLabel = self->_displayLabel;
  if (isUserInteractionEnabled)
  {
    [(UILabel *)displayLabel setTextColor:self->_mainLabelColor];
    subtitleLabelColorOverride = self->_subtitleLabelColorOverride;
    if (!subtitleLabelColorOverride)
    {
      subtitleLabelColorOverride = self->_subtitleLabelColor;
    }

    [(UILabel *)self->_subtitleLabel setTextColor:subtitleLabelColorOverride];
    additionalContextLabel = self->_additionalContextLabel;
    subtitleLabelColor = self->_subtitleLabelColorOverride;
    if (!subtitleLabelColor)
    {
      subtitleLabelColor = self->_subtitleLabelColor;
    }
  }

  else
  {
    [(UILabel *)displayLabel setTextColor:self->_disabledMainLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:self->_disabledSubtitleLabelColor];
    additionalContextLabel = self->_additionalContextLabel;
    subtitleLabelColor = self->_disabledSubtitleLabelColor;
  }

  [(UILabel *)additionalContextLabel setTextColor:subtitleLabelColor];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v43 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PKPaymentPreferenceCardCell;
  [(PKTableViewCell *)&v39 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  v7 = v6;
  v9 = v8;
  textLabel = [(PKPaymentPreferenceCardCell *)self textLabel];
  text = [textLabel text];
  v12 = [text length];

  if (v12)
  {
    textLabel2 = [(PKPaymentPreferenceCardCell *)self textLabel];
    font = [textLabel2 font];
    [font xHeight];
    v16 = v15;

    v17 = fmax(v16 + 18.0, 52.0);
  }

  else
  {
    [(UIStackView *)self->_labelStackView spacing];
    v19 = 16.0 - v18;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    arrangedSubviews = [(UIStackView *)self->_labelStackView arrangedSubviews];
    v21 = [arrangedSubviews countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      v24 = *MEMORY[0x1E69DB648];
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          v26 = *(*(&v35 + 1) + 8 * i);
          text2 = [v26 text];
          if ([text2 length])
          {
            v40 = v24;
            font2 = [v26 font];
            v41 = font2;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            [text2 sizeWithAttributes:v29];
            v31 = v30;

            [(UIStackView *)self->_labelStackView spacing];
            v19 = v19 + v31 + v32;
          }
        }

        v22 = [arrangedSubviews countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v22);
    }

    v33 = fmax(v19, 67.0);
    if (v9 >= v33)
    {
      v17 = v9;
    }

    else
    {
      v17 = v33;
    }
  }

  v34 = v7;
  result.height = v17;
  result.width = v34;
  return result;
}

- (void)_calculateAccessoryLayout
{
  v39 = *MEMORY[0x1E69E9840];
  [(PKPaymentPreferenceCardCell *)self bounds];
  v4 = v3;
  v6 = v5;
  accessoryView = [(PKPaymentPreferenceCardCell *)self accessoryView];
  subviews = [accessoryView subviews];
  if ([subviews count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = subviews;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    v11 = 0.0;
    if (v10)
    {
      v12 = v10;
      v13 = *v34;
      v14 = 0.0;
      v15 = 0.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v33 + 1) + 8 * i) sizeThatFits:{v4, v6}];
          v14 = v14 + v18 + 8.0;
          if (v17 > v15)
          {
            v15 = v17;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
      v19 = v14 + -8.0;
    }

    else
    {
      v19 = -8.0;
      v15 = 0.0;
    }

    if (v19 >= 0.0)
    {
      v11 = v19;
    }

    [accessoryView setBounds:{0.0, 0.0, v11, v15}];
    remainder.origin.x = 0.0;
    remainder.origin.y = 0.0;
    remainder.size.width = v11;
    remainder.size.height = v15;
    memset(&slice, 0, sizeof(slice));
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v9;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v27 + 1) + 8 * j);
          [v25 sizeThatFits:{v4, v6, v27}];
          CGRectDivide(remainder, &slice, &remainder, v26, CGRectMaxXEdge);
          PKSizeAlignedInRect();
          [v25 setFrame:?];
          CGRectDivide(remainder, &slice, &remainder, 8.0, CGRectMaxXEdge);
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v22);
    }
  }
}

- (void)_updateAccessoryView
{
  activityIndicatorActive = self->_activityIndicatorActive;
  isAnimating = [(UIActivityIndicatorView *)self->_activityIndicator isAnimating];
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  accessoryViewType = self->_accessoryViewType;
  v13 = v5;
  if (accessoryViewType == 1)
  {
    v7 = &OBJC_IVAR___PKPaymentPreferenceCardCell__actionSwitch;
  }

  else
  {
    if (accessoryViewType != 2)
    {
      goto LABEL_6;
    }

    v7 = &OBJC_IVAR___PKPaymentPreferenceCardCell__disclosureLabel;
    [v5 addSubview:self->_disclosureView];
  }

  [v13 addSubview:*(&self->super.super.super.super.super.super.isa + *v7)];
  v5 = v13;
LABEL_6:
  v8 = !isAnimating;
  if (self->_activityIndicatorActive)
  {
    [v13 addSubview:self->_activityIndicator];
    v5 = v13;
  }

  if (activityIndicatorActive == v8)
  {
    activityIndicator = self->_activityIndicator;
    if (self->_activityIndicatorActive)
    {
      [(UIActivityIndicatorView *)activityIndicator startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)activityIndicator stopAnimating];
    }

    v5 = v13;
  }

  subviews = [v5 subviews];
  v11 = [subviews count];

  if (v11)
  {
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  [(PKPaymentPreferenceCardCell *)self setAccessoryView:v12];
  [(PKPaymentPreferenceCardCell *)self _calculateAccessoryLayout];
  [(PKPaymentPreferenceCardCell *)self setNeedsLayout];
}

- (void)_setUpConstraints
{
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  PKPassFrontFaceContentSize();
  PKFloatRoundToPixel();
  v4 = v3;
  contentView = [(PKPaymentPreferenceCardCell *)self contentView];
  leadingAnchor = [(UIImageView *)self->_cardArtView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v56 addObject:v8];

  heightAnchor = [(UIImageView *)self->_cardArtView heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:v4];
  [v56 addObject:v10];

  widthAnchor = [(UIImageView *)self->_cardArtView widthAnchor];
  v12 = [widthAnchor constraintEqualToConstant:40.0];
  [v56 addObject:v12];

  topAnchor = [(UIImageView *)self->_cardArtView topAnchor];
  topAnchor2 = [contentView topAnchor];
  v15 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:8.0];
  [v56 addObject:v15];

  bottomAnchor = [(UIImageView *)self->_cardArtView bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-8.0];
  [v56 addObject:v18];

  centerYAnchor = [(UIImageView *)self->_cardArtView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];

  LODWORD(v22) = 1132068864;
  [v21 setPriority:v22];
  [v56 addObject:v21];
  centerXAnchor = [(UIActivityIndicatorView *)self->_snapshotSpinner centerXAnchor];
  centerXAnchor2 = [(UIImageView *)self->_cardArtView centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  [v56 addObject:v25];

  centerYAnchor3 = [(UIActivityIndicatorView *)self->_snapshotSpinner centerYAnchor];
  centerYAnchor4 = [(UIImageView *)self->_cardArtView centerYAnchor];
  v28 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:0.0];
  [v56 addObject:v28];

  LODWORD(v29) = 1148846080;
  [(UILabel *)self->_displayLabel setContentHuggingPriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [(UILabel *)self->_displayLabel setContentCompressionResistancePriority:1 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [(UILabel *)self->_subtitleLabel setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v32];
  LODWORD(v33) = 1148846080;
  [(UILabel *)self->_additionalContextLabel setContentHuggingPriority:1 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [(UILabel *)self->_additionalContextLabel setContentCompressionResistancePriority:1 forAxis:v34];
  LODWORD(v35) = 1148846080;
  [(UIStackView *)self->_labelStackView setContentCompressionResistancePriority:1 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [(UIStackView *)self->_labelStackView setContentHuggingPriority:1 forAxis:v36];
  leadingAnchor3 = [(UIStackView *)self->_labelStackView leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_cardArtView trailingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  [v56 addObject:v39];

  topAnchor3 = [(UIStackView *)self->_labelStackView topAnchor];
  topAnchor4 = [contentView topAnchor];
  v42 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:8.0];
  [v56 addObject:v42];

  bottomAnchor3 = [(UIStackView *)self->_labelStackView bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v45 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-8.0];
  [v56 addObject:v45];

  trailingAnchor2 = [(UIStackView *)self->_labelStackView trailingAnchor];
  trailingAnchor3 = [contentView trailingAnchor];
  v48 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:0.0];
  [v56 addObject:v48];

  centerYAnchor5 = [(UIStackView *)self->_labelStackView centerYAnchor];
  centerYAnchor6 = [contentView centerYAnchor];
  v51 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:0.0];

  LODWORD(v52) = 1132068864;
  [v51 setPriority:v52];
  [v56 addObject:v51];
  heightAnchor2 = [contentView heightAnchor];
  v54 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:v4 + 16.0];

  LODWORD(v55) = 1144750080;
  [v54 setPriority:v55];
  [v56 addObject:v54];
  [MEMORY[0x1E696ACD8] activateConstraints:v56];
}

+ (double)textOffset
{
  PKPassFrontFaceContentSize();
  PKFloatRoundToPixel();
  return 64.0;
}

- (PKPaymentPreferenceCardCellAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pk_applyAppearance:(id)appearance
{
  v10.receiver = self;
  v10.super_class = PKPaymentPreferenceCardCell;
  appearanceCopy = appearance;
  [(PKTableViewCell *)&v10 pk_applyAppearance:appearanceCopy];
  textColor = [appearanceCopy textColor];
  [(PKPaymentPreferenceCardCell *)self setMainLabelColor:textColor];

  altTextColor = [appearanceCopy altTextColor];
  [(PKPaymentPreferenceCardCell *)self setSubtitleLabelColor:altTextColor];

  altTextColor2 = [appearanceCopy altTextColor];
  [(PKPaymentPreferenceCardCell *)self setDisabledMainLabelColor:altTextColor2];

  altTextColor3 = [appearanceCopy altTextColor];
  [(PKPaymentPreferenceCardCell *)self setDisabledSubtitleLabelColor:altTextColor3];

  tintColor = [appearanceCopy tintColor];

  [(PKPaymentPreferenceCardCell *)self setTintColor:tintColor];
}

@end