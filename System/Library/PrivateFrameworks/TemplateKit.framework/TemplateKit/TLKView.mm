@interface TLKView
+ (UIEdgeInsets)defaultLayoutMargins;
+ (void)enableLightKeylineStroke:(BOOL)stroke forView:(id)view;
+ (void)enableShadow:(BOOL)shadow forView:(id)view;
+ (void)makeContainerShadowCompatible:(id)compatible;
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TLKObserver)observer;
- (TLKView)init;
- (UIEdgeInsets)defaultBaselineRelativeLayoutMargins;
- (UIEdgeInsets)effectiveLayoutMargins;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)updates;
- (void)propertiesDidChange;
@end

@implementation TLKView

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  contentView = [(TLKView *)self contentView];
  isLayoutSizeDependentOnPerpendicularAxis = [contentView isLayoutSizeDependentOnPerpendicularAxis];

  return isLayoutSizeDependentOnPerpendicularAxis;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = TLKView;
  [(TLKView *)&v12 layoutSubviews];
  [(TLKView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(TLKView *)self contentView];
  [contentView setFrame:{v4, v6, v8, v10}];
}

- (TLKView)init
{
  v8.receiver = self;
  v8.super_class = TLKView;
  v2 = [(TLKView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(TLKView *)v2 setObserver:v2];
    setupContentView = [(TLKView *)v3 setupContentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = setupContentView;
      [v5 setLayoutMarginsRelativeArrangement:1];
      if ([(TLKView *)v3 usesDefaultLayoutMargins])
      {
        [objc_opt_class() defaultLayoutMargins];
        [v5 setLayoutMargins:?];
      }
    }

    [(TLKView *)v3 setContentView:setupContentView];
    contentView = [(TLKView *)v3 contentView];
    [contentView setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

    [(TLKView *)v3 addSubview:setupContentView];
  }

  return v3;
}

- (TLKObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->observer);

  return WeakRetained;
}

