@interface SBFolder
- (BOOL)canAddIcon;
- (BOOL)canAddIcon:(id)a3;
- (BOOL)canAddIconCount:(int64_t)a3;
- (BOOL)canAddIcons:(id)a3 startingAtList:(id)a4;
- (BOOL)canBounceIcon:(id)a3;
- (BOOL)compactAllLists;
- (BOOL)compactLists;
- (BOOL)containsIcon:(id)a3;
- (BOOL)containsIconPassingTest:(id)a3;
- (BOOL)containsIconWithIdentifier:(id)a3;
- (BOOL)containsNonDefaultSizedIcon;
- (BOOL)containsOneIcon;
- (BOOL)containsVisibleNonDefaultSizedIcon;
- (BOOL)containsVisibleWidgetIcon;
- (BOOL)containsWidgetIcon;
- (BOOL)containsWidgetWithExtensionBundleIdentifier:(id)a3;
- (BOOL)hasFixedIconLocations;
- (BOOL)hasHiddenLists;
- (BOOL)hasMultipleVisibleLists;
- (BOOL)hasMultipleVisibleListsExcludingTrailingEmptyLists;
- (BOOL)hasVisibleLists;
- (BOOL)iconListModel:(id)a3 isAllowedToContainIcon:(id)a4;
- (BOOL)iconListModel:(id)a3 isGridLayoutValid:(id)a4;
- (BOOL)isAllowedToContainIcon:(id)a3;
- (BOOL)isAllowedToContainIcons:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isExtraList:(id)a3;
- (BOOL)isFull;
- (BOOL)isIconStateDirty;
- (BOOL)isRootFolder;
- (BOOL)isTrailingEmptyList:(id)a3;
- (BOOL)isTrailingEmptyListIndex:(int64_t)a3;
- (BOOL)isValidIndexPath:(id)a3;
- (BOOL)isValidIndexPath:(id)a3 forInsertion:(BOOL)a4;
- (BOOL)isValidListIndex:(int64_t)a3;
- (BOOL)isVisibleListIndex:(int64_t)a3;
- (BOOL)replaceIcon:(id)a3 withIcon:(id)a4 options:(unint64_t)a5;
- (Class)listModelClass;
- (NSArray)lists;
- (NSArray)treeChildren;
- (NSIndexPath)_indexPathToRevealForJiggleMode;
- (NSString)badge;
- (NSString)defaultDisplayName;
- (NSString)description;
- (NSString)recursiveDescription;
- (SBFolder)init;
- (SBFolder)initWithDisplayName:(id)a3 maxListCount:(int64_t)a4 listGridSize:(SBHIconGridSize)a5;
- (SBFolder)initWithDisplayName:(id)a3 maxListCount:(int64_t)a4 maxIconCountInLists:(int64_t)a5;
- (SBFolder)initWithUniqueIdentifier:(id)a3 displayName:(id)a4 maxListCount:(int64_t)a5 listGridSize:(SBHIconGridSize)a6;
- (SBFolder)initWithUniqueIdentifier:(id)a3 displayName:(id)a4 maxListCount:(int64_t)a5 listGridSize:(SBHIconGridSize)a6 iconGridSizeClassSizes:(id)a7;
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
- (id)addIcon:(id)a3;
- (id)addIcon:(id)a3 options:(unint64_t)a4;
- (id)addIcon:(id)a3 toList:(id)a4 options:(unint64_t)a5;
- (id)addIcon:(id)a3 toListAtIndex:(int64_t)a4 options:(unint64_t)a5;
- (id)addIcon:(id)a3 toListAtIndex:(int64_t)a4 options:(unint64_t)a5 didBump:(BOOL *)a6;
- (id)addIcons:(id)a3;
- (id)addIcons:(id)a3 options:(unint64_t)a4;
- (id)addListWithIcon:(id)a3;
- (id)addListWithIcons:(id)a3;
- (id)addListWithIcons:(id)a3 removingHiddenListsIfNecessary:(BOOL)a4;
- (id)applicationIconsWithBundleIdentifier:(id)a3;
- (id)changeGridSizeClassOfIconAtGridPath:(id)a3 toGridSizeClass:(id)a4 options:(unint64_t)a5;
- (id)changeGridSizeClassOfIconAtIndexPath:(id)a3 toGridSizeClass:(id)a4 options:(unint64_t)a5 listGridCellInfoOptions:(unint64_t)a6;
- (id)changeGridSizeOfList:(id)a3 toGridSize:(SBHIconGridSize)a4 options:(unint64_t)a5;
- (id)changeGridSizeOfListAtIndex:(int64_t)a3 toGridSize:(SBHIconGridSize)a4 options:(unint64_t)a5;
- (id)copyWithOptions:(unint64_t)a3;
- (id)copyWithZone:(void *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)firstFolderWithUniqueIdentifier:(id)a3 displayName:(id)a4 defaultDisplayName:(id)a5;
- (id)folderContainingIndexPath:(id)a3;
- (id)gridPathForFirstFreeSlotAvoidingFirstList:(BOOL)a3 listGridCellInfoOptions:(unint64_t)a4;
- (id)gridPathForFirstFreeSlotOfRangeOfSizeClass:(id)a3 avoidingFirstList:(BOOL)a4 listGridCellInfoOptions:(unint64_t)a5;
- (id)gridPathForFirstFreeSlotOfRangeOfSizeClass:(id)a3 startingAtList:(id)a4 listGridCellInfoOptions:(unint64_t)a5;
- (id)gridPathForFirstFreeSlotStartingAtList:(id)a3 avoidingFirstList:(BOOL)a4 listGridCellInfoOptions:(unint64_t)a5;
- (id)gridPathForIcon:(id)a3 listGridCellInfoOptions:(unint64_t)a4;
- (id)gridPathForIndexPath:(id)a3 listGridCellInfoOptions:(unint64_t)a4;
- (id)gridPathForRelativePath:(id)a3;
- (id)gridPathWithList:(id)a3 gridCellIndex:(int64_t)a4 listGridCellInfoOptions:(unint64_t)a5;
- (id)gridPathWithListAtIndex:(int64_t)a3 gridCellIndex:(int64_t)a4 listGridCellInfoOptions:(unint64_t)a5;
- (id)gridPathWithListAtIndexPath:(id)a3 gridCellIndex:(int64_t)a4 listGridCellInfoOptions:(unint64_t)a5;
- (id)gridPathsForIndexPaths:(id)a3 listGridCellInfoOptions:(unint64_t)a4;
- (id)handleBumpedIcons:(id)a3 afterInsertingIconIntoListAtIndex:(int64_t)a4 listGridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)iconAtGridPath:(id)a3;
- (id)iconListModel:(id)a3 shouldBounceIcon:(id)a4 afterInsertingIcons:(id)a5;
- (id)iconsOfClass:(Class)a3;
- (id)iconsPassingTest:(id)a3;
- (id)indexPathForFirstFreeSlotAvoidingFirstList:(BOOL)a3;
- (id)indexPathForFirstFreeSlotStartingAtList:(id)a3 avoidingFirstList:(BOOL)a4;
- (id)indexPathForIcon:(id)a3;
- (id)indexPathForIconWithIdentifier:(id)a3;
- (id)indexPathForNodeIdentifier:(id)a3;
- (id)indexesOfListsPassingTest:(id)a3;
- (id)insertEmptyListAtIndex:(int64_t)a3;
- (id)insertIcon:(id)a3 atGridPath:(id)a4 options:(unint64_t)a5;
- (id)insertIcon:(id)a3 atIndexPath:(id)a4 options:(unint64_t)a5;
- (id)insertIcons:(id)a3 atGridPath:(id)a4 options:(unint64_t)a5;
- (id)insertIcons:(id)a3 atIndexPath:(id)a4 options:(unint64_t)a5;
- (id)listAtGridPath:(id)a3;
- (id)listAtIndex:(int64_t)a3;
- (id)listAtVisibleIndex:(int64_t)a3;
- (id)listContainingIcon:(id)a3;
- (id)listWithIdentifier:(id)a3 inFolderWithIdentifier:(id)a4;
- (id)makeNewList;
- (id)makeNewListWithIcon:(id)a3;
- (id)makeNewListWithIcons:(id)a3;
- (id)miniGridViewForListIndex:(unint64_t)a3 gridSize:(SBHIconGridSize)a4 iconImageInfo:(SBIconImageInfo *)a5 cellSpacing:(CGSize)a6 imageAppearance:(id)a7 options:(unint64_t)a8 cellProvider:(id)a9;
- (id)miniGridViewForListIndex:(unint64_t)a3 listLayout:(id)a4 imageAppearance:(id)a5 options:(unint64_t)a6 cellProvider:(id)a7;
- (id)miniGridViewForListIndex:(unint64_t)a3 listLayout:(id)a4 traitCollection:(id)a5 options:(unint64_t)a6;
- (id)objectWithUniqueIdentifier:(id)a3;
- (id)prependIcon:(id)a3 options:(unint64_t)a4;
- (id)relativePathForIcon:(id)a3 listGridCellInfoOptions:(unint64_t)a4;
- (id)replaceIcon:(id)a3 withIcons:(id)a4 options:(unint64_t)a5;
- (id)replaceIcon:(id)a3 withIcons:(id)a4 options:(unint64_t)a5 listGridCellInfoOptions:(unint64_t)a6;
- (id)replaceLayoutOfListAtIndex:(int64_t)a3 withGridCellInfo:(id)a4 options:(unint64_t)a5;
- (id)resolvedComponentsForUniqueIdentifierPath:(id)a3;
- (id)setListsFromFolder:(id)a3;
- (id)startCoalescingContentChangesForReason:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)validatedGridPathForInsertionGridPath:(id)a3 avoidingFirstList:(BOOL)a4;
- (id)validatedIndexPathForInsertionIndexPath:(id)a3 avoidingFirstList:(BOOL)a4;
- (int64_t)firstIndexOfListPassingTest:(id)a3;
- (int64_t)firstVisibleListIndex;
- (int64_t)hiddenIndexOfList:(id)a3;
- (int64_t)hiddenListCount;
- (int64_t)iconCount;
- (int64_t)indexOfList:(id)a3;
- (int64_t)indexOfListContainingIcon:(id)a3;
- (int64_t)indexOfListWithIdentifier:(id)a3;
- (int64_t)lastVisibleListIndex;
- (int64_t)listCount;
- (int64_t)nextListIndexAfterIndex:(int64_t)a3;
- (int64_t)nextVisibleListIndexAfterIndex:(int64_t)a3;
- (int64_t)precedingListIndexBeforeIndex:(int64_t)a3;
- (int64_t)precedingVisibleListIndexBeforeIndex:(int64_t)a3;
- (int64_t)trailingEmptyListCount;
- (int64_t)visibleIconCount;
- (int64_t)visibleIndexOfList:(id)a3;
- (int64_t)visibleListCount;
- (int64_t)visibleWidgetIconCount;
- (void)_addList:(id)a3;
- (void)_didAddList:(id)a3 informObservers:(BOOL)a4;
- (void)_didRemoveList:(id)a3 atIndex:(int64_t)a4 informObservers:(BOOL)a5;
- (void)_setLists:(id)a3;
- (void)_swapInsertIcons:(id)a3 atIndexPaths:(id)a4;
- (void)_swapRestoreIconCount:(int64_t)a3 toLocation:(id)a4;
- (void)_willRemoveList:(id)a3 atIndex:(int64_t)a4 informObservers:(BOOL)a5;
- (void)addIconsOfClass:(Class)a3 toSet:(id)a4;
- (void)addIconsPassingTest:(id)a3 toSet:(id)a4;
- (void)compactOverflowLists;
- (void)compactOverflowListsAndRemoveEmptyLists:(BOOL)a3;
- (void)compactOverflowListsWithoutMovingIconsPassingTest:(id)a3;
- (void)enumerateAllIconsUsingBlock:(id)a3;
- (void)enumerateAllIconsWithBaseIndexPath:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateAllIconsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateListsNearestToList:(id)a3 usingBlock:(id)a4;
- (void)enumerateListsUsingBlock:(id)a3;
- (void)enumerateListsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5;
- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didInvalidateLayoutWithGridCellInfoOptions:(unint64_t)a4;
- (void)iconList:(id)a3 didMoveIcon:(id)a4;
- (void)iconList:(id)a3 didRemoveIcon:(id)a4;
- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)iconList:(void *)a3 willAddIcon:(void *)a4;
- (void)iconListHiddenDidChange:(id)a3;
- (void)iconListHiddenWillChange:(id)a3;
- (void)markIconStateClean;
- (void)markIconStateDirty;
- (void)moveListAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)pruneEmptyFolders;
- (void)removeAllLists;
- (void)removeHiddenLists;
- (void)removeIcon:(id)a3 options:(unint64_t)a4 listGridCellInfoOptions:(unint64_t)a5;
- (void)removeIcons:(id)a3 options:(unint64_t)a4;
- (void)removeIcons:(id)a3 options:(unint64_t)a4 listGridCellInfoOptions:(unint64_t)a5;
- (void)removeLastList;
- (void)removeLeastRecentlyHiddenList;
- (void)removeList:(id)a3;
- (void)removeListAtIndex:(int64_t)a3;
- (void)removeListsAtIndexes:(id)a3;
- (void)replaceIconAtGridPath:(id)a3 withIcon:(id)a4 options:(unint64_t)a5;
- (void)setBadgeBehaviorProvider:(id)a3;
- (void)setCancelable:(BOOL)a3;
- (void)setDefaultDisplayName:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setListAllowedGridSizeClasses:(id)a3;
- (void)setListRotatedLayoutClusterGridSizeClass:(id)a3;
- (void)setListWithNonDefaultSizedIconsGridSize:(SBHIconGridSize)a3;
- (void)setListsAllowIndependentRotatedLayout:(BOOL)a3;
- (void)setListsAllowRotatedLayout:(BOOL)a3;
- (void)setListsFixedIconLocationBehavior:(int64_t)a3;
- (void)setListsIconDisplacementBehavior:(int64_t)a3;
- (void)setListsIconLayoutBehavior:(unint64_t)a3;
- (void)swapIcon:(id)a3 withIcon:(id)a4 options:(unint64_t)a5;
@end

