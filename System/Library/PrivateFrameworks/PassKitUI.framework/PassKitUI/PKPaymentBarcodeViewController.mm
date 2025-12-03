@interface PKPaymentBarcodeViewController
- ($3CC2805F0189FCCE51047C0D2B5A52A9)_barcodePadding;
- (CGSize)_barcodeSize;
- (PKPaymentBarcodeViewController)initWithPass:(id)pass;
- (void)_closeButtonPressed:(id)pressed;
- (void)invalidate;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPaymentBarcodeViewController

- (PKPaymentBarcodeViewController)initWithPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = PKPaymentBarcodeViewController;
  v6 = [(PKPaymentBarcodeViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
  }

  return v7;
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = PKPaymentBarcodeViewController;
  [(PKPaymentBarcodeViewController *)&v40 viewDidLoad];
  [(PKPaymentBarcodeViewController *)self _barcodePadding];
  v3 = v38;
  *&self->_viewSizeInfo.barcodeTopPadding = *location;
  *&self->_viewSizeInfo.disclaimerSidePadding = v3;
  self->_viewSizeInfo.altTextInset = v39;
  view = [(PKPaymentBarcodeViewController *)self view];
  v5 = MEMORY[0x1E69DC740];
  v6 = [MEMORY[0x1E69DCAB8] imageNamed:@"xmark.circle.fill"];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v8 = [v5 pkui_plainConfigurationWithImage:v6 imageConfiguration:0 foregroundColor:labelColor];

  objc_initWeak(location, self);
  v9 = MEMORY[0x1E69DC628];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __45__PKPaymentBarcodeViewController_viewDidLoad__block_invoke;
  v35[3] = &unk_1E8010A60;
  objc_copyWeak(&v36, location);
  v10 = [v9 actionWithHandler:v35];
  v11 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v8 primaryAction:v10];
  closeButton = self->_closeButton;
  self->_closeButton = v11;

  [view addSubview:self->_closeButton];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [view setBackgroundColor:whiteColor];

  [(PKPaymentBarcodeViewController *)self setOverrideUserInterfaceStyle:1];
  v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  disclaimerText = self->_disclaimerText;
  self->_disclaimerText = v14;

  v16 = self->_disclaimerText;
  v17 = PKLocalizedAquamanString(&cfstr_AquamanFraudWa.isa);
  [(UILabel *)v16 setText:v17];

  [view addSubview:self->_disclaimerText];
  [(UILabel *)self->_disclaimerText setNumberOfLines:0];
  [(UILabel *)self->_disclaimerText setTextAlignment:1];
  v18 = self->_disclaimerText;
  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)v18 setFont:v19];

  v20 = self->_disclaimerText;
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)v20 setTextColor:systemGrayColor];

  v22 = objc_alloc_init(MEMORY[0x1E69B86B0]);
  [v22 setFormat:4];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_barcodeData encoding:4];
  [v22 setAltText:v23];

  [v22 setMessageData:self->_barcodeData];
  [v22 setShouldRemoveQuietZone:1];
  v24 = [[PKBarcodeStickerView alloc] initWithBarcode:v22 validityState:0];
  [(PKBarcodeStickerView *)v24 setAltTextInset:self->_viewSizeInfo.altTextInset];
  v25 = MEMORY[0x1E69DB878];
  v26 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  [v26 pointSize];
  v27 = [v25 monospacedSystemFontOfSize:? weight:?];

  [(PKBarcodeStickerView *)v24 setAltTextFont:v27];
  [(PKBarcodeStickerView *)v24 setAccessibilityElementsHidden:1];
  [(PKBarcodeStickerView *)v24 setShouldMatteCode:0];
  [(PKPaymentBarcodeViewController *)self _barcodeSize];
  [(PKBarcodeStickerView *)v24 setDesiredBarcodeSize:?];
  v28 = [[PKRightAngleRotatingView alloc] initWithRotatedView:v24];
  barcodeView = self->_barcodeView;
  self->_barcodeView = v28;

  [(PKRightAngleRotatingView *)self->_barcodeView setOrientation:3];
  if ((PKShowBarcodeForScreenshotAndBroadcasting() & 1) == 0)
  {
    [(UIView *)self->_barcodeView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
  }

  compactBankLogoDarkImage = [(PKPaymentPass *)self->_pass compactBankLogoDarkImage];
  v31 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v32 = [MEMORY[0x1E69DCAB8] imageWithPKImage:compactBankLogoDarkImage];
  v33 = [v31 initWithImage:v32];
  compactBankLogoView = self->_compactBankLogoView;
  self->_compactBankLogoView = v33;

  [(UIImageView *)self->_compactBankLogoView setContentMode:1];
  [view addSubview:self->_compactBankLogoView];
  [view addSubview:self->_barcodeView];

  objc_destroyWeak(&v36);
  objc_destroyWeak(location);
}

