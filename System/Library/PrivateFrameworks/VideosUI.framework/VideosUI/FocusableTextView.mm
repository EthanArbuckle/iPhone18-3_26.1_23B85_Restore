@interface FocusableTextView
+ (FocusableTextView)textViewWithAttributedString:(id)a3 textLayout:(id)a4 existingTextView:(id)a5;
- (BOOL)shouldShowMoreLabel;
- (CGRect)_getStartAndEndIndexOfLastVisibleLine:(id)a3 startIndex:(unint64_t *)a4 endIndex:(unint64_t *)a5;
- (CGRect)_makeLastLineBreakByClipping;
- (CGRect)_moreLabelExclusionPathFrame;
- (CGRect)_moreLabelFrame;
- (CGSize)computeSizeThatFits:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (FocusableTextView)initWithTextLayout:(id)a3;
- (double)_bottomBaselineOffset;
- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4;
- (id)_createMoreButtonMaskFade;
- (id)makeTextView;
- (unint64_t)maximumNumberOfLines;
- (void)_configureAlignmentWithTextAlignment:(int64_t)a3 allowsTextAlignmentOverride:(BOOL)a4;
- (void)_recomputeTextSizeIfNeeded;
- (void)_selectButtonAction:(id)a3;
- (void)_updateTextColor;
- (void)_updateTextColorsIfNeeded;
- (void)configureMoreButtonMaskWithMaskFrame:(CGRect)a3 moreLabelFrame:(CGRect)a4;
- (void)layoutSubviews_iOSAndMacOS;
- (void)setDescriptionText:(id)a3;
- (void)setDescriptionTextAlignment:(int64_t)a3;
- (void)setDescriptionTextColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMaximumNumberOfLines:(unint64_t)a3;
- (void)setMoreLabelTextColor:(id)a3;
- (void)setSelectable:(BOOL)a3;
- (void)setupViews_iOSAndMacOS;
- (void)tintColorDidChange;
@end

@implementation FocusableTextView

+ (FocusableTextView)textViewWithAttributedString:(id)a3 textLayout:(id)a4 existingTextView:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = [[FocusableTextView alloc] initWithTextLayout:v7];
  }

  v11 = v10;
  v12 = [(FocusableTextView *)v10 computationLabel];
  v13 = [VUILabel labelWithString:@"Lorem" textLayout:v7 existingLabel:v12];

  [(FocusableTextView *)v11 setComputationLabel:v13];
  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  v15 = [v14 vuiTraitCollection];

  -[FocusableTextView setMaximumNumberOfLines:](v11, "setMaximumNumberOfLines:", [v7 numberOfLinesForTraitCollection:v15]);
  [(FocusableTextView *)v11 _updateTextColor];
  [(FocusableTextView *)v11 setDescriptionText:v9];

  -[FocusableTextView _configureAlignmentWithTextAlignment:allowsTextAlignmentOverride:](v11, "_configureAlignmentWithTextAlignment:allowsTextAlignmentOverride:", [v7 alignment], objc_msgSend(v7, "allowsTextAlignmentOverride"));

  return v11;
}

- (FocusableTextView)initWithTextLayout:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = FocusableTextView;
  v5 = [(FocusableTextView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(FocusableTextView *)v5 setTextLayout:v4];
    v6->_showMoreForTruncation = 1;
    v7 = _os_feature_enabled_impl();
    if (v7)
    {
      LOBYTE(v7) = [v4 seeMoreHasPlatter];
    }

    v6->_hasPlatterBehindMoreLabel = v7;
    v8 = [MEMORY[0x1E69DC888] clearColor];
    v22.receiver = v6;
    v22.super_class = FocusableTextView;
    [(FocusableTextView *)&v22 setVuiBackgroundColor:v8];

    [(FocusableTextView *)v6 setupViews_iOSAndMacOS];
    objc_initWeak(&location, v6);
    v25[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __40__FocusableTextView_initWithTextLayout___block_invoke;
    v19[3] = &unk_1E872E760;
    objc_copyWeak(&v20, &location);
    [(FocusableTextView *)v6 vui_registerForTraitChanges:v9 withHandler:v19];

    v24 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __40__FocusableTextView_initWithTextLayout___block_invoke_2;
    v17 = &unk_1E872E760;
    objc_copyWeak(&v18, &location);
    [(FocusableTextView *)v6 vui_registerForTraitChanges:v10 withHandler:&v14];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v6 selector:sel__contrastSettingsDidChange name:*MEMORY[0x1E69DD8B8] object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v6 selector:sel__transparencySettingsDidChange name:*MEMORY[0x1E69DD920] object:0];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__FocusableTextView_initWithTextLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTextColor];
}

