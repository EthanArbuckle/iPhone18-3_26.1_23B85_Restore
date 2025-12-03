@interface PKExpressTransactionBannerViewController
- (PKBannerViewControllerPresentable)presentable;
- (int64_t)preferredCustomLayout;
- (void)_cancelRevokeTimer;
- (void)_displayResolution;
- (void)_revoked;
- (void)_startRevokeTimer;
- (void)_updateBalanceContent;
- (void)_updatePreferredContentSize;
- (void)dealloc;
- (void)expressLabelViewDidChangeSize:(id)size;
- (void)expressTrailingView:(id)view revealingCheckmarkAnimated:(BOOL)animated;
- (void)loadView;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setBannerDetached:(BOOL)detached;
- (void)setPresentable:(id)presentable;
- (void)setState:(id)state;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation PKExpressTransactionBannerViewController

void __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:a1[5]];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = a1[6];

  dispatch_group_leave(v6);
}

void __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[125] setTransitProperties:*(*(*(a1 + 32) + 8) + 40)];
    [v3[125] setDynamicBalances:*(*(*(a1 + 40) + 8) + 40)];
    [(PKExpressTransactionBannerViewController *)v3 _updateBalanceContent];
    WeakRetained = v3;
  }
}

- (void)_updateBalanceContent
{
  if (!self || ![self isViewLoaded])
  {
    return;
  }

  v2 = self[129];
  v3 = self[125];
  if (v3)
  {
    displayableBalances = [v3 displayableBalances];
    v5 = displayableBalances;
    if (displayableBalances && [displayableBalances count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      formattedValue = [v6 formattedValue];
    }

    else
    {
      formattedValue = 0;
    }
  }

  else
  {
    formattedValue = 0;
  }

  v14 = formattedValue;
  if (v2)
  {
    v8 = *(v2 + 416);
    v9 = v14;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (v9 && v8)
      {
        v11 = [v8 isEqualToString:v9];

        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v12 = [v10 copy];
      v13 = *(v2 + 416);
      *(v2 + 416) = v12;

      [PKExpressBannerLabelView _updateLabelAnimated:v2];
    }
  }

LABEL_20:
}

- (void)dealloc
{
  transitionTimer = self->_transitionTimer;
  if (transitionTimer)
  {
    dispatch_source_cancel(transitionTimer);
  }

  revokeTimer = self->_revokeTimer;
  if (revokeTimer)
  {
    dispatch_source_cancel(revokeTimer);
  }

  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v5.receiver = self;
  v5.super_class = PKExpressTransactionBannerViewController;
  [(PKExpressTransactionBannerViewController *)&v5 dealloc];
}

- (void)loadView
{
  v105 = *MEMORY[0x1E69E9840];
  v92.receiver = self;
  v92.super_class = PKExpressTransactionBannerViewController;
  [(PKExpressTransactionBannerViewController *)&v92 loadView];
  view = [(PKExpressTransactionBannerViewController *)self view];
  [view setOpaque:0];
  [view setAutoresizingMask:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  containerView = self->_containerView;
  self->_containerView = v5;

  [(UIView *)self->_containerView setOpaque:0];
  v7 = self->_containerView;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)v7 setBackgroundColor:clearColor2];

  v9 = [PKExpressBannerLeadingView alloc];
  pass = self->_pass;
  v11 = pass;
  v12 = v11;
  if (!v9)
  {
    goto LABEL_51;
  }

  if (!v11)
  {
    goto LABEL_50;
  }

  v13 = PKPassKitUIBundle();
  v14 = [v13 URLForResource:@"aperture_express_leading-D73" withExtension:@"ca"];

  if (!v14)
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v96.receiver) = 0;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKExpressBannerLeadingView: could not find archive.", &v96, 2u);
    }

    v46 = 0;
    goto LABEL_30;
  }

  v15 = *MEMORY[0x1E6979EF8];
  v93.receiver = 0;
  v16 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v14 type:v15 options:0 error:&v93];
  v17 = v93.receiver;
  if (!v16)
  {
    rootLayer = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(rootLayer, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v96.receiver) = 138412290;
      *(&v96.receiver + 4) = v17;
      _os_log_impl(&dword_1BD026000, rootLayer, OS_LOG_TYPE_DEFAULT, "PKExpressBannerLeadingView: could not load archive - %@.", &v96, 0xCu);
    }

    v46 = 0;
    goto LABEL_29;
  }

  rootLayer = [v16 rootLayer];
  if (rootLayer)
  {
    isGeometryFlipped = [v16 isGeometryFlipped];
    [rootLayer setGeometryFlipped:?];
    v19 = [v16 publishedObjectWithName:@"cardfront"];
    if (v19)
    {
      v20 = v19;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        obj = v20;
        v96.receiver = v9;
        v96.super_class = PKExpressBannerLeadingView;
        v21 = [(PKExpressTransactionBannerViewController *)&v96 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v22 = v21;
        if (v21)
        {
          v88 = rootLayer;
          objc_storeStrong(&v21->super._accessibilityHUD, rootLayer);
          v86 = *(v22 + 432);
          v23 = PKLayerNullActions();
          [v86 setActions:v23];

          objc_storeStrong((v22 + 440), v20);
          objc_storeStrong((v22 + 408), pass);
          v24 = [[PKPassThumbnailView alloc] initWithPass:0 suppressedContent:0 rendererState:2 options:?];
          v25 = *(v22 + 416);
          *(v22 + 416) = v24;

          v26 = *(v22 + 416);
          if (v26)
          {
            if ((*(v26 + 458) & 1) == 0)
            {
              *(v26 + 458) = 1;
              v27 = *(v26 + 432);
              if (v27)
              {
                [v27 setModallyPresented:*(v26 + 458)];
              }
            }
          }

          [(PKPassThumbnailView *)*(v22 + 416) setBrighten:?];
          [(PKPassThumbnailView *)*(v22 + 416) setShadowVisibility:?];
          [v22 addSubview:*(v22 + 416)];
          layer = [v22 layer];
          [layer addSublayer:*(v22 + 432)];
          layer2 = [*(v22 + 416) layer];
          layer3 = [MEMORY[0x1E6979408] layer];
          v30 = *(v22 + 424);
          *(v22 + 424) = layer3;

          [*(v22 + 424) setSourceLayer:layer2];
          [*(v22 + 424) setHidesSourceLayer:1];
          [*(v22 + 424) setGeometryFlipped:isGeometryFlipped];
          [*(v22 + 440) addSublayer:*(v22 + 424)];
          [*(v22 + 440) bounds];
          [*(v22 + 416) sizeThatFits:{v31, 1.79769313e308}];
          PKSizeAlignedInRect();
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          [*(v22 + 416) setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          [*(v22 + 424) setFrame:{v33, v35, v37, v39}];
          v40 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:*(v22 + 432)];
          v41 = *(v22 + 448);
          *(v22 + 448) = v40;

          [*(v22 + 448) setInitialStatesOfLayer:*(v22 + 432)];
          *(v22 + 456) = 0;
          *(v22 + 460) = 0;
          [*(v22 + 432) bounds];
          *(v22 + 480) = v42;
          *(v22 + 488) = v43;
          *(v22 + 496) = vaddq_f64(*(v22 + 480), vdupq_n_s64(0xC051000000000000));
          *(v22 + 512) = *(v22 + 480);
          *(v22 + 528) = *(v22 + 496);
          *(v22 + 544) = ArchiveAlignmentInsets;
          *(v22 + 560) = unk_1BE117000;
          [layer anchorPoint];
          v45.f64[1] = v44;
          [*(v22 + 432) setAnchorPoint:{vdivq_f64(vmlaq_f64(xmmword_1BE116FD0, *(v22 + 496), v45), *(v22 + 480))}];
          [(PKExpressBannerLeadingView *)v22 _updateSizeWithAnimationFactory:?];

          rootLayer = v88;
        }

        v9 = v22;
        v46 = v9;
        v47 = obj;
        goto LABEL_28;
      }
    }

    v47 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v96.receiver) = 0;
      v48 = "PKExpressBannerLeadingView: missing card front.";
      goto LABEL_26;
    }
  }

  else
  {
    v47 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v96.receiver) = 0;
      v48 = "PKExpressBannerLeadingView: archive has no content.";
LABEL_26:
      _os_log_impl(&dword_1BD026000, v47, OS_LOG_TYPE_DEFAULT, v48, &v96, 2u);
    }
  }

  v46 = 0;
LABEL_28:

