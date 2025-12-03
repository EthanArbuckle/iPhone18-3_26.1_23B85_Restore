@interface SBHLibraryPodIconZoomAnimator
- (CGPoint)_centerOfMiniPodIconViews;
- (SBHLibraryPodIconZoomAnimator)initWithAnimationContainer:(id)container innerFolderController:(id)controller folderIcon:(id)icon searchBar:(id)bar libraryViewController:(id)viewController;
- (double)_scaleForZoomFraction:(double)fraction;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateIconViewTransformsAndAlphaForZoomFraction:(double)fraction withAnimationSettings:(id)settings delay:(double)delay completion:(id)completion;
- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion;
- (void)_cancelAnimationForIconViewClippedOrObscured;
- (void)_captureVisibleAndMiniPodIconViews;
- (void)_cleanupAnimation;
- (void)_cleanupMiniPodIconViewsAfterCrossfade;
- (void)_handleIconViewClippedNotification:(id)notification;
- (void)_handleIconZoomNotification:(id)notification;
- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion;
- (void)_prepareAnimation;
- (void)_prepareToCrossfadeMiniPodIconViews;
- (void)_removeMatchMoveAnimation;
- (void)_returnFolderAndLibraryScalingViews;
- (void)_setAnimationFraction:(double)fraction;
- (void)_setupFolderAndLibraryScalingViews;
- (void)_setupMatchMoveAnimation;
- (void)_updateFolderNavigationBarAlphaForZoomFraction:(double)fraction;
- (void)_updateFolderViewFramesForZoomFraction:(double)fraction;
- (void)_updateIconCrossfadeForZoomFraction:(double)fraction;
- (void)_updateLibraryAlphaForZoomFraction:(double)fraction;
- (void)_updateLibraryScaleForZoomFraction:(double)fraction;
- (void)_updateSearchBarForZoomFraction:(double)fraction;
- (void)_updateVisibleIconViewsPointerAllowed:(BOOL)allowed;
- (void)cleanup;
- (void)dealloc;
@end

@implementation SBHLibraryPodIconZoomAnimator

- (SBHLibraryPodIconZoomAnimator)initWithAnimationContainer:(id)container innerFolderController:(id)controller folderIcon:(id)icon searchBar:(id)bar libraryViewController:(id)viewController
{
  controllerCopy = controller;
  iconCopy = icon;
  barCopy = bar;
  viewControllerCopy = viewController;
  v21.receiver = self;
  v21.super_class = SBHLibraryPodIconZoomAnimator;
  v17 = [(SBIconZoomAnimator *)&v21 initWithAnimationContainer:container];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_targetIcon, icon);
    objc_storeStrong(&v18->_folderController, controller);
    objc_storeWeak(&v18->_libraryViewController, viewControllerCopy);
    objc_storeStrong(&v18->_searchBar, bar);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel__handleIconViewClippedNotification_ name:@"SBHScrollableContainerDidScrollHiddenIconViewOutsideClippingBoundsNotification" object:0];
    [defaultCenter addObserver:v18 selector:sel__handleIconZoomNotification_ name:@"SBIconZoomExpansionAnimationWillBeginNotification" object:0];
  }

  return v18;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBIconZoomExpansionAnimationWillBeginNotification" object:0];
  [defaultCenter removeObserver:self name:@"SBHScrollableContainerDidScrollHiddenIconViewOutsideClippingBoundsNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBHLibraryPodIconZoomAnimator;
  [(SBIconZoomAnimator *)&v4 dealloc];
}

- (void)cleanup
{
  self->_animationComplete = 1;
  v2.receiver = self;
  v2.super_class = SBHLibraryPodIconZoomAnimator;
  [(SBIconAnimator *)&v2 cleanup];
}

