@interface SBUIPasscodeBiometricAuthenticationView
- (SBUIPasscodeBiometricAuthenticationView)initWithFrame:(CGRect)frame layoutDelegate:(id)delegate;
- (SBUIPasscodeBiometricAuthenticationViewDelegate)delegate;
- (SBUIPasscodeBiometricAuthenticationViewLayoutDelegate)layoutDelegate;
- (void)_cancelButtonHit;
- (void)_emergencyCallButtonHit;
- (void)_layoutAuthReasonLabel:(id)label;
- (void)_setTouchIDReason:(id)reason;
- (void)_updateConstraints;
- (void)_updateReasonTextIfPossible;
- (void)_updateSubviews;
- (void)_usePasscodeButtonHit;
- (void)layoutSubviews;
- (void)setAncillaryButtonsVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setFaceIDUsePasscodeButtonVisible:(BOOL)visible;
- (void)setOverrideFaceIDReason:(id)reason;
- (void)setShowsLockIconForFaceID:(BOOL)d;
- (void)setType:(unint64_t)type;
- (void)setUnlockDestination:(id)destination;
@end

@implementation SBUIPasscodeBiometricAuthenticationView

- (void)_updateReasonTextIfPossible
{
  if (self->_unlockDestination)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"TOUCH_ID_REASON" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    v6 = [v3 localizedStringWithFormat:v5, self->_unlockDestination];
    [(SBUIPasscodeBiometricAuthenticationView *)self _setTouchIDReason:v6];
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"TOUCH_ID_NO_REASON" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    [(SBUIPasscodeBiometricAuthenticationView *)self _setTouchIDReason:v5];
  }

  [(SBUIPasscodeBiometricAuthenticationView *)self setNeedsLayout];
}

