@interface PKPaymentPassTableCell
+ (double)heightForCellWithMinimum:(double)a3 hasSubTitle:(BOOL)a4;
- (PKPaymentPassTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PKPaymentPassTableCellDelegate)delegate;
- (id)_stringForPassState:(unint64_t)a3;
- (id)_subtitleColor;
- (id)_subtitleText;
- (void)_addButtonPressed:(id)a3;
- (void)_configureActionButtonWithTitle:(id)a3;
- (void)_configureCellWithSpecifier:(id)a3;
- (void)_configureMainLabelWithText:(id)a3;
- (void)_configureSubTextLabel;
- (void)_verifyButtonPressed:(id)a3;
- (void)disableAddButton;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)a3;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setPass:(id)a3 passView:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)showActivitySpinner:(BOOL)a3;
- (void)tintColorDidChange;
- (void)updateSubtitle;
@end

@implementation PKPaymentPassTableCell

- (PKPaymentPassTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentPassTableCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PKPaymentPassTableCell *)v4 setAutoresizingMask:18];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentPassTableCell;
  v4 = a3;
  [(PSTableCell *)&v5 refreshCellContentsWithSpecifier:v4];
  [(PKPaymentPassTableCell *)self setSpecifier:v4, v5.receiver, v5.super_class];
}

- (void)prepareForReuse
{
  [(UILabel *)self->_subTextLabel setText:0];
  self->_showActionButton = 0;
  [(UIButton *)self->_actionButton removeFromSuperview];
  actionButton = self->_actionButton;
  self->_actionButton = 0;

  self->_showSpinner = 0;
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  spinner = self->_spinner;
  self->_spinner = 0;

  self->_showSnapshotSpinner = 0;
  [(UIActivityIndicatorView *)self->_snapshotSpinner removeFromSuperview];
  snapshotSpinner = self->_snapshotSpinner;
  self->_snapshotSpinner = 0;

  v6 = [(PKPassView *)self->_passView superview];
  v7 = [(PKPaymentPassTableCell *)self contentView];

  if (v6 == v7)
  {
    [(PKPassView *)self->_passView removeFromSuperview];
  }

  passView = self->_passView;
  self->_passView = 0;

  v9.receiver = self;
  v9.super_class = PKPaymentPassTableCell;
  [(PSTableCell *)&v9 prepareForReuse];
}

+ (double)heightForCellWithMinimum:(double)a3 hasSubTitle:(BOOL)a4
{
  v4 = a4;
  v7 = [a1 titleFont];
  [v7 lineHeight];
  v9 = v8;

  if (v4)
  {
    v10 = [a1 subTitleFont];
    [v10 lineHeight];
    v9 = v9 + v11;
  }

  result = v9 + 16.0;
  if (v9 + 16.0 <= a3)
  {
    return a3;
  }

  return result;
}

- (void)setPass:(id)a3 passView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_pass != v7 || self->_passView != v8)
  {
    v10 = self->_snapshotCounter + 1;
    self->_snapshotCounter = v10;
    objc_storeStrong(&self->_pass, a3);
    v11 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    paymentApplication = self->_paymentApplication;
    self->_paymentApplication = v11;

    objc_storeStrong(&self->_passView, a4);
    pass = self->_pass;
    if (pass)
    {
      [(PKPaymentPass *)pass style];
    }

    PKPassFrontFaceContentSize();
    PKSizeAspectFit();
    v15 = v14;
    v17 = v16;
    v18 = [(PKPaymentPassTableCell *)self contentView];
    passView = self->_passView;
    if (passView)
    {
      [(PKPassView *)passView sizeOfFrontFace];
      v21 = v15 / v20;
      v22 = [(PKPassView *)self->_passView layer];
      CATransform3DMakeScale(&v37, v21, v21, 1.0);
      [v22 setTransform:&v37];

      [(PKPassView *)self->_passView setUserInteractionEnabled:0];
      [(PKPassView *)self->_passView setAccessibilityElementsHidden:1];
      [v18 addSubview:self->_passView];
    }

    else if (v7)
    {
      self->_showSnapshotSpinner = 1;
      snapshotSpinner = self->_snapshotSpinner;
      if (!snapshotSpinner)
      {
        v24 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        v25 = self->_snapshotSpinner;
        self->_snapshotSpinner = v24;

        [(UIActivityIndicatorView *)self->_snapshotSpinner startAnimating];
        snapshotSpinner = self->_snapshotSpinner;
      }

      [v18 addSubview:snapshotSpinner];
      [(UIImageView *)self->_cardSnapshotView setImage:0];
      v26 = +[PKPassSnapshotter sharedInstance];
      v27 = self->_pass;
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __43__PKPaymentPassTableCell_setPass_passView___block_invoke;
      v32 = &unk_1E801C780;
      v33 = self;
      v36 = v10;
      v34 = v18;
      v35 = v26;
      v28 = v26;
      [v28 snapshotWithPass:v27 size:&v29 completion:{v15, v17}];
    }

    [(PKPaymentPassTableCell *)self updateSubtitle:v29];
  }
}

