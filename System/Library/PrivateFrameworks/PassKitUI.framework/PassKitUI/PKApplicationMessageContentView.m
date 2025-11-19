@interface PKApplicationMessageContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_layoutWithContext:(double)a3 bounds:(double)a4;
- (double)_prepareViewForReuse:(int)a3 type:(double)a4 state:(double)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (uint64_t)initWithWidth:(void *)a1;
- (void)_updateForTraitCollection:(uint64_t)a1;
- (void)_updateSubviewsAnimated:(uint64_t)a1;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performBatchUpdates:(uint64_t)a3 animated:;
- (void)setBlurRadius:(void *)a3 animated:(double)a4 withCompletion:;
- (void)setContent:(int)a3 animated:;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKApplicationMessageContentView

- (uint64_t)initWithWidth:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v46.receiver = a1;
  v46.super_class = PKApplicationMessageContentView;
  v5 = objc_msgSendSuper2(&v46, sel_initWithFrame_, v3, v4, a2, 0.0);
  v6 = v5;
  if (v5)
  {
    [v5 pkui_setMaskType:3];
    v7 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v6 setBackgroundColor:v7];

    [v6 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    [v6 setInsetsLayoutMarginsFromSafeArea:0];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = *(v6 + 544);
    *(v6 + 544) = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v11 = *(v6 + 472);
    *(v6 + 472) = v10;

    Label_0 = CreateLabel_0(1, 0);
    v13 = *(v6 + 488);
    *(v6 + 488) = Label_0;

    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v15 = CreateLabel_0(3, v14);
    v16 = *(v6 + 496);
    *(v6 + 496) = v15;

    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v18 = *(v6 + 464);
    *(v6 + 464) = v17;

    [*(v6 + 464) addSubview:*(v6 + 472)];
    v19 = [*(v6 + 464) layer];
    [v19 setMasksToBounds:1];
    [v19 setCornerCurve:*MEMORY[0x1E69796E8]];
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.21];
    [v19 setBorderColor:{objc_msgSend(v20, "CGColor")}];

    [v19 setBorderWidth:PKUIPixelLength()];
    v21 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v22 = *(v6 + 480);
    *(v6 + 480) = v21;

    [*(v6 + 480) setContentMode:4];
    v23 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:9.0];
    v24 = *(v6 + 480);
    v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark" withConfiguration:v23];
    [v24 setImage:v25];

    v26 = *(v6 + 480);
    v27 = [MEMORY[0x1E69DC888] whiteColor];
    [v26 setTintColor:v27];

    v28 = *(v6 + 480);
    v29 = [MEMORY[0x1E69DC888] redColor];
    [v28 setBackgroundColor:v29];

    [*(v6 + 480) setClipsToBounds:1];
    [*(v6 + 480) pkui_setCornerRadius:0 animated:6.0];
    [*(v6 + 464) setAlpha:0.0];
    [*(v6 + 480) setAlpha:0.0];
    [*(v6 + 488) setAlpha:0.0];
    [*(v6 + 496) setAlpha:0.0];
    v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v31 = *(v6 + 416);
    *(v6 + 416) = v30;

    [*(v6 + 416) setUserInteractionEnabled:0];
    [*(v6 + 416) setClipsToBounds:1];
    [*(v6 + 416) addSubview:*(v6 + 464)];
    [*(v6 + 416) addSubview:*(v6 + 480)];
    [*(v6 + 416) addSubview:*(v6 + 488)];
    [*(v6 + 416) addSubview:*(v6 + 496)];
    [v6 addSubview:*(v6 + 416)];
    v32 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v32 setPreferredSymbolConfigurationForImage:0];
    v33 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v32 setBaseForegroundColor:v33];

    [v32 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    objc_initWeak(&location, v6);
    v34 = MEMORY[0x1E69DC628];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __49__PKApplicationMessageContentView_initWithWidth___block_invoke;
    v43[3] = &unk_1E8010A60;
    objc_copyWeak(&v44, &location);
    v35 = [v34 actionWithHandler:v43];
    v36 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v32 primaryAction:v35];
    v37 = *(v6 + 408);
    *(v6 + 408) = v36;

    v38 = *(v6 + 408);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __49__PKApplicationMessageContentView_initWithWidth___block_invoke_2;
    v41[3] = &unk_1E8013CE8;
    objc_copyWeak(&v42, &location);
    [v38 setConfigurationUpdateHandler:v41];
    [*(v6 + 408) setAlpha:0.0];
    [*(v6 + 408) _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
    [*(v6 + 408) sizeToFit];
    [v6 addSubview:*(v6 + 408)];
    v39 = [v6 traitCollection];
    if (v39)
    {
      [(PKApplicationMessageContentView *)v6 _updateForTraitCollection:v39];
    }

    else
    {
      [(PKApplicationMessageContentView *)v6 _updateSubviewsAnimated:?];
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __49__PKApplicationMessageContentView_initWithWidth___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 77);
    [v2 applicationMessageContentViewDismissTapped:v3];

    WeakRetained = v3;
  }
}

