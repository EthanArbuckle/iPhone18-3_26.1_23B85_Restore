@interface PKPassPaymentCardFrontFaceView
- (CGSize)_barcodeSize;
- (CGSize)contentSize;
- (PKPassPaymentCardFrontFaceView)initWithStyle:(int64_t)style;
- (double)_barcodePadding;
- (id)_filterAuxiliaryField:(id)field;
- (id)_filterSecondaryField:(id)field;
- (id)templateForHeaderBucket;
- (id)templateForLayoutMode:(int64_t)mode;
- (void)_handleAccountChanged:(id)changed;
- (void)_handlePeerPaymentAccountChanged:(id)changed;
- (void)_initializeBalanceLabelWithTextColor:(id)color;
- (void)_showFullScreenBarcodeForButton:(id)button;
- (void)_updateAccountBalanceVisibilityAnimated:(BOOL)animated;
- (void)_updateBalanceLabelFontSize;
- (void)_updateBalanceWithAmount:(id)amount;
- (void)_updateStateForAccount:(id)account animated:(BOOL)animated;
- (void)createBodyContentViews;
- (void)createHeaderContentViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDynamicBarcodeData:(id)data;
- (void)setModallyPresented:(BOOL)presented;
- (void)setShowsLiveBalance:(BOOL)balance;
- (void)setViewExpanded:(BOOL)expanded;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKPassPaymentCardFrontFaceView

- (void)_updateBalanceLabelFontSize
{
  if (self->_balanceLabel)
  {
    traitCollection = [(PKPassPaymentCardFrontFaceView *)self traitCollection];
    lhs = [traitCollection preferredContentSizeCategory];

    if (UIContentSizeCategoryCompareToCategory(lhs, *MEMORY[0x1E69DDC50]) == NSOrderedDescending)
    {
      v4 = 28.0;
    }

    else
    {
      v4 = 24.0;
    }

    pass = [(PKPassFaceView *)self pass];
    paymentPass = [pass paymentPass];
    hasAssociatedPeerPaymentAccount = [paymentPass hasAssociatedPeerPaymentAccount];

    balanceLabel = self->_balanceLabel;
    if (hasAssociatedPeerPaymentAccount)
    {
      [MEMORY[0x1E69DB878] pk_peerPaymentCashFontOfSize:v4];
    }

    else
    {
      PKDefaultSystemFontOfSizeAndWeight(v4, *MEMORY[0x1E69DB970]);
    }
    v9 = ;
    [(UILabel *)balanceLabel setFont:v9];

    [(PKPassPaymentCardFrontFaceView *)self setNeedsLayout];
  }
}

- (void)createHeaderContentViews
{
  pass = [(PKPassFaceView *)self pass];
  paymentPass = [pass paymentPass];

  if (([paymentPass hasAssociatedPeerPaymentAccount] & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = PKPassPaymentCardFrontFaceView;
    [(PKPassFrontFaceView *)&v6 createHeaderContentViews];
  }

  balanceLabel = self->_balanceLabel;
  if (balanceLabel)
  {
    [(PKPassFrontFaceView *)self insertContentView:balanceLabel ofType:0];
  }
}

- (CGSize)contentSize
{
  pass = [(PKPassFaceView *)self pass];
  [pass style];
  PKPassFrontFaceContentSize();
  v5 = v4;
  v7 = v6;
  if ([(PKPassFaceView *)self viewExpanded])
  {
    v7 = v5;
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)createBodyContentViews
{
  v38[1] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFrontFaceView *)&v37 createBodyContentViews];
  pass = [(PKPassFaceView *)self pass];
  paymentPass = [pass paymentPass];

  if ([paymentPass supportsBarcodePayment])
  {
    backdropView = self->_backdropView;
    if (!backdropView)
    {
      v6 = objc_alloc_init(PKBackdropView);
      v7 = self->_backdropView;
      self->_backdropView = v6;

      [(PKBackdropView *)self->_backdropView setAlpha:0.0];
      backdropLayer = [(PKBackdropView *)self->_backdropView backdropLayer];
      if (UIAccessibilityIsReduceTransparencyEnabled())
      {
        [backdropLayer setFilters:0];
      }

      else
      {
        v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
        [v9 setName:@"gaussianBlur"];
        [v9 setValue:&unk_1F3CC7520 forKey:@"inputRadius"];
        [backdropLayer setScale:0.1];
        v38[0] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
        [backdropLayer setFilters:v10];
      }

      backdropView = self->_backdropView;
    }

    [(PKPassFrontFaceView *)self insertContentView:backdropView ofType:2];
    scrimView = self->_scrimView;
    if (!scrimView)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v13 = self->_scrimView;
      self->_scrimView = v12;

      [(UIView *)self->_scrimView setClipsToBounds:1];
      v14 = self->_scrimView;
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)v14 setBackgroundColor:whiteColor];

      [(UIView *)self->_scrimView setAlpha:0.0];
      v16 = MEMORY[0x1E69DC740];
      v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.left.and.arrow.down.right"];
      v18 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:2 scale:18.0];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v20 = [v16 pkui_plainConfigurationWithImage:v17 imageConfiguration:v18 foregroundColor:secondaryLabelColor];

      objc_initWeak(&location, self);
      v21 = MEMORY[0x1E69DC628];
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __56__PKPassPaymentCardFrontFaceView_createBodyContentViews__block_invoke;
      v34 = &unk_1E8010A60;
      objc_copyWeak(&v35, &location);
      v22 = [v21 actionWithHandler:&v31];
      v23 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v20 primaryAction:{v22, v31, v32, v33, v34}];
      fullScreenButton = self->_fullScreenButton;
      self->_fullScreenButton = v23;

      [(UIButton *)self->_fullScreenButton setConfigurationUpdateHandler:&__block_literal_global_97];
      [(UIButton *)self->_fullScreenButton setOverrideUserInterfaceStyle:1];
      [(UIView *)self->_scrimView addSubview:self->_fullScreenButton];
      pass2 = [(PKPassFaceView *)self pass];
      compactBankLogoDarkImage = [pass2 compactBankLogoDarkImage];

      v27 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v28 = [MEMORY[0x1E69DCAB8] imageWithPKImage:compactBankLogoDarkImage];
      v29 = [v27 initWithImage:v28];
      compactBankLogoView = self->_compactBankLogoView;
      self->_compactBankLogoView = v29;

      [(UIView *)self->_scrimView addSubview:self->_compactBankLogoView];
      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);

      scrimView = self->_scrimView;
    }

    [(PKPassFrontFaceView *)self insertContentView:scrimView ofType:2];
  }
}

