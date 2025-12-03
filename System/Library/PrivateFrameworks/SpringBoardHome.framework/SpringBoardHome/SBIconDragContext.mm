@interface SBIconDragContext
- (BOOL)hasDragItem:(id)item;
- (BOOL)hasDraggedIcon:(id)icon;
- (BOOL)hasFolderDraggedIcons;
- (BOOL)hasItemIdentifier:(id)identifier;
- (BOOL)hasNonDefaultSizedDraggedIcons;
- (BOOL)hasNonDefaultSizedSourceIcons;
- (BOOL)isUserActive;
- (CGPoint)currentEnteredIconListViewLastLocation;
- (CGPoint)initialTouchOffsetFromIconImageCenter;
- (CGPoint)pauseLocation;
- (CGVector)dragVelocity;
- (NSArray)createdIcons;
- (NSArray)draggedIcons;
- (NSArray)droppedIcons;
- (NSArray)sourceIcons;
- (NSSet)appLocalContexts;
- (NSSet)expectedMessages;
- (NSString)dragPlaceholderGridSizeClass;
- (NSString)draggedIconGridSizeClass;
- (NSString)sourceIconGridSizeClass;
- (SBIconDragContext)init;
- (SBIconListView)currentEnteredIconListView;
- (id)appDragLocalContextWithIconIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)dragPreviewForIconView:(id)view;
- (id)initialIndexPathForIcon:(id)icon;
- (id)succinctDescription;
- (void)_addPrepareForDropAssertionForIconView:(id)view;
- (void)addAppLocalContext:(id)context;
- (void)addDestinationIconView:(id)view;
- (void)addDiscardedSourceIconView:(id)view;
- (void)addDragScreenLocation:(CGPoint)location;
- (void)addDropAnimatingDragItem:(id)item;
- (void)addDroppedIcon:(id)icon;
- (void)addDroppedIcons:(id)icons;
- (void)addEnteredIconListView:(id)view;
- (void)addGrabbedIconView:(id)view;
- (void)addIconViewDroppingAssertion:(id)assertion forIconView:(id)view;
- (void)addItemIdentifier:(id)identifier;
- (void)addMessageExpectationNamed:(id)named;
- (void)addSourceIcon:(id)icon;
- (void)addSourceIconView:(id)view;
- (void)addSourceIcons:(id)icons;
- (void)clearAllDropAssertions;
- (void)clearDropAssertionsForIconView:(id)view;
- (void)dealloc;
- (void)enumerateDragPreviewsUsingBlock:(id)block;
- (void)enumerateDraggedIconUsingBlock:(id)block;
- (void)invalidateIconViewBorrowAssertions;
- (void)resetDragPlaceholder;
- (void)resetDraggedIconsHiddenAssertion;
- (void)resetLastUserInteractionDate;
- (void)setAdditionalMatchingIcon:(id)icon forDroppedIconIdentifier:(id)identifier;
- (void)setAppDragLocalContext:(id)context forDragItem:(id)item;
- (void)setBorrowedViewController:(id)controller forIconView:(id)view;
- (void)setDestinationFolderIconView:(id)view forIconWithIdentifier:(id)identifier;
- (void)setDestinationStackIconView:(id)view forIconWithIdentifier:(id)identifier;
- (void)setDragPreview:(id)preview forIconView:(id)view;
- (void)setIconViewBorrowAssertion:(id)assertion forIconView:(id)view;
- (void)setInitialIndexPath:(id)path forIcon:(id)icon;
- (void)setRecipientIconView:(id)view;
- (void)setSourceIcons:(id)icons;
- (void)setTargetIconView:(id)view forCancellingIconView:(id)iconView;
- (void)swapSourceIconWithIdentifier:(id)identifier withIcon:(id)icon;
@end

@implementation SBIconDragContext

- (SBIconDragContext)init
{
  v11.receiver = self;
  v11.super_class = SBIconDragContext;
  v2 = [(SBIconDragContext *)&v11 init];
  v3 = v2;
  if (v2)
  {
    grabbedIconViews = v2->_grabbedIconViews;
    v5 = MEMORY[0x1E695E0F0];
    v2->_grabbedIconViews = MEMORY[0x1E695E0F0];

    itemIdentifiers = v3->_itemIdentifiers;
    v3->_itemIdentifiers = v5;

    externallyDraggedIcons = v3->_externallyDraggedIcons;
    v3->_externallyDraggedIcons = v5;

    v8 = _os_activity_create(&dword_1BEB18000, "Icon Drag", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    activity = v3->_activity;
    v3->_activity = v8;

    os_activity_scope_enter(v3->_activity, &v3->_activityState);
  }

  return v3;
}

- (void)dealloc
{
  os_activity_scope_leave(&self->_activityState);
  v3.receiver = self;
  v3.super_class = SBIconDragContext;
  [(SBIconDragContext *)&v3 dealloc];
}

- (BOOL)isUserActive
{
  state = [(SBIconDragContext *)self state];
  result = 0;
  if (state <= 4 && ((1 << state) & 0x1A) != 0)
  {
    return ![(SBIconDragContext *)self dragItemWasConsumedExternally];
  }

  return result;
}

- (void)addItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemIdentifiers = [(SBIconDragContext *)self itemIdentifiers];
  v5 = [itemIdentifiers arrayByAddingObject:identifierCopy];

  [(SBIconDragContext *)self setItemIdentifiers:v5];
}

