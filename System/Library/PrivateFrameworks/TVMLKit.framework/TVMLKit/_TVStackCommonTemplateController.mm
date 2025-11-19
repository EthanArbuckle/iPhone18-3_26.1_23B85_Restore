@interface _TVStackCommonTemplateController
- (BOOL)_shouldLoadBackgroundImageAsynchronously;
- (BOOL)_updateSupplementaryViewControllersWithElements:(id)a3 updateStyles:(BOOL)a4;
- (CGSize)_backgroundImageProxySize;
- (TVMediaPlaying)mediaPlayer;
- (id)_backgroundImageProxy;
- (id)_flowLayout;
- (id)_modalPresenterPresentedViewController;
- (id)_preferredFocusedSupplementaryView;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)parsedMediaInfo;
- (id)preferredFocusEnvironments;
- (id)viewControllerWithElement:(id)a3 layout:(id)a4 existingController:(id)a5;
- (int64_t)_blurEffectStyle;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_configureWithBgImage:(id)a3 backdropImage:(id)a4;
- (void)_disableScrollingIfNecessary:(id)a3;
- (void)_dispatchEvent:(id)a3 forItemAtIndexPath:(id)a4;
- (void)_mediaPlayerStateDidChange;
- (void)_recordImpressionsForVisibleView;
- (void)_updateBackgroundViews;
- (void)_updateImpressions;
- (void)_updateViewLayout;
- (void)_updateViewOverlay;
- (void)_updateViewSupplementaryViews;
- (void)addObserver:(id)a3 forEvent:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)handleEvent:(id)a3 sender:(id)a4 withUserInfo:(id)a5;
- (void)loadView;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 forEvent:(id)a4;
- (void)scrollToTop;
- (void)scrollViewDidScroll:(id)a3;
- (void)setMediaPlayer:(id)a3;
- (void)setSelectedMediaInfo:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBackgroundAndBackdrop;
- (void)updateBackgroundAndBackdropMaskFactor;
- (void)updateWithViewElement:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation _TVStackCommonTemplateController

- (void)dealloc
{
  v3 = [(_TVStackCommonTemplateController *)self collectionView];
  [v3 setDataSource:0];

  v4 = [(_TVStackCommonTemplateController *)self collectionView];
  [v4 setDelegate:0];

  v5 = [(_TVStackCommonTemplateController *)self viewElement];
  v6 = [v5 appDocument];
  v7 = [TVTemplateFeaturesManager featuresManagerForAppDocument:v6];

  [v7 popContext:self forFeature:&unk_287E8B710];
  [(_TVStackCommonTemplateController *)self setMediaPlayer:0];

  v8.receiver = self;
  v8.super_class = _TVStackCommonTemplateController;
  [(_TVBgImageLoadingViewController *)&v8 dealloc];
}

