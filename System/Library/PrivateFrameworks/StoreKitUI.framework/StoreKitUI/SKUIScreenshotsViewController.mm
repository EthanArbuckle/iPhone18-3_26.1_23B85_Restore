@interface SKUIScreenshotsViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SKUIScreenshotsDelegate)delegate;
- (SKUIScreenshotsViewController)initWithTrailers:(id)trailers screenshots:(id)screenshots clientContext:(id)context;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)slideshowViewController:(id)controller dataConsumerAtIndex:(int64_t)index;
- (id)slideshowViewController:(id)controller imageURLAtIndex:(int64_t)index;
- (id)slideshowViewController:(id)controller placeholderImageAtIndex:(int64_t)index;
- (id)slideshowViewController:(id)controller poppedImageViewAtIndex:(int64_t)index;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_setImage:(id)image forIndex:(int64_t)index;
- (void)_setTrailerImage:(id)image forIndex:(int64_t)index;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)reloadData;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)slideshowViewController:(id)controller scrollToImageAtIndex:(int64_t)index;
@end

@implementation SKUIScreenshotsViewController

- (SKUIScreenshotsViewController)initWithTrailers:(id)trailers screenshots:(id)screenshots clientContext:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  trailersCopy = trailers;
  screenshotsCopy = screenshots;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScreenshotsViewController initWithTrailers:screenshots:clientContext:];
  }

  v55.receiver = self;
  v55.super_class = SKUIScreenshotsViewController;
  v11 = [(SKUIScreenshotsViewController *)&v55 init];
  v12 = v11;
  if (v11)
  {
    v50 = contextCopy;
    objc_storeStrong(&v11->_clientContext, context);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    screenshotRawImages = v12->_screenshotRawImages;
    v12->_screenshotRawImages = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    screenshotImages = v12->_screenshotImages;
    v12->_screenshotImages = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    trailerImages = v12->_trailerImages;
    v12->_trailerImages = v17;

    array = screenshotsCopy;
    if (!screenshotsCopy)
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    objc_storeStrong(&v12->_screenshots, array);
    if (!screenshotsCopy)
    {
    }

    array2 = trailersCopy;
    if (!trailersCopy)
    {
      array2 = [MEMORY[0x277CBEA60] array];
    }

    objc_storeStrong(&v12->_trailers, array2);
    if (!trailersCopy)
    {
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = v12->_screenshots;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      v25 = 1.0;
      v26 = 1.0;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v51 + 1) + 8 * i) sizeForVariant:@"low-dpi"];
          v30 = v29 / v28;
          if (v30 <= v26 || v30 <= 1.0)
          {
            v32 = v26;
          }

          else
          {
            v32 = v30;
          }

          if (v30 < 1.0 && v30 < v25)
          {
            v25 = v30;
          }

          else
          {
            v26 = v32;
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v23);
    }

    else
    {
      v25 = 1.0;
      v26 = 1.0;
    }

    v33 = SKUIUserInterfaceIdiom(v12->_clientContext);
    if (v33)
    {
      if (v26 == 1.0)
      {
        v34 = v25;
      }

      else
      {
        v34 = v26;
      }

      v12->_screenshotMaxSize.width = 300.0;
      if (v34 >= 1.0)
      {
        v35 = 300.0;
      }

      else
      {
        v35 = v34 * 300.0;
      }

      v12->_screenshotMaxSize.height = v35;
    }

    else
    {
      if (1.0 / v25 <= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = 1.0 / v25;
      }

      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v39 = dbl_215F3FCE0[v38 > 480.0];
      v12->_screenshotMaxSize.width = 196.0;
      v12->_screenshotMaxSize.height = v39;

      height = v12->_screenshotMaxSize.height;
      v41 = height / v12->_screenshotMaxSize.width;
      if (v36 < v41)
      {
        v12->_screenshotMaxSize.height = height * (v36 / v41);
      }
    }

    v42 = [SKUIScreenshotDataConsumer consumerWithScreenshotSize:?];
    dataConsumer = v12->_dataConsumer;
    v12->_dataConsumer = v42;

    [(SKUIScreenshotDataConsumer *)v12->_dataConsumer setForcesPortrait:v33 == 0];
    contextCopy = v50;
    if ([(NSArray *)v12->_trailers count])
    {
      if (v33)
      {
        v44 = 3;
      }

      else
      {
        v44 = 1;
      }

      v45 = +[(SSVURLDataConsumer *)SKUIVideoImageDataConsumer];
      trailerConsumer = v12->_trailerConsumer;
      v12->_trailerConsumer = v45;

      [(SKUIVideoImageDataConsumer *)v12->_trailerConsumer setAllowedOrientations:v44];
      v47 = SKUIUserInterfaceIdiom(v12->_clientContext);
      v48 = v12->_trailerConsumer;
      if (v47 == 1)
      {
        [(SKUIVideoImageDataConsumer *)v48 setLandscapeSize:300.0, 225.0];
        [(SKUIVideoImageDataConsumer *)v12->_trailerConsumer setPortraitSize:225.0, 300.0];
      }

      else
      {
        [(SKUIVideoImageDataConsumer *)v48 setLandscapeSize:348.0, 196.0];
        [(SKUIVideoImageDataConsumer *)v12->_trailerConsumer setPortraitSize:196.0, 348.0];
        v12->_screenshotMaxSize = xmmword_215F3FCF0;
      }
    }
  }

  return v12;
}

