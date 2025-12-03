@interface SBFolder
- (BOOL)canAddIcon;
- (BOOL)canAddIcon:(id)icon;
- (BOOL)canAddIconCount:(int64_t)count;
- (BOOL)canAddIcons:(id)icons startingAtList:(id)list;
- (BOOL)canBounceIcon:(id)icon;
- (BOOL)compactAllLists;
- (BOOL)compactLists;
- (BOOL)containsIcon:(id)icon;
- (BOOL)containsIconPassingTest:(id)test;
- (BOOL)containsIconWithIdentifier:(id)identifier;
- (BOOL)containsNonDefaultSizedIcon;
- (BOOL)containsOneIcon;
- (BOOL)containsVisibleNonDefaultSizedIcon;
- (BOOL)containsVisibleWidgetIcon;
- (BOOL)containsWidgetIcon;
- (BOOL)containsWidgetWithExtensionBundleIdentifier:(id)identifier;
- (BOOL)hasFixedIconLocations;
- (BOOL)hasHiddenLists;
- (BOOL)hasMultipleVisibleLists;
- (BOOL)hasMultipleVisibleListsExcludingTrailingEmptyLists;
- (BOOL)hasVisibleLists;
- (BOOL)iconListModel:(id)model isAllowedToContainIcon:(id)icon;
- (BOOL)iconListModel:(id)model isGridLayoutValid:(id)valid;
- (BOOL)isAllowedToContainIcon:(id)icon;
- (BOOL)isAllowedToContainIcons:(id)icons;
- (BOOL)isEmpty;
- (BOOL)isExtraList:(id)list;
- (BOOL)isFull;
- (BOOL)isIconStateDirty;
- (BOOL)isRootFolder;
- (BOOL)isTrailingEmptyList:(id)list;
- (BOOL)isTrailingEmptyListIndex:(int64_t)index;
- (BOOL)isValidIndexPath:(id)path;
- (BOOL)isValidIndexPath:(id)path forInsertion:(BOOL)insertion;
- (BOOL)isValidListIndex:(int64_t)index;
- (BOOL)isVisibleListIndex:(int64_t)index;
- (BOOL)replaceIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options;
- (Class)listModelClass;
- (NSArray)lists;
- (NSArray)treeChildren;
- (NSIndexPath)_indexPathToRevealForJiggleMode;
- (NSString)badge;
- (NSString)defaultDisplayName;
- (NSString)description;
- (NSString)recursiveDescription;
- (SBFolder)init;
- (SBFolder)initWithDisplayName:(id)name maxListCount:(int64_t)count listGridSize:(SBHIconGridSize)size;
- (SBFolder)initWithDisplayName:(id)name maxListCount:(int64_t)count maxIconCountInLists:(int64_t)lists;
- (SBFolder)initWithUniqueIdentifier:(id)identifier displayName:(id)name maxListCount:(int64_t)count listGridSize:(SBHIconGridSize)size;
- (SBFolder)initWithUniqueIdentifier:(id)identifier displayName:(id)name maxListCount:(int64_t)count listGridSize:(SBHIconGridSize)size iconGridSizeClassSizes:(id)sizes;
- (SBFolder)parentFolder;
- (SBFolder)rootFolder;
- (SBFolderIcon)icon;
- (SBHIconBadgeBehaviorProviding)badgeBehaviorProvider;
- (SBHIconBadgeBehaviorProviding)effectiveBadgeBehaviorProvider;
- (SBHIconGridSizeClassDomain)effectiveGridSizeClassDomain;
- (SBIcon)firstIcon;
- (SBIconListModel)firstList;
- (SBIconListModel)lastList;
- (SBIconListModel)leastRecentlyHiddenList;
- (SBIconListModel)mostRecentlyHiddenList;
- (SBTreeNode)treeParent;
- (id)addEmptyList;
- (id)addEmptyListRemovingLeastRecentlyHiddenListIfNecessary;
- (id)addIcon:(id)icon;
- (id)addIcon:(id)icon options:(unint64_t)options;
- (id)addIcon:(id)icon toList:(id)list options:(unint64_t)options;
- (id)addIcon:(id)icon toListAtIndex:(int64_t)index options:(unint64_t)options;
- (id)addIcon:(id)icon toListAtIndex:(int64_t)index options:(unint64_t)options didBump:(BOOL *)bump;
- (id)addIcons:(id)icons;
- (id)addIcons:(id)icons options:(unint64_t)options;
- (id)addListWithIcon:(id)icon;
- (id)addListWithIcons:(id)icons;
- (id)addListWithIcons:(id)icons removingHiddenListsIfNecessary:(BOOL)necessary;
- (id)applicationIconsWithBundleIdentifier:(id)identifier;
- (id)changeGridSizeClassOfIconAtGridPath:(id)path toGridSizeClass:(id)class options:(unint64_t)options;
- (id)changeGridSizeClassOfIconAtIndexPath:(id)path toGridSizeClass:(id)class options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions;
- (id)changeGridSizeOfList:(id)list toGridSize:(SBHIconGridSize)size options:(unint64_t)options;
- (id)changeGridSizeOfListAtIndex:(int64_t)index toGridSize:(SBHIconGridSize)size options:(unint64_t)options;
- (id)copyWithOptions:(unint64_t)options;
- (id)copyWithZone:(void *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)firstFolderWithUniqueIdentifier:(id)identifier displayName:(id)name defaultDisplayName:(id)displayName;
- (id)folderContainingIndexPath:(id)path;
- (id)gridPathForFirstFreeSlotAvoidingFirstList:(BOOL)list listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathForFirstFreeSlotOfRangeOfSizeClass:(id)class avoidingFirstList:(BOOL)list listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathForFirstFreeSlotOfRangeOfSizeClass:(id)class startingAtList:(id)list listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathForFirstFreeSlotStartingAtList:(id)list avoidingFirstList:(BOOL)firstList listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathForIcon:(id)icon listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathForIndexPath:(id)path listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathForRelativePath:(id)path;
- (id)gridPathWithList:(id)list gridCellIndex:(int64_t)index listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathWithListAtIndex:(int64_t)index gridCellIndex:(int64_t)cellIndex listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathWithListAtIndexPath:(id)path gridCellIndex:(int64_t)index listGridCellInfoOptions:(unint64_t)options;
- (id)gridPathsForIndexPaths:(id)paths listGridCellInfoOptions:(unint64_t)options;
- (id)handleBumpedIcons:(id)icons afterInsertingIconIntoListAtIndex:(int64_t)index listGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)iconAtGridPath:(id)path;
- (id)iconListModel:(id)model shouldBounceIcon:(id)icon afterInsertingIcons:(id)icons;
- (id)iconsOfClass:(Class)class;
- (id)iconsPassingTest:(id)test;
- (id)indexPathForFirstFreeSlotAvoidingFirstList:(BOOL)list;
- (id)indexPathForFirstFreeSlotStartingAtList:(id)list avoidingFirstList:(BOOL)firstList;
- (id)indexPathForIcon:(id)icon;
- (id)indexPathForIconWithIdentifier:(id)identifier;
- (id)indexPathForNodeIdentifier:(id)identifier;
- (id)indexesOfListsPassingTest:(id)test;
- (id)insertEmptyListAtIndex:(int64_t)index;
- (id)insertIcon:(id)icon atGridPath:(id)path options:(unint64_t)options;
- (id)insertIcon:(id)icon atIndexPath:(id)path options:(unint64_t)options;
- (id)insertIcons:(id)icons atGridPath:(id)path options:(unint64_t)options;
- (id)insertIcons:(id)icons atIndexPath:(id)path options:(unint64_t)options;
- (id)listAtGridPath:(id)path;
- (id)listAtIndex:(int64_t)index;
- (id)listAtVisibleIndex:(int64_t)index;
- (id)listContainingIcon:(id)icon;
- (id)listWithIdentifier:(id)identifier inFolderWithIdentifier:(id)withIdentifier;
- (id)makeNewList;
- (id)makeNewListWithIcon:(id)icon;
- (id)makeNewListWithIcons:(id)icons;
- (id)miniGridViewForListIndex:(unint64_t)index gridSize:(SBHIconGridSize)size iconImageInfo:(SBIconImageInfo *)info cellSpacing:(CGSize)spacing imageAppearance:(id)appearance options:(unint64_t)options cellProvider:(id)provider;
- (id)miniGridViewForListIndex:(unint64_t)index listLayout:(id)layout imageAppearance:(id)appearance options:(unint64_t)options cellProvider:(id)provider;
- (id)miniGridViewForListIndex:(unint64_t)index listLayout:(id)layout traitCollection:(id)collection options:(unint64_t)options;
- (id)objectWithUniqueIdentifier:(id)identifier;
- (id)prependIcon:(id)icon options:(unint64_t)options;
- (id)relativePathForIcon:(id)icon listGridCellInfoOptions:(unint64_t)options;
- (id)replaceIcon:(id)icon withIcons:(id)icons options:(unint64_t)options;
- (id)replaceIcon:(id)icon withIcons:(id)icons options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions;
- (id)replaceLayoutOfListAtIndex:(int64_t)index withGridCellInfo:(id)info options:(unint64_t)options;
- (id)resolvedComponentsForUniqueIdentifierPath:(id)path;
- (id)setListsFromFolder:(id)folder;
- (id)startCoalescingContentChangesForReason:(id)reason;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)validatedGridPathForInsertionGridPath:(id)path avoidingFirstList:(BOOL)list;
- (id)validatedIndexPathForInsertionIndexPath:(id)path avoidingFirstList:(BOOL)list;
- (int64_t)firstIndexOfListPassingTest:(id)test;
- (int64_t)firstVisibleListIndex;
- (int64_t)hiddenIndexOfList:(id)list;
- (int64_t)hiddenListCount;
- (int64_t)iconCount;
- (int64_t)indexOfList:(id)list;
- (int64_t)indexOfListContainingIcon:(id)icon;
- (int64_t)indexOfListWithIdentifier:(id)identifier;
- (int64_t)lastVisibleListIndex;
- (int64_t)listCount;
- (int64_t)nextListIndexAfterIndex:(int64_t)index;
- (int64_t)nextVisibleListIndexAfterIndex:(int64_t)index;
- (int64_t)precedingListIndexBeforeIndex:(int64_t)index;
- (int64_t)precedingVisibleListIndexBeforeIndex:(int64_t)index;
- (int64_t)trailingEmptyListCount;
- (int64_t)visibleIconCount;
- (int64_t)visibleIndexOfList:(id)list;
- (int64_t)visibleListCount;
- (int64_t)visibleWidgetIconCount;
- (void)_addList:(id)list;
- (void)_didAddList:(id)list informObservers:(BOOL)observers;
- (void)_didRemoveList:(id)list atIndex:(int64_t)index informObservers:(BOOL)observers;
- (void)_setLists:(id)lists;
- (void)_swapInsertIcons:(id)icons atIndexPaths:(id)paths;
- (void)_swapRestoreIconCount:(int64_t)count toLocation:(id)location;
- (void)_willRemoveList:(id)list atIndex:(int64_t)index informObservers:(BOOL)observers;
- (void)addIconsOfClass:(Class)class toSet:(id)set;
- (void)addIconsPassingTest:(id)test toSet:(id)set;
- (void)compactOverflowLists;
- (void)compactOverflowListsAndRemoveEmptyLists:(BOOL)lists;
- (void)compactOverflowListsWithoutMovingIconsPassingTest:(id)test;
- (void)enumerateAllIconsUsingBlock:(id)block;
- (void)enumerateAllIconsWithBaseIndexPath:(id)path options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateAllIconsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateListsNearestToList:(id)list usingBlock:(id)block;
- (void)enumerateListsUsingBlock:(id)block;
- (void)enumerateListsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons;
- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)iconList:(id)list didAddIcon:(id)icon;
- (void)iconList:(id)list didInvalidateLayoutWithGridCellInfoOptions:(unint64_t)options;
- (void)iconList:(id)list didMoveIcon:(id)icon;
- (void)iconList:(id)list didRemoveIcon:(id)icon;
- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)iconList:(void *)list willAddIcon:(void *)icon;
- (void)iconListHiddenDidChange:(id)change;
- (void)iconListHiddenWillChange:(id)change;
- (void)markIconStateClean;
- (void)markIconStateDirty;
- (void)moveListAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)pruneEmptyFolders;
- (void)removeAllLists;
- (void)removeHiddenLists;
- (void)removeIcon:(id)icon options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions;
- (void)removeIcons:(id)icons options:(unint64_t)options;
- (void)removeIcons:(id)icons options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions;
- (void)removeLastList;
- (void)removeLeastRecentlyHiddenList;
- (void)removeList:(id)list;
- (void)removeListAtIndex:(int64_t)index;
- (void)removeListsAtIndexes:(id)indexes;
- (void)replaceIconAtGridPath:(id)path withIcon:(id)icon options:(unint64_t)options;
- (void)setBadgeBehaviorProvider:(id)provider;
- (void)setCancelable:(BOOL)cancelable;
- (void)setDefaultDisplayName:(id)name;
- (void)setDisplayName:(id)name;
- (void)setListAllowedGridSizeClasses:(id)classes;
- (void)setListRotatedLayoutClusterGridSizeClass:(id)class;
- (void)setListWithNonDefaultSizedIconsGridSize:(SBHIconGridSize)size;
- (void)setListsAllowIndependentRotatedLayout:(BOOL)layout;
- (void)setListsAllowRotatedLayout:(BOOL)layout;
- (void)setListsFixedIconLocationBehavior:(int64_t)behavior;
- (void)setListsIconDisplacementBehavior:(int64_t)behavior;
- (void)setListsIconLayoutBehavior:(unint64_t)behavior;
- (void)swapIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options;
@end

