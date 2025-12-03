@interface PXPeopleBootstrapFooterView
+ (CGSize)sizeForBoundingSize:(CGSize)size descriptionText:(id)text;
- (PXPeopleBootstrapFooterView)initWithFrame:(CGRect)frame;
- (void)setDescriptionText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXPeopleBootstrapFooterView

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  descriptionLabel = [(PXPeopleBootstrapFooterView *)self descriptionLabel];
  [descriptionLabel setText:textCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXPeopleBootstrapFooterView;
  changeCopy = change;
  [(PXPeopleBootstrapFooterView *)&v8 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(PXPeopleBootstrapFooterView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(PXPeopleBootstrapFooterView *)self setNeedsLayout];
  }
}

- (PXPeopleBootstrapFooterView)initWithFrame:(CGRect)frame
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PXPeopleBootstrapFooterView;
  v3 = [(PXPeopleBootstrapFooterView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setAdjustsFontForContentSizeCategory:1];
    v5 = +[PXPeopleBootstrapFooterView _descriptionLabelFont];
    [(UILabel *)v4 setFont:v5];

    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4 setTextColor:secondaryLabelColor];

    [(PXPeopleBootstrapFooterView *)v3 addSubview:v4];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v4;
    v8 = v4;

    v18 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v8 leadingAnchor];
    leadingAnchor2 = [(PXPeopleBootstrapFooterView *)v3 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v25[0] = v21;
    trailingAnchor = [(UILabel *)v8 trailingAnchor];
    trailingAnchor2 = [(PXPeopleBootstrapFooterView *)v3 trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v25[1] = v9;
    centerXAnchor = [(UILabel *)v8 centerXAnchor];
    centerXAnchor2 = [(PXPeopleBootstrapFooterView *)v3 centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[2] = v12;
    lastBaselineAnchor = [(UILabel *)v8 lastBaselineAnchor];
    bottomAnchor = [(PXPeopleBootstrapFooterView *)v3 bottomAnchor];
    v15 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-20.0];
    v25[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v18 activateConstraints:v16];
  }

  return v3;
}

+ (CGSize)sizeForBoundingSize:(CGSize)size descriptionText:(id)text
{
  width = size.width;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = size.width + -40.0;
  v13 = *MEMORY[0x1E69DB648];
  textCopy = text;
  v7 = +[PXPeopleBootstrapFooterView _descriptionLabelFont];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [textCopy boundingRectWithSize:1 options:v8 attributes:0 context:{v5, 0.0}];
  v10 = v9;

  v11 = ceil(v10) + 20.0;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

@end