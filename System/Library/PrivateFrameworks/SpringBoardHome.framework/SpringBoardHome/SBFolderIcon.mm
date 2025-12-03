@interface SBFolderIcon
+ (id)iconsByExpandingFirstListOfFolderIconsInIcons:(id)icons;
- (BOOL)containsNodeIdentifier:(id)identifier;
- (BOOL)isFolderCancelable;
- (NSArray)leafIconsWithBadgesSortedByImportance;
- (NSString)description;
- (SBFolderIcon)initWithFolder:(id)folder;
- (SBFolderIcon)initWithFolderIcon:(id)icon copyFolder:(BOOL)folder;
- (SBFolderIcon)parentFolderIcon;
- (id)badgeNumberOrString;
- (id)containedNodeIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)iconAtListIndex:(unint64_t)index iconIndex:(unint64_t)iconIndex;
- (id)indexPathsForContainedNodeIdentifier:(id)identifier prefixPath:(id)path;
- (id)nodesAlongIndexPath:(id)path consumedIndexes:(unint64_t)indexes;
- (id)rootFolder;
- (unint64_t)listIndexForContainedIcon:(id)icon;
- (void)_adjustForIconsAdded:(id)added removed:(id)removed;
- (void)_containedIconAccessoriesDidUpdate:(id)update;
- (void)_containedIconImageChanged:(id)changed;
- (void)_containedIconLaunchEnabledDidUpdate:(id)update;
- (void)_performDelayedIconUpdates;
- (void)_setPropertiesFromIcon:(id)icon;
- (void)_updateBadgeValue;
- (void)_updateProgress;
- (void)addNodeObserver:(id)observer;
- (void)badgeBehaviorProviderDidChange:(id)change;
- (void)dealloc;
- (void)folder:(id)folder didAddList:(id)list;
- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes;
- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)iconAccessoriesDidUpdate:(id)update;
- (void)iconLaunchEnabledDidChange:(id)change;
- (void)invalidateUpdateIconRunLoopObserver;
- (void)localeChanged;
- (void)noteContainedIcon:(id)icon replacedIcon:(id)replacedIcon;
- (void)noteContainedIconsAdded:(id)added removed:(id)removed;
- (void)scheduleUpdateIconRunLoopObserver;
- (void)setFolderCancelable:(BOOL)cancelable;
@end

@implementation SBFolderIcon