void __40__FocusableTextView_initWithTextLayout___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained textLayout];
  v2 = [WeakRetained vuiTraitCollection];
  v3 = [v1 numberOfLinesForTraitCollection:v2];

  [WeakRetained setMaximumNumberOfLines:v3];
  [WeakRetained vui_setNeedsLayout];
}

- (void)setDescriptionTextColor:(id)a3
{
  v5 = a3;
  if (self->_descriptionTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_descriptionTextColor, a3);
    [(FocusableTextView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setDescriptionTextAlignment:(int64_t)a3
{
  if (self->_descriptionTextAlignment != a3)
  {
    self->_descriptionTextAlignment = a3;
    [(FocusableTextView *)self vui_setNeedsLayout];
  }
}

- (void)setMoreLabelTextColor:(id)a3
{
  v5 = a3;
  if (self->_moreLabelTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_moreLabelTextColor, a3);
    [(VUITextLayout *)self->_textLayout setSeeMoreTextColor:v6];
    [(FocusableTextView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)_updateTextColorsIfNeeded
{
  if (self->_descriptionTextColor)
  {
    v3 = [(FocusableTextView *)self _accessibilityHigherContrastTintColorForColor:?];
    [(VUITextView *)self->_descriptionTextView setTextColor:v3];
  }

  if (self->_moreLabelTextColor)
  {
    moreLabel = self->_moreLabel;

    [(VUILabel *)moreLabel setTextColor:?];
  }
}

- (id)makeTextView
{
  v3 = [VUITextView alloc];
  v4 = [(VUITextView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(VUITextView *)v4 setVuiBackgroundColor:0];
  v5 = [(VUITextView *)v4 textContainer];
  [v5 lineFragmentPadding];
  self->_defaultLineFragmentPadding = v6;

  v7 = [(VUITextView *)v4 textContainer];
  [v7 setLineFragmentPadding:0.0];

  [(VUITextView *)v4 setVuiTextContainerInset:0.0, 0.0, 0.0, 0.0];
  [(VUITextView *)v4 setEditable:0];
  [(VUITextView *)v4 setScrollEnabled:0];
  [(VUITextView *)v4 setUserInteractionEnabled:0];
  [(VUITextView *)v4 setAdjustsFontForContentSizeCategory:1];
  [(VUITextView *)v4 setSelectable:0];
  v8 = [(VUITextView *)v4 vuiLayer];
  [v8 setCornerRadius:0.0];

  v9 = [(VUITextView *)v4 textContainer];
  [v9 setMaximumNumberOfLines:0];

  v10 = [(VUITextView *)v4 textContainer];
  [v10 setLineBreakMode:2];

  return v4;
}

- (void)setupViews_iOSAndMacOS
{
  v3 = [(FocusableTextView *)self makeTextView];
  auxilliaryTextView = self->_auxilliaryTextView;
  self->_auxilliaryTextView = v3;

  [(FocusableTextView *)self addSubview:self->_auxilliaryTextView];
  [(VUITextView *)self->_auxilliaryTextView setAlpha:0.0];
  self->_descriptionTextAlignment = 4;
  v5 = [(FocusableTextView *)self makeTextView];
  descriptionTextView = self->_descriptionTextView;
  self->_descriptionTextView = v5;

  [(FocusableTextView *)self addSubview:self->_descriptionTextView];
  v7 = [(FocusableTextView *)self textLayout];
  v20 = [v7 copy];

  [v20 setFontWeight:10];
  if ([(FocusableTextView *)self hasPlatterBehindMoreLabel])
  {
    [v20 setPadding:{2.0, 7.0, 2.0, 7.0}];
  }

  [v20 setColor:0];
  [v20 setTextStyle:21];
  [v20 setEnableAXUnderlineButtonShape:1];
  v8 = +[VUILocalizationManager sharedInstance];
  v9 = [v8 localizedStringForKey:@"MORE"];

  v10 = [v9 localizedUppercaseString];

  v11 = [VUILabel labelWithString:v10 textLayout:v20 existingLabel:self->_moreLabel];
  moreLabel = self->_moreLabel;
  self->_moreLabel = v11;

  [(VUILabel *)self->_moreLabel setAdjustsFontForContentSizeCategory:1];
  [(VUILabel *)self->_moreLabel setUserInteractionEnabled:1];
  if ([(FocusableTextView *)self hasPlatterBehindMoreLabel])
  {
    v13 = self->_moreLabel;
    v14 = [MEMORY[0x1E69DC888] vui_secondaryFillColor];
    [(VUILabel *)v13 setVuiBackgroundColor:v14];
  }

  v15 = self->_moreLabel;
  v16 = [MEMORY[0x1E69DB878] vui_fontFromTextLayout:v20];
  [(VUILabel *)v15 setFont:v16];

  [(VUILabel *)self->_moreLabel sizeToFit];
  [(FocusableTextView *)self addSubview:self->_moreLabel];
  v17 = self->_moreLabel;
  [(FocusableTextView *)self _moreLabelFrame];
  [(VUILabel *)v17 setFrame:?];
  v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__selectButtonAction_];
  moreLabelTapGestureRecognizer = self->_moreLabelTapGestureRecognizer;
  self->_moreLabelTapGestureRecognizer = v18;

  [(VUILabel *)self->_moreLabel addGestureRecognizer:self->_moreLabelTapGestureRecognizer];
}

- (void)layoutSubviews_iOSAndMacOS
{
  [(FocusableTextView *)self bounds];
  if (v5 == 0.0 || (v7 = v6, v6 == 0.0))
  {
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    [(VUITextView *)self->_descriptionTextView setFrame:*MEMORY[0x1E695F058], v23, v24, v25];
    moreLabel = self->_moreLabel;

    [(VUILabel *)moreLabel setFrame:v22, v23, v24, v25];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v10 = v5;
    [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
    v12 = v9 - v11;
    [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
    v14 = v13;
    [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
    v16 = v7 + v14 + v15;
    [(VUITextView *)self->_descriptionTextView setFrame:v8, v12, v10, v16];
    [(VUITextView *)self->_descriptionTextView setVuiTextAlignment:self->_descriptionTextAlignment];
    v17 = self->_moreLabel;
    [(FocusableTextView *)self _moreLabelFrame];
    [(VUILabel *)v17 setFrame:?];
    if ([(FocusableTextView *)self hasPlatterBehindMoreLabel])
    {
      v18 = [(VUILabel *)self->_moreLabel vuiLayer];
      [v18 setMasksToBounds:1];

      [(VUILabel *)self->_moreLabel frame];
      [(VUILabel *)self->_moreLabel _setContinuousCornerRadius:v19 * 0.5];
    }

    [(FocusableTextView *)self _recomputeTextSizeIfNeeded];
    v20 = [(FocusableTextView *)self shouldShowMoreLabel];
    v21 = self->_moreLabel;
    if (v20)
    {
      [(VUILabel *)v21 setHidden:0];
      [(FocusableTextView *)self _moreLabelExclusionPathFrame];
      [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
    }

    else
    {
      [(VUILabel *)v21 setHidden:1];
      v27 = [(VUITextView *)self->_descriptionTextView textContainer];
      [v27 setExclusionPaths:MEMORY[0x1E695E0F0]];
    }

    v28 = *MEMORY[0x1E695EFF8];
    v29 = *(MEMORY[0x1E695EFF8] + 8);
    [(FocusableTextView *)self _moreLabelFrame];
    [(FocusableTextView *)self configureMoreButtonMaskWithMaskFrame:v28 moreLabelFrame:v29, v10, v16, v30, v31, v32, v33];

    [(FocusableTextView *)self _updateTextColorsIfNeeded];
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    [(FocusableTextView *)self computeSizeThatFits:a3.width, a3.height];
    width = v6;
    height = v7;
  }

  else
  {
    [(FocusableTextView *)self layoutSubviews_iOSAndMacOS];
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)computeSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(FocusableTextView *)self maximumNumberOfLines];
  v7 = [(VUITextView *)self->_auxilliaryTextView textContainer];
  [v7 setMaximumNumberOfLines:v6];

  [(VUITextView *)self->_auxilliaryTextView vui_sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
  v13 = v12;
  [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
  v15 = v11 - (v13 + v14);
  v16 = [(FocusableTextView *)self vuiTraitCollection];
  LODWORD(v7) = [v16 isAXEnabled];

  if (v7)
  {
    v17 = MEMORY[0x1E69DF6D0];
    v18 = [(FocusableTextView *)self vuiTraitCollection];
    [v17 scaleContentSizeValue:v18 forTraitCollection:5.0];
    v15 = v15 + v19;
  }

  if (width <= 0.0)
  {
    v20 = v9;
  }

  else
  {
    v20 = width;
  }

  v21 = v15;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(FocusableTextView *)self bounds];
  Width = CGRectGetWidth(v8);

  [(FocusableTextView *)self computeSizeThatFits:Width, 0.0];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(FocusableTextView *)self frame];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    [(FocusableTextView *)self _setNeedsTextSizeComputation];
  }

  v8.receiver = self;
  v8.super_class = FocusableTextView;
  [(FocusableTextView *)&v8 setFrame:x, y, width, height];
}

- (void)setSelectable:(BOOL)a3
{
  v3 = a3;
  self->_selectable = a3;
  [(VUIBaseView *)self setVuiUserInteractionEnabled:?];
  [(VUITextView *)self->_descriptionTextView setVuiUserInteractionEnabled:v3];
  descriptionTextView = self->_descriptionTextView;

  [(VUITextView *)descriptionTextView setSelectable:v3];
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
    v7 = *MEMORY[0x1E69DB688];
    v8 = [v5 length];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__FocusableTextView_setDescriptionText___block_invoke;
    v23[3] = &unk_1E8736F48;
    v9 = v6;
    v24 = v9;
    [v5 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v23}];
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      objc_initWeak(&location, self);
      v10 = [v5 length];
      v11 = *MEMORY[0x1E69DB650];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __40__FocusableTextView_setDescriptionText___block_invoke_2;
      v19 = &unk_1E8736F70;
      objc_copyWeak(&v21, &location);
      v20 = v9;
      [v5 enumerateAttribute:v11 inRange:0 options:v10 usingBlock:{0, &v16}];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    descriptionTextView = self->_descriptionTextView;
    v13 = [v9 copy];
    [(VUITextView *)descriptionTextView setVuiAttributedText:v13];

    auxilliaryTextView = self->_auxilliaryTextView;
    v15 = [v9 copy];
    [(VUITextView *)auxilliaryTextView setVuiAttributedText:v15];

    [(FocusableTextView *)self _setNeedsTextSizeComputation];
    [(FocusableTextView *)self vui_setNeedsLayout];
  }
}

void __40__FocusableTextView_setDescriptionText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v16;
  if (isKindOfClass)
  {
    v9 = [v16 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    }

    v12 = v11;

    [v12 setLineBreakMode:0];
    [v12 setAlignment:4];
    v13 = *MEMORY[0x1E69DB688];
    [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB688] range:{a3, a4}];
    v14 = *(a1 + 32);
    v15 = [v12 copy];
    [v14 addAttribute:v13 value:v15 range:{a3, a4}];

    v8 = v16;
  }
}

void __40__FocusableTextView_setDescriptionText___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _accessibilityHigherContrastTintColorForColor:v7];

    v10 = *MEMORY[0x1E69DB650];
    [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB650] range:{a3, a4}];
    [*(a1 + 32) addAttribute:v10 value:v9 range:{a3, a4}];
  }
}

