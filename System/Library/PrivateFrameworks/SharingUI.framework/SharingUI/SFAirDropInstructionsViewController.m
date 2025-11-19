@interface SFAirDropInstructionsViewController
- (CGSize)_cachedPreferredItemSize;
- (double)_titleLabelHeight;
- (id)_fontWithStyle:(id)a3 maxSizeCategory:(id)a4 traits:(unsigned int)a5;
- (id)attributedStringWithTitle:(id)a3 content:(id)a4;
- (void)_layoutiOSSubviews;
- (void)_updateFontSizes;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePreferredContentSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SFAirDropInstructionsViewController

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = SFAirDropInstructionsViewController;
  [(SFAirDropInstructionsViewController *)&v23 viewDidLoad];
  v3 = [(SFAirDropInstructionsViewController *)self _airDropText];
  [(SFAirDropInstructionsViewController *)self setTitle:v3];

  v4 = [(SFAirDropInstructionsViewController *)self view];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setOpaque:0];
  v6 = objc_alloc_init(SFCollectionViewLayout);
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v6;

  [(SFCollectionViewLayout *)self->_collectionViewLayout setFallbackDelegate:self];
  v8 = [SFAirDropActiveIconView alloc];
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v13 = [(SFAirDropActiveIconView *)v8 initWithFrame:0 grayscale:*MEMORY[0x1E695F058], v10, v11, v12];
  airDropActiveIconView = self->_airDropActiveIconView;
  self->_airDropActiveIconView = v13;

  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setAlpha:1.0];
  v15 = [MEMORY[0x1E69DC888] clearColor];
  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setBackgroundColor:v15];

  v16 = [objc_alloc(MEMORY[0x1E69DD168]) initReadonlyAndUnselectableWithFrame:0 textContainer:{v9, v10, v11, v12}];
  instructionsTextView = self->_instructionsTextView;
  self->_instructionsTextView = v16;

  [(UITextView *)self->_instructionsTextView setScrollingEnabled:0];
  v18 = [(UITextView *)self->_instructionsTextView textContainer];
  [v18 setLineFragmentPadding:0.0];

  [(UITextView *)self->_instructionsTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v19 = [(UITextView *)self->_instructionsTextView textContainer];
  [v19 setMaximumNumberOfLines:0];

  v20 = [(UITextView *)self->_instructionsTextView textContainer];
  [v20 setLineBreakMode:4];

  [(UITextView *)self->_instructionsTextView setTextAlignment:4];
  v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.05 alpha:1.0];
  [(UITextView *)self->_instructionsTextView setTextColor:v21];

  v22 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_instructionsTextView setBackgroundColor:v22];

  [(UITextView *)self->_instructionsTextView setAlpha:1.0];
  [(UITextView *)self->_instructionsTextView setTextAlignment:4];
  [v4 addSubview:self->_airDropActiveIconView];
  [v4 addSubview:self->_instructionsTextView];
  [(SFAirDropInstructionsViewController *)self _updateFontSizes];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFAirDropInstructionsViewController;
  [(SFAirDropInstructionsViewController *)&v3 viewDidLayoutSubviews];
  [(SFAirDropInstructionsViewController *)self _layoutiOSSubviews];
  [(SFAirDropInstructionsViewController *)self updatePreferredContentSize];
}

