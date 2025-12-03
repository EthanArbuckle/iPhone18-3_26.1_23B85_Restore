@interface PKPassBannerViewController
+ (id)createForTransactionWithPass:(id)pass primaryText:(id)text secondaryText:(id)secondaryText trailingViewConfiguration:(id)configuration walletForeground:(BOOL)foreground;
+ (id)createWithPass:(id)pass primaryText:(id)text secondaryText:(id)secondaryText trailingViewConfiguration:(id)configuration walletForeground:(BOOL)foreground;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (PKBannerViewControllerPresentable)presentable;
- (UIEdgeInsets)bannerContentOutsets;
- (double)_layoutContentViewWithBounds:(CGFloat)bounds commit:(CGFloat)commit;
- (double)_maximumSystemApertureWidth;
- (id)_initWithPass:(void *)pass primaryText:(void *)text secondaryText:(void *)secondaryText trailingViewConfiguration:(char)configuration walletForeground:;
- (unint64_t)presentationBehaviors;
- (void)_appeared;
- (void)_platterView;
- (void)_revoke;
- (void)_revoked;
- (void)_tapped:(id)_tapped;
- (void)_updateFonts;
- (void)dealloc;
- (void)loadView;
- (void)passBannerMinimalViewDidChangeSize:(id)size;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setPresentable:(id)presentable;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation PKPassBannerViewController

+ (id)createWithPass:(id)pass primaryText:(id)text secondaryText:(id)secondaryText trailingViewConfiguration:(id)configuration walletForeground:(BOOL)foreground
{
  configurationCopy = configuration;
  secondaryTextCopy = secondaryText;
  textCopy = text;
  passCopy = pass;
  v15 = [[PKPassBannerViewController alloc] _initWithPass:passCopy primaryText:textCopy secondaryText:secondaryTextCopy trailingViewConfiguration:configurationCopy walletForeground:foreground];

  return v15;
}