@implementation SBFolder

- (NSArray)lists
{
  swift_beginAccess();
  sub_1BEB20D28(0, &qword_1EBDBFF10);

  v2 = sub_1BEE4719C();

  return v2;
}

- (BOOL)containsIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1BEB3055C(v4);

  return self & 1;
}

- (void)enumerateAllIconsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v8[2] = v6;
  v7 = self;
  sub_1BEB30868(a3, sub_1BEDFBDF4, v8);
  _Block_release(v6);
}

- (void)enumerateAllIconsWithBaseIndexPath:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _Block_copy(a5);
  sub_1BEE4697C();
  v15 = v12;
  v13 = self;
  sub_1BEB3102C(v11, a4, sub_1BEB31FD0, v14);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (NSString)badge
{
  v2 = self;
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
  v2 = self;
  v3 = [(SBFolder *)v2 parentFolder];
  v4 = v2;
  if (v3)
  {
    v5 = v2;
    do
    {
      v4 = v3;

      v3 = [(SBFolder *)v4 parentFolder];
      v5 = v4;
    }

    while (v3);
  }

  return v4;
}

- (SBFolder)parentFolder
{
  v2 = self;
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
  v2 = self;
  v3 = [(SBFolder *)v2 gridSizeClassDomain];
  if (!v3)
  {
    v3 = [objc_opt_self() globalDomain];
  }

  return v3;
}

