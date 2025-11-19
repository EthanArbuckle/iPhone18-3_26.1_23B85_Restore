@interface PKDiscoveryCallToActionShelfView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)_wordmarkAssetSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDiscoveryCallToActionShelfView)initWithShelf:(id)a3;
- (PKDiscoveryCardViewDelegate)delegate;
- (double)_desiredWordmarkAssetHeight;
- (void)_buttonPressed:(id)a3;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)setImage:(id)a3 animated:(BOOL)a4;
- (void)setShowActivityIndicator:(BOOL)a3;
- (void)setWordmarkAsset:(id)a3 animated:(BOOL)a4;
@end

@implementation PKDiscoveryCallToActionShelfView

- (PKDiscoveryCallToActionShelfView)initWithShelf:(id)a3
{
  v73[1] = *MEMORY[0x1E69E9840];
  v68 = a3;
  v72.receiver = self;
  v72.super_class = PKDiscoveryCallToActionShelfView;
  v5 = [(PKDiscoveryCallToActionShelfView *)&v72 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v5->_ctaShelf, a3);
  v7 = [v68 callToAction];
  callToAction = v6->_callToAction;
  v6->_callToAction = v7;

  v9 = [(PKDiscoveryCallToAction *)v6->_callToAction icon];
  icon = v6->_icon;
  v6->_icon = v9;

  v11 = [(PKDiscoveryCallToAction *)v6->_callToAction wordmarkAsset];
  wordmarkAsset = v6->_wordmarkAsset;
  v6->_wordmarkAsset = v11;

  v6->_hasIcon = v6->_icon != 0;
  v13 = [(PKDiscoveryCallToAction *)v6->_callToAction localizedButtonText];
  if (v13)
  {
    v14 = [(PKDiscoveryCallToAction *)v6->_callToAction action]!= 0;
  }

  else
  {
    v14 = 0;
  }

  v6->_hasButton = v14;

  v6->_hasWordmarkAsset = v6->_wordmarkAsset != 0;
  v15 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PKDiscoveryCallToActionShelfView *)v6 setBackgroundColor:v15];

  v67 = [(PKDiscoveryCallToAction *)v6->_callToAction localizedTitle];
  v16 = MEMORY[0x1E695F058];
  if (v67)
  {
    v6->_hasTitle = 1;
  }

  else
  {
    v17 = [0 pk_stringIfNotEmpty];
    v6->_hasTitle = v17 != 0;

    if (!v6->_hasTitle)
    {
      goto LABEL_9;
    }
  }

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*v16, v16[1], v16[2], v16[3]}];
  titleLabel = v6->_titleLabel;
  v6->_titleLabel = v18;

  [(UILabel *)v6->_titleLabel setText:v67];
  v20 = v6->_titleLabel;
  v21 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], 0, *MEMORY[0x1E69DB958]);
  [(UILabel *)v20 setFont:v21];

  v22 = v6->_titleLabel;
  v23 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v22 setTextColor:v23];

  [(UILabel *)v6->_titleLabel setNumberOfLines:1];
  [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_titleLabel];
