@interface PXGadgetCollectionViewCellContentView
- (PXGadgetCollectionViewCellContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PXGadgetCollectionViewCellContentView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXGadgetCollectionViewCellContentView;
  [(PXGadgetCollectionViewCellContentView *)&v5 layoutSubviews];
  v3 = [(PXGadgetCollectionViewCellContentView *)self subviews];
  v4 = [v3 firstObject];

  if (v4)
  {
    [(PXGadgetCollectionViewCellContentView *)self bounds];
    [v4 setFrame:?];
  }
}

- (PXGadgetCollectionViewCellContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXGadgetCollectionViewCellContentView;
  v3 = [(PXGadgetCollectionViewCellContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXGadgetCollectionViewCellContentView *)v3 setAutoresizesSubviews:0];
  }

  return v4;
}

@end