- (void)_prepareAnimation
{
  v5.receiver = self;
  v5.super_class = SBHLibraryPodIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _prepareAnimation];
  WeakRetained = objc_loadWeakRetained(&self->_libraryViewController);
  [WeakRetained addObserver:self];

  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  [referenceIconView setIconGridImageAlpha:0.0];

  [(SBHLibraryPodIconZoomAnimator *)self _setupFolderAndLibraryScalingViews];
  [(SBHLibraryPodIconZoomAnimator *)self _captureVisibleAndMiniPodIconViews];
  [(SBHLibraryPodIconZoomAnimator *)self _prepareToCrossfadeMiniPodIconViews];
  [(SBHLibraryPodIconZoomAnimator *)self _updateVisibleIconViewsPointerAllowed:0];
}

- (void)_setAnimationFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = SBHLibraryPodIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _setAnimationFraction:?];
  if (!self->_animationComplete)
  {
    [(SBHLibraryPodIconZoomAnimator *)self _updateIconCrossfadeForZoomFraction:fraction];
    [(SBHLibraryPodIconZoomAnimator *)self _updateFolderNavigationBarAlphaForZoomFraction:fraction];
    [(SBHLibraryPodIconZoomAnimator *)self _updateLibraryAlphaForZoomFraction:fraction];
    [(SBHLibraryPodIconZoomAnimator *)self _updateFolderViewFramesForZoomFraction:fraction];
    [(SBHLibraryPodIconZoomAnimator *)self _updateLibraryScaleForZoomFraction:fraction];
    [(SBHLibraryPodIconZoomAnimator *)self _updateSearchBarForZoomFraction:fraction];
    [(SBHLibraryPodIconZoomAnimator *)self _updateSearchBarAlphaForZoomFraction:fraction];
    [(SBHLibraryPodIconZoomAnimator *)self _animateIconViewTransformsAndAlphaForZoomFraction:0 withAnimationSettings:0 delay:fraction completion:0.0];
  }
}

