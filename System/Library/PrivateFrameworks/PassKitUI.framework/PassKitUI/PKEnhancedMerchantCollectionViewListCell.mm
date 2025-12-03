@interface PKEnhancedMerchantCollectionViewListCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKEnhancedMerchantCollectionViewListCell)initWithFrame:(CGRect)frame;
- (id)_buttonAttributedStringForString:(id)string;
- (id)_visibleButtons;
- (void)_dispatchActionToDelegate:(int64_t)delegate;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_initializeViewsIfNecessary;
- (void)_updateAppStoreButtonBasedOnLinkedApplicationState;
- (void)_updateImageViewDynamicColors;
- (void)dealloc;
- (void)layoutSubviews;
- (void)updateWithAccountEnhancedMerchant:(id)merchant;
@end

@implementation PKEnhancedMerchantCollectionViewListCell

- (PKEnhancedMerchantCollectionViewListCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKEnhancedMerchantCollectionViewListCell;
  v3 = [(PKEnhancedMerchantCollectionViewListCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKEnhancedMerchantCollectionViewListCell *)v3 _commonInit];
  }

  return v4;
}

- (void)updateWithAccountEnhancedMerchant:(id)merchant
{
  v11[1] = *MEMORY[0x1E69E9840];
  merchantCopy = merchant;
  objc_storeStrong(&self->_enhancedMerchant, merchant);
  adamID = [(PKAccountEnhancedMerchant *)self->_enhancedMerchant adamID];
  if (adamID)
  {
    v7 = [PKLinkedApplication alloc];
    v11[0] = adamID;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(PKLinkedApplication *)v7 initWithStoreIDs:v8 defaultLaunchURL:0];
    linkedApplication = self->_linkedApplication;
    self->_linkedApplication = v9;

    [(PKLinkedApplication *)self->_linkedApplication addObserver:self];
    [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  }
}

- (void)dealloc
{
  [(PKLinkedApplication *)self->_linkedApplication removeObserver:self];
  v3.receiver = self;
  v3.super_class = PKEnhancedMerchantCollectionViewListCell;
  [(PKEnhancedMerchantCollectionViewListCell *)&v3 dealloc];
}