- (void)layoutSubviews
{
  v62.receiver = self;
  v62.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFrontFaceView *)&v62 layoutSubviews];
  contentView = [(PKPassFaceView *)self contentView];
  [contentView bounds];
  balanceLabel = self->_balanceLabel;
  if (balanceLabel)
  {
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    [(UILabel *)balanceLabel sizeToFit];
    [(UILabel *)self->_balanceLabel frame];
    remainder.origin.x = v9;
    remainder.origin.y = v10;
    remainder.size.width = v11;
    remainder.size.height = v12;
    memset(&slice, 0, sizeof(slice));
    v63.origin.x = v9;
    v63.origin.y = v10;
    v63.size.width = v11;
    v63.size.height = v12;
    CGRectDivide(v63, &slice, &remainder, 14.0, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 20.0, CGRectMaxXEdge);
    v13 = self->_balanceLabel;
    PKSizeAlignedInRect();
    [(UILabel *)v13 setFrame:?];
  }

  viewExpanded = [(PKPassFaceView *)self viewExpanded];
  PKPassFrontFaceContentSize();
  v16 = v15;
  v18 = v17;
  [(PKPassPaymentCardFrontFaceView *)self _barcodePadding];
  v20 = v19;
  if (v19 <= 20.0)
  {
    v21 = 16.0;
  }

  else
  {
    v21 = 20.0;
  }

  backdropView = self->_backdropView;
  if (backdropView)
  {
    if (viewExpanded)
    {
      v23 = v16;
    }

    else
    {
      v23 = v18;
    }

    [(PKBackdropView *)backdropView setFrame:0.0, 0.0, v16, v23];
    layer = [(PKBackdropView *)self->_backdropView layer];
    PKPaymentStyleApplyCorners();
  }

  scrimView = self->_scrimView;
  if (scrimView)
  {
    if (viewExpanded)
    {
      v26 = v16;
    }

    else
    {
      v26 = v18;
    }

    [(UIView *)scrimView setFrame:0.0, 0.0, v16, v26];
    layer2 = [(UIView *)self->_scrimView layer];
    PKPaymentStyleApplyCorners();
  }

  fullScreenButton = self->_fullScreenButton;
  if (fullScreenButton)
  {
    [(UIButton *)fullScreenButton sizeToFit];
    [(UIButton *)self->_fullScreenButton frame];
    [(UIButton *)self->_fullScreenButton setCenter:v16 - v29, v29 + 5.0];
  }

  compactBankLogoView = self->_compactBankLogoView;
  if (compactBankLogoView)
  {
    image = [(UIImageView *)compactBankLogoView image];
    [image size];

    PKSizeAspectFit();
    PKSizeRoundToPixel();
    [(UIImageView *)self->_compactBankLogoView setFrame:16.0, 16.0, v32, v33];
  }

  topBarcodeView = self->_topBarcodeView;
  if (!topBarcodeView)
  {
    if (![(NSMutableArray *)self->_oldTopBarcodeViews count])
    {
      goto LABEL_26;
    }

    topBarcodeView = self->_topBarcodeView;
  }

  [(PKBarcodeStickerView *)topBarcodeView frame];
  v39.n128_f64[0] = v18 + 256.0;
  if (viewExpanded)
  {
    v39.n128_f64[0] = v20 + v21 + 24.0;
  }

  v38.n128_f64[0] = v16 * 0.5;
  v35.n128_f64[0] = v16 * 0.5 - v36.n128_f64[0] * 0.5;
  PKRectRoundToPixel(v35, v39, v36, v37, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [(PKBarcodeStickerView *)self->_topBarcodeView setFrame:?];
  oldTopBarcodeViews = self->_oldTopBarcodeViews;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __48__PKPassPaymentCardFrontFaceView_layoutSubviews__block_invoke;
  v59[3] = &__block_descriptor_64_e37_v32__0__PKBarcodeStickerView_8Q16_B24l;
  v59[4] = v41;
  v59[5] = v43;
  v59[6] = v45;
  v59[7] = v47;
  [(NSMutableArray *)oldTopBarcodeViews enumerateObjectsUsingBlock:v59];
LABEL_26:
  if (self->_bottomBarcodeView || [(NSMutableArray *)self->_oldBottomBarcodeViews count])
  {
    [(PKBarcodeStickerView *)self->_bottomBarcodeView frame];
    if (viewExpanded)
    {
      v50.n128_f64[0] = v16 + v52 * -0.5 - v20 - v21;
    }

    else
    {
      v50.n128_f64[0] = v18 + v16 + 256.0 + v52 * -0.5 + -24.0;
    }

    v49.n128_f64[0] = v16 * 0.5;
    PKPointRoundToPixel(v49, v50, v51);
    v54 = v53;
    v56 = v55;
    [(PKBarcodeStickerView *)self->_bottomBarcodeView setCenter:?];
    oldBottomBarcodeViews = self->_oldBottomBarcodeViews;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __48__PKPassPaymentCardFrontFaceView_layoutSubviews__block_invoke_2;
    v58[3] = &__block_descriptor_48_e37_v32__0__PKBarcodeStickerView_8Q16_B24l;
    v58[4] = v54;
    v58[5] = v56;
    [(NSMutableArray *)oldBottomBarcodeViews enumerateObjectsUsingBlock:v58];
  }
}

