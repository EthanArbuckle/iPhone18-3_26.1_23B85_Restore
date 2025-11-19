@interface PKExplanationView
- (BOOL)_isBuddyiPad;
- (CGSize)logoImageViewTargetSize;
- (PKExplanationView)initWithContext:(int64_t)a3 delegate:(id)a4;
- (PKExplanationViewDelegate)delegate;
- (double)_resolvedHorizontalMargin;
- (id)_createBodyTextView;
- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4;
- (void)_bodyButtonTapped;
- (void)_calculateBlur;
- (void)_configureScrollViewBackgroundColor;
- (void)_continue;
- (void)_createBodyButton;
- (void)_createSubviews;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setupLater;
- (void)_updateIconBorderColor;
- (void)_updateImage;
- (void)_updateTitleLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)a3;
- (void)setAttributedBodyText:(id)a3;
- (void)setAttributedSecondaryBodyText:(id)a3;
- (void)setBodyButtonNumberOfLines:(int64_t)a3;
- (void)setBodyButtonText:(id)a3;
- (void)setBodyButtonUsesLearnMoreStyle:(BOOL)a3;
- (void)setBodyDataDetectorTypes:(unint64_t)a3;
- (void)setBodyImage:(id)a3;
- (void)setBodyText:(id)a3;
- (void)setBodyTextAlignment:(int64_t)a3;
- (void)setBodyTextColor:(id)a3;
- (void)setBodyView:(id)a3;
- (void)setBodyViewContentMode:(unint64_t)a3;
- (void)setBodyViewPadding:(double)a3;
- (void)setBodyViewThatFitsOverride:(id)a3;
- (void)setForceShowSetupLaterButton:(BOOL)a3;
- (void)setHeroView:(id)a3;
- (void)setHeroViewContentMode:(unint64_t)a3;
- (void)setHeroViewPrefersSizeTransform:(BOOL)a3;
- (void)setHeroViewSizeThatFitsOverride:(id)a3;
- (void)setHideTitleText:(BOOL)a3;
- (void)setHorizontalMargin:(unint64_t)a3;
- (void)setImage:(id)a3;
- (void)setImageStyle:(unint64_t)a3;
- (void)setLogoImageViewTargetSize:(CGSize)a3;
- (void)setPrivacyLink:(id)a3;
- (void)setReverseBodyViewAndBodyButtonOrder:(BOOL)a3;
- (void)setShowPrivacyView:(BOOL)a3;
- (void)setShowSpinner:(BOOL)a3;
- (void)setTitleAccessoriesEnabled:(BOOL)a3;
- (void)setTitleAlignment:(int64_t)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleHyphenationFactor:(double)a3;
- (void)setTitleImage:(id)a3;
- (void)setTitleLabelAttributedText;
- (void)setTitleLineBreakStrategy:(unint64_t)a3;
- (void)setTitleText:(id)a3;
- (void)setTitleTextColor:(id)a3;
- (void)setTitleTextNumberOfLines:(int64_t)a3;
- (void)setTopBackgroundColor:(id)a3;
- (void)setTopMargin:(double)a3;
- (void)showCheckmark:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKExplanationView

- (void)pk_applyAppearance:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundColor];
  [(PKExplanationView *)self setBackgroundColor:v5];

  v6 = [v4 tintColor];
  [(PKExplanationView *)self setTintColor:v6];

  LODWORD(v6) = [v4 hasDarkAppearance];
  if (v6)
  {
    v12 = [(PKExplanationView *)self logoImageView];
    v7 = [v12 image];

    if (v7)
    {
      v8 = [v12 image];
      v9 = [MEMORY[0x1E69DC888] whiteColor];
      v10 = [v8 _flatImageWithColor:v9];
      v11 = [v10 imageWithRenderingMode:1];
      [v12 setImage:v11];
    }
  }
}