- (void)_initializeViewsIfNecessary
{
  if (!self->_listContentView)
  {
    contentView = [(PKEnhancedMerchantCollectionViewListCell *)self contentView];
    v4 = objc_alloc(MEMORY[0x1E69DCC30]);
    subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v6 = [v4 initWithConfiguration:subtitleCellConfiguration];
    listContentView = self->_listContentView;
    self->_listContentView = v6;

    [contentView addSubview:self->_listContentView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = self->_imageView;
    self->_imageView = v8;

    v10 = self->_imageView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v10 setBackgroundColor:whiteColor];

    layer = [(UIImageView *)self->_imageView layer];
    [layer setCornerRadius:10.0];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer setBorderWidth:PKUIPixelLength()];
    [layer setMasksToBounds:1];
    [(PKEnhancedMerchantCollectionViewListCell *)self _updateImageViewDynamicColors];
    [contentView addSubview:self->_imageView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailedDescriptionLabel = self->_detailedDescriptionLabel;
    self->_detailedDescriptionLabel = v13;

    [(UILabel *)self->_detailedDescriptionLabel setNumberOfLines:0];
    [(UILabel *)self->_detailedDescriptionLabel setLineBreakMode:0];
    [(UILabel *)self->_detailedDescriptionLabel setLineBreakStrategy:1];
    [(UILabel *)self->_detailedDescriptionLabel setTextAlignment:0];
    v15 = self->_detailedDescriptionLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:labelColor];

    v17 = self->_detailedDescriptionLabel;
    v18 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], 0, 0, *MEMORY[0x1E69DB978]);
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)self->_detailedDescriptionLabel setAdjustsFontForContentSizeCategory:1];
    v54 = contentView;
    [contentView addSubview:self->_detailedDescriptionLabel];
    grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    v20 = PKRewardsHubGrayButtonColor();
    [grayButtonConfiguration setBaseBackgroundColor:v20];

    _buttonFont = [(PKEnhancedMerchantCollectionViewListCell *)self _buttonFont];
    [grayButtonConfiguration setCornerStyle:4];
    v52 = _buttonFont;
    v22 = [MEMORY[0x1E69DCAD8] configurationWithFont:_buttonFont];
    [grayButtonConfiguration setPreferredSymbolConfigurationForImage:v22];

    [grayButtonConfiguration setContentInsets:{5.0, 8.0, 5.0, 12.0}];
    [grayButtonConfiguration setImagePadding:4.0];
    v23 = PKLocalizedFeatureString();
    v24 = PKLocalizedFeatureString();
    v25 = PKLocalizedFeatureString();
    v51 = v23;
    v26 = [(PKEnhancedMerchantCollectionViewListCell *)self _buttonAttributedStringForString:v23];
    v50 = v24;
    v27 = [(PKEnhancedMerchantCollectionViewListCell *)self _buttonAttributedStringForString:v24];
    v49 = v25;
    v28 = [(PKEnhancedMerchantCollectionViewListCell *)self _buttonAttributedStringForString:v25];
    v29 = [grayButtonConfiguration copy];
    [v29 setAttributedTitle:v26];
    v30 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"appstore"];
    [v29 setImage:v30];

    [v29 setShowsActivityIndicator:1];
    v31 = [grayButtonConfiguration copy];
    v48 = v27;
    [v31 setAttributedTitle:v27];
    v32 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari.fill"];
    [v31 setImage:v32];

    v33 = [grayButtonConfiguration copy];
    v47 = v28;
    [v33 setAttributedTitle:v28];
    v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
    [v33 setImage:v34];

    objc_initWeak(location, self);
    v35 = MEMORY[0x1E69DC628];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __71__PKEnhancedMerchantCollectionViewListCell__initializeViewsIfNecessary__block_invoke;
    v59[3] = &unk_1E8010A60;
    objc_copyWeak(&v60, location);
    v53 = [v35 actionWithHandler:v59];
    v36 = MEMORY[0x1E69DC628];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __71__PKEnhancedMerchantCollectionViewListCell__initializeViewsIfNecessary__block_invoke_2;
    v57[3] = &unk_1E8010A60;
    objc_copyWeak(&v58, location);
    v37 = [v36 actionWithHandler:v57];
    v38 = MEMORY[0x1E69DC628];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __71__PKEnhancedMerchantCollectionViewListCell__initializeViewsIfNecessary__block_invoke_3;
    v55[3] = &unk_1E8010A60;
    objc_copyWeak(&v56, location);
    v39 = [v38 actionWithHandler:v55];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v41 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v29 primaryAction:v53];
    appStoreButton = self->_appStoreButton;
    self->_appStoreButton = v41;

    [(UIButton *)self->_appStoreButton setTintColor:systemBlueColor];
    [v54 addSubview:self->_appStoreButton];
    [(UIButton *)self->_appStoreButton setEnabled:0];
    v43 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v31 primaryAction:v37];
    websiteButton = self->_websiteButton;
    self->_websiteButton = v43;

    [(UIButton *)self->_websiteButton setTintColor:systemBlueColor];
    [v54 addSubview:self->_websiteButton];
    v45 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v33 primaryAction:v39];
    mapsButton = self->_mapsButton;
    self->_mapsButton = v45;

    [(UIButton *)self->_mapsButton setTintColor:systemBlueColor];
    [v54 addSubview:self->_mapsButton];

    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);

    objc_destroyWeak(&v60);
    objc_destroyWeak(location);
  }
}

void __71__PKEnhancedMerchantCollectionViewListCell__initializeViewsIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dispatchActionToDelegate:0];
}

void __71__PKEnhancedMerchantCollectionViewListCell__initializeViewsIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dispatchActionToDelegate:1];
}