void __45__PKPaymentBarcodeViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _closeButtonPressed:v4];
}

- (void)viewWillLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = PKPaymentBarcodeViewController;
  [(PKPaymentBarcodeViewController *)&v27 viewWillLayoutSubviews];
  view = [(PKPaymentBarcodeViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKPaymentBarcodeViewController *)self _barcodeSize];
  v13 = v12;
  memset(&slice, 0, sizeof(slice));
  v25.origin.x = v5;
  v25.origin.y = v7;
  disclaimerText = self->_disclaimerText;
  v25.size.width = v9;
  v25.size.height = v11;
  [(UILabel *)disclaimerText pkui_sizeThatFits:1 forceWordWrap:v9 + self->_viewSizeInfo.disclaimerSidePadding * -2.0, 1.79769313e308];
  v16 = v15;
  v17 = (v11 - (v13 + self->_viewSizeInfo.disclaimerToBarcodePadding + v15 + self->_viewSizeInfo.bankToDisclaimerPadding + 24.0 + self->_viewSizeInfo.barcodeTopPadding * 2.0)) * 0.5 + 8.0;
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  CGRectDivide(v28, &slice, &v25, v17, CGRectMinYEdge);
  closeButton = self->_closeButton;
  if (closeButton)
  {
    [(UIButton *)closeButton sizeToFit];
    [(UIButton *)self->_closeButton frame];
    [(UIButton *)self->_closeButton setFrame:v5 + v9 - v19 + -12.0, v7 + 12.0];
  }

  if (self->_compactBankLogoView)
  {
    CGRectDivide(v25, &slice, &v25, 24.0, CGRectMinYEdge);
    [(UIImageView *)self->_compactBankLogoView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  CGRectDivide(v25, &slice, &v25, self->_viewSizeInfo.bankToDisclaimerPadding, CGRectMinYEdge);
  if (self->_disclaimerText)
  {
    CGRectDivide(v25, &slice, &v25, v16, CGRectMinYEdge);
    v20 = self->_disclaimerText;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UILabel *)v20 setFrame:?];
  }

  CGRectDivide(v25, &slice, &v25, self->_viewSizeInfo.disclaimerToBarcodePadding + self->_viewSizeInfo.barcodeTopPadding, CGRectMinYEdge);
  barcodeView = self->_barcodeView;
  if (barcodeView)
  {
    rotatedView = [(PKRightAngleRotatingView *)barcodeView rotatedView];
    [rotatedView sizeThatFits:{v13, 1.79769313e308}];
    v24 = v23;

    CGRectDivide(v25, &slice, &v25, v13, CGRectMinYEdge);
    [(PKRightAngleRotatingView *)self->_barcodeView setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v24, v13];
    [(PKRightAngleRotatingView *)self->_barcodeView setCenter:v9 * 0.5, v13 * 0.5 + slice.origin.y];
  }
}

- (void)invalidate
{
  v2[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PKPaymentBarcodeViewController_invalidate__block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__PKPaymentBarcodeViewController_invalidate__block_invoke_2;
  v2[3] = &unk_1E8011D28;
  [MEMORY[0x1E69DD250] pkui_animateUsingOptions:4 animations:v3 completion:v2];
}

void __44__PKPaymentBarcodeViewController_invalidate__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 992) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 992);
  *(v2 + 992) = 0;
}

- (void)_closeButtonPressed:(id)pressed
{
  presentingViewController = [(PKPaymentBarcodeViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- ($3CC2805F0189FCCE51047C0D2B5A52A9)_barcodePadding
{
  retstr->var4 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = PKUIGetMinScreenWidthType();
  if (result <= 0xE)
  {
    v5 = dbl_1BE1169A0[result];
    v6 = dbl_1BE116A18[result];
    v7 = dbl_1BE116A90[result];
    v8 = dbl_1BE116B08[result];
    *&retstr->var0 = qword_1BE116928[result];
    retstr->var1 = v5;
    retstr->var2 = v6;
    retstr->var3 = v7;
    retstr->var4 = v8;
  }

  return result;
}

- (CGSize)_barcodeSize
{
  v2 = PKUIGetMinScreenWidthType();
  if (v2 > 0xE)
  {
    v4 = *MEMORY[0x1E695F060];
    v3 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v3 = dbl_1BE116B80[v2];
    v4 = dbl_1BE116BF8[v2];
  }

  result.height = v3;
  result.width = v4;
  return result;
}

@end