void __49__PKApplicationMessageContentView_initWithWidth___block_invoke_2(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCAD8];
  v4 = *MEMORY[0x1E69DDDC8];
  v5 = a2;
  v6 = [v3 configurationWithTextStyle:v4 scale:3];
  v7 = MEMORY[0x1E69DCAD8];
  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v18[0] = v8;
  v9 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [v7 configurationWithPaletteColors:v10];
  v12 = [v6 configurationByApplyingConfiguration:v11];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained traitCollection];

  if (v14)
  {
    v15 = [v12 configurationWithTraitCollection:v14];

    v12 = v15;
  }

  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v12];

  v17 = [v5 configuration];
  [v17 setImage:v16];
  [v5 setConfiguration:v17];
}

- (void)_updateForTraitCollection:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *MEMORY[0x1E69DDCF8];
    v5 = *MEMORY[0x1E69DB8C8];
    v13 = v3;
    v6 = _PKFontForDesign(v3, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDCF8], 4098, 0, 0);
    v7 = *(a1 + 552);
    *(a1 + 552) = v6;

    if (!*(a1 + 560))
    {
      v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v9 = _PKFontForDesign(v8, v5, v4, 4098, 0, 0);
      v10 = *(a1 + 560);
      *(a1 + 560) = v9;
    }

    v11 = _PKFontForDesign(v13, v5, *MEMORY[0x1E69DDD80], 0x8000, 0, 0);
    v12 = *(a1 + 568);
    *(a1 + 568) = v11;

    [*(a1 + 408) setNeedsUpdateConfiguration];
    [(PKApplicationMessageContentView *)a1 _updateSubviewsAnimated:?];
    [a1 setNeedsLayout];
    v3 = v13;
  }
}

- (void)_updateSubviewsAnimated:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 576) == 1)
  {
    *(a1 + 577) = 1;
    return;
  }

  if (a2)
  {
    PKUIViewLayoutIfNeeded(a1, 1, 0);
  }

  v3 = *(a1 + 504);
  v4 = *(a1 + 512);
  v5 = *(a1 + 520);
  v6 = *(a1 + 528);
  __asm { FMOV            V1.2D, #16.0 }

  *(a1 + 504) = xmmword_1BE0B8C20;
  *(a1 + 520) = _Q1;
  v12 = *(a1 + 536);
  v13 = [PKApplicationMessageContentView_State alloc];
  v14 = *(a1 + 608);
  v15 = *(a1 + 560);
  v16 = *(a1 + 552);
  v17 = *(a1 + 568);
  v80 = *(a1 + 601);
  v81 = *(a1 + 600);
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v84 = v17;
  if (!v13 || (v89.receiver = v13, v89.super_class = PKApplicationMessageContentView_State, v21 = objc_msgSendSuper2(&v89, sel_init), (v13 = v21) == 0))
  {
    v26 = a2;
    v27 = v84;
    goto LABEL_21;
  }

  v82 = v20;
  v79 = v12;
  objc_storeStrong(&v21->_source, v14);
  objc_storeStrong(&v13->_titleFont, v16);
  objc_storeStrong(&v13->_bodyFont, v17);
  v83 = v19;
  if ([v18 type])
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_10:
    v25 = &stru_1F3BD7330;
    goto LABEL_13;
  }

  v28 = [v18 contentTypeDefault];
  v22 = [v28 icon];
  v25 = [v28 title];
  v23 = [v28 body];
  v24 = [v28 parseEmphasisInBody];

  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_13:
  v29 = [v22 image];
  v92[0] = 0;
  objc_storeStrong(&v13->_icon, v22);
  v30 = [PKApplicationMessageIconHelpers tintColorWithDescriptor:v29 hasTintColor:v92];
  iconImageTintColor = v13->_iconImageTintColor;
  v13->_iconImageTintColor = v30;

  v32 = v92[0];
  v33 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v34 = [PKApplicationMessageIconHelpers imageWithDescriptor:v29 font:v83 hasTintColor:v32 traitCollection:v33 symbolScale:3];
  iconImage = v13->_iconImage;
  v13->_iconImage = v34;

  AtrributedString = CreateAtrributedString(v25, v82);
  title = v13->_title;
  v13->_title = AtrributedString;

  if (v24 && v23)
  {
    v27 = v84;
    v38 = PKAttributedStringByParsingEmphasisInString(v23, v84, 0);
  }

  else
  {
    v27 = v84;
    v38 = CreateAtrributedString(v23, v84);
  }

  v26 = a2;
  body = v13->_body;
  v13->_body = v38;

  v40 = v13->_iconImage;
  v41 = v13->_title != 0;
  v42 = v13->_body != 0;
  _ZF = v40 == 0;
  v43 = v40 != 0;
  if (_ZF)
  {
    v44 = 0;
  }

  else
  {
    v44 = v80;
  }

  v13->_visibility.dismiss = v81;
  v13->_visibility.icon = v43;
  v13->_visibility.title = v41;
  v13->_visibility.body = v42;
  v13->_visibility.badge = v44;

  v12 = v79;
  v20 = v82;
  v19 = v83;