@implementation SBFolder

- (NSArray)lists
{
  swift_beginAccess();
  sub_1BEB20D28(0, &qword_1EBDBFF10);

  v2 = sub_1BEE4719C();

  return v2;
}

- (BOOL)containsIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  LOBYTE(self) = sub_1BEB3055C(iconCopy);

  return self & 1;
}

- (void)enumerateAllIconsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v6 = _Block_copy(block);
  v8[2] = v6;
  selfCopy = self;
  sub_1BEB30868(options, sub_1BEDFBDF4, v8);
  _Block_release(v6);
}

- (void)enumerateAllIconsWithBaseIndexPath:(id)path options:(unint64_t)options usingBlock:(id)block
{
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _Block_copy(block);
  sub_1BEE4697C();
  v15 = v12;
  selfCopy = self;
  sub_1BEB3102C(v11, options, sub_1BEB31FD0, v14);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (NSString)badge
{
  selfCopy = self;
  sub_1BEB3308C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1BEE4705C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBFolder)rootFolder
{
  selfCopy = self;
  parentFolder = [(SBFolder *)selfCopy parentFolder];
  v4 = selfCopy;
  if (parentFolder)
  {
    v5 = selfCopy;
    do
    {
      v4 = parentFolder;

      parentFolder = [(SBFolder *)v4 parentFolder];
      v5 = v4;
    }

    while (parentFolder);
  }

  return v4;
}

- (SBFolder)parentFolder
{
  selfCopy = self;
  v3 = sub_1BEB334F4();

  return v3;
}

- (SBTreeNode)treeParent
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SBHIconGridSizeClassDomain)effectiveGridSizeClassDomain
{
  selfCopy = self;
  gridSizeClassDomain = [(SBFolder *)selfCopy gridSizeClassDomain];
  if (!gridSizeClassDomain)
  {
    gridSizeClassDomain = [objc_opt_self() globalDomain];
  }

  return gridSizeClassDomain;
}

- (BOOL)hasVisibleLists
{
  selfCopy = self;
  v3 = sub_1BEB36E2C();

  return v3 & 1;
}

- (id)indexPathForIconWithIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_1BEE4708C();
  v9 = v8;
  v10 = sub_1BEE469DC();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v6, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BEDFB8A4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_450;
  v14 = _Block_copy(aBlock);
  selfCopy = self;

  [(SBFolder *)selfCopy enumerateListsWithOptions:1 usingBlock:v14];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      v17 = 0;
    }

    else
    {
      v18 = sub_1BEE4696C();
      (*(v11 + 8))(v6, v10);
      v17 = v18;
    }

    return v17;
  }

  return result;
}

- (id)indexPathForIcon:(id)icon
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  iconCopy = icon;
  selfCopy = self;
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  if (!uniqueIdentifier)
  {
    sub_1BEE4708C();
    uniqueIdentifier = sub_1BEE4705C();
  }

  v11 = [(SBFolder *)selfCopy indexPathForIconWithIdentifier:uniqueIdentifier];

  if (v11)
  {
    sub_1BEE4697C();

    v12 = sub_1BEE469DC();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  }

  else
  {
    v12 = sub_1BEE469DC();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  sub_1BEE469DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1BEE4696C();
    (*(v13 + 8))(v7, v12);
    v15 = v16;
  }

  return v15;
}

