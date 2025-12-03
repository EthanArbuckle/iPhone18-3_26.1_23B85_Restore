@interface PNPChargingStatusView
- (BOOL)_showBatteryStatus;
- (CGSize)intrinsicContentSize;
- (PNPChargingStatusView)initWithFrame:(CGRect)frame;
- (PNPChargingStatusViewDelegate)delegate;
- (void)_performAnimations:(id)animations completion:(id)completion;
- (void)_setAndAnimateChargingStateToConnecting;
- (void)beginPairing;
- (void)layoutSubviews;
- (void)setDeviceState:(id)state;
- (void)setIsTransitioningToBatteryUI:(BOOL)i;
- (void)setShowsCharging:(BOOL)charging;
- (void)updateChargingState:(int64_t)state;
- (void)updateConstraints;
@end

@implementation PNPChargingStatusView

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = PNPChargingStatusView;
  [(PNPChargingStatusView *)&v41 layoutSubviews];
  deviceState = [(PNPChargingStatusView *)self deviceState];
  [deviceState batteryLevel];
  v5 = v4;
  v6 = v4 * 100.0;
  v7 = vcvtmd_s64_f64(v6);
  v8 = floor(v6);
  text = [(UILabel *)self->_deviceNameLabel text];
  if (!text || (v10 = text, v11 = [deviceState deviceType], v10, v11))
  {
    deviceNameLabel = self->_deviceNameLabel;
    displayName = [deviceState displayName];
    [(UILabel *)deviceNameLabel setText:displayName];
  }

  v14 = 1;
  [(UILabel *)self->_deviceNameLabel setTextAlignment:1];
  percentageLabel = self->_percentageLabel;
  if (v7 < 21)
  {
    v14 = 2;
  }

  v16 = [MEMORY[0x277D75348] batteryTextColorLowPower:v7 < 21];
  [(UILabel *)percentageLabel setTextColor:v16];

  tapToConnectButton = self->_tapToConnectButton;
  defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
  [(PNPConnectButton *)tapToConnectButton setTitleColor:defaultButtonColor forState:0];

  -[_UIBatteryView setChargingState:](self->_batteryView, "setChargingState:", [deviceState isCharging]);
  [(_UIBatteryView *)self->_batteryView setChargePercent:v5];
  [(_UIBatteryView *)self->_batteryView setLowBatteryMode:v14];
  batteryView = self->_batteryView;
  batteryBodyColor = [MEMORY[0x277D75348] batteryBodyColor];
  [(_UIBatteryView *)batteryView setBodyColor:batteryBodyColor];

  v21 = MEMORY[0x277CCABB8];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v8 / 100.0];
  v23 = [v21 localizedStringFromNumber:v22 numberStyle:3];

  [(UILabel *)self->_percentageLabel setText:v23];
  [(UILabel *)self->_percentageLabel setTextAlignment:1];
  if (self->_alphaOutName)
  {
    spinnerView = self->_spinnerView;
LABEL_8:
    v25 = 0.0;
LABEL_9:
    [(UIActivityIndicatorView *)spinnerView setAlpha:v25];
    goto LABEL_10;
  }

  if ([(PNPChargingStatusView *)self _showBatteryStatus])
  {
    spinnerView = self->_spinnerView;
    if (self->_isTransitioningToBatteryUI)
    {
      goto LABEL_8;
    }

    [(UIActivityIndicatorView *)spinnerView stopAnimating];
  }

  else if ([(PNPChargingStatusView *)self chargingState]== 1)
  {
    spinnerView = self->_spinnerView;
    v25 = 1.0;
    goto LABEL_9;
  }

