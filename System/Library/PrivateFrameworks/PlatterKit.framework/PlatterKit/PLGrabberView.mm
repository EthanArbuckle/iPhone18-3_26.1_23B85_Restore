@interface PLGrabberView
- (CGSize)_defaultContainerSize;
- (CGSize)_intrinsicContentSizeWithContainerSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (PLGrabberView)initWithFrame:(CGRect)frame;
- (double)weighting;
- (void)_configureMaterialViewIfNecessary;
- (void)layoutSubviews;
- (void)setWeighting:(double)weighting;
@end

@implementation PLGrabberView

- (double)weighting
{
  [(PLGrabberView *)self _configureMaterialViewIfNecessary];
  materialView = self->_materialView;

  [(MTMaterialView *)materialView weighting];
  return result;
}

- (void)setWeighting:(double)weighting
{
  [(PLGrabberView *)self weighting];
  if (v5 != weighting)
  {
    materialView = self->_materialView;

    [(MTMaterialView *)materialView setWeighting:weighting];
  }
}

- (PLGrabberView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectIsEmpty(frame))
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
  height = [(PLGrabberView *)&v15 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(PLGrabberView *)height setWeighting:1.0];
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
  window = [(PLGrabberView *)self window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  v5 = screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
  }

  v7 = mainScreen;

  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_intrinsicContentSizeWithContainerSize:(CGSize)size
{
  v3 = round(size.width * 0.11971831);
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