void __43__PKPaymentPassTableCell_setPass_passView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PKPaymentPassTableCell_setPass_passView___block_invoke_2;
  v6[3] = &unk_1E801C758;
  v9 = *(a1 + 56);
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __43__PKPaymentPassTableCell_setPass_passView___block_invoke_2(uint64_t result)
{
  v9 = *(result + 32);
  if (*(v9 + 1224) == *(result + 56))
  {
    v18 = v3;
    v19 = v2;
    v20 = v1;
    v10 = result;
    v11 = *(v9 + 1248);
    if (v11)
    {
      [v11 setImage:*(v10 + 40)];
      [*(*(v10 + 32) + 1248) sizeToFit];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*(v10 + 40)];
      v13 = *(v10 + 32);
      v14 = *(v13 + 1248);
      *(v13 + 1248) = v12;

      [*(*(v10 + 32) + 1248) setAccessibilityIgnoresInvertColors:1];
      v15 = [*(*(v10 + 32) + 1248) layer];
      [*(v10 + 40) size];
      v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
      [v16 CGColor];
      PKPaymentStyleApplyCorners();

      [*(v10 + 48) addSubview:*(*(v10 + 32) + 1248)];
    }

    [*(*(v10 + 32) + 1232) removeFromSuperview];
    *(*(v10 + 32) + 1298) = 0;
    v17 = *(v10 + 32);

    return [v17 setNeedsLayout];
  }

  return result;
}

