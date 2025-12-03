@interface SBHAddWidgetDetailSheetTitleView
- (CGSize)intrinsicContentSize;
- (NSDirectionalEdgeInsets)contentInsets;
- (SBHAddWidgetDetailSheetTitleView)initWithIconImageInfo:(SBIconImageInfo *)info contentInsets:(NSDirectionalEdgeInsets)insets;
- (id)_textLabelFont;
- (unint64_t)_textLabelNumberOfLines;
- (void)_contentSizeCategoryDidChange;
- (void)dealloc;
- (void)setAddWidgetSheetAppCollectionViewCellIconImageView:(id)view;
- (void)setAddWidgetSheetAppCollectionViewCellTitle:(id)title;
@end

@implementation SBHAddWidgetDetailSheetTitleView

- (SBHAddWidgetDetailSheetTitleView)initWithIconImageInfo:(SBIconImageInfo *)info contentInsets:(NSDirectionalEdgeInsets)insets
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  v68[2] = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = SBHAddWidgetDetailSheetTitleView;
  v16 = [(SBHAddWidgetDetailSheetTitleView *)&v64 initWithFrame:info, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v17 = v16;
  if (v16)
  {
    v16->_iconImageInfo.size.width = top;
    v16->_iconImageInfo.size.height = leading;
    v16->_iconImageInfo.scale = bottom;
    v16->_iconImageInfo.continuousCornerRadius = trailing;
    v16->_contentInsets.top = v11;
    v16->_contentInsets.leading = v10;
    v16->_contentInsets.bottom = v9;
    v16->_contentInsets.trailing = v8;
    v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
    imageContainerView = v17->_imageContainerView;
    v17->_imageContainerView = v18;

    [(UIView *)v17->_imageContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHAddWidgetDetailSheetTitleView *)v17 addSubview:v17->_imageContainerView];
    v20 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIView *)v17->_imageContainerView widthAnchor];
    [(SBHAddWidgetDetailSheetTitleView *)v17 iconImageInfo];
    v22 = [widthAnchor constraintEqualToConstant:?];
    v68[0] = v22;
    heightAnchor = [(UIView *)v17->_imageContainerView heightAnchor];
    [(SBHAddWidgetDetailSheetTitleView *)v17 iconImageInfo];
    v25 = [heightAnchor constraintEqualToConstant:v24];
    v68[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    [v20 activateConstraints:v26];

    v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v17->_textLabel;
    v17->_textLabel = v27;

    v29 = v17->_textLabel;
    _textLabelFont = [(SBHAddWidgetDetailSheetTitleView *)v17 _textLabelFont];
    [(UILabel *)v29 setFont:_textLabelFont];

    [(UILabel *)v17->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v17->_textLabel setNumberOfLines:[(SBHAddWidgetDetailSheetTitleView *)v17 _textLabelNumberOfLines]];
    [(SBHAddWidgetDetailSheetTitleView *)v17 addSubview:v17->_textLabel];
    v55 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v17->_imageContainerView topAnchor];
    topAnchor2 = [(SBHAddWidgetDetailSheetTitleView *)v17 topAnchor];
    v59 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v11];
    v67[0] = v59;
    bottomAnchor = [(SBHAddWidgetDetailSheetTitleView *)v17 bottomAnchor];
    bottomAnchor2 = [(UIView *)v17->_imageContainerView bottomAnchor];
    v56 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:v9];
    v67[1] = v56;
    topAnchor3 = [(UILabel *)v17->_textLabel topAnchor];
    topAnchor4 = [(SBHAddWidgetDetailSheetTitleView *)v17 topAnchor];
    v52 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:v11];
    v67[2] = v52;
    bottomAnchor3 = [(SBHAddWidgetDetailSheetTitleView *)v17 bottomAnchor];
    bottomAnchor4 = [(UILabel *)v17->_textLabel bottomAnchor];
    v33 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:v9];
    v67[3] = v33;
    centerYAnchor = [(UIView *)v17->_imageContainerView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v17->_textLabel centerYAnchor];
    v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v67[4] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:5];
    [v55 activateConstraints:v37];

    v61 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIView *)v17->_imageContainerView leadingAnchor];
    leadingAnchor2 = [(SBHAddWidgetDetailSheetTitleView *)v17 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v10];
    v66[0] = v39;
    leadingAnchor3 = [(UILabel *)v17->_textLabel leadingAnchor];
    trailingAnchor = [(UIView *)v17->_imageContainerView trailingAnchor];
    v42 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v66[1] = v42;
    trailingAnchor2 = [(SBHAddWidgetDetailSheetTitleView *)v17 trailingAnchor];
    trailingAnchor3 = [(UILabel *)v17->_textLabel trailingAnchor];
    v45 = [trailingAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:v8];
    v66[2] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    [v61 activateConstraints:v46];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v17 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v48 = objc_opt_self();
    v65 = v48;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    v50 = [(SBHAddWidgetDetailSheetTitleView *)v17 registerForTraitChanges:v49 withAction:sel__contentSizeCategoryDidChange];
  }

  return v17;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetTitleView;
  [(SBHAddWidgetDetailSheetTitleView *)&v4 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E69DE788];
  [(SBHAddWidgetDetailSheetTitleView *)self iconImageInfo];
  v5 = v4;
  [(UILabel *)self->_textLabel intrinsicContentSize];
  if (v5 >= v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 + self->_contentInsets.top + self->_contentInsets.bottom;
  v9 = v3;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setAddWidgetSheetAppCollectionViewCellTitle:(id)title
{
  titleCopy = title;
  textLabel = [(SBHAddWidgetDetailSheetTitleView *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)setAddWidgetSheetAppCollectionViewCellIconImageView:(id)view
{
  v20[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  imageContainerView = [(SBHAddWidgetDetailSheetTitleView *)self imageContainerView];
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [imageContainerView addSubview:viewCopy];
  v15 = MEMORY[0x1E696ACD8];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [imageContainerView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v17;
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [imageContainerView trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v7;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [imageContainerView topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[2] = v10;
  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [imageContainerView bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v15 activateConstraints:v14];
}

- (id)_textLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDD80];
  traitCollection = [(SBHAddWidgetDetailSheetTitleView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (unint64_t)_textLabelNumberOfLines
{
  if (_SBHTraitEnvironmentIsAccessibilityTextSize(self))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_contentSizeCategoryDidChange
{
  textLabel = [(SBHAddWidgetDetailSheetTitleView *)self textLabel];
  _textLabelFont = [(SBHAddWidgetDetailSheetTitleView *)self _textLabelFont];
  [textLabel setFont:_textLabelFont];

  [textLabel setNumberOfLines:{-[SBHAddWidgetDetailSheetTitleView _textLabelNumberOfLines](self, "_textLabelNumberOfLines")}];
  [(SBHAddWidgetDetailSheetTitleView *)self invalidateIntrinsicContentSize];
  [(SBHAddWidgetDetailSheetTitleView *)self setNeedsLayout];
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end