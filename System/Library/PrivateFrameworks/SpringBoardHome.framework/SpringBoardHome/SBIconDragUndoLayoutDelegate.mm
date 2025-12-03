@interface SBIconDragUndoLayoutDelegate
- (SBIconDragUndoLayoutDelegate)initWithOriginalIconScreenLocations:(id)locations destinationIconScreenLocations:(id)screenLocations iconsAtHigherZLevel:(id)level;
- (SBIconDragUndoLayoutDelegate)initWithPreModificationInfo:(id)info;
- (id)iconListView:(id)view animatorForLayingOutIconView:(id)iconView proposedAnimator:(id)animator;
- (id)iconListView:(id)view animatorForRemovingIcons:(id)icons proposedAnimator:(id)animator;
- (void)animateWithOptions:(unint64_t)options animations:(id)animations completion:(id)completion;
- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block;
- (void)iconListView:(id)view wantsAnimatedRemovalForIconViews:(id)views completionHandler:(id)handler;
@end

@implementation SBIconDragUndoLayoutDelegate

- (SBIconDragUndoLayoutDelegate)initWithPreModificationInfo:(id)info
{
  v64 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  rootFolderController = [infoCopy rootFolderController];
  dockListView = [rootFolderController dockListView];
  visibleListViews = [infoCopy visibleListViews];
  originalIconsPerListView = [infoCopy originalIconsPerListView];
  v33 = infoCopy;
  originalScreenLocationsPerIcon = [infoCopy originalScreenLocationsPerIcon];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = visibleListViews;
  v36 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v36)
  {
    v34 = *v58;
    do
    {
      v5 = 0;
      do
      {
        if (*v58 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v5;
        v6 = *(*(&v57 + 1) + 8 * v5);
        v7 = [originalIconsPerListView objectForKey:v6];
        icons = [v6 icons];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v47 = v7;
        v9 = [v47 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v54;
          v44 = *v54;
          v45 = icons;
          do
          {
            v12 = 0;
            v46 = v10;
            do
            {
              if (*v54 != v11)
              {
                objc_enumerationMutation(v47);
              }

              v13 = *(*(&v53 + 1) + 8 * v12);
              if (([icons containsObject:v13] & 1) == 0)
              {
                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v14 = obj;
                v15 = [v14 countByEnumeratingWithState:&v49 objects:v61 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v50;
                  while (2)
                  {
                    for (i = 0; i != v16; ++i)
                    {
                      if (*v50 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = *(*(&v49 + 1) + 8 * i);
                      if (v19 != v6)
                      {
                        model = [*(*(&v49 + 1) + 8 * i) model];
                        v21 = [model directlyContainsIcon:v13];

                        if (v21)
                        {
                          v22 = [originalScreenLocationsPerIcon objectForKey:v13];
                          [strongToStrongObjectsMapTable setObject:v22 forKey:v13];
                          [v19 centerForIcon:v13];
                          [v19 convertPoint:0 toView:?];
                          v48[0] = v23;
                          v48[1] = v24;
                          v25 = [MEMORY[0x1E696B098] valueWithBytes:v48 objCType:"{CGPoint=dd}"];
                          [strongToStrongObjectsMapTable2 setObject:v25 forKey:v13];

                          if (v19 == dockListView)
                          {
                            [v38 addObject:v13];
                          }

                          goto LABEL_25;
                        }
                      }
                    }

                    v16 = [v14 countByEnumeratingWithState:&v49 objects:v61 count:16];
                    if (v16)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_25:

                v11 = v44;
                icons = v45;
                v10 = v46;
              }

              ++v12;
            }

            while (v12 != v10);
            v10 = [v47 countByEnumeratingWithState:&v53 objects:v62 count:16];
          }

          while (v10);
        }

        v5 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v36);
  }

  if ([strongToStrongObjectsMapTable count])
  {
    v27 = v38;
    v26 = strongToStrongObjectsMapTable2;
    selfCopy = [(SBIconDragUndoLayoutDelegate *)self initWithOriginalIconScreenLocations:strongToStrongObjectsMapTable destinationIconScreenLocations:strongToStrongObjectsMapTable2 iconsAtHigherZLevel:v38];
    v29 = selfCopy;
  }

  else
  {
    v29 = 0;
    selfCopy = self;
    v27 = v38;
    v26 = strongToStrongObjectsMapTable2;
  }

  return v29;
}

- (SBIconDragUndoLayoutDelegate)initWithOriginalIconScreenLocations:(id)locations destinationIconScreenLocations:(id)screenLocations iconsAtHigherZLevel:(id)level
{
  locationsCopy = locations;
  screenLocationsCopy = screenLocations;
  levelCopy = level;
  v22.receiver = self;
  v22.super_class = SBIconDragUndoLayoutDelegate;
  v11 = [(SBIconDragUndoLayoutDelegate *)&v22 init];
  if (v11)
  {
    v12 = [locationsCopy copy];
    originalIconScreenLocations = v11->_originalIconScreenLocations;
    v11->_originalIconScreenLocations = v12;

    v14 = [screenLocationsCopy copy];
    destinationIconScreenLocations = v11->_destinationIconScreenLocations;
    v11->_destinationIconScreenLocations = v14;

    v16 = [levelCopy copy];
    iconsAtHigherZLevel = v11->_iconsAtHigherZLevel;
    v11->_iconsAtHigherZLevel = v16;

    v18 = +[SBHHomeScreenDomain rootSettings];
    iconEditingSettings = [v18 iconEditingSettings];
    iconEditingSettings = v11->_iconEditingSettings;
    v11->_iconEditingSettings = iconEditingSettings;
  }

  return v11;
}

- (id)iconListView:(id)view animatorForLayingOutIconView:(id)iconView proposedAnimator:(id)animator
{
  animatorCopy = animator;
  icon = [iconView icon];
  v9 = [(NSMapTable *)self->_originalIconScreenLocations objectForKey:icon];

  if (v9)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = animatorCopy;
  }

  v11 = selfCopy;

  return v11;
}

- (id)iconListView:(id)view animatorForRemovingIcons:(id)icons proposedAnimator:(id)animator
{
  v22 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  animatorCopy = animator;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = iconsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NSMapTable *)self->_originalIconScreenLocations objectForKey:*(*(&v17 + 1) + 8 * i), v17];

        if (v14)
        {
          selfCopy = self;

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  selfCopy = animatorCopy;
LABEL_11:

  return selfCopy;
}

- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block
{
  viewCopy = view;
  iconViewCopy = iconView;
  blockCopy = block;
  icon = [iconViewCopy icon];
  iconsAtHigherZLevel = [(SBIconDragUndoLayoutDelegate *)self iconsAtHigherZLevel];
  v15 = [iconsAtHigherZLevel containsObject:icon];

  if (v15)
  {
    v16 = [(NSMapTable *)self->_originalIconScreenLocations objectForKey:icon];
    [v16 CGPointValue];
    [viewCopy convertPoint:0 fromView:?];
    [iconViewCopy setCenter:?];
    [iconViewCopy setHidden:0];
    [iconViewCopy setAlpha:1.0];
    var7 = parameters->var7;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __115__SBIconDragUndoLayoutDelegate_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke;
    v24[3] = &unk_1E808BF90;
    v25 = iconViewCopy;
    v18 = *&parameters->var2.continuousCornerRadius;
    v29 = *&parameters->var2.size.height;
    v30 = v18;
    v19 = *&parameters->var5;
    var4 = parameters->var4;
    v32 = v19;
    v20 = *&parameters->var1;
    var0 = parameters->var0;
    v28 = v20;
    v26 = blockCopy;
    [(SBIconDragUndoLayoutDelegate *)self animateWithOptions:var7 animations:v24 completion:0];
  }

  else
  {
    iconViewsHiddenForRemovalAnimation = self->_iconViewsHiddenForRemovalAnimation;
    if (!iconViewsHiddenForRemovalAnimation)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = self->_iconViewsHiddenForRemovalAnimation;
      self->_iconViewsHiddenForRemovalAnimation = v22;

      iconViewsHiddenForRemovalAnimation = self->_iconViewsHiddenForRemovalAnimation;
    }

    [(NSMutableArray *)iconViewsHiddenForRemovalAnimation addObject:iconViewCopy];
    [iconViewCopy setHidden:1];
  }
}

uint64_t __115__SBIconDragUndoLayoutDelegate_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  [*(a1 + 32) setIconContentScale:*(a1 + 64)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)iconListView:(id)view wantsAnimatedRemovalForIconViews:(id)views completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  viewsCopy = views;
  handlerCopy = handler;
  group = dispatch_group_create();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = viewsCopy;
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
  v12 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
  if (v11)
  {
    v13 = v11;
    v29 = handlerCopy;
    v14 = 0;
    v15 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        icon = [v17 icon];
        v19 = [(NSMapTable *)self->_originalIconScreenLocations objectForKey:icon];

        if (v19)
        {
          iconsAtHigherZLevel = [(SBIconDragUndoLayoutDelegate *)self iconsAtHigherZLevel];
          v21 = [iconsAtHigherZLevel containsObject:icon];

          if (v21)
          {
            [v17 setHidden:1];
          }

          else
          {
            v22 = [(NSMapTable *)self->_destinationIconScreenLocations objectForKey:icon];
            [v22 CGPointValue];
            [viewCopy convertPoint:0 fromView:?];
            v24 = v23;
            v26 = v25;
            dispatch_group_enter(group);
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __96__SBIconDragUndoLayoutDelegate_iconListView_wantsAnimatedRemovalForIconViews_completionHandler___block_invoke;
            v38[3] = &unk_1E808BCE0;
            v38[4] = v17;
            v38[5] = v24;
            v38[6] = v26;
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __96__SBIconDragUndoLayoutDelegate_iconListView_wantsAnimatedRemovalForIconViews_completionHandler___block_invoke_2;
            v36[3] = &unk_1E80893F0;
            v36[4] = v17;
            v37 = group;
            [(SBIconDragUndoLayoutDelegate *)self animateWithOptions:0 animations:v38 completion:v36];
          }
        }

        else
        {
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v14 addObject:v17];
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);

    if (!v14)
    {
      handlerCopy = v29;
      v12 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
      goto LABEL_20;
    }

    dispatch_group_enter(group);
    defaultRemovalAnimator = [(SBIconDragUndoLayoutDelegate *)self defaultRemovalAnimator];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __96__SBIconDragUndoLayoutDelegate_iconListView_wantsAnimatedRemovalForIconViews_completionHandler___block_invoke_3;
    v34[3] = &unk_1E8088C90;
    v35 = group;
    [defaultRemovalAnimator iconListView:viewCopy wantsAnimatedRemovalForIconViews:v14 completionHandler:v34];

    handlerCopy = v29;
    v12 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
  }

  else
  {
    v14 = 0;
    defaultRemovalAnimator = v10;
  }