- (void)_updateSubviews
{
  layer = [(SBUIPasscodeBiometricAuthenticationView *)self layer];
  [layer setAllowsGroupBlending:0];

  type = [(SBUIPasscodeBiometricAuthenticationView *)self type];
  v5 = [(SBUIPasscodeBiometricAuthenticationView *)self type]== 2 || [(SBUIPasscodeBiometricAuthenticationView *)self type]== 3;
  type2 = [(SBUIPasscodeBiometricAuthenticationView *)self type];
  touchIDGlyphLayoutGuide = self->_touchIDGlyphLayoutGuide;
  if (type == 1)
  {
    if (!touchIDGlyphLayoutGuide)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      v9 = self->_touchIDGlyphLayoutGuide;
      self->_touchIDGlyphLayoutGuide = v8;

      [(SBUIPasscodeBiometricAuthenticationView *)self addLayoutGuide:self->_touchIDGlyphLayoutGuide];
    }

    if (!self->_touchIDGlyphView)
    {
      v90 = 0;
      v91 = &v90;
      v92 = 0x2050000000;
      v10 = getPKGlyphViewClass_softClass;
      v93 = getPKGlyphViewClass_softClass;
      if (!getPKGlyphViewClass_softClass)
      {
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __getPKGlyphViewClass_block_invoke;
        v89[3] = &unk_1E789DA88;
        v89[4] = &v90;
        __getPKGlyphViewClass_block_invoke(v89);
        v10 = v91[3];
      }

      v11 = v10;
      _Block_object_dispose(&v90, 8);
      v12 = [[v10 alloc] initWithStyle:4];
      touchIDGlyphView = self->_touchIDGlyphView;
      self->_touchIDGlyphView = v12;

      v14 = self->_touchIDGlyphView;
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      [(PKGlyphView *)v14 updateRasterizationScale:?];

      [(PKGlyphView *)self->_touchIDGlyphView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKGlyphView *)self->_touchIDGlyphView setState:0];
      [(PKGlyphView *)self->_touchIDGlyphView setAlpha:0.8];
      [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_touchIDGlyphView];
    }

    if (!self->_touchIDReasonLabel)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      touchIDReasonLabel = self->_touchIDReasonLabel;
      self->_touchIDReasonLabel = v16;

      v18 = self->_touchIDReasonLabel;
      v19 = [MEMORY[0x1E69DB878] systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*MEMORY[0x1E69DDC40], 18.0)}];
      [(UILabel *)v18 setFont:v19];

      v20 = self->_touchIDReasonLabel;
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v20 setBackgroundColor:clearColor];

      v22 = self->_touchIDReasonLabel;
      v23 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.48];
      [(UILabel *)v22 setTextColor:v23];

      layer2 = [(UILabel *)self->_touchIDReasonLabel layer];
      v25 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      [layer2 setCompositingFilter:v25];

      [(UILabel *)self->_touchIDReasonLabel setTextAlignment:1];
      [(UILabel *)self->_touchIDReasonLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)self->_touchIDReasonLabel setNumberOfLines:0];
      [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_touchIDReasonLabel];
    }
  }

  else
  {
    [(SBUIPasscodeBiometricAuthenticationView *)self removeLayoutGuide:touchIDGlyphLayoutGuide];
    v26 = self->_touchIDGlyphLayoutGuide;
    self->_touchIDGlyphLayoutGuide = 0;

    [(PKGlyphView *)self->_touchIDGlyphView removeFromSuperview];
    v27 = self->_touchIDGlyphView;
    self->_touchIDGlyphView = 0;

    [(UILabel *)self->_touchIDReasonLabel removeFromSuperview];
    v28 = self->_touchIDReasonLabel;
    self->_touchIDReasonLabel = 0;
  }

  backgroundCancelButton = self->_backgroundCancelButton;
  if (type2)
  {
    if (!backgroundCancelButton)
    {
      v30 = [SBUIButton buttonWithType:1];
      v31 = self->_backgroundCancelButton;
      self->_backgroundCancelButton = v30;

      [(UIButton *)self->_backgroundCancelButton addTarget:self action:sel__cancelButtonHit forControlEvents:1];
      [(UIButton *)self->_backgroundCancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)self->_backgroundCancelButton sbui_removePointerInteraction];
      [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_backgroundCancelButton];
      v32 = [SBUIButton buttonWithType:1];
      invisibleUsePasscodeButton = self->_invisibleUsePasscodeButton;
      self->_invisibleUsePasscodeButton = v32;

      [(UIButton *)self->_invisibleUsePasscodeButton addTarget:self action:sel__usePasscodeButtonHit forControlEvents:64];
      [(UIButton *)self->_invisibleUsePasscodeButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)self->_invisibleUsePasscodeButton sbui_removePointerInteraction];
      [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_invisibleUsePasscodeButton];
    }
  }

  else
  {
    [(UIButton *)backgroundCancelButton removeFromSuperview];
    v34 = self->_backgroundCancelButton;
    self->_backgroundCancelButton = 0;
  }

  faceIDReasonLabel = self->_faceIDReasonLabel;
  if (v5)
  {
    if (!faceIDReasonLabel)
    {
      v36 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v37 = self->_faceIDReasonLabel;
      self->_faceIDReasonLabel = v36;

      v38 = self->_faceIDReasonLabel;
      v39 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
      [(UILabel *)v38 setFont:v39];

      [(UILabel *)self->_faceIDReasonLabel setAdjustsFontForContentSizeCategory:1];
      v40 = self->_faceIDReasonLabel;
      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v40 setBackgroundColor:clearColor2];

      v42 = self->_faceIDReasonLabel;
      v43 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.23];
      [(UILabel *)v42 setTextColor:v43];

      layer3 = [(UILabel *)self->_faceIDReasonLabel layer];
      v45 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      [layer3 setCompositingFilter:v45];

      [(UILabel *)self->_faceIDReasonLabel setTextAlignment:1];
      [(UILabel *)self->_faceIDReasonLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)self->_faceIDReasonLabel setNumberOfLines:0];
      [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_faceIDReasonLabel];
    }

    if (!self->_faceIDLabelAndReasonHelperGuide)
    {
      v46 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      faceIDLabelAndReasonHelperGuide = self->_faceIDLabelAndReasonHelperGuide;
      self->_faceIDLabelAndReasonHelperGuide = v46;

      [(SBUIPasscodeBiometricAuthenticationView *)self addLayoutGuide:self->_faceIDLabelAndReasonHelperGuide];
    }

    if (!self->_faceIDUsePasscodeButton)
    {
      v48 = [SBUIPasscodePillButton alloc];
      v49 = [(SBUIPasscodePillButton *)v48 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      faceIDUsePasscodeButton = self->_faceIDUsePasscodeButton;
      self->_faceIDUsePasscodeButton = v49;

      v51 = self->_faceIDUsePasscodeButton;
      v52 = MEMORY[0x1E69DB878];
      v53 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC0] addingSymbolicTraits:0x8000 options:1];
      v54 = [v52 fontWithDescriptor:v53 size:0.0];
      [(SBUIPasscodePillButton *)v51 setFont:v54];

      v55 = self->_faceIDUsePasscodeButton;
      v56 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v57 = [v56 localizedStringForKey:@"USE_PASSCODE" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
      [(SBUIPasscodePillButton *)v55 setTitle:v57];

      [(SBUIPasscodePillButton *)self->_faceIDUsePasscodeButton addTarget:self action:sel__usePasscodeButtonHit forControlEvents:64];
      [(SBUIPasscodePillButton *)self->_faceIDUsePasscodeButton setAlpha:0.0];
      [(SBUIPasscodePillButton *)self->_faceIDUsePasscodeButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_faceIDUsePasscodeButton];
    }
  }

  else
  {
    [(UILabel *)faceIDReasonLabel removeFromSuperview];
    v58 = self->_faceIDReasonLabel;
    self->_faceIDReasonLabel = 0;

    [(SBUIPasscodePillButton *)self->_faceIDUsePasscodeButton removeFromSuperview];
    v59 = self->_faceIDUsePasscodeButton;
    self->_faceIDUsePasscodeButton = 0;

    [(UIImageView *)self->_faceIDLockIcon removeFromSuperview];
    faceIDLockIcon = self->_faceIDLockIcon;
    self->_faceIDLockIcon = 0;

    v61 = self->_faceIDLabelAndReasonHelperGuide;
    self->_faceIDLabelAndReasonHelperGuide = 0;
  }

  touchIDUsePasscodeButton = self->_touchIDUsePasscodeButton;
  if (type == 1)
  {
    if (!touchIDUsePasscodeButton)
    {
      v63 = [SBUIButton buttonWithType:1];
      v64 = self->_touchIDUsePasscodeButton;
      self->_touchIDUsePasscodeButton = v63;

      v65 = self->_touchIDUsePasscodeButton;
      v66 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v67 = [v66 localizedStringForKey:@"USE_PASSCODE" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
      [(SBUIButton *)v65 setTitle:v67 forState:0];

      [(SBUIButton *)self->_touchIDUsePasscodeButton addTarget:self action:sel__usePasscodeButtonHit forControlEvents:64];
      v68 = self->_touchIDUsePasscodeButton;
      v69 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.48];
      [(SBUIButton *)v68 setTitleColor:v69 forState:0];

      layer4 = [(SBUIButton *)self->_touchIDUsePasscodeButton layer];
      v71 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      [layer4 setCompositingFilter:v71];

      [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_touchIDUsePasscodeButton];
    }
  }

  else
  {
    [(SBUIButton *)touchIDUsePasscodeButton removeFromSuperview];
    v72 = self->_touchIDUsePasscodeButton;
    self->_touchIDUsePasscodeButton = 0;
  }

  if (!self->_cancelButtonLayoutGuide)
  {
    v73 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    cancelButtonLayoutGuide = self->_cancelButtonLayoutGuide;
    self->_cancelButtonLayoutGuide = v73;

    [(SBUIPasscodeBiometricAuthenticationView *)self addLayoutGuide:self->_cancelButtonLayoutGuide];
  }

  if (!self->_cancelButton)
  {
    v75 = [SBUIButton buttonWithType:1];
    cancelButton = self->_cancelButton;
    self->_cancelButton = v75;

    v77 = self->_cancelButton;
    v78 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v79 = [v78 localizedStringForKey:@"PASSCODE_CANCEL" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    [(SBUIButton *)v77 setTitle:v79 forState:0];

    [(SBUIButton *)self->_cancelButton addTarget:self action:sel__cancelButtonHit forControlEvents:64];
    v80 = self->_cancelButton;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(SBUIButton *)v80 setTitleColor:whiteColor forState:0];

    [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_cancelButton];
  }

  if (!self->_emergencyCallButton)
  {
    v82 = [SBUIButton buttonWithType:1];
    emergencyCallButton = self->_emergencyCallButton;
    self->_emergencyCallButton = v82;

    v84 = self->_emergencyCallButton;
    v85 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v86 = [v85 localizedStringForKey:@"PASSCODE_EMERGENCY" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    [(SBUIButton *)v84 setTitle:v86 forState:0];

    [(SBUIButton *)self->_emergencyCallButton addTarget:self action:sel__emergencyCallButtonHit forControlEvents:64];
    v87 = self->_emergencyCallButton;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(SBUIButton *)v87 setTitleColor:whiteColor2 forState:0];

    [(SBUIButton *)self->_emergencyCallButton setExclusiveTouch:1];
    [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_emergencyCallButton];
  }
}

