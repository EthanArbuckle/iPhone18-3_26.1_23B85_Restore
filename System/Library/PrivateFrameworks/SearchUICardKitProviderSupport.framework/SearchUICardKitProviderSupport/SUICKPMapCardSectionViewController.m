@interface SUICKPMapCardSectionViewController
+ (id)cardSectionClasses;
- (BOOL)_shouldAttemptToSnapshotMapView;
- (id)_initWithCardSection:(id)a3;
- (id)_mapCardSection;
- (id)_viewSnapshot;
- (void)_loadCardSectionView;
- (void)_loadCardSectionViewIfNeeded;
- (void)_loadMapCardSectionView;
- (void)_snapshotCardSectionView;
- (void)_updateContentSize;
- (void)dealloc;
- (void)didEngageCardSection:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SUICKPMapCardSectionViewController

+ (id)cardSectionClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)_initWithCardSection:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUICKPMapCardSectionViewController;
  v5 = [(CRKCardSectionViewController *)&v11 _initWithCardSection:v4];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SUICKPMapCardSectionViewController__initWithCardSection___block_invoke;
    v8[3] = &unk_279B8EEF0;
    objc_copyWeak(&v9, &location);
    v5[133] = CFRunLoopObserverCreateWithHandler(0, 0x81uLL, 1u, 0, v8);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, v5[133], *MEMORY[0x277D77228]);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __59__SUICKPMapCardSectionViewController__initWithCardSection___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3)
    {
      WeakRetained[1049] = 1;
    }

    else
    {
      WeakRetained[1049] = 0;
      v5 = WeakRetained;
      [WeakRetained _loadCardSectionViewIfNeeded];
      WeakRetained = v5;
    }
  }
}

