@interface SiriUISnippetCollectionViewController
- (SiriUISnippetCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (UICollectionViewLayout)collectionViewLayout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)loadView;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SiriUISnippetCollectionViewController

- (SiriUISnippetCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SiriUISnippetCollectionViewController;
  v6 = [(SiriUISnippetViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionViewLayout, layout);
  }

  return v7;
}

- (void)loadView
{
  self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 1;
  v3 = objc_alloc(MEMORY[0x277D752A0]);
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v6 = v5;
  collectionViewLayout = [(SiriUISnippetCollectionViewController *)self collectionViewLayout];
  v8 = [v3 initWithFrame:collectionViewLayout collectionViewLayout:{0.0, 0.0, v6, 0.0}];
  collectionView = self->_collectionView;
  self->_collectionView = v8;

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setScrollEnabled:0];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  v10 = self->_collectionView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)v10 setBackgroundColor:clearColor];

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  LODWORD(clearColor) = [mEMORY[0x277CEF368] enableDragAndDrop];

  if (clearColor)
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
  view = [(SiriUISnippetCollectionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_previousBounds.size.width != v9 || self->_previousBounds.size.height != v11)
  {
    if (self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews)
    {
      collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];
    }

    self->_needsToInvalidateCollectionViewLayoutOnViewWillLayoutSubviews = 1;
    self->_previousBounds.origin.x = v5;
    self->_previousBounds.origin.y = v7;
    self->_previousBounds.size.width = v9;
    self->_previousBounds.size.height = v11;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  view = [(SiriUISnippetCollectionViewController *)self view];
  [view bounds];
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
    [coordinatorCopy animateAlongsideTransition:v15 completion:0];
  }

  v14.receiver = self;
  v14.super_class = SiriUISnippetCollectionViewController;
  [(SiriUISnippetCollectionViewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SiriUISnippetCollectionViewController.m" lineNumber:105 description:{@"SiriUISnippetCollectionViewController unexpectedly asked to provide a cell, subclass %@ should override", v8}];

  return 0;
}

@end