- (void)setMaximumNumberOfLines:(unint64_t)a3
{
  if ([(FocusableTextView *)self maximumNumberOfLines]!= a3)
  {
    v5 = [(VUITextView *)self->_descriptionTextView textContainer];
    [v5 setMaximumNumberOfLines:a3];

    [(FocusableTextView *)self _setNeedsTextSizeComputation];

    [(FocusableTextView *)self vui_setNeedsLayout];
  }
}

- (unint64_t)maximumNumberOfLines
{
  v2 = [(VUITextView *)self->_descriptionTextView textContainer];
  v3 = [v2 maximumNumberOfLines];

  return v3;
}

- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4
{
  if (a3)
  {
    [(VUILabel *)self->_computationLabel topMarginToLabel:a4 withBaselineMargin:?];
  }

  else
  {
    [(FocusableTextView *)self topMarginWithBaselineMargin:a4];
  }

  return result;
}

- (double)_bottomBaselineOffset
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
  v4 = v3;
  v5 = [(VUITextView *)self->_descriptionTextView textLayoutManager];
  v6 = [v5 documentRange];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__FocusableTextView__bottomBaselineOffset__block_invoke;
  v10[3] = &unk_1E8736F98;
  v10[4] = v11;
  v10[5] = v4;
  [v5 enumerateTextSegmentsInRange:v6 type:0 options:0 usingBlock:v10];
  [(VUITextView *)self->_descriptionTextView bounds];
  VUIRoundValue();
  v8 = v7;

  _Block_object_dispose(v11, 8);
  return v8;
}