- (void)layoutSubviews
{
  v82.receiver = self;
  v82.super_class = PKPaymentPassTableCell;
  [(PSTableCell *)&v82 layoutSubviews];
  v3 = [(PKPaymentPassTableCell *)self _shouldReverseLayoutDirection];
  if (v3)
  {
    v4 = CGRectMaxXEdge;
  }

  else
  {
    v4 = CGRectMinXEdge;
  }

  if (v3)
  {
    v5 = CGRectMinXEdge;
  }

  else
  {
    v5 = CGRectMaxXEdge;
  }

  v6 = [(PKPaymentPassTableCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  memset(&remainder, 0, sizeof(remainder));
  memset(&v80, 0, sizeof(v80));
  v15 = 0.0;
  if (self->_showActionButton)
  {
    actionButton = self->_actionButton;
    if (actionButton)
    {
      memset(&slice, 0, sizeof(slice));
      [(UIButton *)actionButton frame];
      v18 = v17 + 16.0;
      v83.origin.x = v8;
      v83.origin.y = v10;
      v83.size.width = v12;
      v83.size.height = v14;
      CGRectDivide(v83, &slice, &remainder, v18, v5);
      [(UIButton *)self->_actionButton frame];
      UIRectCenteredIntegralRect();
      slice.origin.x = v19;
      slice.origin.y = v20;
      slice.size.width = v21;
      slice.size.height = v22;
      [(UIButton *)self->_actionButton setFrame:?];
      v84.origin.x = v8;
      v84.origin.y = v10;
      v84.size.width = v12;
      v84.size.height = v14;
      v15 = fmax(CGRectGetMaxX(v84) - slice.origin.x + 8.0, 0.0);
    }
  }

  if (self->_showSpinner)
  {
    spinner = self->_spinner;
    if (spinner)
    {
      memset(&slice, 0, sizeof(slice));
      [(UIActivityIndicatorView *)spinner frame];
      v25 = v24 + 16.0;
      v85.origin.x = v8;
      v85.origin.y = v10;
      v85.size.width = v12;
      v85.size.height = v14;
      CGRectDivide(v85, &slice, &remainder, v25, v5);
      [(UIActivityIndicatorView *)self->_spinner frame];
      UIRectCenteredIntegralRect();
      slice.origin.x = v26;
      slice.origin.y = v27;
      slice.size.width = v28;
      slice.size.height = v29;
      [(UIActivityIndicatorView *)self->_spinner setFrame:?];
      v86.origin.x = v8;
      v86.origin.y = v10;
      v86.size.width = v12;
      v86.size.height = v14;
      v15 = fmax(v15, CGRectGetMaxX(v86) - slice.origin.x + 8.0);
    }
  }

  remainder.origin.x = v8;
  remainder.origin.y = v10;
  remainder.size.width = v12;
  remainder.size.height = v14;
  v87.origin.x = v8;
  v87.origin.y = v10;
  v87.size.width = v12;
  v87.size.height = v14;
  CGRectDivide(v87, &v80, &remainder, 16.0, v4);
  CGRectDivide(remainder, &v80, &remainder, v15, v5);
  CGRectDivide(remainder, &v80, &remainder, 40.0, v4);
  if (self->_showSnapshotSpinner)
  {
    snapshotSpinner = self->_snapshotSpinner;
    if (snapshotSpinner)
    {
      [(UIActivityIndicatorView *)self->_snapshotSpinner frame];
      PKSizeAlignedInRect();
      [(UIActivityIndicatorView *)snapshotSpinner setFrame:?];
    }
  }

  passView = self->_passView;
  if (passView)
  {
    v32 = passView;
  }

  else
  {
    v32 = self->_cardSnapshotView;
    if (!v32)
    {
      goto LABEL_27;
    }
  }

  [(UIImageView *)v32 frame];
  PKSizeAlignedInRect();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = fmax(v39, v80.origin.y + 8.0);
  [(UIImageView *)v32 setFrame:v33, v40, v35];
  v88.origin.x = v34;
  v88.origin.y = v40;
  v88.size.width = v36;
  v88.size.height = v38;
  v93.origin.x = v8;
  v93.origin.y = v10;
  v93.size.width = v12;
  v93.size.height = v14;
  v89 = CGRectUnion(v88, v93);
  v94.origin.x = v8;
  v94.origin.y = v10;
  v94.size.width = v12;
  v94.size.height = v14;
  if (CGRectEqualToRect(v89, v94))
  {
    v41 = 0;
  }

  else
  {
    cardSnapshotMask = self->_cardSnapshotMask;
    if (!cardSnapshotMask)
    {
      v43 = objc_alloc_init(MEMORY[0x1E6979398]);
      v44 = self->_cardSnapshotMask;
      self->_cardSnapshotMask = v43;

      v45 = self->_cardSnapshotMask;
      v46 = [MEMORY[0x1E69DC888] blackColor];
      -[CALayer setBackgroundColor:](v45, "setBackgroundColor:", [v46 CGColor]);

      cardSnapshotMask = self->_cardSnapshotMask;
    }

    v90.origin.x = v8;
    v90.origin.y = v10;
    v90.size.width = v12;
    v90.size.height = v14;
    v95.origin.x = v34;
    v95.origin.y = v40;
    v95.size.width = v36;
    v95.size.height = v38;
    v91 = CGRectIntersection(v90, v95);
    [(UIImageView *)v32 convertRect:v6 fromView:v91.origin.x, v91.origin.y, v91.size.width, v91.size.height];
    [(CALayer *)cardSnapshotMask setFrame:?];
    v41 = self->_cardSnapshotMask;
  }

  v47 = [(UIImageView *)v32 layer];
  v48 = [v47 mask];

  if (v41 != v48)
  {
    [v47 setMask:v41];
  }

LABEL_27:
  CGRectDivide(remainder, &v80, &remainder, 10.0, v4);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  [(UILabel *)self->_mainLabel frame];
  PKSizeAlignedInRect();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = [(UILabel *)self->_subTextLabel text];
  v62 = [v61 length];

  if (v62)
  {
    v78 = v58;
    [(UILabel *)self->_subTextLabel frame];
    v64 = v63;
    PKFloatRoundToPixel();
    v66 = v60;
    v67 = y + fmax(v65, 0.0);
    v56 = 8.0;
    v76 = v66;
    if (v67 <= 8.0)
    {
      v70 = v54;
      v71 = v67;
      v69 = v78;
      v72 = v78;
      MaxY = CGRectGetMaxY(*(&v66 - 3));
      v56 = v67;
    }

    else
    {
      v92.origin.x = x;
      v92.origin.y = y;
      v92.size.width = width;
      v92.size.height = height;
      MaxY = CGRectGetMaxY(v92) + -8.0 - v64;
      v69 = v78;
    }

    [(UILabel *)self->_subTextLabel setFrame:v54, MaxY, v69, v64, *&v76];
    v58 = v69;
    v60 = v77;
  }

  [(UILabel *)self->_mainLabel setFrame:v54, v56, v58, v60];
  if (self->_showFullSeparatorInset)
  {
    v73 = *MEMORY[0x1E69DDCE0];
    v54 = *(MEMORY[0x1E69DDCE0] + 8);
    v74 = *(MEMORY[0x1E69DDCE0] + 16);
    v75 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v73 = 0.0;
    v75 = 16.0;
    v74 = 0.0;
  }

  [(PKPaymentPassTableCell *)self setSeparatorInset:v73, v54, v74, v75];
}

- (void)tintColorDidChange
{
  actionButton = self->_actionButton;
  v4 = [(PKPaymentPassTableCell *)self tintColor];
  [(UIButton *)actionButton setTintColor:v4];

  v5.receiver = self;
  v5.super_class = PKPaymentPassTableCell;
  [(PKPaymentPassTableCell *)&v5 tintColorDidChange];
}

- (id)_subtitleColor
{
  if (self->_showState && ([(PKPaymentPass *)self->_pass contactlessActivationState]- 2) <= 2)
  {
    v3 = [(PKPaymentPassTableCell *)self tintColor];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57F8]));
    v5 = [WeakRetained objectForKeyedSubscript:@"pkCustomSubTitleColor"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    v3 = v7;
  }

  return v3;
}