- (void)_updateConstraints
{
  v173[4] = *MEMORY[0x1E69E9840];
  type = [(SBUIPasscodeBiometricAuthenticationView *)self type];
  selfCopy = self;
  if (type - 2 < 2)
  {
    emergencyCallButton = self->_emergencyCallButton;
    v173[0] = self->_cancelButton;
    v173[1] = emergencyCallButton;
    invisibleUsePasscodeButton = self->_invisibleUsePasscodeButton;
    v173[2] = self->_backgroundCancelButton;
    v173[3] = invisibleUsePasscodeButton;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v173;
LABEL_5:
    v10 = 4;
    goto LABEL_7;
  }

  if (type == 1)
  {
    cancelButton = self->_cancelButton;
    v172[0] = self->_touchIDUsePasscodeButton;
    v172[1] = cancelButton;
    backgroundCancelButton = self->_backgroundCancelButton;
    v172[2] = self->_emergencyCallButton;
    v172[3] = backgroundCancelButton;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v172;
    goto LABEL_5;
  }

  v11 = self->_emergencyCallButton;
  v171[0] = self->_cancelButton;
  v171[1] = v11;
  v6 = MEMORY[0x1E695DEC8];
  v7 = v171;
  v10 = 2;
LABEL_7:
  [v6 arrayWithObjects:v7 count:v10];
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v12 = v160 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v159 objects:v170 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v160;
    v16 = *MEMORY[0x1E69DDC40];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v160 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v159 + 1) + 8 * i);
        [v18 setUserInteractionEnabled:1];
        [v18 setClipsToBounds:1];
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [v18 setBackgroundColor:clearColor];

        titleLabel = [v18 titleLabel];
        v21 = [MEMORY[0x1E69DB878] systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(v16, 16.0)}];
        [titleLabel setFont:v21];

        [titleLabel setLineBreakMode:5];
        [titleLabel setAdjustsFontSizeToFitWidth:1];
        [titleLabel setMinimumScaleFactor:1.0];
        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v18 setContentHorizontalAlignment:0];
        LODWORD(v22) = 1144750080;
        [v18 setContentCompressionResistancePriority:0 forAxis:v22];
      }

      v14 = [v12 countByEnumeratingWithState:&v159 objects:v170 count:16];
    }

    while (v14);
  }

  p_isa = &selfCopy->super.super.super.super.isa;
  widthAnchor = [(SBUIPasscodePillButton *)selfCopy->_faceIDUsePasscodeButton widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:225.0];

  LODWORD(v26) = 1132068864;
  v156 = v25;
  [v25 setPriority:v26];
  if ([(SBUIPasscodeBiometricAuthenticationView *)selfCopy type]== 2 || [(SBUIPasscodeBiometricAuthenticationView *)selfCopy type]== 3)
  {
    v121 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UILabel *)selfCopy->_faceIDReasonLabel centerXAnchor];
    centerXAnchor2 = [(SBUIPasscodeBiometricAuthenticationView *)selfCopy centerXAnchor];
    v143 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v169[0] = v143;
    topAnchor = [(UILayoutGuide *)selfCopy->_faceIDLabelAndReasonHelperGuide topAnchor];
    topAnchor2 = [(SBUIPasscodeBiometricAuthenticationView *)selfCopy topAnchor];
    v133 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v169[1] = v133;
    heightAnchor = [(UILayoutGuide *)selfCopy->_faceIDLabelAndReasonHelperGuide heightAnchor];
    heightAnchor2 = [(SBUIPasscodeBiometricAuthenticationView *)selfCopy heightAnchor];
    v127 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.48];
    v169[2] = v127;
    centerYAnchor = [(UILabel *)selfCopy->_faceIDReasonLabel centerYAnchor];
    bottomAnchor = [(UILayoutGuide *)selfCopy->_faceIDLabelAndReasonHelperGuide bottomAnchor];
    v119 = [centerYAnchor constraintEqualToAnchor:bottomAnchor];
    v169[3] = v119;
    centerXAnchor3 = [(SBUIPasscodePillButton *)selfCopy->_faceIDUsePasscodeButton centerXAnchor];
    centerXAnchor4 = [(SBUIPasscodeBiometricAuthenticationView *)selfCopy centerXAnchor];
    v113 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v169[4] = v113;
    centerYAnchor2 = [(SBUIPasscodePillButton *)selfCopy->_faceIDUsePasscodeButton centerYAnchor];
    bottomAnchor2 = [(UILayoutGuide *)selfCopy->_faceIDLabelAndReasonHelperGuide bottomAnchor];
    v107 = [centerYAnchor2 constraintEqualToAnchor:bottomAnchor2];
    v169[5] = v107;
    v169[6] = v25;
    widthAnchor2 = [(UIButton *)selfCopy->_invisibleUsePasscodeButton widthAnchor];
    v103 = [widthAnchor2 constraintEqualToConstant:232.0];
    v169[7] = v103;
    heightAnchor3 = [(UIButton *)selfCopy->_invisibleUsePasscodeButton heightAnchor];
    v27 = [heightAnchor3 constraintEqualToConstant:332.0];
    v169[8] = v27;
    centerXAnchor5 = [(UIButton *)selfCopy->_invisibleUsePasscodeButton centerXAnchor];
    centerXAnchor6 = [(SBUIPasscodeBiometricAuthenticationView *)selfCopy centerXAnchor];
    v30 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v169[9] = v30;
    centerYAnchor3 = [(UIButton *)selfCopy->_invisibleUsePasscodeButton centerYAnchor];
    bottomAnchor3 = [(UILayoutGuide *)selfCopy->_faceIDLabelAndReasonHelperGuide bottomAnchor];
    v33 = [centerYAnchor3 constraintEqualToAnchor:bottomAnchor3];
    v169[10] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:11];
    [v121 activateConstraints:v34];

    p_isa = &selfCopy->super.super.super.super.isa;
  }

  if ([p_isa type] == 1)
  {
    v124 = MEMORY[0x1E696ACD8];
    heightAnchor4 = [p_isa[62] heightAnchor];
    v148 = [heightAnchor4 constraintEqualToConstant:66.0];
    v168[0] = v148;
    widthAnchor3 = [p_isa[62] widthAnchor];
    v140 = [widthAnchor3 constraintEqualToConstant:66.0];
    v168[1] = v140;
    centerXAnchor7 = [p_isa[62] centerXAnchor];
    centerXAnchor8 = [p_isa centerXAnchor];
    v132 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v168[2] = v132;
    topAnchor3 = [p_isa[71] topAnchor];
    topAnchor4 = [p_isa topAnchor];
    v126 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v168[3] = v126;
    heightAnchor5 = [p_isa[71] heightAnchor];
    heightAnchor6 = [p_isa heightAnchor];
    v118 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6 multiplier:0.4 constant:33.0];
    v168[4] = v118;
    bottomAnchor4 = [p_isa[62] bottomAnchor];
    bottomAnchor5 = [p_isa[71] bottomAnchor];
    v112 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v168[5] = v112;
    centerXAnchor9 = [p_isa[67] centerXAnchor];
    centerXAnchor10 = [p_isa centerXAnchor];
    v106 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    v168[6] = v106;
    firstBaselineAnchor = [p_isa[67] firstBaselineAnchor];
    bottomAnchor6 = [p_isa[62] bottomAnchor];
    v35 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor6 constant:36.0];
    v168[7] = v35;
    centerXAnchor11 = [p_isa[60] centerXAnchor];
    centerXAnchor12 = [p_isa centerXAnchor];
    v38 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
    v168[8] = v38;
    firstBaselineAnchor2 = [p_isa[60] firstBaselineAnchor];
    bottomAnchor7 = [p_isa[67] bottomAnchor];
    v41 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor7 constant:56.0];
    v168[9] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:10];
    [v124 activateConstraints:v42];

    p_isa = &selfCopy->super.super.super.super.isa;
  }

  if ([p_isa type])
  {
    v135 = MEMORY[0x1E696ACD8];
    topAnchor5 = [p_isa[65] topAnchor];
    topAnchor6 = [p_isa topAnchor];
    v145 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v167[0] = v145;
    leadingAnchor = [p_isa[65] leadingAnchor];
    leadingAnchor2 = [p_isa leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v167[1] = v43;
    trailingAnchor = [p_isa[65] trailingAnchor];
    trailingAnchor2 = [p_isa trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v167[2] = v46;
    bottomAnchor8 = [p_isa[65] bottomAnchor];
    bottomAnchor9 = [p_isa bottomAnchor];
    v49 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-50.0];
    v167[3] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:4];
    [v135 activateConstraints:v50];

    p_isa = &selfCopy->super.super.super.super.isa;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 1) < 2)
    {
      rightAnchor = [p_isa rightAnchor];
      rightAnchor2 = [p_isa[64] rightAnchor];
      v75 = [rightAnchor constraintGreaterThanOrEqualToAnchor:rightAnchor2];
      [v75 setActive:1];

      leftAnchor = [p_isa[63] leftAnchor];
      leftAnchor2 = [p_isa leftAnchor];
      v78 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
      [v78 setActive:1];
    }

    v86 = MEMORY[0x1E696ACD8];
    v87 = _NSDictionaryOfVariableBindings(&cfstr_CancelbuttonEm.isa, p_isa[64], p_isa[63], 0);
    v88 = [v86 constraintsWithVisualFormat:@"[_emergencyCallButton]-(>=10)-[_cancelButton]" options:0x10000 metrics:0 views:v87];
    [v86 activateConstraints:v88];

    layoutDelegate = [p_isa layoutDelegate];
    [layoutDelegate passcodeBiometricAuthenticationViewSideButtonsOffsetFromCenter:p_isa];
    v90 = v89;
    v151 = MEMORY[0x1E696ACD8];
    centerXAnchor13 = [p_isa[63] centerXAnchor];
    centerXAnchor14 = [p_isa centerXAnchor];
    v93 = [centerXAnchor13 constraintEqualToAnchor:centerXAnchor14 constant:-v90];
    v164[0] = v93;
    centerXAnchor15 = [p_isa[64] centerXAnchor];
    centerXAnchor16 = [p_isa centerXAnchor];
    v96 = [centerXAnchor15 constraintEqualToAnchor:centerXAnchor16 constant:v90];
    v164[1] = v96;
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:2];
    [v151 activateConstraints:v97];

    [layoutDelegate passcodeBiometricAuthenticationViewNumberPadAncillaryButtonOffsetFromTopOfScreen:p_isa];
    v99 = v98;
    v59 = MEMORY[0x1E696ACD8];
    centerYAnchor4 = [p_isa[64] centerYAnchor];
    topAnchor7 = [p_isa topAnchor];
    v64 = [centerYAnchor4 constraintEqualToAnchor:topAnchor7 constant:v99];
    v163[0] = v64;
    centerYAnchor5 = [p_isa[63] centerYAnchor];
    centerYAnchor6 = [p_isa[64] centerYAnchor];
    centerXAnchor18 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v163[1] = centerXAnchor18;
    v69 = MEMORY[0x1E695DEC8];
    v65 = topAnchor7;
    v70 = v163;
    goto LABEL_33;
  }

  v53 = MEMORY[0x1E69DDA98];
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    type2 = [p_isa type];

    if (type2)
    {
      v56 = dbl_1A9B2A670[([*v53 activeInterfaceOrientation] - 1) < 2];
      type3 = [p_isa type];
      v58 = &OBJC_IVAR___SBUIPasscodeBiometricAuthenticationView__faceIDReasonLabel;
      if (type3 == 1)
      {
        v58 = &OBJC_IVAR___SBUIPasscodeBiometricAuthenticationView__touchIDUsePasscodeButton;
      }

      v59 = MEMORY[0x1E696ACD8];
      v60 = p_isa[64];
      v61 = *(p_isa + *v58);
      centerXAnchor17 = [v60 centerXAnchor];
      centerYAnchor4 = [p_isa centerXAnchor];
      layoutDelegate = centerXAnchor17;
      v64 = [centerXAnchor17 constraintEqualToAnchor:centerYAnchor4];
      v166[0] = v64;
      v65 = v61;
      centerYAnchor5 = [p_isa[64] topAnchor];
      centerYAnchor6 = [v65 bottomAnchor];
      centerXAnchor18 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:v56];
      v166[1] = centerXAnchor18;
      v69 = MEMORY[0x1E695DEC8];
      v70 = v166;
