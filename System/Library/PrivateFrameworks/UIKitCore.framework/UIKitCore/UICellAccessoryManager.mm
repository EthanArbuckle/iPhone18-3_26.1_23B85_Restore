@interface UICellAccessoryManager
- (CGRect)_updateAccessories:(id)accessories previousAccessories:(id)previousAccessories withLayout:(id)layout edge:(unint64_t)edge;
- (CGRect)containerBounds;
- (CGRect)contentFrame;
- (CGSize)containerSize;
- (CGSize)previousContainerSize;
- (UICellAccessoryManager)initWithContainerView:(id)view;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)safeAreaInsets;
- (UIView)containerView;
- (id)_configurationWithIdentifier:(id)identifier;
- (void)_updateFromPreviousConfiguration:(id)configuration;
- (void)layoutIfNeeded;
- (void)performWithEnforcedContainerSize:(CGSize)size block:(id)block;
- (void)setConfigurations:(id)configurations;
- (void)setCurrentConfigurationIdentifier:(id)identifier;
- (void)setNeedsLayout;
- (void)setSafeAreaInsets:(UIEdgeInsets)insets;
- (void)updateContainerView:(id)view;
@end

@implementation UICellAccessoryManager

- (CGRect)contentFrame
{
  [(UICellAccessoryManager *)self containerBounds];
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v6 = v5 + left;
  v8 = top + v7;
  v10 = v9 - (left + self->_contentInset.right);
  v12 = v11 - (top + self->_contentInset.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (CGSize)containerSize
{
  width = self->_enforcedContainerSize.width;
  height = self->_enforcedContainerSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerView);
    [WeakRetained bounds];
    width = v6;
    height = v7;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setNeedsLayout
{
  self->_needsLayout = 1;
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  [WeakRetained setNeedsLayout];
}

- (void)layoutIfNeeded
{
  obj = [(UICellAccessoryManager *)self _configurationWithIdentifier:self->_currentConfigurationIdentifier];
  [(UICellAccessoryManager *)self containerSize];
  v5 = v3;
  v6 = v4;
  if (self->_needsLayout || obj != self->_previousConfiguration || (v3 == self->_previousContainerSize.width ? (v7 = v4 == self->_previousContainerSize.height) : (v7 = 0), !v7 || [(UICellAccessoryConfiguration *)obj alwaysNeedsLayout]))
  {
    [(UICellAccessoryManager *)self _updateFromPreviousConfiguration:self->_previousConfiguration];
    objc_storeStrong(&self->_previousConfiguration, obj);
    self->_previousContainerSize.width = v5;
    self->_previousContainerSize.height = v6;
    self->_needsLayout = 0;
  }
}

- (CGRect)containerBounds
{
  [(UICellAccessoryManager *)self containerSize];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UICellAccessoryManager)initWithContainerView:(id)view
{
  v8.receiver = self;
  v8.super_class = UICellAccessoryManager;
  viewCopy = view;
  v4 = [(UICellAccessoryManager *)&v8 init];
  objc_storeWeak(&v4->_containerView, viewCopy);

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  accessoryViews = v4->_accessoryViews;
  v4->_accessoryViews = dictionary;

  return v4;
}

- (void)updateContainerView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containerView, obj);
    [(UICellAccessoryManager *)self setNeedsLayout];
    v5 = obj;
  }
}

- (void)setSafeAreaInsets:(UIEdgeInsets)insets
{
  if (insets.left != self->_safeAreaInsets.left || insets.right != self->_safeAreaInsets.right)
  {
    self->_safeAreaInsets = insets;
    [(UICellAccessoryManager *)self setNeedsLayout];
  }
}

- (void)setConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  if (self->_configurations != configurationsCopy)
  {
    v7 = configurationsCopy;
    objc_storeStrong(&self->_configurations, configurations);
    WeakRetained = objc_loadWeakRetained(&self->_containerView);
    [WeakRetained setNeedsLayout];

    configurationsCopy = v7;
  }
}