LABEL_9:
  v24 = [(PKDiscoveryCallToAction *)v6->_callToAction localizedSubtitle];
  if (v24)
  {
    v6->_hasSubtitle = 1;
LABEL_12:
    v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*v16, v16[1], v16[2], v16[3]}];
    subtitleLabel = v6->_subtitleLabel;
    v6->_subtitleLabel = v26;

    [(UILabel *)v6->_subtitleLabel setText:v24];
    v28 = v6->_subtitleLabel;
    v29 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [(UILabel *)v28 setFont:v29];

    v30 = v6->_subtitleLabel;
    v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v30 setTextColor:v31];

    [(UILabel *)v6->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v6->_subtitleLabel setTextAlignment:1];
    [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_subtitleLabel];
    goto LABEL_13;
  }

  v25 = [0 pk_stringIfNotEmpty];
  v6->_hasSubtitle = v25 != 0;

  if (v6->_hasSubtitle)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v6->_hasIcon)
  {
    v6->_iconSize = vdupq_n_s64(0x4056000000000000uLL);
    v32 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{*v16, v16[1], v16[2], v16[3]}];
    iconImageView = v6->_iconImageView;
    v6->_iconImageView = v32;

    v34 = v6->_iconImageView;
    v35 = MEMORY[0x1E69DC888];
    v36 = [(PKDiscoveryMedia *)v6->_icon backgroundColor];
    v37 = [v35 pkui_colorWithPKColor:v36];
    [(UIImageView *)v34 setBackgroundColor:v37];

    [(UIImageView *)v6->_iconImageView setContentMode:1];
    [(UIImageView *)v6->_iconImageView setAccessibilityIgnoresInvertColors:1];
    v38 = v6->_iconImageView;
    v39 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v38 setTintColor:v39];

    v40 = [(UIImageView *)v6->_iconImageView layer];
    [v40 setCornerRadius:14.0];
    [v40 setCornerCurve:*MEMORY[0x1E69796E8]];
    [v40 setMasksToBounds:1];
    [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_iconImageView];
  }

  if (v6->_hasWordmarkAsset)
  {
    v41 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{*v16, v16[1], v16[2], v16[3]}];
    wordmarkImageView = v6->_wordmarkImageView;
    v6->_wordmarkImageView = v41;

    v43 = v6->_wordmarkImageView;
    v44 = MEMORY[0x1E69DC888];
    v45 = [(PKDiscoveryMedia *)v6->_wordmarkAsset backgroundColor];
    v46 = [v44 pkui_colorWithPKColor:v45];
    [(UIImageView *)v43 setBackgroundColor:v46];

    [(UIImageView *)v6->_wordmarkImageView setContentMode:1];
    [(UIImageView *)v6->_wordmarkImageView setAccessibilityIgnoresInvertColors:1];
    v47 = v6->_wordmarkImageView;
    v48 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v47 setTintColor:v48];

    v49 = [(UIImageView *)v6->_wordmarkImageView layer];
    [v49 setMasksToBounds:1];

    [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_wordmarkImageView];
  }

  if (*(&v6->super.super.super.super.isa + v66) == 1)
  {
    v50 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [v50 setCornerStyle:4];
    v51 = [(PKDiscoveryCallToAction *)v6->_callToAction localizedButtonText];
    [v50 setTitle:v51];

    objc_initWeak(&location, v6);
    v52 = MEMORY[0x1E69DC628];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __50__PKDiscoveryCallToActionShelfView_initWithShelf___block_invoke;
    v69[3] = &unk_1E8010A60;
    objc_copyWeak(&v70, &location);
    v53 = v24;
    v54 = [v52 actionWithHandler:v69];
    v55 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v50 primaryAction:v54];
    button = v6->_button;
    v6->_button = v55;

    v57 = v6->_button;
    v58 = *MEMORY[0x1E69DDC88];
    v59 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC88], 2, 0);
    [(UIButton *)v57 pkui_updateTitleTextAttributesWithFont:v59];

    [(UIButton *)v6->_button setMaximumContentSizeCategory:v58];
    [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_button];

    v24 = v53;
    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);
  }

  if ([(PKDiscoveryCallToAction *)v6->_callToAction action]== 8)
  {
    v60 = [(PKDiscoveryCallToAction *)v6->_callToAction appStoreAppIdentifier];
    if (v60)
    {
      v61 = [PKLinkedApplication alloc];
      v73[0] = v60;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
      v63 = [(PKLinkedApplication *)v61 initWithStoreIDs:v62 defaultLaunchURL:0];
      linkedApplication = v6->_linkedApplication;
      v6->_linkedApplication = v63;

      [(PKLinkedApplication *)v6->_linkedApplication addObserver:v6];
      [(PKDiscoveryCallToActionShelfView *)v6 setShowActivityIndicator:1];
      [(PKLinkedApplication *)v6->_linkedApplication reloadApplicationStateIfNecessary];
    }
  }

LABEL_24:
  return v6;
}