LABEL_10:
  memset(&v40, 0, sizeof(v40));
  CGAffineTransformMakeScale(&v40, 0.8, 0.8);
  chargingState = self->_chargingState;
  if (chargingState > 2)
  {
    if (chargingState == 3 || chargingState == 4)
    {
      v39 = v40;
      [(UILabel *)self->_deviceNameLabel setTransform:&v39];
      v29 = self->_tapToConnectButton;
      v30 = *(MEMORY[0x277CBF2C0] + 16);
      *&v39.a = *MEMORY[0x277CBF2C0];
      *&v39.c = v30;
      *&v39.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(PNPConnectButton *)v29 setTransform:&v39];
      [(UILabel *)self->_deviceNameLabel setAlpha:1.0];
      [(PNPConnectButton *)self->_tapToConnectButton setAlpha:1.0];
      batterySectionView = self->_batterySectionView;
LABEL_26:
      [(PNPConnectButton *)batterySectionView setAlpha:0.0];
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (chargingState == 1)
  {
    v32 = 0.6;
    if (self->_isFadingOutDeviceName)
    {
      v32 = 1.0;
    }

    [(UILabel *)self->_deviceNameLabel setAlpha:v32];
    goto LABEL_25;
  }

  if (chargingState != 2)
  {
LABEL_25:
    v33 = self->_deviceNameLabel;
    v36 = *(MEMORY[0x277CBF2C0] + 16);
    *&v39.a = *MEMORY[0x277CBF2C0];
    *&v39.c = v36;
    *&v39.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(UILabel *)v33 setTransform:&v39, *&v39.tx, v36, *&v39.a];
    v34 = self->_batterySectionView;
    *&v39.a = v38;
    *&v39.c = v37;
    *&v39.tx = v35;
    [(UIView *)v34 setTransform:&v39];
    [(UIView *)self->_batterySectionView setAlpha:0.0];
    batterySectionView = self->_tapToConnectButton;
    goto LABEL_26;
  }

  [(UILabel *)self->_deviceNameLabel setAlpha:1.0];
  [(UIView *)self->_batterySectionView setAlpha:1.0];
  [(PNPConnectButton *)self->_tapToConnectButton setAlpha:0.0];
  v39 = v40;
  [(UILabel *)self->_deviceNameLabel setTransform:&v39];
  v27 = self->_batterySectionView;
  v28 = *(MEMORY[0x277CBF2C0] + 16);
  *&v39.a = *MEMORY[0x277CBF2C0];
  *&v39.c = v28;
  *&v39.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)v27 setTransform:&v39];
LABEL_27:
}

- (void)_performAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  v7 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__PNPChargingStatusView__performAnimations_completion___block_invoke;
  v12[3] = &unk_279A0A128;
  v13 = animationsCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__PNPChargingStatusView__performAnimations_completion___block_invoke_2;
  v10[3] = &unk_279A0A1C0;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = animationsCopy;
  [v7 animateWithDuration:4 delay:v12 usingSpringWithDamping:v10 initialSpringVelocity:0.6 options:0.0 animations:0.7 completion:0.0];
}

uint64_t __55__PNPChargingStatusView__performAnimations_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_showBatteryStatus
{
  deviceState = [(PNPChargingStatusView *)self deviceState];
  v4 = ([deviceState batteryLevelUnknown] & 1) == 0 && -[PNPChargingStatusView showsCharging](self, "showsCharging") && -[PNPChargingStatusView chargingState](self, "chargingState") == 2;

  return v4;
}

- (void)updateChargingState:(int64_t)state
{
  chargingState = self->_chargingState;
  if (!state && chargingState == 4)
  {
    self->_chargingState = 0;
LABEL_4:
    [(PNPChargingStatusView *)self setNeedsUpdateConstraints];
    [(PNPChargingStatusView *)self setNeedsLayout];

    [(PNPChargingStatusView *)self layoutIfNeeded];
    return;
  }

  if (state != 1 || chargingState)
  {
    if (state == 4)
    {
      self->_chargingState = 4;
      return;
    }

    if (state != 3)
    {
      if (state != 2)
      {
        return;
      }

      layer = [(PNPChargingStatusView *)self layer];
      [layer removeAllAnimations];

      layer2 = [(UILabel *)self->_deviceNameLabel layer];
      [layer2 removeAllAnimations];

      self->_chargingState = 2;
      goto LABEL_4;
    }

    self->_chargingState = 3;
    [(PNPConnectButton *)self->_tapToConnectButton setHidden:0];
    tapToConnectButton = self->_tapToConnectButton;
    v8 = PencilPairingUIBundle();
    v9 = [v8 localizedStringForKey:@"INTERNET_CONNECTION_REQUIRED" value:&stru_286FDFDB8 table:0];
    [(PNPConnectButton *)tapToConnectButton setTitle:v9 forState:0];

    titleLabel = [(PNPConnectButton *)self->_tapToConnectButton titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
  }

  else
  {

    [(PNPChargingStatusView *)self _setAndAnimateChargingStateToConnecting];
  }
}

- (void)_setAndAnimateChargingStateToConnecting
{
  if (self->_alphaOutName)
  {
    self->_chargingState = 1;
    [(UILabel *)self->_deviceNameLabel setAlpha:1.0];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __64__PNPChargingStatusView__setAndAnimateChargingStateToConnecting__block_invoke;
    v4[3] = &unk_279A0A060;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:28 delay:v4 options:0 animations:0.8 completion:0.0];
  }

  else
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __64__PNPChargingStatusView__setAndAnimateChargingStateToConnecting__block_invoke_2;
    v3[3] = &unk_279A0A060;
    v3[4] = self;
    [MEMORY[0x277D75D18] _animateWithDuration:4 delay:v3 options:0 animations:0 start:0.8 completion:0.0];
  }
}

