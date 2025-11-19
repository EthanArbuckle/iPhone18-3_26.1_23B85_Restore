@interface TLKView
+ (UIEdgeInsets)defaultLayoutMargins;
+ (void)enableLightKeylineStroke:(BOOL)a3 forView:(id)a4;
+ (void)enableShadow:(BOOL)a3 forView:(id)a4;
+ (void)makeContainerShadowCompatible:(id)a3;
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TLKObserver)observer;
- (TLKView)init;
- (UIEdgeInsets)defaultBaselineRelativeLayoutMargins;
- (UIEdgeInsets)effectiveLayoutMargins;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)a3;
- (void)propertiesDidChange;
@end

@implementation TLKView

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 isLayoutSizeDependentOnPerpendicularAxis];

  return v3;
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
  v11 = [(TLKView *)self contentView];
  [v11 setFrame:{v4, v6, v8, v10}];
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
    v4 = [(TLKView *)v3 setupContentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [v5 setLayoutMarginsRelativeArrangement:1];
      if ([(TLKView *)v3 usesDefaultLayoutMargins])
      {
        [objc_opt_class() defaultLayoutMargins];
        [v5 setLayoutMargins:?];
      }
    }

    [(TLKView *)v3 setContentView:v4];
    v6 = [(TLKView *)v3 contentView];
    [v6 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

    [(TLKView *)v3 addSubview:v4];
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
  v3 = [(TLKView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(TLKView *)self layoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(TLKView *)self contentView];
    [v13 setLayoutMargins:{v6, v8, v10, v12}];
  }
}

- (void)propertiesDidChange
{
  [(TLKView *)self observedPropertiesChanged];
  if ([(TLKView *)self usesDefaultLayoutMargins])
  {
    v3 = [(TLKView *)self contentView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [(TLKView *)self contentView];
      if ([v5 hasBaselineRelativeLayoutMarginsForArrangement])
      {
        [(TLKView *)self defaultBaselineRelativeLayoutMargins];
        [v5 setLayoutMargins:?];
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
  v11 = [(TLKView *)self viewForFirstBaselineLayout];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(TLKView *)self viewForFirstBaselineLayout];
    v14 = [v13 performSelector:sel_font];

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
  v11 = [(TLKView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [(TLKView *)self contentView];
    [v13 layoutMargins];
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
  v3 = [(TLKView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TLKView *)self contentView];
    v6 = [v5 viewForFirstBaselineLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TLKView;
    v6 = [(TLKView *)&v8 viewForFirstBaselineLayout];
  }

  return v6;
}

- (id)viewForLastBaselineLayout
{
  v3 = [(TLKView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TLKView *)self contentView];
    v6 = [v5 viewForLastBaselineLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TLKView;
    v6 = [(TLKView *)&v8 viewForLastBaselineLayout];
  }

  return v6;
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  v5 = [(TLKView *)self observer];
  [v5 setBatchUpdateCount:{objc_msgSend(v5, "batchUpdateCount") + 1}];

  if (v4)
  {
    v6 = [(TLKView *)self contentView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(TLKView *)self contentView];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __31__TLKView_performBatchUpdates___block_invoke;
      v12[3] = &unk_1E7FD90A0;
      v13 = v4;
      [v8 performBatchUpdates:v12];
    }

    else
    {
      v4[2](v4);
    }
  }

  v9 = [(TLKView *)self observer];
  [v9 setBatchUpdateCount:{objc_msgSend(v9, "batchUpdateCount") - 1}];

  v10 = [(TLKView *)self observer];
  v11 = [v10 batchUpdateCount];

  if (!v11)
  {
    [(TLKView *)self propertiesDidChange];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TLKView *)self contentView];
  [v5 effectiveLayoutSizeFittingSize:{width, height}];
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
  v2 = [(TLKView *)self contentView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (void)enableLightKeylineStroke:(BOOL)a3 forView:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = [v11 layer];
  v7 = 0.0;
  if (v4)
  {
    [a1 makeContainerShadowCompatible:{v11, 0.0}];
    [TLKUtilities pixelWidthForView:v11];
    v9 = v8 * 1.5;
    if (v9 > 1.0)
    {
      v9 = 1.0;
    }

    [v6 setShadowRadius:v9];
    [v6 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [v6 setShadowColor:{objc_msgSend(v10, "CGColor")}];

    [v6 setShadowPath:0];
    LODWORD(v7) = 1058642330;
  }

  [v6 setShadowOpacity:v7];
}

+ (void)enableShadow:(BOOL)a3 forView:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = [v11 layer];
  v7 = 0.0;
  if (v4)
  {
    [a1 makeContainerShadowCompatible:{v11, 0.0}];
    v8 = [v6 isGeometryFlipped];
    v9 = -2.0;
    if (!v8)
    {
      v9 = 2.0;
    }

    [v6 setShadowOffset:{0.0, v9}];
    [v6 setShadowRadius:8.0];
    v10 = [MEMORY[0x1E69DC888] blackColor];
    [v6 setShadowColor:{objc_msgSend(v10, "CGColor")}];

    LODWORD(v7) = 1039516303;
  }

  [v6 setShadowOpacity:v7];
}

+ (void)makeContainerShadowCompatible:(id)a3
{
  v3 = [a3 layer];
  [v3 setMasksToBounds:0];
}

@end