- (BOOL)hasVisibleLists
{
  v2 = self;
  v3 = sub_1BEB36E2C();

  return v3 & 1;
}

- (id)indexPathForIconWithIdentifier:(id)a3
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
  v15 = self;

  [(SBFolder *)v15 enumerateListsWithOptions:1 usingBlock:v14];
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

- (id)indexPathForIcon:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = a3;
  v9 = self;
  v10 = [v8 uniqueIdentifier];
  if (!v10)
  {
    sub_1BEE4708C();
    v10 = sub_1BEE4705C();
  }

  v11 = [(SBFolder *)v9 indexPathForIconWithIdentifier:v10];

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

- (void)enumerateAllIconsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
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
  v7 = self;

  [(SBFolder *)v7 enumerateAllIconsWithOptions:0 usingBlock:v6];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v4);
  if (v7)
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
  v2 = self;
  sub_1BEB520B4();
}

- (id)startCoalescingContentChangesForReason:(id)a3
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  v7 = self;
  v8 = sub_1BEB51780(v4, v6);

  return v8;
}

- (BOOL)compactLists
{
  v2 = self;
  v3 = sub_1BEE4705C();
  v4 = [(SBFolder *)v2 startCoalescingContentChangesForReason:v3];

  [(SBFolder *)v2 compactOverflowLists];
  LOBYTE(v3) = sub_1BEB53078([(SBFolder *)v2 compactsFirstList]);
  [v4 invalidate];

  swift_unknownObjectRelease();
  return v3 & 1;
}

- (void)markIconStateDirty
{
  v2 = *(self + OBJC_IVAR___SBFolder__isIconStateDirty);
  *(self + OBJC_IVAR___SBFolder__isIconStateDirty) = 1;
  v3 = self;
  sub_1BEB53D74(v2);
}

- (SBIconListModel)firstList
{
  v2 = self;
  v3 = [(SBFolder *)v2 lists];
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

- (void)iconList:(void *)a3 willAddIcon:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1BEDFAAB8(v7, &selRef_folder_willAddIcon_);
}

- (id)miniGridViewForListIndex:(unint64_t)a3 gridSize:(SBHIconGridSize)a4 iconImageInfo:(SBIconImageInfo *)a5 cellSpacing:(CGSize)a6 imageAppearance:(id)a7 options:(unint64_t)a8 cellProvider:(id)a9
{
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  height = a6.height;
  width = a6.width;
  v23 = a8;
  v24 = a5;
  v25 = [(SBFolder *)self listAtIndex:a3];
  v26 = [v25 miniGridViewWithIconImageInfo:v24 cellSpacing:a7 imageAppearance:v23 options:width cellProvider:{height, v18, v17, v16, v15}];

  return v26;
}

- (id)miniGridViewForListIndex:(unint64_t)a3 listLayout:(id)a4 traitCollection:(id)a5 options:(unint64_t)a6
{
  v10 = MEMORY[0x1E69DD1B8];
  v11 = a4;
  v12 = [v10 sbh_iconImageAppearanceFromTraitCollection:a5];
  v13 = [(SBFolder *)self miniGridViewForListIndex:a3 listLayout:v11 imageAppearance:v12 options:a6];

  return v13;
}

- (id)miniGridViewForListIndex:(unint64_t)a3 listLayout:(id)a4 imageAppearance:(id)a5 options:(unint64_t)a6 cellProvider:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = [(SBFolder *)self listAtIndex:a3];
  v16 = [v15 miniGridViewWithListLayout:v14 imageAppearance:v13 options:a6 cellProvider:v12];

  return v16;
}

- (SBFolder)initWithUniqueIdentifier:(id)a3 displayName:(id)a4 maxListCount:(int64_t)a5 listGridSize:(SBHIconGridSize)a6 iconGridSizeClassSizes:(id)a7
{
  if (a3)
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
  return sub_1BEDD4010(v10, v12, v13, v14, a5, *&a6, a7);
}

- (SBFolder)initWithDisplayName:(id)a3 maxListCount:(int64_t)a4 listGridSize:(SBHIconGridSize)a5
{
  v9 = objc_allocWithZone(SBHIconGridSizeClassSizeMap);
  v10 = a3;
  v11 = [v9 init];
  v12 = [(SBFolder *)self initWithUniqueIdentifier:0 displayName:v10 maxListCount:a4 listGridSize:*&a5 iconGridSizeClassSizes:v11];

  return v12;
}

- (SBFolder)initWithUniqueIdentifier:(id)a3 displayName:(id)a4 maxListCount:(int64_t)a5 listGridSize:(SBHIconGridSize)a6
{
  if (a3)
  {
    sub_1BEE4708C();
    v10 = a4;
    v11 = sub_1BEE4705C();
  }

  else
  {
    v12 = a4;
    v11 = 0;
  }

  v13 = [objc_allocWithZone(SBHIconGridSizeClassSizeMap) init];
  v14 = [(SBFolder *)self initWithUniqueIdentifier:v11 displayName:a4 maxListCount:a5 listGridSize:*&a6 iconGridSizeClassSizes:v13];

  return v14;
}