LABEL_21:

  v45 = *(a1 + 536);
  *(a1 + 536) = v13;

  if (v12)
  {
    v46 = v12[4] | (*(v12 + 20) << 32);
  }

  else
  {
    v46 = 0;
  }

  v47 = *(a1 + 536);
  if (v47)
  {
    v48 = *(v47 + 20);
    v49 = *(v47 + 16) | (v48 << 32);
    v47 = *(v47 + 24);
    v50 = v48 & 1;
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  v85 = v47;
  v51 = *(a1 + 536);
  if (v51)
  {
    v51 = v51[7];
  }

  v52 = v51;
  v53 = *(a1 + 536);
  if (v53)
  {
    v53 = v53[9];
  }

  v54 = v53;
  v55 = *(a1 + 440);
  v89 = *(a1 + 424);
  v90 = v55;
  v91 = *(a1 + 456);
  *(a1 + 432) = v3;
  *(a1 + 440) = v4;
  *(a1 + 448) = v5;
  *(a1 + 456) = v6;
  if (v26)
  {
    v56 = 0.0;
    if ((v46 & 0x100) != 0 && (PKEqualObjects() & 1) == 0)
    {
      v56 = fmax([(PKApplicationMessageContentView *)a1 _prepareViewForReuse:0 type:v3 state:v4, v5, v6], 0.0);
    }

    if (!(((v46 & 0x100000000) == 0) | v50 & 1))
    {
      v56 = fmax([(PKApplicationMessageContentView *)a1 _prepareViewForReuse:0 type:v3 state:v4, v5, v6], v56);
    }

    if ((v46 & 0x10000) != 0 && (PKEqualObjects() & 1) == 0)
    {
      v56 = fmax([(PKApplicationMessageContentView *)a1 _prepareViewForReuse:1 type:v3 state:v4, v5, v6], v56);
    }

    if ((v46 & 0x1000000) != 0 && (PKEqualObjects() & 1) == 0)
    {
      v56 = fmax([(PKApplicationMessageContentView *)a1 _prepareViewForReuse:1 type:v3 state:v4, v5, v6], v56);
    }

    *(a1 + 424) = fmax(*(a1 + 424), v56 * 0.65);
  }

  v57 = *(a1 + 536);
  if (v57)
  {
    v58 = *(v57 + 32);
  }

  else
  {
    v58 = 0;
  }

  [*(a1 + 472) setImage:v58];
  v59 = *(a1 + 536);
  if (v59)
  {
    v60 = *(v59 + 40);
  }

  else
  {
    v60 = 0;
  }

  [*(a1 + 464) setTintColor:v60];
  if ([*(a1 + 608) type])
  {
    goto LABEL_53;
  }

  v61 = v12;
  v62 = [*(a1 + 608) contentTypeDefault];
  v63 = [v62 icon];
  v64 = [v63 image];
  v65 = [v64 type];

  if (!v65)
  {
    [*(a1 + 464) setBackgroundColor:0];
    goto LABEL_51;
  }

  v12 = v61;
  if (v65 == 1)
  {
    v66 = *(a1 + 464);
    v67 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    [v66 setBackgroundColor:v67];

LABEL_51:
    v12 = v61;
  }

  [v63 style];

  v26 = a2;
LABEL_53:
  v68 = *(a1 + 488);
  if (v68)
  {
    [v68 setAttributedText:v52];
  }

  v69 = *(a1 + 496);
  if (v69)
  {
    [v69 setAttributedText:v54];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKApplicationMessageContentView__updateSubviewsAnimated___block_invoke_2;
  aBlock[3] = &unk_1E8022B28;
  v88 = v26;
  aBlock[4] = a1;
  v70 = _Block_copy(aBlock);
  if (v26)
  {
    v72 = [a1 _shouldReverseLayoutDirection];
    [a1 bounds];
    if (v72)
    {
      v77 = 0x200000101;
    }

    else
    {
      v77 = 0x200000001;
    }

    v71.n128_f64[0] = [(PKApplicationMessageContentView *)a1 _layoutWithContext:v77 bounds:v73, v74, v75, v76];
  }

  v70[2](v70, *(a1 + 408), v49 & 1, v71);
  (v70[2])(v70, *(a1 + 488), (v49 >> 16) & 1);
  (v70[2])(v70, *(a1 + 496), (v49 >> 24) & 1);
  (v70[2])(v70, *(a1 + 464), (v49 >> 8) & 1);
  (v70[2])(v70, *(a1 + 480), v50);
  [a1 setNeedsLayout];
  PKUIViewLayoutIfNeeded(a1, 0, 0);
  v78 = v90;
  *(a1 + 424) = v89;
  *(a1 + 440) = v78;
  *(a1 + 456) = v91;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKApplicationMessageContentView;
  [(PKApplicationMessageContentView *)&v2 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKApplicationMessageContentView;
  [(PKApplicationMessageContentView *)&v9 traitCollectionDidChange:v4];
  v5 = [(PKApplicationMessageContentView *)self traitCollection];
  if (!v4 || ([v4 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [(PKApplicationMessageContentView *)self _updateForTraitCollection:v5];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v12.receiver = self;
  v12.super_class = PKApplicationMessageContentView;
  v5 = [(PKApplicationMessageContentView *)&v12 hitTest:a4 withEvent:a3.x, a3.y];
  if (!v5 || (WeakRetained = objc_loadWeakRetained(&v4->_delegate)) == 0 || (v7 = WeakRetained, v8 = objc_loadWeakRetained(&v4->_delegate), v9 = [v8 isApplicationMessageContentViewSwiped:v4], v8, v7, (v9 & 1) == 0))
  {
    v4 = v5;
  }

  v10 = v4;

  return v4;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKApplicationMessageContentView;
  [(PKApplicationMessageContentView *)&v10 layoutSubviews];
  IsAnimated = PKCATrackedLayoutIsAnimated();
  v4 = [(PKApplicationMessageContentView *)self _shouldReverseLayoutDirection];
  [(PKApplicationMessageContentView *)self bounds];
  v9 = 0x100000000;
  if (v4)
  {
    v9 = 0x100000100;
  }

  [(PKApplicationMessageContentView *)self _layoutWithContext:v5 bounds:v6, v7, v8];
}

- (double)_layoutWithContext:(double)a3 bounds:(double)a4
{
  v155 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0.0;
  }

  v10 = a2 & 0xFFFFFFFF00000000;
  v11 = (a2 & 0xFFFFFFFF00000000) == 0x100000000;
  [*(a1 + 408) sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v121 = a1;
  v12 = [*(a1 + 408) imageView];
  v13 = [v12 image];

  [v13 alignmentRectInsets];
  r2.origin.y = a6;
  PKSizeAlignedInRect();
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  if (v11)
  {
    [*(v121 + 408) setFrame:{v14, v15, v16, v17}];
  }

  v22 = *(v121 + 536);
  if (!v22 || (v23 = v21, v24 = v19, (*(v22 + 16) & 1) == 0))
  {
    v18 = *MEMORY[0x1E695F050];
    v24 = *(MEMORY[0x1E695F050] + 8);
    v20 = *(MEMORY[0x1E695F050] + 16);
    v23 = *(MEMORY[0x1E695F050] + 24);
  }

  r2.origin.x = v18;

  v25 = *(v121 + 504);
  v26 = *(v121 + 512);
  v28 = *(v121 + 520);
  v27 = *(v121 + 528);
  if (v10 == 0x100000000)
  {
    [v121 layoutMargins];
    v30 = fmax(v28, v29);
    v31 = a3 + v26;
    v32 = a4 + v25;
    v33 = a5 - (v26 + v27);
    v34 = r2.origin.y - (v25 + v30);
    [*(v121 + 416) pkui_setFrame:a2 & 1 animated:{v31, a4 + v25, v33, v34}];
  }

  else
  {
    v31 = a3 + v26;
    v33 = a5 - (v26 + v27);
    v35 = v25 + v28;
    v32 = a4 + v25;
    v34 = r2.origin.y - v35;
  }

  v156.origin.x = v31;
  v156.origin.y = v32;
  rect = v33;
  v156.size.width = v33;
  v156.size.height = v34;
  v162.origin.x = r2.origin.x;
  v162.origin.y = v24;
  v162.size.width = v20;
  v162.size.height = v23;
  v157 = CGRectIntersection(v156, v162);
  v158 = CGRectOffset(v157, -v31, -v32);
  width = v158.size.width;
  y = v158.origin.y;
  height = v158.size.height;
  v36 = HIDWORD(a2);
  if ((a2 >> 8))
  {
    v37 = 2;
  }

  else
  {
    v37 = 0x200000000;
  }

  v38 = *(v121 + 536);
  x = v158.origin.x;
  if (v38)
  {
    v39 = *(v38 + 16) | (*(v38 + 20) << 32);
  }

  else
  {
    v39 = 0;
  }

  v145 = 0;
  v146 = &v145;
  v147 = 0x2020000000;
  v148 = 0x4018000000000000;
  v140 = 0;
  v141 = &v140;
  v142 = 0x4010000000;
  v143 = &unk_1BE347799;
  v135 = 0;
  v136 = &v135;
  v137 = 0x4010000000;
  v138 = &unk_1BE347799;
  memset(&v139, 0, sizeof(v139));
  v144.origin = xmmword_1BE116C90;
  v159.size.width = v33;
  v144.size.width = v33;
  v144.size.height = v34;
  v159.origin.x = 0.0;
  v159.origin.y = 6.0;
  v159.size.height = v34;
  CGRectDivide(v159, &v139, &v144, 45.0, v37);
  v40 = *(v121 + 536);
  v112 = v32;
  if (!v40)
  {
    v42 = 0;
LABEL_24:
    PKSizeScaleAspectFit();
    v47 = v46;
    objc_opt_self();
    v44 = v34;
    v45 = v47 * 0.206896552;
    goto LABEL_25;
  }

  v41 = *(v40 + 24);
  v42 = v41;
  if (!v41)
  {
    goto LABEL_24;
  }

  v43 = [v41 style];
  if (!v43)
  {
    goto LABEL_24;
  }

  v44 = v34;
  if (v43 == 1)
  {
    PKPassFrontFaceContentSize();
    PKSizeScaleAspectFit();
    v45 = 4.0;
  }

  else
  {
    v45 = 0.0;
  }

LABEL_25:
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v124 = v49;
  r2.origin.x = v48;
  v123 = v50;
  r2.origin.y = v51;
  if (v36 != 1)
  {
    if ((v39 & 0x100) == 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v146[3] = fmax(r2.origin.y + 6.0, v146[3]);
    v52 = 1;
    goto LABEL_30;
  }

  [*(v121 + 464) pkui_setCornerRadius:a2 & BYTE1(v39) & 1 animated:v45];
  [*(v121 + 464) pkui_setFrame:a2 & BYTE1(v39) & 1 animated:{r2.origin.x, v124, v123, r2.origin.y}];
  [*(v121 + 464) frame];
  CGRectGetMaxX(v160);
  [*(v121 + 464) frame];
  CGRectGetMinY(v161);
  UIRectCenteredAboutPoint();
  [*(v121 + 480) pkui_setFrame:a2 & BYTE4(v39) & 1u animated:?];
  if ((v39 >> 8))
  {
    goto LABEL_29;
  }

LABEL_27:
  v52 = 0;
LABEL_30:

  CGRectDivide(v141[1], v136 + 1, v141 + 1, 13.0, v37);
  p_x = &v141->origin.x;
  v54 = v141[1].origin.x;
  v55 = v141[1].origin.y;
  v56 = v141[1].size.height;
  v113 = v141[1].size.width;
  if (v36 == 1)
  {
    [*(v121 + 464) bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = [*(v121 + 472) image];
    if (v65)
    {
      v66 = *(v121 + 536);
      if (v66)
      {
        v66 = v66[3];
      }

      v67 = v66;
      v68 = [v67 image];
      v69 = [v68 hasBackground];

      if (v69)
      {
        [v65 pkui_alignmentSizeThatFills:{v62, v64}];
      }

      else
      {
        [v65 pkui_alignmentSizeThatFits:v62 maximumScale:{v64, 1.0}];
      }

      v70.n128_f64[0] = v152 + v58 + (v62 - v149) * 0.5;
      v71.n128_f64[0] = v151 + v60 + (v64 - v150) * 0.5;
      v72.n128_f64[0] = v149 - (v152 + v154);
      v74.n128_f64[0] = v151 + v153;
      v73.n128_f64[0] = v150 - (v151 + v153);
      PKRectRoundToPixel(v70, v71, v72, v73, v74);
      v58 = v75;
      v60 = v76;
      v62 = v77;
      v64 = v78;
    }

    [*(v121 + 472) pkui_setFrame:v52 & a2 animated:{v58, v60, v62, v64, *&v112}];

    p_x = &v141->origin.x;
  }

  if (v52)
  {
    v79 = v54;
  }

  else
  {
    v79 = 0.0;
  }

  v80 = 6.0;
  if (v52)
  {
    v80 = v55;
  }

  p_x[4] = v79;
  p_x[5] = v80;
  v81 = rect;
  if (v52)
  {
    v81 = v113;
    v82 = v56;
  }

  else
  {
    v82 = v44;
  }

  p_x[6] = v81;
  p_x[7] = v82;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKApplicationMessageContentView__layoutContentViewWithContext_bounds_occludedBounds___block_invoke;
  aBlock[3] = &unk_1E8022B00;
  *&aBlock[8] = x;
  *&aBlock[9] = y;
  *&aBlock[10] = width;
  *&aBlock[11] = height;
  aBlock[12] = v37;
  v130 = v37;
  v131 = 0;
  v133 = HIDWORD(a2) == 2;
  v134 = HIDWORD(a2) == 1;
  v132 = a2;
  aBlock[4] = v121;
  aBlock[5] = &v140;
  aBlock[6] = &v135;
  aBlock[7] = &v145;
  v118 = _Block_copy(aBlock);
  v118[2](v118, *(v121 + 488), (v39 >> 16) & 1);
  CGRectDivide(v141[1], v136 + 1, v141 + 1, 1.0, CGRectMinYEdge);
  v118[2](v118, *(v121 + 496), (v39 >> 24) & 1);
  if (v36 == 1)
  {
    v127 = 0u;
    v128 = 0u;
    r2.size = 0u;
    v126 = 0u;
    v83 = *(v121 + 544);
    v84 = [v83 countByEnumeratingWithState:&r2.size objects:&v149 count:16];
    if (v84)
    {
      v85 = *v126;
      v86 = MEMORY[0x1E69DDCE0];
      do
      {
        v87 = 0;
        do
        {
          if (*v126 != v85)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*&r2.size.height + 8 * v87);
          if (v88)
          {
            v89 = *(v88 + 8);
            v90 = v86 + 1;
            v91 = v86 + 2;
            v92 = v86 + 3;
            v93 = (v88 + 24);
            if (v89)
            {
              v93 = v86;
            }

            else
            {
              v92 = (v88 + 48);
              v91 = (v88 + 40);
              v90 = (v88 + 32);
            }

            v94 = *v93;
            v95 = *v90;
            v96 = *v91;
            v97 = *v92;
            v88 = *(v88 + 16);
          }

          else
          {
            v89 = 0;
            v97 = 0.0;
            v96 = 0.0;
            v95 = 0.0;
            v94 = 0.0;
          }

          v98 = v88;
          [v98 frame];
          v102 = v101 - (v97 + v95);
          v104 = v103 - (v96 + v94);
          if (v89)
          {
            v105 = v94 + v100;
            if (v89 == 1)
            {
              PKSizeAlignedInRect();
            }

            else
            {
              v106 = v95 + v99;
            }
          }

          else
          {
            PKSizeAlignedInRect();
            v105 = v107;
            v102 = v108;
            v104 = v109;
          }

          [v98 pkui_setFrame:a2 & 1 animated:{v106 - v95, v105 - v94, v102 - (-v97 - v95), v104 - (-v96 - v94), *&v112}];

          ++v87;
        }

        while (v84 != v87);
        v110 = [v83 countByEnumeratingWithState:&r2.size objects:&v149 count:16];
        v84 = v110;
      }

      while (v110);
    }
  }

  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v140, 8);
  _Block_object_dispose(&v145, 8);
  return a5;
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = PKApplicationMessageContentView;
  [(PKApplicationMessageContentView *)&v4 setLayoutMargins:a3.top, a3.left, a3.bottom, a3.right];
  [(PKApplicationMessageContentView *)self setNeedsLayout];
}

- (void)setBlurRadius:(void *)a3 animated:(double)a4 withCompletion:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 592) == a4)
  {
    if (v7)
    {
      (*(v7 + 2))(v7, 1);
    }

    goto LABEL_16;
  }

  v9 = [a1 layer];
  if (!*(a1 + 584))
  {
    v10 = objc_alloc(MEMORY[0x1E6979378]);
    v11 = [v10 initWithType:*MEMORY[0x1E6979928]];
    v12 = *(a1 + 584);
    *(a1 + 584) = v11;

    [*(a1 + 584) setName:@"blur"];
    v19[0] = *(a1 + 584);
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v9 setFilters:v13];

    if (!a2)
    {
      goto LABEL_12;
    }

LABEL_9:
    v14 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.blur.inputRadius"];
    [v14 pkui_updateForAdditiveAnimationFromScalar:*(a1 + 592) toScalar:a4];
    if (v8)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __73__PKApplicationMessageContentView_setBlurRadius_animated_withCompletion___block_invoke;
      v17[3] = &unk_1E8010AD8;
      v18 = v8;
      [v14 pkui_setCompletionHandler:v17];
    }

    v15 = [v9 pkui_addAdditiveAnimation:v14];

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_9;
  }

LABEL_12:
  *(a1 + 592) = a4;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v9 setValue:v16 forKeyPath:@"filters.blur.inputRadius"];

  if (v8 && (a2 & 1) == 0)
  {
    v8[2](v8, 1);
  }