- (void)dealloc
{
  if (self->_mainRunLoopObserverRef)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveObserver(Main, self->_mainRunLoopObserverRef, *MEMORY[0x277D77228]);
    CFRelease(self->_mainRunLoopObserverRef);
  }

  v4.receiver = self;
  v4.super_class = SUICKPMapCardSectionViewController;
  [(SUICKPMapCardSectionViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUICKPMapCardSectionViewController;
  [(CRKCardSectionViewController *)&v3 viewDidLayoutSubviews];
  [(SUICKPMapCardSectionViewController *)self _updateContentSize];
}

- (void)_snapshotCardSectionView
{
  if ([(SUICKPMapCardSectionViewController *)self _shouldAttemptToSnapshotMapView]&& !self->_needsToLoadCardSectionView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = [(SUICKPMapCardSectionViewController *)self view];
    [v4 bounds];
    v11 = [v3 initWithFrame:?];

    [v11 setClipsToBounds:1];
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v6 = [(SUICKPMapCardSectionViewController *)self _viewSnapshot];
    v7 = [v5 initWithImage:v6];

    [v7 setContentMode:2];
    v8 = [(SUICKPMapCardSectionViewController *)self view];
    [v8 bounds];
    [v7 setFrame:?];

    [v7 setAutoresizingMask:18];
    [v11 addSubview:v7];
    v9 = [(SUICKPMapCardSectionViewController *)self view];
    [v9 setContentView:v11];

    mapSectionView = self->_mapSectionView;
    self->_mapSectionView = 0;

    self->_needsToLoadCardSectionView = 1;
  }
}

- (void)_loadCardSectionView
{
  if ([(SUICKPMapCardSectionViewController *)self _shouldAttemptToSnapshotMapView])
  {
    v3 = objc_alloc_init(MEMORY[0x277CF93C8]);
    [v3 setInterceptsTouches:0];
    [(SUICKPMapCardSectionViewController *)self setView:v3];
    [(SUICKPMapCardSectionViewController *)self _loadMapCardSectionView];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SUICKPMapCardSectionViewController;
    [(CRKCardSectionViewController *)&v4 _loadCardSectionView];
  }
}

- (void)_loadMapCardSectionView
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (!self->_mapSectionView)
  {
    v3 = [(CRKCardSectionViewController *)self viewConfiguration];

    if (v3)
    {
      v4 = [(CRKCardSectionViewController *)self viewConfiguration];
      v5 = [v4 cardSectionView];
      mapSectionView = self->_mapSectionView;
      self->_mapSectionView = v5;
    }

    else
    {
      v7 = MEMORY[0x277D4C818];
      v8 = [(SUICKPMapCardSectionViewController *)self _mapCardSection];
      v18[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v10 = [v7 viewsForCardSections:v9 feedbackListener:self];
      v11 = [v10 firstObject];
      v12 = self->_mapSectionView;
      self->_mapSectionView = v11;
    }

    v13 = [(SUICKPMapCardSectionViewController *)self view];
    v14 = self->_mapSectionView;
    v15 = [(CRKCardSectionViewController *)self delegate];
    [v15 boundingSizeForCardSectionViewController:self];
    [(CRKCardSectionView *)v14 sizeThatFits:?];
    [v13 setContentSize:?];

    v16 = [(SUICKPMapCardSectionViewController *)self view];
    [v16 setContentView:self->_mapSectionView];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_loadCardSectionViewIfNeeded
{
  if (self->_needsToLoadCardSectionView && !self->_inTrackingRunLoopMode)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SUICKPMapCardSectionViewController__loadCardSectionViewIfNeeded__block_invoke;
    block[3] = &unk_279B8EF18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    self->_needsToLoadCardSectionView = 0;
  }
}

- (void)_updateContentSize
{
  if (self->_mapSectionView)
  {
    v5 = [(SUICKPMapCardSectionViewController *)self view];
    mapSectionView = self->_mapSectionView;
    v4 = [(CRKCardSectionViewController *)self delegate];
    [v4 boundingSizeForCardSectionViewController:self];
    [(CRKCardSectionView *)mapSectionView sizeThatFits:?];
    [v5 setContentSize:?];
  }
}

- (id)_viewSnapshot
{
  v3 = [(SUICKPMapCardSectionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = v9;
  v16.width = v5;
  v16.height = v7;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v10);

  v11 = [(SUICKPMapCardSectionViewController *)self view];
  v12 = [(SUICKPMapCardSectionViewController *)self view];
  [v12 bounds];
  [v11 drawViewHierarchyInRect:0 afterScreenUpdates:?];

  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (id)_mapCardSection
{
  v2 = [(CRKCardSectionViewController *)self cardSection];
  v3 = [v2 backingCardSection];

  return v3;
}

- (BOOL)_shouldAttemptToSnapshotMapView
{
  v3 = [(SUICKPMapCardSectionViewController *)self _mapCardSection];
  if ([v3 interactive])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRKCardSectionViewController *)self _remoteViewController];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)didEngageCardSection:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SUICKPMapCardSectionViewController;
  [(SUICKPInteractiveCardSectionViewController *)&v32 didEngageCardSection:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CRKCardSectionViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v5 triggerEvent];
      if (v8 == 14 || [v5 triggerEvent] == 2)
      {
        v9 = [(CRKCardSectionViewController *)self cardSection];
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = [(CRKCardSectionViewController *)self cardSection];
          v12 = [v11 actionCommands];

          v13 = [(CRKCardSectionViewController *)self _extraCommands];

          v26 = v12;
          v27 = v4;
          if (v13)
          {
            v14 = [(CRKCardSectionViewController *)self _extraCommands];
            v15 = [v12 arrayByAddingObjectsFromArray:v14];
          }

          else
          {
            v15 = v12;
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v28 objects:v35 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v29;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v29 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v28 + 1) + 8 * i);
                if (v8 == 14)
                {
                  v33 = @"CRKMapCardSectionPlacemarkData";
                  [v5 modifiedPlacemarkData];
                  v23 = v22 = v5;
                  v34 = v23;
                  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
                  [v21 setUserInfo:v24];

                  v5 = v22;
                }

                [(CRKCardSectionViewController *)self _performCommand:v21, v26];
              }

              v18 = [v16 countByEnumeratingWithState:&v28 objects:v35 count:16];
            }

            while (v18);
          }

          v4 = v27;
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end