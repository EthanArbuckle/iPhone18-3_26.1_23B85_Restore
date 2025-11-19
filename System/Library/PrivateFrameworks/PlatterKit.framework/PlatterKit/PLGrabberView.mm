@interface PLGrabberView
- (CGSize)_defaultContainerSize;
- (CGSize)_intrinsicContentSizeWithContainerSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (PLGrabberView)initWithFrame:(CGRect)a3;
- (double)weighting;
- (void)_configureMaterialViewIfNecessary;
- (void)layoutSubviews;
- (void)setWeighting:(double)a3;
@end

@implementation PLGrabberView

- (double)weighting
{
  [(PLGrabberView *)self _configureMaterialViewIfNecessary];
  materialView = self->_materialView;

  [(MTMaterialView *)materialView weighting];
  return result;
}

- (void)setWeighting:(double)a3
{
  [(PLGrabberView *)self weighting];
  if (v5 != a3)
  {
    materialView = self->_materialView;

    [(MTMaterialView *)materialView setWeighting:a3];
  }
}

- (PLGrabberView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    [(PLGrabberView *)self intrinsicContentSize];
    BSRectWithSize();
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v15.receiver = self;
  v15.super_class = PLGrabberView;
  v12 = [(PLGrabberView *)&v15 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(PLGrabberView *)v12 setWeighting:1.0];
  }

  return v13;
}

- (CGSize)intrinsicContentSize
{
  [(PLGrabberView *)self _defaultContainerSize];

  [(PLGrabberView *)self _intrinsicContentSizeWithContainerSize:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PLGrabberView;
  [(PLGrabberView *)&v4 layoutSubviews];
  [(PLGrabberView *)self _configureMaterialViewIfNecessary];
  materialView = self->_materialView;
  [(PLGrabberView *)self bounds];
  [(MTMaterialView *)materialView _setContinuousCornerRadius:CGRectGetHeight(v5) * 0.5];
}

- (CGSize)_defaultContainerSize
{
  v2 = [(PLGrabberView *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 screen];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
  }

  v7 = v6;

  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_intrinsicContentSizeWithContainerSize:(CGSize)a3
{
  v3 = round(a3.width * 0.11971831);
  v4 = 10.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_configureMaterialViewIfNecessary
{
  if (!self->_materialView)
  {
    v3 = MEMORY[0x277D26718];
    v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v5 = [v3 materialViewWithRecipe:19 compatibleWithTraitCollection:v4];
    materialView = self->_materialView;
    self->_materialView = v5;

    [(MTMaterialView *)self->_materialView setRecipeDynamic:0];
    v7 = self->_materialView;
    [(PLGrabberView *)self bounds];
    [(MTMaterialView *)v7 setFrame:?];
    [(PLGrabberView *)self insertSubview:self->_materialView atIndex:0];
    v8 = self->_materialView;

    [(MTMaterialView *)v8 setAutoresizingMask:18];
  }
}

@end