- (double)_titleLabelHeight
{
  v3 = [(SFAirDropInstructionsViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {

LABEL_5:
    v12 = *MEMORY[0x1E69DDD10];
    v10 = [(SFAirDropInstructionsViewController *)self _screen];
    v13 = _SFPersonCollectionViewMaximumSizeCategory(v10);
    v11 = [(SFAirDropInstructionsViewController *)self _fontWithStyle:v12 maxSizeCategory:v13 traits:0];

    goto LABEL_6;
  }

  v5 = *MEMORY[0x1E69DDC58];
  v6 = [(SFAirDropInstructionsViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(v5, v7);

  if (v8 == NSOrderedAscending)
  {
    goto LABEL_5;
  }

  v9 = MEMORY[0x1E69DB878];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v10 _scaledValueForValue:11.0];
  v11 = [v9 systemFontOfSize:?];
LABEL_6:

  [v11 lineHeight];
  v14 = [(SFAirDropInstructionsViewController *)self view];
  UICeilToViewScale();
  v16 = v15;

  return v16;
}

- (void)_layoutiOSSubviews
{
  v3 = [(SFAirDropInstructionsViewController *)self view];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 76.0;
  }

  else
  {
    v6 = 60.0;
  }

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = dbl_1B9EDEAA0[(v8 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  self->_minimumPreferredContentSize.width = 0.0;
  self->_minimumPreferredContentSize.height = v9;
  UIRoundToViewScale();
  v10 = [(SFAirDropInstructionsViewController *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);
  v13 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v11);
  v14 = v13 == NSOrderedAscending || IsAccessibilityCategory;
  if (v14 == 1)
  {
    if (v13 == NSOrderedAscending && !IsAccessibilityCategory)
    {
      collectionViewLayout = self->_collectionViewLayout;
      [v3 bounds];
      [(SFCollectionViewLayout *)collectionViewLayout firstItemCenterForContainerWidth:CGRectGetWidth(v43)];
    }
  }

  else
  {
    v16 = self->_collectionViewLayout;
    [v3 bounds];
    [(SFCollectionViewLayout *)v16 firstItemCenterForContainerWidth:CGRectGetWidth(v44)];
  }

  [(SFAirDropInstructionsViewController *)self _titleLabelHeight];
  [v3 safeAreaInsets];
  v17 = v3;
  v18 = [v17 _shouldReverseLayoutDirection];
  if (v14)
  {
    v19 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
    [v19 lineHeight];
    UIRoundToViewScale();

    [v17 safeAreaInsets];
  }

  UIRoundToViewScale();
  v21 = v20;
  if (v18)
  {
    [v17 bounds];
    CGRectGetMaxX(v45);
  }

  [v17 safeAreaInsets];
  UIRoundToViewScale();
  v23 = v22;

  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setFrame:v23, v21, v6, v6];
  instructionsTextView = self->_instructionsTextView;
  v41 = v17;
  v25 = instructionsTextView;
  if ([v41 _shouldReverseLayoutDirection])
  {
    [v41 safeAreaInsets];
    UIRoundToViewScale();
    v27 = v26;
    v46.origin.x = v23;
    v46.origin.y = v21;
    v46.size.width = v6;
    v46.size.height = v6;
    CGRectGetMinX(v46);
  }

  else
  {
    v47.origin.x = v23;
    v47.origin.y = v21;
    v47.size.width = v6;
    v47.size.height = v6;
    CGRectGetMaxX(v47);
    UIRoundToViewScale();
    v27 = v28;
    [v41 bounds];
    CGRectGetMaxX(v48);
    [v41 safeAreaInsets];
  }

  UIFloorToViewScale();
  v30 = v29;
  [(UITextView *)v25 sizeThatFits:?];

  UICeilToViewScale();
  v32 = v31;
  v33 = v23;
  v34 = v21;
  v35 = v6;
  v36 = v6;
  if (v14)
  {
    CGRectGetMinY(*&v33);
  }

  else
  {
    CGRectGetMidY(*&v33);
  }

  UIRoundToViewScale();
  v38 = v37;
  [v41 bounds];
  CGRectGetHeight(v49);
  [v41 safeAreaInsets];
  UIFloorToViewScale();
  if (v32 >= v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v32;
  }

  [(UITextView *)self->_instructionsTextView setFrame:v27, v38, v30, v40];
}

- (void)updatePreferredContentSize
{
  p_minimumPreferredContentSize = &self->_minimumPreferredContentSize;
  width = self->_minimumPreferredContentSize.width;
  height = self->_minimumPreferredContentSize.height;
  v6 = [(SFAirDropInstructionsViewController *)self traitCollection];
  lhs = [v6 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(lhs, *MEMORY[0x1E69DDC60]) != NSOrderedAscending)
  {
    [(SFAirDropInstructionsViewController *)self _cachedPreferredItemSize];
    v8 = v7;
    [(SFAirDropInstructionsViewController *)self _titleLabelHeight];
    v10 = v8 + v9 + 20.0;
    if (v10 >= p_minimumPreferredContentSize->height)
    {
      height = v10;
    }

    else
    {
      height = p_minimumPreferredContentSize->height;
    }

    width = 0.0;
  }

  [(SFAirDropInstructionsViewController *)self setPreferredContentSize:width, height];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SFAirDropInstructionsViewController;
  v4 = a3;
  [(SFAirDropInstructionsViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(SFAirDropInstructionsViewController *)self traitCollection:v10.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    [(SFAirDropInstructionsViewController *)self _updateFontSizes];
    v8 = [(SFAirDropInstructionsViewController *)self view];
    [v8 setNeedsUpdateConstraints];

    v9 = [(SFAirDropInstructionsViewController *)self view];
    [v9 setNeedsLayout];
  }
}

- (void)_updateFontSizes
{
  v5 = [(SFAirDropInstructionsViewController *)self title];
  v3 = [(SFAirDropInstructionsViewController *)self _instructionsText];
  v4 = [(SFAirDropInstructionsViewController *)self attributedStringWithTitle:v5 content:v3];
  [(UITextView *)self->_instructionsTextView setAttributedText:v4];
}

- (id)_fontWithStyle:(id)a3 maxSizeCategory:(id)a4 traits:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SFAirDropInstructionsViewController *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v11, v9) != NSOrderedAscending)
  {
    v12 = v9;

    v11 = v12;
  }

  v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v11];
  if (v5)
  {
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:v13];
    v15 = [v14 fontDescriptorWithSymbolicTraits:v5];

    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];
  }

  else
  {
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8 compatibleWithTraitCollection:v13];
  }

  return v16;
}