- (void)scheduleUpdateIconRunLoopObserver
{
  if (!self->_updateIconRunLoopObserver && !self->_delayedIconUpdates)
  {
    objc_initWeak(&location, self);
    v3 = *MEMORY[0x1E695E480];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__SBFolderIcon_scheduleUpdateIconRunLoopObserver__block_invoke;
    v5[3] = &unk_1E8089DA0;
    objc_copyWeak(&v6, &location);
    self->_updateIconRunLoopObserver = CFRunLoopObserverCreateWithHandler(v3, 0xA0uLL, 0, 0, v5);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_updateIconRunLoopObserver, *MEMORY[0x1E695E8D0]);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updateProgress
{
  selfCopy = self;
  v39 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  folder = [(SBFolderIcon *)self folder];
  leafIcons = [folder leafIcons];

  v5 = [leafIcons countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v5)
  {

    goto LABEL_24;
  }

  v6 = v5;
  v26 = selfCopy;
  v7 = 0;
  v27 = 0;
  v28 = 0;
  v8 = *v31;
  v9 = 0.0;
  do
  {
    v10 = 0;
    v11 = sel_isFailed;
    do
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(leafIcons);
      }

      v12 = *(*(&v30 + 1) + 8 * v10);
      progressState = [v12 progressState];
      if ([v12 isApplicationIcon])
      {
        applicationPlaceholder = [v12 applicationPlaceholder];
        if (objc_opt_respondsToSelector())
        {
          [v12 applicationPlaceholder];
          v29 = v7;
          v15 = v6;
          v16 = v8;
          v17 = v11;
          v19 = v18 = leafIcons;
          isFailed = [v19 isFailed];

          leafIcons = v18;
          v11 = v17;
          v8 = v16;
          v6 = v15;
          v7 = v29;

          if (isFailed)
          {
            v21 = SBLogCommon();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              applicationPlaceholder2 = [v12 applicationPlaceholder];
              *buf = 136315394;
              v35 = "[SBFolderIcon _updateProgress]";
              v36 = 2114;
              v37 = applicationPlaceholder2;
              _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_INFO, "%s: Assumed app with placeholder was installed: %{public}@", buf, 0x16u);
            }

            v9 = v9 + 1.0;
            v7 = v29 + 1;
            v27 = 1;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      if (progressState == 2)
      {
        [v12 progressPercent];
        v9 = v9 + v24;
        ++v7;
        LODWORD(v28) = 1;
      }

      else if (progressState == 1)
      {
        [v12 progressPercent];
        v9 = v9 + v23;
        ++v7;
        HIDWORD(v28) = 1;
      }

LABEL_17:
      ++v10;
    }

    while (v6 != v10);
    v6 = [leafIcons countByEnumeratingWithState:&v30 objects:v38 count:16];
  }

  while (v6);

  selfCopy = v26;
  if (((v28 | HIDWORD(v28) & v27) & 1) == 0)
  {
LABEL_24:
    selfCopy->_progressState = 0;
    selfCopy->_progressPercent = 0.0;
    [(SBFolderIcon *)selfCopy _updateBadgeValue];
    goto LABEL_25;
  }

  v26->_progressState = 2;
  v25 = v9 / v7;
  if (v25 > 1.0)
  {
    v25 = 1.0;
  }

  v26->_progressPercent = v25;
LABEL_25:
  [(SBIcon *)selfCopy _notifyAccessoriesDidUpdate];
}

- (void)_updateBadgeValue
{
  folder = [(SBFolderIcon *)self folder];
  badge = [folder badge];
  [(SBIcon *)self setBadge:badge];
}

void __49__SBFolderIcon_scheduleUpdateIconRunLoopObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDelayedIconUpdates];
}

- (void)_performDelayedIconUpdates
{
  self->_delayedIconUpdates = 0;
  [(SBFolderIcon *)self invalidateUpdateIconRunLoopObserver];

  [(SBFolderIcon *)self _updateBadgeValue];
}

- (void)invalidateUpdateIconRunLoopObserver
{
  updateIconRunLoopObserver = self->_updateIconRunLoopObserver;
  if (updateIconRunLoopObserver)
  {
    CFRunLoopObserverInvalidate(updateIconRunLoopObserver);
    CFRelease(self->_updateIconRunLoopObserver);
    self->_updateIconRunLoopObserver = 0;
  }
}

- (id)badgeNumberOrString
{
  if (self->_delayedIconUpdates || self->_updateIconRunLoopObserver)
  {
    [(SBFolderIcon *)self _performDelayedIconUpdates];
  }

  v5.receiver = self;
  v5.super_class = SBFolderIcon;
  badgeNumberOrString = [(SBIcon *)&v5 badgeNumberOrString];

  return badgeNumberOrString;
}

- (SBFolderIcon)initWithFolder:(id)folder
{
  v26 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  v24.receiver = self;
  v24.super_class = SBFolderIcon;
  v6 = [(SBIcon *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_folder, folder);
    [(SBFolder *)v7->_folder setIcon:v7];
    [(SBFolder *)v7->_folder addFolderObserver:v7];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allIcons = [(SBFolder *)v7->_folder allIcons];
    v9 = [allIcons countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(allIcons);
          }

          [*(*(&v20 + 1) + 8 * v12++) addObserver:v7];
        }

        while (v10 != v12);
        v10 = [allIcons countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    nodeObservers = v7->_nodeObservers;
    v7->_nodeObservers = weakObjectsHashTable;

    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    uniqueIdentifier = [folderCopy uniqueIdentifier];
    v17 = [v15 initWithFormat:@"folder:%@", uniqueIdentifier];
    nodeIdentifier = v7->_nodeIdentifier;
    v7->_nodeIdentifier = v17;

    v7->_delayedIconUpdates = 1;
  }

  return v7;
}