uint64_t __64__PNPChargingStatusView__setAndAnimateChargingStateToConnecting__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:0.6];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __64__PNPChargingStatusView__setAndAnimateChargingStateToConnecting__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 520) = 1;
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  deviceNameLabel = self->_deviceNameLabel;
  [(UILabel *)deviceNameLabel frame];
  [(UILabel *)deviceNameLabel sizeThatFits:v4, 1.79769313e308];
  v6 = fmax(self->_maxPillWidth, fmin(fmax(v5 + 60.0, 188.0), 260.0));
  self->_maxPillWidth = v6;
  v7 = 56.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setDeviceState:(id)state
{
  objc_storeStrong(&self->_deviceState, state);
  [(PNPChargingStatusView *)self setNeedsLayout];
  [(PNPChargingStatusView *)self layoutIfNeeded];

  [(PNPChargingStatusView *)self setNeedsUpdateConstraints];
}

- (void)setShowsCharging:(BOOL)charging
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__PNPChargingStatusView_setShowsCharging___block_invoke;
  v3[3] = &unk_279A0A100;
  v3[4] = self;
  chargingCopy = charging;
  [(PNPChargingStatusView *)self _performAnimations:v3 completion:&__block_literal_global_11];
}

uint64_t __42__PNPChargingStatusView_setShowsCharging___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 506) = *(a1 + 40);
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);

  return [v2 setNeedsUpdateConstraints];
}

- (void)setIsTransitioningToBatteryUI:(BOOL)i
{
  self->_isTransitioningToBatteryUI = i;
  [(PNPChargingStatusView *)self setNeedsUpdateConstraints];
  [(PNPChargingStatusView *)self setNeedsLayout];

  [(PNPChargingStatusView *)self layoutIfNeeded];
}