LABEL_29:
LABEL_30:

  while (1)
  {

    leadingView = self->_leadingView;
    self->_leadingView = v46;

    v50 = [PKExpressBannerTrailingView alloc];
    v91 = view;
    if (v50)
    {
      v93.receiver = v50;
      v93.super_class = PKExpressBannerTrailingView;
      v51 = *MEMORY[0x1E695F058];
      v52 = *(MEMORY[0x1E695F058] + 8);
      v53 = *(MEMORY[0x1E695F058] + 16);
      v54 = *(MEMORY[0x1E695F058] + 24);
      v55 = [(PKExpressTransactionBannerViewController *)&v93 initWithFrame:*MEMORY[0x1E695F058], v52, v53, v54];
      v56 = v55;
      if (v55)
      {
        LODWORD(v55->super._frozenTraitCollection) = 0;
        v57 = [PKExpressGlyphView alloc];
        if (v57)
        {
          v96.receiver = v57;
          v96.super_class = PKExpressGlyphView;
          v58 = [(PKExpressTransactionBannerViewController *)&v96 initWithFrame:v51, v52, v53, v54];
          v59 = v58;
          if (v58)
          {
            v58->super._traitChangeRegistry = 0x4047000000000000;
            v60 = [objc_alloc(MEMORY[0x1E69BC758]) initWithStyle:7];
            v61 = *(v59 + 432);
            *(v59 + 432) = v60;

            [*(v59 + 432) setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), *(v59 + 424), *(v59 + 424)}];
            [*(v59 + 432) setDelegate:v59];
            [v59 addSubview:*(v59 + 432)];
            *(v59 + 408) = 0;
            [(PKExpressGlyphView *)v59 _updateGlyphViewAnimated:?];
          }
        }

        else
        {
          v59 = 0;
        }

        glyphView = v56->_glyphView;
        v56->_glyphView = v59;

        [(PKExpressBannerTrailingView *)v56 addSubview:v56->_glyphView];
        v63 = v56->_glyphView;
        if (v63)
        {
          objc_storeWeak(&v63->_delegate, v56);
        }

        [(PKExpressBannerTrailingView *)v56 _updateStateAnimated:0.0 withDelay:?];
        layer4 = [(PKExpressBannerTrailingView *)v56 layer];
        v65 = *(MEMORY[0x1E69792E8] + 48);
        v98 = *(MEMORY[0x1E69792E8] + 32);
        v99 = v65;
        v100 = *(MEMORY[0x1E69792E8] + 64);
        v66 = *(MEMORY[0x1E69792E8] + 80);
        v67 = *(MEMORY[0x1E69792E8] + 16);
        v96 = *MEMORY[0x1E69792E8];
        v97 = v67;
        v101 = v66;
        v102 = 0xBF739354D8AD2CBELL;
        v68 = *(MEMORY[0x1E69792E8] + 112);
        v103 = *(MEMORY[0x1E69792E8] + 96);
        v104 = v68;
        [layer4 setSublayerTransform:&v96];
      }
    }

    else
    {
      v56 = 0;
    }

    view = &OBJC_IVAR___PKExpressTransactionBannerViewController__trailingView;
    trailingView = self->_trailingView;
    self->_trailingView = v56;

    layer5 = [(PKExpressBannerTrailingView *)self->_trailingView layer];
    v71 = objc_alloc(MEMORY[0x1E6979378]);
    v12 = *MEMORY[0x1E6979928];
    v72 = [v71 initWithType:*MEMORY[0x1E6979928]];
    [v72 setName:@"blur"];
    v95 = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
    [layer5 setFilters:v73];

    self->_trailingBlur = 0.0;
    v74 = [PKExpressBannerLabelView alloc];
    if (!v74)
    {
      break;
    }

    v96.receiver = v74;
    v96.super_class = PKExpressBannerLabelView;
    v75 = [(PKExpressTransactionBannerViewController *)&v96 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v76 = v75;
    if (!v75)
    {
      goto LABEL_43;
    }

    LODWORD(v75->super._frozenTraitCollection) = 0;
    frozenTraitCollection_low = LODWORD(v75->super._frozenTraitCollection);
    if (frozenTraitCollection_low < 4)
    {
      [(PKExpressTransactionBannerViewController *)v75 setAnchorPoint:dbl_1BE1170B8[frozenTraitCollection_low], dbl_1BE117098[frozenTraitCollection_low]];
      goto LABEL_43;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v46 = 0;
  }

  v76 = 0;
LABEL_43:
  trailingLabel = self->_trailingLabel;
  self->_trailingLabel = v76;

  layer6 = [(PKExpressBannerLabelView *)self->_trailingLabel layer];
  v80 = [objc_alloc(MEMORY[0x1E6979378]) initWithType:v12];
  [v80 setName:@"blur"];
  v94 = v80;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
  [layer6 setFilters:v81];

  self->_trailingLabelBlur = 0.0;
  [(PKExpressBannerLabelView *)self->_trailingLabel setHidden:1];
  [(PKExpressBannerLabelView *)self->_trailingLabel setAlpha:0.0];
  layer7 = [(UIView *)self->_containerView layer];
  [layer7 setAllowsHitTesting:0];

  [(UIView *)self->_containerView setUserInteractionEnabled:0];
  v83 = self->_leadingView;
  if (v83)
  {
    objc_storeWeak(&v83->_delegate, self);
  }

  v84 = self->_trailingView;
  if (v84)
  {
    objc_storeWeak(&v84->_delegate, self);
  }

  v85 = self->_trailingLabel;
  if (v85)
  {
    objc_storeWeak(&v85->_delegate, self);
  }

  [v91 addSubview:self->_containerView];
  [(UIView *)self->_containerView addSubview:self->_trailingLabel];
  [(UIView *)self->_containerView addSubview:self->_trailingView];
  [(UIView *)self->_containerView addSubview:self->_leadingView];
  [(PKExpressTransactionBannerViewController *)self _updateBalanceContent];
}

