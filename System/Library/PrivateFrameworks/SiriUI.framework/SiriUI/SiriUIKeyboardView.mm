@interface SiriUIKeyboardView
+ (double)_paddingBetweenKeyboardAndInputAccessoryViewWhenMinimized:(BOOL)a3;
+ (double)_textFieldHeight;
- (BOOL)_showsReportBugButton;
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGRect)_defaultFrame;
- (CGSize)intrinsicContentSize;
- (SiriUIKeyboardView)init;
- (SiriUIKeyboardView)initWithDelegate:(id)a3;
- (SiriUIKeyboardView)initWithFrame:(CGRect)a3 inputViewStyle:(int64_t)a4;
- (SiriUIKeyboardViewDelegate)delegate;
- (UIEdgeInsets)safeAreaInsets;
- (double)_visibleHeightFromNotification:(id)a3;
- (id)_createHelpButton:(CGRect)a3;
- (id)_createTextFieldWithFrame:(CGRect)a3;
- (void)_audioRouteButtonTapped:(id)a3;
- (void)_configureAudioRoutePickerForAccessibility;
- (void)_configureReportBugButton;
- (void)_configureReportButtonForAccessibility;
- (void)_createReportBugButtonWithTemplateImage:(id)a3;
- (void)_helpButtonLongPressed:(id)a3;
- (void)_helpButtonTapped:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_loadReportBugButtonTemplateImageInBackgroundWithCompletion:(id)a3;
- (void)_reportBugButtonLongPressed;
- (void)_reportBugButtonTapped;
- (void)_undoTextFieldEdit:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setShowAudioRoutePicker:(BOOL)a3;
@end

@implementation SiriUIKeyboardView

+ (double)_textFieldHeight
{
  v2 = [a1 _textFieldFont];
  [v2 _scaledValueForValue:36.0];
  UIRoundToViewScale();
  v4 = v3;

  return v4;
}

- (SiriUIKeyboardView)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SiriUIKeyboardView *)self init];
  v6 = v5;
  if (v5)
  {
    [(SiriUIKeyboardView *)v5 setDelegate:v4];
  }

  return v6;
}

- (SiriUIKeyboardView)init
{
  self->_verticalCompensation = 0.0;
  [(SiriUIKeyboardView *)self _defaultFrame];

  return [(SiriUIKeyboardView *)self initWithFrame:1 inputViewStyle:?];
}