- (double)_barcodePadding
{
  v2 = PKUIGetMinScreenWidthType();
  result = 0.0;
  if (v2 <= 0xE)
  {
    return dbl_1BE1154E0[v2];
  }

  return result;
}

- (id)templateForHeaderBucket
{
  v3 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v3 setBucketAlignment:3];
  PKPassFrontFaceContentSize();
  v5 = v4;
  buckets = [(PKPassFaceView *)self buckets];
  v7 = [buckets objectAtIndex:0];
  firstObject = [v7 firstObject];

  v9 = [buckets objectAtIndex:3];
  firstObject2 = [v9 firstObject];
  v11 = [(PKPassPaymentCardFrontFaceView *)self _filterAuxiliaryField:firstObject2];

  [(PKPassFaceView *)self cobrandLogoSize];
  if (firstObject && v11)
  {
    v13 = v5 * 0.5 + 17.0;
    v14 = v5 * 0.5 + -34.0;
  }

  else
  {
    v15 = fmin(v12, v5 * 0.7 + -34.0);
    v13 = v15 + 17.0;
    v14 = v5 + -34.0 - v15;
  }

  [(PKPassBucketTemplate *)v3 setBucketRect:v13, 12.0, v14, 35.0];
  [(PKPassBucketTemplate *)v3 setMaxFields:1];
  defaultFieldTemplate = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  v17 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
  v18 = [v17 fontDescriptorWithSymbolicTraits:2];

  v19 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:11.0];

  [defaultFieldTemplate setLabelFont:v19];
  defaultFieldTemplate2 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  label = [firstObject label];
  v22 = label;
  if (label)
  {
    v23 = [(__CFString *)label length];
    v24 = 0;
    if (v22 != @" " && v23)
    {
      v24 = [(__CFString *)v22 isEqualToString:@" "]^ 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = PKPassPaymentFrontFaceValueFont(v24);
  [defaultFieldTemplate2 setValueFont:v25];

  defaultFieldTemplate3 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  [defaultFieldTemplate3 setVerticalPadding:-3.0];

  defaultFieldTemplate4 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  [defaultFieldTemplate4 setSuppressesEmptyLabel:1];

  defaultFieldTemplate5 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  [defaultFieldTemplate5 setTextAlignment:2];

  return v3;
}

- (PKPassPaymentCardFrontFaceView)initWithStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = PKPassPaymentCardFrontFaceView;
  v3 = [(PKPassFrontFaceView *)&v9 initWithStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    oldTopBarcodeViews = v3->_oldTopBarcodeViews;
    v3->_oldTopBarcodeViews = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    oldBottomBarcodeViews = v3->_oldBottomBarcodeViews;
    v3->_oldBottomBarcodeViews = v6;
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69BC360];
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  [defaultCenter removeObserver:self name:v4 object:mEMORY[0x1E69B9000]];

  v6.receiver = self;
  v6.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFaceView *)&v6 dealloc];
}

