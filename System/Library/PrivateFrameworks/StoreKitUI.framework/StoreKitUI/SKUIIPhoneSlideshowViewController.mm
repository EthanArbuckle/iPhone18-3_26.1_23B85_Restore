@interface SKUIIPhoneSlideshowViewController
- (SKUIIPhoneSlideshowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SKUISlideshowViewControllerDataSource)dataSource;
- (SKUISlideshowViewControllerDelegate)delegate;
- (id)_imageAtIndex:(int64_t)index;
- (id)_placeholderImageAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)currentIndex;
- (unint64_t)supportedInterfaceOrientations;
- (void)_doneAction:(id)action;
- (void)_reloadPageControl;
- (void)_reloadSize;
- (void)_setImage:(id)image atIndex:(int64_t)index;
- (void)dealloc;
- (void)loadView;
- (void)reloadData;
- (void)setCurrentIndex:(int64_t)index;
- (void)setDataSource:(id)source;
- (void)viewDidLayoutSubviews;
@end

@implementation SKUIIPhoneSlideshowViewController

- (SKUIIPhoneSlideshowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPhoneSlideshowViewController initWithNibName:bundle:];
  }

  v18.receiver = self;
  v18.super_class = SKUIIPhoneSlideshowViewController;
  v8 = [(SKUIIPhoneSlideshowViewController *)&v18 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    images = v8->_images;
    v8->_images = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v8->_operationQueue;
    v8->_operationQueue = v11;

    [(NSOperationQueue *)v8->_operationQueue setMaxConcurrentOperationCount:2];
    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    placeholderQueue = v8->_placeholderQueue;
    v8->_placeholderQueue = v13;

    [(NSOperationQueue *)v8->_placeholderQueue setMaxConcurrentOperationCount:2];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    placeholderImages = v8->_placeholderImages;
    v8->_placeholderImages = dictionary;

    v8->_indexToScrollToOnLoadView = 0x7FFFFFFFFFFFFFFFLL;
    [(SKUIIPhoneSlideshowViewController *)v8 setModalPresentationStyle:2];
    [(SKUIIPhoneSlideshowViewController *)v8 setEdgesForExtendedLayout:0];
  }

  return v8;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  operations = [(NSOperationQueue *)self->_operationQueue operations];
  v4 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(operations);
        }

        [*(*(&v9 + 1) + 8 * v7++) setOutputBlock:0];
      }

      while (v5 != v7);
      v5 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_placeholderQueue cancelAllOperations];
  v8.receiver = self;
  v8.super_class = SKUIIPhoneSlideshowViewController;
  [(SKUIIPhoneSlideshowViewController *)&v8 dealloc];
}

