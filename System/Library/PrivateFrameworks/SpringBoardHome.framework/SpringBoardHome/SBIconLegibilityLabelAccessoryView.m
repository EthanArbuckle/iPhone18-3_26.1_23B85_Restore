@interface SBIconLegibilityLabelAccessoryView
- (BOOL)hasBaseline;
- (SBIconLegibilityLabelAccessoryView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (double)baselineOffsetFromBottom;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (void)updateWithBaseImage:(id)a3 legibilitySettings:(id)a4;
- (void)updateWithLegibilitySettings:(id)a3 labelFont:(id)a4;
@end

@implementation SBIconLegibilityLabelAccessoryView

- (SBIconLegibilityLabelAccessoryView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SBIconLegibilityLabelAccessoryView;
  v3 = [(SBIconLegibilityLabelAccessoryView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v4;

    [(SBIconLegibilityLabelAccessoryView *)v3 addSubview:v3->_iconImageView];
  }

  return v3;
}

- (void)updateWithLegibilitySettings:(id)a3 labelFont:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 primaryColor];
  [(SBIconLegibilityLabelAccessoryView *)self setTintColor:v8];

  v9.receiver = self;
  v9.super_class = SBIconLegibilityLabelAccessoryView;
  [(SBIconLabelAccessoryView *)&v9 updateWithLegibilitySettings:v7 labelFont:v6];
}

- (void)updateWithBaseImage:(id)a3 legibilitySettings:(id)a4
{
  v5 = a3;
  v6 = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  [v6 setImage:v5];

  [v6 sizeToFit];
}

- (BOOL)hasBaseline
{
  v2 = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  v3 = [v2 image];
  v4 = [v3 hasBaseline];

  return v4;
}

- (double)baselineOffsetFromBottom
{
  v2 = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  v3 = [v2 image];
  [v3 baselineOffsetFromBottom];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  v3 = [v2 image];
  [v3 alignmentRectInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

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

- (id)firstBaselineAnchor
{
  v2 = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  v3 = [v2 firstBaselineAnchor];

  return v3;
}

- (id)lastBaselineAnchor
{
  v2 = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  v3 = [v2 lastBaselineAnchor];

  return v3;
}

@end