void __50__PKDiscoveryCallToActionShelfView_initWithShelf___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _buttonPressed:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDiscoveryCallToActionShelfView;
  [(PKDiscoveryCallToActionShelfView *)&v3 layoutSubviews];
  [(PKDiscoveryCallToActionShelfView *)self bounds];
  [(PKDiscoveryCallToActionShelfView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKDiscoveryCallToActionShelfView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PKDiscoveryShelfView *)self contentInsets];
  v11 = x + v10;
  v13 = y + v12;
  v15 = width - (v10 + v14);
  v17 = height - (v12 + v16);
  remainder.origin.x = v11;
  remainder.origin.y = v13;
  remainder.size.width = v15;
  remainder.size.height = v17;
  v18 = [(PKDiscoveryCallToActionShelfView *)self _isFooterWordmarkOnly:0];
  v19 = v18;
  if (self->_hasIcon)
  {
    v52.origin.x = v11;
    v52.origin.y = v13;
    v52.size.width = v15;
    v52.size.height = v17;
    CGRectDivide(v52, &v49, &remainder, 20.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v49, &remainder, self->_iconSize.height, CGRectMinYEdge);
    v20 = self->_iconSize.height + 20.0;
    if (!a4)
    {
      iconImageView = self->_iconImageView;
      PKSizeAlignedInRect();
      [(UIImageView *)iconImageView setFrame:?];
    }

    CGRectDivide(remainder, &v49, &remainder, 11.0, CGRectMinYEdge);
    v22 = v20 + 11.0;
  }

  else
  {
    v22 = 0.0;
    if (!v18)
    {
      v22 = 24.0;
      v53.origin.x = v11;
      v53.origin.y = v13;
      v53.size.width = v15;
      v53.size.height = v17;
      CGRectDivide(v53, &v49, &remainder, 24.0, CGRectMinYEdge);
    }
  }

  if (self->_hasWordmarkAsset)
  {
    if (v19)
    {
      v23 = 80.0;
    }

    else
    {
      v23 = 0.0;
    }

    CGRectDivide(remainder, &v49, &remainder, v23, CGRectMinYEdge);
    v24 = v23 + v22;
    [(PKDiscoveryCallToActionShelfView *)self _wordmarkAssetSize];
    v26 = v25;
    CGRectDivide(remainder, &v49, &remainder, v25, CGRectMinYEdge);
    v27 = v24 + v26;
    if (!a4)
    {
      wordmarkImageView = self->_wordmarkImageView;
      PKSizeAlignedInRect();
      [(UIImageView *)wordmarkImageView setFrame:?];
      v29 = self->_wordmarkImageView;
      [(PKDiscoveryMedia *)self->_wordmarkAsset height];
      v31 = v30;
      [(PKDiscoveryCallToActionShelfView *)self _desiredWordmarkAssetHeight];
      [(UIImageView *)v29 setContentScaleFactor:v31 / v32];
    }

    if (v19)
    {
      v33 = 80.0;
    }

    else
    {
      v33 = 11.0;
    }

    CGRectDivide(remainder, &v49, &remainder, v33, CGRectMinYEdge);
    v22 = v33 + v27;
  }

  if (self->_hasTitle)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
    v35 = v34;
    CGRectDivide(remainder, &v49, &remainder, v34, CGRectMinYEdge);
    v22 = v22 + v35;
    if (!a4)
    {
      titleLabel = self->_titleLabel;
      PKSizeAlignedInRect();
      [(UILabel *)titleLabel setFrame:?];
    }
  }

  if (self->_hasSubtitle)
  {
    v37 = remainder.size.width;
    v38 = remainder.size.height;
    if (self->_hasTitle)
    {
      v39 = remainder.origin.x;
      v40 = remainder.origin.y;
      CGRectDivide(*(&v37 - 2), &v49, &remainder, 2.0, CGRectMinYEdge);
      v22 = v22 + 2.0;
      v37 = remainder.size.width;
      v38 = remainder.size.height;
    }

    [(UILabel *)self->_subtitleLabel sizeThatFits:v37, v38];
    v42 = v41;
    CGRectDivide(remainder, &v49, &remainder, v41, CGRectMinYEdge);
    v22 = v22 + v42;
    if (!a4)
    {
      subtitleLabel = self->_subtitleLabel;
      PKSizeAlignedInRect();
      [(UILabel *)subtitleLabel setFrame:?];
    }
  }

  if (self->_hasButton)
  {
    if (self->_hasTitle || self->_hasSubtitle)
    {
      CGRectDivide(remainder, &v49, &remainder, 11.0, CGRectMinYEdge);
      v22 = v22 + 11.0;
    }

    [(UIButton *)self->_button sizeThatFits:remainder.size.width, remainder.size.height];
    v45 = v44;
    CGRectDivide(remainder, &v49, &remainder, v44, CGRectMinYEdge);
    v22 = v22 + v45;
    if (!a4)
    {
      button = self->_button;
      PKSizeAlignedInRect();
      [(UIButton *)button setFrame:?];
    }
  }

  if (!v19)
  {
    CGRectDivide(remainder, &v49, &remainder, 24.0, CGRectMinYEdge);
    v22 = v22 + 24.0;
  }

  v47 = width;
  v48 = v22;
  result.height = v48;
  result.width = v47;
  return result;
}