- (BOOL)hasItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemIdentifiers = [(SBIconDragContext *)self itemIdentifiers];
  v6 = [itemIdentifiers containsObject:identifierCopy];

  return v6;
}

- (void)addGrabbedIconView:(id)view
{
  viewCopy = view;
  grabbedIconViews = [(SBIconDragContext *)self grabbedIconViews];
  v6 = [grabbedIconViews arrayByAddingObject:viewCopy];
  [(SBIconDragContext *)self setGrabbedIconViews:v6];

  icon = [viewCopy icon];

  v8 = icon;
  if (icon)
  {
    grabbedIcons = self->_grabbedIcons;
    if (!grabbedIcons)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v11 = self->_grabbedIcons;
      self->_grabbedIcons = v10;

      grabbedIcons = self->_grabbedIcons;
    }

    v7 = [(NSMutableSet *)grabbedIcons addObject:icon];
    v8 = icon;
  }

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (NSArray)sourceIcons
{
  sourceIcons = self->_sourceIcons;
  if (sourceIcons)
  {
    array = [(NSMutableOrderedSet *)sourceIcons array];
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (void)setSourceIcons:(id)icons
{
  v4 = MEMORY[0x1E695DFA0];
  iconsCopy = icons;
  v6 = [[v4 alloc] initWithArray:iconsCopy];

  sourceIcons = self->_sourceIcons;
  self->_sourceIcons = v6;
}

- (void)addSourceIcon:(id)icon
{
  iconCopy = icon;
  sourceIcons = self->_sourceIcons;
  v8 = iconCopy;
  if (!sourceIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_sourceIcons;
    self->_sourceIcons = v6;

    iconCopy = v8;
    sourceIcons = self->_sourceIcons;
  }

  [(NSMutableOrderedSet *)sourceIcons addObject:iconCopy];
}

- (void)addSourceIcons:(id)icons
{
  iconsCopy = icons;
  sourceIcons = self->_sourceIcons;
  v8 = iconsCopy;
  if (!sourceIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_sourceIcons;
    self->_sourceIcons = v6;

    iconsCopy = v8;
    sourceIcons = self->_sourceIcons;
  }

  [(NSMutableOrderedSet *)sourceIcons addObjectsFromArray:iconsCopy];
}

- (NSArray)droppedIcons
{
  if (self->_droppedIcons)
  {
    return self->_droppedIcons;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)addDroppedIcon:(id)icon
{
  iconCopy = icon;
  droppedIcons = self->_droppedIcons;
  v8 = iconCopy;
  if (!droppedIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_droppedIcons;
    self->_droppedIcons = v6;

    iconCopy = v8;
    droppedIcons = self->_droppedIcons;
  }

  [(NSMutableArray *)droppedIcons addObject:iconCopy];
}

- (void)addDroppedIcons:(id)icons
{
  iconsCopy = icons;
  droppedIcons = self->_droppedIcons;
  v8 = iconsCopy;
  if (!droppedIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_droppedIcons;
    self->_droppedIcons = v6;

    iconsCopy = v8;
    droppedIcons = self->_droppedIcons;
  }

  [(NSMutableArray *)droppedIcons addObjectsFromArray:iconsCopy];
}

- (void)setAdditionalMatchingIcon:(id)icon forDroppedIconIdentifier:(id)identifier
{
  iconCopy = icon;
  identifierCopy = identifier;
  additionalMatchingDroppedIcons = self->_additionalMatchingDroppedIcons;
  if (!additionalMatchingDroppedIcons)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_additionalMatchingDroppedIcons;
    self->_additionalMatchingDroppedIcons = v8;

    additionalMatchingDroppedIcons = self->_additionalMatchingDroppedIcons;
  }

  [(NSMutableDictionary *)additionalMatchingDroppedIcons setObject:iconCopy forKey:identifierCopy];
}

- (void)swapSourceIconWithIdentifier:(id)identifier withIcon:(id)icon
{
  v41 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  iconCopy = icon;
  sourceIcons = [(SBIconDragContext *)self sourceIcons];
  v9 = [sourceIcons mutableCopy];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __59__SBIconDragContext_swapSourceIconWithIdentifier_withIcon___block_invoke;
  v38[3] = &unk_1E808BFD8;
  v10 = identifierCopy;
  v39 = v10;
  v11 = [v9 indexOfObjectPassingTest:v38];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 addObject:iconCopy];
  }

  else
  {
    [v9 replaceObjectAtIndex:v11 withObject:iconCopy];
  }

  v27 = v9;
  [(SBIconDragContext *)self setSourceIcons:v9];
  itemIdentifiers = [(SBIconDragContext *)self itemIdentifiers];
  v13 = [itemIdentifiers mutableCopy];

  nodeIdentifier = [iconCopy nodeIdentifier];
  [v13 removeObject:v10];
  [v13 addObject:nodeIdentifier];
  [(SBIconDragContext *)self setItemIdentifiers:v13];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __59__SBIconDragContext_swapSourceIconWithIdentifier_withIcon___block_invoke_2;
  v35[3] = &unk_1E8089FF0;
  v15 = sourceIcons;
  v36 = v15;
  v16 = iconCopy;
  v37 = v16;
  [(SBIconDragContext *)self enumerateSourceIconViewsUsingBlock:v35];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __59__SBIconDragContext_swapSourceIconWithIdentifier_withIcon___block_invoke_3;
  v32[3] = &unk_1E808F210;
  v26 = v15;
  v33 = v26;
  v25 = v16;
  v34 = v25;
  [(SBIconDragContext *)self enumerateDragPreviewsUsingBlock:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = self->_appLocalContexts;
  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        uniqueIdentifier = [v22 uniqueIdentifier];
        v24 = [uniqueIdentifier isEqualToString:v10];

        if (v24)
        {
          [v22 setUniqueIdentifier:nodeIdentifier];
        }
      }

      v19 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v19);
  }
}