void __71__PKEnhancedMerchantCollectionViewListCell__initializeViewsIfNecessary__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dispatchActionToDelegate:2];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = fits.width + -32.0;
  [(UIListContentView *)self->_listContentView sizeThatFits:fits.width + -32.0 + -48.0 + -10.0, fits.height];
  v8 = 16.0;
  v9 = fmax(v7, 48.0) + 16.0 + 16.0;
  v38 = height;
  [(UILabel *)self->_detailedDescriptionLabel sizeThatFits:v6, height];
  v11 = v9 + v10;
  _visibleButtons = [(PKEnhancedMerchantCollectionViewListCell *)self _visibleButtons];
  v13 = [_visibleButtons count];
  if (v13)
  {
    v14 = v13;
    v15 = v11 + 16.0;
    if (v13 < 1)
    {
      v21 = 0.0;
    }

    else
    {
      v37 = width;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v20 = *MEMORY[0x1E695F060];
      v19 = *(MEMORY[0x1E695F060] + 8);
      v21 = 0.0;
      v22 = v19;
      v23 = *MEMORY[0x1E695F060];
      v24 = v6;
      do
      {
        v25 = v18;
        v18 = [_visibleButtons objectAtIndexedSubscript:{v16, *&v37}];

        if (++v16 >= v14)
        {
          v26 = 0;
        }

        else
        {
          v26 = [_visibleButtons objectAtIndexedSubscript:v16];
        }

        if (v23 == v20 && v22 == v19)
        {
          [v18 sizeThatFits:{v6, v38}];
          if (v27 >= v6)
          {
            v23 = v6;
          }

          else
          {
            v23 = v27;
          }

          v22 = fmax(v28, 28.0);
        }

        v29 = v20;
        v30 = v19;
        if (v26)
        {
          [v26 sizeThatFits:{v6, v38}];
          if (v29 >= v6)
          {
            v29 = v6;
          }

          v30 = fmax(v31, 28.0);
        }

        v32 = v26 != 0;
        if (v21 <= v22)
        {
          v33 = v22;
        }

        else
        {
          v33 = v21;
        }

        v34 = v29 > v24 - (v23 + 8.0);
        if (v32 && v34)
        {
          v15 = v15 + v33 + 16.0;
          v24 = v6;
        }

        else
        {
          v24 = v24 - (v23 + 8.0);
        }

        if (v32 && v34)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = v33;
        }

        v22 = v30;
        v23 = v29;
        v17 = v26;
      }

      while (v14 != v16);

      width = v37;
      v8 = 16.0;
    }

    v11 = v15 + v21;
  }

  v35 = width;
  v36 = v11 + v8;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = PKEnhancedMerchantCollectionViewListCell;
  [(PKEnhancedMerchantCollectionViewListCell *)&v46 layoutSubviews];
  contentView = [(PKEnhancedMerchantCollectionViewListCell *)self contentView];
  _shouldReverseLayoutDirection = [contentView _shouldReverseLayoutDirection];

  [(PKEnhancedMerchantCollectionViewListCell *)self bounds];
  v6 = v5 + 16.0;
  v8 = v7 + -32.0;
  v10 = v9 + -32.0;
  memset(&slice, 0, sizeof(slice));
  v12 = v11 + 16.0;
  remainder.origin.x = v5 + 16.0;
  remainder.origin.y = v11 + 16.0;
  remainder.size.width = v7 + -32.0;
  remainder.size.height = v9 + -32.0;
  if (_shouldReverseLayoutDirection)
  {
    v13 = CGRectMaxXEdge;
  }

  else
  {
    v13 = CGRectMinXEdge;
  }

  PKContentAlignmentMake();
  PKContentAlignmentMake();
  [(UIListContentView *)self->_listContentView sizeThatFits:v8 + -48.0 + -10.0, v10];
  v15 = fmax(v14, 48.0);
  v47.origin.x = v6;
  v47.origin.y = v12;
  v47.size.width = v8;
  v47.size.height = v10;
  CGRectDivide(v47, &slice, &remainder, v15, CGRectMinYEdge);
  memset(&v43, 0, sizeof(v43));
  v42 = slice;
  CGRectDivide(slice, &v43, &v42, 58.0, v13);
  imageView = self->_imageView;
  PKSizeAlignedInRect();
  [(UIImageView *)imageView setFrame:?];
  [(UIListContentView *)self->_listContentView sizeThatFits:v42.size.width, v42.size.height];
  listContentView = self->_listContentView;
  PKSizeAlignedInRect();
  [(UIListContentView *)listContentView setFrame:?];
  remainder.origin = vaddq_f64(remainder.origin, xmmword_1BE0D82B0);
  remainder.size.height = remainder.size.height + -16.0;
  [(UILabel *)self->_detailedDescriptionLabel sizeThatFits:remainder.size.width];
  v48 = remainder;
  CGRectDivide(remainder, &slice, &remainder, v48.origin.y + 16.0, CGRectMinYEdge);
  detailedDescriptionLabel = self->_detailedDescriptionLabel;
  PKSizeAlignedInRect();
  [(UILabel *)detailedDescriptionLabel setFrame:?];
  _visibleButtons = [(PKEnhancedMerchantCollectionViewListCell *)self _visibleButtons];
  v20 = [_visibleButtons count];
  if (v20)
  {
    v21 = v20;
    v39 = *(MEMORY[0x1E695F050] + 16);
    v40 = *MEMORY[0x1E695F050];
    v41.origin = *MEMORY[0x1E695F050];
    v41.size = v39;
    Width = CGRectGetWidth(remainder);
    if (v21 >= 1)
    {
      v23 = Width;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = *MEMORY[0x1E695F060];
      v28 = *(MEMORY[0x1E695F060] + 8);
      v29 = v28;
      v30 = *MEMORY[0x1E695F060];
      do
      {
        v31 = v26;
        v32 = v25;
        v26 = [_visibleButtons objectAtIndexedSubscript:{v24, v39, v40}];

        if (++v24 >= v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = [_visibleButtons objectAtIndexedSubscript:v24];
        }

        if (v30 == v27)
        {
          v33 = v30;
          v34 = v29;
          if (v29 == v28)
          {
            [v26 sizeThatFits:{v23, 1.79769313e308}];
            if (v35 >= v23)
            {
              v33 = v23;
            }

            else
            {
              v33 = v35;
            }

            v34 = fmax(v36, 28.0);
          }
        }

        else
        {
          v33 = v30;
          v34 = v29;
        }

        v30 = v27;
        v29 = v28;
        if (v25)
        {
          [v25 sizeThatFits:{v23, 1.79769313e308}];
          if (v37 >= v23)
          {
            v30 = v23;
          }

          else
          {
            v30 = v37;
          }

          v29 = fmax(v38, 28.0);
        }

        if (CGRectIsNull(v41))
        {
          CGRectDivide(remainder, &v41, &remainder, v34, CGRectMinYEdge);
        }

        CGRectDivide(v41, &slice, &v41, v33, v13);
        PKSizeAlignedInRect();
        [v26 setFrame:?];
        if (v25)
        {
          if (v30 + 8.0 <= CGRectGetWidth(v41))
          {
            CGRectDivide(v41, &slice, &v41, 8.0, v13);
          }

          else
          {
            remainder.origin = vaddq_f64(remainder.origin, xmmword_1BE0D82B0);
            remainder.size.height = remainder.size.height + -16.0;
            v41.origin = v40;
            v41.size = v39;
          }
        }
      }

      while (v21 != v24);
    }
  }
}