LABEL_33:
      centerXAnchor19 = [v69 arrayWithObjects:v70 count:2];
      [v59 activateConstraints:centerXAnchor19];
      goto LABEL_34;
    }
  }

  else
  {
  }

  v155 = MEMORY[0x1E696ACD8];
  layoutDelegate = [p_isa[72] topAnchor];
  topAnchor8 = [p_isa topAnchor];
  v146 = [layoutDelegate constraintEqualToAnchor:topAnchor8];
  v165[0] = v146;
  heightAnchor7 = [p_isa[72] heightAnchor];
  [p_isa heightAnchor];
  centerYAnchor5 = v79 = p_isa;
  centerYAnchor6 = [heightAnchor7 constraintEqualToAnchor:centerYAnchor5 multiplier:0.6];
  v165[1] = centerYAnchor6;
  centerXAnchor18 = [p_isa[64] centerXAnchor];
  centerXAnchor19 = [p_isa centerXAnchor];
  v81 = [centerXAnchor18 constraintEqualToAnchor:centerXAnchor19];
  v165[2] = v81;
  topAnchor9 = [v79[64] topAnchor];
  bottomAnchor10 = [v79[72] bottomAnchor];
  v84 = [topAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v165[3] = v84;
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:4];
  [v155 activateConstraints:v85];

  v64 = heightAnchor7;
  centerYAnchor4 = topAnchor8;

  v65 = v146;