- (SBFolderIcon)initWithFolderIcon:(id)icon copyFolder:(BOOL)folder
{
  iconCopy = icon;
  folder = [iconCopy folder];
  v8 = folder;
  if (folder)
  {
    v9 = [folder copy];
  }

  else
  {
    v9 = folder;
  }

  v10 = v9;
  v11 = [(SBFolderIcon *)self initWithFolder:v9];
  v12 = v11;
  if (v11)
  {
    [(SBFolderIcon *)v11 _setPropertiesFromIcon:iconCopy];
  }

  return v12;
}

- (void)dealloc
{
  [(SBFolderIcon *)self invalidateUpdateIconRunLoopObserver];
  v3.receiver = self;
  v3.super_class = SBFolderIcon;
  [(SBFolderIcon *)&v3 dealloc];
}

- (id)rootFolder
{
  folder = [(SBFolderIcon *)self folder];
  rootFolder = [folder rootFolder];

  return rootFolder;
}

- (void)localeChanged
{
  v3.receiver = self;
  v3.super_class = SBFolderIcon;
  [(SBIcon *)&v3 localeChanged];
  [(SBFolderIcon *)self _updateBadgeValue];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SBFolderIcon;
  v4 = [(SBIcon *)&v8 description];
  v5 = [(SBFolder *)self->_folder description];
  v6 = [v3 stringWithFormat:@"%@ Folder: %@", v4, v5];

  return v6;
}

- (void)_adjustForIconsAdded:(id)added removed:(id)removed
{
  v23 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  removedCopy = removed;
  v8 = [MEMORY[0x1E695DFA8] setWithSet:addedCopy];
  [v8 removeObject:self];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__SBFolderIcon__adjustForIconsAdded_removed___block_invoke;
  v21[3] = &unk_1E8089B48;
  v21[4] = self;
  [removedCopy enumerateObjectsUsingBlock:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __45__SBFolderIcon__adjustForIconsAdded_removed___block_invoke_2;
  v20[3] = &unk_1E8089B48;
  v20[4] = self;
  [v8 enumerateObjectsUsingBlock:v20];
  if (addedCopy)
  {
    v9 = [addedCopy setByAddingObjectsFromSet:removedCopy];
  }

  else
  {
    v9 = removedCopy;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 isApplicationIcon] && (objc_msgSend(v15, "hasApplicationPlaceholder") & 1) != 0)
        {

          [(SBFolderIcon *)self _updateProgress];
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
  [(SBFolderIcon *)self _updateBadgeValue];
}

- (void)noteContainedIconsAdded:(id)added removed:(id)removed
{
  removedCopy = removed;
  addedCopy = added;
  [(SBFolderIcon *)self _adjustForIconsAdded:addedCopy removed:removedCopy];
  v7 = [addedCopy count];

  if (v7 || [removedCopy count])
  {
    [(SBIcon *)self reloadIconImage];
  }
}

- (void)noteContainedIcon:(id)icon replacedIcon:(id)replacedIcon
{
  v6 = MEMORY[0x1E695DFD8];
  replacedIconCopy = replacedIcon;
  iconCopy = icon;
  v8 = [v6 setWithObject:iconCopy];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:replacedIconCopy];

  [(SBFolderIcon *)self _adjustForIconsAdded:v8 removed:v9];
  [(SBFolderIcon *)self _containedIconImageChanged:iconCopy];
}

- (void)_containedIconImageChanged:(id)changed
{
  changedCopy = changed;
  if ([(SBFolderIcon *)self listIndexForContainedIcon:changedCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__SBFolderIcon__containedIconImageChanged___block_invoke;
    v5[3] = &unk_1E808EC48;
    v5[4] = self;
    v6 = changedCopy;
    [(SBIcon *)self enumerateObserversUsingBlock:v5];
  }
}

void __43__SBFolderIcon__containedIconImageChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 folderIcon:*(a1 + 32) containedIconImageDidUpdate:*(a1 + 40)];
  }
}