- (void)_cleanupAnimation
{
  v19 = *MEMORY[0x1E69E9840];
  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  [referenceIconView setAllowsProgressState:1];
  [referenceIconView setIconGridImageAlpha:1.0];
  WeakRetained = objc_loadWeakRetained(&self->_libraryViewController);
  [WeakRetained removeObserver:self];

  [(SBHLibraryPodIconZoomAnimator *)self _updateSearchBarForZoomFraction:0.0];
  [(SBHLibraryPodIconZoomAnimator *)self _returnFolderAndLibraryScalingViews];
  [(SBHLibraryPodIconZoomAnimator *)self _cleanupMiniPodIconViewsAfterCrossfade];
  [(SBHLibraryPodIconZoomAnimator *)self _updateVisibleIconViewsPointerAllowed:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMapTable *)self->_disableGlassGroupingAssertionsForIconViews keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_disableGlassGroupingAssertionsForIconViews objectForKey:v11];
        [v12 invalidate];
        [(NSMapTable *)self->_disableGlassGroupingAssertionsForIconViews removeObjectForKey:v11];
      }

      v8 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13.receiver = self;
  v13.super_class = SBHLibraryPodIconZoomAnimator;
  [(SBIconZoomAnimator *)&v13 _cleanupAnimation];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBHLibraryPodIconZoomAnimator;
  return [(SBIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 5;
}

- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion
{
  completionCopy = completion;
  if (BSFloatIsZero() && ![(SBIconAnimator *)self invalidated])
  {
    referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
    if (referenceIconView)
    {
      WeakRetained = objc_loadWeakRetained(&self->_libraryViewController);
      [WeakRetained noteIconViewWillZoomDown:referenceIconView];
    }
  }

  v11.receiver = self;
  v11.super_class = SBHLibraryPodIconZoomAnimator;
  [(SBIconZoomAnimator *)&v11 _animateToFraction:completionCopy afterDelay:fraction withSharedCompletion:delay];
}

- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion
{
  animatingCopy = animating;
  v35.receiver = self;
  v35.super_class = SBHLibraryPodIconZoomAnimator;
  completionCopy = completion;
  [(SBIconZoomAnimator *)&v35 _performAnimationToFraction:settings withCentralAnimationSettings:animatingCopy delay:completionCopy alreadyAnimating:fraction sharedCompletion:delay];
  if (BSFloatIsZero())
  {
    [(SBHLibraryPodIconZoomAnimator *)self _setupMatchMoveAnimation];
  }

  else
  {
    [(SBHLibraryPodIconZoomAnimator *)self _removeMatchMoveAnimation];
  }

  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  if (BSFloatIsZero())
  {
    [referenceIconView setAllowsProgressState:0];
  }

  if ((BSFloatIsOne() & 1) != 0 || BSFloatIsZero())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SBIconZoomExpansionAnimationWillBeginNotification" object:self];
  }

  [referenceIconView setIconGridImageAlpha:0.0];
  [(UIView *)self->_folderScalingView setHidden:0];
  podScrollView = [(SBHLibraryPodFolderView *)self->_folderView podScrollView];
  [podScrollView contentOffset];
  [podScrollView _setContentOffsetPinned:0 animated:?];
  settings = [(SBIconAnimator *)self settings];
  v17 = settings;
  if (animatingCopy)
  {
    delay = 0.0;
    v18 = 6;
  }

  else
  {
    v18 = 2;
  }

  v19 = MEMORY[0x1E698E7D0];
  crossfadeSettings = [settings crossfadeSettings];
  bSAnimationSettings = [crossfadeSettings BSAnimationSettings];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __130__SBHLibraryPodIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
  v34[3] = &unk_1E8088CB8;
  v34[4] = self;
  *&v34[5] = fraction;
  [v19 animateWithSettings:bSAnimationSettings options:v18 actions:v34 completion:completionCopy];

  v22 = MEMORY[0x1E698E7D0];
  innerFolderFadeSettings = [v17 innerFolderFadeSettings];
  bSAnimationSettings2 = [innerFolderFadeSettings BSAnimationSettings];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __130__SBHLibraryPodIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_2;
  v33[3] = &unk_1E8088CB8;
  v33[4] = self;
  *&v33[5] = fraction;
  [v22 animateWithSettings:bSAnimationSettings2 options:v18 actions:v33 completion:completionCopy];

  v25 = MEMORY[0x1E698E7D0];
  outerFolderFadeSettings = [v17 outerFolderFadeSettings];
  bSAnimationSettings3 = [outerFolderFadeSettings BSAnimationSettings];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __130__SBHLibraryPodIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3;
  v32[3] = &unk_1E8088CB8;
  v32[4] = self;
  *&v32[5] = fraction;
  [v25 animateWithSettings:bSAnimationSettings3 options:v18 actions:v32 completion:completionCopy];

  v28 = MEMORY[0x1E698E7D0];
  centralAnimationSettings = [v17 centralAnimationSettings];
  bSAnimationSettings4 = [centralAnimationSettings BSAnimationSettings];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __130__SBHLibraryPodIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_4;
  v31[3] = &unk_1E8088CB8;
  v31[4] = self;
  *&v31[5] = fraction;
  [v28 animateWithSettings:bSAnimationSettings4 options:v18 actions:v31 completion:completionCopy];

  [(SBHLibraryPodIconZoomAnimator *)self _animateIconViewTransformsAndAlphaForZoomFraction:v17 withAnimationSettings:completionCopy delay:fraction completion:delay];
  [(UIView *)self->_folderScalingView setUserInteractionEnabled:BSFloatIsZero() ^ 1];
}

uint64_t __130__SBHLibraryPodIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryAlphaForZoomFraction:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateSearchBarAlphaForZoomFraction:v3];
}

uint64_t __130__SBHLibraryPodIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateFolderViewFramesForZoomFraction:*(a1 + 40)];
  [*(a1 + 32) _updateLibraryScaleForZoomFraction:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateSearchBarForZoomFraction:v3];
}