- (void)enumerateAllIconsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  v8[2] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BEDFBDF4;
  *(v5 + 24) = v8;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_281;
  v6 = _Block_copy(aBlock);
  selfCopy = self;

  [(SBFolder *)selfCopy enumerateAllIconsWithOptions:0 usingBlock:v6];

  _Block_release(v6);
  LOBYTE(selfCopy) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v4);
  if (selfCopy)
  {
    __break(1u);
  }
}

- (SBFolderIcon)icon
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)compactOverflowLists
{
  selfCopy = self;
  sub_1BEB520B4();
}

- (id)startCoalescingContentChangesForReason:(id)reason
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1BEB51780(v4, v6);

  return v8;
}

- (BOOL)compactLists
{
  selfCopy = self;
  v3 = sub_1BEE4705C();
  v4 = [(SBFolder *)selfCopy startCoalescingContentChangesForReason:v3];

  [(SBFolder *)selfCopy compactOverflowLists];
  LOBYTE(v3) = sub_1BEB53078([(SBFolder *)selfCopy compactsFirstList]);
  [v4 invalidate];

  swift_unknownObjectRelease();
  return v3 & 1;
}

- (void)markIconStateDirty
{
  v2 = *(self + OBJC_IVAR___SBFolder__isIconStateDirty);
  *(self + OBJC_IVAR___SBFolder__isIconStateDirty) = 1;
  selfCopy = self;
  sub_1BEB53D74(v2);
}

