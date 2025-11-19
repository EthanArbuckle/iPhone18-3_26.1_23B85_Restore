@interface _UIActivityContentCollectionView
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation _UIActivityContentCollectionView

- (void)layoutSubviews
{
  if ([(_UIActivityContentCollectionView *)self initialValidLayoutWasCalled])
  {
    [(_UIActivityContentCollectionView *)self setIsInitialLayoutPass:0];
  }

  if (![(_UIActivityContentCollectionView *)self initialValidLayoutWasCalled])
  {
    v3 = [(_UIActivityContentCollectionView *)self window];

    if (v3)
    {
      [(_UIActivityContentCollectionView *)self setInitialValidLayoutWasCalled:1];
      [(_UIActivityContentCollectionView *)self setIsInitialLayoutPass:1];
    }
  }

  v4.receiver = self;
  v4.super_class = _UIActivityContentCollectionView;
  [(_UIActivityContentCollectionView *)&v4 layoutSubviews];
}

- (void)removeFromSuperview
{
  v3.receiver = self;
  v3.super_class = _UIActivityContentCollectionView;
  [(_UIActivityContentCollectionView *)&v3 removeFromSuperview];
  [(_UIActivityContentCollectionView *)self setInitialValidLayoutWasCalled:0];
  [(_UIActivityContentCollectionView *)self setIsInitialLayoutPass:0];
}

@end