- (void)reloadData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  screenshotRawImages = self->_screenshotRawImages;
  self->_screenshotRawImages = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  screenshotImages = self->_screenshotImages;
  self->_screenshotImages = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  trailerImages = self->_trailerImages;
  self->_trailerImages = v7;

  if ([(NSArray *)self->_screenshots count])
  {
    v9 = 0;
    do
    {
      v10 = [(NSArray *)self->_screenshots objectAtIndex:v9];
      v11 = [v10 URLForVariant:@"low-dpi"];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v11];
        v13 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
        [v12 setDataConsumer:v13];

        [v12 setITunesStoreRequest:0];
        objc_initWeak(location, self);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __43__SKUIScreenshotsViewController_reloadData__block_invoke;
        v39[3] = &unk_2781FA248;
        objc_copyWeak(v40, location);
        v40[1] = v9;
        [v12 setOutputBlock:v39];
        [(NSOperationQueue *)self->_operationQueue addOperation:v12];
        objc_destroyWeak(v40);
        objc_destroyWeak(location);
      }

      [v10 sizeForVariant:@"low-dpi"];
      v15 = v14;
      v17 = v16;
      dataConsumer = self->_dataConsumer;
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
      v20 = [(SKUIScreenshotDataConsumer *)dataConsumer imageForColor:v19 size:v15, v17];

      [(NSMutableArray *)self->_screenshotImages addObject:v20];
      v21 = self->_screenshotRawImages;
      null = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)v21 addObject:null];

      ++v9;
    }

    while (v9 < [(NSArray *)self->_screenshots count]);
  }

  if ([(NSArray *)self->_trailers count])
  {
    for (i = 0; i < [(NSArray *)self->_trailers count]; ++i)
    {
      v24 = [(NSArray *)self->_trailers objectAtIndex:i];
      artworks = [v24 artworks];
      v26 = [artworks bestArtworkForScaledSize:{self->_screenshotMaxSize.width, self->_screenshotMaxSize.height}];

      v27 = [v26 URL];

      if (v27)
      {
        v28 = objc_alloc(MEMORY[0x277D69CD8]);
        v29 = [v26 URL];
        v30 = [v28 initWithURL:v29];

        [v30 setDataConsumer:self->_trailerConsumer];
        [v30 setITunesStoreRequest:0];
        objc_initWeak(location, self);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __43__SKUIScreenshotsViewController_reloadData__block_invoke_3;
        v37[3] = &unk_2781FA248;
        objc_copyWeak(v38, location);
        v38[1] = i;
        [v30 setOutputBlock:v37];
        [(NSOperationQueue *)self->_operationQueue addOperation:v30];
        objc_destroyWeak(v38);
        objc_destroyWeak(location);

        if (!v26)
        {
          goto LABEL_13;
        }
      }

      else if (!v26)
      {
        goto LABEL_13;
      }

      if (([(SKUIVideoImageDataConsumer *)self->_trailerConsumer allowedOrientations]& 2) != 0)
      {
        [v26 size];
        if (v32 <= v33)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        goto LABEL_17;
      }

LABEL_13:
      v31 = 1;
LABEL_17:
      trailerConsumer = self->_trailerConsumer;
      v35 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
      v36 = [(SKUIVideoImageDataConsumer *)trailerConsumer imageForColor:v35 orientation:v31];

      [(NSMutableArray *)self->_trailerImages addObject:v36];
    }
  }

  [(UICollectionView *)self->_collectionView setContentInset:0.0, 8.0, 0.0, 8.0];
  [(UICollectionView *)self->_collectionView reloadData];
}