- (SBIconListModel)firstList
{
  selfCopy = self;
  lists = [(SBFolder *)selfCopy lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();

  if (v4 >> 62)
  {
    result = sub_1BEE474CC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1BFB4EA90](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
LABEL_9:

  return v7;
}

- (void)iconList:(void *)list willAddIcon:(void *)icon
{
  listCopy = list;
  iconCopy = icon;
  selfCopy = self;
  sub_1BEDFAAB8(iconCopy, &selRef_folder_willAddIcon_);
}

- (id)miniGridViewForListIndex:(unint64_t)index gridSize:(SBHIconGridSize)size iconImageInfo:(SBIconImageInfo *)info cellSpacing:(CGSize)spacing imageAppearance:(id)appearance options:(unint64_t)options cellProvider:(id)provider
{
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  height = spacing.height;
  width = spacing.width;
  optionsCopy = options;
  infoCopy = info;
  v25 = [(SBFolder *)self listAtIndex:index];
  v26 = [v25 miniGridViewWithIconImageInfo:infoCopy cellSpacing:appearance imageAppearance:optionsCopy options:width cellProvider:{height, v18, v17, v16, v15}];

  return v26;
}

- (id)miniGridViewForListIndex:(unint64_t)index listLayout:(id)layout traitCollection:(id)collection options:(unint64_t)options
{
  v10 = MEMORY[0x1E69DD1B8];
  layoutCopy = layout;
  v12 = [v10 sbh_iconImageAppearanceFromTraitCollection:collection];
  v13 = [(SBFolder *)self miniGridViewForListIndex:index listLayout:layoutCopy imageAppearance:v12 options:options];

  return v13;
}

- (id)miniGridViewForListIndex:(unint64_t)index listLayout:(id)layout imageAppearance:(id)appearance options:(unint64_t)options cellProvider:(id)provider
{
  providerCopy = provider;
  appearanceCopy = appearance;
  layoutCopy = layout;
  v15 = [(SBFolder *)self listAtIndex:index];
  v16 = [v15 miniGridViewWithListLayout:layoutCopy imageAppearance:appearanceCopy options:options cellProvider:providerCopy];

  return v16;
}

- (SBFolder)initWithUniqueIdentifier:(id)identifier displayName:(id)name maxListCount:(int64_t)count listGridSize:(SBHIconGridSize)size iconGridSizeClassSizes:(id)sizes
{
  if (identifier)
  {
    v10 = sub_1BEE4708C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_1BEE4708C();
  return sub_1BEDD4010(v10, v12, v13, v14, count, *&size, sizes);
}

- (SBFolder)initWithDisplayName:(id)name maxListCount:(int64_t)count listGridSize:(SBHIconGridSize)size
{
  v9 = objc_allocWithZone(SBHIconGridSizeClassSizeMap);
  nameCopy = name;
  v11 = [v9 init];
  v12 = [(SBFolder *)self initWithUniqueIdentifier:0 displayName:nameCopy maxListCount:count listGridSize:*&size iconGridSizeClassSizes:v11];

  return v12;
}

- (SBFolder)initWithUniqueIdentifier:(id)identifier displayName:(id)name maxListCount:(int64_t)count listGridSize:(SBHIconGridSize)size
{
  if (identifier)
  {
    sub_1BEE4708C();
    nameCopy = name;
    v11 = sub_1BEE4705C();
  }

  else
  {
    nameCopy2 = name;
    v11 = 0;
  }

  v13 = [objc_allocWithZone(SBHIconGridSizeClassSizeMap) init];
  v14 = [(SBFolder *)self initWithUniqueIdentifier:v11 displayName:name maxListCount:count listGridSize:*&size iconGridSizeClassSizes:v13];

  return v14;
}

- (SBFolder)initWithDisplayName:(id)name maxListCount:(int64_t)count maxIconCountInLists:(int64_t)lists
{
  if (lists < 0)
  {
    __break(1u);
  }

  else if (!(lists >> 16))
  {
    selfCopy = self;
    v9 = objc_allocWithZone(SBHIconGridSizeClassSizeMap);
    nameCopy = name;
    v11 = [v9 init];
    v12 = [(SBFolder *)selfCopy initWithUniqueIdentifier:0 displayName:nameCopy maxListCount:count listGridSize:lists | 0x10000 iconGridSizeClassSizes:v11];

    return v12;
  }

  __break(1u);
  return self;
}

- (SBFolder)init
{
  v3 = sub_1BEE4705C();
  if (qword_1EBDC6DB8 != -1)
  {
    swift_once();
  }

  v4 = dword_1EBDC7CD0;
  v5 = [objc_allocWithZone(SBHIconGridSizeClassSizeMap) init];
  v6 = [(SBFolder *)self initWithUniqueIdentifier:0 displayName:v3 maxListCount:1 listGridSize:v4 iconGridSizeClassSizes:v5];

  return v6;
}

- (NSString)defaultDisplayName
{
  if (*(self + OBJC_IVAR___SBFolder_defaultDisplayName + 8))
  {

    v2 = sub_1BEE4705C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDefaultDisplayName:(id)name
{
  if (name)
  {
    v4 = sub_1BEE4708C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SBFolder_defaultDisplayName);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setDisplayName:(id)name
{
  v4 = sub_1BEE4708C();
  v5 = (self + OBJC_IVAR___SBFolder_displayName);
  v6 = *(self + OBJC_IVAR___SBFolder_displayName);
  v7 = *(self + OBJC_IVAR___SBFolder_displayName + 8);
  *v5 = v4;
  v5[1] = v8;
  selfCopy = self;
  sub_1BEDD5240(v6, v7);
}

- (void)setCancelable:(BOOL)cancelable
{
  selfCopy = self;
  sub_1BEDD5488(cancelable);
}

- (BOOL)isRootFolder
{
  sub_1BEB20D28(0, &qword_1EBDBFE90);
  selfCopy = self;
  rootFolder = [(SBFolder *)selfCopy rootFolder];
  v5 = sub_1BEE473CC();

  return v5 & 1;
}

- (int64_t)listCount
{
  selfCopy = self;
  lists = [(SBFolder *)selfCopy lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();

  if (v4 >> 62)
  {
    v5 = sub_1BEE474CC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5;
}

- (SBIconListModel)lastList
{
  selfCopy = self;
  lists = [(SBFolder *)selfCopy lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v5 = sub_1BEE474CC();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = __OFSUB__(v5, 1);
  result = (v5 - 1);
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v8 = MEMORY[0x1BFB4EA90](result, v4);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = *(v4 + 8 * result + 32);
LABEL_8:
  v9 = v8;
LABEL_11:

  return v9;
}

- (id)listAtIndex:(int64_t)index
{
  selfCopy = self;
  lists = [(SBFolder *)selfCopy lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v6 = sub_1BEE471AC();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1BFB4EA90](index, v6);
    goto LABEL_5;
  }

  if (index < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= index)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = *(v6 + 8 * index + 32);
LABEL_5:
  v9 = v8;

  return v9;
}

- (int64_t)indexOfList:(id)list
{
  listCopy = list;
  selfCopy = self;
  lists = [(SBFolder *)selfCopy lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v7 = sub_1BEE471AC();

  v8 = sub_1BEB31AEC(listCopy, v7, &qword_1EBDBFF10);
  v10 = v9;

  if (v10)
  {
    v8 = sub_1BEE467EC();
  }

  return v8;
}

- (int64_t)indexOfListWithIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1BEDD59E8(v4, v6);

  return v8;
}

- (int64_t)nextListIndexAfterIndex:(int64_t)index
{
  selfCopy = self;
  result = [(SBFolder *)selfCopy isValidListIndex:index];
  if (result)
  {
    if ([(SBFolder *)selfCopy isExtraListIndex:index])
    {
      goto LABEL_5;
    }

    result = [(SBFolder *)selfCopy listCount];
    v6 = __OFADD__(index, 1);
    v7 = index + 1;
    if (!v6)
    {
      if (v7 < result)
      {
LABEL_6:

        return v7;
      }

LABEL_5:
      v7 = sub_1BEE467EC();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

- (int64_t)precedingListIndexBeforeIndex:(int64_t)index
{
  selfCopy = self;
  result = [(SBFolder *)selfCopy isValidListIndex:index];
  if (result)
  {
    if ([(SBFolder *)selfCopy isExtraListIndex:index]|| (v6 = index < 1, v7 = index - 1, v6))
    {
      v7 = sub_1BEE467EC();
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (int64_t)indexOfListContainingIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  v6 = sub_1BEDD62C8(iconCopy);

  return v6;
}

- (id)listContainingIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  v6 = sub_1BEDD6480(iconCopy);

  return v6;
}

- (BOOL)isValidListIndex:(int64_t)index
{
  selfCopy = self;
  if ([(SBFolder *)selfCopy listCount]<= index)
  {
    v5 = [(SBFolder *)selfCopy isExtraListIndex:index];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isValidIndexPath:(id)path
{
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  selfCopy = self;
  v9 = sub_1BEE4696C();
  v10 = [(SBFolder *)selfCopy isValidIndexPath:v9 forInsertion:0];

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (BOOL)isValidIndexPath:(id)path forInsertion:(BOOL)insertion
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  selfCopy = self;
  v11 = sub_1BEDD6818(v9, insertion);

  (*(v7 + 8))(v9, v6);
  return v11 & 1;
}

- (int64_t)visibleListCount
{
  selfCopy = self;
  v3 = sub_1BEDD6D50();

  return v3;
}

- (int64_t)hiddenListCount
{
  selfCopy = self;
  v3 = sub_1BEDD6EBC();

  return v3;
}

- (BOOL)hasMultipleVisibleLists
{
  selfCopy = self;
  v3 = sub_1BEDD7024();

  return v3 & 1;
}

- (BOOL)hasMultipleVisibleListsExcludingTrailingEmptyLists
{
  selfCopy = self;
  v3 = sub_1BEDD71A8();

  return v3 & 1;
}

- (BOOL)hasHiddenLists
{
  selfCopy = self;
  v3 = sub_1BEDD7394();

  return v3 & 1;
}

- (int64_t)visibleIndexOfList:(id)list
{
  listCopy = list;
  selfCopy = self;
  v6 = sub_1BEDD74CC(listCopy);

  return v6;
}

- (int64_t)hiddenIndexOfList:(id)list
{
  listCopy = list;
  selfCopy = self;
  v6 = sub_1BEDD76B0(listCopy);

  return v6;
}

- (id)listAtVisibleIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1BEDD792C(index);

  return v5;
}

- (int64_t)nextVisibleListIndexAfterIndex:(int64_t)index
{
  selfCopy = self;
  sub_1BEDD7B70(index);
  v6 = v5;

  return v6;
}

- (int64_t)precedingVisibleListIndexBeforeIndex:(int64_t)index
{
  selfCopy = self;
  sub_1BEDD7C8C(index);
  v6 = v5;

  return v6;
}

- (int64_t)firstVisibleListIndex
{
  selfCopy = self;
  v3 = sub_1BEDD7DE0();

  return v3;
}

- (int64_t)lastVisibleListIndex
{
  selfCopy = self;
  v3 = sub_1BEDD7F60();

  return v3;
}

- (BOOL)isVisibleListIndex:(int64_t)index
{
  selfCopy = self;
  v5 = [(SBFolder *)selfCopy listAtIndex:index];
  isHidden = [v5 isHidden];

  return isHidden ^ 1;
}

- (SBIconListModel)leastRecentlyHiddenList
{
  selfCopy = self;
  sub_1BEDD8264(MEMORY[0x1E6969468]);
  v4 = v3;

  return v4;
}

- (SBIconListModel)mostRecentlyHiddenList
{
  selfCopy = self;
  sub_1BEDD8264(MEMORY[0x1E6969460]);
  v4 = v3;

  return v4;
}

- (void)_didAddList:(id)list informObservers:(BOOL)observers
{
  observersCopy = observers;
  listCopy = list;
  selfCopy = self;
  sub_1BEDD8550(listCopy, observersCopy);
}

- (void)_addList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_1BEDDA1A0(listCopy);
}

- (Class)listModelClass
{
  sub_1BEB20D28(0, &qword_1EBDBFF10);

  return swift_getObjCClassFromMetadata();
}

- (id)makeNewList
{
  selfCopy = self;
  v3 = sub_1BEDDA468();

  return v3;
}

- (id)makeNewListWithIcon:(id)icon
{
  selfCopy = self;
  iconCopy = icon;
  makeNewList = [(SBFolder *)selfCopy makeNewList];
  if (iconCopy)
  {
    v7 = iconCopy;
  }

  return makeNewList;
}

- (id)makeNewListWithIcons:(id)icons
{
  iconsCopy = icons;
  selfCopy = self;
  makeNewList = [(SBFolder *)selfCopy makeNewList];
  addIcons_ = [makeNewList addIcons_];

  return makeNewList;
}

- (id)addEmptyList
{
  selfCopy = self;
  v3 = sub_1BEDDA6D4();

  return v3;
}

- (id)addEmptyListRemovingLeastRecentlyHiddenListIfNecessary
{
  selfCopy = self;
  addEmptyList = [(SBFolder *)selfCopy addEmptyList];
  if (!addEmptyList)
  {
    [(SBFolder *)selfCopy removeLeastRecentlyHiddenList];
    addEmptyList = [(SBFolder *)selfCopy addEmptyList];
  }

  return addEmptyList;
}

- (id)insertEmptyListAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1BEDDAA14(index);

  return v5;
}

- (id)addListWithIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  v6 = sub_1BEDDB04C(iconCopy);

  return v6;
}

- (id)addListWithIcons:(id)icons
{
  v3 = [(SBFolder *)self addListWithIcons:icons removingHiddenListsIfNecessary:0];

  return v3;
}

- (id)addListWithIcons:(id)icons removingHiddenListsIfNecessary:(BOOL)necessary
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE471AC();
  selfCopy = self;
  v8 = sub_1BEDDB3D4(v6, necessary);

  return v8;
}

- (void)removeList:(id)list
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BEE8AF50;
  *(inited + 32) = list;
  listCopy = list;
  selfCopy = self;
  sub_1BEB50DA8(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
}

- (void)removeListAtIndex:(int64_t)index
{
  selfCopy = self;
  if ([(SBFolder *)selfCopy isValidListIndex:index])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AF50;
    *(inited + 32) = [(SBFolder *)selfCopy listAtIndex:index];
    sub_1BEB50DA8(inited);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    __break(1u);
  }
}

- (void)removeListsAtIndexes:(id)indexes
{
  v4 = sub_1BEE4695C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4690C();
  selfCopy = self;
  sub_1BEDDB8BC();

  (*(v5 + 8))(v7, v4);
}

- (void)removeLastList
{
  selfCopy = self;
  lastList = [(SBFolder *)selfCopy lastList];
  if (lastList)
  {
    v3 = lastList;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AF50;
    *(inited + 32) = v3;
    v5 = v3;
    sub_1BEB50DA8(inited);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
  }
}

- (void)removeAllLists
{
  selfCopy = self;
  lists = [(SBFolder *)selfCopy lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v3 = sub_1BEE471AC();

  sub_1BEB50DA8(v3);
}

- (void)removeHiddenLists
{
  selfCopy = self;
  sub_1BEDDBE08();
}

- (void)removeLeastRecentlyHiddenList
{
  selfCopy = self;
  sub_1BEDDC034();
}

- (void)_willRemoveList:(id)list atIndex:(int64_t)index informObservers:(BOOL)observers
{
  listCopy = list;
  selfCopy = self;
  sub_1BEDDC1B4(listCopy, index, observers);
}

- (void)_didRemoveList:(id)list atIndex:(int64_t)index informObservers:(BOOL)observers
{
  listCopy = list;
  selfCopy = self;
  sub_1BEDDC464(listCopy, index, observers);
}

- (void)_setLists:(id)lists
{
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();
  selfCopy = self;
  sub_1BEDDCA30(v4);
}

- (void)moveListAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  selfCopy = self;
  sub_1BEDDCCF0(index, toIndex);
}

- (id)changeGridSizeOfList:(id)list toGridSize:(SBHIconGridSize)size options:(unint64_t)options
{
  listCopy = list;
  selfCopy = self;
  v10 = sub_1BEDDD084(listCopy, *&size, options);

  if (v10)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v11 = sub_1BEE4719C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)changeGridSizeOfListAtIndex:(int64_t)index toGridSize:(SBHIconGridSize)size options:(unint64_t)options
{
  selfCopy = self;
  v9 = [(SBFolder *)selfCopy listAtIndex:index];
  v10 = [(SBFolder *)selfCopy changeGridSizeOfList:v9 toGridSize:*&size options:options];
  if (v10)
  {
    v11 = v10;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEE471AC();

    v12 = sub_1BEE4719C();
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (id)setListsFromFolder:(id)folder
{
  folderCopy = folder;
  selfCopy = self;
  sub_1BEDDD370(folderCopy);
  v7 = v6;

  if (v7)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v8 = sub_1BEE4719C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)replaceLayoutOfListAtIndex:(int64_t)index withGridCellInfo:(id)info options:(unint64_t)options
{
  infoCopy = info;
  selfCopy = self;
  v10 = sub_1BEDDDACC(index, infoCopy, options);

  if (v10)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v11 = sub_1BEE4719C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)compactAllLists
{
  selfCopy = self;
  v3 = sub_1BEE4705C();
  v4 = [(SBFolder *)selfCopy startCoalescingContentChangesForReason:v3];

  [(SBFolder *)selfCopy compactOverflowLists];
  LOBYTE(v3) = sub_1BEB53078(1);
  [v4 invalidate];

  swift_unknownObjectRelease();
  return v3 & 1;
}

- (void)compactOverflowListsAndRemoveEmptyLists:(BOOL)lists
{
  selfCopy = self;
  sub_1BEDDE0AC(lists);
}

- (void)compactOverflowListsWithoutMovingIconsPassingTest:(id)test
{
  v4 = _Block_copy(test);
  v6[2] = v4;
  selfCopy = self;
  sub_1BEDDE260(sub_1BEDFBF28, v6);
  _Block_release(v4);
}

- (void)pruneEmptyFolders
{
  selfCopy = self;
  sub_1BEDDE424();
}

- (int64_t)trailingEmptyListCount
{
  selfCopy = self;
  v3 = sub_1BEDDE7F4();

  return v3;
}

- (BOOL)isTrailingEmptyListIndex:(int64_t)index
{
  selfCopy = self;
  LOBYTE(index) = sub_1BEDDE930(index);

  return index & 1;
}

- (BOOL)isTrailingEmptyList:(id)list
{
  listCopy = list;
  selfCopy = self;
  LOBYTE(self) = sub_1BEDDEE0C(listCopy);

  return self & 1;
}

- (int64_t)iconCount
{
  selfCopy = self;
  v3 = sub_1BEDDEFEC(0);

  return v3;
}

- (int64_t)visibleIconCount
{
  selfCopy = self;
  v3 = sub_1BEDDEFEC(2);

  return v3;
}

- (BOOL)isEmpty
{
  selfCopy = self;
  v3 = sub_1BEDDF1C0();

  return v3;
}

- (BOOL)isFull
{
  selfCopy = self;
  v3 = sub_1BEDDF320();

  return v3;
}

- (BOOL)containsOneIcon
{
  selfCopy = self;
  v3 = sub_1BEDDF4FC();

  return v3 & 1;
}

- (id)iconsOfClass:(Class)class
{
  swift_getObjCClassMetadata();
  selfCopy = self;
  sub_1BEDDF674();

  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  v5 = sub_1BEE4724C();

  return v5;
}

- (void)addIconsOfClass:(Class)class toSet:(id)set
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  setCopy = set;
  selfCopy = self;
  sub_1BEDDF868(ObjCClassMetadata, setCopy);
}

- (void)addIconsPassingTest:(id)test toSet:(id)set
{
  v6 = _Block_copy(test);
  v12[2] = v6;
  v7 = swift_allocObject();
  v7[2] = sub_1BEDFBDEC;
  v7[3] = v12;
  v7[4] = set;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BEDFBA90;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_628;
  v9 = _Block_copy(aBlock);
  setCopy = set;
  selfCopy = self;

  [(SBFolder *)selfCopy enumerateAllIconsWithOptions:1 usingBlock:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v6);

  if (v9)
  {
    __break(1u);
  }
}

- (id)iconsPassingTest:(id)test
{
  v4 = _Block_copy(test);
  v8[2] = v4;
  selfCopy = self;
  sub_1BEDDFCE0(sub_1BEDFBDEC, v8);
  _Block_release(v4);

  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  v6 = sub_1BEE4724C();

  return v6;
}

- (id)applicationIconsWithBundleIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
  sub_1BEDE0418(v4, v6);

  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  sub_1BEB2A7E0(&qword_1EBDC7A58, &unk_1EBDBFFD0);
  v8 = sub_1BEE4724C();

  return v8;
}

- (SBIcon)firstIcon
{
  selfCopy = self;
  v3 = sub_1BEDE157C();

  return v3;
}

- (BOOL)containsIconWithIdentifier:(id)identifier
{
  v3 = [(SBFolder *)self iconWithIdentifier:identifier];

  return v3 != 0;
}

- (BOOL)containsIconPassingTest:(id)test
{
  v4 = _Block_copy(test);
  v10[2] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BEDFB924;
  *(v5 + 24) = v10;
  aBlock[4] = sub_1BEDFB950;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEDE070C;
  aBlock[3] = &block_descriptor_506;
  v6 = _Block_copy(aBlock);
  selfCopy = self;

  v8 = [(SBFolder *)selfCopy firstIconPassingTest2:v6];

  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {

    _Block_release(v4);
    return v8 != 0;
  }

  return result;
}

- (BOOL)containsWidgetWithExtensionBundleIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1BEDE188C(v4, v6);

  return v4 & 1;
}

- (BOOL)hasFixedIconLocations
{
  selfCopy = self;
  v3 = sub_1BEDE1B00();

  return v3 & 1;
}

- (id)handleBumpedIcons:(id)icons afterInsertingIconIntoListAtIndex:(int64_t)index listGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconsCopy = icons;
  if (icons)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    iconsCopy = sub_1BEE471AC();
  }

  selfCopy = self;
  v12 = [(SBFolder *)selfCopy listAtIndex:index];
  v13 = v12;
  v14 = sub_1BEDD8B4C(iconsCopy, v12, options, mutationOptions);

  if (v14)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v15 = sub_1BEE4719C();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)canBounceIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  parentFolder = [(SBFolder *)selfCopy parentFolder];
  if (parentFolder)
  {
    v7 = parentFolder;
    v8 = [(SBFolder *)parentFolder canBounceIcon:iconCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (SBHIconBadgeBehaviorProviding)badgeBehaviorProvider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setBadgeBehaviorProvider:(id)provider
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v5 = swift_allocObject();
  *(v5 + 16) = Strong;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEDFB8D0;
  *(v6 + 24) = v5;
  v9[4] = sub_1BEDFBF74;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BEB31DD8;
  v9[3] = &block_descriptor_480;
  v7 = _Block_copy(v9);
  swift_unknownObjectRetain();
  selfCopy = self;
  swift_unknownObjectRetain();

  [(SBFolder *)selfCopy enumerateAllIconsUsingBlock:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v7)
  {
    __break(1u);
  }
}

- (SBHIconBadgeBehaviorProviding)effectiveBadgeBehaviorProvider
{
  selfCopy = self;
  v3 = sub_1BEDE22D4();

  return v3;
}

- (id)indexPathForFirstFreeSlotAvoidingFirstList:(BOOL)list
{
  listCopy = list;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  sub_1BEDE2988(listCopy, v7);

  v9 = sub_1BEE469DC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1BEE4696C();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

- (id)indexPathForFirstFreeSlotStartingAtList:(id)list avoidingFirstList:(BOOL)firstList
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  listCopy = list;
  selfCopy = self;
  sub_1BEDE2CFC(list, firstList, v9);

  v12 = sub_1BEE469DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1BEE4696C();
    (*(v13 + 8))(v9, v12);
    v15 = v16;
  }

  return v15;
}

- (NSIndexPath)_indexPathToRevealForJiggleMode
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  selfCopy = self;
  v10 = [(SBFolder *)selfCopy indexPathForFirstFreeSlotAvoidingFirstList:0];
  if (v10)
  {
    v11 = v10;
    sub_1BEE4697C();

    v12 = sub_1BEE469DC();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {

    v12 = sub_1BEE469DC();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_1BEB31BF4(v6, v8);
  sub_1BEE469DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1BEE4696C();
    (*(v13 + 8))(v8, v12);
    v15 = v16;
  }

  return v15;
}

- (id)validatedIndexPathForInsertionIndexPath:(id)path avoidingFirstList:(BOOL)list
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1BEE4697C();
  selfCopy = self;
  sub_1BEDE3404(v9, list, v12);

  v14 = *(v7 + 8);
  v14(v9, v6);
  v15 = (*(v7 + 48))(v12, 1, v6);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_1BEE4696C();
    v14(v12, v6);
    v16 = v17;
  }

  return v16;
}

- (id)validatedGridPathForInsertionGridPath:(id)path avoidingFirstList:(BOOL)list
{
  listCopy = list;
  pathCopy = path;
  selfCopy = self;
  v8 = [(SBFolder *)selfCopy listAtGridPath:pathCopy];
  if (v8)
  {

    v9 = -[SBFolder gridPathForFirstFreeSlotAvoidingFirstList:listGridCellInfoOptions:](selfCopy, sel_gridPathForFirstFreeSlotAvoidingFirstList_listGridCellInfoOptions_, listCopy, [pathCopy gridCellInfoOptions]);
    pathCopy = v9;
  }

  return pathCopy;
}

- (id)gridPathForFirstFreeSlotAvoidingFirstList:(BOOL)list listGridCellInfoOptions:(unint64_t)options
{
  selfCopy = self;
  sub_1BEDE3EA8(list, options);
  v8 = v7;

  return v8;
}

- (id)gridPathForFirstFreeSlotOfRangeOfSizeClass:(id)class avoidingFirstList:(BOOL)list listGridCellInfoOptions:(unint64_t)options
{
  classCopy = class;
  selfCopy = self;
  sub_1BEDE43E8(classCopy, list, options);
  v11 = v10;

  return v11;
}

- (id)gridPathForFirstFreeSlotStartingAtList:(id)list avoidingFirstList:(BOOL)firstList listGridCellInfoOptions:(unint64_t)options
{
  listCopy = list;
  selfCopy = self;
  sub_1BEDE4934(list, firstList, options);
  v12 = v11;

  return v12;
}

- (id)gridPathForFirstFreeSlotOfRangeOfSizeClass:(id)class startingAtList:(id)list listGridCellInfoOptions:(unint64_t)options
{
  classCopy = class;
  listCopy = list;
  selfCopy = self;
  sub_1BEDE4FA4(classCopy, list, options);
  v12 = v11;

  return v12;
}

- (void)enumerateListsNearestToList:(id)list usingBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  listCopy = list;
  selfCopy = self;
  sub_1BEDF9C98(listCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)indexPathForNodeIdentifier:(id)identifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  selfCopy = self;
  v12 = [(SBFolder *)selfCopy indexPathForIconWithIdentifier:identifier];
  if (v12)
  {
    v13 = v12;
    sub_1BEE4697C();

    v14 = sub_1BEE469DC();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  }

  else
  {

    v14 = sub_1BEE469DC();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1BEB31BF4(v8, v10);
  sub_1BEE469DC();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_1BEE4696C();
    (*(v15 + 8))(v10, v14);
    v17 = v18;
  }

  return v17;
}

- (id)indexesOfListsPassingTest:(id)test
{
  v5 = sub_1BEE4695C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _Block_copy(test);
  v14 = v9;
  selfCopy = self;
  sub_1BEDE5C50(sub_1BEDFBF28, v13, v8);
  _Block_release(v9);

  v11 = sub_1BEE468FC();
  (*(v6 + 8))(v8, v5);

  return v11;
}

- (int64_t)firstIndexOfListPassingTest:(id)test
{
  v4 = _Block_copy(test);
  v8[2] = v4;
  selfCopy = self;
  v6 = sub_1BEDE5FA4(sub_1BEDFB7E0, v8);
  _Block_release(v4);

  return v6;
}

- (id)gridPathForIcon:(id)icon listGridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  selfCopy = self;
  v8 = sub_1BEDE6188(iconCopy, options);

  return v8;
}

- (id)relativePathForIcon:(id)icon listGridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  selfCopy = self;
  sub_1BEDE63DC(iconCopy, options);
  v9 = v8;

  return v9;
}