- (SBFolder)initWithDisplayName:(id)a3 maxListCount:(int64_t)a4 maxIconCountInLists:(int64_t)a5
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else if (!(a5 >> 16))
  {
    v8 = self;
    v9 = objc_allocWithZone(SBHIconGridSizeClassSizeMap);
    v10 = a3;
    v11 = [v9 init];
    v12 = [(SBFolder *)v8 initWithUniqueIdentifier:0 displayName:v10 maxListCount:a4 listGridSize:a5 | 0x10000 iconGridSizeClassSizes:v11];

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

- (void)setDefaultDisplayName:(id)a3
{
  if (a3)
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

- (void)setDisplayName:(id)a3
{
  v4 = sub_1BEE4708C();
  v5 = (self + OBJC_IVAR___SBFolder_displayName);
  v6 = *(self + OBJC_IVAR___SBFolder_displayName);
  v7 = *(self + OBJC_IVAR___SBFolder_displayName + 8);
  *v5 = v4;
  v5[1] = v8;
  v9 = self;
  sub_1BEDD5240(v6, v7);
}

- (void)setCancelable:(BOOL)a3
{
  v4 = self;
  sub_1BEDD5488(a3);
}

- (BOOL)isRootFolder
{
  sub_1BEB20D28(0, &qword_1EBDBFE90);
  v3 = self;
  v4 = [(SBFolder *)v3 rootFolder];
  v5 = sub_1BEE473CC();

  return v5 & 1;
}

- (int64_t)listCount
{
  v2 = self;
  v3 = [(SBFolder *)v2 lists];
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
  v2 = self;
  v3 = [(SBFolder *)v2 lists];
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

- (id)listAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = [(SBFolder *)v4 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v6 = sub_1BEE471AC();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1BFB4EA90](a3, v6);
    goto LABEL_5;
  }

  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = *(v6 + 8 * a3 + 32);
LABEL_5:
  v9 = v8;

  return v9;
}

- (int64_t)indexOfList:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBFolder *)v5 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v7 = sub_1BEE471AC();

  v8 = sub_1BEB31AEC(v4, v7, &qword_1EBDBFF10);
  v10 = v9;

  if (v10)
  {
    v8 = sub_1BEE467EC();
  }

  return v8;
}

- (int64_t)indexOfListWithIdentifier:(id)a3
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  v7 = self;
  v8 = sub_1BEDD59E8(v4, v6);

  return v8;
}

- (int64_t)nextListIndexAfterIndex:(int64_t)a3
{
  v4 = self;
  result = [(SBFolder *)v4 isValidListIndex:a3];
  if (result)
  {
    if ([(SBFolder *)v4 isExtraListIndex:a3])
    {
      goto LABEL_5;
    }

    result = [(SBFolder *)v4 listCount];
    v6 = __OFADD__(a3, 1);
    v7 = a3 + 1;
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

- (int64_t)precedingListIndexBeforeIndex:(int64_t)a3
{
  v4 = self;
  result = [(SBFolder *)v4 isValidListIndex:a3];
  if (result)
  {
    if ([(SBFolder *)v4 isExtraListIndex:a3]|| (v6 = a3 < 1, v7 = a3 - 1, v6))
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

- (int64_t)indexOfListContainingIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEDD62C8(v4);

  return v6;
}

- (id)listContainingIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEDD6480(v4);

  return v6;
}

- (BOOL)isValidListIndex:(int64_t)a3
{
  v4 = self;
  if ([(SBFolder *)v4 listCount]<= a3)
  {
    v5 = [(SBFolder *)v4 isExtraListIndex:a3];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isValidIndexPath:(id)a3
{
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v8 = self;
  v9 = sub_1BEE4696C();
  v10 = [(SBFolder *)v8 isValidIndexPath:v9 forInsertion:0];

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (BOOL)isValidIndexPath:(id)a3 forInsertion:(BOOL)a4
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v10 = self;
  v11 = sub_1BEDD6818(v9, a4);

  (*(v7 + 8))(v9, v6);
  return v11 & 1;
}

- (int64_t)visibleListCount
{
  v2 = self;
  v3 = sub_1BEDD6D50();

  return v3;
}

- (int64_t)hiddenListCount
{
  v2 = self;
  v3 = sub_1BEDD6EBC();

  return v3;
}

- (BOOL)hasMultipleVisibleLists
{
  v2 = self;
  v3 = sub_1BEDD7024();

  return v3 & 1;
}

- (BOOL)hasMultipleVisibleListsExcludingTrailingEmptyLists
{
  v2 = self;
  v3 = sub_1BEDD71A8();

  return v3 & 1;
}

- (BOOL)hasHiddenLists
{
  v2 = self;
  v3 = sub_1BEDD7394();

  return v3 & 1;
}

- (int64_t)visibleIndexOfList:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEDD74CC(v4);

  return v6;
}

- (int64_t)hiddenIndexOfList:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEDD76B0(v4);

  return v6;
}

- (id)listAtVisibleIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BEDD792C(a3);

  return v5;
}

- (int64_t)nextVisibleListIndexAfterIndex:(int64_t)a3
{
  v4 = self;
  sub_1BEDD7B70(a3);
  v6 = v5;

  return v6;
}

- (int64_t)precedingVisibleListIndexBeforeIndex:(int64_t)a3
{
  v4 = self;
  sub_1BEDD7C8C(a3);
  v6 = v5;

  return v6;
}

- (int64_t)firstVisibleListIndex
{
  v2 = self;
  v3 = sub_1BEDD7DE0();

  return v3;
}

- (int64_t)lastVisibleListIndex
{
  v2 = self;
  v3 = sub_1BEDD7F60();

  return v3;
}

- (BOOL)isVisibleListIndex:(int64_t)a3
{
  v4 = self;
  v5 = [(SBFolder *)v4 listAtIndex:a3];
  v6 = [v5 isHidden];

  return v6 ^ 1;
}

- (SBIconListModel)leastRecentlyHiddenList
{
  v2 = self;
  sub_1BEDD8264(MEMORY[0x1E6969468]);
  v4 = v3;

  return v4;
}

- (SBIconListModel)mostRecentlyHiddenList
{
  v2 = self;
  sub_1BEDD8264(MEMORY[0x1E6969460]);
  v4 = v3;

  return v4;
}

- (void)_didAddList:(id)a3 informObservers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1BEDD8550(v6, v4);
}

- (void)_addList:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEDDA1A0(v4);
}

- (Class)listModelClass
{
  sub_1BEB20D28(0, &qword_1EBDBFF10);

  return swift_getObjCClassFromMetadata();
}

- (id)makeNewList
{
  v2 = self;
  v3 = sub_1BEDDA468();

  return v3;
}

- (id)makeNewListWithIcon:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(SBFolder *)v4 makeNewList];
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (id)makeNewListWithIcons:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBFolder *)v5 makeNewList];
  v7 = [v6 addIcons_];

  return v6;
}

- (id)addEmptyList
{
  v2 = self;
  v3 = sub_1BEDDA6D4();

  return v3;
}