- (void)setCurrentConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_currentConfigurationIdentifier != identifierCopy)
  {
    v7 = identifierCopy;
    objc_storeStrong(&self->_currentConfigurationIdentifier, identifier);
    WeakRetained = objc_loadWeakRetained(&self->_containerView);
    [WeakRetained setNeedsLayout];

    identifierCopy = v7;
  }
}

- (id)_configurationWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateFromPreviousConfiguration:(id)configuration
{
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  if (WeakRetained)
  {
    v5 = [(UICellAccessoryManager *)self _configurationWithIdentifier:self->_currentConfigurationIdentifier];
    _shouldReverseLayoutDirection = [WeakRetained _shouldReverseLayoutDirection];
    leadingAccessories = [v5 leadingAccessories];
    reverseObjectEnumerator = [leadingAccessories reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v66 = v5;
    trailingAccessories = [v5 trailingAccessories];
    leadingAccessories2 = [configurationCopy leadingAccessories];
    reverseObjectEnumerator2 = [leadingAccessories2 reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator2 allObjects];
    v14 = allObjects2;
    v15 = MEMORY[0x1E695E0F0];
    if (allObjects2)
    {
      v16 = allObjects2;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    v17 = v16;

    trailingAccessories2 = [configurationCopy trailingAccessories];
    v19 = trailingAccessories2;
    if (trailingAccessories2)
    {
      v20 = trailingAccessories2;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20;

    if (_shouldReverseLayoutDirection)
    {
      v22 = 8;
    }

    else
    {
      v22 = 2;
    }

    if (_shouldReverseLayoutDirection)
    {
      v23 = 2;
    }

    else
    {
      v23 = 8;
    }

    [(UICellAccessoryManager *)self _updateAccessories:allObjects previousAccessories:v17 withLayout:self->_leadingLayout edge:v22];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v62 = v28;
    v31 = v30;
    [(UICellAccessoryManager *)self _updateAccessories:trailingAccessories previousAccessories:v21 withLayout:self->_trailingLayout edge:v23];
    v36 = v32;
    v37 = v33;
    v38 = v34;
    v39 = v35;
    if (_shouldReverseLayoutDirection)
    {
      v40 = v32;
    }

    else
    {
      v40 = v25;
    }

    if (_shouldReverseLayoutDirection)
    {
      v41 = v33;
    }

    else
    {
      v41 = v27;
    }

    v60 = v41;
    v61 = v40;
    if (_shouldReverseLayoutDirection)
    {
      v42 = v34;
    }

    else
    {
      v42 = v29;
    }

    v59 = v42;
    if (_shouldReverseLayoutDirection)
    {
      v43 = v35;
    }

    else
    {
      v43 = v31;
    }

    if (_shouldReverseLayoutDirection)
    {
      v44 = v25;
    }

    else
    {
      v44 = v36;
    }

    if (_shouldReverseLayoutDirection)
    {
      v45 = v27;
    }

    else
    {
      v45 = v37;
    }

    v64 = v45;
    v65 = v44;
    if (_shouldReverseLayoutDirection)
    {
      v38 = v62;
      v46 = v31;
    }

    else
    {
      v46 = v39;
    }

    v63 = v46;
    [(UICellAccessoryManager *)self containerBounds];
    v55 = v47;
    v56 = v48;
    v57 = v50;
    v58 = v49;
    v69.origin.x = v61;
    v69.origin.y = v60;
    v69.size.width = v59;
    v51 = v43;
    v69.size.height = v43;
    v52 = 0.0;
    MaxX = 0.0;
    if (!CGRectIsNull(v69))
    {
      v70.origin.x = v61;
      v70.origin.y = v60;
      v70.size.width = v59;
      v70.size.height = v51;
      MaxX = CGRectGetMaxX(v70);
    }

    v71.origin.x = v65;
    v71.origin.y = v64;
    v71.size.width = v38;
    v71.size.height = v63;
    if (!CGRectIsNull(v71))
    {
      v72.origin.x = v55;
      v72.size.height = v56;
      v72.size.width = v57;
      v72.origin.y = v58;
      v54 = CGRectGetMaxX(v72);
      v73.origin.x = v65;
      v73.origin.y = v64;
      v73.size.width = v38;
      v73.size.height = v63;
      v52 = v54 - CGRectGetMinX(v73);
    }

    self->_contentInset.top = 0.0;
    self->_contentInset.left = MaxX;
    self->_contentInset.bottom = 0.0;
    self->_contentInset.right = v52;
  }
}

- (CGRect)_updateAccessories:(id)accessories previousAccessories:(id)previousAccessories withLayout:(id)layout edge:(unint64_t)edge
{
  v83 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  previousAccessoriesCopy = previousAccessories;
  layoutCopy = layout;
  [layoutCopy setManager:self];
  [layoutCopy setEdge:edge];
  v14 = 136;
  if (edge == 8)
  {
    v14 = 152;
  }

  [layoutCopy setSafeAreaInset:*(&self->super.isa + v14)];
  standardLayoutWidthProvider = [(UICellAccessoryManager *)self standardLayoutWidthProvider];
  [layoutCopy setStandardLayoutWidthProvider:standardLayoutWidthProvider];

  disclosureLayoutWidthProvider = [(UICellAccessoryManager *)self disclosureLayoutWidthProvider];
  [layoutCopy setDisclosureLayoutWidthProvider:disclosureLayoutWidthProvider];

  selfCopy = self;
  v59 = layoutCopy;
  v60 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
  [layoutCopy prepareLayoutForAccessories:accessoriesCopy previousAccessories:previousAccessoriesCopy configurationIdentifier:self->_currentConfigurationIdentifier animated:?];
  v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(accessoriesCopy, "count")}];
  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(accessoriesCopy, "count")}];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v19 = accessoriesCopy;
  v20 = [v19 countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v78;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v78 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v77 + 1) + 8 * i);
        view = [v24 view];
        [v17 addObject:view];

        identifier = [v24 identifier];
        [v18 addObject:identifier];
      }

      v21 = [v19 countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v21);
  }

  v27 = [v17 count];
  if (v27 != [v19 count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"UICellAccessoryManager.m" lineNumber:334 description:@"Having the same view in multiple accessories is unsupported."];
  }

  v58 = a2;
  v61 = v19;
  v28 = [v19 mutableCopy];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v29 = previousAccessoriesCopy;
  v30 = [v29 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v74;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v74 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v73 + 1) + 8 * j);
        identifier2 = [v34 identifier];
        v36 = [v18 containsObject:identifier2];

        if ((v36 & 1) == 0)
        {
          [v28 addObject:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v31);
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke;
  v70[3] = &unk_1E70F6228;
  v70[4] = selfCopy;
  v37 = v28;
  v71 = v37;
  v38 = v59;
  v72 = v38;
  [UIView performWithoutAnimation:v70];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke_3;
  v68[3] = &unk_1E7123148;
  v68[4] = selfCopy;
  v39 = v38;
  v69 = v39;
  [v37 enumerateObjectsUsingBlock:v68];
  v40 = [(UICellAccessoryManager *)selfCopy _configurationWithIdentifier:selfCopy->_currentConfigurationIdentifier];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke_4;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = selfCopy;
  v41 = v40;
  v67 = v41;
  v42 = _Block_copy(aBlock);
  animatedLayoutUpdatesCount = [(UICellAccessoryManager *)selfCopy animatedLayoutUpdatesCount];
  if (v60)
  {
    [(UICellAccessoryManager *)selfCopy setAnimatedLayoutUpdatesCount:animatedLayoutUpdatesCount + 1];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke_5;
    v63[3] = &unk_1E7104F38;
    v63[4] = selfCopy;
    v65 = v58;
    v64 = v42;
    [UIView _addCompletion:v63];

    v44 = v61;
  }

  else
  {
    v44 = v61;
    if (!animatedLayoutUpdatesCount)
    {
      v42[2](v42);
    }
  }

  [v39 endLayout];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = v46;
  v54 = v48;
  v55 = v50;
  v56 = v52;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

void __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke_2;
  v5[3] = &unk_1E7123120;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = WeakRetained;
  v7 = *(a1 + 48);
  v4 = WeakRetained;
  [v3 enumerateObjectsUsingBlock:v5];
}

