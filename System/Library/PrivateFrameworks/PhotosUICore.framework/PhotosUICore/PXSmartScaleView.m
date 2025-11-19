@interface PXSmartScaleView
- (CGSize)displaySize;
- (double)displayScale;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = PXSmartScaleView;
  [(PXSmartScaleView *)&v9 setFrame:a3.origin.x, a3.origin.y];
  [(PXSmartScaleView *)self displaySize];
  if (width != v7 || height != v6)
  {
    [(PXSmartScaleView *)self setDisplaySize:width, height];
    [(PXSmartScaleView *)self viewScaleDidChange];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = PXSmartScaleView;
  v4 = a3;
  [(PXSmartScaleView *)&v10 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(PXSmartScaleView *)self traitCollection];
  [v7 displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    [(PXSmartScaleView *)self viewScaleDidChange];
  }
}

- (double)displayScale
{
  v2 = [(PXSmartScaleView *)self traitCollection];
  [v2 displayScale];
  v4 = v3;

  return fmax(v4, 1.0);
}

@end