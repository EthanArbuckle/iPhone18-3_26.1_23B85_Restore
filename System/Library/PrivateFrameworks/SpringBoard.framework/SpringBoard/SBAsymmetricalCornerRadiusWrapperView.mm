@interface SBAsymmetricalCornerRadiusWrapperView
- (SBAsymmetricalCornerRadiusWrapperView)initWithFrame:(CGRect)frame;
- (uint64_t)trailingCornersMaskingView;
- (void)_updateCornerRadius;
- (void)_updateMaskedCorners;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setCornerRadiusConfiguration:(id)configuration;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setTrailingCornersMaskingView:(uint64_t)view;
@end

@implementation SBAsymmetricalCornerRadiusWrapperView

- (SBAsymmetricalCornerRadiusWrapperView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SBAsymmetricalCornerRadiusWrapperView;
  v3 = [(SBHitTestExtendedView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(SBAsymmetricalCornerRadiusWrapperView *)v3 layer];
    v6 = *MEMORY[0x277CDA138];
    [layer setCornerCurve:*MEMORY[0x277CDA138]];

    v7 = [SBHitTestExtendedView alloc];
    [(SBAsymmetricalCornerRadiusWrapperView *)v4 bounds];
    v8 = [(SBHitTestExtendedView *)v7 initWithFrame:?];
    trailingCornersMaskingView = v4->_trailingCornersMaskingView;
    v4->_trailingCornersMaskingView = v8;

    [(SBHitTestExtendedView *)v4->_trailingCornersMaskingView setAutoresizingMask:18];
    layer2 = [(SBHitTestExtendedView *)v4->_trailingCornersMaskingView layer];
    [layer2 setCornerCurve:v6];

    [(SBAsymmetricalCornerRadiusWrapperView *)v4 addSubview:v4->_trailingCornersMaskingView];
    [(SBAsymmetricalCornerRadiusWrapperView *)v4 setMaskedCorners:15];
  }

  return v4;
}

- (void)setCornerRadiusConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(BSCornerRadiusConfiguration *)self->_cornerRadiusConfiguration isEqual:?]& 1) == 0)
  {
    v4 = [configurationCopy copy];
    cornerRadiusConfiguration = self->_cornerRadiusConfiguration;
    self->_cornerRadiusConfiguration = v4;

    [(SBAsymmetricalCornerRadiusWrapperView *)self _updateCornerRadius];
  }
}

- (void)setClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  v5.receiver = self;
  v5.super_class = SBAsymmetricalCornerRadiusWrapperView;
  [(SBAsymmetricalCornerRadiusWrapperView *)&v5 setClipsToBounds:?];
  [(SBHitTestExtendedView *)self->_trailingCornersMaskingView setClipsToBounds:boundsCopy];
}

- (void)setMaskedCorners:(unint64_t)corners
{
  if (self->_maskedCorners != corners)
  {
    self->_maskedCorners = corners;
    [(SBAsymmetricalCornerRadiusWrapperView *)self _updateMaskedCorners];
  }
}

- (void)_updateCornerRadius
{
  cornerRadiusConfiguration = [(SBAsymmetricalCornerRadiusWrapperView *)self cornerRadiusConfiguration];
  layer = [(SBAsymmetricalCornerRadiusWrapperView *)self layer];
  [cornerRadiusConfiguration topLeft];
  [layer setCornerRadius:?];

  layer2 = [(SBHitTestExtendedView *)self->_trailingCornersMaskingView layer];
  [cornerRadiusConfiguration topRight];
  [layer2 setCornerRadius:?];
}

- (void)_updateMaskedCorners
{
  maskedCorners = [(SBAsymmetricalCornerRadiusWrapperView *)self maskedCorners];
  layer = [(SBAsymmetricalCornerRadiusWrapperView *)self layer];
  [layer setMaskedCorners:maskedCorners & 0xFFFFFFFFFFFFFFF5];

  layer2 = [(SBHitTestExtendedView *)self->_trailingCornersMaskingView layer];
  [layer2 setMaskedCorners:maskedCorners & 0xFFFFFFFFFFFFFFFALL];
}

- (uint64_t)trailingCornersMaskingView
{
  if (result)
  {
    return *(result + 432);
  }

  return result;
}

- (void)setTrailingCornersMaskingView:(uint64_t)view
{
  if (view)
  {
    objc_storeStrong((view + 432), a2);
  }
}

@end