- (void)viewWillLayoutSubviews
{
  v138 = *MEMORY[0x1E69E9840];
  v127.receiver = self;
  v127.super_class = PKExpressTransactionBannerViewController;
  [(PKExpressTransactionBannerViewController *)&v127 viewWillLayoutSubviews];
  activeLayoutMode = self->_activeLayoutMode;
  if (activeLayoutMode == 4 || activeLayoutMode == 1)
  {
    view = [(PKExpressTransactionBannerViewController *)self view];
    _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sBUISA_systemApertureObstructedAreaLayoutGuide = [view SBUISA_systemApertureObstructedAreaLayoutGuide];
    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    containerView = self->_containerView;
    PKSizeAlignedInRect();
    [(UIView *)containerView setFrame:?];
    [(UIView *)self->_containerView convertRect:view fromView:v7, v9, v11, v13];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [(UIView *)self->_containerView convertRect:view fromView:v16, v18, v20, v22];
    v91 = v33;
    v92 = v32;
    v35 = v34;
    v37 = v36;

    if ((self->_state - 3) <= 2)
    {
      PKSizeAlignedInRect();
      v25 = v38;
      v27 = v39;
      v29 = v40;
      v31 = v41;
    }

    if (self->_transitioning)
    {
      _isInAnimationBlockWithAnimationsEnabled = 1;
    }

    else
    {
      _isInAnimationBlockWithAnimationsEnabled = [MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled];
    }

    v43 = 2;
    if (!_shouldReverseLayoutDirection)
    {
      v43 = 0x200000000;
    }

    v44 = fmax(v35, v25);
    v45 = v44 - v25;
    v46 = fmax(v35 + v37, v44);
    v47 = fmax(v25 + v29, v46) - v46;
    if (_shouldReverseLayoutDirection)
    {
      v48 = v46;
    }

    else
    {
      v48 = v25;
    }

    if (_shouldReverseLayoutDirection)
    {
      v49 = v47;
    }

    else
    {
      v49 = v45;
    }

    v87 = v48;
    v88 = v49;
    if (_shouldReverseLayoutDirection)
    {
      v50 = v25;
    }

    else
    {
      v50 = v46;
    }

    if (_shouldReverseLayoutDirection)
    {
      v51 = v45;
    }

    else
    {
      v51 = v47;
    }

    v89 = v50;
    v90 = v51;
    state = self->_state;
    if (state < 0xA)
    {
      v86 = v43;
      LODWORD(v83) = state == 9;
      HIDWORD(v83) = state != 0;
      v84 = self->_activeLayoutMode > 1uLL;
      v85 = _isInAnimationBlockWithAnimationsEnabled;
      if (_isInAnimationBlockWithAnimationsEnabled)
      {
        v93 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
        v56 = self->_state;
        if ((v56 - 3) >= 4)
        {
          if (v56 == 9)
          {
            [v93 setSpeed:0.85];
          }
        }

        else
        {
          LODWORD(v53) = 1049830265;
          LODWORD(v54) = *"ŏ)?-&v?";
          LODWORD(v55) = *"-&v?";
          v57 = [MEMORY[0x1E69793D0] functionWithControlPoints:v53 :0.0 :v54 :v55];
          [v93 setTiming:v57 withDynamicDurationProvider:&__block_literal_global_246];
        }

        v58 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
        v60 = self->_state;
        if (v60 - 3 > 3)
        {
          v59 = 0;
        }

        else
        {
          v59 = [v93 copy];
          [v59 setSpeed:1.176];
          v60 = self->_state;
        }
      }

      else
      {
        v93 = 0;
        v58 = 0;
        v59 = 0;
        v60 = self->_state;
      }

      leadingView = self->_leadingView;
      if (v60 > 2)
      {
        v62 = 2;
      }

      else
      {
        v62 = dword_1BE117088[v60];
      }

      if (v59)
      {
        v63 = v59;
      }

      else
      {
        v63 = v58;
      }

      v64 = v63;
      if (leadingView && leadingView->_sizeClass != v62)
      {
        leadingView->_sizeClass = v62;
        [(PKExpressBannerLeadingView *)leadingView _updateSizeWithAnimationFactory:v64];
      }

      trailingLabel = self->_trailingLabel;
      if (_shouldReverseLayoutDirection)
      {
        v66 = 0;
      }

      else
      {
        v66 = 2;
      }

      if (trailingLabel && trailingLabel->_alignmentEdge != v66)
      {
        trailingLabel->_alignmentEdge = v66;
        alignmentEdge = trailingLabel->_alignmentEdge;
        if (alignmentEdge >= 4)
        {
          goto LABEL_66;
        }

        v68 = dbl_1BE117098[alignmentEdge];
        v69 = dbl_1BE1170B8[alignmentEdge];
        [(UILabel *)trailingLabel->_label setAnchorPoint:v69, v68];
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v70 = trailingLabel->_obsoleteLabels;
        v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v128 objects:&v132 count:16];
        if (v71)
        {
          v72 = *v129;
          do
          {
            for (i = 0; i != v71; ++i)
            {
              if (*v129 != v72)
              {
                objc_enumerationMutation(v70);
              }

              [*(*(&v128 + 1) + 8 * i) setAnchorPoint:{v69, v68, v83}];
            }

            v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v128 objects:&v132 count:16];
          }

          while (v71);
        }

        [(PKExpressBannerLabelView *)trailingLabel setAnchorPoint:v69, v68];
        [(PKExpressBannerLabelView *)trailingLabel setNeedsLayout];
      }

      trailingView = self->_trailingView;
      v75 = 0.0;
      if (self->_transitioning)
      {
        v75 = 0.28;
        if (self->_state != 3)
        {
          v75 = 0.0;
        }
      }

      if (trailingView)
      {
        if (trailingView->_state != ((0x3F8u >> state) & 1))
        {
          trailingView->_state = (0x3F8u >> state) & 1;
          [(PKExpressBannerTrailingView *)trailingView _updateStateAnimated:v75 withDelay:?];
        }
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_4;
      aBlock[3] = &unk_1E8025BA0;
      aBlock[4] = self;
      v76 = _Block_copy(aBlock);
      v132 = 0;
      v133 = &v132;
      v134 = 0x4010000000;
      v135 = &unk_1BE347799;
      v77 = *(MEMORY[0x1E695F050] + 16);
      v136 = *MEMORY[0x1E695F050];
      v137 = v77;
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_5;
      v95[3] = &unk_1E8025C68;
      v78 = v76;
      v100 = v78;
      v79 = v59;
      v96 = v79;
      v80 = v58;
      v120 = v85;
      v121 = BYTE4(v83);
      v122 = v84;
      v123 = (0x3F8u >> state) & 1;
      v97 = v80;
      selfCopy = self;
      v124 = v83;
      v102 = v35;
      v103 = v92;
      v104 = v37;
      v105 = v91;
      v106 = v25;
      v107 = v27;
      v108 = v29;
      v109 = v31;
      v125 = _shouldReverseLayoutDirection;
      v110 = v87;
      v111 = v27;
      v112 = v88;
      v113 = v31;
      v114 = v89;
      v115 = v27;
      v116 = v90;
      v117 = v31;
      v118 = v86;
      v119 = v86;
      v101 = &v132;
      v81 = v93;
      v99 = v81;
      v82 = _Block_copy(v95);
      v82[2](v82, 0);
      v82[2](v82, 1);
      if (!CGRectIsNull(v133[1]))
      {
        v82[2](v82, 2);

        _Block_object_dispose(&v132, 8);
        return;
      }
    }

LABEL_66:
    __break(1u);
  }
}

void *__66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_4(void *result, unsigned int a2)
{
  if (a2 < 3)
  {
    return *(result[4] + *off_1E8025D68[a2]);
  }

  __break(1u);
  return result;
}

void __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_5(uint64_t a1, unsigned int a2)
{
  v4 = (*(*(a1 + 64) + 16))();
  v5 = [v4 layer];
  if (a2 || (v6 = *(a1 + 32)) == 0)
  {
    v6 = *(a1 + 40);
  }

  v7 = v6;
  if (*(a1 + 224) == 1)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
  }

  else
  {
    v8 = 0;
  }

  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_6;
  aBlock[3] = &unk_1E8025BC8;
  v111 = &v112;
  v9 = v8;
  v110 = v9;
  v10 = _Block_copy(aBlock);
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_7;
  v106[3] = &unk_1E8025BF0;
  v108 = &v112;
  v11 = v9;
  v107 = v11;
  v12 = _Block_copy(v106);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_8;
  v96[3] = &unk_1E8025C40;
  v102 = a2;
  v103 = *(a1 + 225);
  v104 = *(a1 + 226);
  v96[4] = *(a1 + 48);
  v13 = v7;
  v97 = v13;
  v14 = v10;
  v99 = v4;
  v100 = v14;
  v105 = *(a1 + 228);
  v98 = v5;
  v15 = v12;
  v101 = v15;
  v16 = _Block_copy(v96);
  v17 = v16;
  if (a2 < 2)
  {
    v18 = *(*(a1 + 48) + 1072);
    if ((v18 - 3) >= 7)
    {
      if ((v18 - 1) >= 2)
      {
        v43 = 0.0;
        v41 = 0.0;
        v39 = 0.0;
        v37 = 0.0;
        if (!v18)
        {
          v16[2](v16, *(a1 + 96), *(a1 + 104));
          PKSizeAlignedInRect();
          v39 = v71;
          v41 = v72;
          v43 = v73;
          v37 = v74 + 22.0;
        }
      }

      else
      {
        v122.origin.x = *(a1 + 112);
        v122.origin.y = *(a1 + 88) + *(a1 + 104);
        v122.size.width = *(a1 + 128);
        v122.size.height = *(a1 + 120) + *(a1 + 136) - v122.origin.y;
        memset(&slice, 0, sizeof(slice));
        remainder = v122;
        CGRectDivide(v122, &slice, &remainder, 6.0, CGRectMinYEdge);
        v17[2](v17, remainder.size.width, remainder.size.height);
        PKSizeAlignedInRect();
        v37 = v62;
        v39 = v63;
        v41 = v64;
        v43 = v65;
      }
    }

    else
    {
      PKFloatRoundToPixel();
      v19 = 176;
      if (!a2)
      {
        v19 = 144;
      }

      v20 = 184;
      if (!a2)
      {
        v20 = 152;
      }

      v21 = 192;
      if (!a2)
      {
        v21 = 160;
      }

      v22 = 200;
      if (!a2)
      {
        v22 = 168;
      }

      v23 = *(a1 + v19);
      v24 = *(a1 + v20);
      v25 = *(a1 + v22);
      v26 = *(a1 + v21);
      v123.origin.x = v23;
      v123.origin.y = v24;
      v123.size.width = v26;
      v123.size.height = v25;
      v116.origin.x = *(a1 + 112) + 10.0;
      v116.origin.y = *(a1 + 120) + 10.0;
      v116.size.width = *(a1 + 128) + -20.0;
      v116.size.height = *(a1 + 136) + -20.0;
      v117 = CGRectIntersection(v116, v123);
      width = v117.size.width;
      height = v117.size.height;
      IsNull = CGRectIsNull(v117);
      if (IsNull)
      {
        v31.n128_f64[0] = v25;
      }

      else
      {
        v31.n128_f64[0] = height;
      }

      if (IsNull)
      {
        v30.n128_f64[0] = v26;
      }

      else
      {
        v30.n128_f64[0] = width;
      }

      (v17[2])(v17, v30, v31);
      PKFloatRoundToPixel();
      v33 = v32;
      PKFloatRoundToPixel();
      v34 = fmax(v33, 10.0);
      memset(&slice, 0, sizeof(slice));
      remainder.origin.x = v23;
      remainder.origin.y = v24;
      remainder.size.width = v26;
      remainder.size.height = v25;
      v35 = 212;
      if (!a2)
      {
        v35 = 208;
      }

      v118.origin.x = v23;
      v118.origin.y = v24;
      v118.size.width = v26;
      v118.size.height = v25;
      CGRectDivide(v118, &slice, &remainder, v34, *(a1 + v35));
      PKSizeAlignedInRect();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
    }

    if (a2)
    {
      v75 = *(*(a1 + 72) + 8);
      v75[4] = v37;
      v75[5] = v39;
      v75[6] = v41;
      v75[7] = v43;
    }

    goto LABEL_38;
  }

  v43 = 0.0;
  v41 = 0.0;
  v39 = 0.0;
  v37 = 0.0;
  if (a2 == 2)
  {
    if (*(a1 + 228) != 1)
    {
      v66 = *(a1 + 96);
      slice.origin = *(a1 + 80);
      slice.size = v66;
      goto LABEL_33;
    }

    v44 = *(a1 + 192);
    slice.origin = *(a1 + 176);
    slice.size = v44;
    v45 = *(*(a1 + 72) + 8);
    v46 = *(a1 + 212);
    v44.width = slice.origin.x;
    y = slice.origin.y;
    v48 = slice.size.width;
    v49 = slice.size.height;
    v50 = v45[4];
    v51 = v45[5];
    v52 = v45[6];
    v53 = v45[7];
    v119 = CGRectStandardize(*&v44.width);
    x = v119.origin.x;
    v55 = v119.origin.y;
    v56 = v119.size.width;
    v57 = v119.size.height;
    v124.origin.x = v50;
    v124.origin.y = v51;
    v124.size.width = v52;
    v124.size.height = v53;
    v120 = CGRectIntersection(v119, v124);
    v58 = v120.origin.x;
    v59 = v120.origin.y;
    v60 = v120.size.width;
    v61 = v120.size.height;
    if (CGRectIsNull(v120))
    {
LABEL_29:
      slice.origin.x = x;
      slice.origin.y = v55;
      slice.size.width = v56;
      slice.size.height = v57;
      memset(&remainder, 0, sizeof(remainder));
      v121.origin.x = x;
      v121.origin.y = v55;
      v121.size.width = v56;
      v121.size.height = v57;
      CGRectDivide(v121, &remainder, &slice, 5.0, *(a1 + 212));
LABEL_33:
      v17[2](v17, slice.size.width, slice.size.height);
      PKSizeAlignedInRect();
      v37 = v67;
      v39 = v68;
      v41 = v69;
      v43 = v70;
      goto LABEL_38;
    }

    if (v46 > 1)
    {
      if (v46 == 2)
      {
        v56 = fmax(v58 - x, 0.0);
        goto LABEL_29;
      }

      if (v46 == 3)
      {
        v57 = fmax(v59 - v55, 0.0);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v46)
      {
        v92 = x + v56;
        x = fmin(v58 + v60, x + v56);
        v56 = v92 - x;
        goto LABEL_29;
      }

      if (v46 == 1)
      {
        v91 = v55 + v57;
        v55 = fmin(v59 + v61, v55 + v57);
        v57 = v91 - v55;
        goto LABEL_29;
      }
    }

    __break(1u);
    return;
  }

