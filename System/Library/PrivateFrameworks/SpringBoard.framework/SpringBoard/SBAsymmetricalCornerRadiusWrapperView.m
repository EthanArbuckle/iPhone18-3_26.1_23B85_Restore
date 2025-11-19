@interface SBAsymmetricalCornerRadiusWrapperView
- (SBAsymmetricalCornerRadiusWrapperView)initWithFrame:(CGRect)a3;
- (uint64_t)trailingCornersMaskingView;
- (void)_updateCornerRadius;
- (void)_updateMaskedCorners;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setCornerRadiusConfiguration:(id)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setTrailingCornersMaskingView:(uint64_t)a1;
@end

@implementation SBAsymmetricalCornerRadiusWrapperView

- (SBAsymmetricalCornerRadiusWrapperView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = SBAsymmetricalCornerRadiusWrapperView;
  v3 = [(SBHitTestExtendedView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBAsymmetricalCornerRadiusWrapperView *)v3 layer];
    v6 = *MEMORY[0x277CDA138];
    [v5 setCornerCurve:*MEMORY[0x277CDA138]];

    v7 = [SBHitTestExtendedView alloc];
    [(SBAsymmetricalCornerRadiusWrapperView *)v4 bounds];
    v8 = [(SBHitTestExtendedView *)v7 initWithFrame:?];
    trailingCornersMaskingView = v4->_trailingCornersMaskingView;
    v4->_trailingCornersMaskingView = v8;

    [(SBHitTestExtendedView *)v4->_trailingCornersMaskingView setAutoresizingMask:18];
    v10 = [(SBHitTestExtendedView *)v4->_trailingCornersMaskingView layer];
    [v10 setCornerCurve:v6];

    [(SBAsymmetricalCornerRadiusWrapperView *)v4 addSubview:v4->_trailingCornersMaskingView];
    [(SBAsymmetricalCornerRadiusWrapperView *)v4 setMaskedCorners:15];
  }

  return v4;
}

- (void)setCornerRadiusConfiguration:(id)a3
{
  v6 = a3;
  if (([(BSCornerRadiusConfiguration *)self->_cornerRadiusConfiguration isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    cornerRadiusConfiguration = self->_cornerRadiusConfiguration;
    self->_cornerRadiusConfiguration = v4;

    [(SBAsymmetricalCornerRadiusWrapperView *)self _updateCornerRadius];
  }
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBAsymmetricalCornerRadiusWrapperView;
  [(SBAsymmetricalCornerRadiusWrapperView *)&v5 setClipsToBounds:?];
  [(SBHitTestExtendedView *)self->_trailingCornersMaskingView setClipsToBounds:v3];
}

- (void)setMaskedCorners:(unint64_t)a3
{
  if (self->_maskedCorners != a3)
  {
    self->_maskedCorners = a3;
    [(SBAsymmetricalCornerRadiusWrapperView *)self _updateMaskedCorners];
  }
}

- (void)_updateCornerRadius
{
  v5 = [(SBAsymmetricalCornerRadiusWrapperView *)self cornerRadiusConfiguration];
  v3 = [(SBAsymmetricalCornerRadiusWrapperView *)self layer];
  [v5 topLeft];
  [v3 setCornerRadius:?];

  v4 = [(SBHitTestExtendedView *)self->_trailingCornersMaskingView layer];
  [v5 topRight];
  [v4 setCornerRadius:?];
}

- (void)_updateMaskedCorners
{
  v3 = [(SBAsymmetricalCornerRadiusWrapperView *)self maskedCorners];
  v4 = [(SBAsymmetricalCornerRadiusWrapperView *)self layer];
  [v4 setMaskedCorners:v3 & 0xFFFFFFFFFFFFFFF5];

  v5 = [(SBHitTestExtendedView *)self->_trailingCornersMaskingView layer];
  [v5 setMaskedCorners:v3 & 0xFFFFFFFFFFFFFFFALL];
}

- (uint64_t)trailingCornersMaskingView
{
  if (result)
  {
    return *(result + 432);
  }

  return result;
}

- (void)setTrailingCornersMaskingView:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 432), a2);
  }
}

@end