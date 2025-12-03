@interface SBWindowingLayoutFormatAdapter
- (SBWindowingLayoutFormatAdapter)initWithWindowScene:(id)scene;
- (id)_modifySizeAndPositionForLayoutAttributes:(id)attributes forLayoutRequest:(id)request;
- (void)_createLayoutRoleToLayoutAttributesMap;
- (void)parse:(id)parse argumentType:(int64_t)type bundleIdentifiers:(id)identifiers error:(id *)error;
@end

@implementation SBWindowingLayoutFormatAdapter

- (SBWindowingLayoutFormatAdapter)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v20.receiver = self;
  v20.super_class = SBWindowingLayoutFormatAdapter;
  v5 = [(SBWindowingLayoutFormatAdapter *)&v20 init];
  if (v5)
  {
    switcherController = [sceneCopy switcherController];
    contentViewController = [switcherController contentViewController];
    v8 = objc_opt_class();
    v9 = contentViewController;
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

    view = [v11 view];
    [view bounds];
    v5->_containerViewBounds.origin.x = v13;
    v5->_containerViewBounds.origin.y = v14;
    v5->_containerViewBounds.size.width = v15;
    v5->_containerViewBounds.size.height = v16;

    windowingConfiguration = [v11 windowingConfiguration];

    windowingConfiguration = v5->_windowingConfiguration;
    v5->_windowingConfiguration = windowingConfiguration;
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

        wantsFocus = [v9 wantsFocus];
        lastInteractionTime = v4;
        if ((wantsFocus & 1) == 0)
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

- (id)_modifySizeAndPositionForLayoutAttributes:(id)attributes forLayoutRequest:(id)request
{
  attributesCopy = attributes;
  requestCopy = request;
  x = self->_containerViewBounds.origin.x;
  y = self->_containerViewBounds.origin.y;
  width = self->_containerViewBounds.size.width;
  height = self->_containerViewBounds.size.height;
  v12 = self->_windowingConfiguration;
  position = [requestCopy position];
  if (position > 3)
  {
    if (position == 4)
    {
      v14 = 9;
    }

    else
    {
      if (position != 5)
      {
        goto LABEL_11;
      }

      v14 = 10;
    }
  }

  else if (position == 2)
  {
    v14 = 8;
  }

  else
  {
    if (position != 3)
    {
      goto LABEL_11;
    }

    v14 = 7;
  }

  SBDisplayItemTileConfigurationMake(v14, v25, 1.79769313e308, 1.79769313e308);
  v15 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:attributesCopy];

  attributesCopy = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v15];

LABEL_11:
  v16 = [requestCopy size];
  if (v16 == 2)
  {
    v17 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:attributesCopy];

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
    v17 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:attributesCopy];

    SBDisplayItemAttributedSizeUnspecified(v25);
    v18 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedUserSizeBeforeOverlapping:v17];
LABEL_15:
    v23 = v18;
    attributesCopy = v17;
    goto LABEL_17;
  }

  v23 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:attributesCopy];
LABEL_17:

  return v23;
}

- (void)parse:(id)parse argumentType:(int64_t)type bundleIdentifiers:(id)identifiers error:(id *)error
{
  parseCopy = parse;
  identifiersCopy = identifiers;
  if (type == 1)
  {
    v18 = 0;
    v12 = &v18;
    v13 = [SBWindowingLayoutFormatParser createLayoutRequestForArrangement:parseCopy bundleIdentifiersToLaunch:identifiersCopy error:&v18];
  }

  else
  {
    if (type)
    {
LABEL_7:
      [(SBWindowingLayoutFormatAdapter *)self _createLayoutRoleToLayoutAttributesMap];
      goto LABEL_8;
    }

    v19 = 0;
    v12 = &v19;
    v13 = [SBWindowingLayoutFormatParser createLayoutRequestForFormat:parseCopy bundleIdentifiersToLaunch:identifiersCopy error:&v19];
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
  *error = v15;

LABEL_8:
}

@end