- (id)gridPathForRelativePath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  v6 = sub_1BEDE6BAC(pathCopy);

  return v6;
}

- (id)gridPathForIndexPath:(id)path listGridCellInfoOptions:(unint64_t)options
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  selfCopy = self;
  v11 = sub_1BEDE7188(v9, options);

  (*(v7 + 8))(v9, v6);

  return v11;
}

- (id)gridPathsForIndexPaths:(id)paths listGridCellInfoOptions:(unint64_t)options
{
  sub_1BEE469DC();
  v6 = sub_1BEE471AC();
  selfCopy = self;
  sub_1BEDE74AC(v6, options);

  sub_1BEB20D28(0, &qword_1EBDC7A30);
  sub_1BEB49FBC(&qword_1EBDC7A38, MEMORY[0x1E6969C28]);
  v8 = sub_1BEE4700C();

  return v8;
}

- (id)gridPathWithListAtIndex:(int64_t)index gridCellIndex:(int64_t)cellIndex listGridCellInfoOptions:(unint64_t)options
{
  selfCopy = self;
  v9 = [(SBFolder *)selfCopy listAtIndex:index];
  v10 = [(SBFolder *)selfCopy gridPathWithList:v9 gridCellIndex:cellIndex listGridCellInfoOptions:options];

  return v10;
}