- (CGPoint)_centerOfMiniPodIconViews
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = self->_miniPodIconViews;
  if ([(NSArray *)v2 count])
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v2;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v22 + 1) + 8 * v11) frame];
          v31.origin.x = v12;
          v31.origin.y = v13;
          v31.size.width = v14;
          v31.size.height = v15;
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          v30 = CGRectUnion(v29, v31);
          x = v30.origin.x;
          y = v30.origin.y;
          width = v30.size.width;
          height = v30.size.height;
          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    UIRectGetCenter();
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v17 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (double)_scaleForZoomFraction:(double)fraction
{
  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  firstObject = [(NSArray *)self->_miniPodIconViews firstObject];
  if (firstObject)
  {
    [referenceIconView frameForMiniIconAtIndex:0];
    v8 = v7;
    [firstObject iconImageSize];
    v10 = fraction + (1.0 - fraction) * (v8 / v9);
  }

  else
  {
    v10 = 0.4;
  }

  return v10;
}

- (void)_updateIconCrossfadeForZoomFraction:(double)fraction
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_miniPodIconViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    v8 = 1.0 - fraction;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v9++) setCrossfadeFraction:{v8, v10}];
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_updateFolderNavigationBarAlphaForZoomFraction:(double)fraction
{
  navigationBar = [(SBHLibraryPodFolderView *)self->_folderView navigationBar];
  [navigationBar setAlpha:fraction];
}

- (void)_animateIconViewTransformsAndAlphaForZoomFraction:(double)fraction withAnimationSettings:(id)settings delay:(double)delay completion:(id)completion
{
  v94 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  completionCopy = completion;
  v10 = dispatch_group_create();
  v11 = self->_visibleIconViews;
  v76 = self->_miniPodIconViews;
  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  fractionCopy = fraction;
  [(SBHLibraryPodIconZoomAnimator *)self _scaleForZoomFraction:fraction];
  v69 = v13;
  selfCopy = self;
  [(SBHLibraryPodIconZoomAnimator *)self _centerOfMiniPodIconViews];
  v15 = v14;
  v17 = v16;
  v71 = referenceIconView;
  [referenceIconView iconImageSize];
  BSRectWithSize();
  UIRectGetCenter();
  v67 = v19;
  v68 = v18;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v20 = v11;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v88 objects:v93 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v89;
    v24 = 1.79769313e308;
    v25 = 2.22507386e-308;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v89 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v88 + 1) + 8 * i) center];
        v29 = hypot(v15 - v27, v17 - v28);
        if (v29 > v25)
        {
          v25 = v29;
        }

        if (v29 < v24)
        {
          v24 = v29;
        }
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v88 objects:v93 count:16];
    }

    while (v22);
  }

  else
  {
    v24 = 1.79769313e308;
    v25 = 2.22507386e-308;
  }

  innerFolderEdgeZoomSettings = [settingsCopy innerFolderEdgeZoomSettings];
  innerFolderCenterZoomSettings = [settingsCopy innerFolderCenterZoomSettings];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v20;
  v32 = [(NSArray *)obj countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v85;
    v74 = 1.0 - fractionCopy;
    v73 = v15;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v85 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v84 + 1) + 8 * j);
        [v36 center];
        v39 = v15 - v37;
        v40 = v17 - v38;
        if (settingsCopy)
        {
          v41 = (hypot(v15 - v37, v17 - v38) - v24) / (v25 - v24);
          v42 = [innerFolderEdgeZoomSettings copy];
          [innerFolderCenterZoomSettings mass];
          v44 = v43;
          [innerFolderEdgeZoomSettings mass];
          [v42 setMass:(v41 * v45 + (1.0 - v41) * v44)];
          [innerFolderCenterZoomSettings stiffness];
          v47 = v46;
          [innerFolderEdgeZoomSettings stiffness];
          [v42 setStiffness:(v41 * v48 + (1.0 - v41) * v47)];
          [innerFolderCenterZoomSettings damping];
          v50 = v49;
          [innerFolderEdgeZoomSettings damping];
          [v42 setDamping:(v41 * v51 + (1.0 - v41) * v50)];
          [innerFolderCenterZoomSettings delay];
          v53 = v52;
          [innerFolderEdgeZoomSettings delay];
          [v42 setDelay:(v41 * v54 + (1.0 - v41) * v53)];
          v55 = MEMORY[0x1E698E7D0];
          bSAnimationSettings = [v42 BSAnimationSettings];
          v57 = [v55 factoryWithSettings:bSAnimationSettings];
        }

        else
        {
          v57 = 0;
        }

        v58 = [(NSArray *)v76 indexOfObject:v36];
        if (v58 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = __122__SBHLibraryPodIconZoomAnimator__animateIconViewTransformsAndAlphaForZoomFraction_withAnimationSettings_delay_completion___block_invoke;
          v83[3] = &unk_1E808F588;
          *&v83[5] = fractionCopy;
          *&v83[6] = v74 * v39;
          *&v83[7] = v74 * v40;
          v83[4] = v36;
          v59 = v83;
        }

        else
        {
          v60 = v58;
          [v71 frameForMiniIconAtIndex:v58];
          UIRectGetCenter();
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __122__SBHLibraryPodIconZoomAnimator__animateIconViewTransformsAndAlphaForZoomFraction_withAnimationSettings_delay_completion___block_invoke_2;
          aBlock[3] = &unk_1E808B778;
          *&aBlock[6] = v74 * (v39 - (v68 - v61) / v69);
          *&aBlock[7] = v74 * (v40 - (v67 - v62) / v69);
          *&aBlock[8] = fractionCopy;
          aBlock[9] = v60;
          aBlock[4] = v36;
          aBlock[5] = selfCopy;
          v59 = aBlock;
        }

        v63 = _Block_copy(v59);
        v15 = v73;
        if (v63)
        {
          dispatch_group_enter(v10);
          v64 = MEMORY[0x1E698E7D0];
          v80[0] = MEMORY[0x1E69E9820];
          v80[1] = 3221225472;
          v80[2] = __122__SBHLibraryPodIconZoomAnimator__animateIconViewTransformsAndAlphaForZoomFraction_withAnimationSettings_delay_completion___block_invoke_3;
          v80[3] = &unk_1E8088F40;
          v81 = v10;
          [v64 animateWithFactory:v57 additionalDelay:6 options:v63 actions:v80 completion:delay + 0.0];
        }
      }

      v33 = [(NSArray *)obj countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v33);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__SBHLibraryPodIconZoomAnimator__animateIconViewTransformsAndAlphaForZoomFraction_withAnimationSettings_delay_completion___block_invoke_4;
  block[3] = &unk_1E8089600;
  v79 = completionCopy;
  v65 = completionCopy;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);
}

