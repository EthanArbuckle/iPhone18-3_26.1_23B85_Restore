@interface SBHAddWidgetDetailSheetTitleView
- (CGSize)intrinsicContentSize;
- (NSDirectionalEdgeInsets)contentInsets;
- (SBHAddWidgetDetailSheetTitleView)initWithIconImageInfo:(SBIconImageInfo *)a3 contentInsets:(NSDirectionalEdgeInsets)a4;
- (id)_textLabelFont;
- (unint64_t)_textLabelNumberOfLines;
- (void)_contentSizeCategoryDidChange;
- (void)dealloc;
- (void)setAddWidgetSheetAppCollectionViewCellIconImageView:(id)a3;
- (void)setAddWidgetSheetAppCollectionViewCellTitle:(id)a3;
@end

@implementation SBHAddWidgetDetailSheetTitleView

- (SBHAddWidgetDetailSheetTitleView)initWithIconImageInfo:(SBIconImageInfo *)a3 contentInsets:(NSDirectionalEdgeInsets)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  trailing = a4.trailing;
  bottom = a4.bottom;
  leading = a4.leading;
  top = a4.top;
  v68[2] = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = SBHAddWidgetDetailSheetTitleView;
  v16 = [(SBHAddWidgetDetailSheetTitleView *)&v64 initWithFrame:a3, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
    v21 = [(UIView *)v17->_imageContainerView widthAnchor];
    [(SBHAddWidgetDetailSheetTitleView *)v17 iconImageInfo];
    v22 = [v21 constraintEqualToConstant:?];
    v68[0] = v22;
    v23 = [(UIView *)v17->_imageContainerView heightAnchor];
    [(SBHAddWidgetDetailSheetTitleView *)v17 iconImageInfo];
    v25 = [v23 constraintEqualToConstant:v24];
    v68[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    [v20 activateConstraints:v26];

    v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v17->_textLabel;
    v17->_textLabel = v27;

    v29 = v17->_textLabel;
    v30 = [(SBHAddWidgetDetailSheetTitleView *)v17 _textLabelFont];
    [(UILabel *)v29 setFont:v30];

    [(UILabel *)v17->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v17->_textLabel setNumberOfLines:[(SBHAddWidgetDetailSheetTitleView *)v17 _textLabelNumberOfLines]];
    [(SBHAddWidgetDetailSheetTitleView *)v17 addSubview:v17->_textLabel];
    v55 = MEMORY[0x1E696ACD8];
    v62 = [(UIView *)v17->_imageContainerView topAnchor];
    v60 = [(SBHAddWidgetDetailSheetTitleView *)v17 topAnchor];
    v59 = [v62 constraintGreaterThanOrEqualToAnchor:v60 constant:v11];
    v67[0] = v59;
    v58 = [(SBHAddWidgetDetailSheetTitleView *)v17 bottomAnchor];
    v57 = [(UIView *)v17->_imageContainerView bottomAnchor];
    v56 = [v58 constraintGreaterThanOrEqualToAnchor:v57 constant:v9];
    v67[1] = v56;
    v54 = [(UILabel *)v17->_textLabel topAnchor];
    v53 = [(SBHAddWidgetDetailSheetTitleView *)v17 topAnchor];
    v52 = [v54 constraintGreaterThanOrEqualToAnchor:v53 constant:v11];
    v67[2] = v52;
    v31 = [(SBHAddWidgetDetailSheetTitleView *)v17 bottomAnchor];
    v32 = [(UILabel *)v17->_textLabel bottomAnchor];
    v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:v9];
    v67[3] = v33;
    v34 = [(UIView *)v17->_imageContainerView centerYAnchor];
    v35 = [(UILabel *)v17->_textLabel centerYAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v67[4] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:5];
    [v55 activateConstraints:v37];

    v61 = MEMORY[0x1E696ACD8];
    v63 = [(UIView *)v17->_imageContainerView leadingAnchor];
    v38 = [(SBHAddWidgetDetailSheetTitleView *)v17 leadingAnchor];
    v39 = [v63 constraintEqualToAnchor:v38 constant:v10];
    v66[0] = v39;
    v40 = [(UILabel *)v17->_textLabel leadingAnchor];
    v41 = [(UIView *)v17->_imageContainerView trailingAnchor];
    v42 = [v40 constraintEqualToSystemSpacingAfterAnchor:v41 multiplier:1.0];
    v66[1] = v42;
    v43 = [(SBHAddWidgetDetailSheetTitleView *)v17 trailingAnchor];
    v44 = [(UILabel *)v17->_textLabel trailingAnchor];
    v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44 constant:v8];
    v66[2] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    [v61 activateConstraints:v46];

    v47 = [MEMORY[0x1E696AD88] defaultCenter];
    [v47 addObserver:v17 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v48 = objc_opt_self();
    v65 = v48;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    v50 = [(SBHAddWidgetDetailSheetTitleView *)v17 registerForTraitChanges:v49 withAction:sel__contentSizeCategoryDidChange];
  }

  return v17;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

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

- (void)setAddWidgetSheetAppCollectionViewCellTitle:(id)a3
{
  v4 = a3;
  v5 = [(SBHAddWidgetDetailSheetTitleView *)self textLabel];
  [v5 setText:v4];
}

- (void)setAddWidgetSheetAppCollectionViewCellIconImageView:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHAddWidgetDetailSheetTitleView *)self imageContainerView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v4];
  v15 = MEMORY[0x1E696ACD8];
  v19 = [v4 leadingAnchor];
  v18 = [v5 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v16 = [v4 trailingAnchor];
  v6 = [v5 trailingAnchor];
  v7 = [v16 constraintEqualToAnchor:v6];
  v20[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [v5 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v20[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [v5 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v20[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v15 activateConstraints:v14];
}

- (id)_textLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDD80];
  v5 = [(SBHAddWidgetDetailSheetTitleView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:v6];

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
  v4 = [(SBHAddWidgetDetailSheetTitleView *)self textLabel];
  v3 = [(SBHAddWidgetDetailSheetTitleView *)self _textLabelFont];
  [v4 setFont:v3];

  [v4 setNumberOfLines:{-[SBHAddWidgetDetailSheetTitleView _textLabelNumberOfLines](self, "_textLabelNumberOfLines")}];
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