- (void)_dispatchActionToDelegate:(int64_t)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    enhancedMerchant = [(PKEnhancedMerchantCollectionViewListCell *)self enhancedMerchant];
    [WeakRetained performAction:delegate forEnhancedMerchant:enhancedMerchant sender:self];
  }
}

- (id)_buttonAttributedStringForString:(id)string
{
  v4 = MEMORY[0x1E696AAB0];
  stringCopy = string;
  _buttonFont = [(PKEnhancedMerchantCollectionViewListCell *)self _buttonFont];
  v7 = [v4 pkui_attriutedStringWithString:stringCopy font:_buttonFont paragraphStyle:0];

  return v7;
}

- (void)_updateAppStoreButtonBasedOnLinkedApplicationState
{
  [(PKLinkedApplication *)self->_linkedApplication isInstalled];
  v3 = PKLocalizedFeatureString();
  v4 = [(PKEnhancedMerchantCollectionViewListCell *)self _buttonAttributedStringForString:v3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__PKEnhancedMerchantCollectionViewListCell__updateAppStoreButtonBasedOnLinkedApplicationState__block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __94__PKEnhancedMerchantCollectionViewListCell__updateAppStoreButtonBasedOnLinkedApplicationState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appStoreButton];
  v4 = [v2 configuration];

  [v4 setAttributedTitle:*(a1 + 40)];
  [v4 setShowsActivityIndicator:0];
  v3 = [*(a1 + 32) appStoreButton];
  [v3 setConfiguration:v4];
  [v3 setEnabled:1];
}

- (void)_updateImageViewDynamicColors
{
  traitCollection = [(PKEnhancedMerchantCollectionViewListCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__PKEnhancedMerchantCollectionViewListCell__updateImageViewDynamicColors__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  PKUIPerformWithEffectiveTraitCollection(traitCollection, v4);
}

void __73__PKEnhancedMerchantCollectionViewListCell__updateImageViewDynamicColors__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 896) layer];
  v1 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKEnhancedMerchantCollectionViewListCell;
  [(PKEnhancedMerchantCollectionViewListCell *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKEnhancedMerchantCollectionViewListCell *)self _updateImageViewDynamicColors];
}

- (id)_visibleButtons
{
  v6[3] = *MEMORY[0x1E69E9840];
  websiteButton = self->_websiteButton;
  v6[0] = self->_appStoreButton;
  v6[1] = websiteButton;
  v6[2] = self->_mapsButton;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v3 pk_objectsPassingTest:&__block_literal_global_106];

  return v4;
}

@end