void __43__SKUIScreenshotsViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SKUIScreenshotsViewController_reloadData__block_invoke_2;
  block[3] = &unk_2781FE100;
  objc_copyWeak(v8, (a1 + 32));
  v4 = *(a1 + 40);
  v7 = v3;
  v8[1] = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v8);
}

void __43__SKUIScreenshotsViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setImage:*(a1 + 32) forIndex:*(a1 + 48)];
}

void __43__SKUIScreenshotsViewController_reloadData__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SKUIScreenshotsViewController_reloadData__block_invoke_4;
  block[3] = &unk_2781FE100;
  objc_copyWeak(v8, (a1 + 32));
  v4 = *(a1 + 40);
  v7 = v3;
  v8[1] = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v8);
}

void __43__SKUIScreenshotsViewController_reloadData__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setTrailerImage:*(a1 + 32) forIndex:*(a1 + 48)];
}

- (void)loadView
{
  v11 = [[SKUIScreenshotsView alloc] initWithFrame:0.0, 0.0, 1.0, self->_screenshotMaxSize.height + 30.0];
  [(SKUIScreenshotsViewController *)self setView:v11];
  v3 = objc_alloc_init(SKUISwooshCollectionViewLayout);
  [(SKUISwooshCollectionViewLayout *)v3 setSnapsToItemBoundaries:1];
  [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
  [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v3 setScrollDirection:1];
  v4 = objc_alloc(MEMORY[0x277D752A0]);
  [(SKUIScreenshotsView *)v11 bounds];
  v5 = [v4 initWithFrame:v3 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v5;

  v7 = self->_collectionView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)v7 setBackgroundColor:clearColor];

  [(UICollectionView *)self->_collectionView setAutoresizingMask:0];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"a"];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setClipsToBounds:0];
  [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];
  v9 = self->_collectionView;
  +[SKUISwooshCollectionViewLayout snapToBoundariesDecelerationRate];
  [(UICollectionView *)v9 setDecelerationRate:v10];
  [(SKUIScreenshotsView *)v11 setPrimaryView:self->_collectionView];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
    {
      goto LABEL_11;
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = objc_alloc_init(SKUISlideshowViewController);
      [(SKUISlideshowViewController *)v7 setClientContext:self->_clientContext];
      [(SKUISlideshowViewController *)v7 setDataSource:self];
      [(SKUISlideshowViewController *)v7 setDelegate:self];
      -[SKUISlideshowViewController setCurrentIndex:](v7, "setCurrentIndex:", [pathCopy item]);
      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      [(SKUIPlayableAsset *)v8 setTransitioningDelegate:v7];
      v9 = v8;
    }

    else
    {
      v7 = objc_alloc_init(SKUIIPhoneSlideshowViewController);
      [(SKUISlideshowViewController *)v7 setClientContext:self->_clientContext];
      [(SKUISlideshowViewController *)v7 setDataSource:self];
      -[SKUISlideshowViewController setCurrentIndex:](v7, "setCurrentIndex:", [pathCopy item]);
      v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      v8 = v9;
    }

    [(SKUIPlayableAsset *)v9 setModalPresentationStyle:17];
    [(SKUIScreenshotsViewController *)self presentViewController:v8 animated:1 completion:0];
    goto LABEL_9;
  }

  v7 = -[NSArray objectAtIndex:](self->_trailers, "objectAtIndex:", [pathCopy item]);
  if (v7)
  {
    v8 = [[SKUIPlayableAsset alloc] initWithVideo:v7];
    clientContext = [(SKUIScreenshotsViewController *)self clientContext];
    v11 = SKUIVideoPreviewPlayPlayableAsset(v8, clientContext);

    [(SKUIScreenshotsViewController *)self presentViewController:v11 animated:1 completion:0];
LABEL_9:
  }

LABEL_11:
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
    {
      v10 = *MEMORY[0x277CBF3A8];
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___SKUIScreenshotsViewController__screenshotImages;
  }

  else
  {
    v7 = &OBJC_IVAR___SKUIScreenshotsViewController__trailerImages;
  }

  v8 = [*(&self->super.super.super.isa + *v7) objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  [v8 size];
  v10 = v9 + 15.0;

LABEL_7:
  v11 = self->_screenshotMaxSize.height + 30.0;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section != 1)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___SKUIScreenshotsViewController__screenshotImages;
  }

  else
  {
    v7 = &OBJC_IVAR___SKUIScreenshotsViewController__trailerImages;
  }

  v8 = [*(&self->super.super.super.isa + *v7) count];
