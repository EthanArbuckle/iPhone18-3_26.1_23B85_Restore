@interface SFAirDropInstructionsViewController
- (CGSize)_cachedPreferredItemSize;
- (double)_titleLabelHeight;
- (id)_fontWithStyle:(id)style maxSizeCategory:(id)category traits:(unsigned int)traits;
- (id)attributedStringWithTitle:(id)title content:(id)content;
- (void)_layoutiOSSubviews;
- (void)_updateFontSizes;
- (void)traitCollectionDidChange:(id)change;
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
  _airDropText = [(SFAirDropInstructionsViewController *)self _airDropText];
  [(SFAirDropInstructionsViewController *)self setTitle:_airDropText];

  view = [(SFAirDropInstructionsViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  [view setOpaque:0];
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
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setBackgroundColor:clearColor2];

  v16 = [objc_alloc(MEMORY[0x1E69DD168]) initReadonlyAndUnselectableWithFrame:0 textContainer:{v9, v10, v11, v12}];
  instructionsTextView = self->_instructionsTextView;
  self->_instructionsTextView = v16;

  [(UITextView *)self->_instructionsTextView setScrollingEnabled:0];
  textContainer = [(UITextView *)self->_instructionsTextView textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [(UITextView *)self->_instructionsTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  textContainer2 = [(UITextView *)self->_instructionsTextView textContainer];
  [textContainer2 setMaximumNumberOfLines:0];

  textContainer3 = [(UITextView *)self->_instructionsTextView textContainer];
  [textContainer3 setLineBreakMode:4];

  [(UITextView *)self->_instructionsTextView setTextAlignment:4];
  v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.05 alpha:1.0];
  [(UITextView *)self->_instructionsTextView setTextColor:v21];

  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_instructionsTextView setBackgroundColor:clearColor3];

  [(UITextView *)self->_instructionsTextView setAlpha:1.0];
  [(UITextView *)self->_instructionsTextView setTextAlignment:4];
  [view addSubview:self->_airDropActiveIconView];
  [view addSubview:self->_instructionsTextView];
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
  traitCollection = [(SFAirDropInstructionsViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {

LABEL_5:
    v12 = *MEMORY[0x1E69DDD10];
    _screen = [(SFAirDropInstructionsViewController *)self _screen];
    v13 = _SFPersonCollectionViewMaximumSizeCategory(_screen);
    v11 = [(SFAirDropInstructionsViewController *)self _fontWithStyle:v12 maxSizeCategory:v13 traits:0];

    goto LABEL_6;
  }

  v5 = *MEMORY[0x1E69DDC58];
  traitCollection2 = [(SFAirDropInstructionsViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(v5, preferredContentSizeCategory2);

  if (v8 == NSOrderedAscending)
  {
    goto LABEL_5;
  }

  v9 = MEMORY[0x1E69DB878];
  _screen = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [_screen _scaledValueForValue:11.0];
  v11 = [v9 systemFontOfSize:?];
LABEL_6:

  [v11 lineHeight];
  view = [(SFAirDropInstructionsViewController *)self view];
  UICeilToViewScale();
  v16 = v15;

  return v16;
}

- (void)_layoutiOSSubviews
{
  view = [(SFAirDropInstructionsViewController *)self view];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 76.0;
  }

  else
  {
    v6 = 60.0;
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v9 = dbl_1B9EDEAA0[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  self->_minimumPreferredContentSize.width = 0.0;
  self->_minimumPreferredContentSize.height = v9;
  UIRoundToViewScale();
  traitCollection = [(SFAirDropInstructionsViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v13 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], preferredContentSizeCategory);
  v14 = v13 == NSOrderedAscending || IsAccessibilityCategory;
  if (v14 == 1)
  {
    if (v13 == NSOrderedAscending && !IsAccessibilityCategory)
    {
      collectionViewLayout = self->_collectionViewLayout;
      [view bounds];
      [(SFCollectionViewLayout *)collectionViewLayout firstItemCenterForContainerWidth:CGRectGetWidth(v43)];
    }
  }

  else
  {
    v16 = self->_collectionViewLayout;
    [view bounds];
    [(SFCollectionViewLayout *)v16 firstItemCenterForContainerWidth:CGRectGetWidth(v44)];
  }

  [(SFAirDropInstructionsViewController *)self _titleLabelHeight];
  [view safeAreaInsets];
  v17 = view;
  _shouldReverseLayoutDirection = [v17 _shouldReverseLayoutDirection];
  if (v14)
  {
    v19 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
    [v19 lineHeight];
    UIRoundToViewScale();

    [v17 safeAreaInsets];
  }

  UIRoundToViewScale();
  v21 = v20;
  if (_shouldReverseLayoutDirection)
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
  traitCollection = [(SFAirDropInstructionsViewController *)self traitCollection];
  lhs = [traitCollection preferredContentSizeCategory];

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

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = SFAirDropInstructionsViewController;
  changeCopy = change;
  [(SFAirDropInstructionsViewController *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(SFAirDropInstructionsViewController *)self traitCollection:v10.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    [(SFAirDropInstructionsViewController *)self _updateFontSizes];
    view = [(SFAirDropInstructionsViewController *)self view];
    [view setNeedsUpdateConstraints];

    view2 = [(SFAirDropInstructionsViewController *)self view];
    [view2 setNeedsLayout];
  }
}

- (void)_updateFontSizes
{
  title = [(SFAirDropInstructionsViewController *)self title];
  _instructionsText = [(SFAirDropInstructionsViewController *)self _instructionsText];
  v4 = [(SFAirDropInstructionsViewController *)self attributedStringWithTitle:title content:_instructionsText];
  [(UITextView *)self->_instructionsTextView setAttributedText:v4];
}

- (id)_fontWithStyle:(id)style maxSizeCategory:(id)category traits:(unsigned int)traits
{
  v5 = *&traits;
  styleCopy = style;
  categoryCopy = category;
  traitCollection = [(SFAirDropInstructionsViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, categoryCopy) != NSOrderedAscending)
  {
    v12 = categoryCopy;

    preferredContentSizeCategory = v12;
  }

  v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  if (v5)
  {
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v13];
    v15 = [v14 fontDescriptorWithSymbolicTraits:v5];

    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];
  }

  else
  {
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:styleCopy compatibleWithTraitCollection:v13];
  }

  return v16;
}

- (id)attributedStringWithTitle:(id)title content:(id)content
{
  v39[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v7 = MEMORY[0x1E696AEC0];
  contentCopy = content;
  _instructionsBaseFormatString = [(SFAirDropInstructionsViewController *)self _instructionsBaseFormatString];
  contentCopy = [v7 stringWithFormat:_instructionsBaseFormatString, titleCopy, contentCopy];

  traitCollection = [(SFAirDropInstructionsViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
  }

  else
  {
    v13 = *MEMORY[0x1E69DDC58];
    traitCollection2 = [(SFAirDropInstructionsViewController *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    v16 = UIContentSizeCategoryCompareToCategory(v13, preferredContentSizeCategory2);

    if (v16 != NSOrderedAscending)
    {
      v17 = MEMORY[0x1E69DB878];
      v18 = *MEMORY[0x1E69DDCF8];
      v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v19 _scaledValueForValue:11.0];
      v20 = [v17 boldSystemFontOfSize:?];

      v21 = MEMORY[0x1E69DB878];
      _screen2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v18];
      [_screen2 _scaledValueForValue:11.0];
      v23 = [v21 systemFontOfSize:?];
      goto LABEL_6;
    }
  }

  v24 = *MEMORY[0x1E69DDD10];
  _screen = [(SFAirDropInstructionsViewController *)self _screen];
  v26 = _SFPersonCollectionViewMaximumSizeCategory(_screen);
  v20 = [(SFAirDropInstructionsViewController *)self _fontWithStyle:v24 maxSizeCategory:v26 traits:2];

  _screen2 = [(SFAirDropInstructionsViewController *)self _screen];
  v27 = _SFPersonCollectionViewMaximumSizeCategory(_screen2);
  v23 = [(SFAirDropInstructionsViewController *)self _fontWithStyle:v24 maxSizeCategory:v27 traits:0];

LABEL_6:
  v28 = [contentCopy rangeOfString:titleCopy];
  v30 = v29;
  v38 = *MEMORY[0x1E69DB648];
  v31 = v38;
  v39[0] = v20;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v36 = v31;
  v37 = v23;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v34 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:contentCopy attributes:v33];
  [v34 setAttributes:v32 range:{v28, v30}];

  return v34;
}

- (CGSize)_cachedPreferredItemSize
{
  view = [(SFAirDropInstructionsViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v14);
  traitCollection = [(SFAirDropInstructionsViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [SFPersonCollectionViewCell _cachedPreferredItemSizeForViewWidth:preferredContentSizeCategory sizeCategory:Width];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end