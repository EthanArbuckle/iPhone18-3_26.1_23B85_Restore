@interface _TVStackCommonTemplateController
- (BOOL)_shouldLoadBackgroundImageAsynchronously;
- (BOOL)_updateSupplementaryViewControllersWithElements:(id)elements updateStyles:(BOOL)styles;
- (CGSize)_backgroundImageProxySize;
- (TVMediaPlaying)mediaPlayer;
- (id)_backgroundImageProxy;
- (id)_flowLayout;
- (id)_modalPresenterPresentedViewController;
- (id)_preferredFocusedSupplementaryView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)parsedMediaInfo;
- (id)preferredFocusEnvironments;
- (id)viewControllerWithElement:(id)element layout:(id)layout existingController:(id)controller;
- (int64_t)_blurEffectStyle;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_configureWithBgImage:(id)image backdropImage:(id)backdropImage;
- (void)_disableScrollingIfNecessary:(id)necessary;
- (void)_dispatchEvent:(id)event forItemAtIndexPath:(id)path;
- (void)_mediaPlayerStateDidChange;
- (void)_recordImpressionsForVisibleView;
- (void)_updateBackgroundViews;
- (void)_updateImpressions;
- (void)_updateViewLayout;
- (void)_updateViewOverlay;
- (void)_updateViewSupplementaryViews;
- (void)addObserver:(id)observer forEvent:(id)event;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)handleEvent:(id)event sender:(id)sender withUserInfo:(id)info;
- (void)loadView;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer forEvent:(id)event;
- (void)scrollToTop;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setMediaPlayer:(id)player;
- (void)setSelectedMediaInfo:(id)info;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundAndBackdrop;
- (void)updateBackgroundAndBackdropMaskFactor;
- (void)updateWithViewElement:(id)element;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation _TVStackCommonTemplateController

- (void)dealloc
{
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView setDataSource:0];

  collectionView2 = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView2 setDelegate:0];

  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  appDocument = [viewElement appDocument];
  v7 = [TVTemplateFeaturesManager featuresManagerForAppDocument:appDocument];

  [v7 popContext:self forFeature:&unk_287E8B710];
  [(_TVStackCommonTemplateController *)self setMediaPlayer:0];

  v8.receiver = self;
  v8.super_class = _TVStackCommonTemplateController;
  [(_TVBgImageLoadingViewController *)&v8 dealloc];
}