- (id)templateForLayoutMode:(int64_t)mode
{
  v4 = objc_alloc_init(PKPassFaceTemplate);
  [(PKPassFaceTemplate *)v4 setBarcodeMaxSize:290.0, 165.0];
  defaultFieldTemplate = [(PKPassFaceTemplate *)v4 defaultFieldTemplate];
  [defaultFieldTemplate setTextAlignment:0];

  defaultFieldTemplate2 = [(PKPassFaceTemplate *)v4 defaultFieldTemplate];
  v7 = *MEMORY[0x1E69DDD10];
  v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:11.0];

  [defaultFieldTemplate2 setLabelFont:v10];
  PKPassFrontFaceContentSize();
  v12 = v11;
  v14 = v13;
  buckets = [(PKPassFaceView *)self buckets];
  v16 = [buckets objectAtIndex:0];
  firstObject = [v16 firstObject];

  v17 = [buckets objectAtIndex:1];
  firstObject2 = [v17 firstObject];

  v19 = [buckets objectAtIndex:2];
  firstObject3 = [v19 firstObject];
  v21 = [(PKPassPaymentCardFrontFaceView *)self _filterSecondaryField:firstObject3];

  v22 = [buckets objectAtIndex:3];
  firstObject4 = [v22 firstObject];
  v24 = [(PKPassPaymentCardFrontFaceView *)self _filterAuxiliaryField:firstObject4];

  if (firstObject2)
  {
    v25 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v25 setBucketAlignment:3];
    if (v21)
    {
      v26 = v12 * 0.5 + -34.0;
    }

    else
    {
      v26 = v12 + -34.0;
    }

    [(PKPassBucketTemplate *)v25 setBucketRect:17.0, v14 + -35.0 + -12.0, v26, 35.0];
    [(PKPassBucketTemplate *)v25 setMaxFields:1];
    defaultFieldTemplate3 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    label = [firstObject2 label];
    v29 = label;
    if (label)
    {
      v30 = [(__CFString *)label length];
      v31 = 0;
      if (v29 != @" " && v30)
      {
        v31 = [(__CFString *)v29 isEqualToString:@" "]^ 1;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = PKPassPaymentFrontFaceValueFont(v31);
    [defaultFieldTemplate3 setValueFont:v32];

    defaultFieldTemplate4 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    v34 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
    v35 = [v34 fontDescriptorWithSymbolicTraits:2];

    v36 = [MEMORY[0x1E69DB878] fontWithDescriptor:v35 size:11.0];

    [defaultFieldTemplate4 setLabelFont:v36];
    defaultFieldTemplate5 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    [defaultFieldTemplate5 setVerticalPadding:-3.0];

    defaultFieldTemplate6 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    [defaultFieldTemplate6 setSuppressesEmptyLabel:1];

    defaultFieldTemplate7 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    [defaultFieldTemplate7 setTextAlignment:0];

    [(PKPassFaceTemplate *)v4 addBucketTemplate:v25];
  }

  if (v21)
  {
    v40 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v40 setBucketAlignment:3];
    v41 = 17.0;
    if (firstObject2)
    {
      v41 = v12 * 0.5 + 17.0;
      v42 = v12 * 0.5 + -34.0;
    }

    else
    {
      v42 = v12 + -34.0;
    }

    [(PKPassBucketTemplate *)v40 setBucketRect:v41, v14 + -35.0 + -12.0, v42, 35.0, v24];
    [(PKPassBucketTemplate *)v40 setMaxFields:1];
    defaultFieldTemplate8 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    label2 = [v21 label];
    v45 = label2;
    if (label2)
    {
      v46 = [(__CFString *)label2 length];
      v47 = 0;
      if (v45 != @" " && v46)
      {
        v47 = [(__CFString *)v45 isEqualToString:@" "]^ 1;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = PKPassPaymentFrontFaceValueFont(v47);
    [defaultFieldTemplate8 setValueFont:v48];

    defaultFieldTemplate9 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    v50 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
    v51 = [v50 fontDescriptorWithSymbolicTraits:2];

    v52 = [MEMORY[0x1E69DB878] fontWithDescriptor:v51 size:11.0];

    [defaultFieldTemplate9 setLabelFont:v52];
    defaultFieldTemplate10 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    [defaultFieldTemplate10 setVerticalPadding:-3.0];

    defaultFieldTemplate11 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    [defaultFieldTemplate11 setSuppressesEmptyLabel:1];

    defaultFieldTemplate12 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    [defaultFieldTemplate12 setTextAlignment:2];

    [(PKPassFaceTemplate *)v4 addBucketTemplate:v40];
    v24 = v72;
  }

  if (v24)
  {
    v56 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v56 setBucketAlignment:3];
    if (firstObject)
    {
      v57 = v12 * 0.5 + -34.0;
    }

    else
    {
      v57 = v12 + -34.0;
    }

    [(PKPassBucketTemplate *)v56 setBucketRect:17.0, 12.0, v57, 35.0];
    [(PKPassBucketTemplate *)v56 setMaxFields:1];
    defaultFieldTemplate13 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    label3 = [v24 label];
    v60 = label3;
    if (label3)
    {
      v61 = [(__CFString *)label3 length];
      v62 = 0;
      if (v60 != @" " && v61)
      {
        v62 = [(__CFString *)v60 isEqualToString:@" "]^ 1;
      }
    }

    else
    {
      v62 = 0;
    }

    v63 = PKPassPaymentFrontFaceValueFont(v62);
    [defaultFieldTemplate13 setValueFont:v63];

    defaultFieldTemplate14 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    v65 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
    v66 = [v65 fontDescriptorWithSymbolicTraits:2];

    v67 = [MEMORY[0x1E69DB878] fontWithDescriptor:v66 size:11.0];

    [defaultFieldTemplate14 setLabelFont:v67];
    defaultFieldTemplate15 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    [defaultFieldTemplate15 setVerticalPadding:-3.0];

    defaultFieldTemplate16 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    [defaultFieldTemplate16 setSuppressesEmptyLabel:1];

    defaultFieldTemplate17 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    [defaultFieldTemplate17 setTextAlignment:0];

    [(PKPassFaceTemplate *)v4 addBucketTemplate:v56];
  }

  return v4;
}

