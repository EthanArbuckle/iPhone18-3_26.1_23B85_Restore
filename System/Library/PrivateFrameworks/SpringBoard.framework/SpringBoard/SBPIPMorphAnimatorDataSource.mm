@interface SBPIPMorphAnimatorDataSource
- (BOOL)_isChamoisOrFlexibleWindowingEnabledUIEnabledForAnimator:(id)a3;
- (CGRect)_appLayoutBoundingBoxForAnimator:(id)a3;
- (CGRect)sourceContentContainerFrameForAnimator:(id)a3;
- (CGRect)sourceContentFrameForAnimator:(id)a3;
- (CGRect)sourceSubviewFrame:(CGRect)a3 inScreenSpaceForAnimator:(id)a4;
- (CGRect)targetFinalFrameForAnimator:(id)a3;
- (SBPIPMorphAnimatorController)morphAnimatorController;
- (SBPIPMorphAnimatorDataSource)initWithMorphAnimatorController:(id)a3 pipController:(id)a4 pegasusController:(id)a5 contentViewLayoutSettings:(id)a6;
- (double)sourceBlackCurtainCornerRadiusForAnimator:(id)a3;
- (double)sourceCornerRadiusForAnimator:(id)a3;
- (double)targetFinalCornerRadiusForAnimator:(id)a3;
@end

@implementation SBPIPMorphAnimatorDataSource

- (SBPIPMorphAnimatorDataSource)initWithMorphAnimatorController:(id)a3 pipController:(id)a4 pegasusController:(id)a5 contentViewLayoutSettings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = SBPIPMorphAnimatorDataSource;
  v14 = [(SBPIPMorphAnimatorDataSource *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pipController, a4);
    objc_storeStrong(&v15->_pegasusController, a5);
    objc_storeWeak(&v15->_morphAnimatorController, v10);
    objc_storeStrong(&v15->_contentViewLayoutSettings, a6);
    v16 = [MEMORY[0x277CBEB38] dictionary];
    morphAnimatorToPegasusInitialFrame = v15->_morphAnimatorToPegasusInitialFrame;
    v15->_morphAnimatorToPegasusInitialFrame = v16;
  }

  return v15;
}

- (BOOL)_isChamoisOrFlexibleWindowingEnabledUIEnabledForAnimator:(id)a3
{
  v3 = [a3 windowScene];
  v4 = [v3 switcherController];
  v5 = [v4 windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  return v6;
}

- (CGRect)_appLayoutBoundingBoxForAnimator:(id)a3
{
  if ([(SBPIPMorphAnimatorDataSource *)self _isChamoisOrFlexibleWindowingEnabledUIEnabledForAnimator:a3])
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

- (CGRect)sourceContentFrameForAnimator:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_morphAnimatorController);
  v6 = [WeakRetained targetProcessIdentifier];
  v7 = [WeakRetained scenePersistenceIdentifier];
  [(SBPIPMorphAnimatorDataSource *)self sourceContentContainerFrameForAnimator:v4];
  v9 = v8;
  v11 = v10;
  v12 = [v4 direction];
  pegasusController = self->_pegasusController;
  v14 = SBPIPApplicationForProcessIdentifier(pegasusController, v6);
  if (v12)
  {
    [(PGPictureInPictureController *)pegasusController preferredContentSizeForActivePictureInPictureWithApplication:v14 sceneSessionPersistentIdentifier:v7];
    v16 = v15;
    v18 = v17;

    if (v16 == 0.0 || v18 == 0.0)
    {
      v19 = [v4 windowScene];
      v20 = [(SBPIPController *)self->_pipController anyContentViewPresentedOnWindowScene:v19];
      [v20 frame];

      v21 = SBLogPIP();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(SBPIPMorphAnimatorDataSource *)v7 sourceContentFrameForAnimator:v6, v21];
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
    [(PGPictureInPictureController *)pegasusController initialFrameForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:v14 sceneSessionPersistentIdentifier:v7];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = [MEMORY[0x277CCAE60] valueWithRect:{v31, v33, v35, v37}];
    v39 = [v4 uuid];

    if (v39)
    {
      morphAnimatorToPegasusInitialFrame = self->_morphAnimatorToPegasusInitialFrame;
      v41 = [v4 uuid];
      v42 = [(NSMutableDictionary *)morphAnimatorToPegasusInitialFrame objectForKey:v41];

      v38 = v42;
      if (!v42)
      {
        v38 = [MEMORY[0x277CCAE60] valueWithRect:{v31, v33, v35, v37}];
        v43 = self->_morphAnimatorToPegasusInitialFrame;
        v44 = [v4 uuid];
        [(NSMutableDictionary *)v43 setObject:v38 forKey:v44];
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
      v54 = [v4 uuid];
      v72.origin.y = v60;
      v72.origin.x = v61;
      v72.size.width = v35;
      v72.size.height = v37;
      v55 = NSStringFromCGRect(v72);
      v56 = self->_morphAnimatorToPegasusInitialFrame;
      v57 = [v4 uuid];
      v58 = [(NSMutableDictionary *)v56 objectForKey:v57];
      [v58 rectValue];
      v59 = NSStringFromCGRect(v73);
      *buf = 138543874;
      v63 = v54;
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

- (CGRect)sourceContentContainerFrameForAnimator:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_morphAnimatorController);
  [(SBPIPMorphAnimatorDataSource *)self _appLayoutBoundingBoxForAnimator:v4];
  v7 = v6;
  v9 = v8;
  v10 = [v4 windowScene];
  v11 = [v10 switcherController];
  v12 = [WeakRetained layoutRole];
  v13 = [WeakRetained appLayout];
  v14 = [v4 toOrientation];

  [v11 frameForItemWithRole:v12 inMainAppLayout:v13 interfaceOrientation:v14];
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

- (CGRect)sourceSubviewFrame:(CGRect)a3 inScreenSpaceForAnimator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBPIPMorphAnimatorDataSource *)self _appLayoutBoundingBoxForAnimator:a4];
  v9 = v8;
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectOffset(*&v12, v9, v11);
}