- (PKExplanationView)initWithContext:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = PKExplanationView;
  v7 = [(PKExplanationView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_context = a3;
    objc_storeWeak(&v7->_delegate, v6);
    v8->_showPrivacyView = 1;
    v8->_topMargin = 0.0;
    v8->_horizontalMargin = 0;
    v9 = PKOBKTextAlignment();
    v8->_bodyTextAlignment = v9;
    v8->_titleAlignment = v9;
    v8->_bodyDataDetectorTypes = 2;
    v8->_bodyButtonNumberOfLines = 1;
    PKSetupViewConstantsBodyViewPadding();
    v8->_bodyViewPadding = v10;
    v8->_topLogoPadding = 25.0;
    v11 = *(MEMORY[0x1E695F050] + 16);
    v8->_lastSeenValidBounds.origin = *MEMORY[0x1E695F050];
    v8->_lastSeenValidBounds.size = v11;
    v8->_imageIgnoresTopSafeArea = 0;
    v12 = PKOBKHeaderTitleTextColor();
    titleTextColor = v8->_titleTextColor;
    v8->_titleTextColor = v12;

    v14 = PKOBKBodyTextColor();
    bodyTextColor = v8->_bodyTextColor;
    v8->_bodyTextColor = v14;

    [(PKExplanationView *)v8 _createSubviews];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKExplanationView;
  [(PKExplanationView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v146.receiver = self;
  v146.super_class = PKExplanationView;
  [(PKExplanationView *)&v146 layoutSubviews];
  v3 = PKUIGetMinScreenWidthType();
  if ([(UIScrollView *)self->_scrollView isDragging])
  {
    if (CGRectIsNull(self->_lastSeenValidBounds))
    {
      [(PKExplanationView *)self bounds];
      x = v4;
      y = v6;
      width = v8;
      height = v10;
    }

    else
    {
      x = self->_lastSeenValidBounds.origin.x;
      y = self->_lastSeenValidBounds.origin.y;
      width = self->_lastSeenValidBounds.size.width;
      height = self->_lastSeenValidBounds.size.height;
    }
  }

  else
  {
    [(PKExplanationView *)self bounds];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
    self->_lastSeenValidBounds.origin.x = v12;
    self->_lastSeenValidBounds.origin.y = v13;
    self->_lastSeenValidBounds.size.width = v14;
    self->_lastSeenValidBounds.size.height = v15;
  }

  [(PKExplanationView *)self safeAreaInsets];
  v17 = v16;
  v127 = v18;
  [(UIScrollView *)self->_scrollView frame];
  v154.origin.x = v19;
  v154.origin.y = v20;
  v154.size.width = v21;
  v154.size.height = v22;
  v147.origin.x = x;
  v147.origin.y = y;
  v147.size.width = width;
  v147.size.height = height;
  if (!CGRectEqualToRect(v147, v154))
  {
    [(UIScrollView *)self->_scrollView setFrame:x, y, width, height];
  }

  if (self->_maxImageHeight == 0.0)
  {
    self->_maxImageHeight = dbl_1BE114FE0[PKUIGetMinScreenWidthType() == 0];
  }

  [(PKExplanationView *)self _resolvedHorizontalMargin];
  if (PKIsPad())
  {
    PKPaymentSetupContextIsSetupAssistant();
  }

  if (width >= 768.0)
  {
    v23 = [(PKExplanationView *)self readableContentGuide];
    [v23 layoutFrame];
  }

  v131 = x;
  rect = y;
  PKSizeAlignedInRect();
  v129 = v25;
  v130 = v24;
  v128 = v26;
  v28 = v27;
  v142 = 0;
  v143 = &v142;
  v144 = 0x2020000000;
  v145 = 0;
  v29 = [(UIImageView *)self->_imageView superview];

  if (v29)
  {
    v30 = self->_imageView;
    [(UIImageView *)v30 frame];
    UIRectCenteredXInRect();
    v37 = v34;
    v38 = v35;
    v39 = v36;
    if (self->_imageIgnoresTopSafeArea)
    {
      topMargin = -v17;
    }

    else
    {
      topMargin = self->_topMargin;
    }

    [(UIImageView *)v30 setFrame:v34, topMargin, v35, v36];
    v148.origin.x = v37;
    v148.origin.y = topMargin;
    v148.size.width = v38;
    v148.size.height = v39;
    v143[3] = CGRectGetMaxY(v148);
  }

  else
  {
    v31 = [(UIView *)self->_heroView superview];

    if (v31)
    {
      if (self->_imageIgnoresTopSafeArea)
      {
        v33 = -v17;
      }

      else
      {
        v33 = self->_topMargin;
      }

      v149.origin.x = __35__PKExplanationView_layoutSubviews__block_invoke(x, v33, width, height, v32, self->_heroView, self->_heroViewSizeThatFitsOverride, self->_heroViewContentMode, self->_heroViewPrefersSizeTransform);
      v143[3] = CGRectGetMaxY(v149);
    }
  }

  v41 = [(PKExplanationView *)self _shouldReverseLayoutDirection];
  v42 = MEMORY[0x1E695F060];
  if (!self->_hideTitleText)
  {
    if ([(PKExplanationView *)self _showTitleLogoImageView])
    {
      v43 = self->_logoImageView;
      v44 = [(UIImageView *)v43 image];
      [v44 size];
      v46 = v45;

      [(UIImageView *)v43 frame];
      v47 = v42[1];
      v48 = self->_logoImageViewTargetSize.width == *v42;
      if (self->_logoImageViewTargetSize.height != v47)
      {
        v48 = 0;
      }

      if (v3)
      {
        v48 = 0;
      }

      v49 = 20.0;
      v50 = v46 > 20.0;
      if (!v48 || !v50)
      {
        v49 = self->_logoImageViewTargetSize.height;
      }

      v51 = 1.79769313e308;
      if (!v48 || !v50)
      {
        v51 = self->_logoImageViewTargetSize.width;
      }

      if (v51 != *v42 || v49 != v47)
      {
        PKSizeAspectFit();
      }

      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      v55 = v54;
      [(UIImageView *)v43 setFrame:?];
      v56 = v55 + self->_topLogoPadding;
      p_topLogoBottomPadding = &self->_topLogoBottomPadding;
    }

    else
    {
      v43 = self->_titleLabel;
      v52 = fmax(width - v28, 0.0) * 0.5;
      [(UIImageView *)v43 setContentInsets:0.0, v52, 0.0, v52];
      [(UIImageView *)v43 sizeThatFits:width, 1.79769313e308];
      v56 = v53;
      p_topLogoBottomPadding = &self->_topLogoPadding;
      [(UIImageView *)v43 setFrame:v131, v143[3] + self->_topLogoPadding, width, v53];
    }

    v143[3] = v56 + *p_topLogoBottomPadding + v143[3];
  }

  v58 = [(UIImageView *)self->_bodyImageView superview];

  if (v58)
  {
    [(UIImageView *)self->_bodyImageView frame];
    UIRectCenteredXInRect();
    v62 = v59;
    v63 = v143[3] + 44.0;
    if (self->_bodyImage)
    {
      if (v61 >= self->_maxImageHeight)
      {
        maxImageHeight = self->_maxImageHeight;
      }

      else
      {
        maxImageHeight = v61;
      }

      if (v60 >= width)
      {
        v65 = width;
      }

      else
      {
        v65 = v60;
      }
    }

    else
    {
      maxImageHeight = 0.0;
      v65 = 0.0;
    }

    [(UIImageView *)self->_bodyImageView setFrame:v59, v63, v65, maxImageHeight];
    v150.origin.x = v62;
    v150.origin.y = v63;
    v150.size.width = v65;
    v150.size.height = maxImageHeight;
    v143[3] = CGRectGetMaxY(v150);
    v66 = 36.0;
  }

  else if (_UISolariumFeatureFlagEnabled())
  {
    v66 = 0.0;
  }

  else
  {
    v66 = 8.0;
  }

  if (_os_feature_enabled_impl() && (_UISolariumFeatureFlagEnabled() & 1) != 0)
  {
    v66 = 0.0;
  }

  v67 = self->_bodyTextView;
  [(UITextView *)v67 frame];
  [(UITextView *)v67 sizeThatFits:v28, 1.79769313e308];
  UIRectCenteredXInRect();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  if (v66 + v143[3] == 0.0)
  {
    v74 = 20.0;
  }

  else
  {
    v74 = v66 + v143[3];
  }

  [(UITextView *)v67 setFrame:v68, v74];
  v151.origin.x = v69;
  v151.origin.y = v74;
  v151.size.width = v71;
  v151.size.height = v73;
  MaxY = CGRectGetMaxY(v151);
  v143[3] = MaxY;
  if (self->_attributedSecondaryBodyText)
  {
    [(UITextView *)self->_secondaryBodyTextView frame];
    [(UITextView *)self->_secondaryBodyTextView sizeThatFits:v28, 1.79769313e308];
    UIRectCenteredXInRect();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v143[3] + 8.0;
    [(UITextView *)self->_secondaryBodyTextView setFrame:v76, v82];
    v152.origin.x = v77;
    v152.origin.y = v82;
    v152.size.width = v79;
    v152.size.height = v81;
    MaxY = CGRectGetMaxY(v152);
    v143[3] = MaxY;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__PKExplanationView_layoutSubviews__block_invoke_2;
  aBlock[3] = &unk_1E801B658;
  *&aBlock[6] = v130;
  aBlock[7] = v128;
  *&aBlock[8] = v28;
  *&aBlock[9] = v129;
  v141 = v41;
  *&aBlock[10] = v131;
  *&aBlock[11] = rect;
  *&aBlock[12] = width;
  *&aBlock[13] = height;
  aBlock[4] = self;
  aBlock[5] = &v142;
  v83 = _Block_copy(aBlock);
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __35__PKExplanationView_layoutSubviews__block_invoke_3;
  v133[3] = &unk_1E801B680;
  v136 = v130;
  v137 = v128;
  v138 = v28;
  v139 = v129;
  v133[4] = self;
  v134 = &__block_literal_global_134;
  v135 = &v142;
  v84 = _Block_copy(v133);
  v85 = v84;
  v125 = v83;
  if (self->_reverseBodyViewAndBodyButtonOrder)
  {
    v84[2](v84);
    v86 = v83;
  }

  else
  {
    v83[2](v83);
    v86 = v85;
  }

  (v86[2])();
  v87 = width;
  if (width >= 768.0)
  {
    v88 = [(PKExplanationView *)self readableContentGuide];
    [v88 layoutFrame];
    v87 = v89;
  }

  v90 = [(OBPrivacyLinkController *)self->_privacyLink view];
  v91 = v90;
  if (v90 && self->_showPrivacyView)
  {
    v93 = self->_cachedPrivacyViewSize.width;
    v92 = self->_cachedPrivacyViewSize.height;
    if (v93 == *v42 && v92 == v42[1])
    {
      [v90 setFrame:{0.0, 0.0, v28, 0.0}];
      [v91 setNeedsLayout];
      [v91 layoutIfNeeded];
      LODWORD(v94) = 1148846080;
      LODWORD(v95) = 1112014848;
      [v91 systemLayoutSizeFittingSize:v28 withHorizontalFittingPriority:v129 verticalFittingPriority:{v94, v95}];
      v93 = v96;
      v92 = v97;
      self->_cachedPrivacyViewSize.width = v96;
      self->_cachedPrivacyViewSize.height = v97;
    }
  }

  else
  {
    v93 = *v42;
    v92 = v42[1];
  }

  if (self->_showPrivacyView)
  {
    [(PKPaymentSetupDockView *)self->_dockView sizeThatFitsWithoutPrivacyLink:v87, 1.79769313e308];
    v99 = 0.0;
    if (self->_blurringView)
    {
      v99 = v127;
    }

    if (height - (v92 + 11.0 + v98 + v99) >= MaxY)
    {
      v104 = [v91 superview];
      dockView = self->_dockView;

      if (v104 != dockView)
      {
        [v91 removeFromSuperview];
      }

      v106 = [(PKPaymentSetupDockView *)self->_dockView privacyLink];
      privacyLink = self->_privacyLink;

      if (v106 != privacyLink)
      {
        [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:self->_privacyLink];
      }

      v103 = v143[3];
    }

    else
    {
      v100 = [(PKPaymentSetupDockView *)self->_dockView privacyLink];

      if (v100)
      {
        [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
      }

      v101 = [v91 superview];

      if (!v101)
      {
        [(UIScrollView *)self->_scrollView addSubview:v91];
      }

      v102 = v143[3] + 16.0;
      [v91 setFrame:{v130, v102, v93, v92}];
      v153.origin.x = v130;
      v153.origin.y = v102;
      v153.size.width = v93;
      v153.size.height = v92;
      v103 = CGRectGetMaxY(v153);
    }
  }

  else
  {
    v103 = v143[3];
  }

  [(PKPaymentSetupDockView *)self->_dockView sizeThatFits:v87, 1.79769313e308];
  v109 = v108;
  v110 = v131;
  v111 = rect;
  v112 = width;
  v113 = height;
  if (self->_blurringView)
  {
    [(_PKVisibilityBackdropView *)self->_blurringView setFrame:0.0, CGRectGetMaxY(*&v110) - (v127 + v109), width, v127 + v109];
    [(_PKVisibilityBackdropView *)self->_blurringView layoutIfNeeded];
    PKFloatRoundToPixel();
    [(PKPaymentSetupDockView *)self->_dockView setFrame:?];
  }

  else
  {
    [(PKPaymentSetupDockView *)self->_dockView setFrame:0.0, CGRectGetMaxY(*&v110) - v109, width, v109];
  }

  [(UIScrollView *)self->_scrollView setContentSize:width, v103];
  [(UIScrollView *)self->_scrollView contentInset];
  v115 = v114;
  v117 = v116;
  v119 = v118;
  [(UIScrollView *)self->_scrollView setContentInset:?];
  [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:v115, v117, v109, v119];
  topBackgroundView = self->_topBackgroundView;
  if (topBackgroundView)
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    v121 = 0.0;
    if (self->_topMargin >= v122)
    {
      [(UIScrollView *)self->_scrollView contentOffset];
      v121 = self->_topMargin - v123;
    }

    [(UIView *)topBackgroundView setFrame:v131, rect, width, v121];
  }

  [(PKExplanationView *)self _calculateBlur];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained explanationViewDidUpdateLayout:self];
  }

  _Block_object_dispose(&v142, 8);
}

double __35__PKExplanationView_layoutSubviews__block_invoke(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, void *a7, uint64_t a8, int a9)
{
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v14, a3, a4);
  }

  else
  {
    [v14 sizeThatFits:{a3, a4}];
  }

  v19 = v17;
  v20 = v18;
  if (a8 > 2)
  {
    if (a8 == 3)
    {
      PKSizeAspectFit();
      goto LABEL_14;
    }

    if (a8 == 4)
    {
      PKSizeAspectFitToCover();
      goto LABEL_14;
    }

LABEL_11:
    v23 = v18;
    v24 = v17;
    goto LABEL_15;
  }

  if (a8 == 1)
  {
    PKSizeScaleAspectFit();
    goto LABEL_14;
  }

  if (a8 != 2)
  {
    goto LABEL_11;
  }

  PKSizeAspectFill();
LABEL_14:
  v24 = v21;
  v23 = v22;
LABEL_15:
  if (a9)
  {
    v25 = v20;
  }

  else
  {
    v25 = v23;
  }

  if (a9)
  {
    v26 = v19;
  }

  else
  {
    v26 = v24;
  }

  [v14 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v26, v25}];
  if (a9)
  {
    memset(&v45, 0, sizeof(v45));
    CATransform3DMakeScale(&v45, v24 / v19, v23 / v20, 1.0);
    v44 = v45;
    v27 = &v44;
  }

  else
  {
    v28 = *(MEMORY[0x1E69792E8] + 80);
    *&v45.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v45.m33 = v28;
    v29 = *(MEMORY[0x1E69792E8] + 112);
    *&v45.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v45.m43 = v29;
    v30 = *(MEMORY[0x1E69792E8] + 16);
    *&v45.m11 = *MEMORY[0x1E69792E8];
    *&v45.m13 = v30;
    v31 = *(MEMORY[0x1E69792E8] + 48);
    *&v45.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v45.m23 = v31;
    v27 = &v45;
  }

  [v14 setTransform3D:{v27, *&v44.m11, *&v44.m13, *&v44.m21, *&v44.m23, *&v44.m31, *&v44.m33, *&v44.m41, *&v44.m43, *&v45.m11, *&v45.m12, *&v45.m13, *&v45.m14, *&v45.m21, *&v45.m22, *&v45.m23, *&v45.m24, *&v45.m31, *&v45.m32, *&v45.m33, *&v45.m34, *&v45.m41, *&v45.m42, *&v45.m43, *&v45.m44}];
  PKSizeAlignedInRect();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [v14 layer];
  [v40 anchorPoint];
  [v14 setCenter:{v33 + v41 * v37, v35 + v42 * v39}];

  return v33;
}