LABEL_34:
}

- (SBUIPasscodeBiometricAuthenticationViewLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBUIPasscodeBiometricAuthenticationView;
  [(SBUIPasscodeBiometricAuthenticationView *)&v3 layoutSubviews];
  [(SBUIPasscodeBiometricAuthenticationView *)self _layoutAuthReasonLabel:self->_touchIDReasonLabel];
  [(SBUIPasscodeBiometricAuthenticationView *)self _layoutAuthReasonLabel:self->_faceIDReasonLabel];
}

- (SBUIPasscodeBiometricAuthenticationView)initWithFrame:(CGRect)frame layoutDelegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = SBUIPasscodeBiometricAuthenticationView;
  height = [(SBUIPasscodeBiometricAuthenticationView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(SBUIPasscodeBiometricAuthenticationView *)height setLayoutDelegate:delegateCopy];
  }

  return v11;
}

- (void)_layoutAuthReasonLabel:(id)label
{
  labelCopy = label;
  [labelCopy frame];
  [labelCopy setFrame:?];
  [labelCopy setPreferredMaxLayoutWidth:246.0];
  [labelCopy sizeToFit];
}

- (void)setType:(unint64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(SBUIPasscodeBiometricAuthenticationView *)self _updateReasonTextIfPossible];
    [(SBUIPasscodeBiometricAuthenticationView *)self _updateSubviews];

    [(SBUIPasscodeBiometricAuthenticationView *)self _updateConstraints];
  }
}

