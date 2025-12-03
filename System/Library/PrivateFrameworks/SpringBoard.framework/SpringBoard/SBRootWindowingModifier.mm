@interface SBRootWindowingModifier
- (CGRect)leftStatusBarPartIntersectionRegion;
- (CGRect)rightStatusBarPartIntersectionRegion;
- (SBRootWindowingModifier)initWithSwitcherModifier:(id)modifier;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForItem:(id)item;
- (void)_clearAllCachedValues;
- (void)didUpdate;
- (void)layoutViewModelsIfNeeded;
- (void)willUpdate;
@end

@implementation SBRootWindowingModifier

- (SBRootWindowingModifier)initWithSwitcherModifier:(id)modifier
{
  modifierCopy = modifier;
  if (!modifierCopy)
  {
    [(SBRootWindowingModifier *)a2 initWithSwitcherModifier:?];
  }

  v10.receiver = self;
  v10.super_class = SBRootWindowingModifier;
  v6 = [(SBWindowingModifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(SBWindowingModifier *)v6 addChildModifier:modifierCopy atLevel:1 key:@"Root Windowing Steady State Modifier"];
    v8 = objc_alloc_init(SBDefaultWindowingModifier);
    [(SBWindowingModifier *)v7 addChildModifier:v8 atLevel:2 key:@"Root Windowing Default Modifier"];
    [(SBRootWindowingModifier *)v7 _clearAllCachedValues];
  }

  return v7;
}