- (id)gridPathWithListAtIndexPath:(id)path gridCellIndex:(int64_t)index listGridCellInfoOptions:(unint64_t)options
{
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  selfCopy = self;
  v13 = sub_1BEE4696C();
  v14 = [(SBFolder *)selfCopy listAtIndexPath:v13];

  v15 = [(SBFolder *)selfCopy gridPathWithList:v14 gridCellIndex:index listGridCellInfoOptions:options];
  (*(v9 + 8))(v11, v8);

  return v15;
}

- (id)gridPathWithList:(id)list gridCellIndex:(int64_t)index listGridCellInfoOptions:(unint64_t)options
{
  listCopy = list;
  selfCopy = self;
  v10 = sub_1BEDE7CB4(listCopy, index, options);

  return v10;
}

- (id)folderContainingIndexPath:(id)path
{
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  selfCopy = self;
  v9 = sub_1BEE4696C();
  v10 = [(SBFolder *)selfCopy folderContainingIndexPath:v9 relativeIndexPath:0];

  (*(v5 + 8))(v7, v4);

  return v10;
}

- (id)firstFolderWithUniqueIdentifier:(id)identifier displayName:(id)name defaultDisplayName:(id)displayName
{
  nameCopy = name;
  if (identifier)
  {
    v8 = sub_1BEE4708C();
    v10 = v9;
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (displayName)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v10 = 0;
  if (!name)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_1BEE4708C();
  nameCopy = v12;
  if (displayName)
  {
LABEL_4:
    v13 = sub_1BEE4708C();
    displayName = v14;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  selfCopy = self;
  v16 = sub_1BEDE958C(v8, v10, v11, nameCopy, v13, displayName);

  return v16;
}

- (id)resolvedComponentsForUniqueIdentifierPath:(id)path
{
  v4 = sub_1BEE471AC();
  selfCopy = self;
  sub_1BEDEA0E8(v4);

  v6 = sub_1BEE4719C();

  return v6;
}

- (id)listWithIdentifier:(id)identifier inFolderWithIdentifier:(id)withIdentifier
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  if (withIdentifier)
  {
    v9 = sub_1BEE4708C();
    withIdentifier = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v12 = sub_1BEDEA7E0(v6, v8, v9, withIdentifier);

  return v12;
}

- (id)listAtGridPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  folderIdentifier = [pathCopy folderIdentifier];
  listIdentifier = [pathCopy listIdentifier];
  if (!listIdentifier)
  {
    sub_1BEE4708C();
    listIdentifier = sub_1BEE4705C();
  }

  v8 = [(SBFolder *)selfCopy listWithIdentifier:listIdentifier inFolderWithIdentifier:folderIdentifier];

  return v8;
}

- (id)iconAtGridPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  v6 = [(SBFolder *)selfCopy listAtGridPath:pathCopy];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 iconAtGridCellIndex:objc_msgSend(pathCopy gridCellInfoOptions:{sel_gridCellIndex), objc_msgSend(pathCopy, sel_gridCellInfoOptions)}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsWidgetIcon
{
  selfCopy = self;
  v3 = sub_1BEDEAB20();

  return v3 & 1;
}

- (BOOL)containsVisibleWidgetIcon
{
  selfCopy = self;
  v3 = sub_1BEDEACB4();

  return v3 & 1;
}

- (int64_t)visibleWidgetIconCount
{
  selfCopy = self;
  v3 = sub_1BEDEAEA0();

  return v3;
}

- (BOOL)containsNonDefaultSizedIcon
{
  selfCopy = self;
  v3 = sub_1BEDEB088();

  return v3 & 1;
}

- (BOOL)containsVisibleNonDefaultSizedIcon
{
  selfCopy = self;
  v3 = sub_1BEDEB21C();

  return v3 & 1;
}

- (void)enumerateListsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  v8[2] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BEDFBDF8;
  *(v5 + 24) = v8;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_319;
  v6 = _Block_copy(aBlock);
  selfCopy = self;

  [(SBFolder *)selfCopy enumerateListsWithOptions:0 usingBlock:v6];

  _Block_release(v6);
  LOBYTE(selfCopy) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v4);
  if (selfCopy)
  {
    __break(1u);
  }
}