- (void)updateWithViewElement:(id)a3
{
  v100 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v4 = a3;
  v94.receiver = self;
  v94.super_class = _TVStackCommonTemplateController;
  [(_TVBgImageLoadingViewController *)&v94 updateWithViewElement:v4];
  v58 = [MEMORY[0x277CBEB18] array];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v56 = v4;
  obj = [v4 children];
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
  v57 = self;
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
      v13 = [v69 tv_elementType];
      if (v13 == 10)
      {
        v25 = v69;

        v10 = 0;
        v62 = v25;
      }

      else if (v13 == 4)
      {
        v14 = v69;

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v60 = v14;
        v70 = [v14 children];
        v15 = [v70 countByEnumeratingWithState:&v86 objects:v98 count:16];
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
                objc_enumerationMutation(v70);
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
                  v21 = [v20 children];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    overlayView = self->_overlayView;
                  }

                  else
                  {
                    overlayView = 0;
                  }

                  v23 = [TVMLViewFactory organizerViewWithElements:v21 existingView:overlayView];

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
            v24 = [v70 countByEnumeratingWithState:&v86 objects:v98 count:16];
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
          v71 = [v69 children];
          v26 = [v71 countByEnumeratingWithState:&v82 objects:v97 count:16];
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
                  objc_enumerationMutation(v71);
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
                  v31 = [v30 children];
                  v32 = [v31 countByEnumeratingWithState:&v78 objects:v96 count:16];
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
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v78 + 1) + 8 * j);
                        if ([v36 tv_elementType] == 16 && !objc_msgSend(v36, "tv_imageType"))
                        {
                          v37 = v36;

                          v6 = v37;
                        }
                      }

                      v33 = [v31 countByEnumeratingWithState:&v78 objects:v96 count:16];
                    }

                    while (v33);
                  }
                }
              }

              v27 = [v71 countByEnumeratingWithState:&v82 objects:v97 count:16];
            }

            while (v27);
          }

          self = v57;
          v7 = v73;
          v5 = v67;
          v9 = v61;
        }

        [v58 addObject:v69];
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
        v47 = [v44 tv_elementType];
        v46 = 0;
        v48 = 0;
        v8 = 0;
        v45 = v44;
        if (v47 != 16)
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
        self = v57;
        v7 = v48;
        goto LABEL_82;
      }

      self = v57;
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
  objc_storeStrong(&self->_viewElement, v55);
  v50 = [v56 appDocument];
  [v50 impressionThreshold];
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

  -[_TVStackCommonTemplateController updateCollectionViewControllersAndForceReload:](self, "updateCollectionViewControllersAndForceReload:", -[_TVStackCommonTemplateController _updateSupplementaryViewControllersWithElements:updateStyles:](self, "_updateSupplementaryViewControllersWithElements:updateStyles:", v58, [v56 updateType] == 2));
  v54 = [(_TVStackCommonTemplateController *)self parentViewController];
  [(_TVStackCommonTemplateController *)self _disableScrollingIfNecessary:v54];

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
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
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

  v11 = [(_TVStackCommonTemplateController *)self viewElement];
  v12 = [v11 appDocument];
  v13 = [TVTemplateFeaturesManager featuresManagerForAppDocument:v12];

  [v13 pushContext:self forFeature:&unk_287E8B710];
  v14 = [v13 currentContextForFeature:&unk_287E9FB40];
  [(_TVStackCommonTemplateController *)self setMediaPlayer:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)traitCollectionDidChange:(id)a3
{
  v19.receiver = self;
  v19.super_class = _TVStackCommonTemplateController;
  v4 = a3;
  [(_TVStackCommonTemplateController *)&v19 traitCollectionDidChange:v4];
  v5 = [(_TVStackCommonTemplateController *)self popoverPresentationController];
  if (![v5 presenting])
  {
    goto LABEL_9;
  }

  v6 = [(_TVStackCommonTemplateController *)self popoverPresentationController];
  v7 = [v6 presentedViewController];
  if ([v7 isEqual:self])
  {

LABEL_4:
    v8 = 0;
    goto LABEL_11;
  }

  v9 = [(_TVStackCommonTemplateController *)self popoverPresentationController];
  v10 = [v9 presentedViewController];
  v11 = +[_TVModalPresenter presenter];
  v12 = [v11 modalRootViewController];
  if (![v10 isEqual:v12])
  {

LABEL_9:
    goto LABEL_10;
  }

  v13 = [(_TVStackCommonTemplateController *)self _modalPresenterPresentedViewController];
  v18 = [(_TVStackCommonTemplateController *)self isEqual:v13];

  if (v18)
  {
    goto LABEL_4;
  }

LABEL_10:
  v8 = 1;
LABEL_11:
  v14 = [(_TVStackCommonTemplateController *)self collectionView];
  [v14 setAlwaysBounceVertical:v8];

  v15 = [(_TVStackCommonTemplateController *)self traitCollection];
  v16 = [v15 userInterfaceStyle];
  v17 = [v4 userInterfaceStyle];

  if (v16 != v17)
  {
    [(_TVStackCommonTemplateController *)self updateBackgroundAndBackdrop];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVStackCommonTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidAppear:a3];
  [(_TVStackCommonTemplateController *)self _updateImpressions];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVStackCommonTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidDisappear:a3];
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
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    }

    else
    {
      v3 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v4 = [(_TVStackCommonTemplateController *)self view];
    [v4 layoutIfNeeded];

    v5 = [(_TVStackCommonTemplateController *)self _preferredFocusedSupplementaryView];
    if (v5)
    {
      v6 = [(_TVStackCommonTemplateController *)self _preferredFocusedSupplementaryView];
      v9 = v6;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = _TVStackCommonTemplateController;
      v3 = [(_TVStackCommonTemplateController *)&v8 preferredFocusEnvironments];
    }
  }

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  v6 = [v5 focusedView];

  if (v6)
  {
    v7 = [(_TVStackCommonTemplateController *)self view];
    v8 = [v6 isDescendantOfView:v7];

    if (v8)
    {
      v9 = [(_TVStackCommonTemplateController *)self focusedSupplementaryViewController];
      v10 = [v9 view];
      v11 = [v6 isDescendantOfView:v10];

      if ((v11 & 1) == 0)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          v14 = *v20;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              v17 = [v16 view];
              v18 = [v6 isDescendantOfView:v17];

              if (v18)
              {
                v13 = v16;
                goto LABEL_14;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v2 = [(_TVStackCommonTemplateController *)self collectionView];
  [v2 _scrollToTopIfPossible:1];
}

- (void)setMediaPlayer:(id)a3
{
  obj = a3;
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

- (void)setSelectedMediaInfo:(id)a3
{
  v5 = a3;
  selectedMediaInfo = self->_selectedMediaInfo;
  if (selectedMediaInfo != v5)
  {
    v8 = v5;
    selectedMediaInfo = [(TVMediaInfo *)selectedMediaInfo isEqual:v5];
    v5 = v8;
    if ((selectedMediaInfo & 1) == 0)
    {
      objc_storeStrong(&self->_selectedMediaInfo, a3);
      v7 = [(_TVStackCommonTemplateController *)self observableEventController];
      [v7 dispatchEvent:@"TVSelectedMediaInfoDidChangeEvent" sender:self withUserInfo:0];

      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](selectedMediaInfo, v5);
}

- (void)handleEvent:(id)a3 sender:(id)a4 withUserInfo:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (@"TVMediaPlayingStateDidChangeEvent" == v10)
  {
    [(_TVStackCommonTemplateController *)self _mediaPlayerStateDidChange];
  }

  else if (@"TVMediaPlayingCoverImageDidChangeEvent" == v10)
  {
    [(_TVStackCommonTemplateController *)self _mediaPlayerCoverImageDidChange];
  }
}

- (void)addObserver:(id)a3 forEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_TVStackCommonTemplateController *)self observableEventController];
  [v8 addObserver:v7 forEvent:v6];
}