- (void)updateWithViewElement:(id)element
{
  v100 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  elementCopy2 = element;
  v94.receiver = self;
  v94.super_class = _TVStackCommonTemplateController;
  [(_TVBgImageLoadingViewController *)&v94 updateWithViewElement:elementCopy2];
  array = [MEMORY[0x277CBEB18] array];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v56 = elementCopy2;
  obj = [elementCopy2 children];
  v64 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
  if (!v64)
  {
    v62 = 0;
    v9 = 0;
    v68 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_80;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v68 = 0;
  v9 = 0;
  v62 = 0;
  v63 = *v91;
  v10 = 1;
  selfCopy = self;
  do
  {
    v11 = 0;
    do
    {
      if (*v91 != v63)
      {
        v12 = v11;
        objc_enumerationMutation(obj);
        v11 = v12;
      }

      v65 = v11;
      v69 = *(*(&v90 + 1) + 8 * v11);
      tv_elementType = [v69 tv_elementType];
      if (tv_elementType == 10)
      {
        v25 = v69;

        v10 = 0;
        v62 = v25;
      }

      else if (tv_elementType == 4)
      {
        v14 = v69;

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v60 = v14;
        children = [v14 children];
        v15 = [children countByEnumeratingWithState:&v86 objects:v98 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v87;
          v66 = *v87;
          do
          {
            v18 = 0;
            do
            {
              if (*v87 != v17)
              {
                objc_enumerationMutation(children);
              }

              v19 = *(*(&v86 + 1) + 8 * v18);
              if (!v8 && [*(*(&v86 + 1) + 8 * v18) tv_elementType] == 16 && objc_msgSend(v19, "tv_imageType") == 3)
              {
                v8 = v19;
              }

              else if (v7 || [v19 tv_elementType] != 16)
              {
                if ([v19 tv_elementType] == 35)
                {
                  v72 = v7;
                  v20 = v19;
                  children2 = [v20 children];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    overlayView = self->_overlayView;
                  }

                  else
                  {
                    overlayView = 0;
                  }

                  v23 = [TVMLViewFactory organizerViewWithElements:children2 existingView:overlayView];

                  v5 = v23;
                  v7 = v72;
                  v17 = v66;
                }

                else if (!v68)
                {
                  if ([v19 tv_elementType] == 81)
                  {
                    v68 = v19;
                  }

                  else
                  {
                    v68 = 0;
                  }
                }
              }

              else
              {
                v7 = v19;
              }

              ++v18;
            }

            while (v16 != v18);
            v24 = [children countByEnumeratingWithState:&v86 objects:v98 count:16];
            v16 = v24;
          }

          while (v24);
        }

        v9 = v60;
      }

      else if (v10)
      {
        if ([v69 tv_elementType] == 12)
        {
          v61 = v9;
          v67 = v5;
          v73 = v7;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          children3 = [v69 children];
          v26 = [children3 countByEnumeratingWithState:&v82 objects:v97 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v83;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v83 != v28)
                {
                  objc_enumerationMutation(children3);
                }

                v30 = *(*(&v82 + 1) + 8 * i);
                if (!v8 && [*(*(&v82 + 1) + 8 * i) tv_elementType] == 16 && objc_msgSend(v30, "tv_imageType") == 3)
                {
                  v8 = v30;
                }

                else if ([v30 tv_elementType] == 4)
                {
                  v80 = 0u;
                  v81 = 0u;
                  v78 = 0u;
                  v79 = 0u;
                  children4 = [v30 children];
                  v32 = [children4 countByEnumeratingWithState:&v78 objects:v96 count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v79;
                    do
                    {
                      for (j = 0; j != v33; ++j)
                      {
                        if (*v79 != v34)
                        {
                          objc_enumerationMutation(children4);
                        }

                        v36 = *(*(&v78 + 1) + 8 * j);
                        if ([v36 tv_elementType] == 16 && !objc_msgSend(v36, "tv_imageType"))
                        {
                          v37 = v36;

                          v6 = v37;
                        }
                      }

                      v33 = [children4 countByEnumeratingWithState:&v78 objects:v96 count:16];
                    }

                    while (v33);
                  }
                }
              }

              v27 = [children3 countByEnumeratingWithState:&v82 objects:v97 count:16];
            }

            while (v27);
          }

          self = selfCopy;
          v7 = v73;
          v5 = v67;
          v9 = v61;
        }

        [array addObject:v69];
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      v11 = v65 + 1;
    }

    while (v65 + 1 != v64);
    v64 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
  }

  while (v64);

  if (!v68)
  {
    v68 = 0;
    goto LABEL_85;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [v68 children];
  v38 = [obj countByEnumeratingWithState:&v74 objects:v95 count:16];
  if (!v38)
  {
LABEL_80:
    v7 = 0;
    v8 = 0;
    goto LABEL_83;
  }

  v39 = v38;
  v40 = v9;
  v41 = v5;
  v42 = *v75;
  while (2)
  {
    for (k = 0; k != v39; ++k)
    {
      if (*v75 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(*(&v74 + 1) + 8 * k);
      if ([v44 tv_elementType] == 16 && objc_msgSend(v44, "tv_imageType") == 3)
      {
        v45 = 0;
        v46 = v44;
      }

      else
      {
        tv_elementType2 = [v44 tv_elementType];
        v46 = 0;
        v48 = 0;
        v8 = 0;
        v45 = v44;
        if (tv_elementType2 != 16)
        {
          goto LABEL_75;
        }
      }

      v49 = v44;
      v48 = v45;
      v8 = v46;
LABEL_75:
      if (v48 | v8)
      {
        self = selfCopy;
        v7 = v48;
        goto LABEL_82;
      }

      self = selfCopy;
    }

    v39 = [obj countByEnumeratingWithState:&v74 objects:v95 count:16];
    if (v39)
    {
      continue;
    }

    break;
  }

  v7 = 0;
  v8 = 0;
LABEL_82:
  v5 = v41;
  v9 = v40;
LABEL_83:

LABEL_85:
  objc_storeStrong(&self->_viewElement, elementCopy);
  appDocument = [v56 appDocument];
  [appDocument impressionThreshold];
  self->_impressionThreshold = v51;

  objc_storeStrong(&self->_collectionListElement, v62);
  objc_storeStrong(&self->_backgroundElement, v9);
  objc_storeStrong(&self->_heroImgElement, v8);
  objc_storeStrong(&self->_bgImgElement, v7);
  objc_storeStrong(&self->_uberImgElement, v6);
  objc_storeStrong(&self->_bgMediaContentElement, v68);
  if (v5)
  {
    v52 = v5;
  }

  else
  {
    [(UIView *)self->_overlayView removeFromSuperview];
    v52 = 0;
  }

  v53 = self->_overlayView;
  self->_overlayView = v52;

  -[_TVStackCommonTemplateController updateCollectionViewControllersAndForceReload:](self, "updateCollectionViewControllersAndForceReload:", -[_TVStackCommonTemplateController _updateSupplementaryViewControllersWithElements:updateStyles:](self, "_updateSupplementaryViewControllersWithElements:updateStyles:", array, [v56 updateType] == 2));
  parentViewController = [(_TVStackCommonTemplateController *)self parentViewController];
  [(_TVStackCommonTemplateController *)self _disableScrollingIfNecessary:parentViewController];

  if ([(_TVStackCommonTemplateController *)self isViewLoaded])
  {
    [(_TVStackCommonTemplateController *)self _updateBackgroundViews];
    [(_TVStackCommonTemplateController *)self _updateViewOverlay];
    [(_TVStackCommonTemplateController *)self _updateViewSupplementaryViews];
    [(_TVStackCommonTemplateController *)self _updateViewLayout];
  }
}

- (void)loadView
{
  v3 = [_TVStackWrappingView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [(_TVStackWrappingView *)v3 initWithFrame:?];

  [(_TVStackCommonTemplateController *)self setView:v5];
  objc_initWeak(&location, self);
  v6 = objc_alloc_init(_TVStackViewFlowLayout);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __44___TVStackCommonTemplateController_loadView__block_invoke;
  v18 = &unk_279D6F450;
  objc_copyWeak(&v19, &location);
  [(_TVStackViewFlowLayout *)v6 setOnPrepareLayout:&v15];
  v7 = [_TVStackCollectionView alloc];
  [(_TVStackWrappingView *)v5 bounds:v15];
  v8 = [(_TVStackCollectionView *)v7 initWithFrame:v6 collectionViewLayout:?];
  [(_TVStackCollectionView *)v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TVStackViewCollectionCellIdentifier"];
  [(_TVStackCollectionView *)v8 setDelegate:self];
  [(_TVStackCollectionView *)v8 setDataSource:self];
  [(_TVStackCollectionView *)v8 setBackgroundColor:0];
  [(_TVStackCollectionView *)v8 setOpaque:0];
  [(_TVStackCollectionView *)v8 setAutoresizingMask:18];
  [(_TVStackCollectionView *)v8 setShowsVerticalScrollIndicator:0];
  [(_TVStackCollectionView *)v8 setShowsHorizontalScrollIndicator:0];
  [(_TVStackCollectionView *)v8 setAlwaysBounceVertical:1];
  [(_TVStackCollectionView *)v8 _setContentInsetAdjustmentBehavior:2];
  [(_TVStackWrappingView *)v5 setStackView:v8];
  [(_TVStackCommonTemplateController *)self setCollectionView:v8];
  [(_TVStackCommonTemplateController *)self _updateBackgroundViews];
  [(_TVStackCommonTemplateController *)self _updateViewOverlay];
  [(_TVStackCommonTemplateController *)self _updateViewSupplementaryViews];
  [(_TVStackCommonTemplateController *)self _updateViewLayout];
  v9 = objc_alloc_init(TVObservableEventController);
  observableEventController = self->_observableEventController;
  self->_observableEventController = v9;

  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  appDocument = [viewElement appDocument];
  v13 = [TVTemplateFeaturesManager featuresManagerForAppDocument:appDocument];

  [v13 pushContext:self forFeature:&unk_287E8B710];
  v14 = [v13 currentContextForFeature:&unk_287E9FB40];
  [(_TVStackCommonTemplateController *)self setMediaPlayer:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)traitCollectionDidChange:(id)change
{
  v19.receiver = self;
  v19.super_class = _TVStackCommonTemplateController;
  changeCopy = change;
  [(_TVStackCommonTemplateController *)&v19 traitCollectionDidChange:changeCopy];
  popoverPresentationController = [(_TVStackCommonTemplateController *)self popoverPresentationController];
  if (![popoverPresentationController presenting])
  {
    goto LABEL_9;
  }

  popoverPresentationController2 = [(_TVStackCommonTemplateController *)self popoverPresentationController];
  presentedViewController = [popoverPresentationController2 presentedViewController];
  if ([presentedViewController isEqual:self])
  {

LABEL_4:
    v8 = 0;
    goto LABEL_11;
  }

  popoverPresentationController3 = [(_TVStackCommonTemplateController *)self popoverPresentationController];
  presentedViewController2 = [popoverPresentationController3 presentedViewController];
  v11 = +[_TVModalPresenter presenter];
  modalRootViewController = [v11 modalRootViewController];
  if (![presentedViewController2 isEqual:modalRootViewController])
  {

LABEL_9:
    goto LABEL_10;
  }

  _modalPresenterPresentedViewController = [(_TVStackCommonTemplateController *)self _modalPresenterPresentedViewController];
  v18 = [(_TVStackCommonTemplateController *)self isEqual:_modalPresenterPresentedViewController];

  if (v18)
  {
    goto LABEL_4;
  }

LABEL_10:
  v8 = 1;
LABEL_11:
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView setAlwaysBounceVertical:v8];

  traitCollection = [(_TVStackCommonTemplateController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(_TVStackCommonTemplateController *)self updateBackgroundAndBackdrop];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _TVStackCommonTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidAppear:appear];
  [(_TVStackCommonTemplateController *)self _updateImpressions];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _TVStackCommonTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidDisappear:disappear];
  [(_TVStackCommonTemplateController *)self _cancelImpressionsUpdate];
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(IKViewElement *)self->_viewElement isDisabled])
  {
    if (self->_disabledTemplateFocusCaptureView)
    {
      v10[0] = self->_disabledTemplateFocusCaptureView;
      preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    }

    else
    {
      preferredFocusEnvironments = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    view = [(_TVStackCommonTemplateController *)self view];
    [view layoutIfNeeded];

    _preferredFocusedSupplementaryView = [(_TVStackCommonTemplateController *)self _preferredFocusedSupplementaryView];
    if (_preferredFocusedSupplementaryView)
    {
      _preferredFocusedSupplementaryView2 = [(_TVStackCommonTemplateController *)self _preferredFocusedSupplementaryView];
      v9 = _preferredFocusedSupplementaryView2;
      preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = _TVStackCommonTemplateController;
      preferredFocusEnvironments = [(_TVStackCommonTemplateController *)&v8 preferredFocusEnvironments];
    }
  }

  return preferredFocusEnvironments;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v24 = *MEMORY[0x277D85DE8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  if (focusedView)
  {
    view = [(_TVStackCommonTemplateController *)self view];
    v8 = [focusedView isDescendantOfView:view];

    if (v8)
    {
      focusedSupplementaryViewController = [(_TVStackCommonTemplateController *)self focusedSupplementaryViewController];
      view2 = [focusedSupplementaryViewController view];
      v11 = [focusedView isDescendantOfView:view2];

      if ((v11 & 1) == 0)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        supplementaryViewControllers = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
        v13 = [supplementaryViewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          v14 = *v20;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(supplementaryViewControllers);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              view3 = [v16 view];
              v18 = [focusedView isDescendantOfView:view3];

              if (v18)
              {
                v13 = v16;
                goto LABEL_14;
              }
            }

            v13 = [supplementaryViewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:

        [(_TVStackCommonTemplateController *)self setFocusedSupplementaryViewController:v13];
      }
    }
  }
}

- (void)scrollToTop
{
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView _scrollToTopIfPossible:1];
}

- (void)setMediaPlayer:(id)player
{
  obj = player;
  WeakRetained = objc_loadWeakRetained(&self->_mediaPlayer);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_mediaPlayer);
    [v5 removeObserver:self];

    v6 = objc_storeWeak(&self->_mediaPlayer, obj);
    [obj addObserver:self forEvent:@"TVMediaPlayingStateDidChangeEvent"];

    v7 = objc_loadWeakRetained(&self->_mediaPlayer);
    [v7 addObserver:self forEvent:@"TVMediaPlayingCoverImageDidChangeEvent"];

    [(_TVStackCommonTemplateController *)self _mediaPlayerStateDidChange];
    [(_TVStackCommonTemplateController *)self _mediaPlayerCoverImageDidChange];
  }
}