- (id)addEmptyListRemovingLeastRecentlyHiddenListIfNecessary
{
  v2 = self;
  v3 = [(SBFolder *)v2 addEmptyList];
  if (!v3)
  {
    [(SBFolder *)v2 removeLeastRecentlyHiddenList];
    v3 = [(SBFolder *)v2 addEmptyList];
  }

  return v3;
}

- (id)insertEmptyListAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BEDDAA14(a3);

  return v5;
}

- (id)addListWithIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEDDB04C(v4);

  return v6;
}

- (id)addListWithIcons:(id)a3
{
  v3 = [(SBFolder *)self addListWithIcons:a3 removingHiddenListsIfNecessary:0];

  return v3;
}

- (id)addListWithIcons:(id)a3 removingHiddenListsIfNecessary:(BOOL)a4
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE471AC();
  v7 = self;
  v8 = sub_1BEDDB3D4(v6, a4);

  return v8;
}

- (void)removeList:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BEE8AF50;
  *(inited + 32) = a3;
  v6 = a3;
  v7 = self;
  sub_1BEB50DA8(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
}

- (void)removeListAtIndex:(int64_t)a3
{
  v4 = self;
  if ([(SBFolder *)v4 isValidListIndex:a3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AF50;
    *(inited + 32) = [(SBFolder *)v4 listAtIndex:a3];
    sub_1BEB50DA8(inited);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    __break(1u);
  }
}

- (void)removeListsAtIndexes:(id)a3
{
  v4 = sub_1BEE4695C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4690C();
  v8 = self;
  sub_1BEDDB8BC();

  (*(v5 + 8))(v7, v4);
}

- (void)removeLastList
{
  v6 = self;
  v2 = [(SBFolder *)v6 lastList];
  if (v2)
  {
    v3 = v2;
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
  v4 = self;
  v2 = [(SBFolder *)v4 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v3 = sub_1BEE471AC();

  sub_1BEB50DA8(v3);
}

- (void)removeHiddenLists
{
  v2 = self;
  sub_1BEDDBE08();
}

- (void)removeLeastRecentlyHiddenList
{
  v2 = self;
  sub_1BEDDC034();
}

- (void)_willRemoveList:(id)a3 atIndex:(int64_t)a4 informObservers:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_1BEDDC1B4(v8, a4, a5);
}

- (void)_didRemoveList:(id)a3 atIndex:(int64_t)a4 informObservers:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_1BEDDC464(v8, a4, a5);
}

- (void)_setLists:(id)a3
{
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();
  v5 = self;
  sub_1BEDDCA30(v4);
}

- (void)moveListAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  v6 = self;
  sub_1BEDDCCF0(a3, a4);
}

- (id)changeGridSizeOfList:(id)a3 toGridSize:(SBHIconGridSize)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_1BEDDD084(v8, *&a4, a5);

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

- (id)changeGridSizeOfListAtIndex:(int64_t)a3 toGridSize:(SBHIconGridSize)a4 options:(unint64_t)a5
{
  v8 = self;
  v9 = [(SBFolder *)v8 listAtIndex:a3];
  v10 = [(SBFolder *)v8 changeGridSizeOfList:v9 toGridSize:*&a4 options:a5];
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

- (id)setListsFromFolder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEDDD370(v4);
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

- (id)replaceLayoutOfListAtIndex:(int64_t)a3 withGridCellInfo:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = self;
  v10 = sub_1BEDDDACC(a3, v8, a5);

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
  v2 = self;
  v3 = sub_1BEE4705C();
  v4 = [(SBFolder *)v2 startCoalescingContentChangesForReason:v3];

  [(SBFolder *)v2 compactOverflowLists];
  LOBYTE(v3) = sub_1BEB53078(1);
  [v4 invalidate];

  swift_unknownObjectRelease();
  return v3 & 1;
}

- (void)compactOverflowListsAndRemoveEmptyLists:(BOOL)a3
{
  v4 = self;
  sub_1BEDDE0AC(a3);
}

- (void)compactOverflowListsWithoutMovingIconsPassingTest:(id)a3
{
  v4 = _Block_copy(a3);
  v6[2] = v4;
  v5 = self;
  sub_1BEDDE260(sub_1BEDFBF28, v6);
  _Block_release(v4);
}

- (void)pruneEmptyFolders
{
  v2 = self;
  sub_1BEDDE424();
}

- (int64_t)trailingEmptyListCount
{
  v2 = self;
  v3 = sub_1BEDDE7F4();

  return v3;
}

- (BOOL)isTrailingEmptyListIndex:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1BEDDE930(a3);

  return a3 & 1;
}

- (BOOL)isTrailingEmptyList:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1BEDDEE0C(v4);

  return self & 1;
}

- (int64_t)iconCount
{
  v2 = self;
  v3 = sub_1BEDDEFEC(0);

  return v3;
}

- (int64_t)visibleIconCount
{
  v2 = self;
  v3 = sub_1BEDDEFEC(2);

  return v3;
}

- (BOOL)isEmpty
{
  v2 = self;
  v3 = sub_1BEDDF1C0();

  return v3;
}

- (BOOL)isFull
{
  v2 = self;
  v3 = sub_1BEDDF320();

  return v3;
}

- (BOOL)containsOneIcon
{
  v2 = self;
  v3 = sub_1BEDDF4FC();

  return v3 & 1;
}

- (id)iconsOfClass:(Class)a3
{
  swift_getObjCClassMetadata();
  v4 = self;
  sub_1BEDDF674();

  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  v5 = sub_1BEE4724C();

  return v5;
}

- (void)addIconsOfClass:(Class)a3 toSet:(id)a4
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = a4;
  v8 = self;
  sub_1BEDDF868(ObjCClassMetadata, v7);
}

- (void)addIconsPassingTest:(id)a3 toSet:(id)a4
{
  v6 = _Block_copy(a3);
  v12[2] = v6;
  v7 = swift_allocObject();
  v7[2] = sub_1BEDFBDEC;
  v7[3] = v12;
  v7[4] = a4;
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
  v10 = a4;
  v11 = self;

  [(SBFolder *)v11 enumerateAllIconsWithOptions:1 usingBlock:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v6);

  if (v9)
  {
    __break(1u);
  }
}

- (id)iconsPassingTest:(id)a3
{
  v4 = _Block_copy(a3);
  v8[2] = v4;
  v5 = self;
  sub_1BEDDFCE0(sub_1BEDFBDEC, v8);
  _Block_release(v4);

  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  v6 = sub_1BEE4724C();

  return v6;
}

- (id)applicationIconsWithBundleIdentifier:(id)a3
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  v7 = self;
  sub_1BEDE0418(v4, v6);

  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  sub_1BEB2A7E0(&qword_1EBDC7A58, &unk_1EBDBFFD0);
  v8 = sub_1BEE4724C();

  return v8;
}

- (SBIcon)firstIcon
{
  v2 = self;
  v3 = sub_1BEDE157C();

  return v3;
}

- (BOOL)containsIconWithIdentifier:(id)a3
{
  v3 = [(SBFolder *)self iconWithIdentifier:a3];

  return v3 != 0;
}