uint64_t __59__SBIconDragContext_swapSourceIconWithIdentifier_withIcon___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 nodeIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __59__SBIconDragContext_swapSourceIconWithIdentifier_withIcon___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 icon];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [v6 setIcon:*(a1 + 40)];
  }
}

void __59__SBIconDragContext_swapSourceIconWithIdentifier_withIcon___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 icon];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [v6 setIcon:*(a1 + 40)];
  }
}

- (BOOL)hasNonDefaultSizedSourceIcons
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sourceIcons = [(SBIconDragContext *)self sourceIcons];
  v3 = [sourceIcons countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(sourceIcons);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        gridSizeClass = [v7 gridSizeClass];
        v9 = gridSizeClass;
        if (gridSizeClass == @"SBHIconGridSizeClassDefault")
        {
        }

        else
        {
          gridSizeClass2 = [v7 gridSizeClass];
          v11 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

          if (!v11)
          {
            v12 = 1;
            goto LABEL_13;
          }
        }
      }

      v4 = [sourceIcons countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (NSString)sourceIconGridSizeClass
{
  sourceIcons = [(SBIconDragContext *)self sourceIcons];
  firstObject = [sourceIcons firstObject];

  gridSizeClass = [firstObject gridSizeClass];

  return gridSizeClass;
}

- (NSArray)draggedIcons
{
  sourceIcons = [(SBIconDragContext *)self sourceIcons];
  createdIcons = [(SBIconDragContext *)self createdIcons];
  externallyDraggedIcons = [(SBIconDragContext *)self externallyDraggedIcons];
  v6 = [sourceIcons count];
  v7 = [createdIcons count];
  v8 = [externallyDraggedIcons count];
  v9 = v8;
  if (v6 && !v7 && !v8)
  {
    v10 = sourceIcons;
LABEL_13:
    v12 = v10;
    goto LABEL_14;
  }

  if (v7)
  {
    v11 = v6 != 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v8 == 0)
  {
    v10 = createdIcons;
    goto LABEL_13;
  }

  if (v6 == 0 && v7 == 0 && v8)
  {
    v10 = externallyDraggedIcons;
    goto LABEL_13;
  }

  v14 = [sourceIcons mutableCopy];
  v15 = v14;
  if (v7)
  {
    [v14 addObjectsFromArray:createdIcons];
  }

  if (v9)
  {
    [v15 addObjectsFromArray:externallyDraggedIcons];
  }

  additionalMatchingDroppedIcons = self->_additionalMatchingDroppedIcons;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __33__SBIconDragContext_draggedIcons__block_invoke;
  v19[3] = &unk_1E808F238;
  v20 = 0;
  v17 = v15;
  v21 = v17;
  [(NSMutableDictionary *)additionalMatchingDroppedIcons enumerateKeysAndObjectsUsingBlock:v19];
  v18 = v21;
  v12 = v17;

LABEL_14:

  return v12;
}

void __33__SBIconDragContext_draggedIcons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SBIconDragContext_draggedIcons__block_invoke_2;
  v7[3] = &unk_1E808BFD8;
  v5 = v3;
  v8 = v5;
  v6 = [v4 indexOfObjectPassingTest:v7];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) removeObjectAtIndex:v6];
  }
}

