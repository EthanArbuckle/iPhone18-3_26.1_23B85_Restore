@interface PXPeopleRecoCollectionView
- (PXPeopleRecoCollectionViewDelegate)recoCollectionViewDelegate;
- (void)setFrame:(CGRect)a3;
@end

@implementation PXPeopleRecoCollectionView

- (PXPeopleRecoCollectionViewDelegate)recoCollectionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recoCollectionViewDelegate);

  return WeakRetained;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = PXPeopleRecoCollectionView;
  [(PXPeopleRecoCollectionView *)&v9 setFrame:?];
  v8 = [(PXPeopleRecoCollectionView *)self recoCollectionViewDelegate];
  [v8 collectionView:self frameDidChange:{x, y, width, height}];
}

@end