- (id)_filterSecondaryField:(id)field
{
  fieldCopy = field;
  v4 = fieldCopy;
  if (!fieldCopy)
  {
    goto LABEL_8;
  }

  v5 = [fieldCopy key];
  v6 = *MEMORY[0x1E69BBB90];
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_8;
  }

  if (v7 && v6)
  {
    v9 = [v7 isEqualToString:v6];

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v10 = v4;
LABEL_11:

  return v10;
}

- (id)_filterAuxiliaryField:(id)field
{
  fieldCopy = field;
  v4 = fieldCopy;
  if (!fieldCopy)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v5 = [fieldCopy key];
  v6 = *MEMORY[0x1E69BBB98];
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {
    goto LABEL_15;
  }

  if (v7 && v6)
  {
    v9 = [v7 isEqualToString:v6];

    if (v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v11 = *MEMORY[0x1E69BBBA0];
  v7 = v8;
  v12 = v7;
  if (v7 == v11)
  {
LABEL_15:
  }

  else
  {
    if (!v8 || !v11)
    {

LABEL_18:
      v10 = v4;
      goto LABEL_19;
    }

    v13 = [v7 isEqualToString:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  v10 = 0;
LABEL_19:

LABEL_20:

  return v10;
}

void __56__PKPassPaymentCardFrontFaceView_createBodyContentViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _showFullScreenBarcodeForButton:v4];
}

- (void)_initializeBalanceLabelWithTextColor:(id)color
{
  if (!self->_balanceLabel)
  {
    v4 = MEMORY[0x1E69DCC10];
    colorCopy = color;
    v6 = objc_alloc_init(v4);
    balanceLabel = self->_balanceLabel;
    self->_balanceLabel = v6;

    [(UILabel *)self->_balanceLabel setTextColor:colorCopy];
    [(PKPassPaymentCardFrontFaceView *)self _updateBalanceLabelFontSize];
    v8 = self->_balanceLabel;

    [(PKPassFrontFaceView *)self insertContentView:v8 ofType:0];
  }
}

- (void)setShowsLiveBalance:(BOOL)balance
{
  if (balance)
  {
    pass = [(PKPassFaceView *)self pass];
    paymentPass = [pass paymentPass];

    if ([paymentPass hasAssociatedPeerPaymentAccount])
    {
      mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
      account = [mEMORY[0x1E69B9000] account];
      associatedPassUniqueID = [account associatedPassUniqueID];
      uniqueID = [paymentPass uniqueID];
      v10 = [associatedPassUniqueID isEqualToString:uniqueID];

      if (v10)
      {
        if (!self->_balanceLabel)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:self selector:sel__handlePeerPaymentAccountChanged_ name:*MEMORY[0x1E69BC360] object:mEMORY[0x1E69B9000]];
        }

        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [(PKPassPaymentCardFrontFaceView *)self _initializeBalanceLabelWithTextColor:whiteColor];

        currentBalance = [account currentBalance];
        [(PKPassPaymentCardFrontFaceView *)self _updateBalanceWithAmount:currentBalance];

        [(UILabel *)self->_balanceLabel setAlpha:1.0];
      }
    }

    else if ([paymentPass associatedAccountFeatureIdentifier] == 4)
    {
      objc_initWeak(&location, self);
      mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54__PKPassPaymentCardFrontFaceView_setShowsLiveBalance___block_invoke;
      v16[3] = &unk_1E80159B0;
      objc_copyWeak(&v17, &location);
      [mEMORY[0x1E69B8400] defaultAccountForFeature:4 completion:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    balanceLabel = self->_balanceLabel;

    [(UILabel *)balanceLabel setAlpha:0.0];
  }
}

void __54__PKPassPaymentCardFrontFaceView_setShowsLiveBalance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PKPassPaymentCardFrontFaceView_setShowsLiveBalance___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __54__PKPassPaymentCardFrontFaceView_setShowsLiveBalance___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (!WeakRetained[119])
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      [v3 addObserver:v5 selector:sel__handleAccountChanged_ name:*MEMORY[0x1E69B9E60] object:0];
    }

    v4 = [MEMORY[0x1E69DC888] blackColor];
    [v5 _initializeBalanceLabelWithTextColor:v4];

    [v5 _updateStateForAccount:*(a1 + 32) animated:0];
    WeakRetained = v5;
  }
}