- (CGRect)leftStatusBarPartIntersectionRegion
{
  p_cachedLeftStatusBarPartIntersectionRegion = &self->_cachedLeftStatusBarPartIntersectionRegion;
  if (CGRectIsNull(self->_cachedLeftStatusBarPartIntersectionRegion))
  {
    v8.receiver = self;
    v8.super_class = SBRootWindowingModifier;
    [(SBRootWindowingModifier *)&v8 leftStatusBarPartIntersectionRegion];
    p_cachedLeftStatusBarPartIntersectionRegion->origin.x = x;
    p_cachedLeftStatusBarPartIntersectionRegion->origin.y = y;
    p_cachedLeftStatusBarPartIntersectionRegion->size.width = width;
    p_cachedLeftStatusBarPartIntersectionRegion->size.height = height;
  }

  else
  {
    x = p_cachedLeftStatusBarPartIntersectionRegion->origin.x;
    y = p_cachedLeftStatusBarPartIntersectionRegion->origin.y;
    width = p_cachedLeftStatusBarPartIntersectionRegion->size.width;
    height = p_cachedLeftStatusBarPartIntersectionRegion->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rightStatusBarPartIntersectionRegion
{
  p_cachedRightStatusBarPartIntersectionRegion = &self->_cachedRightStatusBarPartIntersectionRegion;
  if (CGRectIsNull(self->_cachedRightStatusBarPartIntersectionRegion))
  {
    v8.receiver = self;
    v8.super_class = SBRootWindowingModifier;
    [(SBRootWindowingModifier *)&v8 rightStatusBarPartIntersectionRegion];
    p_cachedRightStatusBarPartIntersectionRegion->origin.x = x;
    p_cachedRightStatusBarPartIntersectionRegion->origin.y = y;
    p_cachedRightStatusBarPartIntersectionRegion->size.width = width;
    p_cachedRightStatusBarPartIntersectionRegion->size.height = height;
  }

  else
  {
    x = p_cachedRightStatusBarPartIntersectionRegion->origin.x;
    y = p_cachedRightStatusBarPartIntersectionRegion->origin.y;
    width = p_cachedRightStatusBarPartIntersectionRegion->size.width;
    height = p_cachedRightStatusBarPartIntersectionRegion->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_clearAllCachedValues
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 16);
  self->_cachedLeftStatusBarPartIntersectionRegion.origin = *MEMORY[0x277CBF398];
  self->_cachedLeftStatusBarPartIntersectionRegion.size = v3;
  self->_cachedRightStatusBarPartIntersectionRegion.origin = v2;
  self->_cachedRightStatusBarPartIntersectionRegion.size = v3;
}

- (void)willUpdate
{
  v3.receiver = self;
  v3.super_class = SBRootWindowingModifier;
  [(SBWindowingModifier *)&v3 willUpdate];
  [(SBRootWindowingModifier *)self _updateChildModifiersIfNeeded];
}

- (void)didUpdate
{
  v3.receiver = self;
  v3.super_class = SBRootWindowingModifier;
  [(SBWindowingModifier *)&v3 didUpdate];
  [(SBRootWindowingModifier *)self _updateChildModifiersIfNeeded];
}

- (void)layoutViewModelsIfNeeded
{
  v44 = *MEMORY[0x277D85DE8];
  [(SBRootWindowingModifier *)self _clearAllCachedValues];
  v41.receiver = self;
  v41.super_class = SBRootWindowingModifier;
  [(SBWindowingModifier *)&v41 layoutViewModelsIfNeeded];
  v3 = objc_opt_new();
  wallpaperAlphasForLeafAppLayouts = self->wallpaperAlphasForLeafAppLayouts;
  self->wallpaperAlphasForLeafAppLayouts = v3;

  if ([(SBRootWindowingModifier *)self environmentMode]!= 2 && [(SBWindowingModifier *)self transitioningToEnvironmentMode]!= 2)
  {
    appLayout = [(SBRootWindowingModifier *)self appLayout];
    v6 = [(SBRootWindowingModifier *)self zOrderedItemsInAppLayout:appLayout];
    v7 = [v6 count];
    maximumNumberOfVisibleScenesOnStage = [(SBRootWindowingModifier *)self maximumNumberOfVisibleScenesOnStage];
    v30 = v6;
    if (v7 - maximumNumberOfVisibleScenesOnStage >= 1)
    {
      obj = v7;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v9 = [v6 subarrayWithRange:maximumNumberOfVisibleScenesOnStage];
      v10 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v38 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [appLayout leafAppLayoutForItem:*(*(&v37 + 1) + 8 * i)];
            v15 = [(SBWindowingModifier *)self viewModelForItem:v14];
            v16 = [v15 mutableCopy];

            [v16 setOpacity:0.0];
            [(SBWindowingModifier *)self setViewModel:v16 forItem:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v11);
      }

      v6 = v30;
      v7 = obj;
    }

    switcherSettings = [(SBRootWindowingModifier *)self switcherSettings];
    sceneRelevancySettings = [switcherSettings sceneRelevancySettings];
    numberOfFadingScenesOnStage = [sceneRelevancySettings numberOfFadingScenesOnStage];

    if (v7 >= maximumNumberOfVisibleScenesOnStage)
    {
      v20 = maximumNumberOfVisibleScenesOnStage;
    }

    else
    {
      v20 = v7;
    }

    if (v20 - (maximumNumberOfVisibleScenesOnStage - numberOfFadingScenesOnStage) >= 1)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obja = [v6 subarrayWithRange:?];
      v21 = [obja countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        v24 = numberOfFadingScenesOnStage + 1.0;
        v25 = 1;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(obja);
            }

            v27 = [appLayout leafAppLayoutForItem:*(*(&v33 + 1) + 8 * j)];
            v28 = self->wallpaperAlphasForLeafAppLayouts;
            v29 = [MEMORY[0x277CCABB0] numberWithDouble:v25 / v24];
            [(NSMutableDictionary *)v28 setObject:v29 forKey:v27];

            ++v25;
          }

          v22 = [obja countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v22);
      }

      v6 = v30;
    }
  }
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForItem:(id)item
{
  itemCopy = item;
  wallpaperAlphasForLeafAppLayouts = self->wallpaperAlphasForLeafAppLayouts;
  appLayout = [itemCopy appLayout];
  v7 = [(NSMutableDictionary *)wallpaperAlphasForLeafAppLayouts objectForKey:appLayout];

  if (v7)
  {
    [v7 bs_CGFloatValue];
    v9 = v8;
    v10 = v8;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBRootWindowingModifier;
    [(SBWindowingModifier *)&v15 wallpaperGradientAttributesForItem:itemCopy];
    v10 = v11;
    v9 = v12;
  }

  v13 = v10;
  v14 = v9;
  result.trailingAlpha = v14;
  result.leadingAlpha = v13;
  return result;
}

- (void)initWithSwitcherModifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRootWindowingModifier.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"switcherModifier"}];
}

@end