- (id)attributedStringWithTitle:(id)a3 content:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = a4;
  v9 = [(SFAirDropInstructionsViewController *)self _instructionsBaseFormatString];
  v10 = [v7 stringWithFormat:v9, v6, v8];

  v11 = [(SFAirDropInstructionsViewController *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v12))
  {
  }

  else
  {
    v13 = *MEMORY[0x1E69DDC58];
    v14 = [(SFAirDropInstructionsViewController *)self traitCollection];
    v15 = [v14 preferredContentSizeCategory];
    v16 = UIContentSizeCategoryCompareToCategory(v13, v15);

    if (v16 != NSOrderedAscending)
    {
      v17 = MEMORY[0x1E69DB878];
      v18 = *MEMORY[0x1E69DDCF8];
      v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v19 _scaledValueForValue:11.0];
      v20 = [v17 boldSystemFontOfSize:?];

      v21 = MEMORY[0x1E69DB878];
      v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v18];
      [v22 _scaledValueForValue:11.0];
      v23 = [v21 systemFontOfSize:?];
      goto LABEL_6;
    }
  }

  v24 = *MEMORY[0x1E69DDD10];
  v25 = [(SFAirDropInstructionsViewController *)self _screen];
  v26 = _SFPersonCollectionViewMaximumSizeCategory(v25);
  v20 = [(SFAirDropInstructionsViewController *)self _fontWithStyle:v24 maxSizeCategory:v26 traits:2];

  v22 = [(SFAirDropInstructionsViewController *)self _screen];
  v27 = _SFPersonCollectionViewMaximumSizeCategory(v22);
  v23 = [(SFAirDropInstructionsViewController *)self _fontWithStyle:v24 maxSizeCategory:v27 traits:0];

LABEL_6:
  v28 = [v10 rangeOfString:v6];
  v30 = v29;
  v38 = *MEMORY[0x1E69DB648];
  v31 = v38;
  v39[0] = v20;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v36 = v31;
  v37 = v23;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v34 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v10 attributes:v33];
  [v34 setAttributes:v32 range:{v28, v30}];

  return v34;
}

- (CGSize)_cachedPreferredItemSize
{
  v3 = [(SFAirDropInstructionsViewController *)self view];
  [v3 bounds];
  Width = CGRectGetWidth(v14);
  v5 = [(SFAirDropInstructionsViewController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  [SFPersonCollectionViewCell _cachedPreferredItemSizeForViewWidth:v6 sizeCategory:Width];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end