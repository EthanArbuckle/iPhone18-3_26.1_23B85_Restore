@interface PKPassPaymentCardFrontFaceView
- (CGSize)_barcodeSize;
- (CGSize)contentSize;
- (PKPassPaymentCardFrontFaceView)initWithStyle:(int64_t)a3;
- (double)_barcodePadding;
- (id)_filterAuxiliaryField:(id)a3;
- (id)_filterSecondaryField:(id)a3;
- (id)templateForHeaderBucket;
- (id)templateForLayoutMode:(int64_t)a3;
- (void)_handleAccountChanged:(id)a3;
- (void)_handlePeerPaymentAccountChanged:(id)a3;
- (void)_initializeBalanceLabelWithTextColor:(id)a3;
- (void)_showFullScreenBarcodeForButton:(id)a3;
- (void)_updateAccountBalanceVisibilityAnimated:(BOOL)a3;
- (void)_updateBalanceLabelFontSize;
- (void)_updateBalanceWithAmount:(id)a3;
- (void)_updateStateForAccount:(id)a3 animated:(BOOL)a4;
- (void)createBodyContentViews;
- (void)createHeaderContentViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDynamicBarcodeData:(id)a3;
- (void)setModallyPresented:(BOOL)a3;
- (void)setShowsLiveBalance:(BOOL)a3;
- (void)setViewExpanded:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPassPaymentCardFrontFaceView

- (void)_updateBalanceLabelFontSize
{
  if (self->_balanceLabel)
  {
    v3 = [(PKPassPaymentCardFrontFaceView *)self traitCollection];
    lhs = [v3 preferredContentSizeCategory];

    if (UIContentSizeCategoryCompareToCategory(lhs, *MEMORY[0x1E69DDC50]) == NSOrderedDescending)
    {
      v4 = 28.0;
    }

    else
    {
      v4 = 24.0;
    }

    v5 = [(PKPassFaceView *)self pass];
    v6 = [v5 paymentPass];
    v7 = [v6 hasAssociatedPeerPaymentAccount];

    balanceLabel = self->_balanceLabel;
    if (v7)
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
  v3 = [(PKPassFaceView *)self pass];
  v4 = [v3 paymentPass];

  if (([v4 hasAssociatedPeerPaymentAccount] & 1) == 0)
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
  v3 = [(PKPassFaceView *)self pass];
  [v3 style];
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
  v3 = [(PKPassFaceView *)self pass];
  v4 = [v3 paymentPass];

  if ([v4 supportsBarcodePayment])
  {
    backdropView = self->_backdropView;
    if (!backdropView)
    {
      v6 = objc_alloc_init(PKBackdropView);
      v7 = self->_backdropView;
      self->_backdropView = v6;

      [(PKBackdropView *)self->_backdropView setAlpha:0.0];
      v8 = [(PKBackdropView *)self->_backdropView backdropLayer];
      if (UIAccessibilityIsReduceTransparencyEnabled())
      {
        [v8 setFilters:0];
      }

      else
      {
        v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
        [v9 setName:@"gaussianBlur"];
        [v9 setValue:&unk_1F3CC7520 forKey:@"inputRadius"];
        [v8 setScale:0.1];
        v38[0] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
        [v8 setFilters:v10];
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
      v15 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)v14 setBackgroundColor:v15];

      [(UIView *)self->_scrimView setAlpha:0.0];
      v16 = MEMORY[0x1E69DC740];
      v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.left.and.arrow.down.right"];
      v18 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:2 scale:18.0];
      v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v20 = [v16 pkui_plainConfigurationWithImage:v17 imageConfiguration:v18 foregroundColor:v19];

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
      v25 = [(PKPassFaceView *)self pass];
      v26 = [v25 compactBankLogoDarkImage];

      v27 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v28 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v26];
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
  v3 = [(PKPassFaceView *)self contentView];
  [v3 bounds];
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

  v14 = [(PKPassFaceView *)self viewExpanded];
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
    if (v14)
    {
      v23 = v16;
    }

    else
    {
      v23 = v18;
    }

    [(PKBackdropView *)backdropView setFrame:0.0, 0.0, v16, v23];
    v24 = [(PKBackdropView *)self->_backdropView layer];
    PKPaymentStyleApplyCorners();
  }

  scrimView = self->_scrimView;
  if (scrimView)
  {
    if (v14)
    {
      v26 = v16;
    }

    else
    {
      v26 = v18;
    }

    [(UIView *)scrimView setFrame:0.0, 0.0, v16, v26];
    v27 = [(UIView *)self->_scrimView layer];
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
    v31 = [(UIImageView *)compactBankLogoView image];
    [v31 size];

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
  if (v14)
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
    if (v14)
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
  v6 = [(PKPassFaceView *)self buckets];
  v7 = [v6 objectAtIndex:0];
  v8 = [v7 firstObject];

  v9 = [v6 objectAtIndex:3];
  v10 = [v9 firstObject];
  v11 = [(PKPassPaymentCardFrontFaceView *)self _filterAuxiliaryField:v10];

  [(PKPassFaceView *)self cobrandLogoSize];
  if (v8 && v11)
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
  v16 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  v17 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
  v18 = [v17 fontDescriptorWithSymbolicTraits:2];

  v19 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:11.0];

  [v16 setLabelFont:v19];
  v20 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  v21 = [v8 label];
  v22 = v21;
  if (v21)
  {
    v23 = [(__CFString *)v21 length];
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
  [v20 setValueFont:v25];

  v26 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  [v26 setVerticalPadding:-3.0];

  v27 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  [v27 setSuppressesEmptyLabel:1];

  v28 = [(PKPassBucketTemplate *)v3 defaultFieldTemplate];
  [v28 setTextAlignment:2];

  return v3;
}

