@interface SiriUISnippetCollectionViewController
- (SiriUISnippetCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (UICollectionViewLayout)collectionViewLayout;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SiriUISnippetCollectionViewController

- (SiriUISnippetCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriUISnippetCollectionViewController;
  v6 = [(SiriUISnippetViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionViewLayout, a3);
  }

  return v7;
}

- (void)loadView
{
  self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 1;
  v3 = objc_alloc(MEMORY[0x277D752A0]);
  v4 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v4 siriViewControllerExpectedWidth:self];
  v6 = v5;
  v7 = [(SiriUISnippetCollectionViewController *)self collectionViewLayout];
  v8 = [v3 initWithFrame:v7 collectionViewLayout:{0.0, 0.0, v6, 0.0}];
  collectionView = self->_collectionView;
  self->_collectionView = v8;

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setScrollEnabled:0];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  v10 = self->_collectionView;
  v11 = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)v10 setBackgroundColor:v11];

  v12 = [MEMORY[0x277CEF368] sharedPreferences];
  LODWORD(v11) = [v12 enableDragAndDrop];

  if (v11)
  {
    [(UICollectionView *)self->_collectionView setDragDelegate:self];
  }

  v13 = self->_collectionView;

  [(SiriUISnippetCollectionViewController *)self setView:v13];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SiriUISnippetCollectionViewController;
  [(SiriUISnippetCollectionViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(SiriUISnippetCollectionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_previousBounds.size.width != v9 || self->_previousBounds.size.height != v11)
  {
    if (self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews)
    {
      v13 = [(UICollectionView *)self->_collectionView collectionViewLayout];
      [v13 invalidateLayout];
    }

    self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 1;
    self->_previousBounds.origin.x = v5;
    self->_previousBounds.origin.y = v7;
    self->_previousBounds.size.width = v9;
    self->_previousBounds.size.height = v11;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(SiriUISnippetCollectionViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__SiriUISnippetCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v15[3] = &unk_279C5A068;
    v15[4] = self;
    [v7 animateAlongsideTransition:v15 completion:0];
  }

  v14.receiver = self;
  v14.super_class = SiriUISnippetCollectionViewController;
  [(SiriUISnippetCollectionViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

void __92__SiriUISnippetCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1240) collectionViewLayout];
  [v2 invalidateLayout];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SiriUISnippetCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  block[3] = &unk_279C59D78;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __92__SiriUISnippetCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 siriViewControllerHeightDidChange:*(a1 + 32)];
}

- (UICollectionViewLayout)collectionViewLayout
{
  collectionViewLayout = self->_collectionViewLayout;
  if (!collectionViewLayout)
  {
    v4 = objc_alloc_init(SiriUICollectionViewFlowLayout);
    [(UICollectionViewFlowLayout *)v4 setMinimumLineSpacing:0.0];
    [(UICollectionViewFlowLayout *)v4 setMinimumInteritemSpacing:0.0];
    v5 = self->_collectionViewLayout;
    self->_collectionViewLayout = &v4->super.super;

    collectionViewLayout = self->_collectionViewLayout;
  }

  return collectionViewLayout;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"SiriUISnippetCollectionViewController.m" lineNumber:105 description:{@"SiriUISnippetCollectionViewController unexpectedly asked to provide a cell, subclass %@ should override", v8}];

  return 0;
}

@end