- (void)setShowActivityIndicator:(BOOL)a3
{
  if (self->_showActivityIndicator == !a3)
  {
    self->_showActivityIndicator = a3;
    button = self->_button;
    if (a3)
    {
      [(UIButton *)self->_button pkui_updateConfigurationWithTitle:0];
    }

    else
    {
      v5 = [(PKDiscoveryCallToAction *)self->_callToAction localizedButtonText];
      [(UIButton *)button pkui_updateConfigurationWithTitle:v5];
    }

    [(UIButton *)self->_button pkui_updateConfigurationShowingActivityIndicator:self->_showActivityIndicator];
    v6 = self->_button;
    v7 = !self->_showActivityIndicator;

    [(UIButton *)v6 setEnabled:v7];
  }
}

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  ctaShelf = self->_ctaShelf;
  v7 = a3;
  if ([(PKDiscoveryCallToActionShelf *)ctaShelf useImageAsTitle])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v7 imageWithRenderingMode:v8];

  if (v4)
  {
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PKDiscoveryCallToActionShelfView_setImage_animated___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v9;
    [v10 pkui_animateUsingOptions:4 animations:v11 completion:0];
  }

  else
  {
    [(UIImageView *)self->_iconImageView setImage:v9];
  }
}

- (void)setWordmarkAsset:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  ctaShelf = self->_ctaShelf;
  v7 = a3;
  if ([(PKDiscoveryCallToActionShelf *)ctaShelf useImageAsTitle])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v7 imageWithRenderingMode:v8];

  if (v4)
  {
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__PKDiscoveryCallToActionShelfView_setWordmarkAsset_animated___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v9;
    [v10 pkui_animateUsingOptions:4 animations:v11 completion:0];
  }

  else
  {
    [(UIImageView *)self->_wordmarkImageView setImage:v9];
  }
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  v4 = a3;
  [(PKDiscoveryCallToActionShelfView *)self setShowActivityIndicator:0];
  v5 = [v4 isInstalled];

  button = self->_button;
  if (v5)
  {
    v7 = [(PKDiscoveryCallToAction *)self->_callToAction localizedButtonText];
    [(UIButton *)button pkui_updateConfigurationWithTitle:v7];
  }

  else
  {
    v7 = PKLocalizedString(&cfstr_ViewButton.isa);
    v8 = [v7 pk_uppercaseStringForPreferredLocale];
    [(UIButton *)button pkui_updateConfigurationWithTitle:v8];
  }

  [(PKDiscoveryCallToActionShelfView *)self setNeedsLayout];
}

- (void)_buttonPressed:(id)a3
{
  if ([(PKDiscoveryCallToAction *)self->_callToAction action]== 8 && [(PKLinkedApplication *)self->_linkedApplication isInstalled])
  {
    linkedApplication = self->_linkedApplication;

    [(PKLinkedApplication *)linkedApplication openApplication:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    callToAction = self->_callToAction;
    v6 = [(PKDiscoveryShelfView *)self itemIdentifier];
    [WeakRetained discoveryCardViewCTATapped:self callToAction:callToAction itemIdentifier:v6];
  }
}

- (double)_desiredWordmarkAssetHeight
{
  v2 = [(PKDiscoveryCallToActionShelfView *)self _isFooterWordmarkOnly];
  result = 48.0;
  if (!v2)
  {
    return 30.0;
  }

  return result;
}

- (CGSize)_wordmarkAssetSize
{
  p_wordmarkAssetSize = &self->_wordmarkAssetSize;
  if (self->_hasWordmarkAsset)
  {
    width = p_wordmarkAssetSize->width;
    if (p_wordmarkAssetSize->width == 0.0 && self->_wordmarkAssetSize.height == 0.0)
    {
      [(PKDiscoveryMedia *)self->_wordmarkAsset width];
      width = v5;
      [(PKDiscoveryMedia *)self->_wordmarkAsset height];
      v7 = v6;
      [(PKDiscoveryCallToActionShelfView *)self _desiredWordmarkAssetHeight];
      if (v7 > 0.0 && width > 0.0)
      {
        width = width * (v8 / v7);
      }

      p_wordmarkAssetSize->width = width;
      p_wordmarkAssetSize->height = v8;
    }
  }

  else
  {
    *p_wordmarkAssetSize = *MEMORY[0x1E695F060];
    width = p_wordmarkAssetSize->width;
  }

  height = p_wordmarkAssetSize->height;
  v10 = width;
  result.height = height;
  result.width = v10;
  return result;
}

- (PKDiscoveryCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end