- (id)_subtitleText
{
  v3 = [(PKPaymentPassTableCell *)self _stringForPassState:[(PKPaymentPass *)self->_pass contactlessActivationState]];
  v4 = v3;
  if (self->_showState && !self->_verificationController && [v3 length])
  {
    v9 = v4;
    goto LABEL_16;
  }

  if (!self->_showSubTitle)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v5 = *MEMORY[0x1E69C57F8];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v5));
  v7 = [WeakRetained objectForKeyedSubscript:@"pkCustomSubTitle"];

  if ([v7 length])
  {
    v8 = v7;
LABEL_14:
    v9 = v8;
    goto LABEL_15;
  }

  v10 = [(PKPaymentPass *)self->_pass paymentPass];
  v11 = [v10 isStoredValuePass];

  if (!v11)
  {
LABEL_13:
    v8 = PKSanitizedPrimaryAccountRepresentationForPass();
    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v5));
  v13 = [v12 objectForKeyedSubscript:@"pkTransitServerBalance"];

  if (![v13 hasBalanceContent])
  {

    goto LABEL_13;
  }

  v9 = [v13 primaryDisplayableBalance];

LABEL_15:
LABEL_16:

  return v9;
}

- (id)_stringForPassState:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if ([(PKPaymentApplication *)self->_paymentApplication state]== 7)
      {
        v5 = @"PAYMENT_CARD_STATE_SUSPENDED_LOSTMODE";
      }

      else
      {
        v5 = @"PAYMENT_CARD_STATE_SUSPENDED";
      }
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_13;
      }

      v5 = @"PAYMENT_CARD_STATE_DEACTIVATED";
    }
  }

  else if (a3 == 1)
  {
    v5 = @"PAYMENT_CARD_STATE_VERIFY";
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_13;
    }

    v5 = @"PAYMENT_CARD_STATE_ACTIVATING";
  }

  v4 = PKLocalizedPaymentString(&v5->isa);
LABEL_13:

  return v4;
}