- (PKPassPaymentCardFrontFaceView)initWithStyle:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = PKPassPaymentCardFrontFaceView;
  v3 = [(PKPassFrontFaceView *)&v9 initWithStyle:a3];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69BC360];
  v5 = [MEMORY[0x1E69B9000] sharedInstance];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFaceView *)&v6 dealloc];
}

- (id)templateForLayoutMode:(int64_t)a3
{
  v4 = objc_alloc_init(PKPassFaceTemplate);
  [(PKPassFaceTemplate *)v4 setBarcodeMaxSize:290.0, 165.0];
  v5 = [(PKPassFaceTemplate *)v4 defaultFieldTemplate];
  [v5 setTextAlignment:0];

  v6 = [(PKPassFaceTemplate *)v4 defaultFieldTemplate];
  v7 = *MEMORY[0x1E69DDD10];
  v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:11.0];

  [v6 setLabelFont:v10];
  PKPassFrontFaceContentSize();
  v12 = v11;
  v14 = v13;
  v15 = [(PKPassFaceView *)self buckets];
  v16 = [v15 objectAtIndex:0];
  v73 = [v16 firstObject];

  v17 = [v15 objectAtIndex:1];
  v18 = [v17 firstObject];

  v19 = [v15 objectAtIndex:2];
  v20 = [v19 firstObject];
  v21 = [(PKPassPaymentCardFrontFaceView *)self _filterSecondaryField:v20];

  v22 = [v15 objectAtIndex:3];
  v23 = [v22 firstObject];
  v24 = [(PKPassPaymentCardFrontFaceView *)self _filterAuxiliaryField:v23];

  if (v18)
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
    v27 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    v28 = [v18 label];
    v29 = v28;
    if (v28)
    {
      v30 = [(__CFString *)v28 length];
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
    [v27 setValueFont:v32];

    v33 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    v34 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
    v35 = [v34 fontDescriptorWithSymbolicTraits:2];

    v36 = [MEMORY[0x1E69DB878] fontWithDescriptor:v35 size:11.0];

    [v33 setLabelFont:v36];
    v37 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    [v37 setVerticalPadding:-3.0];

    v38 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    [v38 setSuppressesEmptyLabel:1];

    v39 = [(PKPassBucketTemplate *)v25 defaultFieldTemplate];
    [v39 setTextAlignment:0];

    [(PKPassFaceTemplate *)v4 addBucketTemplate:v25];
  }

  if (v21)
  {
    v40 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v40 setBucketAlignment:3];
    v41 = 17.0;
    if (v18)
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
    v43 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    v44 = [v21 label];
    v45 = v44;
    if (v44)
    {
      v46 = [(__CFString *)v44 length];
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
    [v43 setValueFont:v48];

    v49 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    v50 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
    v51 = [v50 fontDescriptorWithSymbolicTraits:2];

    v52 = [MEMORY[0x1E69DB878] fontWithDescriptor:v51 size:11.0];

    [v49 setLabelFont:v52];
    v53 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    [v53 setVerticalPadding:-3.0];

    v54 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    [v54 setSuppressesEmptyLabel:1];

    v55 = [(PKPassBucketTemplate *)v40 defaultFieldTemplate];
    [v55 setTextAlignment:2];

    [(PKPassFaceTemplate *)v4 addBucketTemplate:v40];
    v24 = v72;
  }

  if (v24)
  {
    v56 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v56 setBucketAlignment:3];
    if (v73)
    {
      v57 = v12 * 0.5 + -34.0;
    }

    else
    {
      v57 = v12 + -34.0;
    }

    [(PKPassBucketTemplate *)v56 setBucketRect:17.0, 12.0, v57, 35.0];
    [(PKPassBucketTemplate *)v56 setMaxFields:1];
    v58 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    v59 = [v24 label];
    v60 = v59;
    if (v59)
    {
      v61 = [(__CFString *)v59 length];
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
    [v58 setValueFont:v63];

    v64 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    v65 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
    v66 = [v65 fontDescriptorWithSymbolicTraits:2];

    v67 = [MEMORY[0x1E69DB878] fontWithDescriptor:v66 size:11.0];

    [v64 setLabelFont:v67];
    v68 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    [v68 setVerticalPadding:-3.0];

    v69 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    [v69 setSuppressesEmptyLabel:1];

    v70 = [(PKPassBucketTemplate *)v56 defaultFieldTemplate];
    [v70 setTextAlignment:0];

    [(PKPassFaceTemplate *)v4 addBucketTemplate:v56];
  }

  return v4;
}

