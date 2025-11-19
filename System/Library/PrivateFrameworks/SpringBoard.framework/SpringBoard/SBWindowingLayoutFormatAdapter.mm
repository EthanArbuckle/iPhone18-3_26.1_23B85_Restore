@interface SBWindowingLayoutFormatAdapter
- (SBWindowingLayoutFormatAdapter)initWithWindowScene:(id)a3;
- (id)_modifySizeAndPositionForLayoutAttributes:(id)a3 forLayoutRequest:(id)a4;
- (void)_createLayoutRoleToLayoutAttributesMap;
- (void)parse:(id)a3 argumentType:(int64_t)a4 bundleIdentifiers:(id)a5 error:(id *)a6;
@end

@implementation SBWindowingLayoutFormatAdapter

- (SBWindowingLayoutFormatAdapter)initWithWindowScene:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SBWindowingLayoutFormatAdapter;
  v5 = [(SBWindowingLayoutFormatAdapter *)&v20 init];
  if (v5)
  {
    v6 = [v4 switcherController];
    v7 = [v6 contentViewController];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 view];
    [v12 bounds];
    v5->_containerViewBounds.origin.x = v13;
    v5->_containerViewBounds.origin.y = v14;
    v5->_containerViewBounds.size.width = v15;
    v5->_containerViewBounds.size.height = v16;

    v17 = [v11 windowingConfiguration];

    windowingConfiguration = v5->_windowingConfiguration;
    v5->_windowingConfiguration = v17;
  }

  return v5;
}

- (void)_createLayoutRoleToLayoutAttributesMap
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(NSArray *)self->_layoutRequests count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_layoutRequests;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = objc_alloc_init(SBDisplayItemLayoutAttributes);
        SBDisplayItemTileConfigurationMake([v9 tileRole], v19, 1.79769313e308, 1.79769313e308);
        v11 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v10];

        v12 = [(SBWindowingLayoutFormatAdapter *)self _modifySizeAndPositionForLayoutAttributes:v11 forLayoutRequest:v9];

        v13 = [v9 wantsFocus];
        lastInteractionTime = v4;
        if ((v13 & 1) == 0)
        {
          lastInteractionTime = self->_lastInteractionTime;
        }

        self->_lastInteractionTime = lastInteractionTime;
        v15 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v12];

        [v9 wantsFocus];
        v16 = [SBDisplayItemLayoutAttributes attributesByModifyingOcclusionState:v15];

        --self->_lastInteractionTime;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "layoutRole")}];
        [v3 setObject:v16 forKey:v17];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    objc_storeStrong(&self->_layoutRoleToLayoutAttributes, v3);
  }
}

- (id)_modifySizeAndPositionForLayoutAttributes:(id)a3 forLayoutRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  x = self->_containerViewBounds.origin.x;
  y = self->_containerViewBounds.origin.y;
  width = self->_containerViewBounds.size.width;
  height = self->_containerViewBounds.size.height;
  v12 = self->_windowingConfiguration;
  v13 = [v7 position];
  if (v13 > 3)
  {
    if (v13 == 4)
    {
      v14 = 9;
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_11;
      }

      v14 = 10;
    }
  }

  else if (v13 == 2)
  {
    v14 = 8;
  }

  else
  {
    if (v13 != 3)
    {
      goto LABEL_11;
    }

    v14 = 7;
  }

  SBDisplayItemTileConfigurationMake(v14, v25, 1.79769313e308, 1.79769313e308);
  v15 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v6];

  v6 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v15];

LABEL_11:
  v16 = [v7 size];
  if (v16 == 2)
  {
    v17 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v6];

    [(SBSwitcherWindowingConfiguration *)v12 minimumDefaultWindowSize];
    v20 = v19;
    v22 = v21;
    [(SBSwitcherWindowingConfiguration *)v12 defaultWindowSize];
    [(SBSwitcherWindowingConfiguration *)v12 screenEdgePadding];
    SBDisplayItemAttributedSizeInfer(v25, v20, v22, x, y, width, height);
    v18 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v17];
    goto LABEL_15;
  }

  if (v16 == 1)
  {
    v17 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v6];

    SBDisplayItemAttributedSizeUnspecified(v25);
    v18 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedUserSizeBeforeOverlapping:v17];
LABEL_15:
    v23 = v18;
    v6 = v17;
    goto LABEL_17;
  }

  v23 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v6];
LABEL_17:

  return v23;
}

- (void)parse:(id)a3 argumentType:(int64_t)a4 bundleIdentifiers:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (a4 == 1)
  {
    v18 = 0;
    v12 = &v18;
    v13 = [SBWindowingLayoutFormatParser createLayoutRequestForArrangement:v10 bundleIdentifiersToLaunch:v11 error:&v18];
  }

  else
  {
    if (a4)
    {
LABEL_7:
      [(SBWindowingLayoutFormatAdapter *)self _createLayoutRoleToLayoutAttributesMap];
      goto LABEL_8;
    }

    v19 = 0;
    v12 = &v19;
    v13 = [SBWindowingLayoutFormatParser createLayoutRequestForFormat:v10 bundleIdentifiersToLaunch:v11 error:&v19];
  }

  v14 = v13;
  v15 = *v12;
  layoutRequests = self->_layoutRequests;
  self->_layoutRequests = v14;

  if (!v15)
  {
    goto LABEL_7;
  }

  v17 = v15;
  *a6 = v15;

LABEL_8:
}

@end