- (void)_verifyButtonPressed:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentVerificationController *)self->_verificationController context];
  v6 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:v5];
  [(PKPaymentSetupDismissibleNavigationController *)v6 useStandardPlatformPresentationStyle];
  v7 = objc_alloc(MEMORY[0x1E69B8D48]);
  v8 = [(PKPaymentVerificationController *)self->_verificationController webService];
  v9 = [v7 initWithWebService:v8];

  v10 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:v5 provisioningController:v9 groupsController:0];
  [v10 setIsFollowupProvisioning:1];
  objc_initWeak(&location, self);
  pass = self->_pass;
  verificationController = self->_verificationController;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__PKPaymentPassTableCell__verifyButtonPressed___block_invoke;
  v18[3] = &unk_1E80110E0;
  objc_copyWeak(&v20, &location);
  v13 = v6;
  v19 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__PKPaymentPassTableCell__verifyButtonPressed___block_invoke_2;
  v15[3] = &unk_1E80110E0;
  objc_copyWeak(&v17, &location);
  v14 = v13;
  v16 = v14;
  [PKProvisioningFlowBridge startVerificationFlowWithNavController:v14 context:v10 pass:pass verificationController:verificationController presentNavController:v18 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __47__PKPaymentPassTableCell__verifyButtonPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 164);
    [v3 requestPresentationOfViewController:*(a1 + 32) animated:1 completion:0];

    WeakRetained = v4;
  }
}

void __47__PKPaymentPassTableCell__verifyButtonPressed___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v4;
  }
}

- (void)_addButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained addButtonPressedForPaymentPass:self->_pass];
    WeakRetained = v5;
  }
}

- (void)_configureMainLabelWithText:(id)a3
{
  v4 = a3;
  mainLabel = self->_mainLabel;
  v11 = v4;
  if (!mainLabel)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = self->_mainLabel;
    self->_mainLabel = v6;

    v8 = self->_mainLabel;
    v9 = [objc_opt_class() titleFont];
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)self->_mainLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v4 = v11;
    mainLabel = self->_mainLabel;
  }

  [(UILabel *)mainLabel setText:v4];
  [(UILabel *)self->_mainLabel sizeToFit];
  v10 = [(PKPaymentPassTableCell *)self contentView];
  [v10 addSubview:self->_mainLabel];
}

- (void)_configureActionButtonWithTitle:(id)a3
{
  v4 = a3;
  self->_showActionButton = 1;
  actionButton = self->_actionButton;
  v10 = v4;
  if (!actionButton)
  {
    v6 = [MEMORY[0x1E69DC740] borderedTintedButtonConfiguration];
    [v6 setCornerStyle:4];
    v7 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v6 primaryAction:0];
    v8 = self->_actionButton;
    self->_actionButton = v7;

    [(UIButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
    v4 = v10;
    actionButton = self->_actionButton;
  }

  [(UIButton *)actionButton setTitle:v4 forState:0];
  [(UIButton *)self->_actionButton sizeToFit];
  v9 = [(PKPaymentPassTableCell *)self contentView];
  [v9 addSubview:self->_actionButton];
}

- (void)_configureSubTextLabel
{
  subTextLabel = self->_subTextLabel;
  if (!subTextLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_subTextLabel;
    self->_subTextLabel = v4;

    v6 = self->_subTextLabel;
    v7 = [objc_opt_class() subTitleFont];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)self->_subTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    v8 = [(PKPaymentPassTableCell *)self contentView];
    [v8 addSubview:self->_subTextLabel];

    subTextLabel = self->_subTextLabel;
  }

  [(UILabel *)subTextLabel sizeToFit];
}

- (void)_configureCellWithSpecifier:(id)a3
{
  v10 = a3;
  v4 = [(PKPaymentPass *)self->_pass localizedDescription];
  [(PKPaymentPassTableCell *)self _configureMainLabelWithText:v4];

  [(PKPaymentPassTableCell *)self setAccessoryType:1];
  if (self->_showSubTitle || self->_showState)
  {
    [(PKPaymentPassTableCell *)self _configureSubTextLabel];
  }

  if (self->_showAddButton)
  {
    v5 = PKLocalizedString(&cfstr_IngestionAdd.isa);
    [(PKPaymentPassTableCell *)self _configureActionButtonWithTitle:v5];

    actionButton = self->_actionButton;
    v7 = [v10 objectForKeyedSubscript:@"pkActionButtonEnabled"];
    -[UIButton setEnabled:](actionButton, "setEnabled:", [v7 BOOLValue]);

    [(UIButton *)self->_actionButton addTarget:self action:sel__addButtonPressed_ forControlEvents:64];
    [(PKPaymentPassTableCell *)self setAccessoryType:0];
  }

  if (self->_showState && self->_verificationController)
  {
    v8 = [(PKPaymentPassTableCell *)self _stringForPassState:[(PKPaymentPass *)self->_pass contactlessActivationState]];
    [(PKPaymentPassTableCell *)self _configureActionButtonWithTitle:v8];
    [(UIButton *)self->_actionButton addTarget:self action:sel__verifyButtonPressed_ forControlEvents:64];
    [(PKPaymentPassTableCell *)self setAccessoryType:0];
  }

  if (self->_settingsContext == 1)
  {
    v9 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v9, self);
  }

  [(PKPaymentPassTableCell *)self updateSubtitle];
}