- (void)_containedIconAccessoriesDidUpdate:(id)update
{
  updateCopy = update;
  if ([(SBFolderIcon *)self listIndexForContainedIcon:updateCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __51__SBFolderIcon__containedIconAccessoriesDidUpdate___block_invoke;
    v8 = &unk_1E808EC48;
    selfCopy = self;
    v10 = updateCopy;
    [(SBIcon *)self enumerateObserversUsingBlock:&v5];
    [(SBIcon *)self _notifyAccessoriesDidUpdate:v5];
  }
}

void __51__SBFolderIcon__containedIconAccessoriesDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 folderIcon:*(a1 + 32) containedIconAccessoriesDidUpdate:*(a1 + 40)];
  }
}

- (void)_containedIconLaunchEnabledDidUpdate:(id)update
{
  updateCopy = update;
  if ([(SBFolderIcon *)self listIndexForContainedIcon:updateCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__SBFolderIcon__containedIconLaunchEnabledDidUpdate___block_invoke;
    v5[3] = &unk_1E808EC48;
    v5[4] = self;
    v6 = updateCopy;
    [(SBIcon *)self enumerateObserversUsingBlock:v5];
  }
}

void __53__SBFolderIcon__containedIconLaunchEnabledDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 folderIcon:*(a1 + 32) containedIconLaunchEnabledDidChange:*(a1 + 40)];
  }
}

- (void)badgeBehaviorProviderDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  [(SBFolderIcon *)self _updateBadgeValue];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  folder = [(SBFolderIcon *)self folder];
  allIcons = [folder allIcons];

  v7 = [allIcons countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allIcons);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 isFolderIcon])
        {
          [v11 badgeBehaviorProviderDidChange:changeCopy];
        }
      }

      v8 = [allIcons countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (NSArray)leafIconsWithBadgesSortedByImportance
{
  folder = [(SBFolderIcon *)self folder];
  effectiveBadgeBehaviorProvider = [folder effectiveBadgeBehaviorProvider];
  if (effectiveBadgeBehaviorProvider && ([folder isEmpty] & 1) == 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__SBFolderIcon_leafIconsWithBadgesSortedByImportance__block_invoke;
    v13[3] = &unk_1E808D9B0;
    v14 = effectiveBadgeBehaviorProvider;
    v6 = v5;
    v15 = v6;
    [folder enumerateAllIconsUsingBlock:v13];
    if ([v6 count])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __53__SBFolderIcon_leafIconsWithBadgesSortedByImportance__block_invoke_3;
      v11[3] = &unk_1E808EC90;
      v12 = &__block_literal_global_59;
      v7 = [MEMORY[0x1E695E0F0] indexesOfObjectsPassingTest:v11];
      [v6 removeObjectsAtIndexes:v7];

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__SBFolderIcon_leafIconsWithBadgesSortedByImportance__block_invoke_4;
      v9[3] = &unk_1E808ECB8;
      v10 = &__block_literal_global_59;
      [v6 sortUsingComparator:v9];
    }

    v4 = [v6 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void __53__SBFolderIcon_leafIconsWithBadgesSortedByImportance__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) allowsBadgingForIcon:?])
  {
    if ([v4 isLeafIcon])
    {
      v3 = [v4 badgeNumberOrString];

      if (v3)
      {
        [*(a1 + 40) addObject:v4];
      }
    }
  }
}

