@interface SUICKPMapCardSectionViewController
+ (id)cardSectionClasses;
- (BOOL)_shouldAttemptToSnapshotMapView;
- (id)_initWithCardSection:(id)section;
- (id)_mapCardSection;
- (id)_viewSnapshot;
- (void)_loadCardSectionView;
- (void)_loadCardSectionViewIfNeeded;
- (void)_loadMapCardSectionView;
- (void)_snapshotCardSectionView;
- (void)_updateContentSize;
- (void)dealloc;
- (void)didEngageCardSection:(id)section;
- (void)viewDidLayoutSubviews;
@end

@implementation SUICKPMapCardSectionViewController

+ (id)cardSectionClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)_initWithCardSection:(id)section
{
  sectionCopy = section;
  v11.receiver = self;
  v11.super_class = SUICKPMapCardSectionViewController;
  v5 = [(CRKCardSectionViewController *)&v11 _initWithCardSection:sectionCopy];
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
    view = [(SUICKPMapCardSectionViewController *)self view];
    [view bounds];
    v11 = [v3 initWithFrame:?];

    [v11 setClipsToBounds:1];
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    _viewSnapshot = [(SUICKPMapCardSectionViewController *)self _viewSnapshot];
    v7 = [v5 initWithImage:_viewSnapshot];

    [v7 setContentMode:2];
    view2 = [(SUICKPMapCardSectionViewController *)self view];
    [view2 bounds];
    [v7 setFrame:?];

    [v7 setAutoresizingMask:18];
    [v11 addSubview:v7];
    view3 = [(SUICKPMapCardSectionViewController *)self view];
    [view3 setContentView:v11];

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
    viewConfiguration = [(CRKCardSectionViewController *)self viewConfiguration];

    if (viewConfiguration)
    {
      viewConfiguration2 = [(CRKCardSectionViewController *)self viewConfiguration];
      cardSectionView = [viewConfiguration2 cardSectionView];
      mapSectionView = self->_mapSectionView;
      self->_mapSectionView = cardSectionView;
    }

    else
    {
      v7 = MEMORY[0x277D4C818];
      _mapCardSection = [(SUICKPMapCardSectionViewController *)self _mapCardSection];
      v18[0] = _mapCardSection;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v10 = [v7 viewsForCardSections:v9 feedbackListener:self];
      firstObject = [v10 firstObject];
      v12 = self->_mapSectionView;
      self->_mapSectionView = firstObject;
    }

    view = [(SUICKPMapCardSectionViewController *)self view];
    v14 = self->_mapSectionView;
    delegate = [(CRKCardSectionViewController *)self delegate];
    [delegate boundingSizeForCardSectionViewController:self];
    [(CRKCardSectionView *)v14 sizeThatFits:?];
    [view setContentSize:?];

    view2 = [(SUICKPMapCardSectionViewController *)self view];
    [view2 setContentView:self->_mapSectionView];
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
    view = [(SUICKPMapCardSectionViewController *)self view];
    mapSectionView = self->_mapSectionView;
    delegate = [(CRKCardSectionViewController *)self delegate];
    [delegate boundingSizeForCardSectionViewController:self];
    [(CRKCardSectionView *)mapSectionView sizeThatFits:?];
    [view setContentSize:?];
  }
}

- (id)_viewSnapshot
{
  view = [(SUICKPMapCardSectionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = v9;
  v16.width = v5;
  v16.height = v7;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v10);

  view2 = [(SUICKPMapCardSectionViewController *)self view];
  view3 = [(SUICKPMapCardSectionViewController *)self view];
  [view3 bounds];
  [view2 drawViewHierarchyInRect:0 afterScreenUpdates:?];

  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (id)_mapCardSection
{
  cardSection = [(CRKCardSectionViewController *)self cardSection];
  backingCardSection = [cardSection backingCardSection];

  return backingCardSection;
}

- (BOOL)_shouldAttemptToSnapshotMapView
{
  _mapCardSection = [(SUICKPMapCardSectionViewController *)self _mapCardSection];
  if ([_mapCardSection interactive])
  {
    v4 = 0;
  }

  else
  {
    _remoteViewController = [(CRKCardSectionViewController *)self _remoteViewController];
    v4 = _remoteViewController == 0;
  }

  return v4;
}

- (void)didEngageCardSection:(id)section
{
  v36 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v32.receiver = self;
  v32.super_class = SUICKPMapCardSectionViewController;
  [(SUICKPInteractiveCardSectionViewController *)&v32 didEngageCardSection:sectionCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sectionCopy;
    delegate = [(CRKCardSectionViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      triggerEvent = [v5 triggerEvent];
      if (triggerEvent == 14 || [v5 triggerEvent] == 2)
      {
        cardSection = [(CRKCardSectionViewController *)self cardSection];
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          cardSection2 = [(CRKCardSectionViewController *)self cardSection];
          actionCommands = [cardSection2 actionCommands];

          _extraCommands = [(CRKCardSectionViewController *)self _extraCommands];

          v26 = actionCommands;
          v27 = sectionCopy;
          if (_extraCommands)
          {
            _extraCommands2 = [(CRKCardSectionViewController *)self _extraCommands];
            v15 = [actionCommands arrayByAddingObjectsFromArray:_extraCommands2];
          }

          else
          {
            v15 = actionCommands;
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
                if (triggerEvent == 14)
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

          sectionCopy = v27;
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end