uint64_t __33__SBIconDragContext_draggedIcons__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)enumerateDraggedIconUsingBlock:(id)block
{
  blockCopy = block;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  sourceIcons = [(SBIconDragContext *)self sourceIcons];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__SBIconDragContext_enumerateDraggedIconUsingBlock___block_invoke;
  v16[3] = &unk_1E808DEB0;
  v6 = blockCopy;
  v17 = v6;
  v18 = &v19;
  [sourceIcons enumerateObjectsUsingBlock:v16];
  if ((v20[3] & 1) == 0)
  {
    createdIcons = [(SBIconDragContext *)self createdIcons];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__SBIconDragContext_enumerateDraggedIconUsingBlock___block_invoke_2;
    v13[3] = &unk_1E808DEB0;
    v8 = v6;
    v14 = v8;
    v15 = &v19;
    [createdIcons enumerateObjectsUsingBlock:v13];
    if ((v20[3] & 1) == 0)
    {
      externallyDraggedIcons = [(SBIconDragContext *)self externallyDraggedIcons];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__SBIconDragContext_enumerateDraggedIconUsingBlock___block_invoke_3;
      v10[3] = &unk_1E808DEB0;
      v11 = v8;
      v12 = &v19;
      [externallyDraggedIcons enumerateObjectsUsingBlock:v10];
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (BOOL)hasDraggedIcon:(id)icon
{
  iconCopy = icon;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SBIconDragContext_hasDraggedIcon___block_invoke;
  v7[3] = &unk_1E808F260;
  v5 = iconCopy;
  v8 = v5;
  v9 = &v10;
  [(SBIconDragContext *)self enumerateDraggedIconUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __36__SBIconDragContext_hasDraggedIcon___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)hasNonDefaultSizedDraggedIcons
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  draggedIcons = [(SBIconDragContext *)self draggedIcons];
  v3 = [draggedIcons countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(draggedIcons);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        gridSizeClass = [v7 gridSizeClass];
        v9 = gridSizeClass;
        if (gridSizeClass == @"SBHIconGridSizeClassDefault")
        {
        }

        else
        {
          gridSizeClass2 = [v7 gridSizeClass];
          v11 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

          if (!v11)
          {
            v12 = 1;
            goto LABEL_13;
          }
        }
      }

      v4 = [draggedIcons countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (NSString)draggedIconGridSizeClass
{
  draggedIcons = [(SBIconDragContext *)self draggedIcons];
  firstObject = [draggedIcons firstObject];

  if (firstObject)
  {
    gridSizeClass = [firstObject gridSizeClass];
  }

  else
  {
    gridSizeClass = @"SBHIconGridSizeClassDefault";
  }

  v5 = gridSizeClass;

  return v5;
}

- (BOOL)hasFolderDraggedIcons
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  draggedIcons = [(SBIconDragContext *)self draggedIcons];
  v3 = [draggedIcons countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(draggedIcons);
        }

        if ([*(*(&v7 + 1) + 8 * i) isFolderIcon])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [draggedIcons countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSArray)createdIcons
{
  createdApplicationIcons = [(SBIconDragContext *)self createdApplicationIcons];
  createdWidgetIcons = [(SBIconDragContext *)self createdWidgetIcons];
  v5 = createdWidgetIcons;
  if (createdApplicationIcons && !createdWidgetIcons)
  {
    v6 = createdApplicationIcons;
LABEL_10:
    v7 = v6;
    goto LABEL_11;
  }

  if (!createdApplicationIcons && createdWidgetIcons)
  {
    v6 = createdWidgetIcons;
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E695E0F0];
  if (createdApplicationIcons && createdWidgetIcons)
  {
    v6 = [createdApplicationIcons arrayByAddingObjectsFromArray:createdWidgetIcons];
    goto LABEL_10;
  }

LABEL_11:

  return v7;
}

- (void)addSourceIconView:(id)view
{
  viewCopy = view;
  sourceIconViews = self->_sourceIconViews;
  v8 = viewCopy;
  if (!sourceIconViews)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_sourceIconViews;
    self->_sourceIconViews = v6;

    viewCopy = v8;
    sourceIconViews = self->_sourceIconViews;
  }

  [(NSMutableSet *)sourceIconViews addObject:viewCopy];
}

- (void)addDiscardedSourceIconView:(id)view
{
  viewCopy = view;
  discardedSourceIconViews = self->_discardedSourceIconViews;
  v8 = viewCopy;
  if (!discardedSourceIconViews)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_discardedSourceIconViews;
    self->_discardedSourceIconViews = v6;

    viewCopy = v8;
    discardedSourceIconViews = self->_discardedSourceIconViews;
  }

  [(NSMutableSet *)discardedSourceIconViews addObject:viewCopy];
}

- (BOOL)hasDragItem:(id)item
{
  v32 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  itemProvider = [itemCopy itemProvider];
  v6 = [itemProvider hasItemConformingToTypeIdentifier:*MEMORY[0x1E699A3D0]];

  if (!v6)
  {
    goto LABEL_22;
  }

  itemProvider2 = [itemCopy itemProvider];
  teamData = [itemProvider2 teamData];
  if (!teamData)
  {
    goto LABEL_21;
  }

  v9 = MEMORY[0x1E696ACD0];
  v10 = objc_opt_self();
  v11 = [v9 unarchivedObjectOfClass:v10 fromData:teamData error:0];

  if (!v11)
  {
    goto LABEL_21;
  }

  [(SBIconDragContext *)self sourceIcons];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v30 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v13)
  {

LABEL_21:
    goto LABEL_22;
  }

  v14 = v13;
  selfCopy = self;
  v26 = teamData;
  v15 = *v28;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v28 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v27 + 1) + 8 * i);
      if ([v17 isFileStackIcon])
      {
        v18 = objc_opt_class();
        v19 = v17;
        if (v18)
        {
          v20 = (objc_opt_isKindOfClass() & 1) != 0 ? v19 : 0;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v22 = [v21 url];

        LOBYTE(v21) = [v22 isEqual:v11];
        if (v21)
        {

          v23 = 1;
          goto LABEL_25;
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  self = selfCopy;
LABEL_22:
  itemProvider2 = [itemCopy sbh_appDragLocalContext];
  if (itemProvider2)
  {
    v23 = [(NSMutableSet *)self->_appLocalContexts containsObject:itemProvider2];
  }

  else
  {
    v23 = 0;
  }

LABEL_25:

  return v23;
}

- (void)addMessageExpectationNamed:(id)named
{
  namedCopy = named;
  messageExpectations = self->_messageExpectations;
  v8 = namedCopy;
  if (!messageExpectations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v7 = self->_messageExpectations;
    self->_messageExpectations = v6;

    namedCopy = v8;
    messageExpectations = self->_messageExpectations;
  }

  [(NSCountedSet *)messageExpectations addObject:namedCopy];
}

- (NSSet)expectedMessages
{
  messageExpectations = self->_messageExpectations;
  if (messageExpectations)
  {
    v3 = [(NSCountedSet *)messageExpectations copy];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v3;
}

- (void)addDestinationIconView:(id)view
{
  viewCopy = view;
  destinationIconViews = self->_destinationIconViews;
  v8 = viewCopy;
  if (!destinationIconViews)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_destinationIconViews;
    self->_destinationIconViews = v6;

    viewCopy = v8;
    destinationIconViews = self->_destinationIconViews;
  }

  [(NSMutableSet *)destinationIconViews addObject:viewCopy];
}

- (void)addIconViewDroppingAssertion:(id)assertion forIconView:(id)view
{
  assertionCopy = assertion;
  viewCopy = view;
  iconViewDroppingAssertions = self->_iconViewDroppingAssertions;
  if (!iconViewDroppingAssertions)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_iconViewDroppingAssertions;
    self->_iconViewDroppingAssertions = weakToStrongObjectsMapTable;

    iconViewDroppingAssertions = self->_iconViewDroppingAssertions;
  }

  v10 = [(NSMapTable *)iconViewDroppingAssertions objectForKey:viewCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMapTable *)self->_iconViewDroppingAssertions setObject:v10 forKey:viewCopy];
  }

  [v10 addObject:assertionCopy];
}