LABEL_38:
  [v5 anchorPoint];
  v77 = v76;
  v79 = v78;
  [v5 position];
  v82 = v80.n128_f64[0];
  v83 = v81;
  v84 = v37 + v77 * v41;
  v85 = v39 + v79 * v43;
  if (v84 != v80.n128_f64[0] || v85 != v81)
  {
    if (*(a1 + 56))
    {
      if (v80.n128_f64[0] != v84)
      {
        v87 = *(a1 + 48);
        v80.n128_u64[0] = 0;
        if (*(v87 + 1008) == 1)
        {
          v80.n128_u64[0] = 0x3F8EB851EB851EB8;
          if (*(v87 + 1072) != 1)
          {
            v80.n128_f64[0] = 0.0;
          }
        }

        v14[2](v14, v80, v82, v84);
      }

      if (v83 != v85)
      {
        v88 = *(a1 + 48);
        v80.n128_u64[0] = 0;
        if (*(v88 + 1008) == 1)
        {
          v80.n128_u64[0] = 0x3FB3333333333333;
          if (*(v88 + 1072) != 3)
          {
            v80.n128_f64[0] = 0.0;
          }
        }

        (v14[2])(v14, *(a1 + 56), @"position.y", v80, v83, v85);
      }
    }

    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_11;
    v93[3] = &unk_1E8012188;
    v93[4] = v4;
    *&v93[5] = v84;
    *&v93[6] = v85;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v93];
  }

  if ([v11 count])
  {
    v89 = [MEMORY[0x1E6979308] animation];
    [v89 setBeginTimeMode:*MEMORY[0x1E69795C0]];
    [v89 setAnimations:v11];
    [v89 setDuration:v113[3]];
    v90 = [v5 pkui_addAdditiveAnimation:v89];
  }

  _Block_object_dispose(&v112, 8);
}

void __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_6(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  if (a2 && a4 != a5)
  {
    v10 = [a2 springAnimationWithKeyPath:?];
    [v10 pkui_updateForAdditiveAnimationFromScalar:a4 toScalar:a5];
    if (a3 != 0.0)
    {
      [v10 setBeginTime:a3];
    }

    [v10 duration];
    *(*(*(a1 + 40) + 8) + 24) = fmax(v9 + a3, *(*(*(a1 + 40) + 8) + 24));
    [*(a1 + 32) addObject:v10];
  }
}

void __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_7(uint64_t a1, void *a2, void *a3, _OWORD *a4, _OWORD *a5, double a6)
{
  v11 = a2;
  v12 = a3;
  if (v11)
  {
    v13 = a4[5];
    *&a.m31 = a4[4];
    *&a.m33 = v13;
    v14 = a4[7];
    *&a.m41 = a4[6];
    *&a.m43 = v14;
    v15 = a4[1];
    *&a.m11 = *a4;
    *&a.m13 = v15;
    v16 = a4[3];
    *&a.m21 = a4[2];
    *&a.m23 = v16;
    v17 = a5[5];
    *&v31.m31 = a5[4];
    *&v31.m33 = v17;
    v18 = a5[7];
    *&v31.m41 = a5[6];
    *&v31.m43 = v18;
    v19 = a5[1];
    *&v31.m11 = *a5;
    *&v31.m13 = v19;
    v20 = a5[3];
    *&v31.m21 = a5[2];
    *&v31.m23 = v20;
    if (!CATransform3DEqualToTransform(&a, &v31))
    {
      v21 = [v11 springAnimationWithKeyPath:v12];
      v22 = a4[5];
      *&a.m31 = a4[4];
      *&a.m33 = v22;
      v23 = a4[7];
      *&a.m41 = a4[6];
      *&a.m43 = v23;
      v24 = a4[1];
      *&a.m11 = *a4;
      *&a.m13 = v24;
      v25 = a4[3];
      *&a.m21 = a4[2];
      *&a.m23 = v25;
      v26 = a5[5];
      *&v31.m31 = a5[4];
      *&v31.m33 = v26;
      v27 = a5[7];
      *&v31.m41 = a5[6];
      *&v31.m43 = v27;
      v28 = a5[1];
      *&v31.m11 = *a5;
      *&v31.m13 = v28;
      v29 = a5[3];
      *&v31.m21 = a5[2];
      *&v31.m23 = v29;
      [v21 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&v31];
      if (a6 != 0.0)
      {
        [v21 setBeginTime:a6];
      }

      [v21 duration];
      *(*(*(a1 + 40) + 8) + 24) = fmax(v30 + a6, *(*(*(a1 + 40) + 8) + 24));
      [*(a1 + 32) addObject:v21];
    }
  }
}