uint64_t __122__SBHLibraryPodIconZoomAnimator__animateIconViewTransformsAndAlphaForZoomFraction_withAnimationSettings_delay_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40) + (1.0 - *(a1 + 40)) * 0.1;
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeTranslation(&v7, v2, *(a1 + 56));
  v5 = v7;
  CGAffineTransformScale(&v6, &v5, v3, v3);
  v7 = v6;
  [*(a1 + 32) setTransform:&v6];
  [*(a1 + 32) setAlpha:*(a1 + 40)];
  return [*(a1 + 32) setIconLabelAlpha:*(a1 + 40)];
}

void __122__SBHLibraryPodIconZoomAnimator__animateIconViewTransformsAndAlphaForZoomFraction_withAnimationSettings_delay_completion___block_invoke_2(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformMakeTranslation(&v5, *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  [*(a1 + 32) setIconLabelAlpha:*(a1 + 64)];
  if (!*(a1 + 72))
  {
    v3 = [*(*(a1 + 40) + 168) navigationBar];
    v4 = v5;
    [v3 setTransform:&v4];
  }
}

uint64_t __122__SBHLibraryPodIconZoomAnimator__animateIconViewTransformsAndAlphaForZoomFraction_withAnimationSettings_delay_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_updateFolderViewFramesForZoomFraction:(double)fraction
{
  v5 = self->_miniPodIconViews;
  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  matchMoveWrapperView = self->_matchMoveWrapperView;
  animationContainer = [(SBIconAnimator *)self animationContainer];
  containerView = [animationContainer containerView];
  [containerView bounds];
  [(UIView *)matchMoveWrapperView setBounds:?];

  [(UIView *)self->_folderScalingView bounds];
  UIRectGetCenter();
  v11 = v10;
  v13 = v12;
  superview = [referenceIconView superview];
  [referenceIconView center];
  [superview convertPoint:self->_libraryScalingView toView:?];

  v15 = 1.0 - fraction;
  [referenceIconView iconImageSize];
  [(UIView *)self->_folderScalingView bounds];
  folderClippingView = self->_folderClippingView;
  BSRectWithSize();
  BSRectCenteredAboutPoint();
  [(UIView *)folderClippingView setFrame:?];
  [referenceIconView iconImageInfo];
  [(UIView *)self->_folderClippingView _setContinuousCornerRadius:fraction * 0.0 + (1.0 - fraction) * v17];
  firstObject = [(NSArray *)v5 firstObject];
  [(SBHLibraryPodIconZoomAnimator *)self _centerOfMiniPodIconViews];
  v20 = v19;
  v22 = v21;
  [(SBHLibraryPodIconZoomAnimator *)self _scaleForZoomFraction:fraction];
  v24 = v23;
  folderScalingView = self->_folderScalingView;
  CGAffineTransformMakeScale(&v35, v23, v23);
  [(UIView *)folderScalingView setTransform:&v35];
  [(UIView *)self->_folderClippingView bounds];
  UIRectGetCenter();
  v27 = v26;
  v29 = v28;
  if (firstObject)
  {
    superview2 = [firstObject superview];
    [superview2 convertPoint:self->_folderScalingView toView:{v20, v22}];
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v32 = *MEMORY[0x1E695EFF8];
    v34 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [(UIView *)self->_folderScalingView setCenter:v27 + v24 * (v11 - v32) * v15, v29 + v24 * (v13 - v34) * v15];
}

- (void)_updateLibraryScaleForZoomFraction:(double)fraction
{
  libraryScalingView = self->_libraryScalingView;
  CGAffineTransformMakeScale(&v4, 1.0 - fraction + fraction * 0.8, 1.0 - fraction + fraction * 0.8);
  [(UIView *)libraryScalingView setTransform:&v4];
}

- (void)_updateSearchBarForZoomFraction:(double)fraction
{
  v4 = 1.0 - fraction + fraction * 0.8;
  superview = [(UIView *)self->_searchBar superview];
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v4, v4);
  [(UIView *)self->_searchBar center];
  v7 = v6;
  v9 = v8;
  [superview center];
  v13 = v15;
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformTranslate(&v14, &v13, (1.0 - v4) * (v10 - v7), (1.0 - v4) * (v11 - v9));
  searchBar = self->_searchBar;
  v13 = v14;
  [(UIView *)searchBar setTransform:&v13];
}

- (void)_updateLibraryAlphaForZoomFraction:(double)fraction
{
  v3 = 1.0 - fraction;
  if (v3 >= 0.011)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.011;
  }

  animationContainer = [(SBIconAnimator *)self animationContainer];
  [animationContainer setContentAlpha:v4];
}