- (id)_initWithPass:(void *)pass primaryText:(void *)text secondaryText:(void *)secondaryText trailingViewConfiguration:(char)configuration walletForeground:
{
  v12 = a2;
  passCopy = pass;
  textCopy = text;
  result = secondaryText;
  v16 = result;
  if (!self)
  {
LABEL_15:

    return self;
  }

  if (v12)
  {
    v22.receiver = self;
    v22.super_class = PKPassBannerViewController;
    v17 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
    self = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 140, a2);
      v18 = [passCopy length];
      if (v18)
      {
        v19 = [passCopy copy];
      }

      else
      {
        v19 = 0;
      }

      objc_storeStrong(self + 141, v19);
      if (v18)
      {
      }

      v20 = [textCopy length];
      if (v20)
      {
        v21 = [textCopy copy];
      }

      else
      {
        v21 = 0;
      }

      objc_storeStrong(self + 142, v21);
      if (v20)
      {
      }

      objc_storeStrong(self + 143, secondaryText);
      *(self + 993) = configuration;
      self[126] = SBSIsSystemApertureAvailable();
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

+ (id)createForTransactionWithPass:(id)pass primaryText:(id)text secondaryText:(id)secondaryText trailingViewConfiguration:(id)configuration walletForeground:(BOOL)foreground
{
  configurationCopy = configuration;
  secondaryTextCopy = secondaryText;
  textCopy = text;
  passCopy = pass;
  v15 = [[PKPassBannerViewController alloc] _initWithPass:passCopy primaryText:textCopy secondaryText:secondaryTextCopy trailingViewConfiguration:configurationCopy walletForeground:foreground];

  if (v15)
  {
    *(v15 + 992) = 1;
  }

  return v15;
}

- (void)dealloc
{
  revokeTimer = self->_revokeTimer;
  if (revokeTimer)
  {
    dispatch_source_cancel(revokeTimer);
  }

  v4.receiver = self;
  v4.super_class = PKPassBannerViewController;
  [(PKPassBannerViewController *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PKPassBannerViewController;
  [(PKPassBannerViewController *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPassBannerViewController *)self traitCollection];
  if (!changeCopy || ([changeCopy preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(traitCollection, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [(PKPassBannerViewController *)self _updateFonts];
  }
}

- (void)_updateFonts
{
  v66[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    viewIfLoaded = [self viewIfLoaded];
    if (!viewIfLoaded)
    {
LABEL_52:

      return;
    }

    traitCollection = [self traitCollection];
    v4 = traitCollection;
    if (!self[126])
    {
      v5 = MEMORY[0x1E69DD1B8];
      if (!traitCollection)
      {
        v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
        if (!v4)
        {
          goto LABEL_51;
        }

        goto LABEL_7;
      }

      v62[0] = traitCollection;
      v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v62[1] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
      v8 = [v5 traitCollectionWithTraitsFromCollections:v7];

      v4 = v8;
    }

    if (!v4)
    {
LABEL_51:

      goto LABEL_52;
    }

LABEL_7:
    if (self[126])
    {
      v9 = [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:1 compatibleWithTraitCollection:v4];
      v10 = self[133];
      self[133] = v9;

      [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:3 compatibleWithTraitCollection:v4];
    }

    else
    {
      v12 = *MEMORY[0x1E69DB8D8];
      v13 = *MEMORY[0x1E69DB980];
      v14 = PKFontForDesign(v4, *MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DB980]);
      v15 = self[133];
      self[133] = v14;

      PKFontForDesign(v4, v12, *MEMORY[0x1E69DDD40], v13);
    }
    v11 = ;
    v16 = self[134];
    self[134] = v11;

    v17 = self[136];
    if (v17)
    {
      [v17 setFont:self[133]];
    }

    v18 = self[137];
    if (v18)
    {
      [v18 setFont:self[134]];
    }

    if (self[136] || self[137])
    {
      [viewIfLoaded setNeedsLayout];
    }

    if (!self[135])
    {
      goto LABEL_51;
    }

    viewIfLoaded2 = [self viewIfLoaded];
    if (!viewIfLoaded2 || !self[135])
    {
      goto LABEL_50;
    }

    v20 = self[141];
    v61 = self[142];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v22 = MEMORY[0x1E69DB600];
    v58 = v20;
    if (v20)
    {
      v23 = *MEMORY[0x1E69DB648];
      v66[0] = self[133];
      v24 = MEMORY[0x1E69DB650];
      v25 = *MEMORY[0x1E69DB650];
      v65[0] = v23;
      v65[1] = v25;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v27 = v22;
      v65[2] = *v22;
      v66[1] = labelColor;
      v66[2] = clearColor;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];

      v28 = 0x1E695D000;
    }

    else
    {
      v24 = MEMORY[0x1E69DB650];
      v27 = MEMORY[0x1E69DB600];
      v60 = 0;
      v28 = 0x1E695D000uLL;
    }

    if (v61)
    {
      v29 = *MEMORY[0x1E69DB648];
      v64[0] = self[134];
      v30 = *v24;
      v63[0] = v29;
      v63[1] = v30;
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v63[2] = *v27;
      v64[1] = secondaryLabelColor;
      v64[2] = clearColor;
      v32 = clearColor;
      v33 = [*(v28 + 3872) dictionaryWithObjects:v64 forKeys:v63 count:3];
    }

    else
    {
      v32 = clearColor;
      v33 = 0;
    }

    v34 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v35 = objc_alloc(MEMORY[0x1E696AAB0]);
    if ([viewIfLoaded2 _shouldReverseLayoutDirection])
    {
      v36 = @"⁧";
    }

    else
    {
      v36 = @"⁦";
    }

    v37 = v60;
    if (v60)
    {
      v38 = v60;
    }

    else
    {
      v38 = v33;
    }

    v39 = [v35 initWithString:v36 attributes:v38];
    [v34 appendAttributedString:v39];

    v59 = v32;
    if (v58)
    {
      v40 = objc_alloc(MEMORY[0x1E696AAB0]);
      v41 = self[141];
      if (v41)
      {
        v42 = MEMORY[0x1E696AEC0];
        v43 = v41;
        v44 = [[v42 alloc] initWithFormat:@"⁨%@⁩", v43];
      }

      else
      {
        v44 = 0;
      }

      v45 = [v40 initWithString:v44 attributes:v60];
      [v34 appendAttributedString:v45];

      if (!v61)
      {
        goto LABEL_46;
      }

      v46 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v33];
      [v34 appendAttributedString:v46];
    }

    else if (!v61)
    {
LABEL_46:
      v53 = objc_alloc(MEMORY[0x1E696AAB0]);
      if (v33)
      {
        v54 = v33;
      }

      else
      {
        v54 = v37;
      }

      v55 = [v53 initWithString:@"⁩" attributes:v54];
      [v34 appendAttributedString:v55];

      v56 = self[135];
      v57 = [v34 copy];
      [v56 setAttributedText:v57];

      [viewIfLoaded2 setNeedsLayout];
LABEL_50:

      goto LABEL_51;
    }

    v47 = objc_alloc(MEMORY[0x1E696AAB0]);
    v48 = self[142];
    if (v48)
    {
      v49 = MEMORY[0x1E696AEC0];
      v50 = v48;
      v51 = [[v49 alloc] initWithFormat:@"⁨%@⁩", v50];

      v37 = v60;
    }

    else
    {
      v51 = 0;
    }

    v52 = [v47 initWithString:v51 attributes:v33];
    [v34 appendAttributedString:v52];

    goto LABEL_46;
  }
}

- (void)loadView
{
  v30.receiver = self;
  v30.super_class = PKPassBannerViewController;
  [(PKPassBannerViewController *)&v30 loadView];
  view = [(PKPassBannerViewController *)self view];
  [view setAutoresizingMask:0];
  _platterView = [(PKPassBannerViewController *)self _platterView];
  if (_platterView)
  {
    [view addSubview:_platterView];
    customContentView = [_platterView customContentView];
  }

  else
  {
    customContentView = view;
  }

  contentView = self->_contentView;
  self->_contentView = customContentView;

  v7 = [[PKPassBannerLeadingView alloc] _initWithStyle:self->_pass pass:?];
  leadingView = self->_leadingView;
  self->_leadingView = v7;

  [(UIView *)self->_contentView addSubview:self->_leadingView];
  v9 = [[PKPassBannerTrailingView alloc] _initWithStyle:self->_trailingViewConfiguration configuration:?];
  trailingView = self->_trailingView;
  self->_trailingView = v9;

  [(UIView *)self->_contentView addSubview:self->_trailingView];
  if (self->_style == 1)
  {
    v11 = [[PKPassBannerMinimalView alloc] _initWithStyle:self->_style leadingView:self->_leadingView trailingView:self->_trailingView];
    minimalView = self->_minimalView;
    self->_minimalView = v11;

    v13 = self->_minimalView;
    if (v13)
    {
      objc_storeWeak(&v13->_delegate, self);
      v14 = self->_minimalView;
    }

    else
    {
      v14 = 0;
    }

    [(UIView *)self->_contentView addSubview:v14];
    if (self->_primaryText || self->_secondaryText)
    {
      v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      label = self->_label;
      self->_label = v15;

      [(UILabel *)self->_label setNumberOfLines:1];
      [(UILabel *)self->_label setLineBreakMode:4];
      [(UILabel *)self->_label setMarqueeEnabled:1];
      [(UIView *)self->_contentView addSubview:self->_label];
    }
  }

  else
  {
    if (self->_primaryText)
    {
      v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      primaryLabel = self->_primaryLabel;
      self->_primaryLabel = v17;

      [(UILabel *)self->_primaryLabel setNumberOfLines:1];
      [(UILabel *)self->_primaryLabel setLineBreakMode:4];
      [(UIView *)self->_contentView addSubview:self->_primaryLabel];
      [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    }

    if (self->_secondaryText)
    {
      v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      secondaryLabel = self->_secondaryLabel;
      self->_secondaryLabel = v19;

      [(UILabel *)self->_secondaryLabel setNumberOfLines:1];
      [(UILabel *)self->_secondaryLabel setLineBreakMode:4];
      [(UIView *)self->_contentView addSubview:self->_secondaryLabel];
      [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
    }
  }

  if (self->_style)
  {
    __38__PKPassBannerViewController_loadView__block_invoke(self->_leadingView);
    __38__PKPassBannerViewController_loadView__block_invoke(self->_trailingView);
    __38__PKPassBannerViewController_loadView__block_invoke(self->_minimalView);
    __38__PKPassBannerViewController_loadView__block_invoke(self->_label);
  }

  else
  {
    v21 = [_platterView visualStylingProviderForCategory:1];
    v22 = v21;
    v23 = self->_primaryLabel;
    if (v23)
    {
      [v21 automaticallyUpdateView:v23 withStyle:0];
    }

    v24 = self->_secondaryLabel;
    if (v24)
    {
      [v22 automaticallyUpdateView:v24 withStyle:1];
    }

    if (_platterView)
    {
      v25 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapped_];
      [_platterView addGestureRecognizer:v25];
      v26 = self->_trailingView;
      v27 = _platterView;
      v28 = v27;
      if (v26 && v26->_imageView && !v26->_imageColor)
      {
        v29 = [v27 visualStylingProviderForCategory:1];
        [v29 automaticallyUpdateView:v26->_imageView withStyle:0];
      }
    }
  }

  [(PKPassBannerViewController *)self _updateFonts];
}

- (void)_platterView
{
  if (self)
  {
    selfCopy = self;
    v3 = self[128];
    if (!v3)
    {
      if (self[126])
      {
        v3 = 0;
      }

      else
      {
        v4 = [MEMORY[0x1E69C4A78] platterViewWithStyle:*MEMORY[0x1E69C4A80]];
        v5 = selfCopy[128];
        selfCopy[128] = v4;

        [selfCopy[128] setMaterialGroupNameBase:@"pass-notification"];
        v3 = selfCopy[128];
      }
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

void __38__PKPassBannerViewController_loadView__block_invoke(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v1 = [v2 layer];
    [v1 setAllowsHitTesting:0];

    [v2 setUserInteractionEnabled:0];
  }
}

- (double)_layoutContentViewWithBounds:(CGFloat)bounds commit:(CGFloat)commit
{
  if (!self)
  {
    return 0.0;
  }

  v12 = *(self + 1008);
  if (v12 == 1)
  {
    v31 = *(self + 1112);
    _shouldReverseLayoutDirection = [*(self + 1032) _shouldReverseLayoutDirection];
    if (_shouldReverseLayoutDirection)
    {
      v33 = 2;
    }

    else
    {
      v33 = 0x200000000;
    }

    PKFloatRoundToPixel();
    rect_24 = v34;
    sBUISA_systemApertureObstructedAreaLayoutGuide = [*(self + 1032) SBUISA_systemApertureObstructedAreaLayoutGuide];
    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    v153 = v36;
    v158 = v37;
    v162 = v38;
    v40 = v39;

    [*(self + 1032) SBUISA_standardInteritemPadding];
    amount = v41;
    if (v31 == 4)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.5;
    }

    __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke(*(self + 1040));
    v44 = v43;
    v46 = v45;
    __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke(*(self + 1048));
    r2 = v44;
    v156 = v47;
    rect = v46;
    rect_8 = v48;
    v49 = v46 > 0.0 && v44 > 0.0;
    v50 = *(self + 1048);
    commitCopy = commit;
    v174 = a5;
    v152 = v42;
    rect_16a = a6;
    boundsCopy = bounds;
    if (v50)
    {
      LODWORD(v50) = *(v50 + 424) != 0;
    }

    v160 = v158 + v40;
    if (v47 > 0.0)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = v48 > 0.0;
    v53 = v44;
    v54 = 0.0;
    if (!v49)
    {
      v53 = 0.0;
    }

    v154 = v53;
    PKFloatRoundToPixel();
    v56 = v55;
    PKFloatRoundToPixel();
    v57 = v51 & v52;
    v58 = fmax(v56, 15.0);
    if (v57)
    {
      v54 = v156;
    }

    PKFloatRoundToPixel();
    v60 = v59;
    PKFloatRoundToPixel();
    v61 = fmax(v60, 15.0);
    v62 = v154 + v58;
    v63 = v54 + v61;
    _maximumSystemApertureWidth = v174;
    if (v31 != 4)
    {
      _maximumSystemApertureWidth = [(PKPassBannerViewController *)self _maximumSystemApertureWidth];
    }

    v65 = _maximumSystemApertureWidth - v62;
    v66 = amount;
    if (v49)
    {
      v65 = v65 - amount;
    }

    v67 = v65 - v63;
    if (v57)
    {
      v67 = v67 - amount;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_2;
    aBlock[3] = &__block_descriptor_40_e34_____CGSize_dd_BdB_16__0__UILabel_8l;
    *&aBlock[4] = v67;
    v68 = _Block_copy(aBlock);
    v195 = 0;
    memset(v194, 0, sizeof(v194));
    (v68)[2](v194);
    v69 = v195;
    v70 = *v194;
    if (v195 == 1)
    {
      PKFloatRoundToPixel();
      v71 = rect_24;
      if (!a2)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v71 = rect_24;
      if (!a2)
      {
LABEL_105:

        v141 = v66 + v62;
        if (!v49)
        {
          v141 = v62;
        }

        v142 = v141 + v70;
        if (!v69)
        {
          v142 = v141;
        }

        v143 = v66 + v142;
        if ((v57 & 1) == 0)
        {
          v143 = v142;
        }

        return fmax(v63 + v143, v162 + fmax(v62, v63) * 2.0);
      }
    }

    v150 = v62;
    if (v31 == 4)
    {
      [*(self + 1056) setAlpha:0.0];
      [*(self + 1040) setAlpha:1.0];
      [*(self + 1048) setAlpha:1.0];
    }

    v149 = v63;
    [*(self + 1080) setAlpha:(v31 == 4)];
    v91 = fmax(v153, bounds);
    v92 = v91 - bounds;
    v93 = fmax(v153 + v162, v91);
    v94 = fmax(bounds + v174, v93) - v93;
    if (_shouldReverseLayoutDirection)
    {
      boundsCopy2 = v93;
    }

    else
    {
      boundsCopy2 = bounds;
    }

    if (_shouldReverseLayoutDirection)
    {
      v96 = v94;
    }

    else
    {
      v96 = v92;
    }

    if (_shouldReverseLayoutDirection)
    {
      boundsCopy3 = bounds;
    }

    else
    {
      boundsCopy3 = v93;
    }

    if (_shouldReverseLayoutDirection)
    {
      v98 = v92;
    }

    else
    {
      v98 = v94;
    }

    v147 = boundsCopy3;
    v148 = v98;
    v189 = MEMORY[0x1E69E9820];
    v190 = 3221225472;
    v191 = __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_3;
    v192 = &__block_descriptor_64_e62__CGSize_dd_56__0_CGSize_dd_8_CGRect__CGPoint_dd__CGSize_dd__24l;
    v193.origin.x = bounds + 15.0;
    v193.origin.y = commitCopy + v71;
    v193.size.width = v174 + -30.0;
    v193.size.height = a6 - (v71 + v71);
    v99 = _Block_copy(&v189);
    v100 = v99;
    memset(&v187, 0, sizeof(v187));
    v188.origin.x = boundsCopy2;
    v188.origin.y = commitCopy;
    v188.size.width = v96;
    v188.size.height = a6;
    v151 = v70;
    if (v49)
    {
      (v99[2])(v99, r2, rect, boundsCopy2, commitCopy, v96, a6);
    }

    PKFloatRoundToPixel();
    v102 = v101;
    PKFloatRoundToPixel();
    v198.origin.x = boundsCopy2;
    v198.origin.y = commitCopy;
    v198.size.width = v96;
    v198.size.height = a6;
    CGRectDivide(v198, &v187, &v188, fmax(v102, 15.0), v33);
    PKSizeAlignedInRect();
    v107 = v103;
    v108 = v104;
    v109 = v105;
    v110 = v106;
    if (v31 == 4)
    {
      [*(self + 1040) setFrame:{v103, v104, v105, v106}];
    }

    v145 = v110;
    v146 = v109;
    recta = v107;
    v188.origin.x = v147;
    v188.origin.y = commitCopy;
    v188.size.width = v148;
    v188.size.height = a6;
    if (v57)
    {
      v100[2](v100, v156, rect_8);
    }

    PKFloatRoundToPixel();
    v112 = v111;
    PKFloatRoundToPixel();
    CGRectDivide(v188, &v187, &v188, fmax(v112, 15.0), HIDWORD(v33));
    PKSizeAlignedInRect();
    if (v31 == 4)
    {
      v121 = v114;
      v157 = v116;
      v159 = v113;
      v122 = v115;
      [*(self + 1048) setFrame:?];
      v199.origin.x = boundsCopy;
      v199.origin.y = commitCopy;
      v188.origin.x = boundsCopy;
      v188.origin.y = commitCopy;
      v199.size.width = v174;
      v188.size.width = v174;
      v188.size.height = rect_16a;
      v199.size.height = rect_16a;
      v200 = CGRectStandardize(v199);
      x = v200.origin.x;
      y = v200.origin.y;
      width = v200.size.width;
      height = v200.size.height;
      v208.origin.x = recta;
      v208.origin.y = v108;
      v208.size.height = v145;
      v208.size.width = v146;
      v201 = CGRectIntersection(v200, v208);
      v127 = v201.origin.x;
      v128 = v201.size.width;
      if (!CGRectIsNull(v201))
      {
        if (v33)
        {
          width = fmax(v127 - x, 0.0);
        }

        else
        {
          v129 = x + width;
          x = fmin(v127 + v128, x + width);
          width = v129 - x;
        }
      }

      v188.origin.x = x;
      v188.origin.y = y;
      v188.size.width = width;
      v188.size.height = height;
      if (v49)
      {
        v202.origin.x = x;
        v202.origin.y = y;
        v202.size.width = width;
        v202.size.height = height;
        CGRectDivide(v202, &v187, &v188, amount, v33);
        x = v188.origin.x;
        y = v188.origin.y;
        width = v188.size.width;
        height = v188.size.height;
      }

      v203.origin.x = x;
      v203.origin.y = y;
      v203.size.width = width;
      v203.size.height = height;
      v204 = CGRectStandardize(v203);
      v130 = v204.origin.x;
      v131 = v204.origin.y;
      v132 = v204.size.width;
      v133 = v204.size.height;
      v209.origin.x = v159;
      v209.origin.y = v121;
      v209.size.width = v122;
      v209.size.height = v157;
      v205 = CGRectIntersection(v204, v209);
      v134 = v205.origin.x;
      v135 = v205.size.width;
      if (CGRectIsNull(v205))
      {
        v66 = amount;
      }

      else
      {
        v66 = amount;
        if (_shouldReverseLayoutDirection)
        {
          v136 = v130 + v132;
          v130 = fmin(v134 + v135, v130 + v132);
          v132 = v136 - v130;
        }

        else
        {
          v132 = fmax(v134 - v130, 0.0);
        }
      }

      v188.origin.x = v130;
      v188.origin.y = v131;
      v188.size.width = v132;
      v188.size.height = v133;
      v63 = v149;
      if (v57)
      {
        v206.origin.x = v130;
        v206.origin.y = v131;
        v206.size.width = v132;
        v206.size.height = v133;
        CGRectDivide(v206, &v187, &v188, v66, HIDWORD(v33));
        v130 = v188.origin.x;
        v131 = v188.origin.y;
        v132 = v188.size.width;
        v133 = v188.size.height;
      }

      v207.origin.x = v130;
      v207.origin.y = v131;
      v207.size.width = v132;
      v207.size.height = v133;
      CGRectDivide(v207, &v187, &v188, v160, CGRectMinYEdge);
      v70 = v151;
    }

    else
    {
      PKSizeRoundToPixel();
      PKSizeAlignedInRect();
      v188.origin.x = v117;
      v188.origin.y = v118;
      v188.size.width = v119;
      v188.size.height = v120;
      v66 = amount;
      v63 = v149;
    }

    *&remainder.origin.x = MEMORY[0x1E69E9820];
    *&remainder.origin.y = 3221225472;
    *&remainder.size.width = __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_4;
    *&remainder.size.height = &unk_1E8020BF8;
    v184 = v68;
    v185 = v152;
    v186 = v31 != 4;
    v137 = _Block_copy(&remainder);
    *&slice.origin.x = MEMORY[0x1E69E9820];
    *&slice.origin.y = 3221225472;
    *&slice.size.width = __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_5;
    *&slice.size.height = &__block_descriptor_48_e71_v88__0__UILabel_8____CGSize_dd_BdB_16_CGRect__CGPoint_dd__CGSize_dd__56l;
    v182 = v33;
    v181 = v152;
    v138 = _Block_copy(&slice);
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
    v137[2](&v177, v137, *(self + 1080), v188.size.width);
    v139 = *(self + 1080);
    v140 = v138[2];
    v175[0] = v177;
    v175[1] = v178;
    v176 = v179;
    v140(v138, v139, v175, v188.origin.x, v188.origin.y, v188.size.width, v188.size.height);

    v62 = v150;
    goto LABEL_105;
  }

  if (!v12)
  {
    if ([*(self + 1032) _shouldReverseLayoutDirection])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0x200000000;
    }

    v15 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    [*(self + 1040) sizeThatFits:{*MEMORY[0x1E695F060], v14}];
    v17 = v16;
    v19 = v16 > 0.0 && v18 > 0.0;
    PKFloatRoundToPixel();
    v21 = v20;
    PKFloatRoundToPixel();
    v22 = fmax(v21, 20.0);
    [*(self + 1048) sizeThatFits:{v15, v14}];
    v25 = *(self + 1048);
    if (v25)
    {
      LOBYTE(v25) = *(v25 + 424) != 0;
    }

    if (v23 <= 0.0)
    {
      LOBYTE(v25) = 0;
    }

    v26 = v25 & (v24 > 0.0);
    v27 = v23;
    PKFloatRoundToPixel();
    v29 = v28;
    PKFloatRoundToPixel();
    memset(&slice, 0, sizeof(slice));
    v197.origin.x = bounds;
    v197.origin.y = commit;
    remainder.origin.x = bounds;
    remainder.origin.y = commit;
    v197.size.width = a5;
    v197.size.height = a6;
    remainder.size.width = a5;
    remainder.size.height = a6;
    CGRectDivide(v197, &slice, &remainder, v22, v13);
    if (v19)
    {
      v30 = 20.0;
      CGRectDivide(remainder, &slice, &remainder, v17, v13);
    }

    else
    {
      slice.origin = remainder.origin;
      slice.size.width = 0.0;
      slice.size.height = remainder.size.height;
      v30 = 20.0;
    }

    v73 = fmax(v29, v30);
    if (a2)
    {
      v74 = *(self + 1040);
      PKSizeAlignedInRect();
      [v74 setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, v73, HIDWORD(v13));
    v72 = a5;
    if (v26)
    {
      CGRectDivide(remainder, &slice, &remainder, v27, HIDWORD(v13));
      if (!a2)
      {
LABEL_49:
        if (v19)
        {
          CGRectDivide(remainder, &slice, &remainder, 16.0, v13);
          if ((v26 & 1) == 0)
          {
LABEL_52:
            v189 = MEMORY[0x1E69E9820];
            v190 = 3221225472;
            v191 = __72__PKPassBannerViewController__layoutLegacyContentViewWithBounds_commit___block_invoke;
            v192 = &__block_descriptor_64_e27__CGSize_dd_16__0__UILabel_8l;
            v193 = remainder;
            v76 = _Block_copy(&v189);
            v77 = v76[2](v76, *(self + 1088));
            v79 = v78;
            v80 = v76[2](v76, *(self + 1096));
            v82 = v81;
            v83 = v80 > 0.0 && v81 > 0.0;
            PKSizeAlignedInRect();
            remainder.origin.x = v84;
            remainder.origin.y = v85;
            remainder.size.width = v86;
            remainder.size.height = v87;
            if (v83)
            {
              CGRectDivide(*&v84, &slice, &remainder, v82, CGRectMinYEdge);
            }

            else
            {
              slice.origin = remainder.origin;
              slice.size.width = v86;
              slice.size.height = 0.0;
            }

            v88 = v77 > 0.0 && v79 > 0.0 && v83;
            if (a2)
            {
              v89 = *(self + 1096);
              PKSizeAlignedInRect();
              [v89 setFrame:?];
              if (!v88)
              {
LABEL_59:
                if (v77 > 0.0 && v79 > 0.0)
                {
                  goto LABEL_60;
                }

                goto LABEL_64;
              }
            }

            else if (v77 <= 0.0 || v79 <= 0.0 || !v83)
            {
              goto LABEL_59;
            }

            CGRectDivide(remainder, &slice, &remainder, 0.0, CGRectMinYEdge);
            if (v77 > 0.0 && v79 > 0.0)
            {
LABEL_60:
              CGRectDivide(remainder, &slice, &remainder, v79, CGRectMinYEdge);
              if (!a2)
              {
                goto LABEL_66;
              }

              goto LABEL_65;
            }

LABEL_64:
            slice.origin = remainder.origin;
            slice.size.width = remainder.size.width;
            slice.size.height = 0.0;
            if (!a2)
            {
LABEL_66:

              return v72;
            }

LABEL_65:
            v90 = *(self + 1088);
            PKSizeAlignedInRect();
            [v90 setFrame:?];
            goto LABEL_66;
          }
        }

        else if ((v26 & 1) == 0)
        {
          goto LABEL_52;
        }

        CGRectDivide(remainder, &slice, &remainder, 8.0, HIDWORD(v13));
        goto LABEL_52;
      }
    }

    else
    {
      slice.origin = remainder.origin;
      slice.size.width = 0.0;
      slice.size.height = remainder.size.height;
      if (!a2)
      {
        goto LABEL_49;
      }
    }

    v75 = *(self + 1048);
    PKSizeAlignedInRect();
    [v75 setFrame:?];
    goto LABEL_49;
  }

  return *MEMORY[0x1E695F060];
}

void *__72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke(void *result)
{
  if (result)
  {
    [result sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    return PKSizeRoundToPixel();
  }

  return result;
}

- (double)_maximumSystemApertureWidth
{
  if (!self)
  {
    return 0.0;
  }

  if (self[126] != 1)
  {
    __break(1u);
    return 0.0;
  }

  viewIfLoaded = [self viewIfLoaded];
  v2 = viewIfLoaded;
  if (viewIfLoaded && ([viewIfLoaded window], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
  }

  else
  {
    v6 = 1.79769313e308;
  }

  return v6;
}

void __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_2(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (v5)
  {
    v23 = v5;
    [v5 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v8 = v6;
    v9 = fmin(v6, *(a1 + 32));
    if (v9 <= 0.0 || (v10 = v7, v7 <= 0.0))
    {
      v22 = 0;
      *a3 = *MEMORY[0x1E695F060];
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v5 = v23;
    }

    else
    {
      v11 = v9 < v6;
      [v23 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v23 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v8, v10}];
      [v23 _tightBoundingRectOfFirstLine];
      v21 = v20;
      [v23 setBounds:{v13, v15, v17, v19}];
      v5 = v23;
      *a3 = v9;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      *(a3 + 24) = -v21;
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
    *a3 = *MEMORY[0x1E695F060];
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  *(a3 + 32) = v22;
}

uint64_t __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_3(CGRect *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9.origin.x = a4;
  v9.origin.y = a5;
  v9.size.width = a6;
  v9.size.height = a7;
  v10 = CGRectIntersection(v9, a1[1]);
  CGRectIsNull(v10);

  return PKSizeAspectFit();
}

void *__72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float64_t a4@<D0>)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  result = (*(*(a1 + 32) + 16))(&v15);
  if (a2 && (v17 & 1) != 0)
  {
    v9 = *(a1 + 40);
    v15 = vmulq_n_f64(v15, v9);
    *(&v16 + 1) = v9 * *(&v16 + 1);
    if (v15.f64[0] > a4)
    {
      v15.f64[0] = a4;
      LOBYTE(v16) = 1;
    }

    PKSizeRoundToPixel();
    v15.f64[0] = v10;
    v15.f64[1] = v11;
    result = PKFloatRoundToPixel();
    *(&v16 + 1) = v12;
    if (v16 == 1)
    {
      v13 = *(a1 + 48) ^ 1;
    }

    else
    {
      v13 = 0;
    }

    LOBYTE(v16) = v13 & 1;
    *(a3 + 32) = v17;
    v14 = v16;
    *a3 = v15;
    *(a3 + 16) = v14;
  }

  else
  {
    *a3 = *MEMORY[0x1E695F060];
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  return result;
}

void __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_5(uint64_t a1, void *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  remainder.origin.x = a4;
  remainder.origin.y = a5;
  remainder.size.width = a6;
  remainder.size.height = a7;
  v13 = a2;
  memset(&slice, 0, sizeof(slice));
  v29.origin.x = a4;
  v29.origin.y = a5;
  v29.size.width = a6;
  v29.size.height = a7;
  CGRectDivide(v29, &slice, &remainder, *a3, *(a1 + 40));
  v14 = slice.size.height - (a3[3] + 0.0);
  v15.f64[0] = 0.0;
  v15.f64[1] = a3[3];
  slice.origin = vaddq_f64(slice.origin, v15);
  slice.size.height = v14;
  CATransform3DMakeScale(&v26, *(a1 + 32), *(a1 + 32), 1.0);
  [v13 setTransform3D:&v26];
  [v13 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), *a3, a3[1]}];
  PKSizeAlignedInRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v13 anchorPoint];
  [v13 setCenter:{v17 + v24 * v21, v19 + v25 * v23}];
  if ([v13 marqueeRunning] != *(a3 + 16))
  {
    [v13 setMarqueeRunning:?];
  }
}

double __72__PKPassBannerViewController__layoutLegacyContentViewWithBounds_commit___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return *MEMORY[0x1E695F060];
  }

  [a2 sizeThatFits:{*(a1 + 48), *(a1 + 56)}];
  return fmin(v3, *(a1 + 48));
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKPassBannerViewController;
  [(PKPassBannerViewController *)&v15 viewWillLayoutSubviews];
  view = [(PKPassBannerViewController *)self view];
  [(UIView *)view bounds];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  platter = self->_platter;
  if (platter)
  {
    [(PLPlatterView *)platter setFrame:v4, v5, v6, v7];
  }

  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  if (view == self->_contentView)
  {
    v13 = v8;
    v14 = v9;
  }

  [(PKPassBannerViewController *)self _layoutContentViewWithBounds:v13 commit:v14, v10, v11];
}

void __47__PKPassBannerViewController__startRevokeTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PKPassBannerViewController *)WeakRetained _revoke];
    WeakRetained = v2;
  }
}