- (void)addEnteredIconListView:(id)view
{
  viewCopy = view;
  enteredIconListViews = self->_enteredIconListViews;
  v8 = viewCopy;
  if (!enteredIconListViews)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_enteredIconListViews;
    self->_enteredIconListViews = v6;

    viewCopy = v8;
    enteredIconListViews = self->_enteredIconListViews;
  }

  [(NSMutableSet *)enteredIconListViews addObject:viewCopy];
}

- (void)setTargetIconView:(id)view forCancellingIconView:(id)iconView
{
  viewCopy = view;
  iconViewCopy = iconView;
  targetsForCancellingIconViews = self->_targetsForCancellingIconViews;
  if (!targetsForCancellingIconViews)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v9 = self->_targetsForCancellingIconViews;
    self->_targetsForCancellingIconViews = strongToStrongObjectsMapTable;

    targetsForCancellingIconViews = self->_targetsForCancellingIconViews;
  }

  [(NSMapTable *)targetsForCancellingIconViews setObject:viewCopy forKey:iconViewCopy];
}

- (void)setRecipientIconView:(id)view
{
  viewCopy = view;
  recipientIconView = self->_recipientIconView;
  if (recipientIconView != viewCopy)
  {
    v7 = MEMORY[0x1E69DD278];
    v11 = viewCopy;
    v8 = recipientIconView;
    v9 = [v7 alloc];
    +[SBHIconManager defaultIconLayoutAnimationDuration];
    v10 = [v9 initWithDuration:0 curve:0 animations:?];
    [(SBIconView *)v8 setShowsDropGlow:0 animator:v10];
    [(SBIconView *)v11 setShowsDropGlow:1 animator:v10];
    objc_storeStrong(&self->_recipientIconView, view);

    [v10 startAnimation];
    if (!v11)
    {
      [(SBIconDragContext *)self setRecipientIconEntryRegion:0];
    }

    viewCopy = v11;
  }
}