- (void)_setupFolderAndLibraryScalingViews
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_folderView != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBHLibraryPodIconZoomAnimator.m";
    v16 = 1024;
    v17 = 460;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_returnFolderAndLibraryScalingViews
{
  [(UIView *)self->_libraryScalingView _setSafeAreaInsetsFrozen:0];
  [(UIView *)self->_folderScalingView _setSafeAreaInsetsFrozen:0];
  animationContainer = [(SBIconAnimator *)self animationContainer];
  [animationContainer returnScalingView];

  libraryScalingView = self->_libraryScalingView;
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v5;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)libraryScalingView setTransform:v8];
  v6 = self->_libraryScalingView;
  self->_libraryScalingView = 0;

  [(UIView *)self->_folderScalingView setUserInteractionEnabled:1];
  [(UIView *)self->_folderScalingView setHidden:0];
  [(SBFolderView *)self->_folderView returnScalingView];
  folderScalingView = self->_folderScalingView;
  self->_folderScalingView = 0;

  [(SBHLibraryPodIconZoomAnimator *)self _removeMatchMoveAnimation];
  [(UIView *)self->_matchMoveWrapperView removeFromSuperview];
  [(UIView *)self->_folderClippingView removeFromSuperview];
}

- (void)_captureVisibleAndMiniPodIconViews
{
  animationContainer = [(SBIconAnimator *)self animationContainer];
  containerView = [animationContainer containerView];

  [containerView layoutIfNeeded];
  currentIconListView = [(SBFolderController *)self->_folderController currentIconListView];
  [containerView bounds];
  v52 = containerView;
  [currentIconListView convertRect:containerView fromView:?];
  v6 = [currentIconListView gridRangeForRect:?];
  v8 = v7;
  gridCellInfo = [currentIconListView gridCellInfo];
  gridSize = [gridCellInfo gridSize];
  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  icon = [referenceIconView icon];
  v51 = referenceIconView;
  visibleMiniIconCount = [referenceIconView visibleMiniIconCount];
  v50 = icon;
  folder = [icon folder];
  icons = [folder icons];
  v16 = [icons count];

  if (visibleMiniIconCount >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = visibleMiniIconCount;
  }

  v49 = v17;
  array = [MEMORY[0x1E695DF70] array];
  v18 = v8 & 0xFFFF0000;
  v19 = v6 + v8 - 1;
  v20 = gridSize;
  v21 = SBHIconGridRangeCellIndexForCorner(v6, v8, 1, gridSize);
  v22 = SBHIconGridRangeCellIndexForCorner(v6, v8, 2, gridSize);
  v23 = [gridCellInfo indexOfLastUsedGridCellInGridRange:{v6, v18 | 1}];
  v24 = v18 | 1;
  v25 = gridCellInfo;
  v26 = [gridCellInfo indexOfLastUsedGridCellInGridRange:{v19, v24}];
  if (v23 == v21)
  {
    v23 = v21 + 1;
  }

  if (v26 == v22)
  {
    v27 = v22 - 1;
  }

  else
  {
    v27 = v26;
  }

  v28 = SBIconCoordinateMakeWithGridCellIndex(v21, v20);
  v30 = [currentIconListView iconViewForCoordinate:{v28, v29}];
  if (v30)
  {
    [(NSArray *)array addObject:v30];
  }

  if (v49 >= 2)
  {
    v31 = SBIconCoordinateMakeWithGridCellIndex(v22, v20);
    v33 = [currentIconListView iconViewForCoordinate:{v31, v32}];
    if (v33)
    {
      [(NSArray *)array addObject:v33];
    }

    if (v49 != 2)
    {
      v34 = SBIconCoordinateMakeWithGridCellIndex(v23, v20);
      v36 = [currentIconListView iconViewForCoordinate:{v34, v35}];
      if (v36)
      {
        [(NSArray *)array addObject:v36];
      }

      if (v49 >= 4)
      {
        v37 = SBIconCoordinateMakeWithGridCellIndex(v27, v20);
        v39 = [currentIconListView iconViewForCoordinate:{v37, v38}];
        if (v39)
        {
          [(NSArray *)array addObject:v39];
        }
      }
    }
  }

  if (!self->_disableGlassGroupingAssertionsForIconViews)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    disableGlassGroupingAssertionsForIconViews = self->_disableGlassGroupingAssertionsForIconViews;
    self->_disableGlassGroupingAssertionsForIconViews = weakToStrongObjectsMapTable;
  }

  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __67__SBHLibraryPodIconZoomAnimator__captureVisibleAndMiniPodIconViews__block_invoke;
  v53[3] = &unk_1E8089FF0;
  v43 = v42;
  v54 = v43;
  selfCopy = self;
  [currentIconListView enumerateDisplayedIconViewsUsingBlock:v53];
  visibleIconViews = self->_visibleIconViews;
  self->_visibleIconViews = v43;
  v45 = v43;

  miniPodIconViews = self->_miniPodIconViews;
  self->_miniPodIconViews = array;
  v47 = array;
}