LABEL_20:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = v12[128];
  block[2] = __96__SBIconDragUndoLayoutDelegate_iconListView_wantsAnimatedRemovalForIconViews_completionHandler___block_invoke_4;
  block[3] = &unk_1E8088D68;
  block[4] = self;
  v33 = handlerCopy;
  v28 = handlerCopy;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);
}

uint64_t __96__SBIconDragUndoLayoutDelegate_iconListView_wantsAnimatedRemovalForIconViews_completionHandler___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setHidden:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)animateWithOptions:(unint64_t)options animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  iconEditingSettings = self->_iconEditingSettings;
  completionCopy = completion;
  [(SBHIconEditingSettings *)iconEditingSettings defaultSpringDuration];
  v12 = v11;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDampingRatio];
  v14 = v13;
  v15 = MEMORY[0x1E69DD250];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__SBIconDragUndoLayoutDelegate_animateWithOptions_animations_completion___block_invoke;
  v17[3] = &unk_1E8089600;
  v18 = animationsCopy;
  v16 = animationsCopy;
  [v15 animateWithDuration:options delay:v17 usingSpringWithDamping:completionCopy initialSpringVelocity:v12 options:0.0 animations:v14 completion:0.0];
}

void __73__SBIconDragUndoLayoutDelegate_animateWithOptions_animations_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__SBIconDragUndoLayoutDelegate_animateWithOptions_animations_completion___block_invoke_2;
  v9[3] = &unk_1E8089600;
  v10 = *(a1 + 32);
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114131 updateReason:v9 animations:{v6, v7, v8}];
}

@end