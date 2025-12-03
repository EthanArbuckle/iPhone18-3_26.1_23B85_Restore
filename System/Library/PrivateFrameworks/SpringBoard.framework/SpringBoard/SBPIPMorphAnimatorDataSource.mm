@interface SBPIPMorphAnimatorDataSource
- (BOOL)_isChamoisOrFlexibleWindowingEnabledUIEnabledForAnimator:(id)animator;
- (CGRect)_appLayoutBoundingBoxForAnimator:(id)animator;
- (CGRect)sourceContentContainerFrameForAnimator:(id)animator;
- (CGRect)sourceContentFrameForAnimator:(id)animator;
- (CGRect)sourceSubviewFrame:(CGRect)frame inScreenSpaceForAnimator:(id)animator;
- (CGRect)targetFinalFrameForAnimator:(id)animator;
- (SBPIPMorphAnimatorController)morphAnimatorController;
- (SBPIPMorphAnimatorDataSource)initWithMorphAnimatorController:(id)controller pipController:(id)pipController pegasusController:(id)pegasusController contentViewLayoutSettings:(id)settings;
- (double)sourceBlackCurtainCornerRadiusForAnimator:(id)animator;
- (double)sourceCornerRadiusForAnimator:(id)animator;
- (double)targetFinalCornerRadiusForAnimator:(id)animator;
@end

@implementation SBPIPMorphAnimatorDataSource

- (SBPIPMorphAnimatorDataSource)initWithMorphAnimatorController:(id)controller pipController:(id)pipController pegasusController:(id)pegasusController contentViewLayoutSettings:(id)settings
{
  controllerCopy = controller;
  pipControllerCopy = pipController;
  pegasusControllerCopy = pegasusController;
  settingsCopy = settings;
  v19.receiver = self;
  v19.super_class = SBPIPMorphAnimatorDataSource;
  v14 = [(SBPIPMorphAnimatorDataSource *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pipController, pipController);
    objc_storeStrong(&v15->_pegasusController, pegasusController);
    objc_storeWeak(&v15->_morphAnimatorController, controllerCopy);
    objc_storeStrong(&v15->_contentViewLayoutSettings, settings);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    morphAnimatorToPegasusInitialFrame = v15->_morphAnimatorToPegasusInitialFrame;
    v15->_morphAnimatorToPegasusInitialFrame = dictionary;
  }

  return v15;
}