uint64_t __53__SBFolderIcon_leafIconsWithBadgesSortedByImportance__block_invoke_2(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = [a2 badgeNumberOrString];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 isEqualToString:@"!"])
      {
        v3 = -1;
      }

      else
      {
        v3 = [v2 integerValue];
        if (v3 >= 1)
        {
          [v2 rangeOfString:@"+"];
          if (v4)
          {
            ++v3;
          }
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t __53__SBFolderIcon_leafIconsWithBadgesSortedByImportance__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  v8 = (*(*(a1 + 32) + 16))();
  if (v7 >= v8)
  {
    if (v7 > v8)
    {
      v9 = -1;
    }

    else
    {
      v10 = [v5 displayName];
      v11 = [v6 displayName];
      v9 = [v10 localizedStandardCompare:v11];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isFolderCancelable
{
  folder = [(SBFolderIcon *)self folder];
  isCancelable = [folder isCancelable];

  return isCancelable;
}

- (void)setFolderCancelable:(BOOL)cancelable
{
  cancelableCopy = cancelable;
  folder = [(SBFolderIcon *)self folder];
  [folder setCancelable:cancelableCopy];
}

+ (id)iconsByExpandingFirstListOfFolderIconsInIcons:(id)icons
{
  v20 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = iconsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isFolderIcon])
        {
          folder = [v10 folder];
          firstList = [folder firstList];
          icons = [firstList icons];
          [v4 addObjectsFromArray:icons];
        }

        else
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (unint64_t)listIndexForContainedIcon:(id)icon
{
  v21 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  folder = [(SBFolderIcon *)self folder];
  lists = [folder lists];

  v7 = [lists countByEnumeratingWithState:&v16 objects:v20 count:16];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(lists);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 indexForIcon:iconCopy] != 0x7FFFFFFFFFFFFFFFLL)
        {
          folder2 = [(SBFolderIcon *)self folder];
          lists2 = [folder2 lists];
          v8 = [lists2 indexOfObject:v12];

          goto LABEL_11;
        }
      }

      v9 = [lists countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:

  return v8;
}

- (id)iconAtListIndex:(unint64_t)index iconIndex:(unint64_t)iconIndex
{
  folder = [(SBFolderIcon *)self folder];
  v7 = [folder listAtIndex:index];
  v8 = [v7 iconAtIndex:iconIndex];

  return v8;
}

- (void)iconAccessoriesDidUpdate:(id)update
{
  updateCopy = update;
  [(SBFolderIcon *)self scheduleUpdateIconRunLoopObserver];
  [(SBFolderIcon *)self _containedIconAccessoriesDidUpdate:updateCopy];
}

- (void)iconLaunchEnabledDidChange:(id)change
{
  changeCopy = change;
  folder = [(SBFolderIcon *)self folder];
  v5 = [folder containsIcon:changeCopy];

  if (v5)
  {
    [(SBFolderIcon *)self _containedIconImageChanged:changeCopy];
    [(SBFolderIcon *)self _containedIconLaunchEnabledDidUpdate:changeCopy];
  }
}

- (BOOL)containsNodeIdentifier:(id)identifier
{
  v3 = [(SBFolder *)self->_folder iconWithIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)containedNodeIdentifiers
{
  v2 = MEMORY[0x1E695DFA8];
  lists = [(SBFolder *)self->_folder lists];
  v4 = [lists bs_map:&__block_literal_global_40_0];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)indexPathsForContainedNodeIdentifier:(id)identifier prefixPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  nodeIdentifier = [(SBFolderIcon *)self nodeIdentifier];
  v9 = [nodeIdentifier isEqual:identifierCopy];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFA8] setWithObject:pathCopy];
  }

  else
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    folder = self->_folder;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__SBFolderIcon_indexPathsForContainedNodeIdentifier_prefixPath___block_invoke;
    v16[3] = &unk_1E808ED00;
    v17 = identifierCopy;
    v18 = pathCopy;
    v13 = v11;
    v19 = v13;
    [(SBFolder *)folder enumerateListsUsingBlock:v16];
    v14 = v19;
    v10 = v13;
  }

  return v10;
}

void __64__SBFolderIcon_indexPathsForContainedNodeIdentifier_prefixPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if ([v8 containsNodeIdentifier:*(a1 + 32)])
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) indexPathByAddingIndex:a3];
    v7 = [v8 indexPathsForContainedNodeIdentifier:v5 prefixPath:v6];
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 48) unionSet:v7];
}

