@interface PKPeerPaymentMessagesContentAmountEntryView
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGSize)_layoutWithBounds:(CGRect)a3 progressToExpanded:(double)a4 sizeCategory:(unint64_t)a5 isTemplate:(BOOL)a6;
- (PKPeerPaymentMessagesContentAmountEntryView)initWithFrame:(CGRect)a3;
- (unint64_t)sizeCategory;
- (void)_setActiveSubtitleVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setNumberPadVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setShowKeypadHintVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setSubtitleType:(unint64_t)a3 updateLayout:(BOOL)a4;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)setPercentExpanded:(double)a3;
- (void)setPresentationContext:(int64_t)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateIsExpansionSupported;
- (void)updateIsKeypadSupported;
@end

@implementation PKPeerPaymentMessagesContentAmountEntryView

- (PKPeerPaymentMessagesContentAmountEntryView)initWithFrame:(CGRect)a3
{
  v77[1] = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = PKPeerPaymentMessagesContentAmountEntryView;
  v3 = [(PKPeerPaymentMessagesContentAmountEntryView *)&v71 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = [(PKPeerPaymentMessagesContentAmountEntryView *)v3 traitCollection];
    v5 = [v4 preferredContentSizeCategory];
    v3->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(v5, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

    v3->_presentationContext = 1;
    v65 = [(PKPeerPaymentMessagesContentAmountEntryView *)v3 sizeCategory];
    v6 = objc_alloc(MEMORY[0x1E6979378]);
    v7 = [v6 initWithType:*MEMORY[0x1E6979928]];
    [v7 setName:@"gaussianBlur"];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v3->_containerView;
    v3->_containerView = v8;

    [(PKPeerPaymentMessagesContentAmountEntryView *)v3 addSubview:v3->_containerView];
    v10 = v3->_containerView;
    v11 = [[PKPeerPaymentMessagesAmountStepperView alloc] initWithSizeCategory:v65];
    amountStepperView = v3->_amountStepperView;
    v3->_amountStepperView = v11;

    [(UIView *)v10 addSubview:v3->_amountStepperView];
    v13 = PKIsPad();
    v14 = *MEMORY[0x1E69DDCF8];
    if (v13)
    {
      v15 = *MEMORY[0x1E69DDCF8];
    }

    else
    {
      v15 = *MEMORY[0x1E69DDD28];
    }

    v16 = *MEMORY[0x1E69DDC58];
    v17 = PKFontForDefaultDesign(v15, *MEMORY[0x1E69DDC58]);
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    balanceLabel = v3->_balanceLabel;
    v3->_balanceLabel = v18;

    [(UILabel *)v3->_balanceLabel setTextAlignment:1];
    v20 = v3->_balanceLabel;
    v21 = +[PKPeerPaymentTheme secondaryTextColor];
    [(UILabel *)v20 setTextColor:v21];

    [(UILabel *)v3->_balanceLabel setFont:v17];
    [(UILabel *)v3->_balanceLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_balanceLabel setAccessibilityIdentifier:@"AppleCash.Balance.Label"];
    v22 = [(UILabel *)v3->_balanceLabel layer];
    v77[0] = v7;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
    [v22 setFilters:v23];

    [(UIView *)v10 addSubview:v3->_balanceLabel];
    v24 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    memoField = v3->_memoField;
    v3->_memoField = v24;

    [(UITextField *)v3->_memoField setTextAlignment:1];
    v26 = v3->_memoField;
    v27 = +[PKPeerPaymentTheme primaryTextColor];
    [(UITextField *)v26 setTextColor:v27];

    v28 = v3->_memoField;
    v29 = PKLocalizedPeerPaymentString(&cfstr_NearbyAmountEn_2.isa);
    [(UITextField *)v28 setPlaceholder:v29];

    v30 = v3->_memoField;
    v31 = PKFontForDefaultDesign(v14, v16);
    [(UITextField *)v30 setFont:v31];

    [(UITextField *)v3->_memoField setReturnKeyType:9];
    [(UITextField *)v3->_memoField setDelegate:v3];
    v32 = [(UITextField *)v3->_memoField layer];
    v76 = v7;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    [v32 setFilters:v33];

    [(UITextField *)v3->_memoField setAlpha:0.0];
    [(UITextField *)v3->_memoField addTarget:v3 action:sel_textFieldDidChange_ forControlEvents:0x20000];
    [(UITextField *)v3->_memoField setAccessibilityIdentifier:*MEMORY[0x1E69B9938]];
    [(UIView *)v10 addSubview:v3->_memoField];
    [(PKPeerPaymentMessagesContentAmountEntryView *)v3 _setSubtitleType:0 updateLayout:0];
    if (PKIsPad())
    {
      v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      showKeypadHint = v3->_showKeypadHint;
      v3->_showKeypadHint = v34;

      [(UILabel *)v3->_showKeypadHint setTextAlignment:1];
      v36 = v3->_showKeypadHint;
      v37 = +[PKPeerPaymentTheme secondaryTextColor];
      [(UILabel *)v36 setTextColor:v37];

      [(UILabel *)v3->_showKeypadHint setFont:v17];
      v38 = v3->_showKeypadHint;
      v39 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_11.isa);
      [(UILabel *)v38 setText:v39];

      [(UIView *)v10 addSubview:v3->_showKeypadHint];
    }

    v40 = MEMORY[0x1E69DC738];
    v41 = MEMORY[0x1E69DC628];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __61__PKPeerPaymentMessagesContentAmountEntryView_initWithFrame___block_invoke;
    v68[3] = &unk_1E8010A60;
    objc_copyWeak(&v69, &location);
    v42 = [v41 actionWithHandler:v68];
    v43 = [v40 systemButtonWithPrimaryAction:v42];
    showKeypadButton = v3->_showKeypadButton;
    v3->_showKeypadButton = v43;

    v45 = v3->_showKeypadButton;
    v46 = +[PKPeerPaymentTheme secondaryTextColor];
    [(UIButton *)v45 setTitleColor:v46 forState:0];

    v47 = v3->_showKeypadButton;
    v48 = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v47 setBackgroundColor:v48];

    v49 = objc_alloc(MEMORY[0x1E696AAB0]);
    v50 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_12.isa);
    v74 = *MEMORY[0x1E69DB648];
    v75 = v17;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v52 = [v49 initWithString:v50 attributes:v51];

    [(UIButton *)v3->_showKeypadButton setAttributedTitle:v52 forState:0];
    v53 = [(UIButton *)v3->_showKeypadButton layer];
    v73 = v7;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    [v53 setFilters:v54];

    [(UIButton *)v3->_showKeypadButton setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
    [(UIView *)v10 addSubview:v3->_showKeypadButton];
    v55 = [[PKPeerPaymentMessagesNumberPadView alloc] initWithSizeCategory:v65];
    numberPadView = v3->_numberPadView;
    v3->_numberPadView = v55;

    v57 = [(PKPeerPaymentMessagesNumberPadView *)v3->_numberPadView layer];
    [v57 setMasksToBounds:0];

    v58 = [(PKPeerPaymentMessagesNumberPadView *)v3->_numberPadView layer];
    v72 = v7;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    [v58 setFilters:v59];

    [(UIView *)v10 addSubview:v3->_numberPadView];
    v60 = v3->_numberPadView;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __61__PKPeerPaymentMessagesContentAmountEntryView_initWithFrame___block_invoke_2;
    v66[3] = &unk_1E8018218;
    objc_copyWeak(&v67, &location);
    [(PKPeerPaymentMessagesNumberPadView *)v60 setActionHandler:v66];
    v61 = objc_alloc_init(PKPeerPaymentMessagesMultiActionView);
    actionView = v3->_actionView;
    v3->_actionView = v61;

    v63 = [(PKPeerPaymentMessagesMultiActionView *)v3->_actionView layer];
    [v63 setMasksToBounds:0];

    [(PKPeerPaymentMessagesContentAmountEntryView *)v3 addSubview:v3->_actionView];
    [(PKPeerPaymentMessagesContentAmountEntryView *)v3 _setNumberPadVisible:1 animated:0];
    [(PKPeerPaymentMessagesContentAmountEntryView *)v3 _setActiveSubtitleVisible:0 animated:0];
    [(PKPeerPaymentMessagesContentAmountEntryView *)v3 _setShowKeypadHintVisible:1 animated:0];
    [(PKPeerPaymentMessagesContentAmountEntryView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
    [(UIView *)v3 pkui_applyContainerConcentricCornerConfiguration];
    objc_destroyWeak(&v67);

    objc_destroyWeak(&v69);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __61__PKPeerPaymentMessagesContentAmountEntryView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[61] amountTappedHandler];
    v3 = v2;
    if (v2)
    {
      (*(v2 + 16))(v2);
    }

    WeakRetained = v4;
  }
}