LABEL_16:
}

void __87__PKApplicationMessageContentView__layoutContentViewWithContext_bounds_occludedBounds___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v44 = *(v6 + 32);
  v45 = *(v6 + 48);
  v43 = v5;
  [v5 pkui_sizeThatFits:{*(v6 + 48), 1.79769313e308}];
  v42 = v7;
  v9 = v8;
  v10 = *(*(a1 + 40) + 8);
  v47.origin.x = v10[1].origin.x;
  v47.origin.y = v10[1].origin.y;
  ++v10;
  v47.size.width = v10->size.width;
  v47.size.height = v10->size.height;
  CGRectDivide(v47, (*(*(a1 + 48) + 8) + 32), v10, v9, CGRectMinYEdge);
  v11 = *(a1 + 100);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v48 = CGRectStandardize(*(*(*(a1 + 48) + 8) + 32));
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v50.origin.x = v12;
  v50.origin.y = v13;
  v50.size.width = v14;
  v50.size.height = v15;
  v49 = CGRectIntersection(v48, v50);
  v20 = v49.origin.x;
  v21 = v49.origin.y;
  v22 = v49.size.width;
  v23 = v49.size.height;
  if (!CGRectIsNull(v49))
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        width = fmax(v20 - x, 0.0);
        goto LABEL_2;
      }

      if (v11 == 3)
      {
        height = fmax(v21 - y, 0.0);
        goto LABEL_2;
      }
    }

    else
    {
      if (!v11)
      {
        v41 = x + width;
        x = fmin(v20 + v22, x + width);
        width = v41 - x;
        goto LABEL_2;
      }

      if (v11 == 1)
      {
        v26 = y + height;
        y = fmin(v21 + v23, y + height);
        height = v26 - y;
        goto LABEL_2;
      }
    }

    __break(1u);
    return;
  }