- (CGRect)targetFinalFrameForAnimator:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_morphAnimatorController);
  v6 = [WeakRetained targetProcessIdentifier];
  v7 = [WeakRetained scenePersistenceIdentifier];
  v8 = [WeakRetained isGestureInitiated];
  if ([v4 direction])
  {
    v9 = [v4 targetView];
    [v9 frame];
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
    v19 = SBPIPApplicationForProcessIdentifier(pegasusController, v6);
    [(PGPictureInPictureController *)pegasusController preferredContentSizeForInteractivelyEnteringBackgroundForApplication:v19 sceneSessionPersistentIdentifier:v7];
    v21 = v20;
    v23 = v22;

    if (v21 > 0.0 && v23 > 0.0)
    {
      pipController = self->_pipController;
      v25 = [v4 windowScene];
      [(SBPIPContentViewLayoutSettings *)self->_contentViewLayoutSettings defaultContentViewSizeForAspectRatio:v21, v23];
      v27 = v26;
      v29 = v28;
      v30 = [(SBPIPContentViewLayoutSettings *)self->_contentViewLayoutSettings currentContentViewPosition];
      [(SBPIPContentViewLayoutSettings *)self->_contentViewLayoutSettings contentViewPadding];
      -[SBPIPController homeScreenInitialPIPFrameForWindowScene:withContentViewSize:position:padding:fromOrientation:toOrientation:shouldUpdate:gestureInitiated:](pipController, "homeScreenInitialPIPFrameForWindowScene:withContentViewSize:position:padding:fromOrientation:toOrientation:shouldUpdate:gestureInitiated:", v25, v30, [v4 fromOrientation], objc_msgSend(v4, "toOrientation"), 1, v8, v27, v29, v31);
      v11 = v32;
      v13 = v33;
      v15 = v34;
      v17 = v35;
    }

    v9 = SBLogPIP();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v52.width = v21;
      v52.height = v23;
      v36 = NSStringFromCGSize(v52);
      [v4 fromOrientation];
      v37 = SBFStringForBSInterfaceOrientation();
      [v4 toOrientation];
      v38 = SBFStringForBSInterfaceOrientation();
      v45 = 138543874;
      v46 = v36;
      v47 = 2114;
      v48 = v37;
      v49 = 2114;
      v50 = v38;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "-targetFinalFrameForAnimator: preferredContentSize[%{public}@] fromOrientation[%{public}@] toOrientation[%{public}@]", &v45, 0x20u);
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

- (double)targetFinalCornerRadiusForAnimator:(id)a3
{
  [(SBPIPMorphAnimatorDataSource *)self targetFinalFrameForAnimator:a3];
  v5 = MEMORY[0x277D38BF0];

  [v5 contentCornerRadiusForViewSize:{v3, v4}];
  return result;
}

- (double)sourceCornerRadiusForAnimator:(id)a3
{
  SBScreenDisplayCornerRadius();

  SBRectCornerRadiiForRadius();
  return result;
}

- (double)sourceBlackCurtainCornerRadiusForAnimator:(id)a3
{
  v3 = a3;
  SBScreenDisplayCornerRadius();
  v4 = 0.0;
  if ((BSFloatIsZero() & 1) == 0)
  {
    v5 = [v3 windowScene];
    v6 = [v5 switcherController];
    v7 = [v6 windowManagementContext];
    v8 = [v7 isChamoisOrFlexibleWindowing];

    if (v8)
    {
      v9 = [v5 screen];
      v10 = [v9 traitCollection];
      [v10 displayCornerRadius];
      v4 = v11;
    }

    else
    {
      v9 = +[SBMedusaDomain rootSettings];
      [v9 cornerRadiusForInnerCorners];
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