- (void)setModallyPresented:(BOOL)presented
{
  v6.receiver = self;
  v6.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFaceView *)&v6 setModallyPresented:presented];
  pass = [(PKPassFaceView *)self pass];
  paymentPass = [pass paymentPass];

  if ([paymentPass associatedAccountFeatureIdentifier] == 4)
  {
    [(PKPassPaymentCardFrontFaceView *)self _updateAccountBalanceVisibilityAnimated:1];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassPaymentCardFrontFaceView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPassPaymentCardFrontFaceView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (changeCopy && traitCollection)
  {
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, preferredContentSizeCategory);

    if (v8 == NSOrderedSame)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (traitCollection && !changeCopy)
  {
LABEL_7:
    [(PKPassPaymentCardFrontFaceView *)self _updateBalanceLabelFontSize];
  }

LABEL_8:
}

- (void)_showFullScreenBarcodeForButton:(id)button
{
  delegate = [(PKPassFaceView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passFaceViewExpandButtonTapped:self];
  }
}

- (void)_updateBalanceWithAmount:(id)amount
{
  amountCopy = amount;
  pass = [(PKPassFaceView *)self pass];
  paymentPass = [pass paymentPass];
  devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];

  if (!amountCopy)
  {
    balanceLabel = self->_balanceLabel;
LABEL_10:
    [(UILabel *)balanceLabel setText:0];
    goto LABEL_11;
  }

  balanceLabel = self->_balanceLabel;
  if (balanceLabel)
  {
    v8 = devicePrimaryPaymentApplication == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_10;
  }

  minimalFormattedStringValue = [amountCopy minimalFormattedStringValue];
  pass2 = [(PKPassFaceView *)self pass];
  paymentPass2 = [pass2 paymentPass];
  hasAssociatedPeerPaymentAccount = [paymentPass2 hasAssociatedPeerPaymentAccount];

  if (hasAssociatedPeerPaymentAccount)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
    v14 = [amountCopy minimalFormattedStringValueInLocale:v13];

    minimalFormattedStringValue = v14;
  }

  [(UILabel *)self->_balanceLabel setText:minimalFormattedStringValue];

LABEL_11:
}

