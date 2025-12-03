@interface PXSmartScaleView
- (CGSize)displaySize;
- (double)displayScale;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXSmartScaleView

- (CGSize)displaySize
{
  objc_copyStruct(v4, &self->_displaySize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v9.receiver = self;
  v9.super_class = PXSmartScaleView;
  [(PXSmartScaleView *)&v9 setFrame:frame.origin.x, frame.origin.y];
  [(PXSmartScaleView *)self displaySize];
  if (width != v7 || height != v6)
  {
    [(PXSmartScaleView *)self setDisplaySize:width, height];
    [(PXSmartScaleView *)self viewScaleDidChange];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = PXSmartScaleView;
  changeCopy = change;
  [(PXSmartScaleView *)&v10 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;

  traitCollection = [(PXSmartScaleView *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    [(PXSmartScaleView *)self viewScaleDidChange];
  }
}

- (double)displayScale
{
  traitCollection = [(PXSmartScaleView *)self traitCollection];
  [traitCollection displayScale];
  v4 = v3;

  return fmax(v4, 1.0);
}

@end