- (id)_filterSecondaryField:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 key];
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

- (id)_filterAuxiliaryField:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v5 = [v3 key];
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

- (void)_initializeBalanceLabelWithTextColor:(id)a3
{
  if (!self->_balanceLabel)
  {
    v4 = MEMORY[0x1E69DCC10];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    balanceLabel = self->_balanceLabel;
    self->_balanceLabel = v6;

    [(UILabel *)self->_balanceLabel setTextColor:v5];
    [(PKPassPaymentCardFrontFaceView *)self _updateBalanceLabelFontSize];
    v8 = self->_balanceLabel;

    [(PKPassFrontFaceView *)self insertContentView:v8 ofType:0];
  }
}

- (void)setShowsLiveBalance:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PKPassFaceView *)self pass];
    v5 = [v4 paymentPass];

    if ([v5 hasAssociatedPeerPaymentAccount])
    {
      v6 = [MEMORY[0x1E69B9000] sharedInstance];
      v7 = [v6 account];
      v8 = [v7 associatedPassUniqueID];
      v9 = [v5 uniqueID];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        if (!self->_balanceLabel)
        {
          v11 = [MEMORY[0x1E696AD88] defaultCenter];
          [v11 addObserver:self selector:sel__handlePeerPaymentAccountChanged_ name:*MEMORY[0x1E69BC360] object:v6];
        }

        v12 = [MEMORY[0x1E69DC888] whiteColor];
        [(PKPassPaymentCardFrontFaceView *)self _initializeBalanceLabelWithTextColor:v12];

        v13 = [v7 currentBalance];
        [(PKPassPaymentCardFrontFaceView *)self _updateBalanceWithAmount:v13];

        [(UILabel *)self->_balanceLabel setAlpha:1.0];
      }
    }

    else if ([v5 associatedAccountFeatureIdentifier] == 4)
    {
      objc_initWeak(&location, self);
      v15 = [MEMORY[0x1E69B8400] sharedInstance];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54__PKPassPaymentCardFrontFaceView_setShowsLiveBalance___block_invoke;
      v16[3] = &unk_1E80159B0;
      objc_copyWeak(&v17, &location);
      [v15 defaultAccountForFeature:4 completion:v16];

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

- (void)setModallyPresented:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFaceView *)&v6 setModallyPresented:a3];
  v4 = [(PKPassFaceView *)self pass];
  v5 = [v4 paymentPass];

  if ([v5 associatedAccountFeatureIdentifier] == 4)
  {
    [(PKPassPaymentCardFrontFaceView *)self _updateAccountBalanceVisibilityAnimated:1];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassPaymentCardFrontFaceView *)&v9 traitCollectionDidChange:v4];
  v5 = [(PKPassPaymentCardFrontFaceView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  if (v4 && v5)
  {
    v7 = [v4 preferredContentSizeCategory];
    v8 = UIContentSizeCategoryCompareToCategory(v7, v6);

    if (v8 == NSOrderedSame)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5 && !v4)
  {
LABEL_7:
    [(PKPassPaymentCardFrontFaceView *)self _updateBalanceLabelFontSize];
  }

LABEL_8:
}

- (void)_showFullScreenBarcodeForButton:(id)a3
{
  v4 = [(PKPassFaceView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 passFaceViewExpandButtonTapped:self];
  }
}

- (void)_updateBalanceWithAmount:(id)a3
{
  v15 = a3;
  v4 = [(PKPassFaceView *)self pass];
  v5 = [v4 paymentPass];
  v6 = [v5 devicePrimaryPaymentApplication];

  if (!v15)
  {
    balanceLabel = self->_balanceLabel;
LABEL_10:
    [(UILabel *)balanceLabel setText:0];
    goto LABEL_11;
  }

  balanceLabel = self->_balanceLabel;
  if (balanceLabel)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_10;
  }

  v9 = [v15 minimalFormattedStringValue];
  v10 = [(PKPassFaceView *)self pass];
  v11 = [v10 paymentPass];
  v12 = [v11 hasAssociatedPeerPaymentAccount];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
    v14 = [v15 minimalFormattedStringValueInLocale:v13];

    v9 = v14;
  }

  [(UILabel *)self->_balanceLabel setText:v9];