- (void)loadView
{
  v3 = [SKUIScrollForwardingView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v42 = [(SKUIScrollForwardingView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SKUIScrollForwardingView *)v42 setBackgroundColor:clearColor];

  [(SKUIIPhoneSlideshowViewController *)self setView:v42];
  v9 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
  [v9 setAutoresizingMask:18];
  [(SKUIScrollForwardingView *)v42 bounds];
  [v9 setFrame:?];
  [(SKUIScrollForwardingView *)v42 addSubview:v9];
  v10 = objc_alloc_init(SKUIItemGridCollectionViewLayout);
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(SKUIItemGridCollectionViewLayout *)v10 setOddRowBackgroundColor:clearColor2];

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  [(SKUIItemGridCollectionViewLayout *)v10 setEvenRowBackgroundColor:clearColor3];

  [(UICollectionViewFlowLayout *)v10 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v10 setMinimumLineSpacing:0.0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v15 = v14 + -54.0;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  [(UICollectionViewFlowLayout *)v10 setItemSize:v15, v17 + -64.0];

  v18 = [[SKUIGiftThemeCollectionView alloc] initWithFrame:v10 collectionViewLayout:v4, v5, v6, v7];
  collectionView = self->_collectionView;
  self->_collectionView = v18;

  v20 = self->_collectionView;
  clearColor4 = [MEMORY[0x277D75348] clearColor];
  [(SKUIGiftThemeCollectionView *)v20 setBackgroundColor:clearColor4];

  [(SKUIGiftThemeCollectionView *)self->_collectionView setVisibleBoundsInsets:0.0, -27.0, 0.0, -27.0];
  [(SKUIGiftThemeCollectionView *)self->_collectionView setDataSource:self];
  [(SKUIGiftThemeCollectionView *)self->_collectionView setDelegate:self];
  [(SKUIGiftThemeCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"a"];
  [(SKUIGiftThemeCollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
  [(SKUIGiftThemeCollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(SKUIGiftThemeCollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(SKUIGiftThemeCollectionView *)self->_collectionView setClipsToBounds:0];
  [(SKUIGiftThemeCollectionView *)self->_collectionView setPagingEnabled:1];
  v22 = self->_collectionView;
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 bounds];
  v25 = v24 + -54.0;
  mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen4 bounds];
  [(SKUIGiftThemeCollectionView *)v22 setFrame:27.0, 0.0, v25, v27 + -64.0];

  [(SKUIScrollForwardingView *)v42 addSubview:self->_collectionView];
  [(SKUIScrollForwardingView *)v42 setScrollView:self->_collectionView];
  v28 = objc_alloc_init(MEMORY[0x277D757E0]);
  pageControl = self->_pageControl;
  self->_pageControl = v28;

  v30 = self->_pageControl;
  tintColor = [(UIPageControl *)v30 tintColor];
  [(UIPageControl *)v30 setCurrentPageIndicatorTintColor:tintColor];

  v32 = self->_pageControl;
  v33 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  [(UIPageControl *)v32 setPageIndicatorTintColor:v33];

  v34 = self->_pageControl;
  [(SKUIScrollForwardingView *)v42 bounds];
  [(UIPageControl *)v34 setFrame:0.0, -25.0];
  [(UIPageControl *)self->_pageControl setAutoresizingMask:10];
  [(UIPageControl *)self->_pageControl setUserInteractionEnabled:0];
  [(SKUIScrollForwardingView *)v42 addSubview:self->_pageControl];
  [(SKUIIPhoneSlideshowViewController *)self _reloadPageControl];
  navigationItem = [(SKUIIPhoneSlideshowViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v36 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v36 setAction:sel__doneAction_];
  [v36 setTarget:self];
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"SCREENSHOTS_BUTTON_DONE"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"SCREENSHOTS_BUTTON_DONE" inBundles:0];
  }
  v38 = ;
  [v36 setTitle:v38];

  [v36 setStyle:2];
  [navigationItem setRightBarButtonItem:v36];
  title = [(SKUIIPhoneSlideshowViewController *)self title];

  if (!title)
  {
    v40 = self->_clientContext;
    if (v40)
    {
      [(SKUIClientContext *)v40 localizedStringForKey:@"SCREENSHOTS_TITLE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SCREENSHOTS_TITLE" inBundles:0];
    }
    v41 = ;
    [(SKUIIPhoneSlideshowViewController *)self setTitle:v41];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    return 30;
  }

  if (SKUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SKUIIPhoneSlideshowViewController;
  [(SKUIIPhoneSlideshowViewController *)&v3 viewDidLayoutSubviews];
  [(SKUIIPhoneSlideshowViewController *)self _reloadSize];
}

- (int64_t)currentIndex
{
  collectionView = self->_collectionView;
  if (collectionView)
  {
    return SKUIPageForCollectionView(collectionView);
  }

  indexToScrollToOnLoadView = self->_indexToScrollToOnLoadView;
  if (indexToScrollToOnLoadView == 0x7FFFFFFFFFFFFFFFLL)
  {
    return SKUIPageForCollectionView(collectionView);
  }

  else
  {
    return indexToScrollToOnLoadView;
  }
}

- (void)reloadData
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained numberOfItemsInSlideshowViewController:self];

  [(NSMutableArray *)self->_images removeAllObjects];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_placeholderQueue cancelAllOperations];
  if (v5 >= 1)
  {
    for (i = 0; v5 != i; ++i)
    {
      v7 = objc_loadWeakRetained(&self->_dataSource);
      v8 = [v7 slideshowViewController:self imageURLAtIndex:i];

      v9 = objc_loadWeakRetained(&self->_dataSource);
      v10 = [v9 slideshowViewController:self dataConsumerAtIndex:i];

      [v10 imageSize];
      v12 = v11;
      v14 = v13;
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v17 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
      v18 = 250.0;
      if (v17 != 1)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v18 = v19 + -70.0;
      }

      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v22 = v21;

      if (v17 != 1)
      {
      }

      v23 = v22 + -125.0;
      if (v12 > v18 || v14 > v23)
      {
        forcesPortrait = [v10 forcesPortrait];
        v25 = v12 > v14;
        if ((forcesPortrait & v25) != 0)
        {
          v26 = v14;
        }

        else
        {
          v26 = v12;
        }

        if ((forcesPortrait & v25) != 0)
        {
          v27 = v12;
        }

        else
        {
          v27 = v14;
        }

        v28 = fmin(v18 / v26, v23 / v27);
        [v10 setImageSize:{floor(v26 * v28), floor(v27 * v28)}];
        if (!v8)
        {
          goto LABEL_19;
        }
      }

      else if (!v8)
      {
        goto LABEL_19;
      }

      v29 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v8];
      [v29 setDataConsumer:v10];
      [v29 setITunesStoreRequest:0];
      objc_initWeak(&location, self);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __47__SKUIIPhoneSlideshowViewController_reloadData__block_invoke;
      v32[3] = &unk_2781FA248;
      objc_copyWeak(v33, &location);
      v33[1] = i;
      [v29 setOutputBlock:v32];
      [(NSOperationQueue *)self->_operationQueue addOperation:v29];
      objc_destroyWeak(v33);
      objc_destroyWeak(&location);

LABEL_19:
      images = self->_images;
      null = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)images addObject:null];
    }
  }

  [(SKUIGiftThemeCollectionView *)self->_collectionView reloadData];
  [(SKUIIPhoneSlideshowViewController *)self _reloadPageControl];
}

void __47__SKUIIPhoneSlideshowViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SKUIIPhoneSlideshowViewController_reloadData__block_invoke_2;
  block[3] = &unk_2781FE100;
  objc_copyWeak(v8, (a1 + 32));
  v4 = *(a1 + 40);
  v7 = v3;
  v8[1] = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v8);
}

void __47__SKUIIPhoneSlideshowViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setImage:*(a1 + 32) atIndex:*(a1 + 48)];
}

- (void)setCurrentIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  if (collectionView)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v7 = (v6 + -54.0) * index;
    [(SKUIGiftThemeCollectionView *)self->_collectionView contentOffset];
    [(SKUIGiftThemeCollectionView *)collectionView setContentOffset:v7];
  }

  else
  {
    self->_indexToScrollToOnLoadView = index;
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(SKUIIPhoneSlideshowViewController *)self reloadData];
    v5 = obj;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v7 = [(SKUIGiftThemeCollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:pathCopy];
  [v7 setImageSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v8 = [pathCopy row];

  v9 = [(SKUIIPhoneSlideshowViewController *)self _imageAtIndex:v8];
  [v7 setImage:v9];

  return v7;
}

- (void)_doneAction:(id)action
{
  delegate = [(SKUIIPhoneSlideshowViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate slideshowViewControllerDidFinish:self];
  }

  else
  {
    [(SKUIIPhoneSlideshowViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_imageAtIndex:(int64_t)index
{
  v5 = [(NSMutableArray *)self->_images objectAtIndex:?];
  null = [MEMORY[0x277CBEB68] null];

  if (v5 == null)
  {
    v7 = [(SKUIIPhoneSlideshowViewController *)self _placeholderImageAtIndex:index];

    v5 = v7;
  }

  return v5;
}

- (id)_placeholderImageAtIndex:(int64_t)index
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained slideshowViewController:self dataConsumerAtIndex:index];

  v7 = objc_loadWeakRetained(&self->_dataSource);
  v8 = [v7 slideshowViewController:self placeholderImageAtIndex:index];

  if (v8)
  {
    v9 = MEMORY[0x277CCA8C8];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __62__SKUIIPhoneSlideshowViewController__placeholderImageAtIndex___block_invoke;
    v21 = &unk_2781FF4B8;
    v22 = v6;
    v23 = v8;
    selfCopy = self;
    v25[1] = index;
    objc_copyWeak(v25, &location);
    v10 = [v9 blockOperationWithBlock:&v18];
    [(NSOperationQueue *)self->_placeholderQueue addOperation:v10, v18, v19, v20, v21];

    objc_destroyWeak(v25);
  }

  placeholderImages = self->_placeholderImages;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v13 = [(NSMutableDictionary *)placeholderImages objectForKey:v12];

  if (!v13)
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    v13 = [v6 imageForColor:v14];

    v15 = self->_placeholderImages;
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    [(NSMutableDictionary *)v15 setObject:v13 forKey:v16];
  }

  objc_destroyWeak(&location);

  return v13;
}

void __62__SKUIIPhoneSlideshowViewController__placeholderImageAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageForImage:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SKUIIPhoneSlideshowViewController__placeholderImageAtIndex___block_invoke_2;
  v5[3] = &unk_2781FF490;
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8[1] = *(a1 + 64);
  v4 = v2;
  objc_copyWeak(v8, (a1 + 56));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(v8);
}

void __62__SKUIIPhoneSlideshowViewController__placeholderImageAtIndex___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 1048) objectAtIndex:*(a1 + 56)];
    v3 = [MEMORY[0x277CBEB68] null];

    if (v2 == v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained _setImage:*(a1 + 32) atIndex:*(a1 + 56)];
    }
  }
}

