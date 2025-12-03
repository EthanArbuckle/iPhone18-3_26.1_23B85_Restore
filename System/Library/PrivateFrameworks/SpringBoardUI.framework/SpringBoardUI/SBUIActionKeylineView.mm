@interface SBUIActionKeylineView
- (CGSize)intrinsicContentSize;
- (SBUIActionKeylineView)init;
- (double)heightInPixels;
- (void)_invalidateVisualStyling;
- (void)_updateCornerMask;
- (void)_updateVisualStylingIfNecessary;
- (void)layoutSubviews;
- (void)setHeight:(double)height;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation SBUIActionKeylineView

- (SBUIActionKeylineView)init
{
  v3.receiver = self;
  v3.super_class = SBUIActionKeylineView;
  result = [(SBUIActionKeylineView *)&v3 init];
  if (result)
  {
    result->_height = 1.0;
  }

  return result;
}

- (void)setHeight:(double)height
{
  if (vabdd_f64(height, self->_height) > 2.22044605e-16)
  {
    self->_height = height;
    [(SBUIActionKeylineView *)self _updateCornerMask];

    [(SBUIActionKeylineView *)self invalidateIntrinsicContentSize];
  }
}

- (double)heightInPixels
{
  [(SBUIActionKeylineView *)self height];
  v4 = v3;
  traitCollection = [(SBUIActionKeylineView *)self traitCollection];
  [traitCollection displayScale];
  v7 = v4 * (1.0 / v6);

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBUIActionKeylineView;
  [(SBUIActionKeylineView *)&v3 layoutSubviews];
  [(SBUIActionKeylineView *)self _updateVisualStylingIfNecessary];
}

- (void)willMoveToSuperview:(id)superview
{
  v4.receiver = self;
  v4.super_class = SBUIActionKeylineView;
  [(SBUIActionKeylineView *)&v4 willMoveToSuperview:superview];
  [(SBUIActionKeylineView *)self _invalidateVisualStyling];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [(SBUIActionKeylineView *)self heightInPixels];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)_invalidateVisualStyling
{
  [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self];
  visualStylingProvider = self->_visualStylingProvider;
  self->_visualStylingProvider = 0;

  [(SBUIActionKeylineView *)self setNeedsLayout];
}

- (void)_updateVisualStylingIfNecessary
{
  if (!self->_visualStylingProvider)
  {
    v3 = [(SBUIActionKeylineView *)self visualStylingProviderForCategory:2];
    visualStylingProvider = self->_visualStylingProvider;
    self->_visualStylingProvider = v3;

    v5 = self->_visualStylingProvider;

    [(MTVisualStylingProvider *)v5 automaticallyUpdateView:self withStyle:5];
  }
}

- (void)_updateCornerMask
{
  layer = [(SBUIActionKeylineView *)self layer];
  [layer setMaskedCorners:5];
  [(SBUIActionKeylineView *)self heightInPixels];
  v4 = v3 * 0.5;
  v5 = v3 < 1.0;
  v6 = 0.0;
  if (!v5)
  {
    v6 = v4;
  }

  [(SBUIActionKeylineView *)self _setCornerRadius:v6];
}

@end