LABEL_11:
}

- (void)_handleAccountChanged:(id)a3
{
  v4 = a3;
  v5 = [(PKPassFaceView *)self pass];
  v6 = [v5 paymentPass];

  if ([v6 associatedAccountFeatureIdentifier] == 4)
  {
    objc_initWeak(&location, self);
    v7 = [MEMORY[0x1E69B8400] sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PKPassPaymentCardFrontFaceView__handleAccountChanged___block_invoke;
    v8[3] = &unk_1E8017060;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    [v7 defaultAccountForFeature:4 completion:v8];

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

- (void)_updateStateForAccount:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  self->_accountIsActive = [v12 state] == 1;
  if ([v12 supportsTopUp])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v12 supportsAMPTopUp];
  }

  self->_accountSupportsTopUp = v6;
  if (self->_accountIsActive)
  {
    v7 = [v12 appleBalanceDetails];
    v8 = [v7 accountSummary];
    v9 = [v8 currentBalance];
    v10 = [v7 currencyCode];
    v11 = PKCurrencyAmountMake();
    [(PKPassPaymentCardFrontFaceView *)self _updateBalanceWithAmount:v11];
  }

  [(PKPassPaymentCardFrontFaceView *)self _updateAccountBalanceVisibilityAnimated:v4];
}

- (void)_updateAccountBalanceVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = 0.0;
  if (self->_accountIsActive)
  {
    v6 = [(PKPassFaceView *)self modallyPresented];
    v5 = 1.0;
    if (v6 && self->_accountSupportsTopUp)
    {
      v5 = 0.0;
    }
  }

  if (v3)
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

- (void)_handlePeerPaymentAccountChanged:(id)a3
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

- (void)setViewExpanded:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(PKPassFaceView *)self viewExpanded];
  v8.receiver = self;
  v8.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFaceView *)&v8 setViewExpanded:v3];
  if (v5 != v3)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v3;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPassPaymentCardFrontFaceView setting viewExpanded: %ld", buf, 0xCu);
    }

    if (v3)
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

- (void)setDynamicBarcodeData:(id)a3
{
  v4 = a3;
  v5 = [(PKPassFaceView *)self dynamicBarcodeData];
  v6 = PKEqualObjects();

  v33.receiver = self;
  v33.super_class = PKPassPaymentCardFrontFaceView;
  [(PKPassFaceView *)&v33 setDynamicBarcodeData:v4];
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

    if (v4)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69B86B0]);
      [v13 setFormat:1];
      [v13 setMessageData:v4];
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
      [v17 setMessageData:v4];
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