- (BOOL)containsIconPassingTest:(id)a3
{
  v4 = _Block_copy(a3);
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
  v7 = self;

  v8 = [(SBFolder *)v7 firstIconPassingTest2:v6];

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

- (BOOL)containsWidgetWithExtensionBundleIdentifier:(id)a3
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1BEDE188C(v4, v6);

  return v4 & 1;
}

- (BOOL)hasFixedIconLocations
{
  v2 = self;
  v3 = sub_1BEDE1B00();

  return v3 & 1;
}

- (id)handleBumpedIcons:(id)a3 afterInsertingIconIntoListAtIndex:(int64_t)a4 listGridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v9 = a3;
  if (a3)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v9 = sub_1BEE471AC();
  }

  v11 = self;
  v12 = [(SBFolder *)v11 listAtIndex:a4];
  v13 = v12;
  v14 = sub_1BEDD8B4C(v9, v12, a5, a6);

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

- (BOOL)canBounceIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBFolder *)v5 parentFolder];
  if (v6)
  {
    v7 = v6;
    v8 = [(SBFolder *)v6 canBounceIcon:v4];
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

- (void)setBadgeBehaviorProvider:(id)a3
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
  v8 = self;
  swift_unknownObjectRetain();

  [(SBFolder *)v8 enumerateAllIconsUsingBlock:v7];
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
  v2 = self;
  v3 = sub_1BEDE22D4();

  return v3;
}

- (id)indexPathForFirstFreeSlotAvoidingFirstList:(BOOL)a3
{
  v3 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = self;
  sub_1BEDE2988(v3, v7);

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

- (id)indexPathForFirstFreeSlotStartingAtList:(id)a3 avoidingFirstList:(BOOL)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = a3;
  v11 = self;
  sub_1BEDE2CFC(a3, a4, v9);

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
  v9 = self;
  v10 = [(SBFolder *)v9 indexPathForFirstFreeSlotAvoidingFirstList:0];
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

- (id)validatedIndexPathForInsertionIndexPath:(id)a3 avoidingFirstList:(BOOL)a4
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1BEE4697C();
  v13 = self;
  sub_1BEDE3404(v9, a4, v12);

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

- (id)validatedGridPathForInsertionGridPath:(id)a3 avoidingFirstList:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  v8 = [(SBFolder *)v7 listAtGridPath:v6];
  if (v8)
  {

    v9 = -[SBFolder gridPathForFirstFreeSlotAvoidingFirstList:listGridCellInfoOptions:](v7, sel_gridPathForFirstFreeSlotAvoidingFirstList_listGridCellInfoOptions_, v4, [v6 gridCellInfoOptions]);
    v6 = v9;
  }

  return v6;
}

- (id)gridPathForFirstFreeSlotAvoidingFirstList:(BOOL)a3 listGridCellInfoOptions:(unint64_t)a4
{
  v6 = self;
  sub_1BEDE3EA8(a3, a4);
  v8 = v7;

  return v8;
}

- (id)gridPathForFirstFreeSlotOfRangeOfSizeClass:(id)a3 avoidingFirstList:(BOOL)a4 listGridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_1BEDE43E8(v8, a4, a5);
  v11 = v10;

  return v11;
}

- (id)gridPathForFirstFreeSlotStartingAtList:(id)a3 avoidingFirstList:(BOOL)a4 listGridCellInfoOptions:(unint64_t)a5
{
  v9 = a3;
  v10 = self;
  sub_1BEDE4934(a3, a4, a5);
  v12 = v11;

  return v12;
}

- (id)gridPathForFirstFreeSlotOfRangeOfSizeClass:(id)a3 startingAtList:(id)a4 listGridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1BEDE4FA4(v8, a4, a5);
  v12 = v11;

  return v12;
}

- (void)enumerateListsNearestToList:(id)a3 usingBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1BEDF9C98(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)indexPathForNodeIdentifier:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = self;
  v12 = [(SBFolder *)v11 indexPathForIconWithIdentifier:a3];
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

- (id)indexesOfListsPassingTest:(id)a3
{
  v5 = sub_1BEE4695C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _Block_copy(a3);
  v14 = v9;
  v10 = self;
  sub_1BEDE5C50(sub_1BEDFBF28, v13, v8);
  _Block_release(v9);

  v11 = sub_1BEE468FC();
  (*(v6 + 8))(v8, v5);

  return v11;
}

- (int64_t)firstIndexOfListPassingTest:(id)a3
{
  v4 = _Block_copy(a3);
  v8[2] = v4;
  v5 = self;
  v6 = sub_1BEDE5FA4(sub_1BEDFB7E0, v8);
  _Block_release(v4);

  return v6;
}

- (id)gridPathForIcon:(id)a3 listGridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1BEDE6188(v6, a4);

  return v8;
}

- (id)relativePathForIcon:(id)a3 listGridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1BEDE63DC(v6, a4);
  v9 = v8;

  return v9;
}

- (id)gridPathForRelativePath:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEDE6BAC(v4);

  return v6;
}

- (id)gridPathForIndexPath:(id)a3 listGridCellInfoOptions:(unint64_t)a4
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v10 = self;
  v11 = sub_1BEDE7188(v9, a4);

  (*(v7 + 8))(v9, v6);

  return v11;
}

- (id)gridPathsForIndexPaths:(id)a3 listGridCellInfoOptions:(unint64_t)a4
{
  sub_1BEE469DC();
  v6 = sub_1BEE471AC();
  v7 = self;
  sub_1BEDE74AC(v6, a4);

  sub_1BEB20D28(0, &qword_1EBDC7A30);
  sub_1BEB49FBC(&qword_1EBDC7A38, MEMORY[0x1E6969C28]);
  v8 = sub_1BEE4700C();

  return v8;
}

- (id)gridPathWithListAtIndex:(int64_t)a3 gridCellIndex:(int64_t)a4 listGridCellInfoOptions:(unint64_t)a5
{
  v8 = self;
  v9 = [(SBFolder *)v8 listAtIndex:a3];
  v10 = [(SBFolder *)v8 gridPathWithList:v9 gridCellIndex:a4 listGridCellInfoOptions:a5];

  return v10;
}

- (id)gridPathWithListAtIndexPath:(id)a3 gridCellIndex:(int64_t)a4 listGridCellInfoOptions:(unint64_t)a5
{
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v12 = self;
  v13 = sub_1BEE4696C();
  v14 = [(SBFolder *)v12 listAtIndexPath:v13];

  v15 = [(SBFolder *)v12 gridPathWithList:v14 gridCellIndex:a4 listGridCellInfoOptions:a5];
  (*(v9 + 8))(v11, v8);

  return v15;
}

- (id)gridPathWithList:(id)a3 gridCellIndex:(int64_t)a4 listGridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_1BEDE7CB4(v8, a4, a5);

  return v10;
}

