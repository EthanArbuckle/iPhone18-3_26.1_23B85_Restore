@interface PXPeopleBootstrapFooterView
+ (CGSize)sizeForBoundingSize:(CGSize)a3 descriptionText:(id)a4;
- (PXPeopleBootstrapFooterView)initWithFrame:(CGRect)a3;
- (void)setDescriptionText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXPeopleBootstrapFooterView

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleBootstrapFooterView *)self descriptionLabel];
  [v5 setText:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXPeopleBootstrapFooterView;
  v4 = a3;
  [(PXPeopleBootstrapFooterView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(PXPeopleBootstrapFooterView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    [(PXPeopleBootstrapFooterView *)self setNeedsLayout];
  }
}

- (PXPeopleBootstrapFooterView)initWithFrame:(CGRect)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PXPeopleBootstrapFooterView;
  v3 = [(PXPeopleBootstrapFooterView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setAdjustsFontForContentSizeCategory:1];
    v5 = +[PXPeopleBootstrapFooterView _descriptionLabelFont];
    [(UILabel *)v4 setFont:v5];

    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4 setTextColor:v6];

    [(PXPeopleBootstrapFooterView *)v3 addSubview:v4];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v4;
    v8 = v4;

    v18 = MEMORY[0x1E696ACD8];
    v23 = [(UILabel *)v8 leadingAnchor];
    v22 = [(PXPeopleBootstrapFooterView *)v3 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22 constant:20.0];
    v25[0] = v21;
    v20 = [(UILabel *)v8 trailingAnchor];
    v19 = [(PXPeopleBootstrapFooterView *)v3 trailingAnchor];
    v9 = [v20 constraintEqualToAnchor:v19 constant:-20.0];
    v25[1] = v9;
    v10 = [(UILabel *)v8 centerXAnchor];
    v11 = [(PXPeopleBootstrapFooterView *)v3 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v25[2] = v12;
    v13 = [(UILabel *)v8 lastBaselineAnchor];
    v14 = [(PXPeopleBootstrapFooterView *)v3 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-20.0];
    v25[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v18 activateConstraints:v16];
  }

  return v3;
}

+ (CGSize)sizeForBoundingSize:(CGSize)a3 descriptionText:(id)a4
{
  width = a3.width;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3.width + -40.0;
  v13 = *MEMORY[0x1E69DB648];
  v6 = a4;
  v7 = +[PXPeopleBootstrapFooterView _descriptionLabelFont];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v6 boundingRectWithSize:1 options:v8 attributes:0 context:{v5, 0.0}];
  v10 = v9;

  v11 = ceil(v10) + 20.0;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

@end