- (void)setUnlockDestination:(id)destination
{
  v4 = [destination copy];
  unlockDestination = self->_unlockDestination;
  self->_unlockDestination = v4;

  [(SBUIPasscodeBiometricAuthenticationView *)self _updateReasonTextIfPossible];
}

- (void)setAncillaryButtonsVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_ancillaryButtonsVisible != visible)
  {
    v7[5] = v4;
    v7[6] = v5;
    self->_ancillaryButtonsVisible = visible;
    v6 = 0.3;
    if (!animated)
    {
      v6 = 0.0;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__SBUIPasscodeBiometricAuthenticationView_setAncillaryButtonsVisible_animated___block_invoke;
    v7[3] = &unk_1E789DA38;
    v7[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v7 options:0 animations:v6 completion:0.0];
  }
}

uint64_t __79__SBUIPasscodeBiometricAuthenticationView_setAncillaryButtonsVisible_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 416))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [*(v2 + 512) setAlpha:v3];
  [*(*(a1 + 32) + 480) setAlpha:v3];
  v4 = *(*(a1 + 32) + 504);

  return [v4 setAlpha:v3];
}

- (void)setFaceIDUsePasscodeButtonVisible:(BOOL)visible
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__SBUIPasscodeBiometricAuthenticationView_setFaceIDUsePasscodeButtonVisible___block_invoke;
  v3[3] = &unk_1E789DA60;
  v3[4] = self;
  visibleCopy = visible;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v3 options:0 animations:0.3 completion:0.0];
}