double __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_8(uint64_t a1, __n128 a2, double a3)
{
  v4 = *(a1 + 80);
  if (v4 == 2)
  {
    v5 = a3;
    v6 = a2.n128_f64[0];
    a2.n128_u64[0] = 0;
    v8 = 0.0;
    if (*(a1 + 85) == 1)
    {
      LOBYTE(a3) = *(a1 + 87);
      v8 = *&a3;
    }

    if (v8 <= 0.0)
    {
      v10 = 8.33333333;
    }

    else
    {
      v10 = 0.0;
    }

    v13 = *(a1 + 32);
    v7 = 1.0;
    if (*(v13 + 1040) != v10)
    {
      *(v13 + 1040) = v10;
      if (*(a1 + 40))
      {
        v14 = *(a1 + 32);
        if (*(v14 + 1008) == 1 && *(v14 + 1072) == 9)
        {
          a2.n128_f64[0] = 0.125;
        }

        goto LABEL_31;
      }

LABEL_32:
      v15 = *(a1 + 48);
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      [v15 setValue:v16 forKeyPath:@"filters.blur.inputRadius"];
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
    if (v4 != 1)
    {
      v7 = 0.0;
      if (v4)
      {
        v8 = 0.0;
      }

      else
      {
        v7 = 1.0;
        if (*(a1 + 84) == 1)
        {
          a2.n128_u8[0] = *(a1 + 85);
          v8 = a2.n128_u64[0];
        }

        else
        {
          v8 = 1.0;
        }
      }

      goto LABEL_35;
    }

    v9 = *(a1 + 86);
    if (*(a1 + 85))
    {
      v8 = v9;
    }

    else
    {
      v8 = 0.0;
    }

    if (v9)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 1.5;
    }

    if (v8 <= 0.0)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *(a1 + 32);
    if (*(v11 + 1056) != v10)
    {
      *(v11 + 1056) = v10;
      if (*(a1 + 40))
      {
        v12 = *(a1 + 32);
        a2.n128_u64[0] = 0;
        if (*(v12 + 1008) == 1)
        {
          a2.n128_u64[0] = 0x3FD23D70A3D70A3DLL;
          if (*(v12 + 1072) != 3)
          {
            a2.n128_f64[0] = 0.0;
          }
        }

LABEL_31:
        (*(*(a1 + 64) + 16))(a2);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

LABEL_35:
  [*(a1 + 56) sizeThatFits:{v6, v5}];
  v19 = v17;
  if (v7 == 1.0)
  {
    v44 = v17;
    v20 = v18;
  }

  else
  {
    v20 = v18;
    PKSizeRoundToPixel();
    v44 = v21;
  }

  v22 = [*(a1 + 56) isHidden];
  [*(a1 + 48) opacity];
  v24 = v23;
  v45 = v8;
  v25 = v8 != v23;
  memset(&v68, 0, sizeof(v68));
  CATransform3DMakeScale(&v68, v7, v7, 1.0);
  memset(&v67, 0, sizeof(v67));
  v26 = *(a1 + 48);
  if (v26)
  {
    [v26 transform];
  }

  a = v67;
  b = v68;
  v27 = CATransform3DEqualToTransform(&a, &b);
  v29 = *MEMORY[0x1E695EFF8];
  v28 = *(MEMORY[0x1E695EFF8] + 8);
  [*(a1 + 48) bounds];
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  v70.origin.x = v29;
  v70.origin.y = v28;
  v70.size.width = v19;
  v70.size.height = v20;
  v33 = CGRectEqualToRect(v69, v70);
  v35 = v33;
  if (v45 == v24)
  {
    v39 = !v27 || !v33;
    v37 = (*(a1 + 80) != 0) & (v22 ^ 1);
    if (v27)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v36 = *(a1 + 80);
  v37 = (v36 != 0) & (v22 ^ 1);
  if (*(a1 + 40))
  {
    v34.n128_u64[0] = 0;
    if (v36 == 2)
    {
      v38 = *(a1 + 32);
      if (*(v38 + 1008) == 1 && *(v38 + 1072) == 9)
      {
        v34.n128_f64[0] = 0.125;
      }
    }

    (*(*(a1 + 64) + 16))(v34, v24, v45);
  }

  v39 = 1;
  if (!v27)
  {
LABEL_50:
    if (*(a1 + 40))
    {
      v40 = *(*(a1 + 72) + 16);
      a = v67;
      b = v68;
      v40(0.0);
    }
  }

LABEL_52:
  if (((v35 | v37 ^ 1) & 1) == 0 && *(a1 + 40))
  {
    (*(*(a1 + 64) + 16))(0.0, x, v29);
    (*(*(a1 + 64) + 16))(0.0, y, v28);
    (*(*(a1 + 64) + 16))(0.0, width, v19);
    (*(*(a1 + 64) + 16))(0.0, height, v20);
  }

  if (v39)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    *&v47[5] = v45;
    v53 = *&v68.m33;
    v54 = *&v68.m41;
    v55 = *&v68.m43;
    v48 = *&v68.m11;
    v49 = *&v68.m13;
    v50 = *&v68.m21;
    v47[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_9;
    v47[3] = &unk_1E8025C18;
    v60 = v22;
    v47[4] = *(a1 + 56);
    v61 = v25;
    v62 = !v27;
    v51 = *&v68.m23;
    v52 = *&v68.m31;
    v63 = !v35;
    v56 = v29;
    v57 = v28;
    v58 = v19;
    v59 = v20;
    v64 = v37;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v47];
    if (((v35 | v37 ^ 1) & 1) == 0)
    {
      v41 = *(a1 + 40);
      if (v41)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_10;
        v46[3] = &unk_1E8010970;
        v46[4] = *(a1 + 56);
        [MEMORY[0x1E69DD250] pkui_animateUsingFactory:v41 withDelay:6 options:v46 animations:0 completion:0.0];
      }
    }
  }

  return v44;
}

uint64_t __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_9(uint64_t result)
{
  v1 = result;
  if (*(result + 40) > 0.0 && *(result + 208) == 1)
  {
    result = [*(result + 32) setHidden:0];
  }

  if (*(v1 + 209) == 1)
  {
    result = [*(v1 + 32) setAlpha:*(v1 + 40)];
  }

  if (*(v1 + 210) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 128);
    v7[4] = *(v1 + 112);
    v7[5] = v3;
    v4 = *(v1 + 160);
    v7[6] = *(v1 + 144);
    v7[7] = v4;
    v5 = *(v1 + 64);
    v7[0] = *(v1 + 48);
    v7[1] = v5;
    v6 = *(v1 + 96);
    v7[2] = *(v1 + 80);
    v7[3] = v6;
    result = [v2 setTransform3D:v7];
  }

  if (*(v1 + 211) == 1)
  {
    result = [*(v1 + 32) setBounds:{*(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200)}];
    if ((*(v1 + 212) & 1) == 0)
    {
      return [*(v1 + 32) layoutIfNeeded];
    }
  }

  return result;
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24))
  {
    if ((v3[272] & 1) == 0 && v3[268] == 1)
    {
      val = v3;
      v5 = [v3 viewIfLoaded];
      v6 = v5;
      if (v5)
      {
        [v5 bounds];
        [val setPreferredContentSize:{v7, v8}];
      }

      val[268] = 2;
      [(PKExpressTransactionBannerViewController *)val _updatePreferredContentSize];

      v3 = val;
    }
  }

  else
  {
    *(v4 + 24) = 1;
  }
}