void __35__PKExplanationView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 552);
  if (v2)
  {
    [v2 sizeThatFits:{*(a1 + 64), 1.79769313e308}];
    if (_os_feature_enabled_impl() && _UISolariumFeatureFlagEnabled())
    {
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
    }

    else
    {
      UIRectCenteredXInRect();
    }

    v6 = v3;
    v7 = v4;
    v8 = v5;
    v9 = *(*(*(a1 + 40) + 8) + 24);
    PKSetupViewConstantsBodyButtonPadding();
    v11 = v9 + v10;
    [*(*(a1 + 32) + 552) pkui_setBoundsAndPositionFromFrame:{v6, v11, v7, v8}];
    v12.origin.x = v6;
    v12.origin.y = v11;
    v12.size.width = v7;
    v12.size.height = v8;
    *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v12);
  }
}

void __35__PKExplanationView_layoutSubviews__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 784))
  {
    v3.origin.x = (*(*(a1 + 40) + 16))(*(a1 + 56), *(*(*(a1 + 48) + 8) + 24) + *(v1 + 808), *(a1 + 72), 1.79769313e308);
    *(*(*(a1 + 48) + 8) + 24) = CGRectGetMaxY(v3);
  }
}

- (void)setShowPrivacyView:(BOOL)a3
{
  if (self->_showPrivacyView != a3)
  {
    self->_showPrivacyView = a3;
    privacyLink = self->_privacyLink;
    if (privacyLink)
    {
      v5 = [(OBPrivacyLinkController *)privacyLink view];
      v6 = v5;
      if (!self->_showPrivacyView)
      {
        [v5 removeFromSuperview];
        [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
      }
    }

    self->_cachedPrivacyViewSize = *MEMORY[0x1E695F060];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setPrivacyLink:(id)a3
{
  v6 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    v5 = [(OBPrivacyLinkController *)self->_privacyLink view];
    [v5 removeFromSuperview];

    [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
    objc_storeStrong(&self->_privacyLink, a3);
    self->_cachedPrivacyViewSize = *MEMORY[0x1E695F060];
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setHideTitleText:(BOOL)a3
{
  if (self->_hideTitleText != a3)
  {
    self->_hideTitleText = a3;
    [(PKExplanationView *)self _updateTitleLabel];
  }
}

- (void)setForceShowSetupLaterButton:(BOOL)a3
{
  if (self->_forceShowSetupLaterButton != a3)
  {
    v4 = a3;
    self->_forceShowSetupLaterButton = a3;
    v6 = [(PKExplanationView *)self dockView];
    v8 = [v6 footerView];

    if ((PKPaymentSetupContextIsSetupAssistant() & 1) != 0 || v4)
    {
      v7 = [v8 setUpLaterButton];
      [v7 addTarget:self action:sel__setupLater forControlEvents:0x2000];
    }

    else
    {
      [v8 setSetUpLaterButton:0];
    }
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v7 = v5;
    v6 = [(UIImageView *)self->_imageView superview];

    if (v6)
    {
      [(UIImageView *)self->_imageView removeFromSuperview];
    }

    objc_storeStrong(&self->_image, a3);
    [(PKExplanationView *)self _updateImage];
    v5 = v7;
  }
}

- (void)setImageStyle:(unint64_t)a3
{
  if (self->_imageStyle != a3)
  {
    self->_imageStyle = a3;
    [(PKExplanationView *)self _updateImage];
  }
}

- (void)setHeroView:(id)a3
{
  v5 = a3;
  heroView = self->_heroView;
  if (heroView != v5)
  {
    v9 = v5;
    v7 = [(UIView *)heroView superview];

    if (v7)
    {
      [(UIView *)self->_heroView removeFromSuperview];
    }

    objc_storeStrong(&self->_heroView, a3);
    v8 = [(UIView *)self->_heroView superview];

    if (!v8)
    {
      [(UIScrollView *)self->_scrollView addSubview:self->_heroView];
    }

    [(UIImageView *)self->_imageView removeFromSuperview];
    [(PKExplanationView *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)setHeroViewSizeThatFitsOverride:(id)a3
{
  v4 = _Block_copy(a3);
  heroViewSizeThatFitsOverride = self->_heroViewSizeThatFitsOverride;
  self->_heroViewSizeThatFitsOverride = v4;

  [(PKExplanationView *)self setNeedsLayout];
}

- (void)setHeroViewContentMode:(unint64_t)a3
{
  if (self->_heroViewContentMode != a3)
  {
    self->_heroViewContentMode = a3;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setHeroViewPrefersSizeTransform:(BOOL)a3
{
  if (self->_heroViewPrefersSizeTransform == !a3)
  {
    self->_heroViewPrefersSizeTransform = a3;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setTopBackgroundColor:(id)a3
{
  v9 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_topBackgroundColor, a3);
    topBackgroundView = self->_topBackgroundView;
    if (v9)
    {
      if (!topBackgroundView)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v7 = self->_topBackgroundView;
        self->_topBackgroundView = v6;

        [(PKExplanationView *)self insertSubview:self->_topBackgroundView belowSubview:self->_scrollView];
        topBackgroundView = self->_topBackgroundView;
      }

      [(UIView *)topBackgroundView setBackgroundColor:?];
      [(PKExplanationView *)self setNeedsLayout];
    }

    else
    {
      [(UIView *)topBackgroundView removeFromSuperview];
      v8 = self->_topBackgroundView;
      self->_topBackgroundView = 0;
    }

    [(PKExplanationView *)self _configureScrollViewBackgroundColor];
  }
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_titleText] & 1) == 0)
  {
    objc_storeStrong(&self->_titleText, a3);
    [(PKExplanationView *)self _updateTitleLabel];
  }
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  if (self->_titleFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_titleFont, a3);
    [(PKExplanationView *)self setTitleLabelAttributedText];
    [(PKExplanationView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setTitleTextColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleTextColor, a3);
    [(PKExplanationView *)self setTitleLabelAttributedText];
  }
}

- (void)setTitleTextNumberOfLines:(int64_t)a3
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(PKTrailingAccessoryLabel *)titleLabel setMaximumNumberOfLines:a3];

    [(PKExplanationView *)self _updateTitleLabel];
  }
}

- (void)setTitleLineBreakStrategy:(unint64_t)a3
{
  if (self->_titleLineBreakStrategy != a3)
  {
    self->_titleLineBreakStrategy = a3;
    [(PKExplanationView *)self _updateTitleLabel];
  }
}

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner == !a3)
  {
    self->_showSpinner = a3;
    activityIndicator = self->_activityIndicator;
    if (a3)
    {
      [(UIActivityIndicatorView *)activityIndicator setHidden:0];
      v5 = self->_activityIndicator;

      [(UIActivityIndicatorView *)v5 startAnimating];
    }

    else
    {

      [(UIActivityIndicatorView *)activityIndicator stopAnimating];
    }
  }
}

- (void)showCheckmark:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showCheckmark == !a3)
  {
    self->_showCheckmark = a3;
    [PKCheckmarkView showCheckmark:"showCheckmark:animated:" animated:?];
  }
}