- (void)setSelectedMediaInfo:(id)info
{
  infoCopy = info;
  selectedMediaInfo = self->_selectedMediaInfo;
  if (selectedMediaInfo != infoCopy)
  {
    v8 = infoCopy;
    selectedMediaInfo = [(TVMediaInfo *)selectedMediaInfo isEqual:infoCopy];
    infoCopy = v8;
    if ((selectedMediaInfo & 1) == 0)
    {
      objc_storeStrong(&self->_selectedMediaInfo, info);
      observableEventController = [(_TVStackCommonTemplateController *)self observableEventController];
      [observableEventController dispatchEvent:@"TVSelectedMediaInfoDidChangeEvent" sender:self withUserInfo:0];

      infoCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](selectedMediaInfo, infoCopy);
}

- (void)handleEvent:(id)event sender:(id)sender withUserInfo:(id)info
{
  eventCopy = event;
  senderCopy = sender;
  infoCopy = info;
  if (@"TVMediaPlayingStateDidChangeEvent" == eventCopy)
  {
    [(_TVStackCommonTemplateController *)self _mediaPlayerStateDidChange];
  }

  else if (@"TVMediaPlayingCoverImageDidChangeEvent" == eventCopy)
  {
    [(_TVStackCommonTemplateController *)self _mediaPlayerCoverImageDidChange];
  }
}

- (void)addObserver:(id)observer forEvent:(id)event
{
  eventCopy = event;
  observerCopy = observer;
  observableEventController = [(_TVStackCommonTemplateController *)self observableEventController];
  [observableEventController addObserver:observerCopy forEvent:eventCopy];
}

- (void)removeObserver:(id)observer forEvent:(id)event
{
  eventCopy = event;
  observerCopy = observer;
  observableEventController = [(_TVStackCommonTemplateController *)self observableEventController];
  [observableEventController removeObserver:observerCopy forEvent:eventCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observableEventController = [(_TVStackCommonTemplateController *)self observableEventController];
  [observableEventController removeObserver:observerCopy];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(_TVStackCommonTemplateController *)self supplementaryViewControllers:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"TVStackViewCollectionCellIdentifier" forIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    supplementaryViewControllers = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
    v9 = [supplementaryViewControllers objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    [v7 setViewController:v9];
  }

  return v7;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(_TVStackCommonTemplateController *)self updateBackgroundAndBackdropMaskFactor];
  [(_TVStackCommonTemplateController *)self _updateImpressions];
  if (self->_impressionThreshold > 0.0)
  {
    visibleCells = [(_TVStackCollectionView *)self->_collectionView visibleCells];
    [visibleCells enumerateObjectsUsingBlock:&__block_literal_global_23];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewController = [cell viewController];
  if (viewController)
  {
    childViewControllers = [(_TVStackCommonTemplateController *)self childViewControllers];
    v7 = [childViewControllers containsObject:viewController];

    if ((v7 & 1) == 0)
    {
      [(_TVStackCommonTemplateController *)self addChildViewController:viewController];
      [viewController didMoveToParentViewController:self];
    }
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  viewController = [cellCopy viewController];
  if (viewController)
  {
    childViewControllers = [(_TVStackCommonTemplateController *)self childViewControllers];
    if ([childViewControllers containsObject:viewController])
    {
      view = [viewController view];
      v9 = [view isDescendantOfView:cellCopy];

      if (v9)
      {
        [viewController willMoveToParentViewController:0];
        [viewController removeFromParentViewController];
      }
    }

    else
    {
    }
  }
}

- (void)updateBackgroundAndBackdrop
{
  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  style = [(IKImageElement *)self->_bgImgElement style];
  tv_imageTreatment = [style tv_imageTreatment];
  v5 = [tv_imageTreatment isEqualToString:@"blurOverlay"];

  if (v5)
  {
    _blurEffectStyle = [(_TVStackCommonTemplateController *)self _blurEffectStyle];
    _backgroundImageRequiresBlur = [(_TVStackCommonTemplateController *)self _backgroundImageRequiresBlur];
    v8 = 4014;
    if (_blurEffectStyle != 4000)
    {
      v8 = 4015;
    }

    if (_backgroundImageRequiresBlur)
    {
      v9 = v8;
    }

    else
    {
      v9 = _blurEffectStyle;
    }

    [stackWrappingView setBackdropBlurEffectStyle:v9];
    [stackWrappingView bounds];
    v11 = v10;
    style2 = [(IKImageElement *)self->_bgImgElement style];
    [style2 tv_padding];
    [stackWrappingView setBackdropInitialPeek:v11 - v13];

    [stackWrappingView setBackdropPeekGradient:0.0];
  }

  else
  {
    [stackWrappingView setBackdropBlurEffectStyle:0x8000000000000000];
  }
}

- (void)updateBackgroundAndBackdropMaskFactor
{
  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  [stackWrappingView bounds];
  v3 = v2;
  stackView = [stackWrappingView stackView];
  [stackView contentOffset];
  v6 = v5;

  stackView2 = [stackWrappingView stackView];
  [stackView2 contentInset];
  v9 = v8;

  [stackWrappingView backdropInitialPeek];
  v11 = v3 - v10;
  v12 = 1.0;
  v13 = 1.0;
  if (v11 > 0.0)
  {
    v13 = (v11 - v9 - v6) / v11;
  }

  v14 = 0.0;
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  if (v14 <= 1.0)
  {
    v12 = v14;
  }

  [stackWrappingView setBackdropMaskFactor:v12];
}

- (id)parsedMediaInfo
{
  v14[1] = *MEMORY[0x277D85DE8];
  bgMediaContentElement = [(_TVStackCommonTemplateController *)self bgMediaContentElement];

  if (bgMediaContentElement)
  {
    bgMediaContentElement = objc_alloc_init(TVBackgroundMediaInfo);
    viewElement = [(_TVStackCommonTemplateController *)self viewElement];
    style = [viewElement style];
    tv_backgroundColor = [style tv_backgroundColor];
    color = [tv_backgroundColor color];
    [(TVMediaInfo *)bgMediaContentElement setBackgroundColor:color];

    bgMediaContentElement2 = [(_TVStackCommonTemplateController *)self bgMediaContentElement];
    playerBridge = [bgMediaContentElement2 playerBridge];
    [(TVBackgroundMediaInfo *)bgMediaContentElement setPlayerBridge:playerBridge];

    _backgroundImageProxy = [(_TVStackCommonTemplateController *)self _backgroundImageProxy];
    v11 = _backgroundImageProxy;
    if (_backgroundImageProxy)
    {
      v14[0] = _backgroundImageProxy;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      [(TVMediaInfo *)bgMediaContentElement setImageProxies:v12];
    }
  }

  return bgMediaContentElement;
}

- (void)_updateImpressions
{
  [(_TVStackCommonTemplateController *)self _cancelImpressionsUpdate];
  if (self->_impressionThreshold > 0.0)
  {

    [(_TVStackCommonTemplateController *)self performSelector:sel__recordImpressionsForVisibleView withObject:0 afterDelay:?];
  }
}

- (void)_recordImpressionsForVisibleView
{
  view = [(_TVStackCommonTemplateController *)self view];
  window = [view window];

  if (window)
  {
    appDocument = [(IKViewElement *)self->_viewElement appDocument];
    v5 = [(_TVStackCommonTemplateController *)self impressionableElementsContainedInDocument:?];
    if ([v5 count])
    {
      [appDocument recordImpressionsForViewElements:v5];
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v36 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  appDocument = [(IKViewElement *)self->_viewElement appDocument];
  v6 = [appDocument isEqual:documentCopy];

  if (v6)
  {
    visibleCells = [(_TVStackCollectionView *)self->_collectionView visibleCells];
    array = [MEMORY[0x277CBEB18] array];
    if ([(_TVStackCommonTemplateController *)self isViewLoaded])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = visibleCells;
      v9 = visibleCells;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            viewController = [*(*(&v30 + 1) + 8 * i) viewController];
            v15 = [viewController tv_impressionableElementsForDocument:documentCopy];
            [array addObjectsFromArray:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v11);
      }

      v16 = [(_TVStackCollectionView *)self->_collectionView visibleSupplementaryViewsOfKind:@"TVStackElementKindHeader"];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v16);
            }

            viewController2 = [*(*(&v26 + 1) + 8 * j) viewController];
            v22 = [viewController2 tv_impressionableElementsForDocument:documentCopy];
            [array addObjectsFromArray:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v18);
      }

      visibleCells = v25;
    }

    if ([array count])
    {
      v23 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (CGSize)_backgroundImageProxySize
{
  heroImgElement = self->_heroImgElement;
  if (heroImgElement || (heroImgElement = self->_bgImgElement) != 0)
  {

    [(IKImageElement *)heroImgElement tv_imageScaleToSize];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = _TVStackCommonTemplateController;
    [(_TVBgImageLoadingViewController *)&v7 _backgroundImageProxySize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_backgroundImageProxy
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  _graphicsQuality = [currentDevice _graphicsQuality];

  if (_graphicsQuality == 10)
  {
    goto LABEL_2;
  }

  heroImgElement = self->_heroImgElement;
  if (heroImgElement)
  {
    tv_imageProxy = [(IKImageElement *)heroImgElement tv_imageProxy];
  }

  else
  {
    if (!self->_bgImgElement)
    {
LABEL_2:
      tv_imageProxy = 0;
      goto LABEL_7;
    }

    appDocument = [(IKViewElement *)self->_viewElement appDocument];
    [appDocument tv_adjustedWindowSize];
    v9 = v8;
    v11 = v10;

    v12 = objc_opt_new();
    [v12 setImageSize:{v9, v11}];
    v13 = [TVImageLayout layoutWithLayout:v12 element:self->_bgImgElement];
    tv_imageProxy = [(IKImageElement *)self->_bgImgElement tv_imageProxyWithLayout:v12];
  }

LABEL_7:

  return tv_imageProxy;
}

- (int64_t)_blurEffectStyle
{
  if ([TVMLUtilities interfaceStyleForTemplateElement:self->_viewElement]== 1)
  {
    return 4000;
  }

  else
  {
    return 4005;
  }
}

- (void)_configureWithBgImage:(id)image backdropImage:(id)backdropImage
{
  [(_TVStackCommonTemplateController *)self setBgImage:image, backdropImage];
  if ([(_TVStackCommonTemplateController *)self isViewLoaded])
  {

    [(_TVStackCommonTemplateController *)self _updateBackgroundViews];
  }
}

- (BOOL)_shouldLoadBackgroundImageAsynchronously
{
  _backgroundImageProxy = [(_TVStackCommonTemplateController *)self _backgroundImageProxy];
  isImageAvailable = [_backgroundImageProxy isImageAvailable];

  return isImageAvailable ^ 1;
}

- (id)viewControllerWithElement:(id)element layout:(id)layout existingController:(id)controller
{
  elementCopy = element;
  controllerCopy = controller;
  layoutCopy = layout;
  v10 = +[TVInterfaceFactory sharedInterfaceFactory];
  v11 = [v10 _viewControllerFromElement:elementCopy layout:layoutCopy existingController:controllerCopy];

  if (!v11)
  {
    v12 = +[TVInterfaceFactory sharedInterfaceFactory];
    view = [controllerCopy view];
    v14 = [v12 _viewFromElement:elementCopy existingView:view];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = controllerCopy;
      }

      else
      {
        v15 = objc_alloc_init(_TVStackWrappingViewController);
      }

      v11 = v15;
      [(_TVStackWrappingViewController *)v15 setView:v14];
      [v11 tv_setAssociatedIKViewElement:elementCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_updateSupplementaryViewControllersWithElements:(id)elements updateStyles:(BOOL)styles
{
  stylesCopy = styles;
  v65 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v7 = elementsCopy;
  if (!stylesCopy || (v8 = [elementsCopy count], -[_TVStackCommonTemplateController supplementaryViewControllers](self, "supplementaryViewControllers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 != v10))
  {
    v44 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    supplementaryViewControllers = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
    v46 = [supplementaryViewControllers mutableCopy];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = v7;
    obj = v7;
    selfCopy = self;
    v47 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
    v13 = 0;
    if (v47)
    {
      v45 = *v58;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v58 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v57 + 1) + 8 * i);
          autoHighlightIdentifier = [v15 autoHighlightIdentifier];

          if (autoHighlightIdentifier)
          {
            [v15 resetProperty:2];
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v17 = v46;
          v18 = [v17 countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v18)
          {
            v48 = v13;
            v19 = *v54;
            while (2)
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v54 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v53 + 1) + 8 * j);
                tv_associatedIKViewElement = [v21 tv_associatedIKViewElement];
                tv_elementType = [tv_associatedIKViewElement tv_elementType];

                if (tv_elementType == [v15 tv_elementType])
                {
                  v18 = v21;
                  goto LABEL_21;
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v53 objects:v63 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

LABEL_21:
            self = selfCopy;
            v13 = v48;
          }

          v24 = [(_TVStackCommonTemplateController *)self viewControllerWithElement:v15 layout:0 existingController:v18];
          v25 = v24;
          if (v24)
          {
            if (!v13 && autoHighlightIdentifier)
            {
              v13 = v24;
            }

            [v44 addObject:v25];
          }

          if (v18 && v18 == v25)
          {
            [v17 removeObjectIdenticalTo:v18];
          }
        }

        v47 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v47);
    }

    v26 = v13;

    v11 = [v46 count] != 0;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v27 = v46;
    v28 = [v27 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v50;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v49 + 1) + 8 * k);
          [v32 willMoveToParentViewController:{0, v41}];
          view = [v32 view];
          [view removeFromSuperview];

          [v32 removeFromParentViewController];
        }

        v29 = [v27 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v29);
    }

    self = selfCopy;
    [(_TVStackCommonTemplateController *)selfCopy setSupplementaryViewControllers:v44];
    v34 = selfCopy;
    if (v26)
    {
      v35 = v26;
    }

    else
    {
      focusedSupplementaryViewController = [(_TVStackCommonTemplateController *)selfCopy focusedSupplementaryViewController];
      if (!focusedSupplementaryViewController)
      {
        goto LABEL_42;
      }

      v38 = focusedSupplementaryViewController;
      focusedSupplementaryViewController2 = [(_TVStackCommonTemplateController *)selfCopy focusedSupplementaryViewController];
      v40 = [v44 containsObject:focusedSupplementaryViewController2];

      if (v40)
      {
        goto LABEL_42;
      }

      v34 = selfCopy;
      v35 = 0;
    }

    [(_TVStackCommonTemplateController *)v34 setFocusedSupplementaryViewController:v35, v41];
LABEL_42:

    v7 = v41;
    goto LABEL_43;
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __97___TVStackCommonTemplateController__updateSupplementaryViewControllersWithElements_updateStyles___block_invoke;
  v61[3] = &unk_279D6F498;
  v61[4] = self;
  [v7 enumerateObjectsUsingBlock:v61];
  v11 = 0;
LABEL_43:
  [(_TVStackCommonTemplateController *)self didUpdateSupplementarySectionInfo];

  return v11;
}

- (id)_flowLayout
{
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  return collectionViewLayout;
}

- (void)_updateViewOverlay
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_overlayView setComponentsNeedUpdate];
  }

  view = [(_TVStackCommonTemplateController *)self view];
  [view addSubview:self->_overlayView];

  overlayView = self->_overlayView;

  [(UIView *)overlayView sizeToFit];
}

- (void)_updateBackgroundViews
{
  parsedMediaInfo = [(_TVStackCommonTemplateController *)self parsedMediaInfo];
  [(_TVStackCommonTemplateController *)self setSelectedMediaInfo:parsedMediaInfo];

  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  selectedMediaInfo = [(_TVStackCommonTemplateController *)self selectedMediaInfo];

  mediaPlayer = [(_TVStackCommonTemplateController *)self mediaPlayer];
  coverImage = [mediaPlayer coverImage];
  v7 = coverImage;
  if (coverImage)
  {
    bgImage = coverImage;
  }

  else
  {
    bgImage = [(_TVStackCommonTemplateController *)self bgImage];
  }

  v9 = bgImage;

  [stackWrappingView setBackgroundImage:v9];
  [stackWrappingView setUsesBackgroundImage:selectedMediaInfo == 0];
  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  style = [viewElement style];
  tv_backgroundColor = [style tv_backgroundColor];
  color = [tv_backgroundColor color];
  [stackWrappingView setBackgroundColor:color];

  mediaPlayer2 = [(_TVStackCommonTemplateController *)self mediaPlayer];
  LODWORD(style) = [mediaPlayer2 isPlaying];

  [stackWrappingView setBackdropImage:v9];
  [stackWrappingView setUsesBackdropImage:style ^ 1];
  [(_TVStackCommonTemplateController *)self updateBackgroundAndBackdrop];
}

- (void)_updateViewSupplementaryViews
{
  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  supplementaryViewControllers = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
  v5 = [supplementaryViewControllers valueForKey:@"view"];

  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  tv_semanticContentAttribute = [viewElement tv_semanticContentAttribute];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65___TVStackCommonTemplateController__updateViewSupplementaryViews__block_invoke;
  v8[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v8[4] = tv_semanticContentAttribute;
  [v5 enumerateObjectsUsingBlock:v8];
  [stackWrappingView setHeaderSupplementaryViews:v5];
}

- (void)viewSafeAreaInsetsDidChange
{
  v10.receiver = self;
  v10.super_class = _TVStackCommonTemplateController;
  [(_TVStackCommonTemplateController *)&v10 viewSafeAreaInsetsDidChange];
  view = [(_TVStackCommonTemplateController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  view2 = [(_TVStackCommonTemplateController *)self view];
  [view2 safeAreaInsets];
  v8 = v7;

  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  [stackWrappingView configureSupplementaryCellLayoutAttributesWithAutomaticInsets:-[_TVStackCommonTemplateController _supplementaryViewSectionIndex](self sectionIndex:{"_supplementaryViewSectionIndex"), v5, 0.0, v8, 0.0}];
}

- (void)_updateViewLayout
{
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  [collectionView setSemanticContentAttribute:{objc_msgSend(viewElement, "tv_semanticContentAttribute")}];

  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  view = [(_TVStackCommonTemplateController *)self view];
  [view safeAreaInsets];
  v7 = v6;
  view2 = [(_TVStackCommonTemplateController *)self view];
  [view2 safeAreaInsets];
  v10 = v9;

  [(_TVStackCommonTemplateController *)self updateBackgroundAndBackdropMaskFactor];
  viewElement2 = [(_TVStackCommonTemplateController *)self viewElement];
  [stackWrappingView transferLayoutStylesFromElement:viewElement2];

  stackView = [stackWrappingView stackView];
  collectionListElement = [(_TVStackCommonTemplateController *)self collectionListElement];
  [stackView transferLayoutStylesFromElement:collectionListElement];

  [stackWrappingView configureSupplementaryCellLayoutAttributesWithAutomaticInsets:-[_TVStackCommonTemplateController _supplementaryViewSectionIndex](self sectionIndex:{"_supplementaryViewSectionIndex"), v7, 0.0, v10, 0.0}];
}

- (id)_modalPresenterPresentedViewController
{
  v2 = +[_TVModalPresenter presenter];
  presentedViewController = [v2 presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateViewController = [presentedViewController templateViewController];

    presentedViewController = templateViewController;
  }

  return presentedViewController;
}

- (void)_disableScrollingIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v23 = necessaryCopy;
  if (necessaryCopy)
  {
    popoverPresentationController = [necessaryCopy popoverPresentationController];
    if (popoverPresentationController)
    {
      v6 = 0;
    }

    else
    {
      navigationController = [v23 navigationController];
      popoverPresentationController2 = [navigationController popoverPresentationController];
      v6 = popoverPresentationController2 == 0;
    }
  }

  else
  {
    v6 = 1;
  }

  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  attributes = [viewElement attributes];
  v11 = [attributes objectForKey:@"disableScrolling"];
  bOOLValue = [v11 BOOLValue];

  if (!v6 && bOOLValue)
  {
    view = [(_TVStackCommonTemplateController *)self view];
    stackView = [view stackView];
    collectionViewLayout = [stackView collectionViewLayout];
    [collectionViewLayout collectionViewContentSize];
    v17 = v16;

    [stackView contentInset];
    v19 = v18;
    [view bounds];
    v21 = v20 - v19 - v17 <= 8.0;
    collectionView = [(_TVStackCommonTemplateController *)self collectionView];
    [collectionView setScrollEnabled:v21];
  }
}

- (id)_preferredFocusedSupplementaryView
{
  v25 = *MEMORY[0x277D85DE8];
  focusedSupplementaryViewController = [(_TVStackCommonTemplateController *)self focusedSupplementaryViewController];

  if (focusedSupplementaryViewController)
  {
    focusedSupplementaryViewController2 = [(_TVStackCommonTemplateController *)self focusedSupplementaryViewController];
    goto LABEL_26;
  }

  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  indexPathForLastFocusedItem = [collectionView indexPathForLastFocusedItem];

  if (indexPathForLastFocusedItem)
  {
    focusedSupplementaryViewController2 = 0;
    goto LABEL_26;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  supplementaryViewControllers = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
  v8 = [supplementaryViewControllers countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    focusedSupplementaryViewController2 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  focusedSupplementaryViewController2 = 0;
  v10 = *v21;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(supplementaryViewControllers);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      if (!focusedSupplementaryViewController2)
      {
        view = [*(*(&v20 + 1) + 8 * i) view];
        if (([view canBecomeFocused] & 1) == 0)
        {

LABEL_15:
          focusedSupplementaryViewController2 = 0;
          goto LABEL_16;
        }

        numberOfCollections = [(_TVStackCommonTemplateController *)self numberOfCollections];

        if (numberOfCollections)
        {
          goto LABEL_15;
        }

        focusedSupplementaryViewController2 = v12;
      }

LABEL_16:
      tv_associatedIKViewElement = [v12 tv_associatedIKViewElement];
      tv_elementType = [tv_associatedIKViewElement tv_elementType];

      if (tv_elementType == 57 || tv_elementType == 45)
      {
        v17 = v12;

        focusedSupplementaryViewController2 = v17;
      }

      if (tv_elementType == 45 || tv_elementType == 57)
      {
        goto LABEL_25;
      }
    }

    v9 = [supplementaryViewControllers countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v9);
LABEL_25:

LABEL_26:
  view2 = [focusedSupplementaryViewController2 view];

  return view2;
}

- (void)_dispatchEvent:(id)event forItemAtIndexPath:(id)path
{
  eventCopy = event;
  pathCopy = path;
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  viewController = [v8 viewController];
  tv_associatedIKViewElement = [viewController tv_associatedIKViewElement];

  if (tv_associatedIKViewElement && ([tv_associatedIKViewElement isDisabled] & 1) == 0)
  {
    [tv_associatedIKViewElement tv_dispatchEvent:eventCopy canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v8 completionBlock:0];
  }
}

- (void)_mediaPlayerStateDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  mediaPlayer = [(_TVStackCommonTemplateController *)self mediaPlayer];
  isPlaying = [mediaPlayer isPlaying];

  if (isPlaying)
  {
    v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  }

  else
  {
    v5 = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  childViewControllers = [(_TVStackCommonTemplateController *)self childViewControllers];
  v7 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(childViewControllers);
        }

        [(_TVStackCommonTemplateController *)self setOverrideTraitCollection:v5 forChildViewController:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(_TVStackCommonTemplateController *)self _updateBackgroundViews];
}

- (TVMediaPlaying)mediaPlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaPlayer);

  return WeakRetained;
}

@end