- (void)removeObserver:(id)a3 forEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_TVStackCommonTemplateController *)self observableEventController];
  [v8 removeObserver:v7 forEvent:v6];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(_TVStackCommonTemplateController *)self observableEventController];
  [v5 removeObserver:v4];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(_TVStackCommonTemplateController *)self supplementaryViewControllers:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_TVStackCommonTemplateController *)self collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"TVStackViewCollectionCellIdentifier" forIndexPath:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
    v9 = [v8 objectAtIndex:{objc_msgSend(v5, "item")}];

    [v7 setViewController:v9];
  }

  return v7;
}

- (void)scrollViewDidScroll:(id)a3
{
  [(_TVStackCommonTemplateController *)self updateBackgroundAndBackdropMaskFactor];
  [(_TVStackCommonTemplateController *)self _updateImpressions];
  if (self->_impressionThreshold > 0.0)
  {
    v4 = [(_TVStackCollectionView *)self->_collectionView visibleCells];
    [v4 enumerateObjectsUsingBlock:&__block_literal_global_23];
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = [a4 viewController];
  if (v8)
  {
    v6 = [(_TVStackCommonTemplateController *)self childViewControllers];
    v7 = [v6 containsObject:v8];

    if ((v7 & 1) == 0)
    {
      [(_TVStackCommonTemplateController *)self addChildViewController:v8];
      [v8 didMoveToParentViewController:self];
    }
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v6 = [v10 viewController];
  if (v6)
  {
    v7 = [(_TVStackCommonTemplateController *)self childViewControllers];
    if ([v7 containsObject:v6])
    {
      v8 = [v6 view];
      v9 = [v8 isDescendantOfView:v10];

      if (v9)
      {
        [v6 willMoveToParentViewController:0];
        [v6 removeFromParentViewController];
      }
    }

    else
    {
    }
  }
}

- (void)updateBackgroundAndBackdrop
{
  v14 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  v3 = [(IKImageElement *)self->_bgImgElement style];
  v4 = [v3 tv_imageTreatment];
  v5 = [v4 isEqualToString:@"blurOverlay"];

  if (v5)
  {
    v6 = [(_TVStackCommonTemplateController *)self _blurEffectStyle];
    v7 = [(_TVStackCommonTemplateController *)self _backgroundImageRequiresBlur];
    v8 = 4014;
    if (v6 != 4000)
    {
      v8 = 4015;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    [v14 setBackdropBlurEffectStyle:v9];
    [v14 bounds];
    v11 = v10;
    v12 = [(IKImageElement *)self->_bgImgElement style];
    [v12 tv_padding];
    [v14 setBackdropInitialPeek:v11 - v13];

    [v14 setBackdropPeekGradient:0.0];
  }

  else
  {
    [v14 setBackdropBlurEffectStyle:0x8000000000000000];
  }
}

- (void)updateBackgroundAndBackdropMaskFactor
{
  v15 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  [v15 bounds];
  v3 = v2;
  v4 = [v15 stackView];
  [v4 contentOffset];
  v6 = v5;

  v7 = [v15 stackView];
  [v7 contentInset];
  v9 = v8;

  [v15 backdropInitialPeek];
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

  [v15 setBackdropMaskFactor:v12];
}

- (id)parsedMediaInfo
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(_TVStackCommonTemplateController *)self bgMediaContentElement];

  if (v3)
  {
    v3 = objc_alloc_init(TVBackgroundMediaInfo);
    v4 = [(_TVStackCommonTemplateController *)self viewElement];
    v5 = [v4 style];
    v6 = [v5 tv_backgroundColor];
    v7 = [v6 color];
    [(TVMediaInfo *)v3 setBackgroundColor:v7];

    v8 = [(_TVStackCommonTemplateController *)self bgMediaContentElement];
    v9 = [v8 playerBridge];
    [(TVBackgroundMediaInfo *)v3 setPlayerBridge:v9];

    v10 = [(_TVStackCommonTemplateController *)self _backgroundImageProxy];
    v11 = v10;
    if (v10)
    {
      v14[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      [(TVMediaInfo *)v3 setImageProxies:v12];
    }
  }

  return v3;
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
  v3 = [(_TVStackCommonTemplateController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v6 = [(IKViewElement *)self->_viewElement appDocument];
    v5 = [(_TVStackCommonTemplateController *)self impressionableElementsContainedInDocument:?];
    if ([v5 count])
    {
      [v6 recordImpressionsForViewElements:v5];
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IKViewElement *)self->_viewElement appDocument];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = [(_TVStackCollectionView *)self->_collectionView visibleCells];
    v8 = [MEMORY[0x277CBEB18] array];
    if ([(_TVStackCommonTemplateController *)self isViewLoaded])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = v7;
      v9 = v7;
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

            v14 = [*(*(&v30 + 1) + 8 * i) viewController];
            v15 = [v14 tv_impressionableElementsForDocument:v4];
            [v8 addObjectsFromArray:v15];
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

            v21 = [*(*(&v26 + 1) + 8 * j) viewController];
            v22 = [v21 tv_impressionableElementsForDocument:v4];
            [v8 addObjectsFromArray:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v18);
      }

      v7 = v25;
    }

    if ([v8 count])
    {
      v23 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 _graphicsQuality];

  if (v4 == 10)
  {
    goto LABEL_2;
  }

  heroImgElement = self->_heroImgElement;
  if (heroImgElement)
  {
    v5 = [(IKImageElement *)heroImgElement tv_imageProxy];
  }

  else
  {
    if (!self->_bgImgElement)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_7;
    }

    v7 = [(IKViewElement *)self->_viewElement appDocument];
    [v7 tv_adjustedWindowSize];
    v9 = v8;
    v11 = v10;

    v12 = objc_opt_new();
    [v12 setImageSize:{v9, v11}];
    v13 = [TVImageLayout layoutWithLayout:v12 element:self->_bgImgElement];
    v5 = [(IKImageElement *)self->_bgImgElement tv_imageProxyWithLayout:v12];
  }

LABEL_7:

  return v5;
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

- (void)_configureWithBgImage:(id)a3 backdropImage:(id)a4
{
  [(_TVStackCommonTemplateController *)self setBgImage:a3, a4];
  if ([(_TVStackCommonTemplateController *)self isViewLoaded])
  {

    [(_TVStackCommonTemplateController *)self _updateBackgroundViews];
  }
}

- (BOOL)_shouldLoadBackgroundImageAsynchronously
{
  v2 = [(_TVStackCommonTemplateController *)self _backgroundImageProxy];
  v3 = [v2 isImageAvailable];

  return v3 ^ 1;
}

- (id)viewControllerWithElement:(id)a3 layout:(id)a4 existingController:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[TVInterfaceFactory sharedInterfaceFactory];
  v11 = [v10 _viewControllerFromElement:v7 layout:v9 existingController:v8];

  if (!v11)
  {
    v12 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v8 view];
    v14 = [v12 _viewFromElement:v7 existingView:v13];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v8;
      }

      else
      {
        v15 = objc_alloc_init(_TVStackWrappingViewController);
      }

      v11 = v15;
      [(_TVStackWrappingViewController *)v15 setView:v14];
      [v11 tv_setAssociatedIKViewElement:v7];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_updateSupplementaryViewControllersWithElements:(id)a3 updateStyles:(BOOL)a4
{
  v4 = a4;
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v4 || (v8 = [v6 count], -[_TVStackCommonTemplateController supplementaryViewControllers](self, "supplementaryViewControllers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 != v10))
  {
    v44 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v12 = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
    v46 = [v12 mutableCopy];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = v7;
    obj = v7;
    v43 = self;
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
          v16 = [v15 autoHighlightIdentifier];

          if (v16)
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
                v22 = [v21 tv_associatedIKViewElement];
                v23 = [v22 tv_elementType];

                if (v23 == [v15 tv_elementType])
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
            self = v43;
            v13 = v48;
          }

          v24 = [(_TVStackCommonTemplateController *)self viewControllerWithElement:v15 layout:0 existingController:v18];
          v25 = v24;
          if (v24)
          {
            if (!v13 && v16)
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
          v33 = [v32 view];
          [v33 removeFromSuperview];

          [v32 removeFromParentViewController];
        }

        v29 = [v27 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v29);
    }

    self = v43;
    [(_TVStackCommonTemplateController *)v43 setSupplementaryViewControllers:v44];
    v34 = v43;
    if (v26)
    {
      v35 = v26;
    }

    else
    {
      v37 = [(_TVStackCommonTemplateController *)v43 focusedSupplementaryViewController];
      if (!v37)
      {
        goto LABEL_42;
      }

      v38 = v37;
      v39 = [(_TVStackCommonTemplateController *)v43 focusedSupplementaryViewController];
      v40 = [v44 containsObject:v39];

      if (v40)
      {
        goto LABEL_42;
      }

      v34 = v43;
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
  v2 = [(_TVStackCommonTemplateController *)self collectionView];
  v3 = [v2 collectionViewLayout];

  return v3;
}

- (void)_updateViewOverlay
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_overlayView setComponentsNeedUpdate];
  }

  v3 = [(_TVStackCommonTemplateController *)self view];
  [v3 addSubview:self->_overlayView];

  overlayView = self->_overlayView;

  [(UIView *)overlayView sizeToFit];
}