void __67__SBHLibraryPodIconZoomAnimator__captureVisibleAndMiniPodIconViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = [v4 disallowGlassGroupingForReason:@"LibraryPodZoom"];
  [*(*(a1 + 40) + 232) setObject:v5 forKey:v4];
}

- (void)_prepareToCrossfadeMiniPodIconViews
{
  v3 = self->_miniPodIconViews;
  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  traitCollection = [referenceIconView traitCollection];
  listLayoutProvider = [referenceIconView listLayoutProvider];
  v7 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationFolder"];

  v8 = SBHIconListLayoutFolderIconGridCellSize(v7);
  v10 = v9;
  [v7 iconImageInfo];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  icon = [referenceIconView icon];
  folder = [icon folder];
  icons = [folder icons];

  v21 = [icons count];
  v22 = [(NSArray *)v3 count];
  memset(&v30, 0, sizeof(v30));
  CGAffineTransformMakeScale(&v30, v8 / v12, v10 / v14);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v25 = [(NSArray *)v3 objectAtIndex:i];
      v26 = [icons objectAtIndex:i];
      v27 = [v26 iconLayerViewWithInfo:traitCollection traitCollection:1 options:{v12, v14, v16, v18}];
      v29 = v30;
      [v27 setTransform:&v29];
      [v27 setAllowsGlassGrouping:0];
      [v25 prepareToCrossfadeImageWithView:v27 options:2];
    }
  }
}