- (SiriUIKeyboardView)initWithFrame:(CGRect)a3 inputViewStyle:(int64_t)a4
{
  v16.receiver = self;
  v16.super_class = SiriUIKeyboardView;
  v4 = [(UIInputView *)&v16 initWithFrame:1 inputViewStyle:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [(SiriUIKeyboardView *)v4 _createHelpButton:*MEMORY[0x277CBF3A0], v7, v8, v9];
    helpButton = v5->_helpButton;
    v5->_helpButton = v10;

    v12 = [(SiriUIKeyboardView *)v5 _createTextFieldWithFrame:v6, v7, v8, v9];
    textField = v5->_textField;
    v5->_textField = v12;

    [(UITextField *)v5->_textField setInputAccessoryView:v5];
    [(SiriUIKeyboardView *)v5 _configureReportBugButton];
    [(SiriUIKeyboardView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SiriUIKeyboardView *)v5 addSubview:v5->_helpButton];
    [(SiriUIKeyboardView *)v5 addSubview:v5->_textField];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v5 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [v14 addObserver:v5 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v5;
}

- (CGRect)_defaultFrame
{
  [(SiriUIKeyboardView *)self bounds];
  Width = CGRectGetWidth(v8);
  [objc_opt_class() _keyboardAccessoryViewHeight];
  v4 = v3;
  v5 = 0.0;
  v6 = 0.0;
  v7 = Width;
  result.size.height = v4;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SiriUIKeyboardView;
  [(SiriUIKeyboardView *)&v3 safeAreaInsetsDidChange];
  [(SiriUIKeyboardView *)self invalidateIntrinsicContentSize];
}

- (UIEdgeInsets)safeAreaInsets
{
  v17.receiver = self;
  v17.super_class = SiriUIKeyboardView;
  [(SiriUIKeyboardView *)&v17 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v7 > 0.0)
  {
    v11 = [(SiriUIKeyboardView *)self superview];
    [v11 safeAreaInsets];
    v8 = v12;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [(SiriUIKeyboardView *)self safeAreaInsets];
  v4 = v3;
  [objc_opt_class() _keyboardAccessoryViewHeight];
  v6 = v4 + v5;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v8 = ceil(v2);
  v9 = ceil(v6);
  if (v10 < 2.0)
  {
    v6 = v9;
    v2 = v8;
  }

  v11 = v2;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)becomeFirstResponder
{
  v4.receiver = self;
  v4.super_class = SiriUIKeyboardView;
  [(SiriUIKeyboardView *)&v4 becomeFirstResponder];
  return [(UITextField *)self->_textField becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v3 = [(UITextField *)self->_textField resignFirstResponder];
  v5.receiver = self;
  v5.super_class = SiriUIKeyboardView;
  [(SiriUIKeyboardView *)&v5 resignFirstResponder];
  return v3;
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = SiriUIKeyboardView;
  [(CGSize *)&rect.size layoutSubviews];
  [(SiriUIKeyboardView *)self frame];
  v4 = v3;
  v75 = v5;
  v7 = v6;
  v9 = v8;
  [(SiriUIKeyboardView *)self safeAreaInsets];
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [v14 scaledValueForValue:10.0];
  v16 = v15;

  v17 = [(UITextField *)self->_textField layer];
  [v17 setCornerRadius:v16];

  v18 = SiriUIIsCompactWidth();
  v19 = 25.0;
  if (v18)
  {
    v19 = 15.0;
  }

  if (v19 < v11)
  {
    v19 = v11;
  }

  v76 = v19;
  [(SiriUIHelpButton *)self->_helpButton frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v77 = v7;
  v78 = v4;
  v89.origin.x = v4;
  v89.origin.y = v75;
  v89.size.width = v7;
  v82 = v9;
  v89.size.height = v9;
  v28 = CGRectGetHeight(v89) - v13;
  v90.origin.x = v21;
  v90.origin.y = v23;
  v73 = v27;
  v74 = v25;
  v90.size.width = v25;
  v90.size.height = v27;
  v29 = v28 - CGRectGetHeight(v90);
  verticalCompensation = self->_verticalCompensation;
  v32 = *MEMORY[0x277CBF3A0];
  v31 = *(MEMORY[0x277CBF3A0] + 8);
  v33 = *(MEMORY[0x277CBF3A0] + 16);
  audioRoutePickerButton = self->_audioRoutePickerButton;
  v35 = floor(v29 * 0.5);
  v86 = *(MEMORY[0x277CBF3A0] + 24);
  width = v33;
  rect.origin.x = *MEMORY[0x277CBF3A0];
  rect.origin.y = v86;
  v85 = v31;
  v72 = verticalCompensation;
  if (audioRoutePickerButton)
  {
    v31 = *(MEMORY[0x277CBF3A0] + 8);
    rect.origin.x = *MEMORY[0x277CBF3A0];
    rect.origin.y = *(MEMORY[0x277CBF3A0] + 24);
    width = *(MEMORY[0x277CBF3A0] + 16);
    if (([(SiriUIAudioRoutePickerButton *)audioRoutePickerButton isHidden]& 1) == 0)
    {
      [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton frame];
      rect.origin.x = v36;
      rect.origin.y = v37;
      v38 = v37;
      v71 = v35;
      v40 = v39;
      v42 = v41;
      v91.origin.x = v78;
      v91.origin.y = v75;
      v91.size.width = v77;
      v91.size.height = v82;
      v79 = v33;
      MaxX = CGRectGetMaxX(v91);
      v92.origin.x = rect.origin.x;
      v92.origin.y = v38;
      v92.size.width = v40;
      v92.size.height = v42;
      v44 = MaxX - CGRectGetWidth(v92) - v76;
      v93.origin.x = v78;
      v93.origin.y = v75;
      v93.size.width = v77;
      v93.size.height = v82;
      v45 = CGRectGetHeight(v93) - v13;
      v94.origin.x = v44;
      v94.origin.y = rect.origin.y;
      v94.size.width = v40;
      v35 = v71;
      width = v94.size.width;
      rect.origin.x = v44;
      rect.origin.y = v42;
      v94.size.height = v42;
      v46 = v45 - CGRectGetHeight(v94);
      v33 = v79;
      v31 = self->_verticalCompensation + v75 + floor(v46 * 0.5);
    }
  }

  v47 = v75 + v35;
  reportBugButton = self->_reportBugButton;
  if (reportBugButton)
  {
    v80 = v75 + v35;
    [(SiriUIContentButton *)reportBugButton frame];
    v50 = v49;
    v52 = v51;
    v33 = v53;
    v55 = v54;
    v95.size.width = v77;
    v95.origin.x = v78;
    v95.origin.y = v75;
    v95.size.height = v82;
    v56 = CGRectGetHeight(v95) - v13;
    v96.origin.x = v50;
    v96.origin.y = v52;
    v96.size.height = v55;
    v96.size.width = v33;
    v86 = v55;
    v85 = self->_verticalCompensation + v75 + floor((v56 - CGRectGetHeight(v96)) * 0.5);
    v97.origin.x = rect.origin.x;
    v97.origin.y = v31;
    v97.size.width = width;
    v97.size.height = rect.origin.y;
    if (CGRectIsEmpty(v97))
    {
      v98.size.width = v77;
      v98.origin.x = v78;
      v98.origin.y = v75;
      v57 = v82;
      v98.size.height = v82;
      v58 = v76;
      v84 = CGRectGetMaxX(v98) - v33 - v76;
    }

    else
    {
      v99.size.width = width;
      v99.origin.x = rect.origin.x;
      v99.origin.y = v31;
      v99.size.height = rect.origin.y;
      v58 = v76;
      v59 = CGRectGetMinX(v99) - v76;
      v100.origin.x = v50;
      v100.origin.y = v85;
      v100.size.width = v33;
      v100.size.height = v55;
      v84 = v59 - CGRectGetWidth(v100);
      v57 = v82;
    }

    verticalCompensation = v72;
    v47 = v80;
  }

  else
  {
    v84 = v32;
    v58 = v76;
    v57 = v82;
  }

  v60 = verticalCompensation + v47;
  [objc_opt_class() _textFieldHeight];
  v62 = v61;
  v101.size.width = width;
  v101.origin.x = rect.origin.x;
  v101.origin.y = v31;
  v101.size.height = rect.origin.y;
  v81 = v33;
  v83 = v31;
  if (CGRectIsEmpty(v101))
  {
    v102.origin.x = v84;
    v102.origin.y = v85;
    v102.size.width = v33;
    v102.size.height = v86;
    if (CGRectIsEmpty(v102))
    {
      v103.size.width = v77;
      v103.origin.x = v78;
      v103.origin.y = v75;
      v103.size.height = v57;
      MinX = CGRectGetMaxX(v103);
LABEL_27:
      v70 = MinX;
      v108.origin.x = v58;
      v108.origin.y = v60;
      v108.size.width = v74;
      v65 = v73;
      v108.size.height = v73;
      v64 = v70 - CGRectGetMaxX(v108) + v58 * -2.0;
      goto LABEL_28;
    }
  }

  v104.size.width = width;
  v104.origin.x = rect.origin.x;
  v104.origin.y = v31;
  v104.size.height = rect.origin.y;
  if (!CGRectIsEmpty(v104))
  {
    v105.origin.x = v84;
    v105.origin.y = v85;
    v105.size.width = v33;
    v105.size.height = v86;
    if (!CGRectIsEmpty(v105))
    {
      x = v84;
LABEL_25:
      v68 = v85;
      y = v86;
      v67 = v33;
      goto LABEL_26;
    }
  }

  v106.size.width = width;
  v106.origin.x = rect.origin.x;
  v106.origin.y = v31;
  v106.size.height = rect.origin.y;
  if (!CGRectIsEmpty(v106))
  {
    v67 = width;
    x = rect.origin.x;
    v68 = v31;
    y = rect.origin.y;
LABEL_26:
    MinX = CGRectGetMinX(*&x);
    goto LABEL_27;
  }

  v107.origin.y = v85;
  v107.origin.x = v84;
  v107.size.width = v33;
  v107.size.height = v86;
  if (!CGRectIsEmpty(v107))
  {
    x = v84;
    goto LABEL_25;
  }

  v64 = *MEMORY[0x277CBF3A8];
  v62 = *(MEMORY[0x277CBF3A8] + 8);
  v65 = v73;
LABEL_28:
  v109.origin.x = v58;
  v109.origin.y = v60;
  v109.size.width = v74;
  v109.size.height = v65;
  [(UITextField *)self->_textField setFrame:v58 + CGRectGetMaxX(v109), self->_verticalCompensation + 10.0, v64, v62];
  [(SiriUIHelpButton *)self->_helpButton setFrame:v58, v60, v74, v65];
  [(SiriUIContentButton *)self->_reportBugButton setFrame:v84, v85, v81, v86];
  [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setFrame:rect.origin.x, v83, width, rect.origin.y];
}

+ (double)_paddingBetweenKeyboardAndInputAccessoryViewWhenMinimized:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  result = 10.0;
  v7 = 5.0;
  if (!v3)
  {
    v7 = 10.0;
  }

  v8 = floor(v7);
  if (v5 == 1)
  {
    return v8;
  }

  return result;
}

- (id)_createHelpButton:(CGRect)a3
{
  v4 = [SiriUIHelpButton buttonWithHelpImageMask:a3.origin.x];
  [v4 setAlpha:0.0];
  [v4 _setTouchInsets:{-0.5, -0.5, -0.5, -0.5}];
  [v4 setEmphasized:1];
  v5 = [v4 imageView];
  [v5 setContentMode:4];

  v6 = [v4 layer];
  [v6 setHitTestsAsOpaque:1];

  [v4 sizeToFit];
  [v4 frame];
  v8 = v7;
  v10 = v9;
  v11 = [v4 imageView];
  [v11 size];
  v13 = v12 + 0.0;
  [objc_opt_class() _keyboardAccessoryViewHeight];
  v15 = v14;

  [v4 setFrame:{v8, v10, v13, v15}];
  [v4 addTarget:self action:sel__helpButtonTapped_ forControlEvents:64];
  v16 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__helpButtonLongPressed_];
  [v4 addGestureRecognizer:v16];

  return v4;
}

- (void)_helpButtonTapped:(id)a3
{
  v4 = [(SiriUIKeyboardView *)self delegate];
  [v4 keyboardViewDidReceiveHelpButtonAction:self];
}

- (void)_helpButtonLongPressed:(id)a3
{
  if ([a3 state] == 3)
  {
    [(UITextField *)self->_textField resignFirstResponder];
    v4 = [(SiriUIKeyboardView *)self delegate];
    [v4 keyboardViewDidReceiveHelpButtonAction:self];
  }
}

- (id)_createTextFieldWithFrame:(CGRect)a3
{
  v4 = [[SiriUITextField alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SiriUITextField *)v4 setDelegate:self];
  [(SiriUITextField *)v4 setDelegate:self];
  [(SiriUITextField *)v4 setKeyboardType:0];
  [(SiriUITextField *)v4 setKeyboardAppearance:1];
  [(SiriUITextField *)v4 setReturnKeyType:9];
  [(SiriUITextField *)v4 setEnablesReturnKeyAutomatically:1];
  [(SiriUITextField *)v4 setEnablesReturnKeyOnNonWhiteSpaceContent:1];
  v5 = [MEMORY[0x277D75348] siriui_lightTextColor];
  [(SiriUITextField *)v4 setTextColor:v5];

  v6 = [objc_opt_class() inputAccessoryViewBackgroundColor];
  [(SiriUITextField *)v4 setBackgroundColor:v6];

  v7 = [MEMORY[0x277D75348] siriui_lightInsertionPointColor];
  [(SiriUITextField *)v4 setInsertionPointColor:v7];

  v8 = [objc_opt_class() _textFieldFont];
  [(SiriUITextField *)v4 setFont:v8];

  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
  v10 = [v9 siriUILocalizedStringForKey:@"SIRI_TEXTINPUT_PLACEHOLDER" value:@"Type to Siri" table:0];
  [(SiriUITextField *)v4 setPlaceholder:v10];
  v11 = [(SiriUITextField *)v4 _placeholderLabel];
  v12 = [(SiriUITextField *)v4 textColor];
  v13 = [v12 colorWithAlphaComponent:0.45];
  [v11 setTextColor:v13];

  v14 = [(SiriUITextField *)v4 font];
  [v11 setFont:v14];

  [v11 setAdjustsFontSizeToFitWidth:1];
  [v11 setBaselineAdjustment:1];
  [v11 setMinimumScaleFactor:0.01];
  LODWORD(v15) = 1132068864;
  [(SiriUITextField *)v4 setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1132068864;
  [(SiriUITextField *)v4 setContentCompressionResistancePriority:0 forAxis:v16];
  [(SiriUIKeyboardView *)self setClipsToBounds:0];
  if (SiriLanguageIsRTL())
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  [(SiriUITextField *)v4 setTextAlignment:v17];
  [(SiriUITextField *)v4 setAutocorrectionType:0];
  [(SiriUITextField *)v4 setSpellCheckingType:0];
  [(SiriUITextField *)v4 setAutocapitalizationType:2];

  return v4;
}

- (void)_configureAudioRoutePickerForAccessibility
{
  [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setIsAccessibilityElement:1];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v6 = v5 + 0.0;
  [objc_opt_class() _keyboardAccessoryViewHeight];
  [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setFrame:v3, v4, v6, v7];
  v8 = [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton imageView];
  [v8 setContentMode:4];
}

- (void)setShowAudioRoutePicker:(BOOL)a3
{
  if (a3 && !self->_audioRoutePickerButton)
  {
    v5 = [SiriUIAudioRoutePickerButton alloc];
    v6 = [(SiriUIAudioRoutePickerButton *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    audioRoutePickerButton = self->_audioRoutePickerButton;
    self->_audioRoutePickerButton = v6;

    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton addTarget:self action:sel__audioRouteButtonTapped_ forControlEvents:64];
    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton setAlpha:0.0];
    [(SiriUIAudioRoutePickerButton *)self->_audioRoutePickerButton _setTouchInsets:-0.5, -0.5, -0.5, -0.5];
    [(SiriUIKeyboardView *)self addSubview:self->_audioRoutePickerButton];
    [(SiriUIKeyboardView *)self _configureAudioRoutePickerForAccessibility];
    [(SiriUIKeyboardView *)self setNeedsLayout];
  }

  v8 = self->_audioRoutePickerButton;
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__SiriUIKeyboardView_setShowAudioRoutePicker___block_invoke;
    v16[3] = &unk_279C5A138;
    v17 = v9;
    v18 = a3;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__SiriUIKeyboardView_setShowAudioRoutePicker___block_invoke_2;
    v12[3] = &unk_279C5A160;
    v15 = a3;
    v13 = v17;
    v14 = self;
    v11 = v17;
    [v10 animateWithDuration:v16 animations:v12 completion:0.2];
  }
}

uint64_t __46__SiriUIKeyboardView_setShowAudioRoutePicker___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) removeFromSuperview];
    v2 = *(a1 + 40);
    v3 = *(v2 + 632);
    if (v3 == *(a1 + 32))
    {
      *(v2 + 632) = 0;
    }
  }

  v4 = *(a1 + 40);

  return [v4 setNeedsLayout];
}