- (id)dragPreviewForIconView:(id)view
{
  v27 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_dragPreviewForIconViews;
  v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    selfCopy = self;
    v7 = *v23;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v22 + 1) + 8 * v8);
      icon = [v9 icon];
      icon2 = [viewCopy icon];
      v12 = [icon isEqual:icon2];

      if (v12)
      {
        break;
      }

      v13 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = icon;
        icon3 = [viewCopy icon];
        v17 = [v15 referencesIcon:icon3];

        if (v17)
        {
          v18 = [(NSMapTable *)selfCopy->_dragPreviewForIconViews objectForKey:v9];

          goto LABEL_15;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMapTable *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v18 = [(NSMapTable *)selfCopy->_dragPreviewForIconViews objectForKey:v9];
LABEL_15:

    goto LABEL_16;
  }

LABEL_12:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)setDragPreview:(id)preview forIconView:(id)view
{
  previewCopy = preview;
  viewCopy = view;
  dragPreviewForIconViews = self->_dragPreviewForIconViews;
  if (!dragPreviewForIconViews)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v9 = self->_dragPreviewForIconViews;
    self->_dragPreviewForIconViews = weakToWeakObjectsMapTable;

    dragPreviewForIconViews = self->_dragPreviewForIconViews;
  }

  [(NSMapTable *)dragPreviewForIconViews setObject:previewCopy forKey:viewCopy];
}

- (void)enumerateDragPreviewsUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_dragPreviewForIconViews;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [(NSMapTable *)self->_dragPreviewForIconViews objectForKey:v10];
      v12 = 0;
      blockCopy[2](blockCopy, v11, v10, &v12);
      LOBYTE(v10) = v12;

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addAppLocalContext:(id)context
{
  contextCopy = context;
  appLocalContexts = self->_appLocalContexts;
  v8 = contextCopy;
  if (!appLocalContexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_appLocalContexts;
    self->_appLocalContexts = v6;

    contextCopy = v8;
    appLocalContexts = self->_appLocalContexts;
  }

  [(NSMutableSet *)appLocalContexts addObject:contextCopy];
}

- (NSSet)appLocalContexts
{
  appLocalContexts = self->_appLocalContexts;
  if (appLocalContexts)
  {
    v3 = appLocalContexts;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  return v3;
}

- (id)appDragLocalContextWithIconIdentifier:(id)identifier
{
  identifierCopy = identifier;
  appLocalContexts = self->_appLocalContexts;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__SBIconDragContext_appDragLocalContextWithIconIdentifier___block_invoke;
  v10[3] = &unk_1E808F288;
  v11 = identifierCopy;
  v6 = identifierCopy;
  v7 = [(NSMutableSet *)appLocalContexts objectsPassingTest:v10];
  anyObject = [v7 anyObject];

  return anyObject;
}

uint64_t __59__SBIconDragContext_appDragLocalContextWithIconIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)resetLastUserInteractionDate
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [(SBIconDragContext *)self setLastUserInteractionDate:v3];
}

- (void)setDestinationFolderIconView:(id)view forIconWithIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  destinationFolderIconViews = self->_destinationFolderIconViews;
  if (!destinationFolderIconViews)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_destinationFolderIconViews;
    self->_destinationFolderIconViews = v8;

    destinationFolderIconViews = self->_destinationFolderIconViews;
  }

  [(NSMutableDictionary *)destinationFolderIconViews setObject:viewCopy forKey:identifierCopy];
  [(SBIconDragContext *)self _addPrepareForDropAssertionForIconView:viewCopy];
}

- (void)setDestinationStackIconView:(id)view forIconWithIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  destinationStackIconViews = self->_destinationStackIconViews;
  if (!destinationStackIconViews)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_destinationStackIconViews;
    self->_destinationStackIconViews = v8;

    destinationStackIconViews = self->_destinationStackIconViews;
  }

  [(NSMutableDictionary *)destinationStackIconViews setObject:viewCopy forKey:identifierCopy];
  [(SBIconDragContext *)self _addPrepareForDropAssertionForIconView:viewCopy];
}

- (void)_addPrepareForDropAssertionForIconView:(id)view
{
  viewCopy = view;
  v4 = [(NSMapTable *)self->_iconViewPrepareForDropAssertions objectForKey:?];

  if (!v4)
  {
    iconViewPrepareForDropAssertions = self->_iconViewPrepareForDropAssertions;
    if (!iconViewPrepareForDropAssertions)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v7 = self->_iconViewPrepareForDropAssertions;
      self->_iconViewPrepareForDropAssertions = weakToStrongObjectsMapTable;

      iconViewPrepareForDropAssertions = self->_iconViewPrepareForDropAssertions;
    }

    prepareForIconDrop = [viewCopy prepareForIconDrop];
    [(NSMapTable *)iconViewPrepareForDropAssertions setObject:prepareForIconDrop forKey:viewCopy];
  }
}