- (void)showActivitySpinner:(BOOL)a3
{
  if (self->_showAddButton)
  {
    v15 = v3;
    self->_showSpinner = a3;
    self->_showActionButton = !a3;
    spinner = self->_spinner;
    if (!a3)
    {
      [(UIActivityIndicatorView *)spinner removeFromSuperview];
      v14 = [(PKPaymentPassTableCell *)self contentView];
      [v14 addSubview:self->_actionButton];
    }

    else
    {
      if (!spinner)
      {
        v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        v12 = self->_spinner;
        self->_spinner = v11;
      }

      v13 = [(PKPaymentPassTableCell *)self contentView:v6];
      [v13 addSubview:self->_spinner];

      [(UIButton *)self->_actionButton removeFromSuperview];
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }

    [(PKPaymentPassTableCell *)self setNeedsLayout];
  }
}

- (void)disableAddButton
{
  if (self->_showAddButton)
  {
    actionButton = self->_actionButton;
    if (actionButton)
    {
      [(UIButton *)actionButton setEnabled:0];
    }
  }
}

- (void)updateSubtitle
{
  v6 = [(PKPaymentPassTableCell *)self _subtitleText];
  v3 = [(PKPaymentPassTableCell *)self _subtitleColor];
  if ([v6 length])
  {
    [(UILabel *)self->_subTextLabel setText:v6];
    subTextLabel = self->_subTextLabel;
    if (v3)
    {
      [(UILabel *)self->_subTextLabel setTextColor:v3];
    }

    else
    {
      v5 = [MEMORY[0x1E69DC888] labelColor];
      [(UILabel *)subTextLabel setTextColor:v5];
    }
  }

  [(UILabel *)self->_subTextLabel sizeToFit];
  [(PKPaymentPassTableCell *)self setNeedsLayout];
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57F8]));
  v6 = [WeakRetained isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v17.receiver = self;
    v17.super_class = PKPaymentPassTableCell;
    [(PSTableCell *)&v17 setSpecifier:v4];
    v7 = [v4 objectForKeyedSubscript:@"pkPass"];
    v8 = [v4 objectForKeyedSubscript:@"pkSnapshotPassView"];
    v9 = [v4 objectForKeyedSubscript:@"pkShowAddButton"];
    self->_showAddButton = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"pkShowState"];
    self->_showState = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"pkShowSubTitle"];
    self->_showSubTitle = [v11 BOOLValue];

    v12 = [v4 objectForKeyedSubscript:@"pkShowFullSeparatorInset"];
    self->_showFullSeparatorInset = [v12 BOOLValue];

    v13 = [v4 target];
    objc_storeWeak(&self->_delegate, v13);

    v14 = [v4 objectForKeyedSubscript:@"pkSettingsContext"];
    self->_settingsContext = [v14 intValue];

    v15 = [v4 objectForKeyedSubscript:@"pkVerificationController"];
    verificationController = self->_verificationController;
    self->_verificationController = v15;

    [(PKPaymentVerificationController *)self->_verificationController setDelegate:self];
    [(PKPaymentPassTableCell *)self setPass:v7 passView:v8];
    [(PKPaymentPassTableCell *)self _configureCellWithSpecifier:v4];
  }
}

- (PKPaymentPassTableCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pk_applyAppearance:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassTableCell *)self mainLabel];
  v6 = [v4 textColor];
  [v5 setTextColor:v6];

  v7 = [(PKPaymentPassTableCell *)self subTextLabel];
  v8 = [v4 altTextColor];
  [v7 setTextColor:v8];

  v9 = [v4 buttonTextColor];

  [(PKPaymentPassTableCell *)self setTintColor:v9];
}

@end