- (void)enumerateListsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  selfCopy = self;
  sub_1BEDF9E30(options, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (BOOL)isExtraList:(id)list
{
  listCopy = list;
  selfCopy = self;
  LOBYTE(self) = sub_1BEDEBB60(listCopy);

  return self & 1;
}

- (id)insertIcon:(id)icon atIndexPath:(id)path options:(unint64_t)options
{
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  iconCopy = icon;
  selfCopy = self;
  v14 = sub_1BEDEC21C(iconCopy, v11, options);

  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v15 = sub_1BEE4719C();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)insertIcons:(id)icons atIndexPath:(id)path options:(unint64_t)options
{
  v7 = sub_1BEE469DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v11 = sub_1BEE471AC();
  sub_1BEE4697C();
  selfCopy = self;
  v13 = sub_1BEDEC798(v11, v10, options);

  (*(v8 + 8))(v10, v7);
  if (v13)
  {
    v14 = sub_1BEE4719C();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)insertIcon:(id)icon atGridPath:(id)path options:(unint64_t)options
{
  iconCopy = icon;
  pathCopy = path;
  selfCopy = self;
  v11 = sub_1BEDECB6C(iconCopy, pathCopy, options);

  if (v11)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v12 = sub_1BEE4719C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)insertIcons:(id)icons atGridPath:(id)path options:(unint64_t)options
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v8 = sub_1BEE471AC();
  pathCopy = path;
  selfCopy = self;
  v11 = sub_1BEDED0A0(v8, pathCopy, options);

  if (v11)
  {
    v12 = sub_1BEE4719C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)replaceIconAtGridPath:(id)path withIcon:(id)icon options:(unint64_t)options
{
  pathCopy = path;
  iconCopy = icon;
  selfCopy = self;
  v10 = [(SBFolder *)selfCopy iconAtGridPath:pathCopy];
  if (v10)
  {
    v11 = v10;
    [(SBFolder *)selfCopy replaceIcon:v10 withIcon:iconCopy options:options];
  }

  else
  {
    v11 = [(SBFolder *)selfCopy insertIcon:iconCopy atGridPath:pathCopy options:options];
  }
}

- (BOOL)replaceIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options
{
  iconCopy = icon;
  withIconCopy = withIcon;
  selfCopy = self;
  sub_1BEDED8EC(iconCopy, withIconCopy, options);

  return 1;
}

- (id)replaceIcon:(id)icon withIcons:(id)icons options:(unint64_t)options
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v8 = sub_1BEE471AC();
  iconCopy = icon;
  selfCopy = self;
  v11 = sub_1BEDEDD20(iconCopy, v8, options);

  if (v11)
  {
    v12 = sub_1BEE4719C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)replaceIcon:(id)icon withIcons:(id)icons options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v10 = sub_1BEE471AC();
  iconCopy = icon;
  selfCopy = self;
  v13 = sub_1BEDEE20C(iconCopy, v10, options, infoOptions);

  if (v13)
  {
    v14 = sub_1BEE4719C();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)addIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  v6 = [(SBFolder *)selfCopy addIcon:iconCopy options:0 listGridCellInfoOptions:0];
  if (v6)
  {
    v7 = v6;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEE471AC();

    v8 = sub_1BEE4719C();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)addIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  selfCopy = self;
  v8 = [(SBFolder *)selfCopy addIcon:iconCopy options:options listGridCellInfoOptions:0];
  if (v8)
  {
    v9 = v8;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEE471AC();

    v10 = sub_1BEE4719C();
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (id)addIcons:(id)icons
{
  selfCopy = self;
  v5 = [(SBFolder *)selfCopy addIcons:icons options:0];
  if (v5)
  {
    v6 = v5;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEE471AC();

    v7 = sub_1BEE4719C();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)addIcons:(id)icons options:(unint64_t)options
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE471AC();
  selfCopy = self;
  v8 = sub_1BEDEEDF0(v6, options);

  if (v8)
  {
    v9 = sub_1BEE4719C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)addIcon:(id)icon toListAtIndex:(int64_t)index options:(unint64_t)options
{
  iconCopy = icon;
  selfCopy = self;
  v10 = [(SBFolder *)selfCopy listAtIndex:index];
  v11 = [(SBFolder *)selfCopy addIcon:iconCopy toList:v10 options:options];
  if (v11)
  {
    v12 = v11;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEE471AC();

    v13 = sub_1BEE4719C();
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (id)addIcon:(id)icon toList:(id)list options:(unint64_t)options
{
  iconCopy = icon;
  listCopy = list;
  selfCopy = self;
  v11 = sub_1BEDEF7C8(iconCopy, listCopy, options, 0);

  if (v11)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v12 = sub_1BEE4719C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)addIcon:(id)icon toListAtIndex:(int64_t)index options:(unint64_t)options didBump:(BOOL *)bump
{
  iconCopy = icon;
  selfCopy = self;
  v12 = sub_1BEDEFC5C(iconCopy, index, options, bump);

  if (v12)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v13 = sub_1BEE4719C();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)prependIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  selfCopy = self;
  v8 = [(SBFolder *)selfCopy prependIcon:iconCopy toListAtIndex:0 options:options];
  if (v8)
  {
    v9 = v8;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEE471AC();

    v10 = sub_1BEE4719C();
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (BOOL)canAddIcon
{
  v2 = [(SBFolder *)self gridPathForFirstFreeSlotOfRangeOfSizeClass:@"SBHIconGridSizeClassDefault" avoidingFirstList:0 listGridCellInfoOptions:0];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

- (BOOL)canAddIconCount:(int64_t)count
{
  selfCopy = self;
  LOBYTE(count) = sub_1BEDF04D0(count);

  return count & 1;
}

- (BOOL)canAddIcon:(id)icon
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BEE8AF50;
  *(v5 + 32) = icon;
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  iconCopy = icon;
  selfCopy = self;
  v8 = sub_1BEE4719C();

  v9 = [(SBFolder *)selfCopy canAddIcons:v8 startingAtList:0];

  return v9;
}

- (BOOL)canAddIcons:(id)icons startingAtList:(id)list
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE471AC();
  listCopy = list;
  selfCopy = self;
  LOBYTE(list) = sub_1BEDF0874(v6, list);

  return list & 1;
}

- (BOOL)isAllowedToContainIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  rootFolder = [(SBFolder *)selfCopy rootFolder];
  type metadata accessor for SBFolder(rootFolder);
  LOBYTE(self) = sub_1BEE473CC();

  if (self)
  {
    canBeAddedToSubfolder = 1;
  }

  else
  {
    canBeAddedToSubfolder = [iconCopy canBeAddedToSubfolder];
  }

  return canBeAddedToSubfolder;
}

- (BOOL)isAllowedToContainIcons:(id)icons
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v4 = sub_1BEE471AC();
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_15:
    v7 = sub_1BEE474CC();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  self = self;
  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB4EA90](v8, v5);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = [(SBFolder *)self isAllowedToContainIcon:v10];

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);

  return v7 == v9;
}

- (void)swapIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options
{
  iconCopy = icon;
  withIconCopy = withIcon;
  selfCopy = self;
  sub_1BEDF1204(iconCopy, withIconCopy, options);
}

- (void)removeIcon:(id)icon options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions
{
  iconCopy = icon;
  selfCopy = self;
  sub_1BEDF1534(iconCopy, options, infoOptions);
}

- (void)removeIcons:(id)icons options:(unint64_t)options
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE471AC();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_1BEE474CC();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  selfCopy = self;
  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB4EA90](i, v7);
    }

    else
    {
      v11 = *(v7 + 8 * i + 32);
    }

    v12 = v11;
    [(SBFolder *)selfCopy removeIcon:v11 options:options];
  }