- (void)updateConstraints
{
  [(UILabel *)self->_deviceNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = &OBJC_IVAR___PNPChargingStatusView__centerDeviceNameConstraint;
  v4 = &OBJC_IVAR___PNPChargingStatusView__alignDeviceNameToTopConstraint;
  if ([(PNPChargingStatusView *)self chargingState])
  {
    chargingState = [(PNPChargingStatusView *)self chargingState];
    if (chargingState == 1)
    {
      v6 = &OBJC_IVAR___PNPChargingStatusView__alignDeviceNameToTopConstraint;
    }

    else
    {
      v6 = &OBJC_IVAR___PNPChargingStatusView__centerDeviceNameConstraint;
    }

    if (chargingState != 1)
    {
      v3 = &OBJC_IVAR___PNPChargingStatusView__alignDeviceNameToTopConstraint;
    }

    v4 = v6;
  }

  [(PNPChargingStatusView *)self removeConstraint:*(&self->super.super.super.isa + *v4)];
  [(PNPChargingStatusView *)self addConstraint:*(&self->super.super.super.isa + *v3)];
  v7.receiver = self;
  v7.super_class = PNPChargingStatusView;
  [(PNPChargingStatusView *)&v7 updateConstraints];
  [(NSLayoutConstraint *)self->_tapToConnectButtonWidthConstraint setConstant:self->_maxPillWidth * 0.85];
}

- (PNPChargingStatusView)initWithFrame:(CGRect)frame
{
  v97.receiver = self;
  v97.super_class = PNPChargingStatusView;
  v3 = [(PNPChargingStatusView *)&v97 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v3->_maxPillWidth = 0.0;
  v3->_alphaOutName = 1;
  v3->_didStartBatteryAnimation = 0;
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  deviceNameLabel = v3->_deviceNameLabel;
  v3->_deviceNameLabel = v4;

  v6 = [objc_alloc(MEMORY[0x277D75E10]) initWithSizeCategory:1];
  batteryView = v3->_batteryView;
  v3->_batteryView = v6;

  [(_UIBatteryView *)v3->_batteryView setShowsInlineChargingIndicator:1];
  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  percentageLabel = v3->_percentageLabel;
  v3->_percentageLabel = v8;

  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentAreaView = v3->_contentAreaView;
  v3->_contentAreaView = v10;

  v12 = objc_alloc_init(MEMORY[0x277D75D18]);
  batterySectionView = v3->_batterySectionView;
  v3->_batterySectionView = v12;

  v14 = objc_alloc_init(MEMORY[0x277D750E8]);
  spinnerView = v3->_spinnerView;
  v3->_spinnerView = v14;

  [(UIActivityIndicatorView *)v3->_spinnerView startAnimating];
  [(UIActivityIndicatorView *)v3->_spinnerView setAlpha:0.0];
  [(UIActivityIndicatorView *)v3->_spinnerView setActivityIndicatorViewStyle:2];
  v16 = [PNPConnectButton buttonWithType:1];
  tapToConnectButton = v3->_tapToConnectButton;
  v3->_tapToConnectButton = v16;

  [(PNPConnectButton *)v3->_tapToConnectButton addTarget:v3 action:sel_beginPairing forControlEvents:64];
  v18 = *MEMORY[0x277D743F8];
  v19 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D743F8]];
  titleLabel = [(PNPConnectButton *)v3->_tapToConnectButton titleLabel];
  v96 = v19;
  [titleLabel setFont:v19];

  v21 = PencilPairingUIBundle();
  v22 = [v21 localizedStringForKey:@"APPLE_PENCIL_NAME" value:&stru_286FDFDB8 table:0];
  [(UILabel *)v3->_deviceNameLabel setText:v22];

  v23 = v3->_tapToConnectButton;
  v24 = PencilPairingUIBundle();
  v25 = [v24 localizedStringForKey:@"TAP_TO_CONNECT" value:&stru_286FDFDB8 table:0];
  [(PNPConnectButton *)v23 setTitle:v25 forState:0];

  v95 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
  v94 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:?];
  v26 = [MEMORY[0x277D74300] fontWithDescriptor:0.0 size:?];
  v27 = MEMORY[0x277D74300];
  [v26 pointSize];
  v28 = [v27 systemFontOfSize:? weight:?];

  v29 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:v18];
  [(UILabel *)v3->_deviceNameLabel setFont:v28];
  [(UILabel *)v3->_percentageLabel setFont:v29];
  [(PNPChargingStatusView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v3->_deviceNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_UIBatteryView *)v3->_batteryView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v3->_percentageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v3->_contentAreaView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v3->_batterySectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)v3->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PNPConnectButton *)v3->_tapToConnectButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PNPChargingStatusView *)v3 addSubview:v3->_spinnerView];
  [(PNPChargingStatusView *)v3 addSubview:v3->_contentAreaView];
  [(PNPChargingStatusView *)v3 addSubview:v3->_batterySectionView];
  [(PNPChargingStatusView *)v3 addSubview:v3->_deviceNameLabel];
  [(PNPChargingStatusView *)v3 addSubview:v3->_tapToConnectButton];
  [(UIView *)v3->_batterySectionView addSubview:v3->_batteryView];
  [(UIView *)v3->_batterySectionView addSubview:v3->_percentageLabel];
  array = [MEMORY[0x277CBEB18] array];
  leadingAnchor = [(UIView *)v3->_contentAreaView leadingAnchor];
  leadingAnchor2 = [(PNPChargingStatusView *)v3 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  [array addObject:v33];

  trailingAnchor = [(UIView *)v3->_contentAreaView trailingAnchor];
  trailingAnchor2 = [(PNPChargingStatusView *)v3 trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  [array addObject:v36];

  centerYAnchor = [(UIView *)v3->_contentAreaView centerYAnchor];
  centerYAnchor2 = [(PNPChargingStatusView *)v3 centerYAnchor];
  v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v39];

  leadingAnchor3 = [(UIActivityIndicatorView *)v3->_spinnerView leadingAnchor];
  leadingAnchor4 = [(PNPChargingStatusView *)v3 leadingAnchor];
  v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:15.0];
  [array addObject:v42];

  trailingAnchor3 = [(UIActivityIndicatorView *)v3->_spinnerView trailingAnchor];
  leadingAnchor5 = [(UIView *)v3->_contentAreaView leadingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:-5.0];
  [array addObject:v45];

  centerYAnchor3 = [(UIActivityIndicatorView *)v3->_spinnerView centerYAnchor];
  centerYAnchor4 = [(PNPChargingStatusView *)v3 centerYAnchor];
  v48 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [array addObject:v48];

  topAnchor = [(UILabel *)v3->_deviceNameLabel topAnchor];
  topAnchor2 = [(UIView *)v3->_contentAreaView topAnchor];
  v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
  alignDeviceNameToTopConstraint = v3->_alignDeviceNameToTopConstraint;
  v3->_alignDeviceNameToTopConstraint = v51;

  centerYAnchor5 = [(UILabel *)v3->_deviceNameLabel centerYAnchor];
  centerYAnchor6 = [(UIView *)v3->_contentAreaView centerYAnchor];
  v55 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  centerDeviceNameConstraint = v3->_centerDeviceNameConstraint;
  v3->_centerDeviceNameConstraint = v55;

  [array addObject:v3->_alignDeviceNameToTopConstraint];
  leadingAnchor6 = [(UILabel *)v3->_deviceNameLabel leadingAnchor];
  leadingAnchor7 = [(PNPChargingStatusView *)v3 leadingAnchor];
  v59 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:30.0];
  [array addObject:v59];

  trailingAnchor4 = [(UILabel *)v3->_deviceNameLabel trailingAnchor];
  trailingAnchor5 = [(PNPChargingStatusView *)v3 trailingAnchor];
  v62 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-30.0];
  [array addObject:v62];

  centerXAnchor = [(UIView *)v3->_batterySectionView centerXAnchor];
  centerXAnchor2 = [(UIView *)v3->_contentAreaView centerXAnchor];
  v65 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v65];

  leadingAnchor8 = [(UILabel *)v3->_percentageLabel leadingAnchor];
  leadingAnchor9 = [(UIView *)v3->_batterySectionView leadingAnchor];
  v68 = [leadingAnchor8 constraintGreaterThanOrEqualToAnchor:leadingAnchor9];
  [array addObject:v68];

  lastBaselineAnchor = [(UILabel *)v3->_percentageLabel lastBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)v3->_deviceNameLabel lastBaselineAnchor];
  v71 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:18.0];
  [array addObject:v71];

  bottomAnchor = [(UILabel *)v3->_percentageLabel bottomAnchor];
  bottomAnchor2 = [(UIView *)v3->_contentAreaView bottomAnchor];
  v74 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  [array addObject:v74];

  leadingAnchor10 = [(_UIBatteryView *)v3->_batteryView leadingAnchor];
  trailingAnchor6 = [(UILabel *)v3->_percentageLabel trailingAnchor];
  v77 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor6 constant:8.0];
  [array addObject:v77];

  trailingAnchor7 = [(_UIBatteryView *)v3->_batteryView trailingAnchor];
  trailingAnchor8 = [(UIView *)v3->_batterySectionView trailingAnchor];
  v80 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
  [array addObject:v80];

  centerYAnchor7 = [(_UIBatteryView *)v3->_batteryView centerYAnchor];
  centerYAnchor8 = [(UILabel *)v3->_percentageLabel centerYAnchor];
  v83 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  [array addObject:v83];

  lastBaselineAnchor3 = [(PNPConnectButton *)v3->_tapToConnectButton lastBaselineAnchor];
  lastBaselineAnchor4 = [(UILabel *)v3->_deviceNameLabel lastBaselineAnchor];
  v86 = [lastBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor4 constant:18.0];
  [array addObject:v86];

  centerXAnchor3 = [(PNPConnectButton *)v3->_tapToConnectButton centerXAnchor];
  centerXAnchor4 = [(PNPChargingStatusView *)v3 centerXAnchor];
  v89 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [array addObject:v89];

  widthAnchor = [(PNPConnectButton *)v3->_tapToConnectButton widthAnchor];
  v91 = [widthAnchor constraintEqualToConstant:180.0];
  tapToConnectButtonWidthConstraint = v3->_tapToConnectButtonWidthConstraint;
  v3->_tapToConnectButtonWidthConstraint = v91;

  [array addObject:v3->_tapToConnectButtonWidthConstraint];
  [MEMORY[0x277CCAAD0] activateConstraints:array];
  if (_UISolariumEnabled())
  {
    [(UIView *)v3 ppuiSetGlassBackground];
    [(UIView *)v3 ppuiSetCapsuleCornerMaskingConfiguration];
  }

  return v3;
}

- (void)beginPairing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapOnConnectButton];
}

- (PNPChargingStatusViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end