- (void)_audioRouteButtonTapped:(id)a3
{
  v4 = [(SiriUIKeyboardView *)self delegate];
  [v4 keyboardViewDidReceiveAudioRouteAction:self];
}

- (void)_reportBugButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained keyboardViewDidReceiveReportBugAction:self];
}

- (void)_reportBugButtonLongPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained keyboardViewDidReceiveBugButtonLongPress:self];
}

- (BOOL)_showsReportBugButton
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v2 debugButtonIsEnabled])
  {
    v3 = AFIsInternalInstall();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_configureReportBugButton
{
  if (!self->_reportBugButton)
  {
    if ([(SiriUIKeyboardView *)self _showsReportBugButton])
    {
      objc_initWeak(&location, self);
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __47__SiriUIKeyboardView__configureReportBugButton__block_invoke;
      v3[3] = &unk_279C5A188;
      objc_copyWeak(&v4, &location);
      [(SiriUIKeyboardView *)self _loadReportBugButtonTemplateImageInBackgroundWithCompletion:v3];
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

void __47__SiriUIKeyboardView__configureReportBugButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SiriUIKeyboardView__configureReportBugButton__block_invoke_2;
  v5[3] = &unk_279C59EA0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __47__SiriUIKeyboardView__configureReportBugButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _createReportBugButtonWithTemplateImage:*(a1 + 32)];
}

- (void)_configureReportButtonForAccessibility
{
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
  v3 = [v10 siriUILocalizedStringForKey:@"SIRI_TEXTINPUT_REPORTBUGBUTTON_TITLE" value:@"Report" table:0];
  [(SiriUIContentButton *)self->_reportBugButton setAccessibilityLabel:v3];
  [(SiriUIContentButton *)self->_reportBugButton setIsAccessibilityElement:1];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  [(SiriUIContentButton *)self->_reportBugButton sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v7 = v6 + 0.0;
  [objc_opt_class() _keyboardAccessoryViewHeight];
  [(SiriUIContentButton *)self->_reportBugButton setFrame:v4, v5, v7, v8];
  v9 = [(SiriUIContentButton *)self->_reportBugButton imageView];
  [v9 setContentMode:4];
}

- (void)_createReportBugButtonWithTemplateImage:(id)a3
{
  if (!self->_reportBugButton)
  {
    v4 = [SiriUIContentButton buttonWithImageTemplate:a3 style:0];
    reportBugButton = self->_reportBugButton;
    self->_reportBugButton = v4;

    [(SiriUIContentButton *)self->_reportBugButton _setTouchInsets:-0.5, -0.5, -0.5, -0.5];
    [(SiriUIContentButton *)self->_reportBugButton setAlpha:1.0];
    [(SiriUIContentButton *)self->_reportBugButton addTarget:self action:sel__reportBugButtonTapped forControlEvents:64];
    v6 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__reportBugButtonLongPressed];
    [(SiriUIContentButton *)self->_reportBugButton addGestureRecognizer:v6];
    [(SiriUIKeyboardView *)self addSubview:self->_reportBugButton];
    [(SiriUIKeyboardView *)self _configureReportButtonForAccessibility];
    [(SiriUIContentButton *)self->_reportBugButton setHidden:0];
    [(SiriUIKeyboardView *)self setNeedsLayout];
  }
}

- (void)_loadReportBugButtonTemplateImageInBackgroundWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SiriUIKeyboardView__loadReportBugButtonTemplateImageInBackgroundWithCompletion___block_invoke;
  block[3] = &unk_279C5A1B0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __82__SiriUIKeyboardView__loadReportBugButtonTemplateImageInBackgroundWithCompletion___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CCA8D8] bundleWithPath:@"/AppleInternal/Library/Assistant/UIPlugins/Debug.siriUIBundle"];
  if (objc_claimAutoreleasedReturnValue())
  {
    v2 = [MEMORY[0x277D755B8] imageNamed:@"radarBug" inBundle:?];
    v3 = [v2 imageWithRenderingMode:2];

    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  return MEMORY[0x2821F97C8]();
}