uint64_t __77__SBUIPasscodeBiometricAuthenticationView_setFaceIDUsePasscodeButtonVisible___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 488);
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  if (*(a1 + 40))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [*(*(a1 + 32) + 552) setAlpha:v4];
  v5 = *(*(a1 + 32) + 544);
  if (*(a1 + 40))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  return [v5 setAlpha:v6];
}

- (void)setShowsLockIconForFaceID:(BOOL)d
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (self->_showsLockIconForFaceID != d)
  {
    dCopy = d;
    self->_showsLockIconForFaceID = d;
    v5 = [(SBUIPasscodeBiometricAuthenticationView *)self type]== 2 || [(SBUIPasscodeBiometricAuthenticationView *)self type]== 3;
    faceIDLockIcon = self->_faceIDLockIcon;
    if (dCopy && v5 && !faceIDLockIcon)
    {
      v7 = MEMORY[0x1E69DCAB8];
      v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:46.0];
      v9 = [v7 systemImageNamed:@"lock.fill" withConfiguration:v8];

      v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
      v11 = self->_faceIDLockIcon;
      self->_faceIDLockIcon = v10;

      v12 = self->_faceIDLockIcon;
      v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.23];
      [(UIImageView *)v12 setTintColor:v13];

      [(UIImageView *)self->_faceIDLockIcon setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SBUIPasscodeBiometricAuthenticationView *)self addSubview:self->_faceIDLockIcon];
      v14 = MEMORY[0x1E696ACD8];
      centerXAnchor = [(UIImageView *)self->_faceIDLockIcon centerXAnchor];
      centerXAnchor2 = [(SBUIPasscodeBiometricAuthenticationView *)self centerXAnchor];
      v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v23[0] = v17;
      bottomAnchor = [(UIImageView *)self->_faceIDLockIcon bottomAnchor];
      topAnchor = [(UILabel *)self->_faceIDReasonLabel topAnchor];
      v20 = [bottomAnchor constraintEqualToAnchor:topAnchor];
      v23[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      [v14 activateConstraints:v21];

      [(SBUIPasscodeBiometricAuthenticationView *)self setNeedsUpdateConstraints];
    }

    else
    {
      [(UIImageView *)faceIDLockIcon removeFromSuperview];
      v22 = self->_faceIDLockIcon;
      self->_faceIDLockIcon = 0;
    }
  }
}

