@interface _UIFocusCollectionViewSectionContainerGuide
- (UICollectionView)collectionView;
- (_UIFocusCollectionViewSectionContainerGuide)initWithCollectionView:(id)a3;
@end

@implementation _UIFocusCollectionViewSectionContainerGuide

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (_UIFocusCollectionViewSectionContainerGuide)initWithCollectionView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIFocusCollectionViewSectionContainerGuide;
  v5 = [(UIFocusGuide *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, v4);
    objc_initWeak(&location, v6);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70___UIFocusCollectionViewSectionContainerGuide_initWithCollectionView___block_invoke;
    v8[3] = &unk_1E711F418;
    objc_copyWeak(&v9, &location);
    [(UIFocusContainerGuide *)v6 setFallbackItemProvider:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v6;
}

@end