- (id)nodesAlongIndexPath:(id)path consumedIndexes:(unint64_t)indexes
{
  pathCopy = path;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  if ([pathCopy length] > indexes)
  {
    v7 = [pathCopy indexAtPosition:indexes];
    folder = self->_folder;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__SBFolderIcon_nodesAlongIndexPath_consumedIndexes___block_invoke;
    v12[3] = &unk_1E808ED28;
    v16 = v7;
    v13 = pathCopy;
    selfCopy = self;
    indexesCopy = indexes;
    v15 = &v18;
    [(SBFolder *)folder enumerateListsUsingBlock:v12];
    v9 = v19[5];
    if (v9)
    {
      array = v9;

      goto LABEL_6;
    }
  }

  array = [MEMORY[0x1E695DF70] array];
LABEL_6:
  _Block_object_dispose(&v18, 8);

  return array;
}

void __52__SBFolderIcon_nodesAlongIndexPath_consumedIndexes___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a1[7] == a3)
  {
    v6 = [a2 nodesAlongIndexPath:a1[4] consumedIndexes:a1[8] + 1];
    [v6 insertObject:a1[5] atIndex:0];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (void)addNodeObserver:(id)observer
{
  observerCopy = observer;
  if (![(NSHashTable *)self->_nodeObservers containsObject:?])
  {
    [(NSHashTable *)self->_nodeObservers addObject:observerCopy];
  }
}

- (void)folder:(id)folder didAddList:(id)list
{
  v19 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (![folder indexOfList:listCopy])
  {
    [(SBIcon *)self reloadIconImage];
  }

  v7 = [(NSHashTable *)self->_nodeObservers copy];
  containedNodeIdentifiers = [listCopy containedNodeIdentifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) node:self didAddContainedNodeIdentifiers:{containedNodeIdentifiers, v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes
{
  v31 = *MEMORY[0x1E69E9840];
  listsCopy = lists;
  if ([indexes containsIndex:0])
  {
    [(SBIcon *)self reloadIconImage];
  }

  v8 = [(NSHashTable *)self->_nodeObservers copy];
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = listsCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        containedNodeIdentifiers = [*(*(&v25 + 1) + 8 * v14) containedNodeIdentifiers];
        [v9 unionSet:containedNodeIdentifiers];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * v20++) node:self didRemoveContainedNodeIdentifiers:{v9, v21}];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }
}

- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  v23 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  withIconCopy = withIcon;
  [(SBIcon *)self reloadIconImage];
  v9 = [(NSHashTable *)self->_nodeObservers copy];
  containedNodeIdentifiers = [withIconCopy containedNodeIdentifiers];
  containedNodeIdentifiers2 = [iconCopy containedNodeIdentifiers];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        [v17 node:self didRemoveContainedNodeIdentifiers:{containedNodeIdentifiers2, v18}];
        [v17 node:self didAddContainedNodeIdentifiers:containedNodeIdentifiers];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (SBFolderIcon)parentFolderIcon
{
  folder = [(SBFolderIcon *)self folder];
  parentFolder = [folder parentFolder];
  icon = [parentFolder icon];

  return icon;
}

- (void)_setPropertiesFromIcon:(id)icon
{
  iconCopy = icon;
  v8.receiver = self;
  v8.super_class = SBFolderIcon;
  [(SBIcon *)&v8 _setPropertiesFromIcon:iconCopy];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    self->_progressState = *(iconCopy + 14);
    self->_progressPercent = *(iconCopy + 15);
    if ((*(iconCopy + 136) & 1) == 0)
    {
      badgeNumberOrString = [iconCopy badgeNumberOrString];
      [(SBIcon *)self setBadge:badgeNumberOrString];

      self->_delayedIconUpdates = 0;
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithFolderIcon:self copyFolder:1];
}

@end