- (void)_handleAccountChanged:(id)changed
{
  changedCopy = changed;
  pass = [(PKPassFaceView *)self pass];
  paymentPass = [pass paymentPass];

  if ([paymentPass associatedAccountFeatureIdentifier] == 4)
  {
    objc_initWeak(&location, self);
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PKPassPaymentCardFrontFaceView__handleAccountChanged___block_invoke;
    v8[3] = &unk_1E8017060;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    [mEMORY[0x1E69B8400] defaultAccountForFeature:4 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __56__PKPassPaymentCardFrontFaceView__handleAccountChanged___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Failed to retrieve Apple Balance account with error %@", buf, 0xCu);
    }
  }

  else if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PKPassPaymentCardFrontFaceView__handleAccountChanged___block_invoke_69;
    block[3] = &unk_1E8011828;
    objc_copyWeak(&v13, (a1 + 40));
    v8 = v5;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v13);
  }
}

void __56__PKPassPaymentCardFrontFaceView__handleAccountChanged___block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateStateForAccount:*(a1 + 32) animated:1];
    [*(a1 + 40) setNeedsLayout];
    WeakRetained = v3;
  }
}

- (void)_updateStateForAccount:(id)account animated:(BOOL)animated
{
  animatedCopy = animated;
  accountCopy = account;
  self->_accountIsActive = [accountCopy state] == 1;
  if ([accountCopy supportsTopUp])
  {
    supportsAMPTopUp = 1;
  }

  else
  {
    supportsAMPTopUp = [accountCopy supportsAMPTopUp];
  }

  self->_accountSupportsTopUp = supportsAMPTopUp;
  if (self->_accountIsActive)
  {
    appleBalanceDetails = [accountCopy appleBalanceDetails];
    accountSummary = [appleBalanceDetails accountSummary];
    currentBalance = [accountSummary currentBalance];
    currencyCode = [appleBalanceDetails currencyCode];
    v11 = PKCurrencyAmountMake();
    [(PKPassPaymentCardFrontFaceView *)self _updateBalanceWithAmount:v11];
  }

  [(PKPassPaymentCardFrontFaceView *)self _updateAccountBalanceVisibilityAnimated:animatedCopy];
}

- (void)_updateAccountBalanceVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = 0.0;
  if (self->_accountIsActive)
  {
    modallyPresented = [(PKPassFaceView *)self modallyPresented];
    v5 = 1.0;
    if (modallyPresented && self->_accountSupportsTopUp)
    {
      v5 = 0.0;
    }
  }

  if (animatedCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PKPassPaymentCardFrontFaceView__updateAccountBalanceVisibilityAnimated___block_invoke;
    v8[3] = &unk_1E80119C8;
    v8[4] = self;
    *&v8[5] = v5;
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.2];
  }

  else
  {
    balanceLabel = self->_balanceLabel;

    [(UILabel *)balanceLabel setAlpha:v5];
  }
}

- (void)_handlePeerPaymentAccountChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPassPaymentCardFrontFaceView__handlePeerPaymentAccountChanged___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__PKPassPaymentCardFrontFaceView__handlePeerPaymentAccountChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B9000] sharedInstance];
  v5 = [v2 account];

  v3 = *(a1 + 32);
  v4 = [v5 currentBalance];
  [v3 _updateBalanceWithAmount:v4];

  [*(a1 + 32) setNeedsLayout];
}

- (void)setViewExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v11 = *MEMORY[0x1E69E9840];
  viewExpanded = [(PKPassFaceView *)self viewExpanded];
  v8.receiver = self;
  v8.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFaceView *)&v8 setViewExpanded:expandedCopy];
  if (viewExpanded != expandedCopy)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = expandedCopy;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPassPaymentCardFrontFaceView setting viewExpanded: %ld", buf, 0xCu);
    }

    if (expandedCopy)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [(PKBackdropView *)self->_backdropView setAlpha:v7];
    [(UIView *)self->_scrimView setAlpha:v7];
    [(PKPassPaymentCardFrontFaceView *)self setNeedsLayout];
  }
}