LABEL_2:
  v24 = *(*(a1 + 48) + 8);
  v24[4] = x;
  v24[5] = y;
  v24[6] = width;
  v24[7] = height;
  v25 = *(*(*(a1 + 48) + 8) + 48);
  if (v25 < v42)
  {
    [v43 pkui_sizeThatFits:{v25, 1.79769313e308}];
  }

  PKSizeAlignedInRect();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (*(a1 + 120) == 1)
  {
    [v43 alpha];
    v36 = 0;
    v37 = v35 <= 0.0;
    if (*(a1 + 120) == 1 && v35 > 0.0)
    {
      [v43 frame];
      v37 = 0;
      v36 = v32 != v38;
      if (v34 != v39)
      {
        v36 = 1;
      }
    }
  }

  else
  {
    v36 = 0;
    v37 = 1;
  }

  if ((*(a1 + 121) & 1) == 0 && (v37 || (*(a1 + 120) & 1) == 0 || v36))
  {
    if (v36)
    {
      [(PKApplicationMessageContentView *)*(a1 + 32) _prepareViewForReuse:v43 type:1 state:*(*(a1 + 32) + 432), *(*(a1 + 32) + 440), *(*(a1 + 32) + 448), *(*(a1 + 32) + 456)];
    }

    if (a3)
    {
      goto LABEL_19;
    }

LABEL_21:
    v40 = *(*(a1 + 40) + 8);
    *(v40 + 32) = v44;
    *(v40 + 48) = v45;
    goto LABEL_22;
  }

  [v43 pkui_setFrame:(*(a1 + 112) & a3) animated:{v28, v30, v32, v34}];
  if (!a3)
  {
    goto LABEL_21;
  }

