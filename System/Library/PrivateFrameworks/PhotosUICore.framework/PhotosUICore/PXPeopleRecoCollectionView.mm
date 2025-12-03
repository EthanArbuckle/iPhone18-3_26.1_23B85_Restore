@interface PXPeopleRecoCollectionView
- (PXPeopleRecoCollectionViewDelegate)recoCollectionViewDelegate;
- (void)setFrame:(CGRect)frame;
@end

@implementation PXPeopleRecoCollectionView

- (PXPeopleRecoCollectionViewDelegate)recoCollectionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recoCollectionViewDelegate);

  return WeakRetained;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = PXPeopleRecoCollectionView;
  [(PXPeopleRecoCollectionView *)&v9 setFrame:?];
  recoCollectionViewDelegate = [(PXPeopleRecoCollectionView *)self recoCollectionViewDelegate];
  [recoCollectionViewDelegate collectionView:self frameDidChange:{x, y, width, height}];
}

@end