uint64_t __42__FocusableTextView__bottomBaselineOffset__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  v8 = a3 + *(a1 + 40) + a6;
  if (v7 < v8)
  {
    v7 = v8;
  }

  *(v6 + 24) = v7;
  return 1;
}

- (void)_recomputeTextSizeIfNeeded
{
  if (self->_needsTextSizeComputation)
  {
    self->_needsTextSizeComputation = 0;
    [(VUITextView *)self->_descriptionTextView bounds];
    v4 = v3;
    v6 = v5;
    if ([(FocusableTextView *)self maximumNumberOfLines])
    {
      v7 = [(VUITextView *)self->_auxilliaryTextView textContainer];
      [v7 setMaximumNumberOfLines:{-[FocusableTextView maximumNumberOfLines](self, "maximumNumberOfLines")}];

      [(VUITextView *)self->_auxilliaryTextView vui_sizeThatFits:v4, 0.0];
      v9 = v8;
      v10 = [(VUITextView *)self->_auxilliaryTextView textContainer];
      [v10 setMaximumNumberOfLines:{-[FocusableTextView maximumNumberOfLines](self, "maximumNumberOfLines") + 1}];

      [(VUITextView *)self->_auxilliaryTextView vui_sizeThatFits:v4, 0.0];
      v12 = v11 > v9;
      if (v9 > v6)
      {
        v12 = 1;
      }

      self->_textTruncating = v12;
    }

    else
    {
      self->_textTruncating = 0;
    }
  }
}