- (void)_updatePreferredContentSize
{
  if (val)
  {
    if ((*(val + 268) - 2) >= 8)
    {
      __break(1u);
    }

    else if ((val[1176] & 1) == 0)
    {
      val[1176] = 1;
      objc_initWeak(&location, val);
      systemApertureElementContext = [val systemApertureElementContext];
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke;
      v3[3] = &unk_1E8010998;
      objc_copyWeak(&v4, &location);
      [systemApertureElementContext setElementNeedsUpdateWithCoordinatedAnimations:v3];

      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_3;
  v12[3] = &unk_1E8010970;
  v13 = *(a1 + 32);
  [v4 performWithoutAnimation:v12];
  *(*(a1 + 40) + 1072) = 1;
  *(*(a1 + 40) + 1008) = 1;
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  *(*(a1 + 40) + 1008) = 0;
  v5 = *(a1 + 40);
  if (*(v5 + 1152))
  {
    if (![*(v5 + 1152) status])
    {
      goto LABEL_5;
    }

    v5 = *(a1 + 40);
  }

  [(PKExpressTransactionBannerViewController *)v5 _displayResolution];
LABEL_5:
  v6 = *(a1 + 40);
  if (*(v6 + 1136) == 1)
  {
    if (*(v6 + 1137))
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 1024);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_4;
  v9[3] = &unk_1E80110B8;
  objc_copyWeak(&v11, (a1 + 56));
  v10 = *(a1 + 48);
  [(PKExpressBannerLeadingView *)v8 _setState:v7 withCompletion:v9];

  objc_destroyWeak(&v11);
}

- (void)_displayResolution
{
  v44 = *MEMORY[0x1E69E9840];
  if (!self || (*(self + 1088) & 1) != 0 || !*(self + 1072))
  {
    return;
  }

  v2 = *(self + 1152);
  if (v2)
  {
    status = [v2 status];
    if (*(self + 1136))
    {
      if (status == 1 && (*(self + 1137) & 1) == 0)
      {
        *(self + 1137) = 1;
        if ((*(self + 1136) & 1) == 0)
        {
          *(self + 1136) = 1;
          goto LABEL_22;
        }

LABEL_16:
        v4 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          selfCopy4 = self;
          v5 = "PKExpressTransactionBVC (%p): displaying override success resolution.";
LABEL_24:
          _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
        }

LABEL_25:
        v7 = 1;
        v8 = 2;
        v9 = 1;
LABEL_31:

        v11 = *(self + 1024);
        if (v11)
        {
          v12 = *(v11 + 456);
          if ((v12 | 4) != 4 && v12 != v8)
          {
            if (*(v11 + 472))
            {
              *(v11 + 456) = v8;
              [(PKExpressBannerLeadingView *)v11 _updateLayerState];
            }

            else
            {
              [(PKExpressBannerLeadingView *)v11 _setState:v8 withCompletion:0];
            }
          }
        }

        objc_initWeak(&location, self);
        *(self + 1138) = 1;
        [(PKExpressTransactionBannerViewController *)self _cancelRevokeTimer];
        v14 = objc_alloc(MEMORY[0x1E69B8798]);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __62__PKExpressTransactionBannerViewController__displayResolution__block_invoke;
        v35[3] = &unk_1E8010998;
        objc_copyWeak(&v36, &location);
        v15 = [v14 initWithBlock:v35];
        v16 = *(self + 1048);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v30 = __62__PKExpressTransactionBannerViewController__displayResolution__block_invoke_2;
        v31 = &unk_1E8025D08;
        v17 = v15;
        v32 = v17;
        objc_copyWeak(&v33, &location);
        v34 = v7;
        if (!v16)
        {
          goto LABEL_54;
        }

        v18 = *(v16 + 416);
        v19 = v29;
        v20 = v19;
        if (v18)
        {
          if (*(v18 + 408) == v9)
          {
            v21 = *(v18 + 416);
            if (!v21)
            {
              (v30)(v19, 0);
              goto LABEL_53;
            }

            v22 = _Block_copy(v19);
            [v21 addObject:v22];
          }

          else
          {
            *(v18 + 408) = v9;
            v23 = *(v18 + 416);
            v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
            v25 = _Block_copy(v20);
            [v24 addObject:v25];

            objc_storeStrong((v18 + 416), v24);
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v22 = v23;
            v26 = [v22 countByEnumeratingWithState:&v38 objects:buf count:16];
            if (v26)
            {
              v27 = *v39;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v39 != v27)
                  {
                    objc_enumerationMutation(v22);
                  }

                  (*(*(*(&v38 + 1) + 8 * i) + 16))();
                }

                v26 = [v22 countByEnumeratingWithState:&v38 objects:buf count:16];
              }

              while (v26);
            }

            if (v24 == *(v18 + 416))
            {
              [(PKExpressGlyphView *)v18 _updateGlyphViewAnimated:?];
            }
          }
        }

LABEL_53:

LABEL_54:
        objc_destroyWeak(&v33);

        objc_destroyWeak(&v36);
        objc_destroyWeak(&location);
        return;
      }

      goto LABEL_11;
    }

    *(self + 1137) = status == 1;
    if (*(self + 1136))
    {
      if (status == 1)
      {
        goto LABEL_16;
      }

LABEL_19:
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy4 = self;
        v6 = "PKExpressTransactionBVC (%p): displaying override failure resolution.";
LABEL_29:
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    *(self + 1136) = 1;
    if (status == 1)
    {
LABEL_22:
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy4 = self;
        v5 = "PKExpressTransactionBVC (%p): displaying success resolution.";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

LABEL_27:
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy4 = self;
      v6 = "PKExpressTransactionBVC (%p): displaying failure resolution.";
      goto LABEL_29;
    }

LABEL_30:
    v7 = 0;
    v9 = 2;
    v8 = 3;
    goto LABEL_31;
  }

  if ((*(self + 1136) & 1) == 0)
  {
    *(self + 1137) = 0;
    if (*(self + 1136))
    {
      goto LABEL_19;
    }

    *(self + 1136) = 1;
    goto LABEL_27;
  }

LABEL_11:

  [(PKExpressTransactionBannerViewController *)self _startRevokeTimer];
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_6;
  v2[3] = &unk_1E80111D0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_6(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): appeared.", &v4, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1128) = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 32) + 1072) = 6;
  *(*(a1 + 32) + 1008) = 1;
  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  *(*(a1 + 32) + 1008) = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 1088) & 1) == 0 && *(v1 + 1072) == 6)
  {
    v2 = *(v1 + 1064);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(v1 + 1064);
      *(v1 + 1064) = 0;
    }

    v4 = *(v1 + 1120);
    v5 = 0.0;
    if (v4 > 0.0)
    {
      v6 = *(v1 + 1128);
      v7 = v4 >= v6 || v6 <= 0.0;
      v8 = v6 - v4;
      if (v7)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v8;
      }
    }

    v9 = 0.45 - v5;
    if (0.45 - v5 <= 0.0)
    {

      __61__PKExpressTransactionBannerViewController__startExpandTimer__block_invoke(v2, v1);
    }

    else
    {
      v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v11 = *(v1 + 1064);
      *(v1 + 1064) = v10;

      v12 = *(v1 + 1064);
      v13 = dispatch_time(0, (v9 * 1000000000.0));
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      objc_initWeak(&location, v1);
      v14 = *(v1 + 1064);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __61__PKExpressTransactionBannerViewController__startExpandTimer__block_invoke_2;
      handler[3] = &unk_1E80111D0;
      objc_copyWeak(&v17, &location);
      v16 = &__block_literal_global_281;
      dispatch_source_set_event_handler(v14, handler);
      dispatch_resume(*(v1 + 1064));

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_4;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): shrunk.", &v3, 0xCu);
    }
  }
}

- (void)_cancelRevokeTimer
{
  v2 = *(self + 1144);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(self + 1144);
    *(self + 1144) = 0;
  }
}

uint64_t __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1072) = 9;
  *(*(a1 + 32) + 1008) = 1;
  [*(a1 + 40) setNeedsLayout];
  result = [*(a1 + 40) layoutIfNeeded];
  *(*(a1 + 32) + 1008) = 0;
  return result;
}

void __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke_3;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): expanded.", &v3, 0xCu);
    }

    WeakRetained[1092] = 0;
    [(PKExpressTransactionBannerViewController *)WeakRetained _startRevokeTimer];
  }
}

- (void)_startRevokeTimer
{
  v16 = *MEMORY[0x1E69E9840];
  if (self && (*(self + 1088) & 1) == 0)
  {
    [(PKExpressTransactionBannerViewController *)self _cancelRevokeTimer];
    if (*(self + 1138) == 1)
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy5 = self;
        v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - glyph state animating.";
LABEL_15:
        _os_log_debug_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEBUG, v3, buf, 0xCu);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if ((*(self + 1090) & 1) == 0)
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy5 = self;
        v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - leading view shrinking.";
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    if ((*(self + 1091) & 1) == 0)
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy5 = self;
        v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - waiting for shrink.";
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    if (*(self + 1092) == 1)
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy5 = self;
        v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - expanding.";
        goto LABEL_15;
      }

