@interface SBIconContinuityAccessoryView
+ (id)_imageForContinuityItem:(id)item highlighted:(BOOL)highlighted;
- (CGPoint)accessoryCenterForIconBounds:(CGRect)bounds;
- (CGPoint)layoutOffset;
- (CGSize)badgeSize;
- (SBIconContinuityAccessoryView)init;
- (double)badgeContentScale;
- (void)configureForIcon:(id)icon infoProvider:(id)provider;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryBrightness:(double)brightness;
- (void)setLegibilityStyle:(unint64_t)style;
@end

@implementation SBIconContinuityAccessoryView

- (SBIconContinuityAccessoryView)init
{
  v13.receiver = self;
  v13.super_class = SBIconContinuityAccessoryView;
  v2 = [(SBIconContinuityAccessoryView *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v2->_backgroundView;
    v2->_backgroundView = v3;

    [(SBIconContinuityAccessoryView *)v2 addSubview:v2->_backgroundView];
    traitCollection = [(SBIconContinuityAccessoryView *)v2 traitCollection];
    v6 = [SBIconView componentBackgroundViewOfType:1 compatibleWithTraitCollection:traitCollection initialWeighting:1.0];

    v7 = [SBHomeScreenMaterialView alloc];
    v8 = [(SBHomeScreenMaterialView *)v7 initWithFrame:v6 backgroundView:0 foregroundImage:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    foregroundView = v2->_foregroundView;
    v2->_foregroundView = v8;

    v10 = v2->_foregroundView;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(SBHomeScreenMaterialView *)v10 setTintColor:blackColor];

    [(UIView *)v2->_backgroundView addSubview:v2->_foregroundView];
  }

  return v2;
}

- (CGPoint)layoutOffset
{
  listLayout = [(SBIconContinuityAccessoryView *)self listLayout];
  v3 = SBHIconListLayoutIconAccessoryOffset(listLayout);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)badgeSize
{
  listLayout = [(SBIconContinuityAccessoryView *)self listLayout];
  v3 = SBHIconListLayoutIconAccessorySize(listLayout);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = SBIconContinuityAccessoryView;
  [(SBIconContinuityAccessoryView *)&v16 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(SBIconContinuityAccessoryView *)self bounds];
  [(UIView *)backgroundView setFrame:?];
  listLayout = [(SBIconContinuityAccessoryView *)self listLayout];

  if (listLayout)
  {
    [(SBIconContinuityAccessoryView *)self badgeSize];
    [(SBIconContinuityAccessoryView *)self badgeContentScale];
    v6 = v5;
    BSRectWithSize();
    CGRectInset(v17, 1.0, 1.0);
    [(UIView *)self->_backgroundView bounds];
    v15 = v6;
    UIRectCenteredIntegralRectScale();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SBHomeScreenMaterialView *)self->_foregroundView setContentMode:4, v15];
    [(SBHomeScreenMaterialView *)self->_foregroundView setFrame:v8, v10, v12, v14];
  }
}

- (double)badgeContentScale
{
  listLayout = [(SBIconContinuityAccessoryView *)self listLayout];
  if (listLayout)
  {
    listLayout2 = [(SBIconContinuityAccessoryView *)self listLayout];
    [listLayout2 iconImageInfo];
    v6 = v5;
  }

  else
  {
    listLayout2 = [(SBIconContinuityAccessoryView *)self traitCollection];
    [listLayout2 displayScale];
    v6 = v7;
  }

  return v6;
}

- (void)configureForIcon:(id)icon infoProvider:(id)provider
{
  providerCopy = provider;
  continuityItem = [providerCopy continuityItem];
  isHighlighted = [providerCopy isHighlighted];

  continuityItem = self->_continuityItem;
  self->_continuityItem = continuityItem;
  v9 = continuityItem;

  v11 = [objc_opt_class() _imageForContinuityItem:v9 highlighted:isHighlighted];

  foregroundView = [(SBIconContinuityAccessoryView *)self foregroundView];
  [foregroundView setForegroundImage:v11];

  [(SBIconContinuityAccessoryView *)self setNeedsLayout];
  [(SBIconContinuityAccessoryView *)self layoutIfNeeded];
}

- (void)prepareForReuse
{
  foregroundView = [(SBIconContinuityAccessoryView *)self foregroundView];
  [foregroundView setForegroundImage:0];
}

- (CGPoint)accessoryCenterForIconBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SBIconContinuityAccessoryView *)self layoutOffset];
  v9 = v8;
  v11 = v10;
  [(SBIconContinuityAccessoryView *)self badgeSize];
  v13 = v12;
  v15 = v14;
  v16 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;

  v17 = SBIconBadgeViewCalculateAccessoryCenter(v16, x, y, width, height, v13, v15, v9, v11);
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)setAccessoryBrightness:(double)brightness
{
  backgroundView = [(SBIconContinuityAccessoryView *)self backgroundView];
  sbh_darkener = [backgroundView sbh_darkener];
  [sbh_darkener setBrightness:brightness];
}

- (void)setLegibilityStyle:(unint64_t)style
{
  foregroundView = [(SBIconContinuityAccessoryView *)self foregroundView];
  [foregroundView setLegibilityStyle:style];
}

+ (id)_imageForContinuityItem:(id)item highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v15 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = SBLogContinuity();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = itemCopy;
    v13 = 1024;
    v14 = highlightedCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "---->\tCreating continuity image for '%@', highlighted: '%{BOOL}u'", &v11, 0x12u);
  }

  systemImageName = [itemCopy systemImageName];
  if (systemImageName)
  {
    v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:12.0];
    v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:systemImageName withConfiguration:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end