- (CGRect)_moreLabelExclusionPathFrame
{
  [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
  v4 = v3;
  v6 = v5;
  [(FocusableTextView *)self _moreLabelFrame];
  v8 = v7;
  v10 = v9 - v6;
  v12 = v11 - v4;
  v14 = v13 + 0.0;
  defaultLineFragmentPadding = self->_defaultLineFragmentPadding;
  v16 = [(VUITextView *)self->_descriptionTextView textContainer];
  [v16 lineFragmentPadding];
  v18 = defaultLineFragmentPadding - v17;

  v19 = v10 - v18;
  v20 = v14 + v18;
  v21 = v12;
  v22 = v8;
  result.size.height = v22;
  result.size.width = v20;
  result.origin.y = v21;
  result.origin.x = v19;
  return result;
}

- (id)_createMoreButtonMaskFade
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979380] layer];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  v12[0] = [v4 CGColor];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v12[1] = [v5 CGColor];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v3 setColors:v6];

  v7 = [(VUITextView *)self->_descriptionTextView vuiText];
  v8 = [v7 _isNaturallyRTL];

  if (v8)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (v8)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [v3 setStartPoint:{v9, 0.5}];
  [v3 setEndPoint:{v10, 0.5}];
  [v3 setLocations:&unk_1F5E5EBB0];
  [v3 setCompositingFilter:*MEMORY[0x1E69798E8]];
  [v3 setMasksToBounds:1];

  return v3;
}

- (void)configureMoreButtonMaskWithMaskFrame:(CGRect)a3 moreLabelFrame:(CGRect)a4
{
  width = a4.size.width;
  height = a3.size.height;
  v6 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(VUILabel *)self->_moreLabel isHidden:a3.origin.x];
  moreButtonMask = self->_moreButtonMask;
  if (v10)
  {
    self->_moreButtonMask = 0;

    moreButtonMaskFade = self->_moreButtonMaskFade;
    self->_moreButtonMaskFade = 0;
  }

  else
  {
    if (!moreButtonMask)
    {
      v13 = objc_alloc_init(MEMORY[0x1E6979398]);
      v14 = self->_moreButtonMask;
      self->_moreButtonMask = v13;

      v15 = [MEMORY[0x1E69DC888] whiteColor];
      -[CALayer setBackgroundColor:](self->_moreButtonMask, "setBackgroundColor:", [v15 CGColor]);

      [(CALayer *)self->_moreButtonMask setMasksToBounds:1];
      v16 = [(FocusableTextView *)self _createMoreButtonMaskFade];
      v17 = self->_moreButtonMaskFade;
      self->_moreButtonMaskFade = v16;

      [(CALayer *)self->_moreButtonMask addSublayer:self->_moreButtonMaskFade];
      moreButtonMask = self->_moreButtonMask;
    }

    [(CALayer *)moreButtonMask setFrame:x, y, v6, height];
    [(FocusableTextView *)self _makeLastLineBreakByClipping];
    v19 = v18;
    [(VUITextView *)self->_descriptionTextView vuiTextContainerInset];
    v21 = v19 + v20;
    v22 = width * 1.5;
    v23 = [(VUITextView *)self->_descriptionTextView vuiText];
    v24 = [v23 _isNaturallyRTL];

    v25 = v6 - v22;
    if (v24)
    {
      v25 = 0.0;
    }

    [(CAGradientLayer *)self->_moreButtonMaskFade setFrame:v25, v21, v22, height - v21];
  }

  v26 = [(VUITextView *)self->_descriptionTextView layer];
  [v26 setMask:self->_moreButtonMask];
}