LABEL_19:

      return;
    }

    v4 = *(self + 1152);
    if (v4 && [v4 isProcessing])
    {
      v2 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      selfCopy5 = self;
      v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - express transaction ongoing.";
      goto LABEL_15;
    }

    v5 = *(self + 1160);
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v7 = *(self + 1144);
    *(self + 1144) = v6;

    v8 = *(self + 1144);
    if (v5)
    {
      v9 = 1000000000;
    }

    else
    {
      v9 = 500000000;
    }

    v10 = dispatch_time(0, v9);
    dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    objc_initWeak(buf, self);
    v11 = *(self + 1144);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__PKExpressTransactionBannerViewController__startRevokeTimer__block_invoke;
    handler[3] = &unk_1E8010998;
    objc_copyWeak(&v13, buf);
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(*(self + 1144));
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke(uint64_t a1)
{
  v62[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained || (WeakRetained[272] & 1) != 0)
  {
LABEL_46:

    return;
  }

  v4 = 0;
  v5 = WeakRetained[268];
  if (v5 <= 5)
  {
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v6 = 5;
        v7 = 6;
        goto LABEL_20;
      }

      v4 = 0;
      v5 = 6;
      goto LABEL_21;
    }

    if (v5 == 2)
    {
      v7 = 3;
      v6 = 3;
      goto LABEL_20;
    }

    if (v5 == 3)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  if (v5 > 7)
  {
    if (v5 == 8)
    {
      v4 = 0;
      v5 = 9;
    }

    else if (v5 != 9)
    {
      goto LABEL_48;
    }

LABEL_21:
    v8 = [WeakRetained view];
    PKFloatRoundToPixel();
    v9 = [v8 SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v9 layoutFrame];
    v11 = v10;
    v13 = v12;

    PKFloatRoundToPixel();
    v14 = *(v3 + 128);
    v51 = v11;
    v52 = v13;
    v50 = v15;
    if (v14)
    {
      [(PKExpressBannerLeadingView *)&buf _metricsForSizeClass:v14, 2u];
      v16 = *&v60;
    }

    else
    {
      v16 = 0.0;
    }

    PKFloatRoundToPixel();
    v18 = v17;
    PKFloatRoundToPixel();
    v19 = fmax(v18, 10.0);
    [*(v3 + 131) sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v21 = v20;
    PKFloatRoundToPixel();
    v23 = v22;
    PKFloatRoundToPixel();
    v24 = v21 + fmax(v23, 10.0);
    if (v5 == 9)
    {
      v25 = *(v3 + 129);
      v26 = v50;
      if (v25 && v25[55])
      {
        v27 = v24 + 5.0;
        [v25 sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v24 = v27 + v28;
      }

      v29 = v51;
    }

    else
    {
      v26 = v50;
      v29 = v11;
    }

    v30 = fmax(v26 + v16 + v19, v24);
    v31 = v29 + v30 * 2.0;
    if (v3[268] == 3)
    {
      v32 = [v3 viewIfLoaded];
      v33 = v32;
      if (v32 && ([v32 window], v34 = objc_claimAutoreleasedReturnValue(), (v35 = v34) != 0))
      {
        [v34 bounds];
        v37 = v36;
      }

      else
      {
        v37 = 1.79769313e308;
      }

      *(v3 + 138) = fmin(v31, v37);
      *(v3 + 139) = v52;
      if (v4)
      {
        v38 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v3;
          _os_log_impl(&dword_1BD026000, v38, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): psuedo shrinking...", &buf, 0xCu);
        }

        *(v3 + 1008) = v4;
        [v8 setNeedsLayout];
        [v8 layoutIfNeeded];
        *(v3 + 1008) = 0;
        v39 = objc_alloc(MEMORY[0x1E69B8798]);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke_279;
        v56[3] = &unk_1E8010998;
        objc_copyWeak(&v57, (a1 + 32));
        v40 = [v39 initWithBlock:v56];
        v41 = *(v3 + 128);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke_2;
        v53[3] = &unk_1E80113B0;
        objc_copyWeak(&v55, (a1 + 32));
        v42 = v40;
        v54 = v42;
        [(PKExpressBannerLeadingView *)v41 _setState:v53 withCompletion:?];
        if ((v3[272] & 1) == 0 && v3[268] == 3)
        {
          v43 = *(v3 + 133);
          if (v43)
          {
            dispatch_source_cancel(v43);
            v44 = *(v3 + 133);
            *(v3 + 133) = 0;
          }

          v45 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
          v46 = *(v3 + 133);
          *(v3 + 133) = v45;

          v47 = *(v3 + 133);
          v48 = dispatch_time(0, 110000000);
          dispatch_source_set_timer(v47, v48, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
          objc_initWeak(&location, v3);
          v49 = *(v3 + 133);
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          *&v60 = COERCE_DOUBLE(__61__PKExpressTransactionBannerViewController__startShrinkTimer__block_invoke);
          v61 = &unk_1E8010998;
          objc_copyWeak(v62, &location);
          dispatch_source_set_event_handler(v49, &buf);
          dispatch_resume(*(v3 + 133));
          objc_destroyWeak(v62);
          objc_destroyWeak(&location);
        }

        objc_destroyWeak(&v55);
        objc_destroyWeak(&v57);
      }

      else
      {
        *(v3 + 1008) = 0;
        [v8 setNeedsLayout];
        [v8 layoutIfNeeded];
        *(v3 + 1008) = 0;
      }
    }

    else
    {
      [v3 setPreferredContentSize:{v29 + v30 * 2.0, v52}];
    }

    *(v3 + 1176) = 0;

    goto LABEL_46;
  }

  if (v5 == 6)
  {
    goto LABEL_21;
  }

  if (v5 == 7)
  {
    v6 = 8;
    v7 = 9;
LABEL_20:
    v4 = v5 != v6;
    WeakRetained[268] = v6;
    v5 = v7;
    goto LABEL_21;
  }

LABEL_48:
  __break(1u);
}

id __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke_279(uint64_t a1)
{
  result = objc_loadWeakRetained((a1 + 32));
  if (result)
  {
    __break(1u);
  }

  return result;
}

void __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([*(a1 + 32) invalidate])
    {
      __break(1u);
      return;
    }

    v3[1090] = 1;
    [(PKExpressTransactionBannerViewController *)v3 _startRevokeTimer];
    WeakRetained = v3;
  }
}

id __62__PKExpressTransactionBannerViewController__displayResolution__block_invoke(uint64_t a1)
{
  result = objc_loadWeakRetained((a1 + 32));
  if (result)
  {
    __break(1u);
  }

  return result;
}

void __62__PKExpressTransactionBannerViewController__displayResolution__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) invalidate])
  {
    __break(1u);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained && WeakRetained[1137] == *(a1 + 48))
    {
      WeakRetained[1138] = 0;
      v3 = WeakRetained;
      [(PKExpressTransactionBannerViewController *)WeakRetained _startRevokeTimer];
      WeakRetained = v3;
    }
  }
}

void __61__PKExpressTransactionBannerViewController__startShrinkTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    val = WeakRetained;
    v2 = *(WeakRetained + 133);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(val + 133);
      val[133] = 0.0;
    }

    val[140] = CFAbsoluteTimeGetCurrent();
    *(val + 268) = 4;
    [(PKExpressTransactionBannerViewController *)val _updatePreferredContentSize];
    WeakRetained = val;
  }
}

void __61__PKExpressTransactionBannerViewController__startExpandTimer__block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 1091) = 1;
  *(a2 + 1072) = 7;
  val = a2;
  [(PKExpressTransactionBannerViewController *)val _startRevokeTimer];
  [(PKExpressTransactionBannerViewController *)val _updatePreferredContentSize];
}

void __61__PKExpressTransactionBannerViewController__startExpandTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[133];
    v6 = v3;
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = v6[133];
      v6[133] = 0;
    }

    (*(*(a1 + 32) + 16))();
    v3 = v6;
  }
}

void __61__PKExpressTransactionBannerViewController__startRevokeTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[136] & 1) == 0)
  {
    v3 = WeakRetained;
    [(PKExpressTransactionBannerViewController *)WeakRetained _revoked];
    v2 = objc_loadWeakRetained(v3 + 148);
    [v2 revoke];

    WeakRetained = v3;
  }
}

- (void)_revoked
{
  if (self && (*(self + 1088) & 1) == 0)
  {
    *(self + 1088) = 1;
    v2 = *(self + 1144);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 1144);
      *(self + 1144) = 0;
    }

    v4 = *(self + 1096);
    if (v4)
    {
      v5 = v4;
      v6 = *(self + 1096);
      *(self + 1096) = 0;

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      if (mEMORY[0x1E69DC668])
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = *MEMORY[0x1E69DDBE8];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __52__PKExpressTransactionBannerViewController__revoked__block_invoke;
        aBlock[3] = &unk_1E8021F48;
        v13 = v5;
        v15 = &v16;
        v8 = mEMORY[0x1E69DC668];
        v14 = v8;
        v9 = _Block_copy(aBlock);
        v10 = [v8 beginBackgroundTaskWithName:@"Wallet Banner - CL In Use Grace Period" expirationHandler:v9];
        v17[3] = v10;
        v11 = dispatch_time(0, (*MEMORY[0x1E69BBAD8] * 1000000000.0));
        dispatch_after(v11, MEMORY[0x1E69E96A0], v9);

        _Block_object_dispose(&v16, 8);
      }

      else
      {
        [v5 invalidate];
      }
    }
  }
}

uint64_t __52__PKExpressTransactionBannerViewController__revoked__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24) != *MEMORY[0x1E69DDBE8])
  {
    *(v3 + 24) = *MEMORY[0x1E69DDBE8];
    v4 = *(a1 + 40);

    return [v4 endBackgroundTask:?];
  }

  return result;
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