- (void)_setImage:(id)image atIndex:(int64_t)index
{
  if (image)
  {
    images = self->_images;
    imageCopy = image;
    [(NSMutableArray *)images replaceObjectAtIndex:index withObject:imageCopy];
    collectionView = self->_collectionView;
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
    v10 = [(SKUIGiftThemeCollectionView *)collectionView cellForItemAtIndexPath:v9];

    [v10 setImage:imageCopy];
  }
}

- (void)_reloadPageControl
{
  [(UIPageControl *)self->_pageControl setNumberOfPages:[(NSMutableArray *)self->_images count]];
  pageControl = self->_pageControl;
  v4 = SKUIPageForCollectionView(self->_collectionView);

  [(UIPageControl *)pageControl setCurrentPage:v4];
}

- (void)_reloadSize
{
  view = [(SKUIIPhoneSlideshowViewController *)self view];
  [view frame];
  v5 = v4 + -54.0;

  view2 = [(SKUIIPhoneSlideshowViewController *)self view];
  [view2 frame];
  v8 = v7 + -64.0;

  collectionViewLayout = [(SKUIGiftThemeCollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout setItemSize:{v5, v8}];

  [(SKUIGiftThemeCollectionView *)self->_collectionView setFrame:27.0, 32.0, v5, v8];
  indexToScrollToOnLoadView = self->_indexToScrollToOnLoadView;
  collectionView = self->_collectionView;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v14 = v13 + -54.0;
  if (indexToScrollToOnLoadView == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SKUIGiftThemeCollectionView *)collectionView setContentOffset:v14 * SKUIPageForCollectionView(self->_collectionView), 0.0];
  }

  else
  {
    [(SKUIGiftThemeCollectionView *)collectionView setContentOffset:v14 * self->_indexToScrollToOnLoadView, 0.0];

    self->_indexToScrollToOnLoadView = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = self->_collectionView;

  [(SKUIGiftThemeCollectionView *)v15 reloadData];
}

- (SKUISlideshowViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SKUISlideshowViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPhoneSlideshowViewController initWithNibName:bundle:]";
}

@end