- (void)setOverrideFaceIDReason:(id)reason
{
  reasonCopy = reason;
  if (![(NSString *)self->_overrideFaceIDReason isEqualToString:?]&& self->_faceIDReasonLabel)
  {
    v4 = [reasonCopy copy];
    overrideFaceIDReason = self->_overrideFaceIDReason;
    self->_overrideFaceIDReason = v4;

    [(UILabel *)self->_faceIDReasonLabel setText:self->_overrideFaceIDReason];
    [(SBUIPasscodeBiometricAuthenticationView *)self setNeedsLayout];
  }
}

- (void)_setTouchIDReason:(id)reason
{
  reasonCopy = reason;
  if (![(NSString *)self->_touchIDReason isEqualToString:?]&& self->_touchIDReasonLabel)
  {
    v4 = [reasonCopy copy];
    touchIDReason = self->_touchIDReason;
    self->_touchIDReason = v4;

    [(UILabel *)self->_touchIDReasonLabel setText:self->_touchIDReason];
    [(SBUIPasscodeBiometricAuthenticationView *)self setNeedsLayout];
  }
}

- (void)_usePasscodeButtonHit
{
  delegate = [(SBUIPasscodeBiometricAuthenticationView *)self delegate];
  [delegate passcodeBiometricAuthenticationViewUsePasscodeButtonHit:self];
}

- (void)_cancelButtonHit
{
  delegate = [(SBUIPasscodeBiometricAuthenticationView *)self delegate];
  [delegate passcodeBiometricAuthenticationViewCancelButtonHit:self];
}

- (void)_emergencyCallButtonHit
{
  delegate = [(SBUIPasscodeBiometricAuthenticationView *)self delegate];
  [delegate passcodeBiometricAuthenticationViewEmergencyCallButtonHit:self];
}

- (SBUIPasscodeBiometricAuthenticationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end