- (void)setBannerDetached:(BOOL)detached
{
  if (self->_bannerDetached != detached)
  {
    self->_bannerDetached = detached;
    if (detached)
    {
      if ([(PKExpressTransactionState *)self->_expressState isProcessing])
      {
        [(PKExpressTransactionState *)self->_expressState resolve];

        [(PKExpressTransactionBannerViewController *)self _displayResolution];
      }
    }
  }
}

- (void)setState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v11 = stateCopy;
    if ([(PKExpressTransactionBannerHandleState *)stateCopy type])
    {
      goto LABEL_13;
    }

    stateCopy = v11;
    if (self->_bannerState != v11)
    {
      transactionState = [(PKExpressTransactionBannerHandleState *)v11 transactionState];
      bannerState = self->_bannerState;
      if (!bannerState || (-[PKExpressTransactionBannerHandleState transactionState](bannerState, "transactionState"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [transactionState isRelatedToState:v8], v8, (v9 & 1) != 0))
      {
        objc_storeStrong(&self->_bannerState, state);
        objc_storeStrong(&self->_expressState, transactionState);
        expressState = self->_expressState;
        if (!expressState || [(PKExpressTransactionState *)expressState status])
        {
          [(PKExpressTransactionBannerViewController *)self _displayResolution];
        }

        stateCopy = v11;
        goto LABEL_10;
      }

LABEL_13:
      __break(1u);
      return;
    }
  }

LABEL_10:
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  if (!self->_revoked)
  {
    v5 = MEMORY[0x1E695FBE0];
    v8 = PKPassKitCoreBundle();
    v6 = [v5 newAssertionForBundle:v8 withReason:@"Wallet Express Banner is Active"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v6;
  }
}

- (int64_t)preferredCustomLayout
{
  if (self->_state >= 4u)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  if (self->_activeLayoutMode != mode)
  {
    viewIfLoaded = [(PKExpressTransactionBannerViewController *)self viewIfLoaded];
    v10 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      self->_activeLayoutMode = mode;
      systemApertureElementContext = [(PKExpressTransactionBannerViewController *)self systemApertureElementContext];
      requestAlertingAssertion = [systemApertureElementContext requestAlertingAssertion];
      [requestAlertingAssertion setAutomaticallyInvalidatable:0];

      [v10 setNeedsLayout];
    }

    else
    {
      self->_activeLayoutMode = mode;
      systemApertureElementContext2 = [(PKExpressTransactionBannerViewController *)self systemApertureElementContext];
      requestAlertingAssertion2 = [systemApertureElementContext2 requestAlertingAssertion];
      [requestAlertingAssertion2 setAutomaticallyInvalidatable:0];
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  v40[2] = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  if (self->_revoked)
  {
    goto LABEL_2;
  }

  state = self->_state;
  if (state == 8)
  {
    v19 = coordinatorCopy;
    if (self->_state != 8)
    {
      goto LABEL_27;
    }

    v20 = v19;
    if (!v19)
    {
      goto LABEL_27;
    }

    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): expanding...", buf, 0xCu);
    }

    self->_expanding = 1;
    [(PKExpressTransactionBannerViewController *)self _cancelRevokeTimer];
    objc_initWeak(aBlock, self);
    view = [(PKExpressTransactionBannerViewController *)self view];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke;
    v36 = &unk_1E8020758;
    selfCopy3 = self;
    v23 = view;
    selfCopy2 = v23;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke_2;
    v28 = &unk_1E8025CE0;
    objc_copyWeak(&v29, aBlock);
    [v20 animateAlongsideTransition:buf completion:&v25];
    objc_destroyWeak(&v29);

    objc_destroyWeak(aBlock);
  }

  else
  {
    if (state != 5)
    {
      if (state)
      {
        goto LABEL_2;
      }

      v5 = coordinatorCopy;
      if (!self->_state)
      {
        v6 = v5;
        if (v5)
        {
          activeLayoutMode = self->_activeLayoutMode;
          v8 = PKLogFacilityTypeGetObject();
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (activeLayoutMode == 4)
          {
            if (v9)
            {
              *buf = 134217984;
              *&buf[4] = self;
              _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): appearing...", buf, 0xCu);
            }

            view2 = [(PKExpressTransactionBannerViewController *)self view];
            objc_initWeak(&location, self);
            v32[0] = 0;
            v32[1] = v32;
            v32[2] = 0x2020000000;
            v33 = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke;
            aBlock[3] = &unk_1E8025C90;
            aBlock[4] = v32;
            v11 = _Block_copy(aBlock);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_2;
            v36 = &unk_1E8025CB8;
            v8 = view2;
            selfCopy3 = v8;
            selfCopy2 = self;
            objc_copyWeak(v40, &location);
            v12 = v11;
            v39 = v12;
            v25 = MEMORY[0x1E69E9820];
            v26 = 3221225472;
            v27 = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_5;
            v28 = &unk_1E8023600;
            objc_copyWeak(&v30, &location);
            v13 = v12;
            v29 = v13;
            [v6 animateAlongsideTransition:buf completion:&v25];

            objc_destroyWeak(&v30);
            objc_destroyWeak(v40);

            _Block_object_dispose(v32, 8);
            objc_destroyWeak(&location);
          }

          else if (v9)
          {
            *buf = 134218240;
            *&buf[4] = self;
            *&buf[12] = 2048;
            *&buf[14] = activeLayoutMode;
            _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): deferring apperance while in mode %ld.", buf, 0x16u);
          }

          goto LABEL_2;
        }
      }

LABEL_27:
      __break(1u);
    }

    v14 = coordinatorCopy;
    if (self->_state != 5)
    {
      goto LABEL_27;
    }

    v15 = v14;
    if (!v14)
    {
      goto LABEL_27;
    }

    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): shrinking...", buf, 0xCu);
    }

    view3 = [(PKExpressTransactionBannerViewController *)self view];
    objc_initWeak(aBlock, self);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke;
    v36 = &unk_1E8020758;
    selfCopy3 = self;
    v18 = view3;
    selfCopy2 = v18;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_3;
    v28 = &unk_1E8025CE0;
    objc_copyWeak(&v29, aBlock);
    [v15 animateAlongsideTransition:buf completion:&v25];
    objc_destroyWeak(&v29);

    objc_destroyWeak(aBlock);
  }

LABEL_2:
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  if (self->_transitBalanceModel)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__PKExpressTransactionBannerViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    block[3] = &unk_1E8010A88;
    block[4] = self;
    v9 = identifierCopy;
    v10 = propertiesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __111__PKExpressTransactionBannerViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 992) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    [*(*(a1 + 32) + 1000) setTransitProperties:*(a1 + 48)];
    v4 = *(a1 + 32);

    [(PKExpressTransactionBannerViewController *)v4 _updateBalanceContent];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  if (self->_transitBalanceModel)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__PKExpressTransactionBannerViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
    block[3] = &unk_1E8010A88;
    block[4] = self;
    v9 = identifierCopy;
    v10 = updateCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __100__PKExpressTransactionBannerViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 992) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    [*(*(a1 + 32) + 1000) setDynamicBalances:*(a1 + 48)];
    v4 = *(a1 + 32);

    [(PKExpressTransactionBannerViewController *)v4 _updateBalanceContent];
  }
}

- (void)expressTrailingView:(id)view revealingCheckmarkAnimated:(BOOL)animated
{
  if (self && !self->_revoked && !self->_successPlayed)
  {
    self->_successPlayed = 1;
    kdebug_trace();
    leadingView = self->_leadingView;
    if (leadingView)
    {
      passView = leadingView->_passView;
      if (passView)
      {
        if ((passView->_options & 2) == 0)
        {
          __break(1u);
          return;
        }

        [(PKPassView *)passView->_passView didTransact];
      }
    }

    pass = self->_pass;
    if (pass)
    {
      v8 = 1394;
      if ([(PKPass *)pass passType]== PKPassTypeSecureElement)
      {
        if ([(PKPass *)self->_pass isAccessPass])
        {
          v8 = 1163;
        }

        else
        {
          v8 = 1394;
        }
      }
    }

    else
    {
      v8 = 1394;
    }

    AudioServicesPlaySystemSound(v8);
  }
}

- (void)expressLabelViewDidChangeSize:(id)size
{
  sizeCopy = size;
  state = self->_state;
  v6 = state >= 8;
  v7 = state - 8;
  if (v6)
  {
    v8 = sizeCopy;
    if (v7 > 1)
    {
      __break(1u);
      return;
    }

    [(PKExpressTransactionBannerViewController *)self _updatePreferredContentSize];
    sizeCopy = v8;
  }
}

- (PKBannerViewControllerPresentable)presentable
{
  WeakRetained = objc_loadWeakRetained(&self->_presentable);

  return WeakRetained;
}

@end