- (id)folderContainingIndexPath:(id)a3
{
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v8 = self;
  v9 = sub_1BEE4696C();
  v10 = [(SBFolder *)v8 folderContainingIndexPath:v9 relativeIndexPath:0];

  (*(v5 + 8))(v7, v4);

  return v10;
}

- (id)firstFolderWithUniqueIdentifier:(id)a3 displayName:(id)a4 defaultDisplayName:(id)a5
{
  v6 = a4;
  if (a3)
  {
    v8 = sub_1BEE4708C();
    v10 = v9;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_1BEE4708C();
  v6 = v12;
  if (a5)
  {
LABEL_4:
    v13 = sub_1BEE4708C();
    a5 = v14;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  v15 = self;
  v16 = sub_1BEDE958C(v8, v10, v11, v6, v13, a5);

  return v16;
}

- (id)resolvedComponentsForUniqueIdentifierPath:(id)a3
{
  v4 = sub_1BEE471AC();
  v5 = self;
  sub_1BEDEA0E8(v4);

  v6 = sub_1BEE4719C();

  return v6;
}

- (id)listWithIdentifier:(id)a3 inFolderWithIdentifier:(id)a4
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  if (a4)
  {
    v9 = sub_1BEE4708C();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12 = sub_1BEDEA7E0(v6, v8, v9, a4);

  return v12;
}

- (id)listAtGridPath:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 folderIdentifier];
  v7 = [v4 listIdentifier];
  if (!v7)
  {
    sub_1BEE4708C();
    v7 = sub_1BEE4705C();
  }

  v8 = [(SBFolder *)v5 listWithIdentifier:v7 inFolderWithIdentifier:v6];

  return v8;
}

- (id)iconAtGridPath:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBFolder *)v5 listAtGridPath:v4];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 iconAtGridCellIndex:objc_msgSend(v4 gridCellInfoOptions:{sel_gridCellIndex), objc_msgSend(v4, sel_gridCellInfoOptions)}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsWidgetIcon
{
  v2 = self;
  v3 = sub_1BEDEAB20();

  return v3 & 1;
}

- (BOOL)containsVisibleWidgetIcon
{
  v2 = self;
  v3 = sub_1BEDEACB4();

  return v3 & 1;
}

- (int64_t)visibleWidgetIconCount
{
  v2 = self;
  v3 = sub_1BEDEAEA0();

  return v3;
}

- (BOOL)containsNonDefaultSizedIcon
{
  v2 = self;
  v3 = sub_1BEDEB088();

  return v3 & 1;
}

- (BOOL)containsVisibleNonDefaultSizedIcon
{
  v2 = self;
  v3 = sub_1BEDEB21C();

  return v3 & 1;
}

- (void)enumerateListsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
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
  v7 = self;

  [(SBFolder *)v7 enumerateListsWithOptions:0 usingBlock:v6];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v4);
  if (v7)
  {
    __break(1u);
  }
}

- (void)enumerateListsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1BEDF9E30(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (BOOL)isExtraList:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1BEDEBB60(v4);

  return self & 1;
}

- (id)insertIcon:(id)a3 atIndexPath:(id)a4 options:(unint64_t)a5
{
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v12 = a3;
  v13 = self;
  v14 = sub_1BEDEC21C(v12, v11, a5);

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

- (id)insertIcons:(id)a3 atIndexPath:(id)a4 options:(unint64_t)a5
{
  v7 = sub_1BEE469DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v11 = sub_1BEE471AC();
  sub_1BEE4697C();
  v12 = self;
  v13 = sub_1BEDEC798(v11, v10, a5);

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

- (id)insertIcon:(id)a3 atGridPath:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = sub_1BEDECB6C(v8, v9, a5);

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

- (id)insertIcons:(id)a3 atGridPath:(id)a4 options:(unint64_t)a5
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v8 = sub_1BEE471AC();
  v9 = a4;
  v10 = self;
  v11 = sub_1BEDED0A0(v8, v9, a5);

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

- (void)replaceIconAtGridPath:(id)a3 withIcon:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v12 = self;
  v10 = [(SBFolder *)v12 iconAtGridPath:v8];
  if (v10)
  {
    v11 = v10;
    [(SBFolder *)v12 replaceIcon:v10 withIcon:v9 options:a5];
  }

  else
  {
    v11 = [(SBFolder *)v12 insertIcon:v9 atGridPath:v8 options:a5];
  }
}

- (BOOL)replaceIcon:(id)a3 withIcon:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1BEDED8EC(v8, v9, a5);

  return 1;
}

- (id)replaceIcon:(id)a3 withIcons:(id)a4 options:(unint64_t)a5
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v8 = sub_1BEE471AC();
  v9 = a3;
  v10 = self;
  v11 = sub_1BEDEDD20(v9, v8, a5);

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

- (id)replaceIcon:(id)a3 withIcons:(id)a4 options:(unint64_t)a5 listGridCellInfoOptions:(unint64_t)a6
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v10 = sub_1BEE471AC();
  v11 = a3;
  v12 = self;
  v13 = sub_1BEDEE20C(v11, v10, a5, a6);

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

- (id)addIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBFolder *)v5 addIcon:v4 options:0 listGridCellInfoOptions:0];
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

- (id)addIcon:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = [(SBFolder *)v7 addIcon:v6 options:a4 listGridCellInfoOptions:0];
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

- (id)addIcons:(id)a3
{
  v4 = self;
  v5 = [(SBFolder *)v4 addIcons:a3 options:0];
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

- (id)addIcons:(id)a3 options:(unint64_t)a4
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE471AC();
  v7 = self;
  v8 = sub_1BEDEEDF0(v6, a4);

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

- (id)addIcon:(id)a3 toListAtIndex:(int64_t)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = [(SBFolder *)v9 listAtIndex:a4];
  v11 = [(SBFolder *)v9 addIcon:v8 toList:v10 options:a5];
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

- (id)addIcon:(id)a3 toList:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = sub_1BEDEF7C8(v8, v9, a5, 0);

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

- (id)addIcon:(id)a3 toListAtIndex:(int64_t)a4 options:(unint64_t)a5 didBump:(BOOL *)a6
{
  v10 = a3;
  v11 = self;
  v12 = sub_1BEDEFC5C(v10, a4, a5, a6);

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

- (id)prependIcon:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = [(SBFolder *)v7 prependIcon:v6 toListAtIndex:0 options:a4];
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

- (BOOL)canAddIconCount:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1BEDF04D0(a3);

  return a3 & 1;
}

- (BOOL)canAddIcon:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BEE8AF50;
  *(v5 + 32) = a3;
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = a3;
  v7 = self;
  v8 = sub_1BEE4719C();

  v9 = [(SBFolder *)v7 canAddIcons:v8 startingAtList:0];

  return v9;
}

- (BOOL)canAddIcons:(id)a3 startingAtList:(id)a4
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE471AC();
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = sub_1BEDF0874(v6, a4);

  return a4 & 1;
}

- (BOOL)isAllowedToContainIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBFolder *)v5 rootFolder];
  type metadata accessor for SBFolder(v6);
  LOBYTE(self) = sub_1BEE473CC();

  if (self)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 canBeAddedToSubfolder];
  }

  return v7;
}