- (BOOL)_isChamoisOrFlexibleWindowingEnabledUIEnabledForAnimator:(id)animator
{
  windowScene = [animator windowScene];
  switcherController = [windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  return isChamoisOrFlexibleWindowing;
}

- (CGRect)_appLayoutBoundingBoxForAnimator:(id)animator
{
  if ([(SBPIPMorphAnimatorDataSource *)self _isChamoisOrFlexibleWindowingEnabledUIEnabledForAnimator:animator])
  {
    WeakRetained = objc_loadWeakRetained(&self->_morphAnimatorController);
    [WeakRetained appLayoutBoundingBox];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)sourceContentFrameForAnimator:(id)animator
{
  v68 = *MEMORY[0x277D85DE8];
  animatorCopy = animator;
  WeakRetained = objc_loadWeakRetained(&self->_morphAnimatorController);
  targetProcessIdentifier = [WeakRetained targetProcessIdentifier];
  scenePersistenceIdentifier = [WeakRetained scenePersistenceIdentifier];
  [(SBPIPMorphAnimatorDataSource *)self sourceContentContainerFrameForAnimator:animatorCopy];
  v9 = v8;
  v11 = v10;
  direction = [animatorCopy direction];
  pegasusController = self->_pegasusController;
  v14 = SBPIPApplicationForProcessIdentifier(pegasusController, targetProcessIdentifier);
  if (direction)
  {
    [(PGPictureInPictureController *)pegasusController preferredContentSizeForActivePictureInPictureWithApplication:v14 sceneSessionPersistentIdentifier:scenePersistenceIdentifier];
    v16 = v15;
    v18 = v17;

    if (v16 == 0.0 || v18 == 0.0)
    {
      windowScene = [animatorCopy windowScene];
      v20 = [(SBPIPController *)self->_pipController anyContentViewPresentedOnWindowScene:windowScene];
      [v20 frame];

      v21 = SBLogPIP();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(SBPIPMorphAnimatorDataSource *)scenePersistenceIdentifier sourceContentFrameForAnimator:targetProcessIdentifier, v21];
      }
    }

    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
  }

  else
  {
    [(PGPictureInPictureController *)pegasusController initialFrameForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:v14 sceneSessionPersistentIdentifier:scenePersistenceIdentifier];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = [MEMORY[0x277CCAE60] valueWithRect:{v31, v33, v35, v37}];
    uuid = [animatorCopy uuid];

    if (uuid)
    {
      morphAnimatorToPegasusInitialFrame = self->_morphAnimatorToPegasusInitialFrame;
      uuid2 = [animatorCopy uuid];
      v42 = [(NSMutableDictionary *)morphAnimatorToPegasusInitialFrame objectForKey:uuid2];

      v38 = v42;
      if (!v42)
      {
        v38 = [MEMORY[0x277CCAE60] valueWithRect:{v31, v33, v35, v37}];
        v43 = self->_morphAnimatorToPegasusInitialFrame;
        uuid3 = [animatorCopy uuid];
        [(NSMutableDictionary *)v43 setObject:v38 forKey:uuid3];
      }
    }

    [v38 rectValue];
    x = v69.origin.x;
    y = v69.origin.y;
    width = v69.size.width;
    height = v69.size.height;
    if (CGRectIsEmpty(v69))
    {
      v23 = *MEMORY[0x277CBF398];
      v25 = *(MEMORY[0x277CBF398] + 8);
      v27 = *(MEMORY[0x277CBF398] + 16);
      v29 = *(MEMORY[0x277CBF398] + 24);
    }

    else
    {
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      v71 = CGRectOffset(v70, v9, v11);
      v23 = v71.origin.x;
      v25 = v71.origin.y;
      v27 = v71.size.width;
      v29 = v71.size.height;
    }

    v49 = SBLogPIP();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      uuid4 = [animatorCopy uuid];
      v72.origin.y = v60;
      v72.origin.x = v61;
      v72.size.width = v35;
      v72.size.height = v37;
      v55 = NSStringFromCGRect(v72);
      v56 = self->_morphAnimatorToPegasusInitialFrame;
      uuid5 = [animatorCopy uuid];
      v58 = [(NSMutableDictionary *)v56 objectForKey:uuid5];
      [v58 rectValue];
      v59 = NSStringFromCGRect(v73);
      *buf = 138543874;
      v63 = uuid4;
      v64 = 2114;
      v65 = v55;
      v66 = 2114;
      v67 = v59;
      _os_log_debug_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_DEBUG, "-sourceContentFrameForAnimator animatorUUID[%{public}@] pegasusInitialFrame[%{public}@] cachedInitialFrame[%{public}@]", buf, 0x20u);
    }
  }

  v50 = v23;
  v51 = v25;
  v52 = v27;
  v53 = v29;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (CGRect)sourceContentContainerFrameForAnimator:(id)animator
{
  animatorCopy = animator;
  WeakRetained = objc_loadWeakRetained(&self->_morphAnimatorController);
  [(SBPIPMorphAnimatorDataSource *)self _appLayoutBoundingBoxForAnimator:animatorCopy];
  v7 = v6;
  v9 = v8;
  windowScene = [animatorCopy windowScene];
  switcherController = [windowScene switcherController];
  layoutRole = [WeakRetained layoutRole];
  appLayout = [WeakRetained appLayout];
  toOrientation = [animatorCopy toOrientation];

  [switcherController frameForItemWithRole:layoutRole inMainAppLayout:appLayout interfaceOrientation:toOrientation];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  v32 = CGRectOffset(v31, -v7, -v9);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)sourceSubviewFrame:(CGRect)frame inScreenSpaceForAnimator:(id)animator
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SBPIPMorphAnimatorDataSource *)self _appLayoutBoundingBoxForAnimator:animator];
  v9 = v8;
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectOffset(*&v12, v9, v11);
}