- (void)setDynamicBarcodeData:(id)data
{
  dataCopy = data;
  dynamicBarcodeData = [(PKPassFaceView *)self dynamicBarcodeData];
  v6 = PKEqualObjects();

  v33.receiver = self;
  v33.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFaceView *)&v33 setDynamicBarcodeData:dataCopy];
  if ((v6 & 1) == 0)
  {
    PKPassFrontFaceContentSize();
    v7 = self->_topBarcodeView;
    topBarcodeView = self->_topBarcodeView;
    self->_topBarcodeView = 0;

    if (v7)
    {
      [(NSMutableArray *)self->_oldTopBarcodeViews addObject:v7];
      objc_initWeak(&location, self->_oldTopBarcodeViews);
      v9 = MEMORY[0x1E69DD250];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __56__PKPassPaymentCardFrontFaceView_setDynamicBarcodeData___block_invoke;
      v30[3] = &unk_1E8010970;
      v31 = v7;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __56__PKPassPaymentCardFrontFaceView_setDynamicBarcodeData___block_invoke_2;
      v27[3] = &unk_1E8018F58;
      v28 = v31;
      objc_copyWeak(&v29, &location);
      [v9 pkui_animateUsingOptions:4 animations:v30 completion:v27];
      objc_destroyWeak(&v29);

      objc_destroyWeak(&location);
    }

    v10 = self->_bottomBarcodeView;
    bottomBarcodeView = self->_bottomBarcodeView;
    self->_bottomBarcodeView = 0;

    if (v10)
    {
      [(NSMutableArray *)self->_oldBottomBarcodeViews addObject:v10];
      objc_initWeak(&location, self->_oldBottomBarcodeViews);
      v12 = MEMORY[0x1E69DD250];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __56__PKPassPaymentCardFrontFaceView_setDynamicBarcodeData___block_invoke_3;
      v25[3] = &unk_1E8010970;
      v26 = v10;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __56__PKPassPaymentCardFrontFaceView_setDynamicBarcodeData___block_invoke_4;
      v22[3] = &unk_1E8018F58;
      v23 = v26;
      objc_copyWeak(&v24, &location);
      [v12 pkui_animateUsingOptions:4 animations:v25 completion:v22];
      objc_destroyWeak(&v24);

      objc_destroyWeak(&location);
    }

    if (dataCopy)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69B86B0]);
      [v13 setFormat:1];
      [v13 setMessageData:dataCopy];
      v14 = [[PKBarcodeStickerView alloc] initWithBarcode:v13 validityState:0];
      v15 = self->_bottomBarcodeView;
      self->_bottomBarcodeView = v14;

      if ((PKShowBarcodeForScreenshotAndBroadcasting() & 1) == 0)
      {
        [(UIView *)self->_bottomBarcodeView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
      }

      [(PKBarcodeStickerView *)self->_bottomBarcodeView setShouldMatteCode:0];
      [(PKBarcodeStickerView *)self->_bottomBarcodeView setAccessibilityElementsHidden:1];
      PKFloatRoundToPixel();
      [(PKBarcodeStickerView *)self->_bottomBarcodeView setDesiredBarcodeSize:v16, v16];
      [(UIView *)self->_scrimView addSubview:self->_bottomBarcodeView];
      [(PKBarcodeStickerView *)self->_bottomBarcodeView sizeToFit];
      v17 = objc_alloc_init(MEMORY[0x1E69B86B0]);
      [v17 setFormat:4];
      [v17 setMessageData:dataCopy];
      [v17 setShouldRemoveQuietZone:1];
      v18 = [[PKBarcodeStickerView alloc] initWithBarcode:v17 validityState:0];
      v19 = self->_topBarcodeView;
      self->_topBarcodeView = v18;

      if ((PKShowBarcodeForScreenshotAndBroadcasting() & 1) == 0)
      {
        [(UIView *)self->_topBarcodeView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
      }

      v20 = self->_topBarcodeView;
      [(PKPassPaymentCardFrontFaceView *)self _barcodeSize];
      [(PKBarcodeStickerView *)v20 setDesiredBarcodeSize:?];
      [(PKBarcodeStickerView *)self->_topBarcodeView setShouldMatteCode:0];
      [(PKBarcodeStickerView *)self->_topBarcodeView setAccessibilityElementsHidden:1];
      [(UIView *)self->_scrimView addSubview:self->_topBarcodeView];
      [(PKBarcodeStickerView *)self->_topBarcodeView sizeToFit];
      [(PKPassPaymentCardFrontFaceView *)self setNeedsLayout];
      [(PKPassPaymentCardFrontFaceView *)self layoutIfNeeded];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __56__PKPassPaymentCardFrontFaceView_setDynamicBarcodeData___block_invoke_5;
      v21[3] = &unk_1E8010970;
      v21[4] = self;
      [MEMORY[0x1E69DD250] pkui_animateUsingOptions:4 animations:v21 completion:0];
    }
  }
}

void __56__PKPassPaymentCardFrontFaceView_setDynamicBarcodeData___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) removeFromSuperview];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained removeObject:*(a1 + 32)];
  }
}

void __56__PKPassPaymentCardFrontFaceView_setDynamicBarcodeData___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) removeFromSuperview];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained removeObject:*(a1 + 32)];
  }
}

uint64_t __56__PKPassPaymentCardFrontFaceView_setDynamicBarcodeData___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 976) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 984);

  return [v2 setAlpha:1.0];
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
    v3 = dbl_1BE115558[v2];
    v4 = dbl_1BE1155D0[v2];
  }

  result.height = v3;
  result.width = v4;
  return result;
}

@end