LABEL_19:
  *(*(*(a1 + 56) + 8) + 24) = fmax(v30 + v34, *(*(*(a1 + 56) + 8) + 24));
LABEL_22:
}

- (double)_prepareViewForReuse:(int)a3 type:(double)a4 state:(double)a5
{
  v13 = a2;
  v14 = v13;
  if (a1)
  {
    v15 = [v13 superview];
    if (v15)
    {
      v16 = [v14 snapshotViewAfterScreenUpdates:0];
      if (v16)
      {
        [v14 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = [v14 layer];
        v26 = [v25 presentationLayer];
        v27 = v26;
        if (v26)
        {
          [v26 anchorPoint];
          v29 = v28;
          v61 = v30;
          [v27 position];
          v31 = a5;
          v32 = a7;
          v34 = v33;
          v62 = a4;
          v35 = a6;
          v37 = v36;
          [v27 bounds];
          v22 = v38;
          v24 = v39;
          v18 = v34 - v29 * v38;
          a7 = v32;
          a5 = v31;
          v20 = v37 - v61 * v39;
          a6 = v35;
          a4 = v62;
        }

        [v16 setFrame:{v18, v20, v22, v24}];
        [v15 addSubview:v16];
        v40 = [v16 layer];
        [v40 setAllowsGroupOpacity:{objc_msgSend(v25, "allowsGroupOpacity")}];
        v41 = [v25 compositingFilter];
        [v40 setCompositingFilter:v41];

        v42 = [PKApplicationMessageContentView_SubviewSnapshot alloc];
        [v14 alignmentRectInsets];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v51 = v16;
        if (v42)
        {
          v69.receiver = v42;
          v69.super_class = PKApplicationMessageContentView_SubviewSnapshot;
          v52 = objc_msgSendSuper2(&v69, sel_init);
          v53 = v52;
          if (v52)
          {
            objc_storeStrong(v52 + 2, v16);
            v53[3] = v44;
            v53[4] = v46;
            v53[5] = v48;
            v53[6] = v50;
            *(v53 + 2) = a3;
            *(v53 + 7) = a4;
            *(v53 + 8) = a5;
            *(v53 + 9) = a6;
            *(v53 + 10) = a7;
          }

          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        v55 = *(a1 + 544);
        [v55 addObject:v54];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __67__PKApplicationMessageContentView__prepareViewForReuse_type_state___block_invoke;
        v65[3] = &unk_1E8012798;
        v66 = v51;
        v67 = v55;
        v68 = v54;
        v56 = v54;
        v57 = v55;
        v69.receiver = 0;
        _PKViewSetAlphaAnimated(v66, v65, &v69, 0.0, 0.0);
        v58 = *&v69.receiver;
      }

      else
      {
        v58 = 0.0;
      }
    }

    else
    {
      v58 = 0.0;
    }

    v59 = MEMORY[0x1E69DD250];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __67__PKApplicationMessageContentView__prepareViewForReuse_type_state___block_invoke_2;
    v63[3] = &unk_1E8010970;
    v64 = v14;
    [v59 performWithoutAnimation:v63];
  }

  else
  {
    v58 = 0.0;
  }

  return v58;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PKApplicationMessageContentView *)self _shouldReverseLayoutDirection];
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  if (v6)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PKApplicationMessageContentView *)self _layoutWithContext:v9 bounds:v7, v8, width, height];
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)performBatchUpdates:(uint64_t)a3 animated:
{
  v5 = a2;
  if (a1 && v5)
  {
    v7 = v5;
    if (a1[576] == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKApplicationMessageContentView recursive batch updates are not supported."];
      v5 = v7;
    }

    if (a3)
    {
      [a1 layoutIfNeeded];
      v5 = v7;
    }

    a1[576] = 1;
    v5[2]();
    a1[576] = 0;
    v6 = a1[577];
    a1[577] = 0;
    if (v6 == 1)
    {
      [(PKApplicationMessageContentView *)a1 _updateSubviewsAnimated:a3];
    }

    else
    {
      PKUIViewLayoutIfNeeded(a1, a3, 0);
    }

    v5 = v7;
  }
}