- (CGRect)targetFinalFrameForAnimator:(id)animator
{
  v51 = *MEMORY[0x277D85DE8];
  animatorCopy = animator;
  WeakRetained = objc_loadWeakRetained(&self->_morphAnimatorController);
  targetProcessIdentifier = [WeakRetained targetProcessIdentifier];
  scenePersistenceIdentifier = [WeakRetained scenePersistenceIdentifier];
  isGestureInitiated = [WeakRetained isGestureInitiated];
  if ([animatorCopy direction])
  {
    targetView = [animatorCopy targetView];
    [targetView frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x277CBF398];
    v13 = *(MEMORY[0x277CBF398] + 8);
    v15 = *(MEMORY[0x277CBF398] + 16);
    v17 = *(MEMORY[0x277CBF398] + 24);
    pegasusController = self->_pegasusController;
    v19 = SBPIPApplicationForProcessIdentifier(pegasusController, targetProcessIdentifier);
    [(PGPictureInPictureController *)pegasusController preferredContentSizeForInteractivelyEnteringBackgroundForApplication:v19 sceneSessionPersistentIdentifier:scenePersistenceIdentifier];
    v21 = v20;
    v23 = v22;

    if (v21 > 0.0 && v23 > 0.0)
    {
      pipController = self->_pipController;
      windowScene = [animatorCopy windowScene];
      [(SBPIPContentViewLayoutSettings *)self->_contentViewLayoutSettings defaultContentViewSizeForAspectRatio:v21, v23];
      v27 = v26;
      v29 = v28;
      currentContentViewPosition = [(SBPIPContentViewLayoutSettings *)self->_contentViewLayoutSettings currentContentViewPosition];
      [(SBPIPContentViewLayoutSettings *)self->_contentViewLayoutSettings contentViewPadding];
      -[SBPIPController homeScreenInitialPIPFrameForWindowScene:withContentViewSize:position:padding:fromOrientation:toOrientation:shouldUpdate:gestureInitiated:](pipController, "homeScreenInitialPIPFrameForWindowScene:withContentViewSize:position:padding:fromOrientation:toOrientation:shouldUpdate:gestureInitiated:", windowScene, currentContentViewPosition, [animatorCopy fromOrientation], objc_msgSend(animatorCopy, "toOrientation"), 1, isGestureInitiated, v27, v29, v31);
      v11 = v32;
      v13 = v33;
      v15 = v34;
      v17 = v35;
    }

    targetView = SBLogPIP();
    if (os_log_type_enabled(targetView, OS_LOG_TYPE_DEFAULT))
    {
      v52.width = v21;
      v52.height = v23;
      v36 = NSStringFromCGSize(v52);
      [animatorCopy fromOrientation];
      v37 = SBFStringForBSInterfaceOrientation();
      [animatorCopy toOrientation];
      v38 = SBFStringForBSInterfaceOrientation();
      v45 = 138543874;
      v46 = v36;
      v47 = 2114;
      v48 = v37;
      v49 = 2114;
      v50 = v38;
      _os_log_impl(&dword_21ED4E000, targetView, OS_LOG_TYPE_DEFAULT, "-targetFinalFrameForAnimator: preferredContentSize[%{public}@] fromOrientation[%{public}@] toOrientation[%{public}@]", &v45, 0x20u);
    }
  }

  v39 = SBLogPIP();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v53.origin.x = v11;
    v53.origin.y = v13;
    v53.size.width = v15;
    v53.size.height = v17;
    v40 = NSStringFromRect(v53);
    v45 = 138543362;
    v46 = v40;
    _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "-targetFinalFrameForAnimator: %{public}@", &v45, 0xCu);
  }

  v41 = v11;
  v42 = v13;
  v43 = v15;
  v44 = v17;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (double)targetFinalCornerRadiusForAnimator:(id)animator
{
  [(SBPIPMorphAnimatorDataSource *)self targetFinalFrameForAnimator:animator];
  v5 = MEMORY[0x277D38BF0];

  [v5 contentCornerRadiusForViewSize:{v3, v4}];
  return result;
}

- (double)sourceCornerRadiusForAnimator:(id)animator
{
  SBScreenDisplayCornerRadius();

  SBRectCornerRadiiForRadius();
  return result;
}

- (double)sourceBlackCurtainCornerRadiusForAnimator:(id)animator
{
  animatorCopy = animator;
  SBScreenDisplayCornerRadius();
  v4 = 0.0;
  if ((BSFloatIsZero() & 1) == 0)
  {
    windowScene = [animatorCopy windowScene];
    switcherController = [windowScene switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (isChamoisOrFlexibleWindowing)
    {
      screen = [windowScene screen];
      traitCollection = [screen traitCollection];
      [traitCollection displayCornerRadius];
      v4 = v11;
    }

    else
    {
      screen = +[SBMedusaDomain rootSettings];
      [screen cornerRadiusForInnerCorners];
      v4 = v12;
    }
  }

  return v4;
}

- (SBPIPMorphAnimatorController)morphAnimatorController
{
  WeakRetained = objc_loadWeakRetained(&self->_morphAnimatorController);

  return WeakRetained;
}

- (void)sourceContentFrameForAnimator:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Unexpectedly found size zero for preferredContentSizeForActivePictureInPictureWithApplication %d sceneId: %{public}@", v3, 0x12u);
}

@end