- (void)setBodyImage:(id)a3
{
  v5 = a3;
  if (self->_bodyImage != v5)
  {
    v9 = v5;
    v6 = [(UIImageView *)self->_bodyImageView superview];

    if (v6)
    {
      [(UIImageView *)self->_imageView removeFromSuperview];
    }

    objc_storeStrong(&self->_bodyImage, a3);
    [(UIImageView *)self->_bodyImageView setImage:self->_bodyImage];
    [(UIImageView *)self->_bodyImageView sizeToFit];
    bodyImageView = self->_bodyImageView;
    if (self->_bodyImage)
    {
      v8 = [(UIImageView *)bodyImageView superview];

      if (!v8)
      {
        [(UIScrollView *)self->_scrollView addSubview:self->_bodyImageView];
      }

      bodyImageView = self->_heroView;
    }

    [(UIImageView *)bodyImageView removeFromSuperview];
    [(PKExplanationView *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)setBodyTextAlignment:(int64_t)a3
{
  if (self->_bodyTextAlignment != a3)
  {
    self->_bodyTextAlignment = a3;
    [(UITextView *)self->_bodyTextView setTextAlignment:?];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setTitleAlignment:(int64_t)a3
{
  if (self->_titleAlignment != a3)
  {
    self->_titleAlignment = a3;
    [(PKExplanationView *)self setTitleLabelAttributedText];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyText:(id)a3
{
  v11 = a3;
  if (([v11 isEqualToString:self->_bodyText] & 1) == 0)
  {
    objc_storeStrong(&self->_bodyText, a3);
    attributedBodyText = self->_attributedBodyText;
    self->_attributedBodyText = 0;

    bodyText = self->_bodyText;
    bodyTextView = self->_bodyTextView;
    if (bodyText)
    {
      if (!bodyTextView)
      {
        v8 = [(PKExplanationView *)self _createBodyTextView];
        v9 = self->_bodyTextView;
        self->_bodyTextView = v8;

        [(UIScrollView *)self->_scrollView addSubview:self->_bodyTextView];
        bodyTextView = self->_bodyTextView;
        bodyText = self->_bodyText;
      }

      [(UITextView *)bodyTextView setText:bodyText];
    }

    else
    {
      [(UITextView *)bodyTextView removeFromSuperview];
      v10 = self->_bodyTextView;
      self->_bodyTextView = 0;
    }

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyTextColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_bodyTextColor, a3);
    [(UITextView *)self->_bodyTextView setTextColor:self->_bodyTextColor];
  }
}

- (void)setAttributedSecondaryBodyText:(id)a3
{
  v10 = a3;
  if (![(NSAttributedString *)self->_attributedSecondaryBodyText isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_attributedSecondaryBodyText, a3);
    attributedSecondaryBodyText = self->_attributedSecondaryBodyText;
    secondaryBodyTextView = self->_secondaryBodyTextView;
    if (attributedSecondaryBodyText)
    {
      if (!secondaryBodyTextView)
      {
        v7 = [(PKExplanationView *)self _createBodyTextView];
        v8 = self->_secondaryBodyTextView;
        self->_secondaryBodyTextView = v7;

        [(UIScrollView *)self->_scrollView addSubview:self->_secondaryBodyTextView];
        secondaryBodyTextView = self->_secondaryBodyTextView;
        attributedSecondaryBodyText = self->_attributedSecondaryBodyText;
      }

      [(UITextView *)secondaryBodyTextView setAttributedText:attributedSecondaryBodyText];
    }

    else
    {
      [(UITextView *)secondaryBodyTextView removeFromSuperview];
      v9 = self->_secondaryBodyTextView;
      self->_secondaryBodyTextView = 0;
    }

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setAttributedBodyText:(id)a3
{
  v16 = a3;
  v4 = [v16 isEqualToAttributedString:self->_attributedBodyText];
  v5 = v16;
  if ((v4 & 1) == 0)
  {
    v6 = [v16 copy];
    attributedBodyText = self->_attributedBodyText;
    self->_attributedBodyText = v6;

    bodyText = self->_bodyText;
    self->_bodyText = 0;

    v9 = self->_attributedBodyText;
    bodyTextView = self->_bodyTextView;
    if (v9)
    {
      if (!bodyTextView)
      {
        v11 = [(PKExplanationView *)self _createBodyTextView];
        v12 = self->_bodyTextView;
        self->_bodyTextView = v11;

        [(UIScrollView *)self->_scrollView addSubview:self->_bodyTextView];
        bodyTextView = self->_bodyTextView;
        v9 = self->_attributedBodyText;
      }

      [(UITextView *)bodyTextView setAttributedText:v9];
      v13 = self->_bodyTextView;
      v14 = PKOBKHeaderSubtitleFont();
      [(UITextView *)v13 setFont:v14];

      [(UITextView *)self->_bodyTextView setTextAlignment:self->_bodyTextAlignment];
    }

    else
    {
      [(UITextView *)bodyTextView removeFromSuperview];
      v15 = self->_bodyTextView;
      self->_bodyTextView = 0;
    }

    [(PKExplanationView *)self setNeedsLayout];
    v5 = v16;
  }
}

- (void)setBodyView:(id)a3
{
  v5 = a3;
  bodyView = self->_bodyView;
  if (bodyView != v5)
  {
    v7 = v5;
    [(UIView *)bodyView removeFromSuperview];
    objc_storeStrong(&self->_bodyView, a3);
    if (self->_bodyView)
    {
      [(UIScrollView *)self->_scrollView addSubview:?];
    }

    [(PKExplanationView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setBodyButtonText:(id)a3
{
  v5 = a3;
  v6 = [(UIButton *)self->_bodyButton configuration];
  v7 = [v6 attributedTitle];
  v8 = [v7 string];
  v14 = v5;
  v9 = v8;
  v10 = v9;
  if (v9 == v14)
  {

    goto LABEL_14;
  }

  if (!v14 || !v9)
  {

LABEL_8:
    objc_storeStrong(&self->_bodyButtonText, a3);
    bodyButton = self->_bodyButton;
    if (v14)
    {
      if (bodyButton)
      {
        [(UIButton *)bodyButton pkui_updateConfigurationWithTitle:?];
      }

      else
      {
        [(PKExplanationView *)self _createBodyButton];
      }

      [(UIButton *)self->_bodyButton sizeToFit];
    }

    else
    {
      [(UIButton *)bodyButton removeFromSuperview];
      v13 = self->_bodyButton;
      self->_bodyButton = 0;
    }

    goto LABEL_14;
  }

  v11 = [v14 isEqualToString:v9];

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
}

- (void)setBodyButtonNumberOfLines:(int64_t)a3
{
  if (self->_bodyButtonNumberOfLines != a3)
  {
    self->_bodyButtonNumberOfLines = a3;
    bodyButton = self->_bodyButton;
    if (bodyButton)
    {
      v5 = [(UIButton *)bodyButton titleLabel];
      [v5 setNumberOfLines:self->_bodyButtonNumberOfLines];

      [(PKExplanationView *)self setNeedsLayout];
    }
  }
}

- (void)setBodyButtonUsesLearnMoreStyle:(BOOL)a3
{
  if (self->_bodyButtonUsesLearnMoreStyle != a3)
  {
    self->_bodyButtonUsesLearnMoreStyle = a3;
    [(UIButton *)self->_bodyButton removeFromSuperview];
    bodyButton = self->_bodyButton;
    self->_bodyButton = 0;

    [(PKExplanationView *)self _createBodyButton];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setHorizontalMargin:(unint64_t)a3
{
  if (self->_horizontalMargin != a3)
  {
    self->_horizontalMargin = a3;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setTopMargin:(double)a3
{
  if (self->_topMargin != a3)
  {
    self->_topMargin = a3;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setTitleHyphenationFactor:(double)a3
{
  if (self->_titleHyphenationFactor != a3)
  {
    self->_titleHyphenationFactor = a3;
    [(PKExplanationView *)self setTitleLabelAttributedText];
  }
}

- (void)setTitleImage:(id)a3
{
  v5 = a3;
  if (self->_titleImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_titleImage, a3);
    [(UIImageView *)self->_logoImageView setImage:self->_titleImage];
    [(UIImageView *)self->_logoImageView sizeToFit];
    [(PKExplanationView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setTitleAccessoriesEnabled:(BOOL)a3
{
  if (self->_titleAccessoriesEnabled == !a3)
  {
    self->_titleAccessoriesEnabled = a3;
    titleLabel = self->_titleLabel;
    if (a3)
    {
      checkmarkView = self->_checkmarkView;
      [(PKCheckmarkView *)checkmarkView intrinsicContentSize];
      [(PKTrailingAccessoryLabel *)titleLabel registerAccessoryWithView:checkmarkView withSize:@"checkmark" for:?];
      v7 = self->_titleLabel;
      activityIndicator = self->_activityIndicator;
      [(UIActivityIndicatorView *)activityIndicator intrinsicContentSize];
      [(PKTrailingAccessoryLabel *)v7 registerAccessoryWithView:activityIndicator withSize:@"activityIndicator" for:?];
    }

    else
    {
      [(PKTrailingAccessoryLabel *)self->_titleLabel unregisterAccessories];
    }

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setLogoImageViewTargetSize:(CGSize)a3
{
  if (self->_logoImageViewTargetSize.width != a3.width || self->_logoImageViewTargetSize.height != a3.height)
  {
    self->_logoImageViewTargetSize = a3;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyDataDetectorTypes:(unint64_t)a3
{
  if (self->_bodyDataDetectorTypes != a3)
  {
    self->_bodyDataDetectorTypes = a3;
    [(UITextView *)self->_bodyTextView setDataDetectorTypes:?];
    [(UITextView *)self->_secondaryBodyTextView setDataDetectorTypes:self->_bodyDataDetectorTypes];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyViewPadding:(double)a3
{
  if (self->_bodyViewPadding != a3)
  {
    self->_bodyViewPadding = a3;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyViewThatFitsOverride:(id)a3
{
  v4 = _Block_copy(a3);
  bodyViewThatFitsOverride = self->_bodyViewThatFitsOverride;
  self->_bodyViewThatFitsOverride = v4;

  [(PKExplanationView *)self setNeedsLayout];
}

- (void)setBodyViewContentMode:(unint64_t)a3
{
  if (self->_bodyViewContentMode != a3)
  {
    self->_bodyViewContentMode = a3;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setReverseBodyViewAndBodyButtonOrder:(BOOL)a3
{
  if (self->_reverseBodyViewAndBodyButtonOrder != a3)
  {
    self->_reverseBodyViewAndBodyButtonOrder = a3;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)_continue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained explanationViewDidSelectContinue:self];
  }
}

- (void)_setupLater
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained explanationViewDidSelectSetupLater:self];
  }
}

- (void)_bodyButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained explanationViewDidSelectBodyButton:self];
  }
}

- (void)_calculateBlur
{
  scrollView = self->_scrollView;
  [(_PKVisibilityBackdropView *)self->_blurringView bounds];
  [(UIScrollView *)scrollView convertRect:self->_blurringView fromView:?];
  v5 = v4;
  [(UIScrollView *)self->_scrollView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIScrollView *)self->_scrollView contentSize];
  v18.size.height = fmin(v13, v14 - v9);
  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v15 = fmin(fmax(CGRectGetMaxY(v18) - v5, 0.0), 30.0) / 30.0;
  blurringView = self->_blurringView;

  [(_PKVisibilityBackdropView *)blurringView pkui_setVisibility:0 animated:v15];
}

- (void)setTitleLabelAttributedText
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (self->_titleText)
  {
    titleFont = self->_titleFont;
    if (titleFont)
    {
      v4 = titleFont;
    }

    else
    {
      v4 = PKOBKHeaderTitleFont();
    }

    v6 = v4;
    v7 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v7 setAlignment:self->_titleAlignment];
    [v7 setLineBreakMode:0];
    [v7 setLineBreakStrategy:self->_titleLineBreakStrategy];
    titleHyphenationFactor = self->_titleHyphenationFactor;
    *&titleHyphenationFactor = titleHyphenationFactor;
    [v7 setHyphenationFactor:titleHyphenationFactor];
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    titleText = self->_titleText;
    v11 = *MEMORY[0x1E69DB648];
    v13[0] = *MEMORY[0x1E69DB688];
    v13[1] = v11;
    v14[0] = v7;
    v14[1] = v6;
    v13[2] = *MEMORY[0x1E69DB650];
    v14[2] = self->_titleTextColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v5 = [v9 initWithString:titleText attributes:v12];
  }

  else
  {
    v5 = 0;
  }

  [(PKTrailingAccessoryLabel *)self->_titleLabel setAttributedText:v5];
}

- (void)_createSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(PKExplanationView *)self _configureScrollViewBackgroundColor];
  v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  imageView = self->_imageView;
  self->_imageView = v5;

  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setClipsToBounds:1];
  v7 = objc_alloc_init(PKTrailingAccessoryLabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;

  [(PKExplanationView *)self setTitleLabelAttributedText];
  v9 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v9;

  [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_activityIndicator sizeToFit];
  [(UIActivityIndicatorView *)self->_activityIndicator setHidden:1];
  v11 = objc_alloc_init(PKCheckmarkView);
  checkmarkView = self->_checkmarkView;
  self->_checkmarkView = v11;

  v13 = PKUIImageNamed(@"Payment_SetupLogo");
  titleImage = self->_titleImage;
  self->_titleImage = v13;

  v15 = [(UIImage *)self->_titleImage imageWithRenderingMode:2];
  v16 = self->_titleImage;
  self->_titleImage = v15;

  v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_titleImage];
  logoImageView = self->_logoImageView;
  self->_logoImageView = v17;

  v19 = self->_logoImageView;
  v20 = [MEMORY[0x1E69DC888] labelColor];
  [(UIImageView *)v19 setTintColor:v20];

  v21 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  bodyImageView = self->_bodyImageView;
  self->_bodyImageView = v21;

  [(UIImageView *)self->_bodyImageView setContentMode:1];
  v23 = [PKPaymentSetupDockView alloc];
  v24 = *MEMORY[0x1E695F058];
  v25 = *(MEMORY[0x1E695F058] + 8);
  v26 = *(MEMORY[0x1E695F058] + 16);
  v27 = *(MEMORY[0x1E695F058] + 24);
  v28 = [(PKPaymentSetupDockView *)v23 initWithFrame:self->_context context:*MEMORY[0x1E695F058], v25, v26, v27];
  dockView = self->_dockView;
  self->_dockView = v28;

  [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    v30 = [(PKPaymentSetupDockView *)self->_dockView footerView];
    v31 = [v30 setUpLaterButton];
    [v31 addTarget:self action:sel__setupLater forControlEvents:0x2000];
  }

  v32 = [(PKPaymentSetupDockView *)self->_dockView primaryButton];
  v33 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [v32 setTitle:v33 forState:0];

  v34 = [(PKPaymentSetupDockView *)self->_dockView primaryButton];
  [v34 addTarget:self action:sel__continue forControlEvents:0x2000];

  if (_UISolariumFeatureFlagEnabled())
  {
    v35 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_scrollView edge:4 style:0];
    [(PKPaymentSetupDockView *)self->_dockView addInteraction:v35];
  }

  else
  {
    v36 = [[_PKVisibilityBackdropView alloc] initWithFrame:-2 privateStyle:v24, v25, v26, v27];
    blurringView = self->_blurringView;
    self->_blurringView = v36;

    [(_PKVisibilityBackdropView *)self->_blurringView setDelegate:self];
    [(_PKVisibilityBackdropView *)self->_blurringView setUserInteractionEnabled:1];
    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:self->_backdropWeight];
    v35 = [(_UIBackdropView *)self->_blurringView contentView];
    [v35 addSubview:self->_dockView];
  }

  [(PKExplanationView *)self addSubview:self->_scrollView];
  if (self->_blurringView || self->_dockView)
  {
    [(PKExplanationView *)self addSubview:?];
  }

  [(UIScrollView *)self->_scrollView addSubview:self->_imageView];
  if ([(PKExplanationView *)self _showTitleLogoImageView])
  {
    p_logoImageView = &self->_logoImageView;
  }

  else
  {
    p_logoImageView = &self->_titleLabel;
  }

  [(UIScrollView *)self->_scrollView addSubview:*p_logoImageView];

  [(PKExplanationView *)self setTitleAccessoriesEnabled:1];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKExplanationView;
  [(PKExplanationView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKExplanationView *)self _updateIconBorderColor];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKExplanationView;
  [(PKExplanationView *)&v4 traitCollectionDidChange:a3];
  self->_cachedPrivacyViewSize = *MEMORY[0x1E695F060];
  [(PKExplanationView *)self setNeedsLayout];
}

- (void)_updateTitleLabel
{
  if (self->_hideTitleText)
  {
    [(UIImageView *)self->_logoImageView removeFromSuperview];
LABEL_6:
    [(PKTrailingAccessoryLabel *)self->_titleLabel removeFromSuperview];
    goto LABEL_10;
  }

  if ([(PKExplanationView *)self _showTitleLogoImageView])
  {
    v3 = [(UIImageView *)self->_logoImageView superview];

    if (!v3)
    {
      [(UIScrollView *)self->_scrollView addSubview:self->_logoImageView];
    }

    goto LABEL_6;
  }

  v4 = [(PKTrailingAccessoryLabel *)self->_titleLabel superview];

  if (!v4)
  {
    [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  }

  [(UIImageView *)self->_logoImageView removeFromSuperview];
  [(PKExplanationView *)self setTitleLabelAttributedText];
LABEL_10:

  [(PKExplanationView *)self setNeedsLayout];
}

- (BOOL)_isBuddyiPad
{
  v2 = [(PKExplanationView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  result = PKPaymentSetupContextIsSetupAssistant();
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  return result;
}

- (id)_createBodyTextView
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DD168] pkui_plainInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setDataDetectorTypes:self->_bodyDataDetectorTypes];
  [v3 setDelegate:self];
  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  [v3 setTextContainerInset:{*MEMORY[0x1E69DDCE0], v5, v6, v7}];
  [v3 setEditable:0];
  [v3 setSelectable:1];
  [v3 setScrollingEnabled:0];
  [v3 _setInteractiveTextSelectionDisabled:1];
  [v3 setTextColor:self->_bodyTextColor];
  [v3 setContentInset:{v4, v5, v6, v7}];
  [v3 setContentInsetAdjustmentBehavior:2];
  v8 = [v3 textContainer];
  [v8 setLineFragmentPadding:0.0];

  v13 = *MEMORY[0x1E69DB650];
  if (PKPaymentSetupContextIsBridge())
  {
    BPSBridgeTintColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v9 = ;
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v3 setLinkTextAttributes:v10];

  v11 = PKOBKBodyFont();
  [v3 setFont:v11];

  [v3 setTextAlignment:self->_bodyTextAlignment];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];

  return v3;
}

- (void)_createBodyButton
{
  if (self->_bodyButtonText)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69DC628];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __38__PKExplanationView__createBodyButton__block_invoke;
    v13 = &unk_1E8010A60;
    objc_copyWeak(&v14, &location);
    v4 = [v3 actionWithHandler:&v10];
    if (self->_bodyButtonUsesLearnMoreStyle)
    {
      v5 = PKOBKLearnMoreButton(@"info.circle.fill", self->_bodyButtonText, v4);
      bodyButton = self->_bodyButton;
      self->_bodyButton = v5;
    }

    else
    {
      bodyButton = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
      v7 = [MEMORY[0x1E69DC740] pkui_plainConfigurationWithTitle:self->_bodyButtonText font:bodyButton lineBreakMode:4 textAlignment:{PKOBKTextAlignment(), v10, v11, v12, v13}];
      [v7 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
      v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v7 primaryAction:v4];
      v9 = self->_bodyButton;
      self->_bodyButton = v8;

      [(UIButton *)self->_bodyButton setConfigurationUpdateHandler:&__block_literal_global_121];
    }

    [(UIButton *)self->_bodyButton setAccessibilityIdentifier:*MEMORY[0x1E69B9568]];
    [(UIScrollView *)self->_scrollView addSubview:self->_bodyButton];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __38__PKExplanationView__createBodyButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _bodyButtonTapped];
}

void __38__PKExplanationView__createBodyButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  v3 = [v2 titleLabel];

  [v3 setNumberOfLines:2];
}

- (double)_resolvedHorizontalMargin
{
  horizontalMargin = self->_horizontalMargin;
  if (horizontalMargin != 1 && (horizontalMargin || [(UIView *)self pkui_userInterfaceIdiomSupportsLargeLayouts]&& !_UISolariumFeatureFlagEnabled()))
  {
    return 44.0;
  }

  return PKSetupViewConstantsViewMargin();
}

- (void)_updateImage
{
  p_imageView = &self->_imageView;
  [(UIImageView *)self->_imageView setImage:self->_image];
  if (self->_image)
  {
    imageStyle = self->_imageStyle;
    if (imageStyle == 1)
    {
      [*p_imageView setFrame:{0.0, 0.0, 80.0, 80.0}];
      [*p_imageView setClipsToBounds:1];
      [*p_imageView _setContinuousCornerRadius:14.0];
      v6 = [*p_imageView layer];
      [v6 setBorderWidth:0.5];

      [(PKExplanationView *)self _updateIconBorderColor];
    }

    else if (!imageStyle)
    {
      [*p_imageView sizeToFit];
      [*p_imageView setClipsToBounds:0];
      [*p_imageView _setContinuousCornerRadius:0.0];
      v5 = [*p_imageView layer];
      [v5 setBorderColor:0];
      [v5 setBorderWidth:0.0];
    }

    v7 = [*p_imageView superview];

    if (!v7)
    {
      [(UIScrollView *)self->_scrollView addSubview:*p_imageView];
    }

    p_imageView = &self->_heroView;
  }

  [*p_imageView removeFromSuperview];

  [(PKExplanationView *)self setNeedsLayout];
}

- (void)_updateIconBorderColor
{
  if (self->_imageStyle == 1)
  {
    v6[7] = v2;
    v6[8] = v3;
    v5 = [(PKExplanationView *)self traitCollection];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__PKExplanationView__updateIconBorderColor__block_invoke;
    v6[3] = &unk_1E8010970;
    v6[4] = self;
    PKUIPerformWithEffectiveTraitCollection(v5, v6);
  }
}

void __43__PKExplanationView__updateIconBorderColor__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] labelColor];
  v5 = [v2 colorWithAlphaComponent:0.13];

  v3 = [*(*(a1 + 32) + 416) layer];
  v4 = v5;
  [v3 setBorderColor:{objc_msgSend(v5, "CGColor")}];
}

- (void)_configureScrollViewBackgroundColor
{
  scrollView = self->_scrollView;
  if (self->_topBackgroundColor)
  {
    v3 = self->_scrollView;

    [(UIScrollView *)v3 setBackgroundColor:0];
  }

  else
  {
    v4 = PKProvisioningBackgroundColor();
    [(UIScrollView *)scrollView setBackgroundColor:v4];
  }
}

- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4
{
  v4 = a4;
  if (PKPaymentSetupForceBridgeAppearance() & 1) != 0 || (PKPaymentSetupContextIsBridge())
  {
    v5 = 2030;
  }

  else if ([v4 userInterfaceStyle] == 2)
  {
    v5 = 2030;
  }

  else
  {
    v5 = 2010;
  }

  return v5;
}

- (PKExplanationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)logoImageViewTargetSize
{
  width = self->_logoImageViewTargetSize.width;
  height = self->_logoImageViewTargetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end