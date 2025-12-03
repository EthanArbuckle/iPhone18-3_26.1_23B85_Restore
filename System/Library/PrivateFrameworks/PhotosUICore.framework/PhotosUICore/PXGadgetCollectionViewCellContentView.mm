@interface PXGadgetCollectionViewCellContentView
- (PXGadgetCollectionViewCellContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PXGadgetCollectionViewCellContentView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXGadgetCollectionViewCellContentView;
  [(PXGadgetCollectionViewCellContentView *)&v5 layoutSubviews];
  subviews = [(PXGadgetCollectionViewCellContentView *)self subviews];
  firstObject = [subviews firstObject];

  if (firstObject)
  {
    [(PXGadgetCollectionViewCellContentView *)self bounds];
    [firstObject setFrame:?];
  }
}

- (PXGadgetCollectionViewCellContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXGadgetCollectionViewCellContentView;
  v3 = [(PXGadgetCollectionViewCellContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXGadgetCollectionViewCellContentView *)v3 setAutoresizesSubviews:0];
  }

  return v4;
}

@end