- (CGRect)_getStartAndEndIndexOfLastVisibleLine:(id)a3 startIndex:(unint64_t *)a4 endIndex:(unint64_t *)a5
{
  v7 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4010000000;
  v22 = &unk_1E44FDE95;
  v8 = *(MEMORY[0x1E695F058] + 16);
  v23 = *MEMORY[0x1E695F058];
  v24 = v8;
  v9 = [v7 documentRange];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__FocusableTextView__getStartAndEndIndexOfLastVisibleLine_startIndex_endIndex___block_invoke;
  v18[3] = &unk_1E8736FC0;
  v18[4] = &v19;
  v18[5] = &v25;
  v18[6] = &v29;
  [v7 enumerateTextSegmentsInRange:v9 type:0 options:0 usingBlock:v18];
  *a4 = v26[3];
  *a5 = v30[3];
  v10 = v20[4];
  v11 = v20[5];
  v12 = v20[6];
  v13 = v20[7];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

uint64_t __79__FocusableTextView__getStartAndEndIndexOfLastVisibleLine_startIndex_endIndex___block_invoke(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = *(a1[4] + 8);
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v8 = [a2 range];
  *(*(a1[5] + 8) + 24) = v8;
  *(*(a1[6] + 8) + 24) = v8 + v9;
  return 1;
}

- (CGRect)_makeLastLineBreakByClipping
{
  v30 = 0;
  v31 = 0;
  v3 = [(VUITextView *)self->_descriptionTextView vuiAttributedText];
  v4 = [v3 mutableCopy];
  v5 = [(VUITextView *)self->_descriptionTextView textLayoutManager];
  [(FocusableTextView *)self _getStartAndEndIndexOfLastVisibleLine:v5 startIndex:&v31 endIndex:&v30];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v30;
  v15 = v31;
  if (v14 <= [v3 length])
  {
    v16 = v14 - v15;
    v17 = *MEMORY[0x1E69DB688];
    v18 = v31;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __49__FocusableTextView__makeLastLineBreakByClipping__block_invoke;
    v28[3] = &unk_1E8736F48;
    v19 = v4;
    v29 = v19;
    [v3 enumerateAttribute:v17 inRange:v18 options:v16 usingBlock:{0, v28}];
    descriptionTextView = self->_descriptionTextView;
    v21 = [v19 copy];
    [(VUITextView *)descriptionTextView setVuiAttributedText:v21];

    auxilliaryTextView = self->_auxilliaryTextView;
    v23 = [v19 copy];
    [(VUITextView *)auxilliaryTextView setVuiAttributedText:v23];
  }

  v24 = v7;
  v25 = v9;
  v26 = v11;
  v27 = v13;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

void __49__FocusableTextView__makeLastLineBreakByClipping__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v16;
  if (isKindOfClass)
  {
    v9 = [v16 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    }

    v12 = v11;

    [v12 setLineBreakMode:2];
    [v12 setAlignment:4];
    v13 = *MEMORY[0x1E69DB688];
    [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB688] range:{a3, a4}];
    v14 = *(a1 + 32);
    v15 = [v12 copy];
    [v14 addAttribute:v13 value:v15 range:{a3, a4}];

    v8 = v16;
  }
}

