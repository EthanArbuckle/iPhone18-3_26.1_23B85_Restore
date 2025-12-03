@interface SBIconLegibilityLabelAccessoryView
- (BOOL)hasBaseline;
- (SBIconLegibilityLabelAccessoryView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsets;
- (double)baselineOffsetFromBottom;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (void)updateWithBaseImage:(id)image legibilitySettings:(id)settings;
- (void)updateWithLegibilitySettings:(id)settings labelFont:(id)font;
@end

@implementation SBIconLegibilityLabelAccessoryView

- (SBIconLegibilityLabelAccessoryView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SBIconLegibilityLabelAccessoryView;
  v3 = [(SBIconLegibilityLabelAccessoryView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v4;

    [(SBIconLegibilityLabelAccessoryView *)v3 addSubview:v3->_iconImageView];
  }

  return v3;
}

- (void)updateWithLegibilitySettings:(id)settings labelFont:(id)font
{
  fontCopy = font;
  settingsCopy = settings;
  primaryColor = [settingsCopy primaryColor];
  [(SBIconLegibilityLabelAccessoryView *)self setTintColor:primaryColor];

  v9.receiver = self;
  v9.super_class = SBIconLegibilityLabelAccessoryView;
  [(SBIconLabelAccessoryView *)&v9 updateWithLegibilitySettings:settingsCopy labelFont:fontCopy];
}

- (void)updateWithBaseImage:(id)image legibilitySettings:(id)settings
{
  imageCopy = image;
  iconImageView = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  [iconImageView setImage:imageCopy];

  [iconImageView sizeToFit];
}

- (BOOL)hasBaseline
{
  iconImageView = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  image = [iconImageView image];
  hasBaseline = [image hasBaseline];

  return hasBaseline;
}

- (double)baselineOffsetFromBottom
{
  iconImageView = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  image = [iconImageView image];
  [image baselineOffsetFromBottom];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)alignmentRectInsets
{
  iconImageView = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  image = [iconImageView image];
  [image alignmentRectInsets];
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
  iconImageView = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  firstBaselineAnchor = [iconImageView firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (id)lastBaselineAnchor
{
  iconImageView = [(SBIconLegibilityLabelAccessoryView *)self iconImageView];
  lastBaselineAnchor = [iconImageView lastBaselineAnchor];

  return lastBaselineAnchor;
}

@end