void __59__PKApplicationMessageContentView__updateSubviewsAnimated___block_invoke_2(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a3;
  if (*(a1 + 40) == 1)
  {
    v6 = 0.0;
    if (a3)
    {
      v6 = *(*(a1 + 32) + 424);
    }

    v7[1] = v3;
    v7[2] = v4;
    _PKViewSetAlphaAnimated(a2, 0, v7, v5, v6);
  }

  else
  {

    [a2 pkui_setAlpha:0 animated:v5];
  }
}

uint64_t __67__PKApplicationMessageContentView__prepareViewForReuse_type_state___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 removeObjectIdenticalTo:v3];
}

void __67__PKApplicationMessageContentView__prepareViewForReuse_type_state___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 removeAllAnimations];
  [*(a1 + 32) setAlpha:0.0];
  [v2 clearHasBeenCommitted];
}

- (void)setContent:(int)a3 animated:
{
  v6 = a2;
  if (a1 && *(a1 + 608) != v6)
  {
    v7 = v6;
    if (a3 && (*(a1 + 576) & 1) == 0)
    {
      [a1 layoutIfNeeded];
    }

    objc_storeStrong((a1 + 608), a2);
    [(PKApplicationMessageContentView *)a1 _updateSubviewsAnimated:a3];
    v6 = v7;
  }
}

@end