- (CGRect)_moreLabelFrame
{
  v3 = [(VUITextView *)self->_descriptionTextView vuiText];
  v4 = [v3 _isNaturallyRTL];

  [(VUITextView *)self->_descriptionTextView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(VUILabel *)self->_moreLabel sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v14 = v13;
  v16 = v15;
  v17 = 3.0;
  if ((v4 & 1) == 0)
  {
    v32.origin.x = v6;
    v32.origin.y = v8;
    v32.size.width = v10;
    v32.size.height = v12;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = v14;
    v33.size.height = v16;
    v17 = MaxX - CGRectGetWidth(v33) + -3.0;
  }

  v34.origin.y = 0.0;
  v34.origin.x = v17;
  v34.size.width = v14;
  v34.size.height = v16;
  Width = CGRectGetWidth(v34);
  if (![(FocusableTextView *)self hasPlatterBehindMoreLabel])
  {
    v14 = v14 + 3.0;
  }

  if (v4)
  {
    v35.origin.y = 0.0;
    v35.origin.x = v17;
    v35.size.width = v14;
    v35.size.height = v16;
    v17 = v17 + Width - CGRectGetWidth(v35);
  }

  v20 = [(VUITextView *)self->_descriptionTextView vuiAttributedText];
  v36.origin.x = v6;
  v36.origin.y = v8;
  v36.size.width = v10;
  v36.size.height = v12;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = v17;
  v37.origin.y = 0.0;
  v37.size.width = v14;
  v37.size.height = v16;
  v22 = floor(MaxY - CGRectGetHeight(v37));
  if ([v20 length])
  {
    [(FocusableTextView *)self _bottomBaselineOffset];
    v24 = v23;
    [(VUILabel *)self->_moreLabel vui_baselineOffsetFromBottom];
    v22 = v22 + v25 - v24;
  }

  if ([(FocusableTextView *)self hasPlatterBehindMoreLabel])
  {
    v26 = [(FocusableTextView *)self moreLabel];
    [v26 padding];
    v22 = v22 + v27;
  }

  v28 = v17;
  v29 = v22;
  v30 = v14;
  v31 = v16;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = FocusableTextView;
  [(FocusableTextView *)&v4 tintColorDidChange];
  if ([(FocusableTextView *)self tintAdjustmentMode]== 2)
  {
    [MEMORY[0x1E69DC888] systemMidGrayColor];
  }

  else
  {
    [(FocusableTextView *)self moreLabelTextColor];
  }
  v3 = ;
  [(VUILabel *)self->_moreLabel setTextColor:v3];
}

- (void)_updateTextColor
{
  v12 = [(VUITextLayout *)self->_textLayout color];
  v3 = [(VUITextLayout *)self->_textLayout seeMoreTextColor];
  if (!v3)
  {
    v3 = v12;
  }

  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v4 = [(VUITextLayout *)self->_textLayout highContrastTintColor];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = v12;
    }

    else
    {
      v8 = [(FocusableTextView *)self _accessibilityHigherContrastTintColorForColor:v12];
      v7 = v12;
      v6 = v8;
    }

    v12 = v6;
  }

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v9 = [v12 colorByRemovingTransparency];

    v10 = [v3 colorByRemovingTransparency];

    v3 = v10;
    v11 = v9;
  }

  else
  {
    v11 = v12;
  }

  v13 = v11;
  [(FocusableTextView *)self setDescriptionTextColor:v11];
  [(FocusableTextView *)self setMoreLabelTextColor:v3];
}

- (void)_configureAlignmentWithTextAlignment:(int64_t)a3 allowsTextAlignmentOverride:(BOOL)a4
{
  v4 = a3;
  if (a4 && ((a3 == 4) & [(FocusableTextView *)self vuiIsRTL]) != 0)
  {
    v4 = 2;
  }

  [(FocusableTextView *)self setDescriptionTextAlignment:v4];
}

- (void)_selectButtonAction:(id)a3
{
  v4 = a3;
  if (self->_selectionHandler)
  {
    v6 = v4;
    v5 = [(FocusableTextView *)self shouldShowMoreLabel];
    v4 = v6;
    if (v5)
    {
      (*(self->_selectionHandler + 2))();
      v4 = v6;
    }
  }
}

- (BOOL)shouldShowMoreLabel
{
  if (self->_textTruncating)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = _os_feature_enabled_impl();
    if (v2)
    {
      LOBYTE(v2) = ![(FocusableTextView *)self showMoreForTruncation];
    }
  }

  return v2;
}

@end