- (BOOL)isAllowedToContainIcons:(id)a3
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

- (void)swapIcon:(id)a3 withIcon:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1BEDF1204(v8, v9, a5);
}

- (void)removeIcon:(id)a3 options:(unint64_t)a4 listGridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_1BEDF1534(v8, a4, a5);
}

- (void)removeIcons:(id)a3 options:(unint64_t)a4
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

  v9 = self;
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
    [(SBFolder *)v9 removeIcon:v11 options:a4];
  }

LABEL_10:
}

- (void)removeIcons:(id)a3 options:(unint64_t)a4 listGridCellInfoOptions:(unint64_t)a5
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

  v11 = self;
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
    [(SBFolder *)v11 removeIcon:v13 options:a4 listGridCellInfoOptions:a5];
  }

LABEL_10:
}

- (id)changeGridSizeClassOfIconAtGridPath:(id)a3 toGridSizeClass:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = [(SBFolder *)v10 iconAtGridPath:v8];
  if (v11)
  {
    v12 = v11;
    v13 = -[SBFolder changeGridSizeClassOfIcon:toGridSizeClass:options:listGridCellInfoOptions:](v10, sel_changeGridSizeClassOfIcon_toGridSizeClass_options_listGridCellInfoOptions_, v11, v9, a5, [v8 gridCellInfoOptions]);
    if (v13)
    {
      v14 = v13;
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      sub_1BEE471AC();

      v15 = sub_1BEE4719C();

      v16 = v15;
      goto LABEL_7;
    }

    v9 = v10;
  }

  else
  {
    v12 = v10;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (id)changeGridSizeClassOfIconAtIndexPath:(id)a3 toGridSizeClass:(id)a4 options:(unint64_t)a5 listGridCellInfoOptions:(unint64_t)a6
{
  v10 = sub_1BEE469DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v14 = a4;
  v15 = self;
  v16 = sub_1BEE4696C();
  v17 = [(SBFolder *)v15 iconAtIndexPath:v16];

  v18 = [(SBFolder *)v15 changeGridSizeClassOfIcon:v17 toGridSizeClass:v14 options:a5 listGridCellInfoOptions:a6];
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

- (void)_swapInsertIcons:(id)a3 atIndexPaths:(id)a4
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v5 = sub_1BEE471AC();
  sub_1BEE469DC();
  v6 = sub_1BEE471AC();
  v7 = self;
  sub_1BEDF1F40(v5, v6);
}

- (void)_swapRestoreIconCount:(int64_t)a3 toLocation:(id)a4
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v10 = self;
  sub_1BEDF2520(a3);

  (*(v7 + 8))(v9, v6);
}

- (id)objectWithUniqueIdentifier:(id)a3
{
  v3 = [(SBFolder *)self listWithIdentifier:a3];

  return v3;
}

- (BOOL)isIconStateDirty
{
  v2 = self;
  v3 = sub_1BEDF2E94();

  return v3 & 1;
}

- (void)markIconStateClean
{
  v2 = self;
  sub_1BEDF3008();
}

- (NSArray)treeChildren
{
  v2 = self;
  v3 = [(SBFolder *)v2 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();

  sub_1BEE09DE0(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC79F0);
  v5 = sub_1BEE4719C();

  return v5;
}

- (void)setListWithNonDefaultSizedIconsGridSize:(SBHIconGridSize)a3
{
  v4 = self;
  sub_1BEDF320C(*&a3);
}

- (void)setListRotatedLayoutClusterGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEDF33EC(v4);
}

- (void)setListsAllowRotatedLayout:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1BEDF3698(v3);
}

- (void)setListsAllowIndependentRotatedLayout:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1BEDF3870(v3);
}

- (void)setListAllowedGridSizeClasses:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEDF3A50(v4);
}

- (void)setListsFixedIconLocationBehavior:(int64_t)a3
{
  v4 = self;
  sub_1BEDF3C94(a3);
}

- (void)setListsIconDisplacementBehavior:(int64_t)a3
{
  v4 = self;
  sub_1BEDF3E68(a3);
}

- (void)setListsIconLayoutBehavior:(unint64_t)a3
{
  v4 = self;
  sub_1BEDF403C(a3);
}

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  SBFolder.iconList(_:didAdd:)(v6, v7);
}

- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  SBFolder.iconList(_:didReplace:with:)(v8, v9, v10);
}

- (void)iconList:(id)a3 didRemoveIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BEDFA304(v7);
}

- (void)iconList:(id)a3 didMoveIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BEDFAAB8(v7, &selRef_folder_didMoveIcon_);
}

- (void)iconListHiddenWillChange:(id)a3
{
  v4 = a3;
  v5 = self;
  SBFolder.iconListHiddenWillChange(_:)(v4);
}

- (void)iconListHiddenDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  SBFolder.iconListHiddenDidChange(_:)(v4);
}

- (void)iconList:(id)a3 didInvalidateLayoutWithGridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  SBFolder.iconList(_:didInvalidateLayoutWith:)(v6, a4);
}

- (BOOL)iconListModel:(id)a3 isAllowedToContainIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1BEDF519C(v6, v7, &selRef_rootFolder_canAddIcon_toIconList_inFolder_);

  return v9 & 1;
}

- (BOOL)iconListModel:(id)a3 isGridLayoutValid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1BEDF519C(v6, v7, &selRef_rootFolder_isGridLayoutValid_forIconList_inFolder_);

  return v9 & 1;
}

- (id)iconListModel:(id)a3 shouldBounceIcon:(id)a4 afterInsertingIcons:(id)a5
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEE471AC();
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = sub_1BEDF5300(v8, v9);

  return v11;
}

- (id)copyWithZone:(void *)a3
{
  swift_getObjectType();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFolder:self copyLeafIcons:0];
  v4 = sub_1BEE476FC();

  return v4;
}

- (id)copyWithOptions:(unint64_t)a3
{
  swift_getObjectType();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v5 initWithFolder:self options:a3];
}

- (id)succinctDescription
{
  v2 = self;
  result = [(SBFolder *)v2 succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    v5 = [result build];

    if (v5)
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
  v2 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];

  return v2;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    v4 = sub_1BEE4708C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    sub_1BEE4708C();
  }

  v4 = self;
  v5 = sub_1BEDFA7E4();

  return v5;
}

- (NSString)description
{
  v2 = self;
  result = [(SBFolder *)v2 descriptionWithMultilinePrefix:0];
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
  v2 = self;
  sub_1BEDF59F0();

  v3 = sub_1BEE4705C();

  return v3;
}

- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    v6 = sub_1BEE4726C();
  }

  if (a5)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    a5 = sub_1BEE4726C();
  }

  v9 = a3;
  v10 = self;
  sub_1BEDFAC0C(v6, a5);
}

- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1BEDFAE80(v9, v10, &selRef_folder_didReplaceIcon_withIcon_);
}

@end