- (void)clearDropAssertionsForIconView:(id)view
{
  v16 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = [(NSMapTable *)self->_iconViewPrepareForDropAssertions objectForKey:viewCopy];
  [v5 invalidate];
  [(NSMapTable *)self->_iconViewPrepareForDropAssertions removeObjectForKey:viewCopy];
  v6 = [(NSMapTable *)self->_iconViewDroppingAssertions objectForKey:viewCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        [*(*(&v11 + 1) + 8 * v10++) invalidate];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMapTable *)self->_iconViewDroppingAssertions removeObjectForKey:viewCopy];
}

- (void)clearAllDropAssertions
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  keyEnumerator = [(NSMapTable *)self->_iconViewPrepareForDropAssertions keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v5 = [allObjects copy];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SBIconDragContext *)self clearDropAssertionsForIconView:*(*(&v21 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  keyEnumerator2 = [(NSMapTable *)self->_iconViewDroppingAssertions keyEnumerator];
  allObjects2 = [keyEnumerator2 allObjects];
  v12 = [allObjects2 copy];

  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SBIconDragContext *)self clearDropAssertionsForIconView:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addDropAnimatingDragItem:(id)item
{
  itemCopy = item;
  dropAnimatingDragItems = self->_dropAnimatingDragItems;
  v8 = itemCopy;
  if (!dropAnimatingDragItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_dropAnimatingDragItems;
    self->_dropAnimatingDragItems = v6;

    itemCopy = v8;
    dropAnimatingDragItems = self->_dropAnimatingDragItems;
  }

  [(NSMutableSet *)dropAnimatingDragItems addObject:itemCopy];
}

- (id)initialIndexPathForIcon:(id)icon
{
  nodeIdentifier = [icon nodeIdentifier];
  v5 = [(SBIconDragContext *)self initialIndexPathForIconWithIdentifier:nodeIdentifier];

  return v5;
}

- (void)setInitialIndexPath:(id)path forIcon:(id)icon
{
  pathCopy = path;
  iconCopy = icon;
  initialIconPaths = self->_initialIconPaths;
  if (!initialIconPaths)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_initialIconPaths;
    self->_initialIconPaths = v8;

    initialIconPaths = self->_initialIconPaths;
  }

  nodeIdentifier = [iconCopy nodeIdentifier];
  [(NSMutableDictionary *)initialIconPaths setObject:pathCopy forKey:nodeIdentifier];
}

- (void)setAppDragLocalContext:(id)context forDragItem:(id)item
{
  contextCopy = context;
  itemCopy = item;
  [(SBIconDragContext *)self addAppLocalContext:contextCopy];
  appDragLocalContexts = self->_appDragLocalContexts;
  if (!appDragLocalContexts)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_appDragLocalContexts;
    self->_appDragLocalContexts = weakToStrongObjectsMapTable;

    appDragLocalContexts = self->_appDragLocalContexts;
  }

  [(NSMapTable *)appDragLocalContexts setObject:contextCopy forKey:itemCopy];
}

- (void)resetDraggedIconsHiddenAssertion
{
  draggedIconsHiddenAssertion = [(SBIconDragContext *)self draggedIconsHiddenAssertion];
  [draggedIconsHiddenAssertion invalidate];
  [(SBIconDragContext *)self setDraggedIconsHiddenAssertion:0];
}

- (void)resetDragPlaceholder
{
  dragPlaceholder = [(SBIconDragContext *)self dragPlaceholder];
  [dragPlaceholder invalidate];
  [(SBIconDragContext *)self setDragPlaceholder:0];
  [(SBIconDragContext *)self setDragPlaceholderListView:0];
  [(SBIconDragContext *)self setDragPlaceholderGridSizeClass:0];
}

- (NSString)dragPlaceholderGridSizeClass
{
  gridSizeClass = self->_dragPlaceholderGridSizeClass;
  if (!gridSizeClass)
  {
    draggedIcons = [(SBIconDragContext *)self draggedIcons];
    firstObject = [draggedIcons firstObject];
    gridSizeClass = [firstObject gridSizeClass];
  }

  return gridSizeClass;
}

- (void)setIconViewBorrowAssertion:(id)assertion forIconView:(id)view
{
  assertionCopy = assertion;
  viewCopy = view;
  iconViewBorrowAssertions = self->_iconViewBorrowAssertions;
  if (!iconViewBorrowAssertions)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_iconViewBorrowAssertions;
    self->_iconViewBorrowAssertions = weakToStrongObjectsMapTable;

    iconViewBorrowAssertions = self->_iconViewBorrowAssertions;
  }

  [(NSMapTable *)iconViewBorrowAssertions setObject:assertionCopy forKey:viewCopy];
}

- (void)invalidateIconViewBorrowAssertions
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_iconViewBorrowAssertions;
  iconViewBorrowAssertions = self->_iconViewBorrowAssertions;
  self->_iconViewBorrowAssertions = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)v5 objectForKey:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 invalidate];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setBorrowedViewController:(id)controller forIconView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  borrowedViewControllers = self->_borrowedViewControllers;
  if (!borrowedViewControllers)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v9 = self->_borrowedViewControllers;
    self->_borrowedViewControllers = weakToWeakObjectsMapTable;

    borrowedViewControllers = self->_borrowedViewControllers;
  }

  [(NSMapTable *)borrowedViewControllers setObject:controllerCopy forKey:viewCopy];
}