void __61__PKPeerPaymentMessagesContentAmountEntryView_initWithFrame___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[61] handleNumberPadAction:a3];
}

- (unint64_t)sizeCategory
{
  v31 = *MEMORY[0x1E69E9840];
  [(PKPeerPaymentMessagesContentAmountEntryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(PKPeerPaymentMessagesContentAmountEntryView *)self _isPresentedAsSheet])
  {
    v11 = [(PKPeerPaymentMessagesContentAmountEntryView *)self window];
    v12 = [v11 _rootSheetPresentationController];

    v13 = [v12 _detentValues];
    if ([v13 count] != 2)
    {
      v23 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v13;
        _os_log_impl(&dword_1BD026000, v23, OS_LOG_TYPE_DEFAULT, "Root sheet controller did not contain expected detent values. Actual: %@. Defaulting layout to small", buf, 0xCu);
      }

      return 0;
    }

    v14 = [v13 firstObject];
    [v14 floatValue];
    v10 = v15;
  }

  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  if (CGRectEqualToRect(self->_lastMaxBounds, v33))
  {
    return self->_sizeCategory;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  result = [&unk_1F3CC83A8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (result)
  {
    v17 = result;
    v18 = *v25;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(&unk_1F3CC83A8);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        -[PKPeerPaymentMessagesContentAmountEntryView _layoutWithBounds:progressToExpanded:sizeCategory:isTemplate:](self, "_layoutWithBounds:progressToExpanded:sizeCategory:isTemplate:", [v20 integerValue], 1, v4, v6, v8, v10, 1.0);
        v22 = v21;
        v32.origin.x = v4;
        v32.origin.y = v6;
        v32.size.width = v8;
        v32.size.height = v10;
        if (v22 <= CGRectGetHeight(v32))
        {
          result = [v20 integerValue];
          goto LABEL_19;
        }

        ++v19;
      }

      while (v17 != v19);
      result = [&unk_1F3CC83A8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v17 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
  self->_lastMaxBounds.origin.x = v4;
  self->_lastMaxBounds.origin.y = v6;
  self->_lastMaxBounds.size.width = v8;
  self->_lastMaxBounds.size.height = v10;
  self->_sizeCategory = result;
  return result;
}

- (void)updateIsExpansionSupported
{
  v3 = [(PKPeerPaymentMessagesContentAmountEntryView *)self window];
  v8 = [v3 windowScene];

  if (v8)
  {
    v4 = [(PKPeerPaymentMessagesContentAmountEntryView *)self _isPresentedAsSheet];
    v5 = !PKIsPhone() || ([v8 interfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL;
    v6 = v4 && v5;
    if (self->_isExpansionSupported != v6)
    {
      self->_isExpansionSupported = v6;
      v7 = *(MEMORY[0x1E695F058] + 16);
      self->_lastMaxBounds.origin = *MEMORY[0x1E695F058];
      self->_lastMaxBounds.size = v7;
      [(PKPeerPaymentMessagesContentAmountEntryView *)self setNeedsLayout];
    }
  }
}

- (void)updateIsKeypadSupported
{
  v3 = [(PKPeerPaymentMessagesContentAmountEntryView *)self window];
  v6 = [v3 windowScene];

  if (v6)
  {
    v4 = !PKIsPhone() || ([v6 interfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL;
    if (self->_isKeypadSupported != v4)
    {
      self->_isKeypadSupported = v4;
      v5 = *(MEMORY[0x1E695F058] + 16);
      self->_lastMaxBounds.origin = *MEMORY[0x1E695F058];
      self->_lastMaxBounds.size = v5;
      [(PKPeerPaymentMessagesContentAmountEntryView *)self setNeedsLayout];
    }
  }
}

- (void)setPercentExpanded:(double)a3
{
  if (self->_percentExpanded != a3)
  {
    self->_percentExpanded = a3;
    [(PKPeerPaymentMessagesContentAmountEntryView *)self setNeedsLayout];
  }
}

- (void)setPresentationContext:(int64_t)a3
{
  if (!a3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Unspecified semantic presentation context, defaulting to normal", v5, 2u);
    }

    a3 = 1;
  }

  if (self->_presentationContext != a3)
  {
    self->_presentationContext = a3;
    [(PKPeerPaymentMessagesContentAmountEntryView *)self updateIsExpansionSupported];
    [(PKPeerPaymentMessagesContentAmountEntryView *)self setNeedsLayout];
  }
}

- (void)_setSubtitleType:(unint64_t)a3 updateLayout:(BOOL)a4
{
  v4 = a4;
  activeSubtitleView = self->_activeSubtitleView;
  if (activeSubtitleView && self->_subtitleType == a3)
  {
    return;
  }

  [(UIView *)activeSubtitleView setAlpha:0.0];
  v8 = &OBJC_IVAR___PKPeerPaymentMessagesContentAmountEntryView__balanceLabel;
  self->_subtitleType = a3;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_7;
    }

    v8 = &OBJC_IVAR___PKPeerPaymentMessagesContentAmountEntryView__memoField;
  }

  objc_storeStrong(&self->_activeSubtitleView, *(&self->super.super.super.isa + *v8));
LABEL_7:
  [(UIView *)self->_activeSubtitleView setAlpha:1.0];
  if (v4)
  {

    [(PKPeerPaymentMessagesContentAmountEntryView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentMessagesContentAmountEntryView;
  v4 = a3;
  [(PKPeerPaymentMessagesContentAmountEntryView *)&v8 traitCollectionDidChange:v4];
  v5 = [(PKPeerPaymentMessagesContentAmountEntryView *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v7 isEqualToString:v6];
  if ((v4 & 1) == 0)
  {
    self->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(v6, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;
    [(PKPeerPaymentMessagesContentAmountEntryView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKPeerPaymentMessagesContentAmountEntryView;
  [(PKPeerPaymentMessagesContentAmountEntryView *)&v15 layoutSubviews];
  [(PKPeerPaymentMessagesContentAmountEntryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  percentExpanded = self->_percentExpanded;
  v12 = [(PKPeerPaymentMessagesContentAmountEntryView *)self sizeCategory];
  if (PKIsPad() && self->_presentationContext == 3)
  {
    [(PKPeerPaymentMessagesContentAmountEntryView *)self _layoutWithBounds:v12 progressToExpanded:1 sizeCategory:v4 isTemplate:v6, v8, v10, 1.0];
    v14 = v13;
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    if (CGRectGetHeight(v16) < v14)
    {
      percentExpanded = 0.0;
    }

    else
    {
      percentExpanded = 1.0;
    }
  }

  [(PKPeerPaymentMessagesContentAmountEntryView *)self _layoutWithBounds:v12 progressToExpanded:0 sizeCategory:v4 isTemplate:v6, v8, v10, percentExpanded];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 progressToExpanded:(double)a4 sizeCategory:(unint64_t)a5 isTemplate:(BOOL)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  remainder = a3;
  if (!a6)
  {
    [(PKPeerPaymentMessagesMultiActionView *)self->_actionView setStyle:a4 >= 0.75, 0.75];
    [(PKPeerPaymentMessagesAmountStepperView *)self->_amountStepperView setStyle:a4 >= 0.75];
    [(PKPeerPaymentMessagesAmountStepperView *)self->_amountStepperView setSizeCategory:a5];
    [(PKPeerPaymentMessagesNumberPadView *)self->_numberPadView setStyle:a4 >= 0.75];
    [(PKPeerPaymentMessagesNumberPadView *)self->_numberPadView setSizeCategory:a5];
  }

  v14 = PKIsPad();
  v15 = [(PKPeerPaymentMessagesContentAmountEntryView *)self _isPresentedAsSheet];
  if (a5 || (v16 = 0.0, (v14 & 1) == 0))
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 16.0;
    }
  }

  memset(&slice, 0, sizeof(slice));
  v70 = v16;
  if (a6)
  {
    v17 = height;
    v18 = width;
  }

  else
  {
    v77.origin.x = x;
    v77.origin.y = y;
    v77.size.width = width;
    v77.size.height = height;
    CGRectDivide(v77, &slice, &remainder, v16, CGRectMaxYEdge);
    v18 = remainder.size.width;
    v17 = remainder.size.height;
  }

  [(PKPeerPaymentMessagesMultiActionView *)self->_actionView sizeThatFits:0 forStyle:v18, v17];
  v20 = v19;
  [(PKPeerPaymentMessagesMultiActionView *)self->_actionView sizeThatFits:1 forStyle:remainder.size.width, remainder.size.height];
  v22 = v20 + (v21 - v20) * a4;
  if (!a6)
  {
    v23 = _UISolariumFeatureFlagEnabled();
    v24 = remainder.origin.x;
    v25 = remainder.origin.y;
    v26 = remainder.size.width;
    v27 = remainder.size.height;
    if (v23)
    {
      memset(&v72, 0, 32);
      memset(&v73, 0, sizeof(v73));
      CGRectDivide(*&v24, &v72, &v73, v20, CGRectMaxYEdge);
      [(PKPeerPaymentMessagesContentAmountEntryView *)self _concentricEdgeInsetsForEdge:4 bounds:v72.a minimumEdgeInsets:v72.b, v72.c, v72.d, 0.0, 28.0, 28.0, 28.0];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v24 = remainder.origin.x + v30;
      v25 = v29 + remainder.origin.y;
      v26 = remainder.size.width - (v31 + v34);
      v27 = remainder.size.height - (v29 + v33);
      remainder.origin.x = remainder.origin.x + v31;
      remainder.origin.y = v29 + remainder.origin.y;
      remainder.size.width = v26;
      remainder.size.height = v27;
    }

    CGRectDivide(*&v24, &slice, &remainder, v22, CGRectMaxYEdge);
    [(PKPeerPaymentMessagesMultiActionView *)self->_actionView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  if (a5 - 1 < 2)
  {
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    v36 = CGRectGetHeight(v79);
    if (!v14)
    {
      v37 = 0.1;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (a5 == 3)
  {
    v80.origin.x = x;
    v80.origin.y = y;
    v80.size.width = width;
    v80.size.height = height;
    v36 = CGRectGetHeight(v80);
    v37 = 0.12;
    goto LABEL_24;
  }

  v35 = 0.0;
  if (!a5 && (v14 & 1) == 0)
  {
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    v36 = CGRectGetHeight(v78);
LABEL_21:
    v37 = 0.04;
LABEL_24:
    v35 = v36 * v37;
  }

  v69 = v22;
  v71 = y;
  v38 = v35 * a4;
  if (!a6)
  {
    CGRectDivide(remainder, &slice, &remainder, v38, CGRectMinYEdge);
  }

  v68 = v38;
  [(UIView *)self->_containerView setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
  remainder.origin = *MEMORY[0x1E695EFF8];
  [PKPeerPaymentMessagesAmountStepperView sizeThatFits:a5 forSizeCategory:remainder.size.width, remainder.size.height];
  v40 = v39;
  [(UIView *)self->_activeSubtitleView sizeThatFits:remainder.size.width, remainder.size.height];
  v42 = v41;
  v43 = 51;
  if (v15)
  {
    v43 = 52;
  }

  v44 = OBJC_IVAR___PKPeerPaymentMessagesButton__highlightedBackgroundColor[v43];
  [*(&self->super.super.super.isa + v44) sizeThatFits:{remainder.size.width, remainder.size.height}];
  if (v42 <= v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = v42;
  }

  if (!a6)
  {
    v67 = v45;
    PKSizeAlignedInRect();
    CGRectDivide(remainder, &slice, &remainder, (1.0 - a4) * v48, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, v40, CGRectMinYEdge);
    [(PKPeerPaymentMessagesAmountStepperView *)self->_amountStepperView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    CGRectDivide(remainder, &slice, &remainder, v47, CGRectMinYEdge);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIView *)self->_activeSubtitleView setFrame:?];
    v49 = *(&self->super.super.super.isa + v44);
    PKSizeAlignedInRect();
    [v49 setFrame:?];
  }

  v50 = 0.0;
  v51 = v40 + 0.0 + v47;
  isExpansionSupported = self->_isExpansionSupported;
  v53 = a4 >= 0.75 || self->_isExpansionSupported;
  v54 = 0.001;
  if (self->_isKeypadSupported && v53)
  {
    [PKPeerPaymentMessagesNumberPadView referenceSizeForSizeCategory:a5];
    if (isExpansionSupported)
    {
      v50 = v55 * a4;
      if (a4 >= 0.001)
      {
        v54 = a4;
      }

      else
      {
        v54 = 0.001;
      }
    }

    else
    {
      if (a4 >= 0.75)
      {
        v50 = v55;
      }

      else
      {
        v50 = 0.0;
      }

      if (a4 >= 0.75)
      {
        v54 = 1.0;
      }

      else
      {
        v54 = 0.001;
      }
    }

    v56 = v50;
    if (!a6)
    {
      v56 = remainder.size.height;
    }

    v51 = v51 + v56;
  }

  if (!a6)
  {
    CGRectDivide(remainder, &slice, &remainder, v50, CGRectMinYEdge);
    UIRectCenteredYInRect();
    slice.origin.x = v57;
    slice.origin.y = v58;
    slice.size.width = v59;
    slice.size.height = v60;
    numberPadView = self->_numberPadView;
    CGAffineTransformMakeScale(&v72, 1.0, v54);
    [(PKPeerPaymentMessagesNumberPadView *)numberPadView setTransform:&v72];
    [(PKPeerPaymentMessagesNumberPadView *)self->_numberPadView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    v62 = a4 >= 0.75 && self->_isKeypadSupported;
    v63 = a4 >= 0.75;
    v64 = [(PKPeerPaymentMessagesContentAmountEntryView *)self _isAnimationAllowed:0.75];
    [(PKPeerPaymentMessagesContentAmountEntryView *)self _setNumberPadVisible:v62 animated:v64];
    [(PKPeerPaymentMessagesContentAmountEntryView *)self _setActiveSubtitleVisible:v63 animated:v64];
    [(PKPeerPaymentMessagesContentAmountEntryView *)self _setShowKeypadHintVisible:a4 < 0.75 animated:v64];
    [(PKPeerPaymentMessagesMultiActionView *)self->_actionView setCenterButtonVisible:v63 animated:v64];
    [(PKPeerPaymentMessagesAmountStepperView *)self->_amountStepperView setPlusMinusVisible:!v62 animated:v64];
  }

  v81.origin.x = x;
  v81.origin.y = v71;
  v81.size.width = width;
  v81.size.height = height;
  v65 = CGRectGetWidth(v81);
  v66 = v68 + v70 + v69 + v51;
  result.height = v66;
  result.width = v65;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetHeight(a3);
  [(PKPeerPaymentMessagesContentAmountEntryView *)self bounds];
  if (v8 - CGRectGetHeight(v12) == 100.0)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring frame update. (<rdar://problem/31900645>)", buf, 2u);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKPeerPaymentMessagesContentAmountEntryView;
    [(PKPeerPaymentMessagesContentAmountEntryView *)&v10 setFrame:x, y, width, height];
  }
}

- (void)_setNumberPadVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PKPeerPaymentMessagesNumberPadView *)self->_numberPadView layer];
  [v7 opacity];
  if (v8 != v5)
  {
    if (v4)
    {
      if (v5)
      {
        v19 = 0;
        v20 = 0;
        ContentViewVisibilityAnimations(0, &v20, &v19, 0);
        v9 = v20;
        v10 = v19;
        v11 = [v7 pkui_addAdditiveAnimation:v9];
        v12 = [v7 pkui_addAdditiveAnimation:v10];

LABEL_6:
        [v7 setOpacity:0.0];
        [(PKPeerPaymentMessagesNumberPadView *)self->_numberPadView setAlpha:1.0];
        [v7 setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
        goto LABEL_9;
      }

      v17 = 0;
      v18 = 0;
      ContentViewVisibilityAnimations(&v18, 0, 0, &v17);
      v13 = v18;
      v14 = v17;
      v15 = [v7 pkui_addAdditiveAnimation:v14];
      v16 = [v7 pkui_addAdditiveAnimation:v13];
    }

    else if (v5)
    {
      goto LABEL_6;
    }

    [v7 setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v7 setOpacity:0.0];
  }

LABEL_9:
}

- (void)_setActiveSubtitleVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(UIView *)self->_activeSubtitleView layer];
  [v6 opacity];
  if (*&v7 != v5)
  {
    if (v4)
    {
      if (v5)
      {
        v18 = 0;
        v19 = 0;
        ContentViewVisibilityAnimations(0, &v19, &v18, 0);
        v8 = v19;
        v9 = v18;
        v10 = [v6 pkui_addAdditiveAnimation:v8];
        v11 = [v6 pkui_addAdditiveAnimation:v9];

LABEL_6:
        LODWORD(v7) = 1.0;
        [v6 setOpacity:v7];
        [v6 setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
        goto LABEL_9;
      }

      v16 = 0;
      v17 = 0;
      ContentViewVisibilityAnimations(&v17, 0, 0, &v16);
      v12 = v17;
      v13 = v16;
      v14 = [v6 pkui_addAdditiveAnimation:v12];
      v15 = [v6 pkui_addAdditiveAnimation:v13];
    }

    else if (v5)
    {
      goto LABEL_6;
    }

    [v6 setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v6 setOpacity:0.0];
  }

LABEL_9:
}

- (void)_setShowKeypadHintVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PKPeerPaymentMessagesContentAmountEntryView *)self _isPresentedAsSheet];
  if (v7)
  {
    v8 = 52;
  }

  else
  {
    v8 = 51;
  }

  if (v7)
  {
    v9 = 51;
  }

  else
  {
    v9 = 52;
  }

  v10 = [*(&self->super.super.super.isa + OBJC_IVAR___PKPeerPaymentMessagesButton__highlightedBackgroundColor[v8]) layer];
  v11 = [*(&self->super.super.super.isa + OBJC_IVAR___PKPeerPaymentMessagesButton__highlightedBackgroundColor[v9]) layer];
  [v11 setHidden:1];

  [v10 setHidden:0];
  [v10 opacity];
  if (*&v12 != v5)
  {
    if (v4)
    {
      if (v5)
      {
        v23 = 0;
        v24 = 0;
        ContentViewVisibilityAnimations(0, &v24, &v23, 0);
        v13 = v24;
        v14 = v23;
        v15 = [v10 pkui_addAdditiveAnimation:v13];
        v16 = [v10 pkui_addAdditiveAnimation:v14];

LABEL_12:
        LODWORD(v12) = 1.0;
        [v10 setOpacity:v12];
        [v10 setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
        goto LABEL_15;
      }

      v21 = 0;
      v22 = 0;
      ContentViewVisibilityAnimations(&v22, 0, 0, &v21);
      v17 = v22;
      v18 = v21;
      v19 = [v10 pkui_addAdditiveAnimation:v17];
      v20 = [v10 pkui_addAdditiveAnimation:v18];
    }

    else if (v5)
    {
      goto LABEL_12;
    }

    [v10 setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v10 setOpacity:0.0];
  }

LABEL_15:
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  [v4 resignFirstResponder];
  memoChangedHandler = self->_memoChangedHandler;
  if (memoChangedHandler)
  {
    v6 = [v4 text];
    memoChangedHandler[2](memoChangedHandler, v6);
  }

  return 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  _PKViewSetAlphaAnimated(self->_numberPadView, 0, &v5, 0.3, 0.0);
  numberPadView = self->_numberPadView;

  [(PKPeerPaymentMessagesNumberPadView *)numberPadView setUserInteractionEnabled:0];
}

- (void)textFieldDidEndEditing:(id)a3
{
  _PKViewSetAlphaAnimated(self->_numberPadView, 0, &v5, 1.0, 0.0);
  numberPadView = self->_numberPadView;

  [(PKPeerPaymentMessagesNumberPadView *)numberPadView setUserInteractionEnabled:1];
}

- (void)textFieldDidChange:(id)a3
{
  memoChangedHandler = self->_memoChangedHandler;
  if (memoChangedHandler)
  {
    v4 = [a3 text];
    memoChangedHandler[2](memoChangedHandler, v4);
  }
}

@end