- (void)layoutMarginsDidChange
{
  contentView = [(TLKView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(TLKView *)self layoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    contentView2 = [(TLKView *)self contentView];
    [contentView2 setLayoutMargins:{v6, v8, v10, v12}];
  }
}

- (void)propertiesDidChange
{
  [(TLKView *)self observedPropertiesChanged];
  if ([(TLKView *)self usesDefaultLayoutMargins])
  {
    contentView = [(TLKView *)self contentView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      contentView2 = [(TLKView *)self contentView];
      if ([contentView2 hasBaselineRelativeLayoutMarginsForArrangement])
      {
        [(TLKView *)self defaultBaselineRelativeLayoutMargins];
        [contentView2 setLayoutMargins:?];
      }
    }
  }
}

+ (UIEdgeInsets)defaultLayoutMargins
{
  v2 = *&defaultLayoutMargins_defaultLayoutMargins_0;
  v3 = *&defaultLayoutMargins_defaultLayoutMargins_1;
  v4 = *&defaultLayoutMargins_defaultLayoutMargins_2;
  v5 = *&defaultLayoutMargins_defaultLayoutMargins_3;
  *&v6.f64[0] = defaultLayoutMargins_defaultLayoutMargins_0;
  *&v6.f64[1] = defaultLayoutMargins_defaultLayoutMargins_1;
  *&v7.f64[0] = defaultLayoutMargins_defaultLayoutMargins_2;
  *&v7.f64[1] = defaultLayoutMargins_defaultLayoutMargins_3;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, *MEMORY[0x1E69DDCE0]), vceqq_f64(v7, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    +[TLKUtilities standardTableCellContentInset];
    v5 = *&v8;
    defaultLayoutMargins_defaultLayoutMargins_0 = 0x4030000000000000;
    defaultLayoutMargins_defaultLayoutMargins_1 = v8;
    defaultLayoutMargins_defaultLayoutMargins_2 = 0x4030000000000000;
    defaultLayoutMargins_defaultLayoutMargins_3 = v8;
    v4 = 16.0;
    v3 = *&v8;
    v2 = 16.0;
  }

  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)defaultBaselineRelativeLayoutMargins
{
  [objc_opt_class() defaultLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  viewForFirstBaselineLayout = [(TLKView *)self viewForFirstBaselineLayout];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    viewForFirstBaselineLayout2 = [(TLKView *)self viewForFirstBaselineLayout];
    v14 = [viewForFirstBaselineLayout2 performSelector:sel_font];

    [v14 capHeight];
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:?];
    v4 = v4 + v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)effectiveLayoutMargins
{
  [(TLKView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(TLKView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentView2 = [(TLKView *)self contentView];
    [contentView2 layoutMargins];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (id)viewForFirstBaselineLayout
{
  contentView = [(TLKView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentView2 = [(TLKView *)self contentView];
    viewForFirstBaselineLayout = [contentView2 viewForFirstBaselineLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TLKView;
    viewForFirstBaselineLayout = [(TLKView *)&v8 viewForFirstBaselineLayout];
  }

  return viewForFirstBaselineLayout;
}

- (id)viewForLastBaselineLayout
{
  contentView = [(TLKView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentView2 = [(TLKView *)self contentView];
    viewForLastBaselineLayout = [contentView2 viewForLastBaselineLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TLKView;
    viewForLastBaselineLayout = [(TLKView *)&v8 viewForLastBaselineLayout];
  }

  return viewForLastBaselineLayout;
}

- (void)performBatchUpdates:(id)updates
{
  updatesCopy = updates;
  observer = [(TLKView *)self observer];
  [observer setBatchUpdateCount:{objc_msgSend(observer, "batchUpdateCount") + 1}];

  if (updatesCopy)
  {
    contentView = [(TLKView *)self contentView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      contentView2 = [(TLKView *)self contentView];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __31__TLKView_performBatchUpdates___block_invoke;
      v12[3] = &unk_1E7FD90A0;
      v13 = updatesCopy;
      [contentView2 performBatchUpdates:v12];
    }

    else
    {
      updatesCopy[2](updatesCopy);
    }
  }

  observer2 = [(TLKView *)self observer];
  [observer2 setBatchUpdateCount:{objc_msgSend(observer2, "batchUpdateCount") - 1}];

  observer3 = [(TLKView *)self observer];
  batchUpdateCount = [observer3 batchUpdateCount];

  if (!batchUpdateCount)
  {
    [(TLKView *)self propertiesDidChange];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(TLKView *)self contentView];
  [contentView effectiveLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  contentView = [(TLKView *)self contentView];
  [contentView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (void)enableLightKeylineStroke:(BOOL)stroke forView:(id)view
{
  strokeCopy = stroke;
  viewCopy = view;
  layer = [viewCopy layer];
  v7 = 0.0;
  if (strokeCopy)
  {
    [self makeContainerShadowCompatible:{viewCopy, 0.0}];
    [TLKUtilities pixelWidthForView:viewCopy];
    v9 = v8 * 1.5;
    if (v9 > 1.0)
    {
      v9 = 1.0;
    }

    [layer setShadowRadius:v9];
    [layer setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [layer setShadowColor:{objc_msgSend(whiteColor, "CGColor")}];

    [layer setShadowPath:0];
    LODWORD(v7) = 1058642330;
  }

  [layer setShadowOpacity:v7];
}

+ (void)enableShadow:(BOOL)shadow forView:(id)view
{
  shadowCopy = shadow;
  viewCopy = view;
  layer = [viewCopy layer];
  v7 = 0.0;
  if (shadowCopy)
  {
    [self makeContainerShadowCompatible:{viewCopy, 0.0}];
    isGeometryFlipped = [layer isGeometryFlipped];
    v9 = -2.0;
    if (!isGeometryFlipped)
    {
      v9 = 2.0;
    }

    [layer setShadowOffset:{0.0, v9}];
    [layer setShadowRadius:8.0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    LODWORD(v7) = 1039516303;
  }

  [layer setShadowOpacity:v7];
}

+ (void)makeContainerShadowCompatible:(id)compatible
{
  layer = [compatible layer];
  [layer setMasksToBounds:0];
}

@end