- (void)_updateBackgroundViews
{
  v3 = [(_TVStackCommonTemplateController *)self parsedMediaInfo];
  [(_TVStackCommonTemplateController *)self setSelectedMediaInfo:v3];

  v15 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  v4 = [(_TVStackCommonTemplateController *)self selectedMediaInfo];

  v5 = [(_TVStackCommonTemplateController *)self mediaPlayer];
  v6 = [v5 coverImage];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(_TVStackCommonTemplateController *)self bgImage];
  }

  v9 = v8;

  [v15 setBackgroundImage:v9];
  [v15 setUsesBackgroundImage:v4 == 0];
  v10 = [(_TVStackCommonTemplateController *)self viewElement];
  v11 = [v10 style];
  v12 = [v11 tv_backgroundColor];
  v13 = [v12 color];
  [v15 setBackgroundColor:v13];

  v14 = [(_TVStackCommonTemplateController *)self mediaPlayer];
  LODWORD(v11) = [v14 isPlaying];

  [v15 setBackdropImage:v9];
  [v15 setUsesBackdropImage:v11 ^ 1];
  [(_TVStackCommonTemplateController *)self updateBackgroundAndBackdrop];
}

- (void)_updateViewSupplementaryViews
{
  v3 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  v4 = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
  v5 = [v4 valueForKey:@"view"];

  v6 = [(_TVStackCommonTemplateController *)self viewElement];
  v7 = [v6 tv_semanticContentAttribute];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65___TVStackCommonTemplateController__updateViewSupplementaryViews__block_invoke;
  v8[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v8[4] = v7;
  [v5 enumerateObjectsUsingBlock:v8];
  [v3 setHeaderSupplementaryViews:v5];
}

- (void)viewSafeAreaInsetsDidChange
{
  v10.receiver = self;
  v10.super_class = _TVStackCommonTemplateController;
  [(_TVStackCommonTemplateController *)&v10 viewSafeAreaInsetsDidChange];
  v3 = [(_TVStackCommonTemplateController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v6 = [(_TVStackCommonTemplateController *)self view];
  [v6 safeAreaInsets];
  v8 = v7;

  v9 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  [v9 configureSupplementaryCellLayoutAttributesWithAutomaticInsets:-[_TVStackCommonTemplateController _supplementaryViewSectionIndex](self sectionIndex:{"_supplementaryViewSectionIndex"), v5, 0.0, v8, 0.0}];
}

- (void)_updateViewLayout
{
  v3 = [(_TVStackCommonTemplateController *)self collectionView];
  v4 = [(_TVStackCommonTemplateController *)self viewElement];
  [v3 setSemanticContentAttribute:{objc_msgSend(v4, "tv_semanticContentAttribute")}];

  v14 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  v5 = [(_TVStackCommonTemplateController *)self view];
  [v5 safeAreaInsets];
  v7 = v6;
  v8 = [(_TVStackCommonTemplateController *)self view];
  [v8 safeAreaInsets];
  v10 = v9;

  [(_TVStackCommonTemplateController *)self updateBackgroundAndBackdropMaskFactor];
  v11 = [(_TVStackCommonTemplateController *)self viewElement];
  [v14 transferLayoutStylesFromElement:v11];

  v12 = [v14 stackView];
  v13 = [(_TVStackCommonTemplateController *)self collectionListElement];
  [v12 transferLayoutStylesFromElement:v13];

  [v14 configureSupplementaryCellLayoutAttributesWithAutomaticInsets:-[_TVStackCommonTemplateController _supplementaryViewSectionIndex](self sectionIndex:{"_supplementaryViewSectionIndex"), v7, 0.0, v10, 0.0}];
}

- (id)_modalPresenterPresentedViewController
{
  v2 = +[_TVModalPresenter presenter];
  v3 = [v2 presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 templateViewController];

    v3 = v4;
  }

  return v3;
}

- (void)_disableScrollingIfNecessary:(id)a3
{
  v4 = a3;
  v23 = v4;
  if (v4)
  {
    v5 = [v4 popoverPresentationController];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = [v23 navigationController];
      v8 = [v7 popoverPresentationController];
      v6 = v8 == 0;
    }
  }

  else
  {
    v6 = 1;
  }

  v9 = [(_TVStackCommonTemplateController *)self viewElement];
  v10 = [v9 attributes];
  v11 = [v10 objectForKey:@"disableScrolling"];
  v12 = [v11 BOOLValue];

  if (!v6 && v12)
  {
    v13 = [(_TVStackCommonTemplateController *)self view];
    v14 = [v13 stackView];
    v15 = [v14 collectionViewLayout];
    [v15 collectionViewContentSize];
    v17 = v16;

    [v14 contentInset];
    v19 = v18;
    [v13 bounds];
    v21 = v20 - v19 - v17 <= 8.0;
    v22 = [(_TVStackCommonTemplateController *)self collectionView];
    [v22 setScrollEnabled:v21];
  }
}

- (id)_preferredFocusedSupplementaryView
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(_TVStackCommonTemplateController *)self focusedSupplementaryViewController];

  if (v3)
  {
    v4 = [(_TVStackCommonTemplateController *)self focusedSupplementaryViewController];
    goto LABEL_26;
  }

  v5 = [(_TVStackCommonTemplateController *)self collectionView];
  v6 = [v5 indexPathForLastFocusedItem];

  if (v6)
  {
    v4 = 0;
    goto LABEL_26;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    v4 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  v4 = 0;
  v10 = *v21;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      if (!v4)
      {
        v13 = [*(*(&v20 + 1) + 8 * i) view];
        if (([v13 canBecomeFocused] & 1) == 0)
        {

LABEL_15:
          v4 = 0;
          goto LABEL_16;
        }

        v14 = [(_TVStackCommonTemplateController *)self numberOfCollections];

        if (v14)
        {
          goto LABEL_15;
        }

        v4 = v12;
      }

LABEL_16:
      v15 = [v12 tv_associatedIKViewElement];
      v16 = [v15 tv_elementType];

      if (v16 == 57 || v16 == 45)
      {
        v17 = v12;

        v4 = v17;
      }

      if (v16 == 45 || v16 == 57)
      {
        goto LABEL_25;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v9);
LABEL_25:

LABEL_26:
  v18 = [v4 view];

  return v18;
}

- (void)_dispatchEvent:(id)a3 forItemAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(_TVStackCommonTemplateController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  v9 = [v8 viewController];
  v10 = [v9 tv_associatedIKViewElement];

  if (v10 && ([v10 isDisabled] & 1) == 0)
  {
    [v10 tv_dispatchEvent:v11 canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v8 completionBlock:0];
  }
}

- (void)_mediaPlayerStateDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(_TVStackCommonTemplateController *)self mediaPlayer];
  v4 = [v3 isPlaying];

  if (v4)
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
  v6 = [(_TVStackCommonTemplateController *)self childViewControllers];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(_TVStackCommonTemplateController *)self setOverrideTraitCollection:v5 forChildViewController:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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