- (void)_undoTextFieldEdit:(id)a3
{
  v8 = a3;
  v4 = [(SiriUIKeyboardView *)self undoManager];
  v5 = [v4 isUndoRegistrationEnabled];

  if (v5)
  {
    v6 = [(SiriUIKeyboardView *)self undoManager];
    v7 = [(UITextField *)self->_textField text];
    [v6 registerUndoWithTarget:self selector:sel__undoTextFieldEdit_ object:v7];

    [(UITextField *)self->_textField setText:v8];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(SiriUIKeyboardView *)self undoManager];
  v6 = [v5 isUndoRegistrationEnabled];

  if (v6)
  {
    v7 = [(SiriUIKeyboardView *)self undoManager];
    v8 = [v4 text];
    [v7 registerUndoWithTarget:self selector:sel__undoTextFieldEdit_ object:v8];
  }

  return 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  if (!a4.location && a4.length == 1)
  {
    v5 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v5 logEventWithType:1446 machAbsoluteTime:mach_absolute_time() context:0];
  }

  return 1;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF158];
  v4 = a3;
  v5 = [v3 sharedAnalytics];
  v6 = mach_absolute_time();
  v10 = @"text";
  v7 = [v4 text];

  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 logEventWithType:1448 machAbsoluteTime:v6 context:v8];

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CEF158];
  v5 = a3;
  v6 = [v4 sharedAnalytics];
  v7 = mach_absolute_time();
  v13 = @"text";
  v8 = [v5 text];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v6 logEventWithType:1447 machAbsoluteTime:v7 context:v9];

  v10 = [(SiriUIKeyboardView *)self delegate];
  v11 = [v5 text];

  [v10 keyboardView:self didReceiveText:v11];
  return 1;
}