LABEL_7:

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      v6 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:pathCopy];
      v7 = -[NSMutableArray objectAtIndex:](self->_screenshotImages, "objectAtIndex:", [pathCopy row]);
      [v6 setImage:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:pathCopy];
    v8 = -[NSMutableArray objectAtIndex:](self->_trailerImages, "objectAtIndex:", [pathCopy row]);
    [v6 setImage:v8];

    [v6 setVideo:1];
  }

  return v6;
}

- (id)slideshowViewController:(id)controller placeholderImageAtIndex:(int64_t)index
{
  v6 = [(NSMutableArray *)self->_screenshotRawImages count];
  v7 = 0;
  if ((index & 0x8000000000000000) == 0 && v6 > index)
  {
    v8 = [(NSMutableArray *)self->_screenshotRawImages objectAtIndex:index];
    null = [MEMORY[0x277CBEB68] null];
    if (v8 == null)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NSMutableArray *)self->_screenshotRawImages objectAtIndex:index];
    }
  }

  return v7;
}

- (id)slideshowViewController:(id)controller imageURLAtIndex:(int64_t)index
{
  v4 = [(NSArray *)self->_screenshots objectAtIndex:index];
  v5 = [v4 URLForVariant:@"high-dpi"];

  return v5;
}

- (id)slideshowViewController:(id)controller dataConsumerAtIndex:(int64_t)index
{
  v4 = [(NSArray *)self->_screenshots objectAtIndex:index];
  [v4 sizeForVariant:@"high-dpi"];
  v5 = [SKUIScreenshotDataConsumer consumerWithScreenshotSize:?];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [v5 setForcesPortrait:1];
  }

  return v5;
}

- (void)slideshowViewController:(id)controller scrollToImageAtIndex:(int64_t)index
{
  v7 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:1];
  indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v6 = [indexPathsForVisibleItems containsObject:v7];

  if ((v6 & 1) == 0)
  {
    [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v7 atScrollPosition:8 animated:0];
  }
}

- (id)slideshowViewController:(id)controller poppedImageViewAtIndex:(int64_t)index
{
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:1];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v7 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v5];

  if (v7)
  {
    v8 = objc_alloc_init(SKUIIPhoneSlideshowCell);
    [v7 frame];
    [(SKUIIPhoneSlideshowCell *)v8 setFrame:?];
    v9 = -[NSMutableArray objectAtIndex:](self->_screenshotImages, "objectAtIndex:", [v5 item]);
    [(SKUIIPhoneSlideshowCell *)v8 setImage:v9];

    [(SKUIIPhoneSlideshowCell *)v8 layoutSubviews];
    [(UICollectionView *)self->_collectionView addSubview:v8];
    view = [(SKUIScreenshotsViewController *)self view];
    [(SKUIIPhoneSlideshowCell *)v8 imageFrame];
    [view convertRect:v8 fromView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [(SKUIIPhoneSlideshowCell *)v8 removeFromSuperview];
    v19 = -[NSMutableArray objectAtIndex:](self->_screenshotImages, "objectAtIndex:", [v5 item]);
    null = [MEMORY[0x277CBEB68] null];

    if (v19 == null)
    {
      v21 = objc_alloc_init(MEMORY[0x277D755E8]);
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v19];
    }

    v22 = v21;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v22 setBackgroundColor:clearColor];

    [v22 setFrame:{v12, v14, v16, v18}];
    [v22 setContentMode:1];
    view2 = [(SKUIScreenshotsViewController *)self view];
    [view2 addSubview:v22];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 screenshotsWillBeginDragging:self];
    }
  }
}

- (void)_setImage:(id)image forIndex:(int64_t)index
{
  if (image)
  {
    dataConsumer = self->_dataConsumer;
    imageCopy = image;
    v11 = [(SKUIScreenshotDataConsumer *)dataConsumer imageForImage:imageCopy];
    [(NSMutableArray *)self->_screenshotRawImages replaceObjectAtIndex:index withObject:imageCopy];

    [(NSMutableArray *)self->_screenshotImages replaceObjectAtIndex:index withObject:v11];
    collectionView = self->_collectionView;
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:1];
    v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v9];

    [v10 setImage:v11];
  }
}

- (void)_setTrailerImage:(id)image forIndex:(int64_t)index
{
  if (image)
  {
    trailerImages = self->_trailerImages;
    imageCopy = image;
    [(NSMutableArray *)trailerImages replaceObjectAtIndex:index withObject:imageCopy];
    collectionView = self->_collectionView;
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
    v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v9];

    [v10 setImage:imageCopy];
  }
}

- (SKUIScreenshotsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithTrailers:screenshots:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScreenshotsViewController initWithTrailers:screenshots:clientContext:]";
}

@end