- (void)addDragScreenLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  velocityIntegrator = [(SBIconDragContext *)self velocityIntegrator];
  if (!velocityIntegrator)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DD7E8]);
    [v7 setMinimumRequiredMovement:0.0];
    [v7 setHysteresisTimeInterval:0.3];
    [(SBIconDragContext *)self setVelocityIntegrator:v7];
    velocityIntegrator = v7;
  }

  v8 = velocityIntegrator;
  [velocityIntegrator addSample:{x, y}];
}

- (CGVector)dragVelocity
{
  velocityIntegrator = [(SBIconDragContext *)self velocityIntegrator];
  [velocityIntegrator velocity];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.dy = v8;
  result.dx = v7;
  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconDragContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = SBStringForIconDragContextState([(SBIconDragContext *)self state]);
  v6 = [v4 appendObject:v5 withName:@"state"];

  v7 = [v4 appendObject:self->_draggedIconsHiddenAssertion withName:@"draggedIconsHiddenAssertion" skipIfNil:1];
  dragPlaceholder = self->_dragPlaceholder;
  if (dragPlaceholder)
  {
    v9 = [v4 appendObject:dragPlaceholder withName:@"dragPlaceholder"];
    v10 = [v4 appendObject:self->_dragPlaceholderListView withName:@"dragPlaceholderListView"];
    v11 = SBHStringForIconGridSizeClass(self->_dragPlaceholderGridSizeClass);
    [v4 appendString:v11 withName:@"dragPlaceholderGridSizeClass"];
  }

  v12 = [v4 appendObject:self->_grabbedIconViews withName:@"grabbedIconViews" skipIfNil:1];
  v13 = [v4 appendObject:self->_itemIdentifiers withName:@"itemIdentifiers" skipIfNil:1];
  v14 = [v4 appendObject:self->_sourceIcons withName:@"sourceIcons" skipIfNil:1];
  v15 = [v4 appendObject:self->_sourceIconViews withName:@"sourceIconViews" skipIfNil:1];
  v16 = [v4 appendObject:self->_primaryIconView withName:@"primaryIconView" skipIfNil:1];
  v17 = [v4 appendObject:self->_destinationIconViews withName:@"destinationIconViews" skipIfNil:1];
  v18 = [v4 appendBool:-[SBIconDragContext performedIconDrop](self withName:"performedIconDrop") ifEqualTo:{@"performedIconDrop", 1}];
  v19 = [v4 appendBool:-[SBIconDragContext isCancelled](self withName:"isCancelled") ifEqualTo:{@"cancelled", 1}];
  v20 = [v4 appendObject:self->_messageExpectations withName:@"messageExpectations" skipIfNil:1];
  v21 = [v4 appendObject:self->_enteredIconListViews withName:@"enteredIconListViews" skipIfNil:1];
  v22 = [v4 appendObject:self->_targetsForCancellingIconViews withName:@"targetsForCancellingIconViews" skipIfNil:1];
  v23 = [v4 appendObject:self->_recipientIconView withName:@"recipientIconView" skipIfNil:1];
  v24 = [v4 appendObject:self->_dragPreviewForIconViews withName:@"dragPreviewForIconViews" skipIfNil:1];
  v25 = [v4 appendObject:self->_appLocalContexts withName:@"appLocalContexts" skipIfNil:1];
  v26 = [v4 appendObject:self->_lastUserInteractionDate withName:@"lastUserInteractionDate" skipIfNil:1];
  v27 = [v4 appendObject:self->_destinationFolderIconViews withName:@"destinationFolderIconViews" skipIfNil:1];
  v28 = [v4 appendObject:self->_dropAnimatingDragItems withName:@"dropAnimatingDragItems" skipIfNil:1];
  v29 = [v4 appendBool:self->_notifiedDelegateForDropSession withName:@"notifiedDelegateForDropSession"];
  v30 = [v4 appendObject:self->_droppedIcons withName:@"droppedIcons" skipIfNil:1];
  v31 = [v4 appendBool:self->_dragItemWasConsumedExternally withName:@"dragItemWasConsumedExternally" ifEqualTo:1];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconDragContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (SBIconListView)currentEnteredIconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentEnteredIconListView);

  return WeakRetained;
}

- (CGPoint)currentEnteredIconListViewLastLocation
{
  x = self->_currentEnteredIconListViewLastLocation.x;
  y = self->_currentEnteredIconListViewLastLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)initialTouchOffsetFromIconImageCenter
{
  x = self->_initialTouchOffsetFromIconImageCenter.x;
  y = self->_initialTouchOffsetFromIconImageCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pauseLocation
{
  x = self->_pauseLocation.x;
  y = self->_pauseLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end