- (void)_keyboardWillShow:(id)a3
{
  [(SiriUIKeyboardView *)self _visibleHeightFromNotification:a3];
  v5 = v4;
  [objc_opt_class() _keyboardAccessoryViewHeight];
  if (v5 > v6)
  {
    [objc_opt_class() _paddingBetweenKeyboardAndInputAccessoryViewWhenMinimized:0];
    self->_interKeyboardAccessoryViewPadding = v7;
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];
    v10 = 0.0;
    if (v9 == 1)
    {
      v10 = floor(self->_interKeyboardAccessoryViewPadding * 0.5);
    }

    self->_verticalCompensation = v10;

    [(SiriUIKeyboardView *)self setNeedsLayout];
  }
}

- (void)_keyboardWillHide:(id)a3
{
  [(SiriUIKeyboardView *)self _visibleHeightFromNotification:a3];
  v5 = v4;
  [objc_opt_class() _keyboardAccessoryViewHeight];
  if (v5 == v6)
  {
    [objc_opt_class() _paddingBetweenKeyboardAndInputAccessoryViewWhenMinimized:1];
    self->_interKeyboardAccessoryViewPadding = floor(v7);
    self->_verticalCompensation = 0.0;

    [(SiriUIKeyboardView *)self setNeedsLayout];
  }
}

- (double)_visibleHeightFromNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x277D76BB8]];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 bounds];
  MaxY = CGRectGetMaxY(v21);

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  if (CGRectGetHeight(v22) == 0.0 || (v23.origin.x = v6, v23.origin.y = v8, v23.size.width = v10, v23.size.height = v12, CGRectGetMaxY(v23) >= MaxY))
  {
    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    return MaxY - CGRectGetMinY(v24);
  }

  else
  {
    v15 = v6;
    v16 = v8;
    v17 = v10;
    v18 = v12;

    return CGRectGetHeight(*&v15);
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76C50] object:0];

  v5.receiver = self;
  v5.super_class = SiriUIKeyboardView;
  [(SiriUIKeyboardView *)&v5 dealloc];
}

- (SiriUIKeyboardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end