void __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 identifier];
  v4 = [v13 view];
  v5 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:v3];
  v6 = v5;
  if (v5)
  {
    if (v5 == v4)
    {
      v7 = [v4 superview];
      v8 = *(a1 + 40);

      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [v5 frame];
      [v4 setFrame:?];
      [v4 layoutIfNeeded];
      [v6 removeFromSuperview];

      v6 = 0;
    }
  }

  [*(a1 + 40) addSubview:v4];
  [*(*(a1 + 32) + 96) setObject:v4 forKeyedSubscript:v3];
LABEL_6:
  [*(a1 + 48) initialFrameForAccessory:v13];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  if (!CGRectIsNull(v15))
  {
    [v4 setFrame:{x, y, width, height}];
    [v4 layoutIfNeeded];
  }

  [*(a1 + 48) initialAlphaForAccessory:v13];
  [v4 setAlpha:?];
}

void __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 identifier];
  v4 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:v3];
  [*(a1 + 40) finalFrameForAccessory:v9];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (!CGRectIsNull(v11))
  {
    [v4 setFrame:{x, y, width, height}];
  }

  [*(a1 + 40) finalAlphaForAccessory:v9];
  [v4 setAlpha:?];
}

void __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke_4(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _configurationWithIdentifier:*(*(a1 + 32) + 72)];
  if (v2 == *(a1 + 40))
  {
    v3 = objc_alloc(MEMORY[0x1E695DFA8]);
    v4 = [*(*(a1 + 32) + 96) allKeys];
    v5 = [v3 initWithArray:v4];

    v6 = objc_alloc(MEMORY[0x1E695DFA8]);
    v7 = [*(*(a1 + 32) + 96) allValues];
    v8 = [v6 initWithArray:v7];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = [v2 leadingAccessories];
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [v14 identifier];
          [v5 removeObject:v15];

          v16 = [v14 view];
          [v8 removeObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v11);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = [v2 trailingAccessories];
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * j);
          v23 = [v22 identifier];
          [v5 removeObject:v23];

          v24 = [v22 view];
          [v8 removeObject:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v19);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v5;
    v26 = [v25 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v31;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v31 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(a1 + 32) + 96) removeObjectForKey:{*(*(&v30 + 1) + 8 * k), v30}];
        }

        v27 = [v25 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v27);
    }

    [v8 makeObjectsPerformSelector:sel_removeFromSuperview];
  }
}

void __81__UICellAccessoryManager__updateAccessories_previousAccessories_withLayout_edge___block_invoke_5(uint64_t a1, int a2)
{
  [*(a1 + 32) setAnimatedLayoutUpdatesCount:{objc_msgSend(*(a1 + 32), "animatedLayoutUpdatesCount") - 1}];
  if ([*(a1 + 32) animatedLayoutUpdatesCount] < 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"UICellAccessoryManager.m" lineNumber:431 description:@"UICollectionView internal inconsistency: unexpected cell accessory layout animation"];

    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (![*(a1 + 32) animatedLayoutUpdatesCount])
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)performWithEnforcedContainerSize:(CGSize)size block:(id)block
{
  enforcedContainerSize = self->_enforcedContainerSize;
  self->_enforcedContainerSize = size;
  (*(block + 2))(block, a2);
  self->_enforcedContainerSize = enforcedContainerSize;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (CGSize)previousContainerSize
{
  width = self->_previousContainerSize.width;
  height = self->_previousContainerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end