- (void)_revoke
{
  if (self && (*(self + 995) & 1) == 0)
  {
    [(PKPassBannerViewController *)self _revoked];
    WeakRetained = objc_loadWeakRetained((self + 1104));
    [WeakRetained revoke];
  }
}

- (void)_revoked
{
  if (self)
  {
    if ((*(self + 995) & 1) == 0)
    {
      *(self + 995) = 1;
      v2 = *(self + 1000);
      if (v2)
      {
        dispatch_source_cancel(v2);
        v3 = *(self + 1000);
        *(self + 1000) = 0;
      }
    }
  }
}

- (void)_appeared
{
  if (self)
  {
    if ((*(self + 994) & 1) == 0)
    {
      *(self + 994) = 1;
      if ((*(self + 995) & 1) == 0)
      {
        if (*(self + 992) == 1)
        {
          v2 = 1394;
          if ([*(self + 1120) passType] == 1)
          {
            if ([*(self + 1120) isAccessPass])
            {
              v2 = 1163;
            }

            else
            {
              v2 = 1394;
            }
          }
        }

        else
        {
          v2 = 1400;
        }

        AudioServicesPlaySystemSound(v2);
      }
    }
  }
}

- (void)_tapped:(id)_tapped
{
  passURL = [(PKPass *)self->_pass passURL];
  if (passURL)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E699F918]];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F970]];
    [v4 setObject:passURL forKeyedSubscript:*MEMORY[0x1E699F960]];
    v5 = *MEMORY[0x1E69BC3D8];
    v6 = [MEMORY[0x1E699FB70] optionsWithDictionary:v4];
    PKOpenApplication(v5, v6);
  }

  [(PKPassBannerViewController *)self _revoke];
}