LABEL_10:
}

- (void)removeIcons:(id)icons options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v8 = sub_1BEE471AC();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_1BEE474CC();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  selfCopy = self;
  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB4EA90](i, v9);
    }

    else
    {
      v13 = *(v9 + 8 * i + 32);
    }

    v14 = v13;
    [(SBFolder *)selfCopy removeIcon:v13 options:options listGridCellInfoOptions:infoOptions];
  }

LABEL_10:
}

- (id)changeGridSizeClassOfIconAtGridPath:(id)path toGridSizeClass:(id)class options:(unint64_t)options
{
  pathCopy = path;
  classCopy = class;
  selfCopy = self;
  v11 = [(SBFolder *)selfCopy iconAtGridPath:pathCopy];
  if (v11)
  {
    v12 = v11;
    v13 = -[SBFolder changeGridSizeClassOfIcon:toGridSizeClass:options:listGridCellInfoOptions:](selfCopy, sel_changeGridSizeClassOfIcon_toGridSizeClass_options_listGridCellInfoOptions_, v11, classCopy, options, [pathCopy gridCellInfoOptions]);
    if (v13)
    {
      v14 = v13;
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      sub_1BEE471AC();

      v15 = sub_1BEE4719C();

      v16 = v15;
      goto LABEL_7;
    }

    classCopy = selfCopy;
  }

  else
  {
    v12 = selfCopy;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (id)changeGridSizeClassOfIconAtIndexPath:(id)path toGridSizeClass:(id)class options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions
{
  v10 = sub_1BEE469DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  classCopy = class;
  selfCopy = self;
  v16 = sub_1BEE4696C();
  v17 = [(SBFolder *)selfCopy iconAtIndexPath:v16];

  v18 = [(SBFolder *)selfCopy changeGridSizeClassOfIcon:v17 toGridSizeClass:classCopy options:options listGridCellInfoOptions:infoOptions];
  if (v18)
  {
    v19 = v18;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEE471AC();

    (*(v11 + 8))(v13, v10);
    v20 = sub_1BEE4719C();
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    v20 = 0;
  }

  return v20;
}

- (void)_swapInsertIcons:(id)icons atIndexPaths:(id)paths
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v5 = sub_1BEE471AC();
  sub_1BEE469DC();
  v6 = sub_1BEE471AC();
  selfCopy = self;
  sub_1BEDF1F40(v5, v6);
}

- (void)_swapRestoreIconCount:(int64_t)count toLocation:(id)location
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  selfCopy = self;
  sub_1BEDF2520(count);

  (*(v7 + 8))(v9, v6);
}

- (id)objectWithUniqueIdentifier:(id)identifier
{
  v3 = [(SBFolder *)self listWithIdentifier:identifier];

  return v3;
}

- (BOOL)isIconStateDirty
{
  selfCopy = self;
  v3 = sub_1BEDF2E94();

  return v3 & 1;
}

- (void)markIconStateClean
{
  selfCopy = self;
  sub_1BEDF3008();
}

- (NSArray)treeChildren
{
  selfCopy = self;
  lists = [(SBFolder *)selfCopy lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();

  sub_1BEE09DE0(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC79F0);
  v5 = sub_1BEE4719C();

  return v5;
}

- (void)setListWithNonDefaultSizedIconsGridSize:(SBHIconGridSize)size
{
  selfCopy = self;
  sub_1BEDF320C(*&size);
}

- (void)setListRotatedLayoutClusterGridSizeClass:(id)class
{
  classCopy = class;
  selfCopy = self;
  sub_1BEDF33EC(classCopy);
}

- (void)setListsAllowRotatedLayout:(BOOL)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_1BEDF3698(layoutCopy);
}

- (void)setListsAllowIndependentRotatedLayout:(BOOL)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_1BEDF3870(layoutCopy);
}

- (void)setListAllowedGridSizeClasses:(id)classes
{
  classesCopy = classes;
  selfCopy = self;
  sub_1BEDF3A50(classesCopy);
}

- (void)setListsFixedIconLocationBehavior:(int64_t)behavior
{
  selfCopy = self;
  sub_1BEDF3C94(behavior);
}

- (void)setListsIconDisplacementBehavior:(int64_t)behavior
{
  selfCopy = self;
  sub_1BEDF3E68(behavior);
}

- (void)setListsIconLayoutBehavior:(unint64_t)behavior
{
  selfCopy = self;
  sub_1BEDF403C(behavior);
}

- (void)iconList:(id)list didAddIcon:(id)icon
{
  listCopy = list;
  iconCopy = icon;
  selfCopy = self;
  SBFolder.iconList(_:didAdd:)(listCopy, iconCopy);
}

- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  listCopy = list;
  iconCopy = icon;
  withIconCopy = withIcon;
  selfCopy = self;
  SBFolder.iconList(_:didReplace:with:)(listCopy, iconCopy, withIconCopy);
}

- (void)iconList:(id)list didRemoveIcon:(id)icon
{
  listCopy = list;
  iconCopy = icon;
  selfCopy = self;
  sub_1BEDFA304(iconCopy);
}

- (void)iconList:(id)list didMoveIcon:(id)icon
{
  listCopy = list;
  iconCopy = icon;
  selfCopy = self;
  sub_1BEDFAAB8(iconCopy, &selRef_folder_didMoveIcon_);
}

- (void)iconListHiddenWillChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  SBFolder.iconListHiddenWillChange(_:)(changeCopy);
}

- (void)iconListHiddenDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  SBFolder.iconListHiddenDidChange(_:)(changeCopy);
}

- (void)iconList:(id)list didInvalidateLayoutWithGridCellInfoOptions:(unint64_t)options
{
  listCopy = list;
  selfCopy = self;
  SBFolder.iconList(_:didInvalidateLayoutWith:)(listCopy, options);
}

- (BOOL)iconListModel:(id)model isAllowedToContainIcon:(id)icon
{
  modelCopy = model;
  iconCopy = icon;
  selfCopy = self;
  v9 = sub_1BEDF519C(modelCopy, iconCopy, &selRef_rootFolder_canAddIcon_toIconList_inFolder_);

  return v9 & 1;
}

- (BOOL)iconListModel:(id)model isGridLayoutValid:(id)valid
{
  modelCopy = model;
  validCopy = valid;
  selfCopy = self;
  v9 = sub_1BEDF519C(modelCopy, validCopy, &selRef_rootFolder_isGridLayoutValid_forIconList_inFolder_);

  return v9 & 1;
}

- (id)iconListModel:(id)model shouldBounceIcon:(id)icon afterInsertingIcons:(id)icons
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEE471AC();
  modelCopy = model;
  iconCopy = icon;
  selfCopy = self;
  v11 = sub_1BEDF5300(modelCopy, iconCopy);

  return v11;
}

- (id)copyWithZone:(void *)zone
{
  swift_getObjectType();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFolder:self copyLeafIcons:0];
  v4 = sub_1BEE476FC();

  return v4;
}

- (id)copyWithOptions:(unint64_t)options
{
  swift_getObjectType();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v5 initWithFolder:self options:options];
}

- (id)succinctDescription
{
  selfCopy = self;
  result = [(SBFolder *)selfCopy succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    build = [result build];

    if (build)
    {
      sub_1BEE4708C();

      v6 = sub_1BEE4705C();
    }

    else
    {

      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)succinctDescriptionBuilder
{
  initWithObject_ = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];

  return initWithObject_;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    v4 = sub_1BEE4708C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1BEDF56F4(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1BEE4705C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    sub_1BEE4708C();
  }

  selfCopy = self;
  v5 = sub_1BEDFA7E4();

  return v5;
}

- (NSString)description
{
  selfCopy = self;
  result = [(SBFolder *)selfCopy descriptionWithMultilinePrefix:0];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)recursiveDescription
{
  selfCopy = self;
  sub_1BEDF59F0();

  v3 = sub_1BEE4705C();

  return v3;
}

- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons
{
  iconsCopy = icons;
  if (icons)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    iconsCopy = sub_1BEE4726C();
  }

  if (removedIcons)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    removedIcons = sub_1BEE4726C();
  }

  folderCopy = folder;
  selfCopy = self;
  sub_1BEDFAC0C(iconsCopy, removedIcons);
}

- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  folderCopy = folder;
  iconCopy = icon;
  withIconCopy = withIcon;
  selfCopy = self;
  sub_1BEDFAE80(iconCopy, withIconCopy, &selRef_folder_didReplaceIcon_withIcon_);
}

@end