- (void)_cleanupMiniPodIconViewsAfterCrossfade
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_miniPodIconViews;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cleanupAfterCrossfade];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_updateVisibleIconViewsPointerAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_visibleIconViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAllowsCursorInteraction:{allowedCopy, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_setupMatchMoveAnimation
{
  v18[1] = *MEMORY[0x1E69E9840];
  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  if (referenceIconView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69793B8]);
    layer = [referenceIconView layer];
    [v4 setSourceLayer:layer];

    [referenceIconView bounds];
    [referenceIconView convertRect:self->_libraryScalingView toView:?];
    v7 = v6;
    v9 = v8;
    [(UIView *)self->_matchMoveWrapperView bounds];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    v14 = CGRectGetWidth(v20) * 0.5 - v7;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v15 = [MEMORY[0x1E696B098] valueWithCGPoint:{v14, CGRectGetHeight(v21) * 0.5 - v9}];
    v18[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v4 setSourcePoints:v16];

    [v4 setAppliesScale:0];
    [v4 setAppliesRotation:0];
    [v4 setDuration:INFINITY];
    [v4 setFillMode:*MEMORY[0x1E69797E0]];
    [v4 setRemovedOnCompletion:0];
    v19 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v4 setPreferredFrameRateRange:{*&v19.minimum, *&v19.maximum, *&v19.preferred}];
    [v4 setHighFrameRateReason:1114123];
    layer2 = [(UIView *)self->_matchMoveWrapperView layer];
    [layer2 addAnimation:v4 forKey:@"SBHLibraryPodIconZoomMatchMoveAnimation"];
  }
}

- (void)_removeMatchMoveAnimation
{
  layer = [(UIView *)self->_matchMoveWrapperView layer];
  [layer removeAnimationForKey:@"SBHLibraryPodIconZoomMatchMoveAnimation"];
}

- (void)_handleIconViewClippedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v7 = [userInfo objectForKey:@"SBHHiddenIconViewUserInfoKey"];

  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  v6 = [v7 isEqual:referenceIconView];

  if (v6)
  {
    [(SBHLibraryPodIconZoomAnimator *)self _cancelAnimationForIconViewClippedOrObscured];
  }
}

- (void)_handleIconZoomNotification:(id)notification
{
  object = [notification object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(SBHLibraryPodIconZoomAnimator *)self _cancelAnimationForIconViewClippedOrObscured];
  }
}

- (void)_cancelAnimationForIconViewClippedOrObscured
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Hiding the folder scaling view for the library pod zoom animation due to icon being scrolled outside clipping bounds", v5, 2u);
  }

  [(UIView *)self->_folderScalingView setHidden:1];
  referenceIconView = [(SBHLibraryPodIconZoomAnimator *)self referenceIconView];
  [referenceIconView setIconGridImageAlpha:1.0];
}

@end