void __57__PKPassBannerViewController__updatePreferredContentSize__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (WeakRetained[995] & 1) == 0)
  {
    v4 = WeakRetained;
    [WeakRetained loadViewIfNeeded];
    v3 = [(PKPassBannerViewController *)*(a1 + 32) _maximumSystemApertureWidth];
    [v4 setPreferredContentSize:{-[PKPassBannerViewController _layoutContentViewWithBounds:commit:](v4, 0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v3, 1.79769313e308)}];
    WeakRetained = v4;
    v4[1016] = 0;
  }
}

- (void)setPresentable:(id)presentable
{
  presentableCopy = presentable;
  objc_storeWeak(&self->_presentable, presentableCopy);
  v4 = presentableCopy;
  if (presentableCopy && self->_revoked)
  {
    [presentableCopy revoke];
    v4 = presentableCopy;
  }
}

- (UIEdgeInsets)bannerContentOutsets
{
  _platterView = [(PKPassBannerViewController *)self _platterView];
  v3 = _platterView;
  if (_platterView)
  {
    [_platterView shadowOutsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  if (self->_style)
  {

    [(PKPassBannerViewController *)self preferredContentSize:size.width];
  }

  else
  {
    height = size.height;
    width = size.width;
    [(PKPassBannerViewController *)self loadViewIfNeeded:size.width];
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);

    height = [(PKPassBannerViewController *)self _layoutContentViewWithBounds:v9 commit:v10, width, height];
  }

  result.height = v6;
  result.width = height;
  return result;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  if (!self->_style)
  {
    MEMORY[0x1EEE42668]();
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  if (!self->_style)
  {
    location[5] = v3;
    v16 = v4;
    if (!self->_revoked)
    {
      revokeTimer = self->_revokeTimer;
      if (revokeTimer)
      {
        dispatch_source_cancel(revokeTimer);
        v7 = self->_revokeTimer;
        self->_revokeTimer = 0;
      }

      objc_initWeak(location, self);
      v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v9 = self->_revokeTimer;
      self->_revokeTimer = v8;

      v10 = self->_revokeTimer;
      v11 = dispatch_time(0, 6000000000);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v12 = self->_revokeTimer;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __47__PKPassBannerViewController__startRevokeTimer__block_invoke;
      v13[3] = &unk_1E8010998;
      objc_copyWeak(&v14, location);
      dispatch_source_set_event_handler(v12, v13);
      dispatch_resume(self->_revokeTimer);
      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }

    [(PKPassBannerViewController *)self _appeared];
  }
}

- (unint64_t)presentationBehaviors
{
  if (self->_walletForeground)
  {
    return 74;
  }

  else
  {
    return 72;
  }
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  if (self->_activeLayoutMode != mode)
  {
    viewIfLoaded = [(PKPassBannerViewController *)self viewIfLoaded];
    v7 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      viewIfLoaded = v7;
    }

    self->_activeLayoutMode = mode;
    if (mode == 4)
    {
      if (self->_style != 1)
      {
        __break(1u);
        return;
      }

      if (!self->_updatingPreferredContentSize)
      {
        self->_updatingPreferredContentSize = 1;
        objc_initWeak(&location, self);
        systemApertureElementContext = [(PKPassBannerViewController *)self systemApertureElementContext];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __57__PKPassBannerViewController__updatePreferredContentSize__block_invoke;
        v8[3] = &unk_1E80110E0;
        objc_copyWeak(&v9, &location);
        v8[4] = self;
        [systemApertureElementContext setElementNeedsUpdateWithCoordinatedAnimations:v8];

        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
        viewIfLoaded = v7;
      }
    }

    if (viewIfLoaded)
    {
      [v7 setNeedsLayout];
      viewIfLoaded = v7;
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  if (!self->_revoked && !self->_appeared)
  {
    minimalView = self->_minimalView;
    [(UIView *)self->_contentView SBUISA_standardInteritemPadding];
    [(PKPassBannerMinimalView *)minimalView _setInteritemPadding:?];

    [(PKPassBannerViewController *)self _appeared];
  }
}

- (void)passBannerMinimalViewDidChangeSize:(id)size
{
  sizeCopy = size;
  if (self->_style == 1 && self->_activeLayoutMode != 4)
  {
    v6 = sizeCopy;
    systemApertureElementContext = [(PKPassBannerViewController *)self systemApertureElementContext];
    [systemApertureElementContext setElementNeedsUpdate];

    sizeCopy = v6;
  }
}

- (PKBannerViewControllerPresentable)presentable
{
  WeakRetained = objc_loadWeakRetained(&self->_presentable);

  return WeakRetained;
}

@end