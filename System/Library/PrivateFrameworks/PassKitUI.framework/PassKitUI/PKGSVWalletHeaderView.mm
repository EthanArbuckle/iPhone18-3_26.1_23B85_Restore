@interface PKGSVWalletHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKGSVWalletHeaderView)initWithPassType:(unint64_t)type state:(id *)state delegate:(id)delegate;
- (double)_layoutSubviewsInBounds:(double)bounds withCommitMode:(double)mode;
- (void)layoutSubviews;
- (void)setShowBackgroundProvisioningHint:(BOOL)hint animated:(BOOL)animated;
@end

@implementation PKGSVWalletHeaderView

- (PKGSVWalletHeaderView)initWithPassType:(unint64_t)type state:(id *)state delegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = PKGSVWalletHeaderView;
  v5 = [(PKGSVWalletHeaderView *)&v8 initWithFrame:type, state, delegate, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PKGSVWalletHeaderView *)v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
    [(PKGSVWalletHeaderView *)v6 setAnchorPoint:0.5, 0.0];
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(PKGSVWalletHeaderView *)self _layoutSubviewsInBounds:*MEMORY[0x1E695EFF8] withCommitMode:*(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_layoutSubviewsInBounds:(double)bounds withCommitMode:(double)mode
{
  if (!self)
  {
    return 0.0;
  }

  _shouldReverseLayoutDirection = [self _shouldReverseLayoutDirection];
  v13 = *(self + 416);
  v14 = *(self + 424);
  v15 = *(self + 432);
  v16 = *(self + 440);
  v17 = mode + v13;
  memset(&slice, 0, sizeof(slice));
  if (*(self + 456))
  {
    if (_shouldReverseLayoutDirection)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    v23.origin.x = bounds + v18;
    v23.size.width = a5 - (v14 + v16);
    v23.size.height = a6 - (v13 + v15);
    v21.origin.x = v23.origin.x;
    v21.origin.y = v17;
    v21.size.width = v23.size.width;
    v21.size.height = v23.size.height;
    v23.origin.y = v17;
    CGRectDivide(v23, &slice, &v21, v17 - v17, CGRectMinYEdge);
    [*(self + 456) sizeThatFits:{v21.size.width, 1.79769313e308}];
    CGRectDivide(v21, &slice, &v21, v19, CGRectMinYEdge);
    PKSizeAlignedInRect();
    if (a2)
    {
      [*(self + 456) setFrame:?];
    }
  }

  return a5;
}

void __42__PKGSVWalletHeaderView__setSizeMayChange__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 408) = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 472));
  [WeakRetained setNeedsUpdateForGroupStackViewSectionHeaderView:*(a1 + 32)];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKGSVWalletHeaderView;
  [(PKGSVWalletHeaderView *)&v7 layoutSubviews];
  [(PKGSVWalletHeaderView *)self bounds];
  [(PKGSVWalletHeaderView *)self _layoutSubviewsInBounds:v3 withCommitMode:v4, v5, v6];
}

- (void)setShowBackgroundProvisioningHint:(BOOL)hint animated:(BOOL)animated
{
  v34[2] = *MEMORY[0x1E69E9840];
  backgroundProvisioningHintView = self->_backgroundProvisioningHintView;
  if ((backgroundProvisioningHintView != 0) != hint)
  {
    animatedCopy = animated;
    if (backgroundProvisioningHintView)
    {
      v7 = backgroundProvisioningHintView;
      v8 = self->_backgroundProvisioningHintView;
      self->_backgroundProvisioningHintView = 0;

      if (animatedCopy)
      {
        v25 = MEMORY[0x1E69E9820];
        v26 = 3221225472;
        v27 = __68__PKGSVWalletHeaderView_setShowBackgroundProvisioningHint_animated___block_invoke_2;
        v28 = &unk_1E8011D28;
        v29 = v7;
        [(UIView *)v29 pkui_setAlpha:1 animated:&v25 withCompletion:0.0];
      }

      else
      {
        [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)v7 removeFromSuperview];
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v9 = [PKPGSVSectionHeader_BackgroundProvisioningHintView alloc];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __68__PKGSVWalletHeaderView_setShowBackgroundProvisioningHint_animated___block_invoke;
      v30[3] = &unk_1E8023A00;
      objc_copyWeak(&v31, &location);
      v10 = v30;
      if (v9)
      {
        v33.receiver = v9;
        v33.super_class = PKPGSVSectionHeader_BackgroundProvisioningHintView;
        v9 = [(PKGSVWalletHeaderView *)&v33 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        if (v9)
        {
          v11 = _Block_copy(v10);
          observer = v9->_observer;
          v9->_observer = v11;

          [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)v9 setAnchorPoint:0.5, 0.0];
          [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)v9 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC30]];
          v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
          label = v9->_label;
          v9->_label = v13;

          v15 = v9->_label;
          secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
          [(UILabel *)v15 setTextColor:secondaryLabelColor];

          [(UILabel *)v9->_label setNumberOfLines:0];
          [(UILabel *)v9->_label setTextAlignment:1];
          v17 = v9->_label;
          v18 = PKLocalizedPaymentString(&cfstr_AddingCardsToW.isa);
          [(UILabel *)v17 setText:v18];

          [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)v9 addSubview:v9->_label];
          v19 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
          activityIndicator = v9->_activityIndicator;
          v9->_activityIndicator = v19;

          [(UIActivityIndicatorView *)v9->_activityIndicator startAnimating];
          [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)v9 addSubview:v9->_activityIndicator];
          v34[0] = objc_opt_class();
          v34[1] = objc_opt_class();
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
          v22 = [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)v9 registerForTraitChanges:v21 withHandler:&__block_literal_global_239];

          [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)v9 _updateFonts:?];
        }
      }

      v23 = self->_backgroundProvisioningHintView;
      self->_backgroundProvisioningHintView = v9;

      [(PKGSVWalletHeaderView *)self addSubview:self->_backgroundProvisioningHintView];
      if (animatedCopy)
      {
        [(UIView *)self->_backgroundProvisioningHintView pkui_setAlpha:0 animated:0.0];
        [(UIView *)self->_backgroundProvisioningHintView pkui_setAlpha:1 animated:1.0];
      }

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    [(PKGSVWalletHeaderView *)self setNeedsLayout:v25];
    WeakRetained = objc_loadWeakRetained(&self->_headerDelegate);
    [WeakRetained setNeedsUpdateForGroupStackViewSectionHeaderView:self];
  }
}

void __68__PKGSVWalletHeaderView_setShowBackgroundProvisioningHint_animated___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 57) == v5 && (*(WeakRetained + 408) & 1) == 0)
  {
    *(WeakRetained + 408) = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__PKGSVWalletHeaderView__setSizeMayChange__block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end