@interface SBIconListModel
+ (BOOL)isListModelNodeIdentifier:(id)a3;
+ (id)iconGridCellInfoForIcons:(id)a3 gridSize:(SBHIconGridSize)a4 gridSizeClassSizes:(id)a5 iconLayoutBehavior:(unint64_t)a6 referenceIconOrder:(id)a7 fixedIconLocations:(id)a8 options:(unint64_t)a9;
+ (id)listModelNodeIdentifierForUniqueIdentifier:(id)a3;
+ (id)movedIconsWithOriginalOrder:(id)a3 newOrder:(id)a4;
+ (unint64_t)gridCellInfoIconTypeForIcon:(id)a3;
+ (void)applyIconLayoutFromGridCellInfo:(id)a3 inGridRange:(SBHIconGridRange)a4 iconOrder:(id)a5 toGridCellInfo:(id)a6 inGridRange:(SBHIconGridRange)a7 iconOrder:(id)a8;
+ (void)layOutIcons:(id)a3 atIndexes:(id)a4 inGridCellInfo:(id)a5 startingAtGridCellIndex:(unint64_t)a6 gridSize:(SBHIconGridSize)a7 gridSizeClassSizes:(id)a8 iconLayoutBehavior:(unint64_t)a9 referenceIconOrder:(id)a10 fixedIconLocations:(id)a11 options:(unint64_t)a12;
- (BOOL)_canClusterIconsUsingSizeClass:(id)a3;
- (BOOL)_moveContainedIconBySwappingVerticallyWithAdjacentIcons:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (BOOL)_moveContainedIconLargerThanQuadsIfNecessary:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (BOOL)_moveContainedIconUsingAutomaticClusteringIfNecessary:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (BOOL)_moveContainedIconUsingTwoDimensionalMovement:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (BOOL)_moveContainedIconWithinAffectedQuadsIfNecessary:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (BOOL)_validateIconsInArray:(id)a3 matchArray:(id)a4;
- (BOOL)allowsAddingIcon:(id)a3 ignoringPlaceholders:(BOOL)a4;
- (BOOL)allowsAddingIcons:(id)a3 ignoringPlaceholders:(BOOL)a4;
- (BOOL)areAllIconsFixed;
- (BOOL)areIconsInContiguousRegionOfHeterogeneousFixedness:(id)a3 gridCellInfo:(id)a4;
- (BOOL)areIconsInGridRangeFullyContained:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (BOOL)canBounceIcon:(id)a3;
- (BOOL)canUseFastGridLayoutValidity;
- (BOOL)containsIcon:(id)a3;
- (BOOL)containsNodeIdentifier:(id)a3;
- (BOOL)containsWidgetIconWithExtensionBundleIdentifier:(id)a3;
- (BOOL)directlyContainsAnyIconInArray:(id)a3;
- (BOOL)directlyContainsIconOfClass:(Class)a3;
- (BOOL)directlyContainsIconPassingTest:(id)a3;
- (BOOL)directlyContainsIcons:(id)a3;
- (BOOL)getIconGridRange:(SBHIconGridRange *)a3 forGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (BOOL)hasAllFixedIconsInContiguousRegion:(id)a3 gridCellInfo:(id)a4;
- (BOOL)hasContiguousRegionOfFixedIconsAtGridCellIndex:(unint64_t)a3 gridCellInfo:(id)a4;
- (BOOL)hasFixedIconInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (BOOL)hasFixedIconInGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4;
- (BOOL)hasFixedIconLocationsWithGridCellInfo:(id)a3;
- (BOOL)hasFixedIconLocationsWithGridCellInfoOptions:(unint64_t)a3;
- (BOOL)hasFixedIconsInContiguousRegion:(id)a3 gridCellInfo:(id)a4;
- (BOOL)hasFixedIconsInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (BOOL)hasIconsInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (BOOL)isAllowedToContainIcon:(id)a3;
- (BOOL)isAllowedToContainIconGridSizeClass:(id)a3;
- (BOOL)isAllowedToContainIcons:(id)a3;
- (BOOL)isContiguousRegionEligibleForBackfill:(id)a3 gridCellInfo:(id)a4;
- (BOOL)isEligibleForSimpleMutationsWithGridCellInfoOptions:(unint64_t)a3 mutationOptions:(unint64_t)a4;
- (BOOL)isGridLayoutValid:(id)a3;
- (BOOL)isGridLayoutValidWithOptions:(unint64_t)a3;
- (BOOL)isGridLayoutValidWithOptions:(unint64_t)a3 outOfBoundsIcons:(id *)a4;
- (BOOL)isHiddenByUser;
- (BOOL)isIcon:(id)a3 fixedAtGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5;
- (BOOL)isIconFixed:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (BOOL)isIconStateDirty;
- (BOOL)isInsertionFixedForIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 mutationOptions:(unint64_t)a6;
- (BOOL)isInsertionFixedForIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (BOOL)isInsertionFixedForIcon:(id)a3 ofGridSizeClass:(id)a4 atGridCellIndex:(unint64_t)a5 gridCellInfo:(id)a6 mutationOptions:(unint64_t)a7;
- (BOOL)isInsertionFixedForIcon:(id)a3 ofGridSizeClass:(id)a4 atGridCellIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (BOOL)isInsertionFixedForIcon:(id)a3 options:(unint64_t)a4;
- (BOOL)isInsertionFixedForIconGridSizeClass:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (BOOL)isInsertionRequiredToBeFixedForIcon:(id)a3 ofGridSizeClass:(id)a4 atGridCellIndex:(unint64_t)a5 gridCellInfo:(id)a6 mutationOptions:(unint64_t)a7;
- (BOOL)isLayoutReversibleWhenRotated;
- (BOOL)isMoveFixedForIcon:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (BOOL)isValidGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (BOOL)isValidGridRange:(SBHIconGridRange)a3 options:(unint64_t)a4;
- (BOOL)layOutIconsInGridCellInfo:(id)a3 forInsertingIcon:(id)a4 atGridCellIndex:(unint64_t)a5 constrainedToGridRange:(SBHIconGridRange)a6 preferredDisplacementDirection:(unint64_t)a7 gridCellInfo:(id)a8 gridCellInfoOptions:(unint64_t)a9 mutationOptions:(unint64_t)a10;
- (BOOL)needsToReflowIconsForRemovingIcon:(id)a3 inContiguousRegion:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (BOOL)representsSelf:(id)a3;
- (BOOL)shouldUseTwoDimensionalMovementWithGridCellInfo:(id)a3 mutationOptions:(unint64_t)a4;
- (NSArray)treeChildren;
- (SBFolder)folder;
- (SBHIconBadgeBehaviorProviding)badgeBehaviorProvider;
- (SBHIconGridRange)gridRangeForIcon:(id)a3 gridCellInfo:(id)a4;
- (SBHIconGridRange)gridRangeForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (SBHIconGridSize)boundedGridSizeWithOptions:(unint64_t)a3;
- (SBHIconGridSize)gridSizeForGridSizeClass:(id)a3 gridCellInfo:(id)a4;
- (SBHIconGridSize)gridSizeForGridSizeClass:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (SBHIconGridSize)gridSizeForIcon:(id)a3;
- (SBHIconGridSize)gridSizeForIcon:(id)a3 gridCellInfo:(id)a4;
- (SBHIconGridSize)gridSizeForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (SBHIconGridSize)gridSizeWithOptions:(unint64_t)a3;
- (SBHIconGridSize)rotatedGridSizeWithOptions:(unint64_t)a3;
- (SBHIconGridSizeClassDomain)effectiveGridSizeClassDomain;
- (SBIconCoordinate)coordinateForGridCellIndex:(unint64_t)a3 gridCellInfo:(id)a4;
- (SBIconCoordinate)coordinateForGridCellIndex:(unint64_t)a3 gridCellInfoOptions:(unint64_t)a4;
- (SBIconCoordinate)coordinateForIcon:(id)a3 gridCellInfo:(id)a4;
- (SBIconListModel)initWithFolder:(id)a3 gridSize:(SBHIconGridSize)a4;
- (SBIconListModel)initWithFolder:(id)a3 maxIconCount:(unint64_t)a4;
- (SBIconListModel)initWithIconListModel:(id)a3 copyLeafIcons:(BOOL)a4;
- (SBIconListModel)initWithUniqueIdentifier:(id)a3 folder:(id)a4 gridSize:(SBHIconGridSize)a5;
- (SBIconListModel)initWithUniqueIdentifier:(id)a3 folder:(id)a4 gridSize:(SBHIconGridSize)a5 gridSizeClassSizes:(id)a6;
- (SBIconListModelDelegate)delegate;
- (SBIconListModelRotationReorderingInfo)_rotationReorderingInfoWithClusterSizeClass:(SEL)a3 gridCellInfoOptions:(id)a4;
- (SBTreeNode)treeParent;
- (_NSRange)rangeOfDirectlyContainedIconsInRange:(_NSRange)a3 passingTest:(id)a4;
- (id)_checkAndRemoveBouncedIconsAfterChangeToIcons:(id)a3 ignoringTrailingIconCheck:(BOOL)a4 options:(unint64_t)a5;
- (id)_clusterIconsForSizeClass:(id)a3 behavior:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5;
- (id)_clusterIconsForSizeClass:(id)a3 behavior:(unint64_t)a4 gridCellInfoProvider:(id)a5;
- (id)_iconAtIndex:(unint64_t)a3;
- (id)_otherListForGridCellInfoOptions:(unint64_t)a3 createIfNecessary:(BOOL)a4;
- (id)_reorderedIconsWithClusterSizeClass:(id)a3 forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)a4 gridCellInfoOptions:(unint64_t)a5;
- (id)_rotatedIconListModel;
- (id)_rotatedIconListModelIfAllowed;
- (id)_rotatedIconListModelIfApplicable;
- (id)_rotatedIconOrderIfApplicable;
- (id)_rotatedIcons;
- (id)_rotatedIconsFromList:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (id)_rotatedIconsIfApplicable;
- (id)_targetListForGridCellInfo:(id)a3;
- (id)_targetListForGridCellInfoOptions:(unint64_t)a3;
- (id)_updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:(unint64_t)a3 mutationOptions:(unint64_t)a4;
- (id)activeTransactionCreatingIfNecessary:(BOOL)a3;
- (id)addIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5;
- (id)addIcon:(id)a3 options:(unint64_t)a4;
- (id)addIcons:(id)a3 options:(unint64_t)a4;
- (id)adjustContiguousRegionForBackfill:(id)a3 gridCellInfo:(id)a4;
- (id)allowedIconsForByReplacingContentsWithIcons:(id)a3;
- (id)allowedIconsForIcons:(id)a3 ignoringPlaceholders:(BOOL)a4;
- (id)changeGridSize:(SBHIconGridSize)a3 options:(unint64_t)a4;
- (id)changeGridSizeClassOfContainedIcon:(id)a3 toGridSizeClass:(id)a4 gridCellInfoOptions:(unint64_t)a5;
- (id)containedNodeIdentifiers;
- (id)contiguousRegionForGridCellIndex:(unint64_t)a3 gridCellInfoOptions:(unint64_t)a4;
- (id)coordinatesOfAllIconsWithOptions:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)directlyContainedIconPassingTest:(id)a3;
- (id)directlyContainedIconsPassingTest:(id)a3;
- (id)filterIconsForLayout:(id)a3;
- (id)filteredIncomingFixedIconLocationsIfNecessary:(id)a3;
- (id)fixedIconLocations;
- (id)fixedIconLocationsWithGridCellInfoOptions:(unint64_t)a3;
- (id)fixedIconsInContiguousRegion:(id)a3 gridCellInfo:(id)a4;
- (id)fixedIconsInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (id)gridCellIndexesForIconsIntersectingGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (id)gridCellIndexesForIconsIntersectingGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4;
- (id)gridCellInfoByReflowingIconsInContiguousRegion:(id)a3 forMovingIcon:(id)a4 toGridCellIndex:(unint64_t)a5 referenceIconOrder:(id)a6 internalCellValidDirections:(unint64_t)a7 gridCellInfo:(id)a8 gridCellInfoOptions:(unint64_t)a9;
- (id)gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 constrainedToGridCellIndexes:(id)a5 gridCellInfo:(id)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8;
- (id)gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 constrainedToGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8;
- (id)gridCellInfoByUsingPredictedTwoDimensionalMovementToInsertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 constrainedToGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8;
- (id)gridCellInfoByUsingTwoDimensionalMovementToInsertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (id)gridCellInfoExcludingIcons:(id)a3 options:(unint64_t)a4;
- (id)gridCellInfoForGridSize:(SBHIconGridSize)a3 options:(unint64_t)a4;
- (id)gridCellInfoForIcons:(id)a3 gridSize:(SBHIconGridSize)a4 options:(unint64_t)a5;
- (id)gridCellInfoForIcons:(id)a3 gridSize:(SBHIconGridSize)a4 referenceIconOrder:(id)a5 fixedIconLocations:(id)a6 options:(unint64_t)a7;
- (id)gridCellInfoForIcons:(id)a3 gridSize:(SBHIconGridSize)a4 referenceIconOrder:(id)a5 options:(unint64_t)a6;
- (id)gridCellInfoForIcons:(id)a3 options:(unint64_t)a4;
- (id)gridCellInfoForIcons:(id)a3 referenceIconOrder:(id)a4 options:(unint64_t)a5;
- (id)gridCellInfoWithLeastMovementChangeWithGridCellInfo:(id)a3 toGridCellInfo:(id)a4 orGridCellInfo:(id)a5;
- (id)gridCellInfoWithOptions:(unint64_t)a3;
- (id)gridSizeClassSizesWithGridCellInfo:(id)a3;
- (id)gridSizeClassSizesWithOptions:(unint64_t)a3;
- (id)iconAtCoordinate:(SBIconCoordinate)a3 gridCellInfo:(id)a4;
- (id)iconAtCoordinate:(SBIconCoordinate)a3 gridCellInfoOptions:(unint64_t)a4;
- (id)iconAtGridCellIndex:(unint64_t)a3 gridCellInfo:(id)a4;
- (id)iconAtGridCellIndex:(unint64_t)a3 gridCellInfoOptions:(unint64_t)a4;
- (id)iconGridCellInfoBySimulatingInsertionOfIcons:(id)a3 ignoringPlaceholders:(BOOL)a4 gridCellInfoOptions:(unint64_t)a5 iconOrder:(id *)a6;
- (id)iconGridCellInfoBySimulatingRemovalOfIcons:(id)a3 ignoringPlaceholders:(BOOL)a4 gridCellInfoOptions:(unint64_t)a5 iconOrder:(id *)a6;
- (id)iconWithIdentifier:(id)a3;
- (id)iconsAtGridCellIndexes:(id)a3 gridCellInfo:(id)a4;
- (id)iconsByReplacingIconsNearNaturalGapWithPlaceholder:(id)a3 referenceIconOrder:(id *)a4 gridCellInfo:(id)a5;
- (id)iconsForGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (id)iconsForGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4;
- (id)iconsForLayoutWithGridCellInfoOptions:(unint64_t)a3;
- (id)iconsInContiguousRegion:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (id)iconsInContiguousRegion:(id)a3 startingAtGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (id)iconsInGridColumn:(unint64_t)a3 gridCellInfo:(id)a4;
- (id)iconsInGridColumnRange:(_NSRange)a3 gridCellInfo:(id)a4;
- (id)iconsInGridRow:(unint64_t)a3 gridCellInfo:(id)a4;
- (id)iconsOfClass:(Class)a3;
- (id)iconsPassingTest:(id)a3;
- (id)iconsThatAreAllowedToBeContainedInIcons:(id)a3;
- (id)iconsWithGridCellInfoOptions:(unint64_t)a3;
- (id)indexPathsForContainedNodeIdentifier:(id)a3 prefixPath:(id)a4;
- (id)insertIcon:(id)a3 atCoordinate:(SBIconCoordinate)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)insertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)insertIcon:(id)a3 atIndex:(unint64_t)a4;
- (id)insertIcon:(id)a3 atIndex:(unint64_t)a4 options:(unint64_t)a5;
- (id)insertIcon:(id)a3 relativeToIcon:(id)a4 positionDelta:(int64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (id)insertIconWhilePreservingQuads:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)insertIcons:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)insertIcons:(id)a3 atIndex:(unint64_t)a4 options:(unint64_t)a5;
- (id)largestClusteringSizeClassWithOptions:(unint64_t)a3;
- (id)lastDirectlyContainedLeafIconWithApplicationBundleIdentifier:(id)a3;
- (id)layoutDescriptionWithOptions:(unint64_t)a3;
- (id)miniGridViewWithIconImageInfo:(SBIconImageInfo *)a3 cellSpacing:(CGSize)a4 imageAppearance:(id)a5 options:(unint64_t)a6 cellProvider:(id)a7;
- (id)miniGridViewWithListLayout:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5 cellProvider:(id)a6;
- (id)miniGridViewWithListLayout:(id)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)moveContainedIcon:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)movedIconsFromGridCellInfo:(id)a3 withIconOrder:(id)a4 toGridCellInfo:(id)a5;
- (id)nodeDescriptionWithPrefix:(id)a3;
- (id)nodesAlongIndexPath:(id)a3 consumedIndexes:(unint64_t)a4;
- (id)relocateFixedIconsInGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5;
- (id)repairModelByEliminatingGapsInIcons:(id)a3 avoidingIcons:(id)a4 gridCellInfoOptions:(unint64_t)a5;
- (id)replaceIcon:(id)a3 withIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)replaceIcon:(id)a3 withIcon:(id)a4 options:(unint64_t)a5;
- (id)replaceIcon:(id)a3 withIcons:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)replaceIconAtGridCellIndex:(unint64_t)a3 withIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (id)replaceIconAtIndex:(unint64_t)a3 withIcon:(id)a4 options:(unint64_t)a5;
- (id)replaceLayoutWithGridCellInfo:(id)a3 mutationOptions:(unint64_t)a4;
- (id)rotatedFixedIconLocations;
- (id)setIcons:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5;
- (id)setIconsFromIconListModel:(id)a3;
- (id)startCoalescingContentChangesForReason:(id)a3;
- (id)succinctDescription;
- (int64_t)_moveIcon:(id)a3 byClusteringForSizeClass:(id)a4 toGridCellIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6;
- (int64_t)compareMovementChangeWithGridCellInfo:(id)a3 toGridCellInfo:(id)a4 orGridCellInfo:(id)a5;
- (int64_t)effectiveIconDisplacementBehaviorWithGridCellInfo:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5;
- (unint64_t)_iconIndexForMovingIcon:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (unint64_t)_otherGridCellInfoOptionsForGridCellInfoOptions:(unint64_t)a3;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 aboveIconAtGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 aboveIconAtGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 afterIconAtGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 afterIconAtGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 belowIconAtGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 belowIconAtGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 gridCellInfo:(id)a4;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 maintainingPositionRelativeToIcon:(id)a4 before:(BOOL)a5 ignoringPlaceholders:(BOOL)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8;
- (unint64_t)bestGridCellIndexForInsertingIconOfGridSizeClass:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5;
- (unint64_t)bestGridCellIndexForMovingIcons:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (unint64_t)bestGridCellIndexOfRangeOfGridSizeClass:(id)a3 withinGridRange:(SBHIconGridRange)a4 gridCellInfo:(id)a5 passingTest:(id)a6;
- (unint64_t)bestGridCellInfoOptionsForGridCellInfo:(id)a3;
- (unint64_t)bestIconIndexForReplacingIcon:(id)a3 withIcon:(id)a4 gridCellInfo:(id)a5;
- (unint64_t)countOfDirectlyContainedIconsPassingTest:(id)a3;
- (unint64_t)countOfNonDefaultSizeClassIcons;
- (unint64_t)firstFreeGridCellIndexOfRangeOfSize:(SBHIconGridSize)a3 gridCellInfoOptions:(unint64_t)a4;
- (unint64_t)firstFreeGridCellIndexOfRangeOfSizeClass:(id)a3 ignoringValidGridLayoutCheck:(BOOL)a4 gridCellInfoOptions:(unint64_t)a5;
- (unint64_t)firstFreeGridCellIndexWithOptions:(unint64_t)a3;
- (unint64_t)firstFreeSlotIndex;
- (unint64_t)firstGridCellIndexOfNaturalGapInRange:(_NSRange)a3 gridCellInfo:(id)a4;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 nearGridRange:(SBHIconGridRange)a4 withinGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6 withoutIconsPassingTest:(id)a7;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutFixedIconsNearContiguousRegion:(id)a4 gridCellInfo:(id)a5;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutFixedIconsNearContiguousRegion:(id)a4 gridCellInfoOptions:(unint64_t)a5;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutFixedIconsNearGridRange:(SBHIconGridRange)a4 gridCellInfo:(id)a5;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutFixedIconsNearGridRange:(SBHIconGridRange)a4 gridCellInfoOptions:(unint64_t)a5;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsEqualToOrLargerThanGridSizeClass:(id)a4 nearGridRange:(SBHIconGridRange)a5 withinGridRange:(SBHIconGridRange)a6 gridCellInfo:(id)a7;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsNearGridRange:(SBHIconGridRange)a4 gridCellInfo:(id)a5;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsNearGridRange:(SBHIconGridRange)a4 gridCellInfo:(id)a5 passingTest:(id)a6;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsNearGridRange:(SBHIconGridRange)a4 withinGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsNearGridRange:(SBHIconGridRange)a4 withinGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6 passingTest:(id)a7;
- (unint64_t)fixedLocationForIcon:(id)a3;
- (unint64_t)fixedLocationForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (unint64_t)gridCellIndexAboveIconAtIndex:(unint64_t)a3 gridCellInfo:(id)a4;
- (unint64_t)gridCellIndexAboveIconAtIndex:(unint64_t)a3 options:(unint64_t)a4;
- (unint64_t)gridCellIndexBelowIconAtIndex:(unint64_t)a3 gridCellInfo:(id)a4;
- (unint64_t)gridCellIndexBelowIconAtIndex:(unint64_t)a3 options:(unint64_t)a4;
- (unint64_t)gridCellIndexForCoordinate:(SBIconCoordinate)a3 gridCellInfoOptions:(unint64_t)a4;
- (unint64_t)gridCellIndexForIcon:(id)a3 gridCellInfo:(id)a4;
- (unint64_t)gridCellIndexForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (unint64_t)gridCellIndexForIconIndex:(unint64_t)a3 gridCellInfoOptions:(unint64_t)a4;
- (unint64_t)gridCellIndexForIconWithIdentifier:(id)a3 gridCellInfo:(id)a4;
- (unint64_t)gridCellIndexForInsertingIcon:(id)a3 relativeToIcon:(id)a4 positionDelta:(int64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (unint64_t)indexForIcon:(id)a3;
- (unint64_t)indexForIconWithIdentifier:(id)a3;
- (unint64_t)indexForInsertingIcon:(id)a3 relativeToIcon:(id)a4 positionDelta:(int64_t)a5;
- (unint64_t)numberOfNonPlaceholderIcons;
- (unint64_t)numberOfUsedColumns;
- (unint64_t)numberOfUsedGridCells;
- (unint64_t)numberOfUsedRows;
- (unint64_t)numberOfUsedSlots;
- (unint64_t)removeIconFromOtherPositionsInHierarchy:(id)a3 forInsertingAtIndex:(unint64_t)a4 removeIfAlreadyContained:(BOOL)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (unint64_t)rotatedGridCellInfoOptions:(unint64_t)a3;
- (unint64_t)simpleInsertionIconIndexForGridCellIndex:(unint64_t)a3;
- (unint64_t)willAddIcon:(id)a3 atIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (unint64_t)willReplaceIcon:(id)a3 withIcon:(id)a4 atIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (unsigned)gridSizeAreaForGridSizeClass:(id)a3 gridCellInfo:(id)a4;
- (unsigned)gridSizeAreaForGridSizeClass:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (void)_coalesceChangesWithRequestID:(id)a3 changeBlock:(id)a4;
- (void)_configureRotatedIconsListModel:(id)a3;
- (void)_ensureRotatedIcons;
- (void)_invalidateLayoutWithGridCellInfoOptions:(unint64_t)a3 mutationOptions:(unint64_t)a4;
- (void)_makeRotatedIconsListModelWithIcons:(id)a3 options:(unint64_t)a4;
- (void)_moveAllNonDefaultSizedIconsToBeginning;
- (void)_moveContainedIconUsingSimpleMovement:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (void)_moveDefaultSizedIconsOfCountIntoContiguousLeadingNonDefaultSizedIcons:(unint64_t)a3;
- (void)_notifyListObserver:(id)a3 didAddIcons:(id)a4 didRemoveIcons:(id)a5 movedIcons:(id)a6 didReplaceIcon:(id)a7 withIcon:(id)a8;
- (void)_notifyListObservers:(id)a3;
- (void)_notifyListObserversDidAddIcon:(id)a3;
- (void)_notifyListObserversDidAddIcons:(id)a3 didRemoveIcons:(id)a4 movedIcons:(id)a5 didReplaceIcon:(id)a6 withIcon:(id)a7 options:(unint64_t)a8;
- (void)_notifyListObserversDidMoveIcon:(id)a3 options:(unint64_t)a4;
- (void)_notifyListObserversDidRemoveIcon:(id)a3;
- (void)_notifyListObserversDirectlyContainsNonDefaultSizeClassIconDidChange;
- (void)_notifyListObserversWillAddIcon:(id)a3;
- (void)_notifyListObserversWillRemoveIcon:(id)a3;
- (void)_reorderIconsAfterUnclusteringWithClusterSizeClass:(id)a3 forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)a4 gridCellInfoOptions:(unint64_t)a5;
- (void)_reorderIconsWithClusterSizeClass:(id)a3 forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)a4 gridCellInfoOptions:(unint64_t)a5;
- (void)_setRotatedIcons:(id)a3 clearRotatedFixedIconLocations:(BOOL)a4;
- (void)_unclusterIcons:(id)a3 ofSizeClass:(id)a4 baseGridCellInfoOptions:(unint64_t)a5 gridCellInfoProvider:(id)a6;
- (void)_unclusterIcons:(id)a3 ofSizeClass:(id)a4 gridCellInfoOptions:(unint64_t)a5;
- (void)_updateOtherListWithGridCellInfoOptions:(unint64_t)a3 mutationOptions:(unint64_t)a4 createIfNecessary:(BOOL)a5 usingBlock:(id)a6;
- (void)_updateRotatedIconsUsingBlock:(id)a3;
- (void)_updateRotatedIconsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)addFixedIconLocations:(id)a3 options:(unint64_t)a4;
- (void)addIconsOfClass:(Class)a3 toSet:(id)a4;
- (void)addIconsPassingTest:(id)a3 toSet:(id)a4;
- (void)addListObserver:(id)a3;
- (void)addNodeObserver:(id)a3;
- (void)addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo:(id)a3;
- (void)ancestryDidChange;
- (void)clearParentNodeForIconIfNecessary:(id)a3;
- (void)didAddIcon:(id)a3 options:(unint64_t)a4;
- (void)didRemoveIcon:(id)a3 options:(unint64_t)a4;
- (void)didReplaceIcon:(id)a3 withIcon:(id)a4 options:(unint64_t)a5;
- (void)enumerateFixedIconsUsingBlock:(id)a3;
- (void)enumerateFolderIconsUsingBlock:(id)a3;
- (void)enumerateIconsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateNodeObserversUsingBlock:(id)a3;
- (void)finishChangingFromGridSize:(SBHIconGridSize)a3 withOldIconCoordinates:(id)a4 bouncedIcons:(id)a5 options:(unint64_t)a6;
- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)iconList:(id)a3 willAddIcon:(id)a4;
- (void)layOutIcons:(id)a3 atIndexes:(id)a4 inGridCellInfo:(id)a5 startingAtGridCellIndex:(unint64_t)a6 gridSize:(SBHIconGridSize)a7 fixedIconLocations:(id)a8 options:(unint64_t)a9;
- (void)layOutIcons:(id)a3 inGridCellInfo:(id)a4 startingAtGridCellIndex:(unint64_t)a5 gridSize:(SBHIconGridSize)a6 fixedIconLocations:(id)a7 options:(unint64_t)a8;
- (void)layOutIcons:(id)a3 inGridCellInfo:(id)a4 startingAtGridCellIndex:(unint64_t)a5 gridSize:(SBHIconGridSize)a6 referenceIconOrder:(id)a7 fixedIconLocations:(id)a8 options:(unint64_t)a9;
- (void)layOutIconsPrioritizedByGridArea:(id)a3 inGridCellInfo:(id)a4 gridSize:(SBHIconGridSize)a5 referenceIconOrder:(id)a6 referenceGridCellInfo:(id)a7 fixedIconLocations:(id)a8 options:(unint64_t)a9;
- (void)list:(id)a3 didAddContainedNodeIdentifiers:(id)a4;
- (void)list:(id)a3 didRemoveContainedNodeIdentifiers:(id)a4;
- (void)listDidMoveNodes:(id)a3;
- (void)markIconStateClean;
- (void)markIconStateDirty;
- (void)markIconStateDirtyWithOptions:(unint64_t)a3;
- (void)moveContainedIcon:(id)a3 aboveIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (void)moveContainedIcon:(id)a3 afterIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (void)moveContainedIcon:(id)a3 beforeIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (void)moveContainedIcon:(id)a3 belowIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (void)moveContainedIcon:(id)a3 toIndex:(unint64_t)a4 options:(unint64_t)a5;
- (void)performByExcludingIconsFromLayout:(id)a3 usingBlock:(id)a4;
- (void)performChangesByClusteringForSizeClass:(id)a3 behavior:(unint64_t)a4 withGridCellInfoOptions:(unint64_t)a5 block:(id)a6;
- (void)performChangesByPreservingOrderOfDefaultSizedIcons:(id)a3;
- (void)performChangesByPreservingPositionsOfIconsLargerThanSizeClass:(id)a3 block:(id)a4;
- (void)reflowIconsForResizingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 toGridSizeClass:(id)a5 gridCellInfoOptions:(unint64_t)a6;
- (void)reflowIconsForwardForInsertingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 replacingIcon:(id)a5 gridCellInfoOptions:(unint64_t)a6;
- (void)relocateAnyAffectedFixedIconsForInsertingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 replacingIcon:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (void)relocateAnyAffectedFixedIconsForMovingIcon:(id)a3 fromGridCellIndex:(unint64_t)a4 toGridCellIndex:(unint64_t)a5 intoContiguousRegions:(id)a6 gridCellInfo:(id)a7 gridCellInfoOptions:(unint64_t)a8 mutationOptions:(unint64_t)a9;
- (void)relocateAnyAffectedFixedIconsWithoutContiguousRegionReflowingForMovingIcon:(id)a3 fromGridCellIndex:(unint64_t)a4 toGridCellIndex:(unint64_t)a5 intoContiguousRegions:(id)a6 gridCellInfo:(id)a7 gridCellInfoOptions:(unint64_t)a8 mutationOptions:(unint64_t)a9;
- (void)removeAllFixedIconLocations;
- (void)removeAllIcons;
- (void)removeAllIconsPassingTest:(id)a3;
- (void)removeAnyIconsWithDisallowedGridSizeClasses;
- (void)removeFixedIconLocationForIcon:(id)a3;
- (void)removeFixedIconLocationsForIcons:(id)a3;
- (void)removeFixedIconLocationsForIconsInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4;
- (void)removeFixedIconLocationsForIconsInGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4;
- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegion:(id)a3 gridCellInfo:(id)a4;
- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:(unint64_t)a3 sortByLayoutOrder:(BOOL)a4 gridCellInfo:(id)a5;
- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:(unint64_t)a3 sortByLayoutOrder:(BOOL)a4 gridCellInfoOptions:(unint64_t)a5;
- (void)removeFixedIconLocationsIfPossibleWithGridCellInfo:(id)a3;
- (void)removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:(unint64_t)a3;
- (void)removeIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5;
- (void)removeIcon:(id)a3 options:(unint64_t)a4;
- (void)removeIconAtIndex:(unint64_t)a3 options:(unint64_t)a4;
- (void)removeIcons:(id)a3;
- (void)removeIcons:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5;
- (void)removeIcons:(id)a3 options:(unint64_t)a4;
- (void)removeIconsAtIndexes:(id)a3 options:(unint64_t)a4;
- (void)removeLastIcon;
- (void)removeTransactionAssertion:(id)a3;
- (void)reorderFixedIconsForMovingIcon:(id)a3 withinContiguousRegion:(id)a4 toGridCellIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (void)reorderFixedIconsInContiguousRegion:(id)a3 forMovingIcon:(id)a4 fromGridCellIndex:(unint64_t)a5 toGridCellIndex:(unint64_t)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8;
- (void)saveCurrentIconLocationsAsFixed;
- (void)saveCurrentLocationAsFixedForIcon:(id)a3 gridCellInfo:(id)a4;
- (void)saveCurrentLocationAsFixedForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4;
- (void)saveOnlyRequiredIconLocationsAsFixed;
- (void)saveOnlyRequiredIconLocationsAsFixedIfRequired;
- (void)setAllowedGridSizeClasses:(id)a3;
- (void)setAllowsIndependentRotatedLayout:(BOOL)a3;
- (void)setAllowsRotatedLayout:(BOOL)a3;
- (void)setBadgeBehaviorProvider:(id)a3;
- (void)setFixedIconLocationBehavior:(int64_t)a3;
- (void)setFixedIconLocations:(id)a3 options:(unint64_t)a4;
- (void)setFixedLocation:(unint64_t)a3 forIcon:(id)a4 options:(unint64_t)a5;
- (void)setFocusModeIdentifiers:(id)a3;
- (void)setGridSize:(SBHIconGridSize)a3;
- (void)setGridSizeClassDomain:(id)a3;
- (void)setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:(SBHIconGridSize)a3;
- (void)setHasNonDefaultSizeClassIcons:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHidden:(BOOL)a3 byUser:(BOOL)a4 hiddenDate:(id)a5;
- (void)setIconLayoutBehavior:(unint64_t)a3;
- (void)setIconOrderFromGridCellInfo:(id)a3 referenceIconOrder:(id)a4;
- (void)setLayoutExcludedIcons:(id)a3;
- (void)setOverflowSlotCount:(unint64_t)a3;
- (void)setRotatedFixedIconLocations:(id)a3 options:(unint64_t)a4;
- (void)setRotatedLayoutClusterGridSizeClass:(id)a3;
- (void)shiftFixedIconsInContiguousRegion:(id)a3 forInsertingIcon:(id)a4 orRemovingIcon:(id)a5 orResizingIcon:(id)a6 orMovingIcon:(id)a7 atGridCellIndex:(unint64_t)a8 replacingIcon:(id)a9 resizingToGridSizeClass:(id)a10 gridCellInfoOptions:(unint64_t)a11 mutationOptions:(unint64_t)a12;
- (void)sortByIconGridSizeAreaWithGridCellInfoOptions:(unint64_t)a3;
- (void)sortByLayoutOrderWithGridCellInfo:(id)a3;
- (void)sortByLayoutOrderWithGridCellInfoOptions:(unint64_t)a3;
- (void)sortUsingIconOrder:(id)a3;
- (void)swapContainedIcon:(id)a3 withContainedIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6;
- (void)swapFixedIconLocationForReplacedIcon:(id)a3 withReplacementIcon:(id)a4;
- (void)transferLocationsForIconsFromGridCellInfo:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5;
- (void)transferPositionsFromGridCellInfo:(id)a3 representingGridRange:(SBHIconGridRange)a4 asFixedLocationsForIcons:(id)a5 gridCellInfoOptions:(unint64_t)a6;
- (void)transferPositionsFromGridCellInfo:(id)a3 representingGridRange:(SBHIconGridRange)a4 asLocationsForIcons:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7;
- (void)updateForFocusModeActivated:(BOOL)a3 wantsListVisible:(BOOL)a4;
- (void)updateGridSizeClassDomainForIconIfNecessary:(id)a3;
- (void)updateGridSizeForAddedIcon:(id)a3 removedIcon:(id)a4;
- (void)updateGridSizeForInsertionOfFirstNonDefaultSizedIconIfNecessary;
- (void)updateGridSizeForRemovalOfLastNonDefaultSizedIconIfNecessary;
- (void)updateHasNonDefaultSizeClassIcons;
- (void)updateHasPlaceholderIcons;
- (void)updateParentNodeForIconIfNecessary:(id)a3;
- (void)willRemoveIcon:(id)a3 options:(unint64_t)a4;
@end

@implementation SBIconListModel

- (SBFolder)folder
{
  WeakRetained = objc_loadWeakRetained(&self->_folder);

  return WeakRetained;
}

- (id)fixedIconLocations
{
  v2 = [(NSMutableDictionary *)self->_fixedIconLocations copy];

  return v2;
}

- (void)ancestryDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(SBIconIndexMutableList *)self->_icons nodes];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBIconListModel *)self removeIconFromOtherPositionsInHierarchy:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (NSArray)treeChildren
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_icons;
  v3 = [(SBIconIndexMutableList *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isFolderIcon])
        {
          v9 = [v8 folder];
          if (v9)
          {
            if (!v5)
            {
              v5 = [MEMORY[0x1E695DF70] array];
            }

            [v5 addObject:v9];
          }
        }
      }

      v4 = [(SBIconIndexMutableList *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __46__SBIconListModel_numberOfNonPlaceholderIcons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (unint64_t)numberOfNonPlaceholderIcons
{
  v3 = [(SBIconListModel *)self numberOfIcons];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  icons = self->_icons;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SBIconListModel_numberOfNonPlaceholderIcons__block_invoke;
  v7[3] = &unk_1E808D7B0;
  v7[4] = &v8;
  [(SBIconIndexMutableList *)icons enumerateNodesUsingBlock:v7];
  v5 = v3 - v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (SBIconListModel)initWithFolder:(id)a3 maxIconCount:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v8 = [(SBIconListModel *)self initWithUniqueIdentifier:0 folder:v6 gridSize:v4 | 0x10000 gridSizeClassSizes:v7];

  return v8;
}

- (SBIconListModel)initWithFolder:(id)a3 gridSize:(SBHIconGridSize)a4
{
  v6 = a3;
  v7 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v8 = [(SBIconListModel *)self initWithUniqueIdentifier:0 folder:v6 gridSize:*&a4 gridSizeClassSizes:v7];

  return v8;
}

- (SBIconListModel)initWithUniqueIdentifier:(id)a3 folder:(id)a4 gridSize:(SBHIconGridSize)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v11 = [(SBIconListModel *)self initWithUniqueIdentifier:v9 folder:v8 gridSize:*&a5 gridSizeClassSizes:v10];

  return v11;
}

- (SBIconListModel)initWithUniqueIdentifier:(id)a3 folder:(id)a4 gridSize:(SBHIconGridSize)a5 gridSizeClassSizes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v28.receiver = self;
  v28.super_class = SBIconListModel;
  v13 = [(SBIconListModel *)&v28 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_folder, v11);
    v15 = objc_alloc_init(SBIconIndexMutableList);
    icons = v14->_icons;
    v14->_icons = v15;

    v14->_gridSize = a5;
    v14->_initialGridSize = a5;
    v17 = [v12 copy];
    gridSizeClassSizes = v14->_gridSizeClassSizes;
    v14->_gridSizeClassSizes = v17;

    v19 = +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
    allowedGridSizeClasses = v14->_allowedGridSizeClasses;
    v14->_allowedGridSizeClasses = v19;

    v14->_allowsRotatedLayout = [objc_opt_class() allowsRotatedLayoutByDefault];
    objc_storeStrong(&v14->_rotatedLayoutClusterGridSizeClass, @"SBHIconGridSizeClassDefault");
    v14->_fixedIconLocationBehavior = [objc_opt_class() defaultFixedIconLocationBehavior];
    [(SBIconIndexMutableList *)v14->_icons setObserver:v14];
    if (v10)
    {
      v21 = [v10 copy];
      uniqueIdentifier = v14->_uniqueIdentifier;
      v14->_uniqueIdentifier = v21;
    }

    else
    {
      uniqueIdentifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v23 = [(NSString *)uniqueIdentifier UUIDString];
      v24 = v14->_uniqueIdentifier;
      v14->_uniqueIdentifier = v23;
    }

    v25 = [objc_opt_class() listModelNodeIdentifierForUniqueIdentifier:v14->_uniqueIdentifier];
    nodeIdentifier = v14->_nodeIdentifier;
    v14->_nodeIdentifier = v25;

    v14->_allowsIndependentRotatedLayout = 1;
  }

  return v14;
}

- (SBIconListModel)initWithIconListModel:(id)a3 copyLeafIcons:(BOOL)a4
{
  v4 = a4;
  v91 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v87.receiver = self;
  v87.super_class = SBIconListModel;
  v7 = [(SBIconListModel *)&v87 init];
  if (v7)
  {
    v8 = [v6 folder];
    objc_storeWeak(v7 + 15, v8);

    *(v7 + 6) = [v6 gridSize];
    *(v7 + 90) = [v6 initialGridSize];
    *(v7 + 86) = [v6 gridSizeWhenDirectlyContainingNonDefaultSizedIcons];
    v9 = [v6 iconGridSizeClassSizes];
    v10 = [v9 copy];
    v11 = *(v7 + 7);
    *(v7 + 7) = v10;

    v12 = [v6 rotatedIconGridSizeClassSizes];
    v13 = [v12 copy];
    v14 = *(v7 + 28);
    *(v7 + 28) = v13;

    v15 = [v6 allowedGridSizeClasses];
    v16 = [v15 copy];
    v17 = *(v7 + 16);
    *(v7 + 16) = v16;

    v7[80] = [v6 allowsRotatedLayout];
    v18 = [v6 rotatedLayoutClusterGridSizeClass];
    v19 = *(v7 + 17);
    *(v7 + 17) = v18;

    *(v7 + 18) = [v6 iconLayoutBehavior];
    v20 = [v6 uniqueIdentifier];
    v21 = [v20 copy];
    v22 = *(v7 + 13);
    *(v7 + 13) = v21;

    v23 = [v6 nodeIdentifier];
    v24 = *(v7 + 8);
    *(v7 + 8) = v23;

    v7[82] = [v6 isHidden];
    v25 = [v6 hiddenDate];
    v26 = [v25 copy];
    v27 = *(v7 + 20);
    *(v7 + 20) = v26;

    *(v7 + 24) = [v6 fixedIconLocationBehavior];
    v28 = [v6[9] mutableCopy];
    v29 = *(v7 + 9);
    *(v7 + 9) = v28;

    v7[83] = *(v6 + 83);
    v7[84] = *(v6 + 84);
    v30 = [v6 badgeBehaviorProvider];
    objc_storeWeak(v7 + 25, v30);

    v31 = [v6 gridSizeClassDomain];
    v32 = *(v7 + 14);
    *(v7 + 14) = v31;

    v7[81] = [v6 allowsIndependentRotatedLayout];
    *(v7 + 22) = [v6 overflowSlotCount];
    v33 = [v7 parentNodeForChildren];
    if (v4)
    {
      v34 = [[SBIconIndexMutableList alloc] initWithList:v6[1] copyNodes:1];
      v35 = *(v7 + 1);
      *(v7 + 1) = v34;

      v36 = [*(v7 + 1) count];
      if (v36)
      {
        v37 = v36;
        for (i = 0; i != v37; ++i)
        {
          v39 = [*(v7 + 1) nodeAtIndex:i];
          if ([v39 isFolderIcon])
          {
            v40 = [v39 folder];
            v41 = [objc_alloc(objc_opt_class()) initWithFolder:v40 copyLeafIcons:1];
            v42 = [objc_alloc(objc_opt_class()) initWithFolder:v41];
            [*(v7 + 1) replaceNodeAtIndex:i withNode:v42];
            SBTreeNodeSetParent(v41, v33);
          }
        }
      }
    }

    else
    {
      v43 = objc_opt_self();
      v44 = [v6 directlyContainsIconOfClass:v43];

      if (v44)
      {
        v45 = objc_alloc_init(SBIconIndexMutableList);
        v46 = *(v7 + 1);
        *(v7 + 1) = v45;

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v47 = v6[1];
        v48 = [v47 countByEnumeratingWithState:&v83 objects:v90 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v84;
          do
          {
            for (j = 0; j != v49; ++j)
            {
              if (*v84 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v83 + 1) + 8 * j);
              if ([v52 isFolderIcon])
              {
                v53 = [objc_alloc(objc_opt_class()) initWithFolderIcon:v52 copyFolder:1];
                [*(v7 + 1) addNode:v53];
                v54 = [v53 folder];
                SBTreeNodeSetParent(v54, v33);
              }

              else
              {
                [*(v7 + 1) addNode:v52];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v83 objects:v90 count:16];
          }

          while (v49);
        }
      }

      else
      {
        v55 = [v6[1] copy];
        v47 = *(v7 + 1);
        *(v7 + 1) = v55;
      }
    }

    [*(v7 + 1) setObserver:v7];
    v56 = [v6 _rotatedIconOrderIfApplicable];
    if (v56)
    {
      v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v56, "count")}];
      v58 = [*(v7 + 1) count];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v74 = v56;
      v59 = v56;
      v60 = [v59 countByEnumeratingWithState:&v79 objects:v89 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v80;
        do
        {
          for (k = 0; k != v61; ++k)
          {
            if (*v80 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = [*(*(&v79 + 1) + 8 * k) unsignedIntegerValue];
            if (v64 < v58)
            {
              v65 = [*(v7 + 1) nodeAtIndex:v64];
              [v57 addObject:v65];
            }
          }

          v61 = [v59 countByEnumeratingWithState:&v79 objects:v89 count:16];
        }

        while (v61);
      }

      if ([v57 count] != v58)
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v66 = *(v7 + 1);
        v67 = [v66 countByEnumeratingWithState:&v75 objects:v88 count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v76;
          do
          {
            for (m = 0; m != v68; ++m)
            {
              if (*v76 != v69)
              {
                objc_enumerationMutation(v66);
              }

              v71 = *(*(&v75 + 1) + 8 * m);
              if (([v57 containsObject:v71] & 1) == 0)
              {
                [v57 addObject:v71];
              }
            }

            v68 = [v66 countByEnumeratingWithState:&v75 objects:v88 count:16];
          }

          while (v68);
        }
      }

      [v7 _makeRotatedIconsListModelWithIcons:v57 options:0x20000000];
      v72 = [v6 rotatedFixedIconLocations];
      [v7 setRotatedFixedIconLocations:v72 options:0x20000000];

      v56 = v74;
    }

    [v7 markIconStateClean];
  }

  return v7;
}

- (void)setGridSize:(SBHIconGridSize)a3
{
  if (!SBHIconGridSizeEqualToIconGridSize(*&a3, *&self->_gridSize))
  {
    self->_gridSize = a3;
    [(SBIconListModel *)self->_rotatedIcons setGridSize:SBHIconGridSizeRotate(*&a3)];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__SBIconListModel_setGridSize___block_invoke;
    v6[3] = &unk_1E808D788;
    v6[4] = self;
    [(SBIconListModel *)self _notifyListObservers:v6];
  }
}

void __31__SBIconListModel_setGridSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconListGridSizeDidChange:*(a1 + 32)];
  }
}

- (void)setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:(SBHIconGridSize)a3
{
  v5 = a3;
  if (!SBHIconGridSizeEqualToIconGridSize(*&a3, *&self->_gridSizeWhenDirectlyContainingNonDefaultSizedIcons))
  {
    self->_gridSizeWhenDirectlyContainingNonDefaultSizedIcons = a3;
    if (![(SBIconListModel *)self directlyContainsNonDefaultSizeClassIcon]|| SBHIconGridSizeIsEmpty(v5))
    {
      v5 = [(SBIconListModel *)self initialGridSize];
    }

    [(SBIconListModel *)self setGridSize:v5];
  }
}

- (void)updateGridSizeForAddedIcon:(id)a3 removedIcon:(id)a4
{
  v6 = a4;
  v9 = [a3 gridSizeClass];
  v7 = [v6 gridSizeClass];

  v8 = [(SBIconListModel *)self countOfNonDefaultSizeClassIcons];
  if (v8 == 1 && v7)
  {
    if (([v7 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0 && (!v9 || objc_msgSend(v9, "isEqualToString:", @"SBHIconGridSizeClassDefault")))
    {
      [(SBIconListModel *)self updateGridSizeForRemovalOfLastNonDefaultSizedIconIfNecessary];
    }
  }

  else if (!v8 && v9 && ([v9 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    [(SBIconListModel *)self updateGridSizeForInsertionOfFirstNonDefaultSizedIconIfNecessary];
  }
}

- (unint64_t)countOfNonDefaultSizeClassIcons
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SBIconListModel_countOfNonDefaultSizeClassIcons__block_invoke;
  v4[3] = &unk_1E808D7B0;
  v4[4] = &v5;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__SBIconListModel_countOfNonDefaultSizeClassIcons__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 gridSizeClass];
  if (v3)
  {
    v4 = v3;
    v5 = [v7 gridSizeClass];
    v6 = [v5 isEqualToString:@"SBHIconGridSizeClassDefault"];

    if ((v6 & 1) == 0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

- (void)updateHasNonDefaultSizeClassIcons
{
  v3 = [(SBIconListModel *)self directlyContainsIconPassingTest:&__block_literal_global_53];

  [(SBIconListModel *)self setHasNonDefaultSizeClassIcons:v3];
}

uint64_t __52__SBIconListModel_updateHasNonDefaultSizeClassIcons__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHasNonDefaultSizeClassIcons:(BOOL)a3
{
  if (self->_hasNonDefaultSizeClassIcons != a3)
  {
    self->_hasNonDefaultSizeClassIcons = a3;
    if (a3)
    {
      [(SBIconListModel *)self updateGridSizeForInsertionOfFirstNonDefaultSizedIconIfNecessary];
    }

    else
    {
      [(SBIconListModel *)self updateGridSizeForRemovalOfLastNonDefaultSizedIconIfNecessary];
    }

    [(SBIconListModel *)self _notifyListObserversDirectlyContainsNonDefaultSizeClassIconDidChange];
  }
}

- (void)updateGridSizeForInsertionOfFirstNonDefaultSizedIconIfNecessary
{
  v3 = [(SBIconListModel *)self gridSizeWhenDirectlyContainingNonDefaultSizedIcons];
  v4 = v3;
  if (!SBHIconGridSizeIsEmpty(*&v3))
  {
    v5 = [(SBIconListModel *)self changeGridSize:v4 options:0x1000000];
  }
}

- (void)updateGridSizeForRemovalOfLastNonDefaultSizedIconIfNecessary
{
  if (!SBHIconGridSizeIsEmpty([(SBIconListModel *)self gridSizeWhenDirectlyContainingNonDefaultSizedIcons]))
  {
    v3 = [(SBIconListModel *)self changeGridSize:[(SBIconListModel *)self initialGridSize] options:0x1000000];
  }
}

- (SBHIconGridSize)gridSizeForGridSizeClass:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a4];
  LODWORD(self) = [v7 gridSizeForGridSizeClass:v6];

  return self;
}

- (unsigned)gridSizeAreaForGridSizeClass:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a4];
  LODWORD(self) = [v7 gridSizeAreaForGridSizeClass:v6];

  return self;
}

- (unsigned)gridSizeAreaForGridSizeClass:(id)a3 gridCellInfo:(id)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridSizeClassSizesWithGridCellInfo:a4];
  LODWORD(self) = [v7 gridSizeAreaForGridSizeClass:v6];

  return self;
}

- (SBHIconGridSize)gridSizeForGridSizeClass:(id)a3 gridCellInfo:(id)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridSizeClassSizesWithGridCellInfo:a4];
  LODWORD(self) = [v7 gridSizeForGridSizeClass:v6];

  return self;
}

- (SBHIconGridSize)gridSizeForIcon:(id)a3
{
  v4 = [a3 gridSizeClass];
  LODWORD(self) = [(SBIconListModel *)self gridSizeForGridSizeClass:v4];

  return self;
}

- (SBHIconGridSize)gridSizeForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = [a3 gridSizeClass];
  LODWORD(a4) = [(SBIconListModel *)self gridSizeForGridSizeClass:v6 gridCellInfoOptions:a4];

  return a4;
}

- (SBHIconGridSize)gridSizeForIcon:(id)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = [a3 gridSizeClass];
  LODWORD(self) = [(SBIconListModel *)self gridSizeForGridSizeClass:v7 gridCellInfo:v6];

  return self;
}

- (id)gridSizeClassSizesWithOptions:(unint64_t)a3
{
  if (![(SBIconListModel *)self wantsRotatedGridForOptions:a3]|| ([(SBIconListModel *)self rotatedIconGridSizeClassSizes], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(SBIconListModel *)self iconGridSizeClassSizes];
  }

  return v4;
}

- (id)gridSizeClassSizesWithGridCellInfo:(id)a3
{
  if (SBHIconGridSizeEqualToIconGridSize([a3 gridSize], -[SBIconListModel gridSizeWithOptions:](self, "gridSizeWithOptions:", 2)))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [(SBIconListModel *)self gridSizeClassSizesWithOptions:v4];
}

- (unint64_t)numberOfUsedSlots
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_icons;
  v4 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) gridSizeClass];
        v6 += [(SBIconListModel *)self gridSizeAreaForGridSizeClass:v9];
      }

      v5 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)iconsWithGridCellInfoOptions:(unint64_t)a3
{
  v3 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a3];
  v4 = [v3 icons];

  return v4;
}

- (id)setIcons:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5
{
  v116 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v74 = a4;
  v9 = [(SBIconListModel *)self iconsWithGridCellInfoOptions:a4];
  if ([v9 isEqualToArray:v8])
  {
    v10 = 0;
  }

  else
  {
    v70 = v9;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v69 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v105 objects:v115 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v106;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v106 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v105 + 1) + 8 * i);
          if (![(SBIconListModel *)self directlyContainsIcon:v18])
          {
            [v11 addObject:v18];
            [(SBIconListModel *)self willAddIcon:v18 atIndex:0 gridCellInfoOptions:v74 mutationOptions:a5 | 0x4000000];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v105 objects:v115 count:16];
      }

      while (v15);
    }

    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __64__SBIconListModel_setIcons_gridCellInfoOptions_mutationOptions___block_invoke;
    v100[3] = &unk_1E808D7D8;
    v68 = v13;
    v101 = v68;
    v19 = v12;
    v102 = v19;
    v103 = self;
    v104 = a5;
    [(SBIconListModel *)self enumerateIconsUsingBlock:v100];
    v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v20 = v11;
    v21 = [v20 countByEnumeratingWithState:&v96 objects:v114 count:16];
    v77 = a5;
    if (v21)
    {
      v22 = v21;
      v23 = *v97;
      v71 = *v97;
      do
      {
        v24 = 0;
        v75 = v22;
        do
        {
          if (*v97 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v96 + 1) + 8 * v24);
          if ([v25 isFolderIcon])
          {
            v26 = v25;
            v27 = [v26 folder];
            v28 = [v27 uniqueIdentifier];
            v94[0] = MEMORY[0x1E69E9820];
            v94[1] = 3221225472;
            v94[2] = __64__SBIconListModel_setIcons_gridCellInfoOptions_mutationOptions___block_invoke_2;
            v94[3] = &unk_1E808BFD8;
            v29 = v28;
            v95 = v29;
            v30 = [v19 indexOfObjectPassingTest:v94];
            if (v30 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v31 = v30;
              v32 = [v19 objectAtIndex:v30];
              v113[0] = v32;
              v113[1] = v26;
              [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:2];
              v33 = v20;
              v34 = self;
              v36 = v35 = v19;
              [v72 addObject:v36];

              v19 = v35;
              self = v34;
              v20 = v33;
              [v19 removeObjectAtIndex:v31];

              v23 = v71;
            }

            v22 = v75;
            a5 = v77;
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v96 objects:v114 count:16];
      }

      while (v22);
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v37 = v72;
    v38 = [v37 countByEnumeratingWithState:&v90 objects:v112 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v91;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v91 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [*(*(&v90 + 1) + 8 * j) lastObject];
          [v20 removeObject:v42];
        }

        v39 = [v37 countByEnumeratingWithState:&v90 objects:v112 count:16];
      }

      while (v39);
    }

    if ([v20 count])
    {
      v76 = 0;
      v43 = 1;
      v44 = v68;
    }

    else
    {
      v44 = v68;
      if ([v19 count])
      {
        v76 = 0;
        v43 = 1;
      }

      else
      {
        v45 = [v70 differenceFromArray:v68 withOptions:2];
        v46 = [v45 insertions];
        v47 = [v46 firstObject];
        v76 = [v47 object];

        v43 = 0;
      }
    }

    v73 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:v74];
    [v73[1] setNodes:v44];
    v48 = [(SBIconListModel *)self _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:v74 mutationOptions:a5];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v49 = v20;
    v50 = [v49 countByEnumeratingWithState:&v86 objects:v111 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v87;
      do
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v87 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [(SBIconListModel *)self didAddIcon:*(*(&v86 + 1) + 8 * k) options:a5];
        }

        v51 = [v49 countByEnumeratingWithState:&v86 objects:v111 count:16];
      }

      while (v51);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v54 = v19;
    v55 = [v54 countByEnumeratingWithState:&v82 objects:v110 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v83;
      do
      {
        for (m = 0; m != v56; ++m)
        {
          if (*v83 != v57)
          {
            objc_enumerationMutation(v54);
          }

          [(SBIconListModel *)self didRemoveIcon:*(*(&v82 + 1) + 8 * m) options:a5];
        }

        v56 = [v54 countByEnumeratingWithState:&v82 objects:v110 count:16];
      }

      while (v56);
    }

    v10 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:0 ignoringTrailingIconCheck:1 options:a5];
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:v74 mutationOptions:a5];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:a5];
    if (v43)
    {
      [(SBIconListModel *)self _notifyListObserversDidAddIcons:v49 didRemoveIcons:v54 movedIcons:0 options:a5];
    }

    else if (v76)
    {
      [(SBIconListModel *)self _notifyListObserversDidMoveIcon:v76 options:a5];
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v59 = v37;
    v60 = [v59 countByEnumeratingWithState:&v78 objects:v109 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v79;
      do
      {
        for (n = 0; n != v61; ++n)
        {
          if (*v79 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v78 + 1) + 8 * n);
          v65 = [v64 firstObject];
          v66 = [v64 lastObject];
          [(SBIconListModel *)self didReplaceIcon:v65 withIcon:v66 options:v77];
        }

        v61 = [v59 countByEnumeratingWithState:&v78 objects:v109 count:16];
      }

      while (v61);
    }

    v8 = v69;
    v9 = v70;
  }

  return v10;
}

void __64__SBIconListModel_setIcons_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
    [*(a1 + 48) willRemoveIcon:v3 options:*(a1 + 56)];
  }
}

uint64_t __64__SBIconListModel_setIcons_gridCellInfoOptions_mutationOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFolderIcon])
  {
    v4 = [v3 folder];
    v5 = [v4 uniqueIdentifier];
    v6 = [*(a1 + 32) isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)setIconsFromIconListModel:(id)a3
{
  v4 = a3;
  v5 = [v4 icons];
  v6 = [(SBIconListModel *)self setIcons:v5 gridCellInfoOptions:0 mutationOptions:0x40000000];
  v7 = [v4 fixedIconLocations];
  [(SBIconListModel *)self setFixedIconLocations:v7];
  if (-[SBIconListModel allowsRotatedLayout](self, "allowsRotatedLayout") && [v4 allowsRotatedLayout])
  {
    v8 = [v4 _rotatedIconsIfApplicable];
    if (v8)
    {
      v9 = [(SBIconListModel *)self setIcons:v8 gridCellInfoOptions:2 mutationOptions:0x40000000];
      v10 = [v4 rotatedFixedIconLocations];
      [(SBIconListModel *)self setRotatedFixedIconLocations:v10];
    }
  }

  return v6;
}

- (unint64_t)indexForIcon:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_icons;
  v6 = [(SBIconIndexMutableList *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      if ([v4 isEqual:{*(*(&v13 + 1) + 8 * v10), v13}])
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [(SBIconIndexMutableList *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (unint64_t)indexForIconWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_icons;
  v6 = [(SBIconIndexMutableList *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v15 + 1) + 8 * v10) uniqueIdentifier];
      v13 = [v12 isEqual:v4];

      if (v13)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [(SBIconIndexMutableList *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (id)iconsPassingTest:(id)a3
{
  v4 = [(SBIconListModel *)self indexesForIconsPassingTest:a3];
  v5 = [(SBIconListModel *)self iconsAtIndexes:v4];

  return v5;
}

- (unint64_t)gridCellIndexForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v8 = [(SBIconListModel *)self gridCellIndexForIcon:v6 gridCellInfo:v7];

  return v8;
}

- (unint64_t)gridCellIndexForIcon:(id)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = [(SBIconListModel *)self indexForIcon:a3];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(SBIconListModel *)self gridCellIndexForIconIndex:v7 gridCellInfo:v6];
  }

  return v8;
}

- (unint64_t)gridCellIndexForIconWithIdentifier:(id)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = [(SBIconListModel *)self indexForIconWithIdentifier:a3];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(SBIconListModel *)self gridCellIndexForIconIndex:v7 gridCellInfo:v6];
  }

  return v8;
}

- (unint64_t)gridCellIndexForIconIndex:(unint64_t)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v7 = [(SBIconListModel *)self gridCellIndexForIconIndex:a3 gridCellInfo:v6];

  return v7;
}

- (id)iconAtCoordinate:(SBIconCoordinate)a3 gridCellInfoOptions:(unint64_t)a4
{
  row = a3.row;
  column = a3.column;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v8 = [(SBIconListModel *)self iconAtCoordinate:column gridCellInfo:row, v7];

  return v8;
}

- (id)iconAtCoordinate:(SBIconCoordinate)a3 gridCellInfo:(id)a4
{
  row = a3.row;
  column = a3.column;
  v7 = a4;
  v8 = [(SBIconListModel *)self iconAtGridCellIndex:[(SBIconListModel *)self gridCellIndexForCoordinate:column gridCellInfo:row gridCellInfo:v7], v7];

  return v8;
}

- (BOOL)containsIcon:(id)a3
{
  v4 = [a3 nodeIdentifier];
  v5 = [(SBIconListModel *)self iconWithIdentifier:v4];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (BOOL)directlyContainsIcons:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![(SBIconListModel *)self directlyContainsIcon:*(*(&v11 + 1) + 8 * i), v11])
        {

          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = [v4 count] != 0;
LABEL_11:

  return v9;
}

- (BOOL)directlyContainsAnyIconInArray:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(SBIconListModel *)self directlyContainsIcon:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)iconWithIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = [(SBIconListModel *)self directlyContainedIconWithIdentifier:v4];
  v5 = v12[5];
  if (!v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__SBIconListModel_iconWithIdentifier___block_invoke;
    v8[3] = &unk_1E808D800;
    v10 = &v11;
    v9 = v4;
    [(SBIconListModel *)self enumerateFolderIconsUsingBlock:v8];

    v5 = v12[5];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __38__SBIconListModel_iconWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = [a2 folder];
  v6 = [v9 iconWithIdentifier:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)lastDirectlyContainedLeafIconWithApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__SBIconListModel_lastDirectlyContainedLeafIconWithApplicationBundleIdentifier___block_invoke;
  v9[3] = &unk_1E808BFD8;
  v10 = v4;
  v5 = v4;
  v6 = [(SBIconListModel *)self directlyContainedIconsPassingTest:v9];
  v7 = [v6 lastObject];

  return v7;
}

uint64_t __80__SBIconListModel_lastDirectlyContainedLeafIconWithApplicationBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLeafIcon])
  {
    v4 = *(a1 + 32);
    v5 = [v3 applicationBundleID];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)directlyContainedIconPassingTest:(id)a3
{
  v4 = [(SBIconIndexMutableList *)self->_icons indexOfNodePassingTest:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:v4];
  }

  return v5;
}

- (id)directlyContainedIconsPassingTest:(id)a3
{
  v4 = [(SBIconIndexMutableList *)self->_icons indexesOfNodesPassingTest:a3];
  v5 = [(SBIconListModel *)self iconsAtIndexes:v4];

  return v5;
}

- (unint64_t)countOfDirectlyContainedIconsPassingTest:(id)a3
{
  v3 = [(SBIconIndexMutableList *)self->_icons indexesOfNodesPassingTest:a3];
  v4 = [v3 count];

  return v4;
}

- (BOOL)directlyContainsIconOfClass:(Class)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SBIconListModel_directlyContainsIconOfClass___block_invoke;
  v6[3] = &__block_descriptor_40_e23_B32__0__SBIcon_8Q16_B24lu32l8;
  v6[4] = a3;
  v3 = [(SBIconListModel *)self directlyContainedIconPassingTest:v6];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)directlyContainsIconPassingTest:(id)a3
{
  v3 = [(SBIconListModel *)self directlyContainedIconPassingTest:a3];
  v4 = v3 != 0;

  return v4;
}

- (_NSRange)rangeOfDirectlyContainedIconsInRange:(_NSRange)a3 passingTest:(id)a4
{
  length = a3.length;
  location = a3.location;
  v18 = self;
  v6 = a4;
  v7 = 0;
  if (length)
  {
    v8 = 1;
    v9 = location;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v11 = [(SBIconListModel *)v18 iconAtIndex:v9, v18];
      v19 = 0;
      if (v6[2](v6, v11, v9, &v19))
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v9;
        }

        else
        {
          v12 = v10;
        }

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v7 = 1;
        }

        else
        {
          ++v7;
        }
      }

      else
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {

          v12 = v10;
          goto LABEL_22;
        }
      }

      v13 = v19;

      v15 = v13 == 1 || location > ++v9 || v8++ >= length;
      v10 = v12;
      if (v15)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:

  v16 = v12;
  v17 = v7;
  result.length = v17;
  result.location = v16;
  return result;
}

- (BOOL)containsWidgetIconWithExtensionBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_icons;
  v6 = [(SBIconIndexMutableList *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isWidgetIcon])
        {
          v10 = [v9 activeWidget];
          v11 = [v10 extensionBundleIdentifier];

          LOBYTE(v10) = [v11 isEqualToString:v4];
          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [(SBIconIndexMutableList *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (void)enumerateIconsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  icons = self->_icons;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SBIconListModel_enumerateIconsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_1E808D870;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(SBIconIndexMutableList *)icons enumerateNodesWithOptions:a3 & 2 usingBlock:v9];
}

void __56__SBIconListModel_enumerateIconsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  (*(*(a1 + 32) + 16))();
  if ((*(a1 + 40) & 1) != 0 && [v7 isFolderIcon])
  {
    v9 = [v7 folder];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__SBIconListModel_enumerateIconsWithOptions_usingBlock___block_invoke_2;
    v10[3] = &unk_1E808D848;
    v11 = *(a1 + 32);
    v12 = a4;
    [v9 enumerateAllIconsWithBaseIndexPath:v8 options:1 usingBlock:v10];
  }
}

uint64_t __56__SBIconListModel_enumerateIconsWithOptions_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v7 == 1)
  {
    **(a1 + 40) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)enumerateFolderIconsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SBIconListModel_enumerateFolderIconsUsingBlock___block_invoke;
  v6[3] = &unk_1E808CEF8;
  v7 = v4;
  v5 = v4;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v6];
}

void __50__SBIconListModel_enumerateFolderIconsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFolderIcon])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)iconGridCellInfoBySimulatingInsertionOfIcons:(id)a3 ignoringPlaceholders:(BOOL)a4 gridCellInfoOptions:(unint64_t)a5 iconOrder:(id *)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(SBIconIndexMutableList);
  v29 = self;
  icons = self->_icons;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __115__SBIconListModel_iconGridCellInfoBySimulatingInsertionOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke;
  v46[3] = &unk_1E808D898;
  v48 = a4;
  v11 = v9;
  v47 = v11;
  [(SBIconIndexMutableList *)icons enumerateNodesUsingBlock:v46];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__14;
  v44 = __Block_byref_object_dispose__14;
  v45 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__SBIconListModel_iconGridCellInfoBySimulatingInsertionOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke_2;
  aBlock[3] = &unk_1E808D8C0;
  v12 = v11;
  v36 = v12;
  v37 = v29;
  v38 = &v40;
  v39 = a5;
  v13 = _Block_copy(aBlock);
  v13[2]();
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v31 objects:v49 count:16];
  if (v14)
  {
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [v17 gridSizeClass];
        if (v18 && ([v17 gridSizeClass], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"SBHIconGridSizeClassDefault"), v19, v18, !v20))
        {
          if ([(SBIconIndexMutableList *)v12 count])
          {
            v21 = [v41[5] gridCellIndexForIconIndex:{-[SBIconIndexMutableList count](v12, "count") - 1}];
          }

          else
          {
            v21 = 0;
          }

          if (v21 > -[SBIconListModel maxNumberOfIcons](v29, "maxNumberOfIcons") || (v22 = -[SBIconListModel bestGridCellIndexForInsertingIcon:atGridCellIndex:](v29, "bestGridCellIndexForInsertingIcon:atGridCellIndex:", v17, v21), v23 = [v41[5] iconIndexForGridCellIndex:v22], v23 == 0x7FFFFFFFFFFFFFFFLL))
          {
            v23 = [(SBIconIndexMutableList *)v12 count];
          }

          [(SBIconIndexMutableList *)v12 insertNode:v17 atIndex:v23];
        }

        else
        {
          [(SBIconIndexMutableList *)v12 addNode:v17];
        }

        (v13[2])(v13);
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v49 count:16];
    }

    while (v14);
  }

  v24 = [(SBIconListModel *)v29 repairModelByEliminatingGapsInIcons:v12 avoidingIcons:0 gridCellInfoOptions:a5];
  (v13[2])(v13);
  if (a6)
  {
    *a6 = [(SBIconIndexMutableList *)v12 nodes];
  }

  v25 = v41[5];

  _Block_object_dispose(&v40, 8);

  return v25;
}

void __115__SBIconListModel_iconGridCellInfoBySimulatingInsertionOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 40) != 1 || (objc_opt_self(), v3 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) == 0))
  {
    [*(a1 + 32) addNode:v5];
  }
}

void __115__SBIconListModel_iconGridCellInfoBySimulatingInsertionOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) nodes];
  v2 = [*(a1 + 40) gridCellInfoForIcons:v5 referenceIconOrder:v5 options:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)iconGridCellInfoBySimulatingRemovalOfIcons:(id)a3 ignoringPlaceholders:(BOOL)a4 gridCellInfoOptions:(unint64_t)a5 iconOrder:(id *)a6
{
  v10 = a3;
  v11 = objc_alloc_init(SBIconIndexMutableList);
  icons = self->_icons;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __113__SBIconListModel_iconGridCellInfoBySimulatingRemovalOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke;
  v40[3] = &unk_1E808D8E8;
  v13 = v10;
  v41 = v13;
  v43 = a4;
  v14 = v11;
  v42 = v14;
  [(SBIconIndexMutableList *)icons enumerateNodesUsingBlock:v40];
  v15 = [(SBIconIndexMutableList *)self->_icons nodes];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__14;
  v38 = __Block_byref_object_dispose__14;
  v39 = 0;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __113__SBIconListModel_iconGridCellInfoBySimulatingRemovalOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke_2;
  v28 = &unk_1E808D910;
  v16 = v14;
  v32 = &v34;
  v29 = v16;
  v30 = self;
  v17 = v15;
  v31 = v17;
  v33 = a5;
  v18 = _Block_copy(&v25);
  v18[2](v18, v19, v20, v21);
  v22 = [(SBIconListModel *)self repairModelByEliminatingGapsInIcons:v16 avoidingIcons:0 gridCellInfoOptions:a5, v25, v26, v27, v28];
  (v18[2])(v18);
  if (a6)
  {
    *a6 = [(SBIconIndexMutableList *)v16 nodes];
  }

  v23 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v23;
}

void __113__SBIconListModel_iconGridCellInfoBySimulatingRemovalOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    if (*(a1 + 48) != 1 || (objc_opt_self(), v3 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) == 0))
    {
      [*(a1 + 40) addNode:v5];
    }
  }
}

void __113__SBIconListModel_iconGridCellInfoBySimulatingRemovalOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) nodes];
  v2 = [*(a1 + 40) gridCellInfoForIcons:v5 referenceIconOrder:*(a1 + 48) options:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)allowsAddingIcon:(id)a3 ignoringPlaceholders:(BOOL)a4
{
  v4 = a4;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(SBIconListModel *)self isAllowedToContainIcon:v6])
  {
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [(SBIconListModel *)self iconGridCellInfoBySimulatingInsertionOfIcons:v7 ignoringPlaceholders:v4 gridCellInfoOptions:0 iconOrder:0];

    v9 = [(SBIconListModel *)self isGridLayoutValid:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isAllowedToContainIcon:(id)a3
{
  v4 = a3;
  if (![(SBIconListModel *)self directlyContainsIcon:v4])
  {
    v6 = [v4 gridSizeClass];
    if ([(SBIconListModel *)self isAllowedToContainIconGridSizeClass:v6])
    {
      v7 = [(SBIconListModel *)self gridSizeForGridSizeClass:v6];
      v8 = [(SBIconListModel *)self gridSize];
      v5 = 0;
      if (v7.columns > v8.columns)
      {
        goto LABEL_13;
      }

      if (HIWORD(*&v7) > HIWORD(*&v8))
      {
        goto LABEL_13;
      }

      if ([(SBIconListModel *)self allowsRotatedLayout])
      {
        v9 = [(SBIconListModel *)self gridSizeWithOptions:2];
        v10 = [(SBIconListModel *)self gridSizeForGridSizeClass:v6 gridCellInfoOptions:2];
        v5 = 0;
        if (v10.columns > v9.columns || HIWORD(*&v10) > HIWORD(*&v9))
        {
          goto LABEL_13;
        }
      }

      v11 = [(SBIconListModel *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_16:
        v13 = [v4 gridSizeClass];
        if (!v13 || ([v4 gridSizeClass], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isEqualToString:", @"SBHIconGridSizeClassDefault") & 1) != 0))
        {
          v14 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
          if (v14)
          {
            v15 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
            v16 = ([v15 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0 && -[SBIconListModel isFull](self, "isFull");

            if (v13)
            {

              if (v16)
              {
LABEL_26:
                v18 = 0;
                v19 = &v18;
                v20 = 0x2020000000;
                v21 = 1;
                v17[0] = MEMORY[0x1E69E9820];
                v17[1] = 3221225472;
                v17[2] = __42__SBIconListModel_isAllowedToContainIcon___block_invoke;
                v17[3] = &unk_1E808D7B0;
                v17[4] = &v18;
                [(SBIconListModel *)self enumerateIconsUsingBlock:v17];
                LOBYTE(v5) = *(v19 + 24) ^ 1;
                _Block_object_dispose(&v18, 8);
                goto LABEL_13;
              }
            }

            else if (v16)
            {
              goto LABEL_26;
            }

LABEL_28:
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }

          if (!v13)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_28;
      }

      v5 = [v11 iconListModel:self isAllowedToContainIcon:v4];

      if (v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  LOBYTE(v5) = 1;
LABEL_14:

  return v5 & 1;
}

void __42__SBIconListModel_isAllowedToContainIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 gridSizeClass];
  if (!v6 || (v7 = v6, [v10 gridSizeClass], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"SBHIconGridSizeClassDefault"), v8, v7, v9))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)isAllowedToContainIcons:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![(SBIconListModel *)self isAllowedToContainIcon:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (BOOL)allowsAddingIcons:(id)a3 ignoringPlaceholders:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(SBIconListModel *)self isAllowedToContainIcons:v6])
  {
    v7 = [(SBIconListModel *)self iconGridCellInfoBySimulatingInsertionOfIcons:v6 ignoringPlaceholders:v4 gridCellInfoOptions:0 iconOrder:0];
    v8 = [(SBIconListModel *)self isGridLayoutValid:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconsThatAreAllowedToBeContainedInIcons:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (![(SBIconListModel *)self isAllowedToContainIcons:v4])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__SBIconListModel_iconsThatAreAllowedToBeContainedInIcons___block_invoke;
    v8[3] = &unk_1E808BFD8;
    v8[4] = self;
    v6 = [v4 indexesOfObjectsPassingTest:v8];
    v5 = [v4 objectsAtIndexes:v6];
  }

  return v5;
}

- (id)allowedIconsForIcons:(id)a3 ignoringPlaceholders:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(SBIconListModel *)self directlyContainsIcons:v6])
  {
    v7 = v6;
  }

  else
  {
    v8 = [(SBIconListModel *)self iconsThatAreAllowedToBeContainedInIcons:v6];
    v7 = v8;
    if ([v8 count])
    {
      v9 = v8;
      while (1)
      {
        v10 = [(SBIconListModel *)self iconGridCellInfoBySimulatingInsertionOfIcons:v9 ignoringPlaceholders:v4 gridCellInfoOptions:0 iconOrder:0];
        if ([(SBIconListModel *)self isGridLayoutValid:v10])
        {
          break;
        }

        v7 = [v9 subarrayWithRange:{0, objc_msgSend(v9, "count") - 1}];

        v9 = v7;
        if (![v7 count])
        {
          goto LABEL_9;
        }
      }

      v7 = v9;
    }

LABEL_9:
  }

  return v7;
}

- (id)allowedIconsForByReplacingContentsWithIcons:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListModel *)self iconsThatAreAllowedToBeContainedInIcons:v4];
  v6 = [(SBIconListModel *)self gridCellInfoForIcons:v4 referenceIconOrder:v4 options:0];

  v7 = v5;
  v8 = v7;
  if (![(SBIconListModel *)self isGridLayoutValid:v6])
  {
    v9 = [(SBIconListModel *)self numberOfIcons];
    v10 = [v7 count];
    v11 = [v6 indexOfOutOfBoundsIconInRange:{v9, v10}];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v8 = [v7 subarrayWithRange:{0, v12}];
  }

  return v8;
}

- (BOOL)isAllowedToContainIconGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListModel *)self allowedGridSizeClasses];
  v6 = [(SBIconListModel *)self effectiveGridSizeClassDomain];
  v7 = [v5 containsGridSizeClass:v4 inDomain:v6];

  return v7;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5
{
  v9 = a3;
  v10 = [v9 gridSizeClass];
  if (v10)
  {
    v5 = [v9 gridSizeClass];
    if (![v5 isEqualToString:@"SBHIconGridSizeClassDefault"])
    {
      goto LABEL_6;
    }
  }

  if ([(SBIconListModel *)self hasNonDefaultSizeClassIcons]|| [(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:a5])
  {
    if (v10)
    {
LABEL_6:
    }
  }

  else
  {
    v13 = [(SBIconListModel *)self isFull];
    v14 = v13;
    if (v10)
    {

      if (!v14)
      {
        goto LABEL_8;
      }
    }

    else if (!v13)
    {
      goto LABEL_8;
    }
  }

  v11 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  a4 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v9 atGridCellIndex:a4 gridCellInfo:v11];

LABEL_8:
  return a4;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v8 = a5;
  v9 = [a3 gridSizeClass];
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIconOfGridSizeClass:v9 atGridCellIndex:a4 gridCellInfo:v8];

  return v10;
}

- (unint64_t)bestGridCellIndexForInsertingIconOfGridSizeClass:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    if (([v8 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
    {
      v10 = [(SBIconListModel *)self gridSizeForGridSizeClass:v8 gridCellInfo:v9];
      v11 = [v9 gridSize];
      if (*&v10 >= 0x10000)
      {
        columns = v10.columns;
        if (v10.columns)
        {
          v13 = HIWORD(*&v10);
          v14 = HIWORD(v11);
          v15 = v11;
          v16 = a4 / v11;
          v17 = [(SBIconListModel *)self iconLayoutBehavior];
          LODWORD(v18) = v14 - v13;
          v19 = (v14 - v13);
          if (v17)
          {
            if (v16 >= v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = a4 / v15;
            }
          }

          else
          {
            if (v13 >= 2)
            {
              v20 = 2;
            }

            else
            {
              v20 = v13;
            }

            v18 = v16 / v20 * v20;
            v21 = v18 > v19;
            if (v18 >= v19)
            {
              v18 = (v14 - v13);
            }

            if (v21)
            {
              v18 = v19 / v20 * v20;
            }
          }

          v22 = a4 % v15;
          v23 = (v15 - columns);
          if ((v17 & 2) != 0)
          {
            if (v22 >= v23)
            {
              v22 = (v15 - columns);
            }
          }

          else
          {
            if (columns >= 2)
            {
              v24 = 2;
            }

            else
            {
              v24 = columns;
            }

            v22 = a4 % v15 - (a4 % v15) % v24;
            v25 = v22 > v23;
            if (v22 >= v23)
            {
              v22 = (v15 - columns);
            }

            if (v25)
            {
              v22 = v23 / v24 * v24;
            }
          }

          a4 = v22 + v18 * v15;
        }
      }
    }
  }

  return a4;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 afterIconAtGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v8 afterIconAtGridCellIndex:a4 gridCellInfo:v9];

  return v10;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 afterIconAtGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 gridRangeForGridCellIndex:a4];
  v12 = v11;
  v13 = [v9 gridSize];
  v14 = SBHIconGridRangeMaxCellIndex(v10, v12, v13);
  if (v14 == SBHIconGridRangeMaxCellIndex(0, v13, v13))
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v13 != v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = HIWORD(v12) - 1;
    }

    v15 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v8 atGridCellIndex:SBHIconGridRangeMaxCellIndexOnRow(v10 gridCellInfo:v12, v13, v16), v9];
  }

  return v15;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 belowIconAtGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v8 belowIconAtGridCellIndex:a4 gridCellInfo:v9];

  return v10;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 belowIconAtGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 gridRangeForGridCellIndex:a4];
  v12 = SBHIconGridRangeCellIndexBelowColumn(v10, v11, [v9 gridSize], 0);
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v8 atGridCellIndex:v12 gridCellInfo:v9];
  }

  return v13;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 aboveIconAtGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v8 aboveIconAtGridCellIndex:a4 gridCellInfo:v9];

  return v10;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 aboveIconAtGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 gridRangeForGridCellIndex:a4];
  v12 = SBHIconGridRangeCellIndexAboveColumn(v10, v11, [v9 gridSize], 0);
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v8 atGridCellIndex:v12 gridCellInfo:v9];
  }

  return v13;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v8 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v6 gridCellInfo:v7];

  return v8;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 gridCellInfo:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  v9 = v8;
  if (v8 && ([v8 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    v21 = [v6 gridSizeClass];
    v11 = [SBIconListModel gridSizeForGridSizeClass:"gridSizeForGridSizeClass:gridCellInfo:" gridCellInfo:?];
    v12 = [v7 gridSize];
    v20 = [(SBIconListModel *)self gridSizeForGridSizeClass:v9 gridCellInfo:v7];
    Area = SBHIconGridSizeGetArea(*&v11);
    v14 = [(SBIconListModel *)self iconLayoutBehavior];
    if (Area >= 0x40)
    {
      v15 = malloc_type_calloc(Area, 8uLL, 0x100004000313F17uLL);
      v19 = v15;
    }

    else
    {
      v19 = 0;
      v15 = &v42;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke;
    aBlock[3] = &unk_1E808D938;
    v36 = v12;
    v37 = v11;
    v33 = v14;
    v34 = v15;
    v35 = Area;
    v31 = v7;
    v32 = self;
    v16 = _Block_copy(aBlock);
    if (SBHIconGridRangeContainsIconGridRange(0, *&v20, 0, *&v11, v12))
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke_2;
      v25[3] = &unk_1E808D960;
      v28 = v11;
      v29 = v12;
      v26 = v16;
      v27 = &v38;
      SBHIconGridRangeEnumerateSubranges(0, v12, *&v20, v12, 0, v25);
    }

    v17 = v39;
    if (v39[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke_4;
      v22[3] = &unk_1E808D988;
      v23 = v16;
      v24 = &v38;
      SBHIconGridRangeEnumerateSubranges(0, v12, *&v11, v12, 1, v22);

      v17 = v39;
    }

    free(v19);
    v10 = v17[3];

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = SBIconCoordinateMakeWithGridCellIndex(a2, *(a1 + 68));
  result = _SBIconListIsCoordinateValidForGridSize(v6, v7, *(a1 + 72), *(a1 + 68), *(a1 + 48));
  if (result)
  {
    [*(a1 + 32) getIconIndexes:*(a1 + 56) inGridRange:{a2, a3}];
    v9 = *(a1 + 64);
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        if (*(*(a1 + 56) + 8 * i) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [*(a1 + 40) iconAtIndex:?];
          v12 = [v11 gridSizeClass];
          if (v12)
          {
            v13 = v12;
            v14 = [v11 gridSizeClass];
            v15 = [v14 isEqualToString:@"SBHIconGridSizeClassDefault"];

            if (!v15)
            {

              return 0;
            }
          }

          v9 = *(a1 + 64);
        }
      }
    }

    return 1;
  }

  return result;
}

void __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke_2(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke_3;
  v10[3] = &unk_1E808D960;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  v13 = a4;
  SBHIconGridRangeEnumerateSubranges(a2, a3, *(a1 + 48), *(a1 + 52), 0, v10);
}

uint64_t __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v8 = a1[6];
    *(*(a1[5] + 8) + 24) = a2;
    *a4 = 1;
    *v8 = 1;
  }

  return result;
}

uint64_t __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

- (unint64_t)bestIconIndexForReplacingIcon:(id)a3 withIcon:(id)a4 gridCellInfo:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v9 atGridCellIndex:[(SBIconListModel *)self gridCellIndexForIcon:a3 gridCellInfo:v8] gridCellInfo:v8];

  if (v10)
  {
    v10 = [v8 iconIndexForGridCellIndex:v10];
  }

  return v10;
}

- (BOOL)isEligibleForSimpleMutationsWithGridCellInfoOptions:(unint64_t)a3 mutationOptions:(unint64_t)a4
{
  if ([(SBIconListModel *)self hasNonDefaultSizeClassIcons])
  {
    return 0;
  }

  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:a3])
  {
    return 0;
  }

  return (a4 & 0x1000000080) == 0;
}

- (BOOL)canBounceIcon:(id)a3
{
  v4 = a3;
  if ([(SBIconListModel *)self isIconFixed:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SBIconListModel *)self folder];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 canBounceIcon:v4];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (unint64_t)removeIconFromOtherPositionsInHierarchy:(id)a3 forInsertingAtIndex:(unint64_t)a4 removeIfAlreadyContained:(BOOL)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v9 = a5;
  v12 = a3;
  v13 = [v12 uniqueIdentifier];
  v14 = SBTreeNodeGetRootNode(self);
  v15 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = a7;
    v18 = v14;
    v34 = [v18 indexPathForIconWithIdentifier:v13];
    v33 = v13;
    if (v34)
    {
      v19 = [v18 iconAtIndexPath:v34];
      v20 = v34;
      v21 = v19;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v23 = [v18 listContainingIndexPath:v20 relativeIndex:0];
    v24 = [(SBIconListModel *)self representsSelf:v23];
    v25 = v21 == v12 && v24;
    if (v25 && v9)
    {
      v26 = [(SBIconListModel *)self shouldRemoveAlreadyContainedIconWhenRemovingFromOtherPositionsInHierarchy:v12 gridCellInfoOptions:a6 mutationOptions:v17];
      v27 = a4;
      v28 = v21;
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v27 = a4;
      v28 = v21;
      if (v25)
      {
LABEL_19:
        if ([v12 isFolderIcon])
        {
          v29 = objc_alloc_init(SBIcon);
          if (a4 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(SBIconIndexMutableList *)self->_icons insertNode:v29 atIndex:a4];
          }

          v30 = [v12 folder];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __140__SBIconListModel_removeIconFromOtherPositionsInHierarchy_forInsertingAtIndex_removeIfAlreadyContained_gridCellInfoOptions_mutationOptions___block_invoke;
          v35[3] = &unk_1E808D9B0;
          v36 = v18;
          v31 = v30;
          v37 = v31;
          [v31 enumerateAllIconsUsingBlock:v35];
          v27 = [(SBIconIndexMutableList *)self->_icons indexOfNode:v29];
          if (v27 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(SBIconIndexMutableList *)self->_icons removeNodeAtIndex:v27];
          }

          v28 = v21;
        }

        a4 = v27;
        v13 = v33;
        goto LABEL_26;
      }
    }

    v27 = a4;
    if (v23 == self)
    {
      v27 = (__PAIR128__(a4, [v34 sb_lastIconIndex]) - a4) >> 64;
    }

    [(SBIconListModel *)v23 removeIcon:v28 options:v17];
    goto LABEL_19;
  }

  if (v9)
  {
    v22 = [(SBIconListModel *)self indexForIconWithIdentifier:v13];
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a4 = (__PAIR128__(a4, v22) - a4) >> 64;
      [(SBIconListModel *)self removeIcon:v12];
    }
  }

LABEL_26:

  return a4;
}

void __140__SBIconListModel_removeIconFromOtherPositionsInHierarchy_forInsertingAtIndex_removeIfAlreadyContained_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) indexPathForIcon:?];
  if (v3)
  {
    v4 = [*(a1 + 32) folderContainingIndexPath:v3 relativeIndexPath:0];
    v5 = v4;
    if (v4 != *(a1 + 40))
    {
      [v4 removeIcon:v6 options:0];
    }
  }
}

- (unint64_t)willAddIcon:(id)a3 atIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v10 = a3;
  [(SBIconListModel *)self updateGridSizeForAddedIcon:v10 removedIcon:0];
  if ((a6 & 0x4000000) == 0)
  {
    a4 = [(SBIconListModel *)self removeIconFromOtherPositionsInHierarchy:v10 forInsertingAtIndex:a4 removeIfAlreadyContained:1 gridCellInfoOptions:a5 mutationOptions:a6];
  }

  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self _notifyListObserversWillAddIcon:v10];
  }

  return a4;
}

- (unint64_t)willReplaceIcon:(id)a3 withIcon:(id)a4 atIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v12 = a4;
  [(SBIconListModel *)self updateGridSizeForAddedIcon:v12 removedIcon:a3];
  if ((a7 & 0x4000000) == 0)
  {
    a5 = [(SBIconListModel *)self removeIconFromOtherPositionsInHierarchy:v12 forInsertingAtIndex:a5 removeIfAlreadyContained:1 gridCellInfoOptions:a6 mutationOptions:a7];
  }

  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self _notifyListObserversWillAddIcon:v12];
  }

  return a5;
}

- (void)updateParentNodeForIconIfNecessary:(id)a3
{
  v6 = a3;
  if ([v6 isFolderIcon])
  {
    v4 = [v6 folder];
    v5 = [(SBIconListModel *)self parentNodeForChildren];
    SBTreeNodeSetParent(v4, v5);
  }
}

- (void)clearParentNodeForIconIfNecessary:(id)a3
{
  v4 = a3;
  if ([v4 isFolderIcon])
  {
    v3 = [v4 folder];
    SBTreeNodeSetParent(v3, 0);
  }
}

- (void)updateGridSizeClassDomainForIconIfNecessary:(id)a3
{
  v6 = a3;
  if ([v6 isFolderIcon])
  {
    v4 = [v6 folder];
    v5 = [(SBIconListModel *)self gridSizeClassDomain];
    [v4 setGridSizeClassDomain:v5];
  }
}

- (void)didAddIcon:(id)a3 options:(unint64_t)a4
{
  v13 = a3;
  [(SBIconListModel *)self updateParentNodeForIconIfNecessary:v13];
  [(SBIconListModel *)self updateGridSizeClassDomainForIconIfNecessary:v13];
  if ([(SBIconListModel *)self isInsertionFixedForIcon:v13 options:0])
  {
    if (![(SBIconListModel *)self isIconFixed:v13])
    {
      v6 = [(SBIconListModel *)self gridCellIndexForIcon:v13 gridCellInfoOptions:0];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SBIconListModel *)self setFixedLocation:v6 forIcon:v13 options:a4 | 0x800000];
      }
    }
  }

  v7 = [v13 gridSizeClass];
  if (v7)
  {
    v8 = v7;
    v9 = [v13 gridSizeClass];
    v10 = [v9 isEqualToString:@"SBHIconGridSizeClassDefault"];

    if ((v10 & 1) == 0)
    {
      [(SBIconListModel *)self updateHasNonDefaultSizeClassIcons];
    }
  }

  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(SBIconListModel *)self setHasPlaceholderIcons:1];
  }
}

- (void)willRemoveIcon:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  [(SBIconListModel *)self updateGridSizeForAddedIcon:0 removedIcon:v5];
  [(SBIconListModel *)self _notifyListObserversWillRemoveIcon:v5];
}

- (void)didRemoveIcon:(id)a3 options:(unint64_t)a4
{
  v11 = a3;
  [(SBIconListModel *)self clearParentNodeForIconIfNecessary:v11];
  [(SBIconListModel *)self removeFixedIconLocationForIcon:v11];
  v5 = [v11 gridSizeClass];
  if (v5)
  {
    v6 = v5;
    v7 = [v11 gridSizeClass];
    v8 = [v7 isEqualToString:@"SBHIconGridSizeClassDefault"];

    if ((v8 & 1) == 0)
    {
      [(SBIconListModel *)self updateHasNonDefaultSizeClassIcons];
    }
  }

  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(SBIconListModel *)self updateHasPlaceholderIcons];
  }
}

- (void)didReplaceIcon:(id)a3 withIcon:(id)a4 options:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  [(SBIconListModel *)self clearParentNodeForIconIfNecessary:v8];
  [(SBIconListModel *)self updateParentNodeForIconIfNecessary:v7];
  [(SBIconListModel *)self updateGridSizeClassDomainForIconIfNecessary:v7];
  [(SBIconListModel *)self _notifyListObserversDidReplaceIcon:v8 withIcon:v7];
}

- (id)addIcon:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self insertIcon:v6 atIndex:[(SBIconListModel *)self numberOfIcons] options:a4];

  return v7;
}

- (id)addIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 gridSizeClass];
  v10 = [(SBIconListModel *)self firstFreeGridCellIndexOfRangeOfSizeClass:v9 gridCellInfoOptions:a4];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self addIcon:v8 options:a5];
  }

  else
  {
    [(SBIconListModel *)self insertIcon:v8 atGridCellIndex:v10 gridCellInfoOptions:a4 mutationOptions:a5 | 0x800000000];
  }
  v11 = ;

  return v11;
}

- (id)addIcons:(id)a3 options:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(SBIconListModel *)self addIcon:*(*(&v14 + 1) + 8 * i) options:a4];
        if (v12)
        {
          if (!v9)
          {
            v9 = [MEMORY[0x1E695DF70] array];
          }

          [v9 addObjectsFromArray:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)insertIcon:(id)a3 atIndex:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v11 count:1];

  v9 = [(SBIconListModel *)self insertIcons:v8 atIndex:a4 options:0, v11, v12];

  return v9;
}

- (id)insertIcon:(id)a3 atIndex:(unint64_t)a4 options:(unint64_t)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a3;
  v10 = [v8 arrayWithObjects:&v13 count:1];

  v11 = [(SBIconListModel *)self insertIcons:v10 atIndex:a4 options:a5, v13, v14];

  return v11;
}

- (id)insertIcons:(id)a3 atIndex:(unint64_t)a4 options:(unint64_t)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBIconListModel insertIcons:v9 atIndex:? options:?];
    }

    v10 = v8;
  }

  else
  {
    v26 = a5;
    v11 = [(SBIconListModel *)self numberOfIcons];
    v24 = v11 <= a4;
    if (v11 <= a4)
    {
      a4 = [(SBIconListModel *)self numberOfIcons];
    }

    v25 = a4;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = v8;
    v10 = v8;
    v12 = [v10 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v12)
    {
      v13 = *v45;
      v14 = 1;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v44 + 1) + 8 * i);
          if (![(SBIconListModel *)self isAllowedToContainIcon:v16])
          {
            v20 = SBLogCommon();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [SBIconListModel insertIcons:atIndex:options:];
            }

            goto LABEL_23;
          }

          v17 = [v16 gridSizeClass];
          if (v17)
          {
            v18 = [v16 gridSizeClass];
            v19 = [v18 isEqualToString:@"SBHIconGridSizeClassDefault"];

            v14 &= v19;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 1;
    }

    v21 = [(SBIconListModel *)self folder];
    v22 = [v21 startCoalescingContentChangesForReason:@"insertIcons"];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__14;
    v42 = __Block_byref_object_dispose__14;
    v43 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __47__SBIconListModel_insertIcons_atIndex_options___block_invoke;
    v28[3] = &unk_1E808DA50;
    v32 = v25;
    v34 = (v26 & 0x10000000) != 0;
    v29 = v10;
    v30 = self;
    v35 = v14 & 1;
    v33 = v26;
    v31 = &v38;
    v36 = v24;
    v37 = (v26 & 0x80000000) == 0;
    [(SBIconListModel *)self _coalesceChangesWithRequestID:@"insertIcons" changeBlock:v28];
    [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:0];
    [v22 invalidate];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:v26];
    v10 = v39[5];

    _Block_object_dispose(&v38, 8);
LABEL_23:
    v8 = v27;
  }

  return v10;
}

void __47__SBIconListModel_insertIcons_atIndex_options___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = *(a1 + 56);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__SBIconListModel_insertIcons_atIndex_options___block_invoke_2;
  aBlock[3] = &unk_1E808DA00;
  v4 = *(a1 + 32);
  v53 = *(a1 + 72);
  v5 = *(a1 + 40);
  v45 = v4;
  v46 = v5;
  v6 = *(a1 + 64);
  v49 = v54;
  v52 = v6;
  v7 = v3;
  v47 = v7;
  v50 = &v59;
  v51 = &v55;
  v8 = v2;
  v48 = v8;
  v9 = _Block_copy(aBlock);
  if (*(a1 + 73) == 1 && ([*(a1 + 40) rotatedLayoutClusterGridSizeClass], (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(*(a1 + 40), "rotatedLayoutClusterGridSizeClass"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"SBHIconGridSizeClassDefault"), v11, v10, (v12 & 1) == 0))
  {
    [*(a1 + 40) performChangesByPreservingPositionsOfIconsLargerThanSizeClass:@"SBHIconGridSizeClassDefault" block:v9];
  }

  else
  {
    v9[2](v9);
  }

  v13 = [*(a1 + 40) _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:0 mutationOptions:*(a1 + 64)];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v63 count:16];
  if (v15)
  {
    v16 = *v41;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(a1 + 40) didAddIcon:*(*(&v40 + 1) + 8 * i) options:*(a1 + 64)];
      }

      v15 = [v14 countByEnumeratingWithState:&v40 objects:v63 count:16];
    }

    while (v15);
  }

  v18 = [*(a1 + 40) _checkAndRemoveBouncedIconsAfterChangeToIcons:v14 ignoringTrailingIconCheck:(*(a1 + 74) & 1) == 0 options:*(a1 + 64)];
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v14 removeObjectsInArray:?];
  }

  if ([v7 count])
  {
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    if (v22)
    {
      v23 = [v22 mutableCopy];
      [v23 addObjectsFromArray:v7];
      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v26 = v7;
      v25 = *(v21 + 40);
      *(v21 + 40) = v26;
    }
  }

  v27 = [*(*(*(a1 + 48) + 8) + 40) sbh_containsObjectInArray:*(a1 + 32)];
  if ([*(*(*(a1 + 48) + 8) + 40) sbh_containsAllObjectsInArray:*(a1 + 32)])
  {
    v28 = [*(a1 + 32) count];
    v29 = v28 != [*(*(*(a1 + 48) + 8) + 40) count];
  }

  else
  {
    v29 = 1;
  }

  v30 = [*(a1 + 40) allowsIndependentRotatedLayout];
  if (v27 & 1) == 0 && (*(a1 + 75) & v30)
  {
    if (*(v60 + 24) == 1)
    {
      v31 = *(a1 + 40);
      v32 = v39;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __47__SBIconListModel_insertIcons_atIndex_options___block_invoke_4;
      v39[3] = &unk_1E808DA28;
      v33 = v14;
      v34 = *(a1 + 64);
      v39[4] = v33;
      v39[5] = v34;
      [v31 _updateRotatedIconsUsingBlock:v39];
LABEL_29:

      goto LABEL_32;
    }

    if (*(v56 + 24) == 1)
    {
      v35 = *(a1 + 40);
      v32 = v38;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __47__SBIconListModel_insertIcons_atIndex_options___block_invoke_5;
      v38[3] = &unk_1E808DA28;
      v36 = v14;
      v37 = *(a1 + 64);
      v38[4] = v36;
      v38[5] = v37;
      [v35 _updateRotatedIconsUsingBlock:v38];
      goto LABEL_29;
    }
  }

  if (v29 || (v30 & 1) == 0)
  {
    [*(a1 + 40) _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:*(a1 + 64)];
  }

LABEL_32:
  [*(a1 + 40) _notifyListObserversDidAddIcons:v14 didRemoveIcons:0 movedIcons:v13];

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
}

void __47__SBIconListModel_insertIcons_atIndex_options___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SBIconListModel_insertIcons_atIndex_options___block_invoke_3;
  v7[3] = &unk_1E808D9D8;
  v12 = *(a1 + 96);
  v11 = *(a1 + 88);
  v3 = *(a1 + 64);
  v6 = *(a1 + 40);
  v4 = *(&v6 + 1);
  v10 = *(a1 + 72);
  *&v5 = *(a1 + 56);
  *(&v5 + 1) = v3;
  v8 = v6;
  v9 = v5;
  [v2 enumerateObjectsUsingBlock:v7];
}

void __47__SBIconListModel_insertIcons_atIndex_options___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = v5;
  if (*(a1 + 88))
  {
    v6 = *(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    v6 = [*(a1 + 32) willAddIcon:v5 atIndex:*(*(*(a1 + 56) + 8) + 24) gridCellInfoOptions:0 mutationOptions:*(a1 + 80)];
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addObject:v10];
  }

  else
  {
    if (*(a1 + 80))
    {
      while (v6 < [*(a1 + 32) numberOfIcons])
      {
        v8 = *(a1 + 32);
        v9 = [v8[1] nodeAtIndex:v6];
        LOBYTE(v8) = [v8 canBounceIcon:v9];

        if (v8)
        {
          break;
        }

        ++v6;
      }
    }

    if (!a3)
    {
      *(*(*(a1 + 64) + 8) + 24) = v6 == 0;
    }

    v7 = [*(*(a1 + 32) + 8) count];
    if (v6 >= v7)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v6 = v7;
    }

    [*(*(a1 + 32) + 8) insertNode:v10 atIndex:v6];
    [*(a1 + 48) addObject:v10];
    *(*(*(a1 + 56) + 8) + 24) = v6 + 1;
  }
}

- (id)insertIconWhilePreservingQuads:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v37[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  v12 = v11;
  if (v11 == self)
  {
    if ([(SBIconListModel *)self isAllowedToContainIcon:v10])
    {
      v14 = [v10 gridSizeClass];
      v20 = [(SBIconListModel *)self gridSizeForGridSizeClass:v14 gridCellInfoOptions:a5];
      v15 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
      v16 = [(SBIconListModel *)self gridSizeForGridSizeClass:v15 gridCellInfoOptions:a5];
      v21 = [(SBIconListModel *)self folder];
      v17 = [v21 startCoalescingContentChangesForReason:@"insertIcons"];
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__14;
      v35 = __Block_byref_object_dispose__14;
      v36 = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke;
      v22[3] = &unk_1E808DAF0;
      v22[4] = self;
      v27 = a6;
      v28 = a4;
      v23 = v10;
      v24 = v15;
      v29 = v20;
      v30 = v16;
      v25 = &v31;
      v26 = a5;
      [(SBIconListModel *)self _coalesceChangesWithRequestID:@"insertIcons" changeBlock:v22];
      [v17 invalidate];
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:a5 mutationOptions:a6];
      [(SBIconListModel *)self markIconStateDirtyWithOptions:a6];
      v13 = v32[5];

      _Block_object_dispose(&v31, 8);
    }

    else
    {
      v18 = SBLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SBIconListModel insertIconWhilePreservingQuads:toGridCellIndex:gridCellInfoOptions:mutationOptions:];
      }

      v37[0] = v10;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    }
  }

  else
  {
    v13 = [(SBIconListModel *)v11 insertIconWhilePreservingQuads:v10 toGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6];
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:a5 mutationOptions:a6];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:a6];
  }

  return v13;
}

void __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) willAddIcon:*(a1 + 40) atIndex:0 gridCellInfoOptions:*(a1 + 64) mutationOptions:*(a1 + 72)];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = [*(a1 + 32) gridCellInfoWithOptions:*(a1 + 64)];
  if (([*(a1 + 32) isValidGridRange:v2 gridCellInfo:{v3, v4}] & 1) == 0)
  {
    v5 = [*(a1 + 32) bestGridCellIndexForInsertingIcon:*(a1 + 40) gridCellInfo:v4];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v2 = 0;
    }

    else
    {
      v2 = v5;
    }
  }

  v6 = [*(a1 + 32) iconAtGridCellIndex:v2 gridCellInfoOptions:*(a1 + 64)];
  v7 = [*(a1 + 32) coordinateForGridCellIndex:v2 gridCellInfoOptions:*(a1 + 64)];
  v9 = v8;
  v10 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke_2;
  v25[3] = &unk_1E808DAC8;
  v11 = *(a1 + 64);
  v25[4] = v10;
  v29 = v11;
  v30 = v2;
  v34 = *(a1 + 88);
  v24 = *(a1 + 40);
  v12 = v24.i64[0];
  v26 = vextq_s8(v24, v24, 8uLL);
  v13 = v6;
  v35 = *(a1 + 92);
  v31 = v7;
  v32 = v9;
  v14 = *(a1 + 56);
  v27 = v13;
  v28 = v14;
  v33 = *(a1 + 72);
  [v10 performChangesByPreservingOrderOfDefaultSizedIcons:v25];
  if ((*(a1 + 72) & 1) == 0)
  {
    v15 = [*(a1 + 32) _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:*(a1 + 64) mutationOptions:?];
    [*(a1 + 32) didAddIcon:*(a1 + 40) options:*(a1 + 72)];
    v16 = *(a1 + 32);
    v37[0] = *(a1 + 40);
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v18 = [v16 _checkAndRemoveBouncedIconsAfterChangeToIcons:v17 ignoringTrailingIconCheck:0 options:*(a1 + 72)];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = [*(*(*(a1 + 56) + 8) + 40) containsObject:*(a1 + 40)];
    v22 = *(a1 + 32);
    if (v21)
    {
      [*(a1 + 32) _notifyListObserversDidAddIcons:0 didRemoveIcons:0 movedIcons:v15];
    }

    else
    {
      v36 = *(a1 + 40);
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
      [v22 _notifyListObserversDidAddIcons:v23 didRemoveIcons:0 movedIcons:v15];
    }
  }
}

void __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke_3;
  v35[3] = &unk_1E808DAA0;
  v35[4] = v2;
  v39 = *(a1 + 72);
  v41 = *(a1 + 112);
  v36 = *(a1 + 48);
  v4 = *(a1 + 56);
  v42 = *(a1 + 116);
  v40 = *(a1 + 88);
  v5 = *(a1 + 64);
  v37 = v4;
  v38 = v5;
  [v2 performChangesByClusteringForSizeClass:v3 behavior:2 withGridCellInfoOptions:v39 block:v35];
  while ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = *(*(*(a1 + 64) + 8) + 40);
    v7 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * v10);
          v12 = [v11 gridSizeClass];
          if (!v12 || (v13 = v12, [v11 gridSizeClass], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"SBHIconGridSizeClassDefault"), v14, v13, v15) || (v16 = objc_msgSend(*(a1 + 32), "bestGridCellIndexForInsertingIcon:gridCellInfoOptions:", v11, *(a1 + 72)), v16 == 0x7FFFFFFFFFFFFFFFLL) || v16 == *(a1 + 80))
          {
            [*(*(a1 + 32) + 8) addNode:v11];
          }

          else
          {
            v17 = [*(a1 + 32) insertIconWhilePreservingQuads:v11 toGridCellIndex:v16 gridCellInfoOptions:*(a1 + 72) mutationOptions:*(a1 + 104) | 1];
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v18 = [v17 countByEnumeratingWithState:&v27 objects:v43 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v28;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v28 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v27 + 1) + 8 * i);
                  if (([v6 containsObject:v22] & 1) == 0)
                  {
                    [v6 addObject:v22];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v27 objects:v43 count:16];
              }

              while (v19);
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v23 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
        v8 = v23;
      }

      while (v23);
    }

    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v6;
  }
}

void __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke_3(uint64_t a1)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) gridCellInfoWithOptions:*(a1 + 64)];
  v3 = [v2 iconIndexForGridCellIndex:*(a1 + 72)];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) iconAtIndex:v3];
  }

  v5 = [*(a1 + 32) iconsForGridRange:*(a1 + 72) gridCellInfo:{*(a1 + 96), v2}];
  if ([v5 count] >= 2)
  {
    v6 = [v5 firstObject];
    [*(*(a1 + 32) + 8) replaceNodeAtIndex:objc_msgSend(*(*(a1 + 32) + 8) withNode:{"indexOfNode:", v6), *(a1 + 40)}];
    [*(*(a1 + 32) + 8) removeNodesInArray:v5];
LABEL_36:

    goto LABEL_37;
  }

  v7 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a1 + 48);

    if (v8 && ([v4 referencesIcon:*(a1 + 48)] & 1) == 0)
    {
      NSLog(&cfstr_TheClusterDoes.isa);
    }
  }

  else
  {
  }

  v9 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    if (!*(a1 + 48))
    {

LABEL_18:
      v6 = v4;
      v11 = [*(a1 + 32) gridSizeClassSizesWithOptions:*(a1 + 64)];
      v12 = [[SBIconListModel alloc] initWithUniqueIdentifier:@"InsertWithQuads" folder:0 gridSize:*(a1 + 100) gridSizeClassSizes:v11];
      v13 = [*(a1 + 32) gridSizeClassDomain];
      [(SBIconListModel *)v12 setGridSizeClassDomain:v13];

      v14 = [v6 referencedIcons];
      v15 = [(SBIconListModel *)v12 addIcons:v14];

      v16 = [(SBIconListModel *)v12 numberOfIcons];
      if (*(a1 + 48))
      {
        v16 = [(SBIconListModel *)v12 indexForIcon:?];
      }

      v17 = v16;
      v18 = [v2 coordinateForGridCellIndex:{objc_msgSend(v2, "gridCellIndexForIconIndex:", v3)}];
      v20 = [(SBIconListModel *)v12 gridCellIndexForCoordinate:*(a1 + 80) - v18 + 1 gridCellInfoOptions:*(a1 + 88) - v19 + 1, 0];
      v21 = [(SBIconListModel *)v12 insertIcon:*(a1 + 40) atIndex:v17];
      v22 = *(*(a1 + 56) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      if ([*(*(*(a1 + 56) + 8) + 40) count] && objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "bs_containsObjectPassingTest:", &__block_literal_global_52) && -[SBIconListModel directlyContainsIconPassingTest:](v12, "directlyContainsIconPassingTest:", &__block_literal_global_54_0))
      {
        v48 = v20;
        v49 = v4;
        v50 = v11;
        v51 = v6;
        v24 = [MEMORY[0x1E695DF70] array];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke_6;
        v52[3] = &unk_1E808DA78;
        v25 = v24;
        v53 = v25;
        [(SBIconListModel *)v12 enumerateIconsWithOptions:2 usingBlock:v52];
        icons = v12->_icons;
        v27 = *(*(*(a1 + 56) + 8) + 40);
        p_isa = &v12->super.isa;
        v29 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{-[SBIconListModel numberOfIcons](v12, "numberOfIcons"), objc_msgSend(v27, "count")}];
        [(SBIconIndexMutableList *)icons insertNodes:v27 atIndexes:v29];

        v47 = v25;
        v30 = [v25 lastObject];
        v31 = [(SBIconListModel *)v12 indexForIcon:v30];

        v32 = v31 + 1;
        if (v31 + 1 >= [p_isa numberOfIcons])
        {
          goto LABEL_30;
        }

        v33 = v31 - 0x7FFFFFFFFFFFFFFELL;
        while (1)
        {
          v34 = p_isa;
          v35 = [p_isa iconAtIndex:v32];
          v36 = [v35 gridSizeClass];
          if (!v36)
          {
            break;
          }

          v37 = v36;
          v38 = [v35 gridSizeClass];
          v39 = [v38 isEqualToString:@"SBHIconGridSizeClassDefault"];

          if (v39)
          {
            break;
          }

          ++v32;
          p_isa = v34;
          ++v33;
          if (v32 >= [v34 numberOfIcons])
          {
            goto LABEL_30;
          }
        }

        p_isa = v34;
        if (!v33)
        {
LABEL_30:
          v32 = [p_isa numberOfIcons];
        }

        [p_isa[1] moveNodes:v47 toContiguousIndicesStartingAt:v32];
        v54[0] = *(a1 + 40);
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
        v41 = [p_isa _checkAndRemoveBouncedIconsAfterChangeToIcons:v40 ignoringTrailingIconCheck:0 options:0];
        v42 = *(*(a1 + 56) + 8);
        v43 = *(v42 + 40);
        *(v42 + 40) = v41;

        v44 = [p_isa gridCellIndexForIcon:*(a1 + 40) gridCellInfoOptions:0];
        v12 = p_isa;
        if (v48 != v44 && v44 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v45 = [p_isa moveContainedIcon:*(a1 + 40) toGridCellIndex:? gridCellInfoOptions:? mutationOptions:?];
        }

        v11 = v50;
        v6 = v51;
        v4 = v49;
      }

      v46 = [(SBIconListModel *)v12 icons];
      [v6 updateReferencedIcons:v46];

      goto LABEL_36;
    }

    v10 = [v4 referencesIcon:?];

    if (v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  [*(*(a1 + 32) + 8) addNode:*(a1 + 40)];
LABEL_37:
}

uint64_t __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __102__SBIconListModel_insertIconWhilePreservingQuads_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 gridSizeClass];
  if (v6 && (v7 = v6, [v10 gridSizeClass], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"SBHIconGridSizeClassDefault"), v8, v7, !v9))
  {
    if ([*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }

  else
  {
    [*(a1 + 32) insertObject:v10 atIndex:0];
  }
}

- (id)insertIcon:(id)a3 relativeToIcon:(id)a4 positionDelta:(int64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v31[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  if ([(SBIconListModel *)self isAllowedToContainIcon:v12])
  {
    v14 = 0;
    if (v12 != v13 && a5)
    {
      v15 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a6];
      v16 = [(SBIconListModel *)self directlyContainsIcon:v12];
      v17 = [v15 gridCellIndexForInsertingIcon:v12 relativeToIcon:v13 positionDelta:a5 gridCellInfoOptions:a6 mutationOptions:a7];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = v12;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      }

      else
      {
        v18 = v17;
        if (v16)
        {
          v19 = [v15 moveContainedIcon:v12 toGridCellIndex:v17 gridCellInfoOptions:a6 mutationOptions:a7];
          v14 = 0;
        }

        else
        {
          v20 = [(SBIconListModel *)self _otherListForGridCellInfoOptions:a6];
          v21 = v20;
          if (v20 == v15)
          {

            v21 = 0;
          }

          v22 = [v15 insertIcon:v12 atGridCellIndex:v18 gridCellInfoOptions:a6 mutationOptions:a7 | 0xC0000000];
          v23 = v22;
          if (v22)
          {
            v24 = [v22 mutableCopy];
          }

          else
          {
            v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v25 = v24;
          if (v21)
          {
            [v21 removeIcons:v23 options:a7 | 0xC0000000];
            if ([v21 directlyContainsIcon:v13])
            {
              v26 = [v21 insertIcon:v12 atGridCellIndex:objc_msgSend(v21 gridCellInfoOptions:"gridCellIndexForInsertingIcon:relativeToIcon:positionDelta:gridCellInfoOptions:mutationOptions:" mutationOptions:{v12, v13, a5, 0, a7 | 0xC4000000), 0, a7 | 0xC4000000}];
              if (v26)
              {
                v27 = v26;
                [v15 removeIcons:v26];
                [v25 addObjectsFromArray:v27];
              }
            }

            else
            {
              v28 = [v21 addIcon:v12 options:a7 | 0xC0000000];
            }
          }

          if ([v25 count])
          {
            v14 = v25;
          }

          else
          {
            v14 = 0;
          }
        }
      }
    }
  }

  else
  {
    v31[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  }

  return v14;
}

- (unint64_t)indexForInsertingIcon:(id)a3 relativeToIcon:(id)a4 positionDelta:(int64_t)a5
{
  v7 = [(SBIconListModel *)self indexForIcon:a4];
  if (a5 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = -a5;
  }

  if (a5 < 0)
  {
    v11 = v7 >= v8;
    v12 = v7 - v8;
    if (v11)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = v7 + v8;
    result = [(SBIconListModel *)self numberOfIcons];
    if (v9 < result)
    {
      return v9;
    }
  }

  return result;
}

- (unint64_t)gridCellIndexForInsertingIcon:(id)a3 relativeToIcon:(id)a4 positionDelta:(int64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v66[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v43 = a4;
  v50 = a6;
  v42 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
  v41 = [v11 gridSizeClass];
  v40 = [v43 gridSizeClass];
  v47 = self;
  v46 = [v42 gridSize];
  v12 = a6;
  v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:v41 gridCellInfoOptions:a6];
  v14 = [(SBIconListModel *)self gridSizeForGridSizeClass:v40 gridCellInfoOptions:v12];
  v49 = [(SBIconListModel *)v47 maxNumberOfIcons];
  if (a5 >= 0)
  {
    v15 = a5;
  }

  else
  {
    v15 = -a5;
  }

  v52 = v15;
  v16 = [(SBIconListModel *)v47 gridRangeForIcon:v11 gridCellInfo:v42];
  v17 = v42;
  v18 = v47;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v66[0] = v11;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
    v20 = [(SBIconListModel *)v47 iconGridCellInfoBySimulatingRemovalOfIcons:v19 ignoringPlaceholders:0 gridCellInfoOptions:v50 iconOrder:0];

    v17 = v20;
  }

  v54 = v17;
  v39 = [(SBIconListModel *)v47 gridCellIndexForIcon:v43 gridCellInfo:?];
  v37 = v14;
  v53 = v13;
  v21 = v46;
  if (((a5 & 0x4000000000000000) != 0) ^ __OFSUB__(a5, -a5) | (a5 == -a5))
  {
    v22 = -a5;
  }

  else
  {
    v22 = a5;
  }

  v48 = v22;
  v23 = v39;
  while (1)
  {
    v24 = v21;
    v25 = v23;
    if ((a5 & 0x8000000000000000) == 0 || v23 < v52)
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      if (a5 < 0 || v48 + v23 >= v49)
      {
        break;
      }
    }

    v23 += a5;
    v21 = v24;
    if (v23 == [(SBIconListModel *)v18 bestGridCellIndexForInsertingIcon:v11 atGridCellIndex:v25 + a5 gridCellInfo:v54]&& [(SBIconListModel *)v18 isValidGridRange:v25 + a5 options:v53, v50])
    {
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 1;
      v27 = [(SBIconListModel *)v18 iconsForGridRange:v25 + a5 gridCellInfo:v53, v54];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v27;
      v28 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v28)
      {
        v45 = *v58;
        v38 = v11;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v58 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v30 = [(SBIconListModel *)v18 gridRangeForIcon:*(*(&v57 + 1) + 8 * i) gridCellInfo:v54];
            v32 = v31;
            v51 = v51 & 0xFFFFFFFF00000000 | v24;
            v33 = SBHIconGridRangeIntersection(v30, v31, v25 + a5, v53, v24);
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __114__SBIconListModel_gridCellIndexForInsertingIcon_relativeToIcon_positionDelta_gridCellInfoOptions_mutationOptions___block_invoke;
            v55[3] = &unk_1E808DB18;
            v55[5] = v30;
            v55[6] = v32;
            v56 = v46;
            v55[4] = &v61;
            v14 = v14 & 0xFFFFFFFF00000000 | v24;
            SBHIconGridRangeEnumerateCellIndexes(v33, v34, v14, v55);
            if ((v62[3] & 1) == 0)
            {
              v11 = v38;
              v21 = v24;
              v18 = v47;
              goto LABEL_26;
            }

            v18 = v47;
          }

          v21 = v24;
          v28 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
          v11 = v38;
          if (v28)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      v35 = *(v62 + 24);
      v23 = a5 + v25;
      _Block_object_dispose(&v61, 8);
      if (v35)
      {
        v26 = a5 + v25;
        break;
      }
    }
  }

  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((a5 & 0x8000000000000000) == 0 || v39)
    {
      v26 = [(SBIconListModel *)v18 firstGridCellIndexOfRangeOfGridSizeClass:v41 withoutIconsNearGridRange:v39 gridCellInfo:v37, v54];
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

unint64_t __114__SBIconListModel_gridCellIndexForInsertingIcon_relativeToIcon_positionDelta_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  result = SBHIconGridRangeRowForCellIndex(*(a1 + 40), *(a1 + 48), a2, *(a1 + 56));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)a3 maintainingPositionRelativeToIcon:(id)a4 before:(BOOL)a5 ignoringPlaceholders:(BOOL)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8
{
  v9 = a6;
  v10 = a5;
  v13 = a3;
  v14 = a4;
  if (v9)
  {
    v15 = [(SBIconListModel *)self indexesForIconsPassingTest:&__block_literal_global_58];
    if ([v15 count])
    {
      v16 = v10;
      v17 = [(SBIconListModel *)self copy];
      [v17 removeIconsAtIndexes:v15 options:0];
      v18 = [v17 bestGridCellIndexForInsertingIcon:v13 maintainingPositionRelativeToIcon:v14 before:v16 ignoringPlaceholders:0 gridCellInfoOptions:a7 mutationOptions:a8];

      goto LABEL_34;
    }
  }

  v19 = [(SBIconListModel *)self indexForIcon:v14];
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v19;
    v50 = [(SBIconListModel *)self gridCellInfoWithOptions:a7];
    v21 = [v50 gridCellIndexForIconIndex:v20];
    v22 = v21;
    if (!v10 || v21)
    {
      [v13 uniqueIdentifier];
      v24 = v23 = v10;
      v25 = [v14 uniqueIdentifier];
      v48 = [(SBIconListModel *)self gridSizeForIcon:v13];
      v46 = [(SBIconListModel *)self gridSizeForIcon:v14];
      v26 = [v50 gridSize];
      Area = SBHIconGridSizeGetArea(v26);
      v28 = -1;
      if (!v23)
      {
        v28 = 1;
      }

      v47 = v28;
      if (!v23)
      {
        v29 = [(SBIconListModel *)self indexForIcon:v13];
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        if (v29 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = [v50 gridCellIndexForIconIndex:?];
        }

        if (v30 == 0x7FFFFFFFFFFFFFFFLL || v30 > v22)
        {
          ++v22;
        }
      }

      v45 = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __151__SBIconListModel_bestGridCellIndexForInsertingIcon_maintainingPositionRelativeToIcon_before_ignoringPlaceholders_gridCellInfoOptions_mutationOptions___block_invoke_2;
      aBlock[3] = &unk_1E808DB40;
      v44 = v24;
      v53 = v44;
      v43 = v25;
      v54 = v43;
      v55 = v48;
      v56 = v46;
      v57 = v26;
      v58 = v23;
      v49 = _Block_copy(aBlock);
      v18 = v49[2](v49, self, v50, 1);
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = 0;
        do
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
          if (((v22 == 0) & v32) != 0 || v22 >= Area)
          {
            break;
          }

          v33 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v13 atGridCellIndex:v22 gridCellInfo:v50, v43, v44];
          v34 = self;
          v35 = [(SBIconListModel *)self copy];
          v36 = v13;
          v37 = [(SBIconListModel *)v35 insertIcon:v13 atGridCellIndex:v33 gridCellInfoOptions:a7 mutationOptions:a8];
          v38 = [(SBIconListModel *)v35 gridCellInfoWithOptions:a7];
          v39 = v49[2](v49, v35, v38, 0);
          v18 = v39;
          v40 = v22 + v47;
          if (!v22)
          {
            v40 = 0;
          }

          if (v39 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v41 = v40;
          }

          else
          {
            v41 = v22;
          }

          if (!v22)
          {
            v13 = v36;
            break;
          }

          v32 |= v22 == 0;
          v22 = v41;
          v13 = v36;
          self = v34;
        }

        while (v18 == 0x7FFFFFFFFFFFFFFFLL);
      }

      v14 = v45;
    }

    else
    {
      v18 = 0;
    }
  }

LABEL_34:

  return v18;
}

uint64_t __151__SBIconListModel_bestGridCellIndexForInsertingIcon_maintainingPositionRelativeToIcon_before_ignoringPlaceholders_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __151__SBIconListModel_bestGridCellIndexForInsertingIcon_maintainingPositionRelativeToIcon_before_ignoringPlaceholders_gridCellInfoOptions_mutationOptions___block_invoke_2(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v9 gridCellIndexForIconWithIdentifier:v7 gridCellInfo:v8];
  v11 = [v9 gridCellIndexForIconWithIdentifier:*(a1 + 40) gridCellInfo:v8];

  v12 = SBHIconGridDistanceBetweenGridRanges(v10, *(a1 + 48), v11, *(a1 + 52), *(a1 + 56));
  if (*(a1 + 60) == 1)
  {
    if (a4)
    {
      if (!v13 && (v12 & 0x8000000000000000) == 0 && v12 <= *(a1 + 50))
      {
        return v10;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v13 <= 0 && (v13 || v12 < 0))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (a4)
  {
    if (v13 || v12 > 0 || v12 + *(a1 + 50) < 0 != __OFADD__(v12, *(a1 + 50)))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if ((v13 & 0x8000000000000000) == 0 && (v13 || v12 >= 1))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)replaceIcon:(id)a3 withIcon:(id)a4 options:(unint64_t)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v14 count:1];

  v12 = [(SBIconListModel *)self replaceIcon:v10 withIcons:v11 options:a5, v14, v15];

  return v12;
}

- (id)replaceIconAtIndex:(unint64_t)a3 withIcon:(id)a4 options:(unint64_t)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(SBIconListModel *)self iconAtIndex:a3];
  v13[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [(SBIconListModel *)self replaceIcon:v9 withIcons:v10 options:a5];

  return v11;
}

- (id)replaceIconAtGridCellIndex:(unint64_t)a3 withIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v10 = a4;
  v11 = [(SBIconListModel *)self iconAtGridCellIndex:a3 gridCellInfoOptions:a5];
  if (v11)
  {
    [(SBIconListModel *)self replaceIcon:v11 withIcon:v10 gridCellInfoOptions:a5 mutationOptions:a6];
  }

  else
  {
    [(SBIconListModel *)self insertIcon:v10 atGridCellIndex:a3 gridCellInfoOptions:a5 mutationOptions:a6];
  }
  v12 = ;

  return v12;
}

- (id)replaceIcon:(id)a3 withIcons:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = [v12 count];
  if (!v13)
  {
    [(SBIconListModel *)self removeIcon:v11 options:a6];
    v20 = 0;
    goto LABEL_68;
  }

  v14 = v13;
  if (![(SBIconListModel *)self isAllowedToContainIcons:v12])
  {
    v20 = v12;
    goto LABEL_68;
  }

  v15 = NSStringFromSelector(a2);
  v51 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v15];

  v49 = self;
  v16 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  v17 = [v12 firstObject];
  v18 = [v17 gridSizeClass];
  v19 = [v11 gridSizeClass];
  v53 = v19;
  v54 = v18;
  if (v14 == 1 && (!v18 || [v18 isEqualToString:@"SBHIconGridSizeClassDefault"]) && (!v19 || objc_msgSend(v19, "isEqualToString:", @"SBHIconGridSizeClassDefault")) && objc_msgSend(v16, "isEligibleForSimpleMutationsWithGridCellInfoOptions:mutationOptions:", a5, a6 | 0x80000000))
  {
    v56 = 0;
    v57 = [v16 indexForIcon:v11];
    v58 = 1;
    v59 = v57;
  }

  else
  {
    v56 = [v16 gridCellInfoWithOptions:a5];
    v57 = [v16 indexForIcon:v11];
    v59 = [v56 gridCellIndexForIconIndex:?];
    v58 = 0;
    if (v14 != 1)
    {
      goto LABEL_25;
    }
  }

  v21 = v17;
  v22 = [v16 gridSizeForGridSizeClass:v18 gridCellInfoOptions:a5];
  v23 = [v16 gridSizeForGridSizeClass:v19 gridCellInfoOptions:a5];
  v24 = v59;
  if ((v58 & 1) == 0)
  {
    v24 = [v16 bestGridCellIndexForInsertingIcon:v21 atGridCellIndex:v59 gridCellInfo:v56];
  }

  if (!SBHIconGridSizeEqualToIconGridSize(v23, v22) && [v16 usesContiguousRegionReflowingWithGridCellInfo:v56 gridCellInfoOptions:a5 mutationOptions:a6 | 0x80000000])
  {
    [v16 reflowIconsForwardForInsertingIcon:v21 atGridCellIndex:v24 replacingIcon:v11 gridCellInfoOptions:a5];
  }

  if ((v58 & 1) == 0 && ([v16 isInsertionFixedForIcon:v21 atGridCellIndex:v24 gridCellInfo:v56 mutationOptions:a6 | 0x80000000] & 1) != 0 || (v54 == v53 || objc_msgSend(v54, "isEqualToString:", v53)) && objc_msgSend(v16, "isIconFixed:", v11))
  {
    [v16 swapFixedIconLocationForReplacedIcon:v11 withReplacementIcon:v21];
  }

LABEL_25:
  v50 = v17;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v52 = v12;
  obj = v12;
  v55 = v11;
  v62 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v62)
  {
    v63 = 0;
    v64 = 0;
    v25 = 0;
    v61 = *v71;
    do
    {
      v26 = 0;
      v27 = v25;
      do
      {
        if (*v71 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v70 + 1) + 8 * v26);
        if (v27)
        {
          v29 = [v16 willAddIcon:*(*(&v70 + 1) + 8 * v26) atIndex:0 gridCellInfoOptions:a5 mutationOptions:a6 | 0x80000000];
        }

        else
        {
          v30 = v57;
          if ((v58 & 1) == 0)
          {
            v30 = [v16 bestIconIndexForReplacingIcon:v11 withIcon:*(*(&v70 + 1) + 8 * v26) gridCellInfo:v56];
          }

          v29 = [v16 willReplaceIcon:v11 withIcon:v28 atIndex:v30 gridCellInfoOptions:a5 mutationOptions:a6 | 0x80000000];
        }

        v31 = v29;
        if ((a6 & 0x100) != 0)
        {
          [v16 relocateAnyAffectedFixedIconsForInsertingIcon:v28 atGridCellIndex:v59 replacingIcon:v11 gridCellInfoOptions:a5 mutationOptions:a6 | 0x80000000];
        }

        if (v27)
        {
          v32 = [v16 insertIcon:v28 afterIcon:v27 gridCellInfoOptions:a5 mutationOptions:a6 | 0x80000000];
          v33 = v32;
          if (v63)
          {
            if (v32)
            {
              v34 = [v63 arrayByAddingObjectsFromArray:v32];

              v63 = v34;
            }
          }

          else
          {
            v63 = v32;
          }

          v25 = v27;
        }

        else
        {
          v35 = [v16[1] indexOfNode:v11];
          v36 = v16[1];
          if (v35 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v36 insertNode:v28 atIndex:v31];
          }

          else
          {
            [v36 replaceNodeAtIndex:v35 withNode:v28];
            v37 = v16[1];
            v74 = v28;
            v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
            [v37 moveNodes:v38 toContiguousIndicesStartingAt:v31];

            v11 = v55;
          }

          v25 = v28;
        }

        v39 = [v16 _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:a5 mutationOptions:a6 | 0x80000000];
        if ([v39 count])
        {
          v40 = v64;
          if (!v64)
          {
            v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          v64 = v40;
          [v40 addObjectsFromArray:v39];
        }

        [v16 sortByLayoutOrderWithGridCellInfoOptions:a5];
        [v16 removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:a5];
        if (!v27)
        {
          [v16 didRemoveIcon:v11 options:a6 | 0x80000000];
        }

        [v16 didAddIcon:v28 options:a6 | 0x80000000];

        ++v26;
        v27 = v25;
      }

      while (v62 != v26);
      v62 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v62);
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v25 = 0;
  }

  v41 = [v16 _checkAndRemoveBouncedIconsAfterChangeToIcons:obj ignoringTrailingIconCheck:1 options:a6 | 0x80000000];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __77__SBIconListModel_replaceIcon_withIcons_gridCellInfoOptions_mutationOptions___block_invoke;
  v65[3] = &unk_1E808DB68;
  v69 = a6;
  v42 = v41;
  v66 = v42;
  v43 = v11;
  v67 = v43;
  v44 = obj;
  v68 = v44;
  [(SBIconListModel *)v49 _updateOtherListWithGridCellInfoOptions:a5 mutationOptions:a6 createIfNecessary:0 usingBlock:v65];
  [(SBIconListModel *)v49 saveOnlyRequiredIconLocationsAsFixedIfRequired];
  v45 = [v44 subarrayWithRange:{1, objc_msgSend(v44, "count") - 1}];
  v46 = [v64 allObjects];
  [(SBIconListModel *)v49 _notifyListObserversDidAddIcons:v45 didRemoveIcons:0 movedIcons:v46 didReplaceIcon:v43 withIcon:v50 options:a6 | 0x80000000];

  [v51 invalidate];
  [(SBIconListModel *)v49 markIconStateDirtyWithOptions:a6 | 0x80000000];
  if (v42 || !v63)
  {
    v11 = v55;
    if (!v42 || v63)
    {
      v20 = 0;
      if (!v42 || !v63)
      {
        goto LABEL_67;
      }

      v47 = [v63 arrayByAddingObjectsFromArray:v42];
    }

    else
    {
      v47 = v42;
    }

    v20 = v47;
  }

  else
  {
    v20 = v63;
    v11 = v55;
  }

LABEL_67:

  v12 = v52;
LABEL_68:

  return v20;
}

BOOL __77__SBIconListModel_replaceIcon_withIcons_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFF3;
  if ([*(a1 + 32) count])
  {
    [v5 removeIcons:*(a1 + 32) options:v6 | 0x80000008];
  }

  v7 = [v5 replaceIcon:*(a1 + 40) withIcons:*(a1 + 48) gridCellInfoOptions:a3 mutationOptions:v6 | 0x80000008];
  v8 = [v7 count] != 0;

  return v8;
}

- (void)removeIconAtIndex:(unint64_t)a3 options:(unint64_t)a4
{
  v6 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:a3];
  [(SBIconListModel *)self removeIcon:v6 options:a4];
}

- (void)removeLastIcon
{
  v3 = [(SBIconIndexMutableList *)self->_icons lastNode];
  [(SBIconListModel *)self removeIcon:v3];
}

- (void)removeIcon:(id)a3 options:(unint64_t)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ((a4 & 0x200000) != 0)
  {
    [(SBIconListModel *)self removeIcon:v7 gridCellInfoOptions:0 mutationOptions:a4];
    goto LABEL_16;
  }

  v8 = NSStringFromSelector(a2);
  v9 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v8];

  [(SBIconListModel *)self willRemoveIcon:v7 options:a4];
  if (![(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:0 mutationOptions:a4])
  {
    v12 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
  v11 = [(SBIconListModel *)self gridCellIndexForIcon:v7 gridCellInfo:v10];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(SBIconListModel *)self contiguousRegionForGridCellIndex:v11 gridCellInfo:v10];
    if (!v12 || [(SBIconListModel *)self needsToReflowIconsForRemovingIcon:v7 inContiguousRegion:v12 gridCellInfoOptions:0 mutationOptions:a4])
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_8:

LABEL_11:
  [(SBIconIndexMutableList *)self->_icons removeNodeIdenticalTo:v7];
  if ((a4 & 0x8000) != 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __38__SBIconListModel_removeIcon_options___block_invoke;
    v19[3] = &unk_1E808CD70;
    v20 = v7;
    [(SBIconListModel *)self enumerateFolderIconsUsingBlock:v19];
  }

  v13 = [(SBIconListModel *)self _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:0 mutationOptions:a4];
  if (v12)
  {
    [(SBIconListModel *)self shiftFixedIconsBackwardsInContiguousRegion:v12 toFillHoleLeftByRemovingIcon:v7 fromGridCellIndex:v11 gridCellInfoOptions:0 mutationOptions:a4];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__SBIconListModel_removeIcon_options___block_invoke_2;
  v16[3] = &unk_1E808DA28;
  v14 = v7;
  v17 = v14;
  v18 = a4;
  [(SBIconListModel *)self _updateRotatedIconsWithOptions:a4 usingBlock:v16];
  [(SBIconListModel *)self didRemoveIcon:v14 options:a4];
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:v15 movedIcons:v13];

  [v9 invalidate];
  [(SBIconListModel *)self markIconStateDirtyWithOptions:a4];

LABEL_16:
}

void __38__SBIconListModel_removeIcon_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 folder];
  [v3 removeIcon:*(a1 + 32) options:0];
}

- (void)removeIcons:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBIconListModel *)self removeIcon:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeIcons:(id)a3 options:(unint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
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

        [(SBIconListModel *)self removeIcon:*(*(&v11 + 1) + 8 * v10++) options:a4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)removeIcons:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SBIconListModel *)self removeIcon:*(*(&v13 + 1) + 8 * v12++) gridCellInfoOptions:a4 mutationOptions:a5];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)removeAllIcons
{
  v3 = [(SBIconListModel *)self numberOfIcons];
  if (v3)
  {
    v4 = v3;
    do
    {
      [(SBIconListModel *)self removeIconAtIndex:0];
      --v4;
    }

    while (v4);
  }
}

- (void)removeIconsAtIndexes:(id)a3 options:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SBIconListModel_removeIconsAtIndexes_options___block_invoke;
  v4[3] = &unk_1E808DB90;
  v4[4] = self;
  v4[5] = a4;
  [a3 enumerateIndexesWithOptions:2 usingBlock:v4];
}

- (void)removeAllIconsPassingTest:(id)a3
{
  v8 = a3;
  v4 = [(SBIconListModel *)self numberOfIcons];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i < v5; ++i)
    {
      v7 = [(SBIconListModel *)self iconAtIndex:i];
      if (v8[2](v8, v7))
      {
        [(SBIconListModel *)self removeIconAtIndex:i--];
        --v5;
      }
    }
  }
}

- (void)removeIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5
{
  v68[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ((a5 & 0x200000) != 0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke;
    v64[3] = &unk_1E808DBB8;
    v12 = v9;
    v65 = v12;
    v45 = v10;
    v66 = v45;
    v13 = v11;
    v67 = v13;
    [(SBIconListModel *)self enumerateIconsUsingBlock:v64];
    if ([v13 count])
    {
      v14 = [(SBIconListModel *)self indexForIcon:v12];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
        v38 = [v15 gridSize];
        v42 = [v12 gridSizeClass];
        v16 = [(SBIconListModel *)self gridSizeForGridSizeClass:v42 gridCellInfoOptions:a4];
        Area = SBHIconGridSizeGetArea(*&v16);
        v40 = [v15 gridCellIndexForIconIndex:v14];
        v17 = [v15 gridRangeForGridCellIndex:v40];
        v34 = v18;
        v35 = v17;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_2;
        aBlock[3] = &unk_1E808DBE0;
        v62 = v13;
        v39 = v15;
        v63 = v39;
        v43 = _Block_copy(aBlock);
        v44 = [(SBIconIndexMutableList *)self->_icons copy];
        [v44 removeNode:v12];
        v19 = [(SBIconListModel *)self repairModelByEliminatingGapsInIcons:v44 avoidingIcons:0 gridCellInfoOptions:a4];
        v20 = [v44 nodes];
        v41 = [(SBIconListModel *)self gridCellInfoForIcons:v20 options:a4];

        if (((*(v43 + 2))(v43, v41) & 1) != 0 && v16.columns != v38)
        {
          v21 = [(SBIconIndexMutableList *)self->_icons copy];
          v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_4;
          v54[3] = &unk_1E808DC08;
          v58 = v14;
          v54[4] = self;
          v30 = v21;
          v55 = v30;
          v59 = a4;
          v57 = v43;
          v33 = v22;
          v56 = v33;
          v60 = Area;
          [v45 enumerateIndexesUsingBlock:v54];
          v37 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a4];
          v23 = NSStringFromSelector(a2);
          v32 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v23];

          [(SBIconListModel *)self willRemoveIcon:v12 options:a5];
          v24 = ![(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:a4 mutationOptions:a5];
          if (v40 == 0x7FFFFFFFFFFFFFFFLL)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
            v25 = 0;
          }

          else
          {
            v25 = [(SBIconListModel *)self contiguousRegionForGridCellIndex:v30 gridCellInfo:?];
          }

          [v37[1] removeNode:{v12, v30}];
          v26 = [v33 count];
          if (v26)
          {
            v53[0] = 0;
            v53[1] = v53;
            v53[2] = 0x2020000000;
            v53[3] = 0;
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_5;
            v46[3] = &unk_1E808DC58;
            v52 = v38;
            v46[4] = self;
            v49 = v53;
            v50 = a4;
            v51 = v26;
            v47 = v33;
            v48 = v37;
            SBHIconGridRangeEnumerateSubranges(v35, v34, v34 | 0x10000, v38, 0, v46);

            _Block_object_dispose(v53, 8);
          }

          v27 = [(SBIconListModel *)self _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:a4 mutationOptions:a5];
          if (v25)
          {
            [(SBIconListModel *)self shiftFixedIconsBackwardsInContiguousRegion:v25 toFillHoleLeftByRemovingIcon:v12 fromGridCellIndex:0x7FFFFFFFFFFFFFFFLL gridCellInfoOptions:a4 mutationOptions:a5];
          }

          [(SBIconListModel *)self didRemoveIcon:v12 options:a5];
          v28 = [(SBIconListModel *)self _otherListForGridCellInfoOptions:a4];
          if (v28 != v37)
          {
            [v28 removeIcon:v12 gridCellInfoOptions:-[SBIconListModel rotatedGridCellInfoOptions:](self mutationOptions:{"rotatedGridCellInfoOptions:", a4), a5}];
          }

          v68[0] = v12;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
          [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:v29 movedIcons:v27];

          [v32 invalidate];
          [(SBIconListModel *)self markIconStateDirtyWithOptions:a5];
        }

        else
        {
          [(SBIconListModel *)self removeIcon:v12 options:a5 & 0xFFFFFFFFFFDFFFFFLL];
        }
      }
    }

    else
    {
      [(SBIconListModel *)self removeIcon:v12 options:a5 & 0xFFFFFFFFFFDFFFFFLL];
    }
  }

  else
  {
    [(SBIconListModel *)self removeIcon:v9 options:a5];
  }
}

void __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 32) != v5)
  {
    v11 = v5;
    v6 = [v5 gridSizeClass];
    if (v6)
    {
      v7 = v6;
      v8 = [v11 gridSizeClass];
      v9 = [v8 isEqualToString:@"SBHIconGridSizeClassDefault"];

      v10 = 48;
      if (v9)
      {
        v10 = 40;
      }
    }

    else
    {
      v10 = 40;
    }

    [*(a1 + v10) addIndex:a3];
    v5 = v11;
  }
}

uint64_t __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_3;
  v8[3] = &unk_1E808CDC0;
  v5 = v3;
  v9 = v5;
  v10 = *(a1 + 40);
  v11 = &v12;
  [v4 enumerateIndexesUsingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) gridCellIndexForIconIndex:a2];
  result = [*(a1 + 40) gridCellIndexForIconIndex:a2];
  if (v6 != result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*(a1 + 64) < a2)
  {
    v11 = [*(a1 + 32) iconAtIndex:a2];
    v6 = [*(a1 + 40) copy];
    [v6 removeNodeIdenticalTo:v11];
    v7 = [*(a1 + 32) repairModelByEliminatingGapsInIcons:v6 avoidingIcons:0 gridCellInfoOptions:*(a1 + 72)];
    v8 = *(a1 + 32);
    v9 = [v6 nodes];
    v10 = [v8 gridCellInfoForIcons:v9 options:*(a1 + 72)];

    if (((*(*(a1 + 56) + 16))() & 1) == 0)
    {
      [*(a1 + 40) removeNode:v11];
      [*(a1 + 48) addObject:v11];
      if ([*(a1 + 48) count] >= *(a1 + 80))
      {
        *a3 = 1;
      }
    }
  }
}

void __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = [*(a1 + 32) gridCellInfoWithOptions:*(a1 + 64)];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = [v8 iconIndexForGridCellIndex:a2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_6;
  v10[3] = &unk_1E808DC30;
  v9 = *(a1 + 72);
  v13 = *(a1 + 56);
  v15 = v9;
  v16 = a4;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = v17;
  SBHIconGridRangeEnumerateCellIndexes(a2, a3, *(a1 + 80), v10);

  _Block_object_dispose(v17, 8);
}

void __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke_6(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4 >= *(a1 + 64))
  {
    **(a1 + 72) = 1;
    *a3 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndex:v4];
    [*(*(a1 + 40) + 8) moveNode:v5 toIndex:*(*(*(a1 + 56) + 8) + 24)];
    ++*(*(*(a1 + 48) + 8) + 24);
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

- (id)insertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v47[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  if ([(SBIconListModel *)self directlyContainsIcon:v11])
  {
    a5 = [(SBIconListModel *)self moveContainedIcon:v11 toGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6];
    goto LABEL_50;
  }

  v13 = NSStringFromSelector(a2);
  v14 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v13];

  if (v12 != self)
  {
    v15 = [(SBIconListModel *)v12 insertIcon:v11 atGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6 | 0x60000000];
    if (v15)
    {
      [(SBIconListModel *)self removeIcons:v15 options:a6 | 0xEC000000];
    }

    v16 = [(SBIconListModel *)self addIcon:v11 options:a6 | 0xEC000000];
    if ((a6 & 0x800000000) == 0)
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:a5 mutationOptions:a6];
    }

    goto LABEL_48;
  }

  v45 = [(SBIconListModel *)self folder];
  v17 = [v45 startCoalescingContentChangesForReason:@"insertIcons"];
  v18 = [(SBIconListModel *)self isValidGridCellIndex:a4 options:a5];
  [(SBIconListModel *)self willAddIcon:v11 atIndex:0 gridCellInfoOptions:a5 mutationOptions:a6];
  v42 = v14;
  if (v18 && ![(SBIconListModel *)self isValidGridCellIndex:a4 options:a5])
  {
    a4 = [(SBIconListModel *)self maxNumberOfIcons]- 1;
  }

  v44 = v17;
  v19 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v11 atGridCellIndex:a4 gridCellInfoOptions:a5];
  v20 = [v11 gridSizeClass];
  v21 = [(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:a5];
  v46 = v19;
  if (v20 && ![v20 isEqualToString:@"SBHIconGridSizeClassDefault"] || -[SBIconListModel isFull](self, "isFull") || a4 > -[SBIconListModel numberOfIcons](self, "numberOfIcons") || !-[SBIconListModel isEligibleForSimpleMutationsWithGridCellInfoOptions:mutationOptions:](self, "isEligibleForSimpleMutationsWithGridCellInfoOptions:mutationOptions:", a5, a6))
  {
    v24 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
    v41 = [v24 iconIndexForGridCellIndex:v19];
    v25 = v19;
    v22 = v24;
    v23 = ![(SBIconListModel *)self isInsertionFixedForIcon:v11 atGridCellIndex:v25 gridCellInfo:v24 mutationOptions:a6];
  }

  else
  {
    v41 = [(SBIconListModel *)self simpleInsertionIconIndexForGridCellIndex:v19];
    v22 = 0;
    v23 = 1;
  }

  v43 = v20;
  if (v21)
  {
    v26 = [(SBIconListModel *)self gridSizeForGridSizeClass:v20 gridCellInfoOptions:a5];
    if ((a6 & 0x100) != 0)
    {
      [(SBIconListModel *)self relocateAnyAffectedFixedIconsForInsertingIcon:v11 atGridCellIndex:a4 replacingIcon:0 gridCellInfoOptions:a5 mutationOptions:a6];
      v27 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];

      v22 = v27;
    }

    if ([(SBIconListModel *)self hasFixedIconInGridRange:v46 gridCellInfo:v26, v22])
    {
      v14 = v42;
      [v42 invalidate];
      v28 = v44;
      [v44 invalidate];
      v47[0] = v11;
      a5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
      v15 = 0;
      v29 = 0;
      goto LABEL_47;
    }
  }

  v14 = v42;
  if ((v23 & 1) == 0)
  {
    [(SBIconListModel *)self setFixedLocation:v46 forIcon:v11 options:a6 | 0x800000];
  }

  v28 = v44;
  if ((a6 & 0x200000) == 0)
  {
    goto LABEL_37;
  }

  v30 = [v11 gridSizeClass];
  if (!v30)
  {
    goto LABEL_37;
  }

  v40 = v30;
  v31 = [v11 gridSizeClass];
  if ([v31 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    goto LABEL_36;
  }

  v32 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  if (!v32)
  {
    goto LABEL_36;
  }

  v39 = v32;
  v38 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  v33 = [v38 isEqualToString:@"SBHIconGridSizeClassDefault"];
  if ((a6 & 0x100000) != 0 || (v33 & 1) != 0 || [(SBIconListModel *)self directlyContainsIcon:v11]|| ![(SBIconListModel *)self directlyContainsNonDefaultSizeClassIcon])
  {

LABEL_36:
    goto LABEL_37;
  }

  v37 = [(SBIconListModel *)self isGridLayoutValidWithOptions:a5 | 0xC];

  if (v37)
  {
    v34 = [(SBIconListModel *)self insertIconWhilePreservingQuads:v11 toGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6 | 0x70000000];
    goto LABEL_40;
  }

LABEL_37:
  if (v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(SBIconListModel *)self addIcon:v11 options:a6 | 0x70000000];
    v35 = ![(SBIconListModel *)self allowsIndependentRotatedLayout];
    goto LABEL_41;
  }

  v34 = [(SBIconListModel *)self insertIcon:v11 atIndex:v41 options:a6 | 0x70000000];
LABEL_40:
  v15 = v34;
  v35 = 1;
LABEL_41:
  [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:a5];
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:a5]&& [(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:a5 mutationOptions:a6])
  {
    [(SBIconListModel *)self removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:v46 sortByLayoutOrder:1 gridCellInfoOptions:a5];
  }

  [v44 invalidate];
  if (v35)
  {
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:a5 mutationOptions:a6];
  }

  v29 = 1;
LABEL_47:

  if (v29)
  {
LABEL_48:
    [v14 invalidate];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:a6];
    v15 = v15;
    a5 = v15;
  }

LABEL_50:

  return a5;
}

- (unint64_t)simpleInsertionIconIndexForGridCellIndex:(unint64_t)a3
{
  if ([(SBIconListModel *)self numberOfIcons]<= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3;
  }
}

- (id)insertIcon:(id)a3 atCoordinate:(SBIconCoordinate)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  row = a4.row;
  column = a4.column;
  v11 = a3;
  v12 = [(SBIconListModel *)self insertIcon:v11 atGridCellIndex:[(SBIconListModel *)self gridCellIndexForCoordinate:column gridCellInfoOptions:row gridCellInfoOptions:a5] mutationOptions:a5, a6];

  return v12;
}

- (id)insertIcons:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v10 = a3;
  if ([v10 count])
  {
    v11 = [(SBIconListModel *)self directlyContainsIcons:v10];
    if ((a6 & 0x400) != 0 && v11)
    {
      a4 = [(SBIconListModel *)self bestGridCellIndexForMovingIcons:v10 toGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6];
    }

    v12 = [v10 firstObject];
    v13 = [(SBIconListModel *)self insertIcon:v12 atGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 mutableCopy];
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v17 = v15;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__14;
    v28[4] = __Block_byref_object_dispose__14;
    v18 = v12;
    v29 = v18;
    v19 = [v10 count];
    v20 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, v19 - 1}];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__SBIconListModel_insertIcons_atGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke;
    v23[3] = &unk_1E808DC80;
    v23[4] = self;
    v25 = v28;
    v26 = a5;
    v27 = a6;
    v21 = v17;
    v24 = v21;
    [v10 enumerateObjectsAtIndexes:v20 options:0 usingBlock:v23];

    if ([v21 count])
    {
      v16 = v21;
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(v28, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __83__SBIconListModel_insertIcons_atGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = [*(a1 + 32) insertIcon:? afterIcon:? gridCellInfoOptions:? mutationOptions:?];
  if (v4)
  {
    [*(a1 + 40) addObjectsFromArray:v4];
  }

  if ([*(a1 + 32) directlyContainsIcon:v5])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

- (unint64_t)bestGridCellIndexForMovingIcons:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v34 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  v32 = [v34 gridSize];
  v9 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v15 = v10;
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v15);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = [(SBIconListModel *)self indexForIcon:v17];
        v19 = [(SBIconListModel *)self gridRangeForIcon:v17 gridCellInfo:v34];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v19;
        }

        [(SBIconListGridCellInfo *)v9 setIconIndex:v18 inGridRange:v19, v20];
      }

      v10 = v15;
      v12 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = [(SBIconListModel *)self contiguousRegionForGridCellIndex:v14 gridCellInfo:v9];
  if (v21)
  {
    v22 = [(SBIconListModel *)self iconsInContiguousRegion:v21 gridCellInfo:v34];
    v23 = [v22 count];
    v24 = a4;
    if (v23 == [v10 count])
    {
      [v21 gridRange];
      v26 = v25;
      v27 = v25;
      v28 = SBHIconGridRangeIntersection(a4, v25, 0, v32, v32);
      v30 = v29;
      if (!SBHIconGridRangeEqualToIconGridRange(a4, v27, v28, v29))
      {
        v35[0] = a4;
        v35[1] = v27;
        SBHIconGridRangeOffset(v35, 2, v26 - v30, v32);
        SBHIconGridRangeOffset(v35, 1, (HIWORD(v26) - HIWORD(v30)), v32);
        if ([v34 iconIndexForGridCellIndex:v35[0]] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = v35[0];
        }
      }
    }
  }

  else
  {
    v24 = a4;
  }

  return v24;
}

- (id)replaceIcon:(id)a3 withIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v10 = MEMORY[0x1E695DEC8];
  v11 = a4;
  v12 = a3;
  v13 = [v10 arrayWithObjects:&v16 count:1];

  v14 = [(SBIconListModel *)self replaceIcon:v12 withIcons:v13 gridCellInfoOptions:a5 mutationOptions:a6, v16, v17];

  return v14;
}

- (id)moveContainedIcon:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v53[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = [v11 gridSizeClass];
  v13 = v12;
  if (v12 && ![v12 isEqualToString:@"SBHIconGridSizeClassDefault"] || -[SBIconListModel numberOfIcons](self, "numberOfIcons") <= a4)
  {
    v15 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  }

  else
  {
    v14 = [(SBIconListModel *)self isEligibleForSimpleMutationsWithGridCellInfoOptions:a5 mutationOptions:a6];
    v15 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
    if (v14)
    {
      v16 = [(SBIconListModel *)self indexForIcon:v11];
      v17 = 0;
      v18 = 1;
      goto LABEL_8;
    }
  }

  v17 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  a4 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v11 atGridCellIndex:a4 gridCellInfo:v17];
  v16 = [v17 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v11)}];
  v18 = 0;
LABEL_8:
  if (v16 == a4)
  {
    if ((a6 & 0x80) != 0)
    {
      [(SBIconListModel *)v15 setFixedLocation:a4 forIcon:v11];
    }

    v19 = 0;
  }

  else
  {
    v52 = v18;
    v20 = NSStringFromSelector(a2);
    v51 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v20];

    v50 = [(SBIconListModel *)self icons];
    if (v15 == self)
    {
      v21 = [(SBIconListModel *)self gridSizeForGridSizeClass:v13 gridCellInfoOptions:a5];
      v46 = v15;
      if (v52)
      {
        [(SBIconIndexMutableList *)self->_icons moveNode:v11 toIndex:a4];
        v44 = 0;
        v47 = 0;
        v22 = 0;
        v23 = 1;
      }

      else
      {
        v24 = v21;
        v45 = [(SBIconListModel *)self isMoveFixedForIcon:v11 toGridCellIndex:a4 gridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6];
        if ([(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6])
        {
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v48 = 0;
          }

          else
          {
            v48 = [(SBIconListModel *)self contiguousRegionForGridCellIndex:v16 gridCellInfo:v17];
          }

          v26 = [v17 gridSize];
          v27 = SBHIconGridRangeIntersection(a4, v24, 0, v26, v26);
          v25 = [(SBIconListModel *)self contiguousRegionsForGridRange:v27 gridCellInfo:v28, v17];
        }

        else
        {
          v25 = 0;
          v48 = 0;
        }

        v47 = v25;
        if ([(SBIconListModel *)self shouldDisplaceExistingFixedIconsWithGridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6])
        {
          [(SBIconListModel *)self relocateAnyAffectedFixedIconsForMovingIcon:v11 fromGridCellIndex:v16 toGridCellIndex:a4 intoContiguousRegions:v25 gridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6];
          v29 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];

          v17 = v29;
        }

        v30 = [(SBIconListModel *)self isIconFixed:v11];
        v31 = v30;
        if (v45)
        {
          [(SBIconListModel *)self setFixedLocation:a4 forIcon:v11 options:a6 | 0x800000];
          v22 = v48;
          if (v48)
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          if (v32 && ([v47 containsObject:v48] & 1) == 0)
          {
            [(SBIconListModel *)self shiftFixedIconsBackwardsInContiguousRegion:v48 toFillHoleLeftByRemovingIcon:v11 fromGridCellIndex:v16 gridCellInfoOptions:a5 mutationOptions:a6];
          }

          [(SBIconListModel *)self saveOnlyRequiredIconLocationsAsFixedIfRequired];
          v23 = 1;
          v44 = 1;
        }

        else
        {
          if (v30 && ![(SBIconListModel *)self usesTwoDimensionalMovementWithGridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6])
          {
            [(SBIconListModel *)self removeFixedIconLocationForIcon:v11];
            [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:a5];
            v33 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];

            v17 = v33;
          }

          if ([(SBIconListModel *)self _moveContainedIconUsingTwoDimensionalMovement:v11 toGridCellIndex:a4 gridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6]|| [(SBIconListModel *)self _moveContainedIconWithinAffectedQuadsIfNecessary:v11 toGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6]|| [(SBIconListModel *)self _moveContainedIconLargerThanQuadsIfNecessary:v11 toGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6]|| [(SBIconListModel *)self _moveContainedIconBySwappingVerticallyWithAdjacentIcons:v11 toGridCellIndex:a4 gridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6]|| [(SBIconListModel *)self _moveContainedIconUsingAutomaticClusteringIfNecessary:v11 toGridCellIndex:a4 gridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6])
          {
            v44 = 0;
            v23 = 1;
          }

          else
          {
            [(SBIconListModel *)self _moveContainedIconUsingSimpleMovement:v11 toGridCellIndex:a4 gridCellInfo:v17 gridCellInfoOptions:a5 mutationOptions:a6];
            v23 = 0;
            v44 = 0;
          }

          v22 = v48;
        }
      }

      v34 = [(SBIconListModel *)self _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:a5 mutationOptions:a6];
      if (v22 && ((v44 | [v22 isEmpty]) & 1) == 0)
      {
        [(SBIconListModel *)self shiftFixedIconsBackwardsInContiguousRegion:v22 toFillHoleLeftByRemovingIcon:v11 fromGridCellIndex:v16 gridCellInfoOptions:a5 mutationOptions:a6];
      }

      v49 = v22;
      if (v23)
      {
        v53[0] = v11;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
        v19 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:v35 ignoringTrailingIconCheck:0 options:a6];

        [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:a5];
      }

      else
      {
        v19 = 0;
      }

      v15 = v46;
      if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:a5])
      {
        v36 = [(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:a5 mutationOptions:a6];
        if ((a6 & 0x80) == 0 && v36)
        {
          [(SBIconListModel *)self removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:a4 sortByLayoutOrder:1 gridCellInfoOptions:a5];
        }
      }
    }

    else
    {
      v19 = [(SBIconListModel *)v15 moveContainedIcon:v11 toGridCellIndex:a4 gridCellInfoOptions:a5 mutationOptions:a6];
      [(SBIconListModel *)self removeIcons:v19 options:a5 | 0x80000000];
    }

    if (![(SBIconListModel *)self allowsIndependentRotatedLayout])
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:a5 mutationOptions:a6];
    }

    if (v52)
    {
      if (v16 >= a4)
      {
        v37 = a4;
      }

      else
      {
        v37 = v16;
      }

      if (v16 <= a4)
      {
        v38 = a4;
      }

      else
      {
        v38 = v16;
      }

      v39 = v50;
      v40 = [v50 subarrayWithRange:{v37, v38 - v37}];
    }

    else
    {
      [(SBIconListModel *)self gridCellInfoWithOptions:a5];
      v42 = v41 = v15;
      v39 = v50;
      v40 = [(SBIconListModel *)self movedIconsFromGridCellInfo:v17 withIconOrder:v50 toGridCellInfo:v42];

      v15 = v41;
    }

    if ([v40 count])
    {
      [(SBIconListModel *)self markIconStateDirtyWithOptions:a6];
      [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:0 movedIcons:v40];
    }

    [v51 invalidate];
  }

  return v19;
}

- (BOOL)_moveContainedIconWithinAffectedQuadsIfNecessary:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ((a6 & 0x300000000) == 0)
  {
    v12 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
    v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:v12 gridCellInfoOptions:a5];
    v14 = v13;
    Area = SBHIconGridSizeGetArea(*&v13);
    if (!v12 || (v16 = Area, ([v12 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) != 0))
    {
      LOBYTE(v11) = 0;
LABEL_10:

      goto LABEL_11;
    }

    count = v16;
    v11 = [v10 gridSizeClass];
    v69 = [(SBIconListModel *)self gridSizeForGridSizeClass:v11 gridCellInfoOptions:a5];
    v17 = [(SBIconListModel *)self gridSizeWithOptions:a5];
    v71 = v11;
    if (v11)
    {
      v65 = v17;
      if (([(SBRotatedIconListModel *)v11 isEqualToString:@"SBHIconGridSizeClassDefault"]& 1) == 0)
      {
        LOBYTE(v11) = 0;
        if (*&v13 < 0x10000)
        {
          goto LABEL_9;
        }

        columns = v13.columns;
        if (!v13.columns)
        {
          goto LABEL_9;
        }

        LOBYTE(v11) = 0;
        if (v13.columns >= v65.columns)
        {
          goto LABEL_9;
        }

        v20 = HIWORD(*&v13);
        if (HIWORD(*&v65) <= v20)
        {
          goto LABEL_9;
        }

        if (!(v65.columns % v14) && !(HIWORD(*&v65) % WORD1(v14)))
        {
          LOBYTE(v11) = 0;
          if (columns >= v69.columns && HIWORD(*&v69) <= v20)
          {
            v63 = columns;
            v21 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
            v59 = [v21 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v10)}];
            v62 = [(SBIconIndexMutableList *)self->_icons copy];
            v70 = v21;
            v22 = [(SBIconListModel *)self iconAtGridCellIndex:a4 gridCellInfo:v21];
            v61 = v22;
            if (v22)
            {
              v23 = [v22 gridSizeClass];
            }

            else
            {
              v23 = @"SBHIconGridSizeClassDefault";
            }

            v24 = v23;
            v25 = [(SBIconListModel *)self gridSizeForGridSizeClass:v23 gridCellInfoOptions:a5];
            LOBYTE(v11) = 0;
            if (v63 >= v25.columns && HIWORD(*&v25) <= v20)
            {
              v58 = v24;
              v26 = v65.columns;
              v66 = SBHIconGridRangeSubrangeIncludingCellIndex(0, v65.columns, v59, v14, v65.columns);
              v57 = v27;
              v28 = SBHIconGridRangeSubrangeIncludingCellIndex(0, v26, a4, v14, v26);
              v56 = v29;
              SBIconCoordinateMakeWithGridCellIndex(v66, v26);
              v54 = v30;
              v50 = v26;
              SBIconCoordinateMakeWithGridCellIndex(v28, v26);
              v60 = v28;
              if (v66 == v28)
              {
                v32 = v63;
              }

              else if (v54 == v31)
              {
                v32 = 2 * v63;
              }

              else
              {
                v20 *= 2;
                v32 = v63;
              }

              v24 = v58;
              LOBYTE(v11) = 0;
              if (!(v32 >> 16))
              {
                v51 = v32;
                if (!(v20 >> 16))
                {
                  [(SBIconListModel *)self gridSizeClassSizesWithOptions:a5];
                  v49 = v47 = v51;
                  v11 = [SBIconListModel initWithUniqueIdentifier:"initWithUniqueIdentifier:folder:gridSize:gridSizeClassSizes:" folder:@"QuadMovement" gridSize:0 gridSizeClassSizes:?];
                  v33 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
                  [(SBIconListModel *)v11 setRotatedLayoutClusterGridSizeClass:v33];

                  [(SBIconListModel *)v11 setFixedIconLocationBehavior:0];
                  v34 = [(SBIconListModel *)self gridSizeClassDomain];
                  [(SBIconListModel *)v11 setGridSizeClassDomain:v34];

                  v48 = [(SBIconListModel *)self iconsForGridRange:v66 gridCellInfo:v57, v70];
                  v35 = [(SBIconListModel *)v11 addIcons:?];
                  if (v66 != v60)
                  {
                    v36 = [(SBIconListModel *)self iconsForGridRange:v60 gridCellInfo:v56, v70];
                    v37 = [(SBIconListModel *)v11 addIcons:v36];
                  }

                  p_isa = &v11->super.super.isa;
                  LOBYTE(v11) = [(SBIconListModel *)v11 directlyContainsIcon:v10];
                  if (v11)
                  {
                    v55 = [p_isa gridCellInfoWithOptions:0];
                    if (v51 <= v20)
                    {
                      v38 = count;
                    }

                    else
                    {
                      v38 = v63;
                    }

                    if (v66 <= v60)
                    {
                      v39 = 0;
                    }

                    else
                    {
                      v39 = v38;
                    }

                    v52 = v39;
                    if (v66 >= v60)
                    {
                      v38 = 0;
                    }

                    v64 = v38;
                    if (count >= 0x40)
                    {
                      v40 = malloc_type_calloc(count, 8uLL, 0x100004000313F17uLL);
                      counta = v40;
                    }

                    else
                    {
                      counta = 0;
                      v40 = &v74;
                    }

                    [v70 getIconIndexes:v40 inGridRange:{v66, v57}];
                    [v55 setIconIndexes:v40 inGridRange:v52, v14];
                    if (v66 != v60)
                    {
                      [v70 getIconIndexes:v40 inGridRange:{v60, v56}];
                      [v55 setIconIndexes:v40 inGridRange:v64, v14];
                    }

                    [p_isa setIconOrderFromGridCellInfo:v55 referenceIconOrder:v62];
                    v41 = SBHIconGridRangeRelativeCellIndexForCellIndex(v60, v56, a4, v50);
                    v42 = [p_isa moveContainedIcon:v10 toGridCellIndex:SBHIconGridRangeCellIndexForRelativeCellIndex(v64 gridCellInfoOptions:v14 mutationOptions:{v41, v47), a5, a6 | 0x100000000}];
                    v43 = [p_isa gridCellInfoWithOptions:0];
                    v44 = p_isa[1];
                    v45 = [v70 copy];
                    [objc_opt_class() applyIconLayoutFromGridCellInfo:v43 inGridRange:v52 iconOrder:v14 toGridCellInfo:v44 inGridRange:v45 iconOrder:{v66, v57, v62}];
                    if (v66 != v60)
                    {
                      [objc_opt_class() applyIconLayoutFromGridCellInfo:v43 inGridRange:v64 iconOrder:v14 toGridCellInfo:v44 inGridRange:v45 iconOrder:{v60, v56, v62}];
                    }

                    v72[0] = MEMORY[0x1E69E9820];
                    v72[1] = 3221225472;
                    v72[2] = __120__SBIconListModel__moveContainedIconWithinAffectedQuadsIfNecessary_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke;
                    v72[3] = &unk_1E8088F18;
                    v72[4] = self;
                    v73 = v45;
                    v46 = v45;
                    [(SBIconListModel *)self performChangesByPreservingOrderOfDefaultSizedIcons:v72];
                    free(counta);
                  }

                  else
                  {
                    NSLog(&cfstr_CouldnTPutIcon.isa, v71);
                    v55 = SBLogIcon();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      [SBIconListModel _moveContainedIconWithinAffectedQuadsIfNecessary:v71 toGridCellIndex:v55 gridCellInfoOptions:? mutationOptions:?];
                    }
                  }

                  v24 = v58;
                }
              }
            }
          }

          goto LABEL_9;
        }
      }

      LOBYTE(v11) = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  LOBYTE(v11) = 0;
LABEL_11:

  return v11;
}

- (BOOL)_moveContainedIconLargerThanQuadsIfNecessary:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ((a6 & 0x300000000) == 0)
  {
    v12 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
    v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:v12 gridCellInfoOptions:a5];
    Area = SBHIconGridSizeGetArea(*&v13);
    v15 = [v10 gridSizeClass];
    v16 = [(SBIconListModel *)self gridSizeForGridSizeClass:v15 gridCellInfoOptions:a5];
    v17 = v16;
    v18 = SBHIconGridSizeGetArea(*&v16);
    v19 = [(SBIconListModel *)self gridSize];
    if (v18 > Area && !(v18 % Area))
    {
      v11 = 0;
      if (*&v13 < 0x20000)
      {
        goto LABEL_6;
      }

      if (v13.columns < 2u)
      {
        goto LABEL_6;
      }

      v11 = 0;
      if (v13.columns >= v19.columns || HIWORD(*&v19) <= HIWORD(*&v13))
      {
        goto LABEL_6;
      }

      if (!(v19.columns % v13.columns) && !(HIWORD(*&v19) % HIWORD(*&v13)) && SBHIconGridRangeContainsIconGridRange(0, *&v19, a4, v17, v19.columns))
      {
        v21 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
        v22 = [v21 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v10)}];
        if (v18 >= 0x40)
        {
          v23 = malloc_type_calloc(v18, 8uLL, 0x100004000313F17uLL);
          v25 = v23;
        }

        else
        {
          v25 = 0;
          v23 = &v26;
        }

        v24 = [v21 copy];
        [v21 getIconIndexes:v23 inGridRange:{v22, v17}];
        [v24 setIconIndexes:v23 inGridRange:{a4, v17}];
        [v21 getIconIndexes:v23 inGridRange:{a4, v17}];
        [v24 setIconIndexes:v23 inGridRange:{v22, v17}];
        free(v25);
        [(SBIconListModel *)self setIconOrderFromGridCellInfo:v24];

        v11 = 1;
        goto LABEL_6;
      }
    }

    v11 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)_moveContainedIconBySwappingVerticallyWithAdjacentIcons:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  if ((a7 & 0x200000000) != 0 || ![(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:a6 mutationOptions:a7])
  {
    v32 = 0;
  }

  else
  {
    v49 = [v12 gridSizeClass];
    v14 = [SBIconListModel gridSizeForGridSizeClass:"gridSizeForGridSizeClass:gridCellInfoOptions:" gridCellInfoOptions:?];
    v15 = [v13 gridSize];
    v16 = v14;
    v17 = [(SBIconListModel *)self gridRangeForIcon:v12 gridCellInfo:v13];
    v18 = v15;
    v50 = v19;
    v51 = v17;
    v20 = SBHIconGridRangeUnion(a4, v16, v17, v19, v15);
    v22 = v21;
    if ([(SBIconListModel *)self isValidGridRange:a4 gridCellInfo:v16, v13])
    {
      v53 = v18;
      v55 = self;
      v48 = a4;
      [(SBIconListModel *)self iconsForGridRange:a4 gridCellInfo:v16, v13];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v23 = v59 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v24)
      {
        v25 = v24;
        obj = v23;
        v45 = a7;
        v46 = a6;
        v47 = v12;
        v26 = *v57;
LABEL_6:
        v27 = 0;
        while (1)
        {
          if (*v57 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v13;
          v29 = [(SBIconListModel *)v55 gridRangeForIcon:*(*(&v56 + 1) + 8 * v27) gridCellInfo:v13];
          v31 = v30;
          v16 = v16 & 0xFFFFFFFF00000000 | v53;
          if (SBHIconGridRangeContainsIconGridRange(v20, v22, v29, v30, v16))
          {
            a7 = a7 & 0xFFFFFFFF00000000 | v53;
            if ((SBHIconGridRangeTouchedEdges(v51, v50, v29, v31, a7) & 5) != 0)
            {
              break;
            }
          }

          ++v27;
          v13 = v28;
          if (v25 == v27)
          {
            v25 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
            if (v25)
            {
              goto LABEL_6;
            }

            v32 = 0;
            v23 = obj;
            v33 = obj;
            goto LABEL_18;
          }
        }

        v23 = obj;

        v35 = v20;
        v13 = v28;
        v33 = [(SBIconListModel *)v55 iconsForGridRange:v20 gridCellInfo:v22, v28];
        if ([v33 indexOfObjectPassingTest:&__block_literal_global_73] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = 0;
LABEL_18:
          v12 = v47;
          goto LABEL_20;
        }

        v36 = [[SBIconListGridCellInfo alloc] initWithGridSize:v22];
        v37 = SBHIconGridRangeRelativeCellIndexForCellIndex(v20, v22, v48, v53);
        v12 = v47;
        v38 = [v47 uniqueIdentifier];
        v60 = v38;
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
        v61 = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

        [(SBIconListModel *)v55 layOutIcons:v33 inGridCellInfo:v36 startingAtGridCellIndex:0 gridSize:v22 fixedIconLocations:v40 options:v46];
        v41 = [(SBIconListGridCellInfo *)v36 isLayoutOutOfBounds];
        if (!v41)
        {
          v54 = v40;
          v42 = [v28 copy];
          [v42 setLayoutFromGridCellInfo:v36 fromGridRange:0 toGridCellIndex:{v22, v35}];
          v43 = [(SBIconListModel *)v55 icons];
          [(SBIconListModel *)v55 transferPositionsFromGridCellInfo:v42 representingGridRange:0 asLocationsForIcons:v53 gridCellInfoOptions:v43 mutationOptions:v46, v45];

          v40 = v54;
        }

        v32 = !v41;

        v13 = v28;
        v34 = v49;
        v23 = obj;
      }

      else
      {
        v32 = 0;
        v33 = v23;
LABEL_20:
        v34 = v49;
      }
    }

    else
    {
      v32 = 0;
      v34 = v49;
    }
  }

  return v32;
}

uint64_t __140__SBIconListModel__moveContainedIconBySwappingVerticallyWithAdjacentIcons_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_moveContainedIconUsingAutomaticClusteringIfNecessary:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  if ((a7 & 0x200000000) != 0)
  {
    goto LABEL_38;
  }

  v51 = [v12 gridSizeClass];
  v48 = [SBIconListModel gridSizeForGridSizeClass:"gridSizeForGridSizeClass:gridCellInfoOptions:" gridCellInfoOptions:?];
  v50 = v12;
  v14 = [(SBIconListModel *)self indexForIcon:v12];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  if (!v13)
  {
    v13 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
  }

  v49 = a7;
  v15 = [v13 iconIndexForGridCellIndex:a4];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(SBIconIndexMutableList *)self->_icons count]- 1;
  }

  if (v51 && ([v51 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    v46 = v13;
    v47 = a4;
    v16 = @"SBHIconGridSizeClassDefault";
    v17 = [(SBIconListModel *)self gridSizeAreaForGridSizeClass:v16 gridCellInfoOptions:a6];
    if (v15 <= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v15;
    }

    if (v15 < v14)
    {
      v14 = v15;
    }

    do
    {
      v19 = [(SBIconListModel *)self iconAtIndex:v14];
      v20 = [v19 gridSizeClass];
      v21 = [(SBIconListModel *)self gridSizeAreaForGridSizeClass:v20 gridCellInfoOptions:a6];
      if (v21 > v17)
      {
        v22 = v20;

        v17 = v21;
        v16 = v22;
      }

      ++v14;
    }

    while (v14 <= v18);
    v23 = [(SBIconListModel *)self gridSizeForGridSizeClass:v16 gridCellInfoOptions:a6];
    v24 = [(SBIconListModel *)self largestClusteringSizeClassWithOptions:a6];
    v25 = [(SBIconListModel *)self gridSizeForGridSizeClass:v24 gridCellInfoOptions:a6];
    v26 = HIWORD(*&v23);
    columns = v23.columns;
    if (v23.columns > v25.columns || v26 > HIWORD(*&v25))
    {
      v28 = v24;

      v16 = v28;
    }

    v29 = columns > v48.columns;
    a4 = v47;
    if (v29 || v26 > HIWORD(*&v48))
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = [(SBIconListModel *)self allowedGridSizeClasses];
      v32 = [(SBIconListModel *)self effectiveGridSizeClassDomain];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
      v62[3] = &unk_1E808DCD0;
      v33 = v30;
      v63 = v33;
      v64 = self;
      v65 = a6;
      [v31 enumerateGridSizeClassesInDomain:v32 usingBlock:v62];
      v34 = [v33 indexOfObject:v16];
      v35 = [v33 indexOfObject:v51];
      if (v34 != 0x7FFFFFFFFFFFFFFFLL && v35 != 0x7FFFFFFFFFFFFFFFLL && v34 > v35)
      {
        v36 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v35 + 1, v34 - v35}];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_3;
        v57[3] = &unk_1E808DCF8;
        v59 = &v66;
        v57[4] = self;
        v58 = v50;
        v60 = v47;
        v61 = a6;
        [v33 enumerateObjectsAtIndexes:v36 options:2 usingBlock:v57];
      }
    }

    v13 = v46;
  }

  Area = SBHIconGridSizeGetArea([v13 gridSize]);
  v38 = v67[3];
  v12 = v50;
  if (v38 < 0 && -v38 > a4)
  {
    v38 = -a4;
LABEL_33:
    v67[3] = v38;
    goto LABEL_34;
  }

  if (v38 >= 1 && v38 + a4 >= Area)
  {
    v38 = Area + ~a4;
    goto LABEL_33;
  }

LABEL_34:
  v39 = v51;
  if ([(SBIconListModel *)self _canClusterIconsUsingSizeClass:v39])
  {
    v40 = v13;
    v41 = 0;
    v42 = v39;
  }

  else
  {
    v42 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
    v40 = v13;

    v41 = 2;
  }

  v43 = v38 + a4;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_4;
  v52[3] = &unk_1E808DD20;
  v52[4] = self;
  v44 = v39;
  v53 = v44;
  v55 = a6 & 0xFFFFFFFFFFFFFFFDLL;
  v54 = v50;
  v56 = v43;
  [(SBIconListModel *)self performChangesByClusteringForSizeClass:v42 behavior:v41 withGridCellInfoOptions:a6 block:v52];
  v13 = v40;

  _Block_object_dispose(&v66, 8);
  a7 = v49;
LABEL_38:

  return (a7 & 0x200000000) == 0;
}

void __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 count];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_2;
  v7[3] = &unk_1E808DCA8;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v7[5] = v6;
  [*(a1 + 32) insertObject:v4 atIndex:{objc_msgSend(v3, "indexOfObject:inSortedRange:options:usingComparator:", v4, 0, v5, 1024, v7)}];
}

uint64_t __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  Area = SBHIconGridSizeGetArea([v5 gridSizeForGridSizeClass:a2 gridCellInfoOptions:v6]);
  LODWORD(v4) = [*(v4 + 32) gridSizeForGridSizeClass:v7 gridCellInfoOptions:*(v4 + 40)];

  v9 = SBHIconGridSizeGetArea(v4);
  if (Area < v9)
  {
    return -1;
  }

  else
  {
    return Area > v9;
  }
}

uint64_t __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _moveIcon:*(a1 + 40) byClusteringForSizeClass:a2 toGridCellIndex:*(a1 + 56) gridCellInfoOptions:*(a1 + 64)];
  *(*(*(a1 + 48) + 8) + 24) += result;
  return result;
}

void __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_5;
  v8[3] = &unk_1E808A370;
  v5 = a1[6];
  v4 = a1[7];
  v8[4] = v2;
  v10 = v4;
  v6 = v5;
  v7 = a1[8];
  v9 = v6;
  v11 = v7;
  [v2 performChangesByPreservingPositionsOfIconsLargerThanSizeClass:v3 block:v8];
}

void __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) gridCellInfoWithOptions:*(a1 + 48)];
  [*(*(a1 + 32) + 8) moveNode:*(a1 + 40) toIndex:{objc_msgSend(*(a1 + 32), "_iconIndexForMovingIcon:toGridCellIndex:gridCellInfo:", *(a1 + 40), *(a1 + 56), v2)}];
}

- (BOOL)_moveContainedIconUsingTwoDimensionalMovement:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  if ([(SBIconListModel *)self usesTwoDimensionalMovementWithGridCellInfo:v13 gridCellInfoOptions:a6 mutationOptions:a7])
  {
    if (!v13)
    {
      v13 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
    }

    v14 = [(SBIconListModel *)self gridRangeForIcon:v12 gridCellInfo:v13];
    v39 = v15;
    v40 = v14;
    v16 = [v13 gridSize];
    v41 = [(SBIconListModel *)self indexForIcon:v12];
    v17 = [v13 gridCellIndexForIconIndex:?];
    v18 = [(SBIconListModel *)self gridSizeForIcon:v12 gridCellInfoOptions:a6];
    v19 = SBHIconGridRangeTouchedEdges(v17, v18, a4, v18, v16);
    v42 = v17;
    v20 = SBHIconGridRangeIntersection(v17, v18, a4, v18, v16);
    if (v19)
    {
      if ([(SBIconListModel *)self areIconsInGridRangeFullyContained:a4 gridCellInfo:v18, v13])
      {
        v21 = [v13 copy];
        v19 = v21;
        v22 = v17;
        v23 = v18;
        v24 = a4;
        goto LABEL_10;
      }
    }

    else if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = SBHIconGridRangeUnion(v17, v18, a4, v18, v16);
      v26 = v25;
      if ([(SBIconListModel *)self areIconsInGridRangeFullyContained:v19 gridCellInfo:v25, v13])
      {
        v43 = SBHIconGridRangeDifference(v19, v26, v42, v18, v16);
        v38 = v27;
        v28 = SBHIconGridRangeDifference(v19, v26, a4, v18, v16);
        v21 = [v13 copy];
        v19 = v21;
        v22 = v43;
        v23 = v38;
        v24 = v28;
LABEL_10:
        [v21 swapLayoutInGridRange:v22 withLayoutAtGridCellIndex:{v23, v24}];
        [v19 setIconIndex:v41 inGridRange:{a4, v18}];
        if (v19)
        {
LABEL_22:
          [(SBIconListModel *)self transferLocationsForIconsFromGridCellInfo:v19 gridCellInfoOptions:a6 mutationOptions:a7];

          v34 = 1;
          goto LABEL_23;
        }
      }
    }

    v36 = self;
    v37 = a7;
    v29 = 0;
    while (1)
    {
      v30 = a4;
      v44 = a4;
      v45 = v18;
      v31 = qword_1BEE87B98[v29];
      v32 = SBHIconGridRangeMovementDirectionIsVertical(v31) ? WORD1(v18) : v18;
      v19 = v19 & 0xFFFFFFFF00000000 | v16;
      if (SBHIconGridRangeOffset(&v44, v31, v32, v19) == v32 && ![v13 hasUsedGridCellsInGridRange:{v44, v45}])
      {
        break;
      }

      ++v29;
      a4 = v30;
      if (v29 == 4)
      {
        goto LABEL_18;
      }
    }

    v19 = [v13 copy];
    a4 = v30;
    [v19 swapLayoutInGridRange:v30 withLayoutAtGridCellIndex:{v18, v44}];
    [v19 setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v42, v18}];
    [v19 setIconIndex:v41 inGridRange:{v30, v18}];
    if (v19)
    {
      a7 = v37;
      self = v36;
      goto LABEL_22;
    }

LABEL_18:
    v33 = [v13 copy];
    [v33 setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v40, v39}];
    self = v36;
    a7 = v37;
    v19 = [(SBIconListModel *)v36 gridCellInfoByUsingTwoDimensionalMovementToInsertIcon:v12 atGridCellIndex:a4 gridCellInfo:v33 gridCellInfoOptions:a6 mutationOptions:v37];

    if (v19)
    {
      goto LABEL_22;
    }
  }

  v34 = 0;
LABEL_23:

  return v34;
}

- (void)_moveContainedIconUsingSimpleMovement:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v12 = a3;
  v11 = a5;
  if (!v11)
  {
    v11 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
  }

  [(SBIconIndexMutableList *)self->_icons moveNode:v12 toIndex:[(SBIconListModel *)self _iconIndexForMovingIcon:v12 toGridCellIndex:a4 gridCellInfo:v11]];
}

- (void)setIconOrderFromGridCellInfo:(id)a3 referenceIconOrder:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20 = self;
  v8 = [(SBIconListModel *)self icons];
  v9 = [v7 count];
  v10 = [v6 gridSize];
  if (v9 >= 0x40)
  {
    v11 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
    v19 = v11;
  }

  else
  {
    v19 = 0;
    v11 = &v22;
  }

  v12 = [v6 getUniqueIconIndexes:v11 inGridRange:{0, v10}];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = v8;
  for (i = [v8 mutableCopy]; v12; --v12)
  {
    v16 = *v11++;
    v15 = v16;
    if (v16 != -1)
    {
      if (v15 >= v9)
      {
        if (os_variant_has_internal_content())
        {
          v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"bad icon index in gridCellInfo in setIconOrderFromGridCellInfo" userInfo:0];
          objc_exception_throw(v18);
        }
      }

      else
      {
        v17 = [v7 nodeAtIndex:?];
        [v13 addObject:v17];
        [i removeObject:v17];
      }
    }
  }

  if ([i count])
  {
    [v13 addObjectsFromArray:i];
  }

  [(SBIconIndexMutableList *)v20->_icons setNodes:v13];
  free(v19);
}

+ (void)applyIconLayoutFromGridCellInfo:(id)a3 inGridRange:(SBHIconGridRange)a4 iconOrder:(id)a5 toGridCellInfo:(id)a6 inGridRange:(SBHIconGridRange)a7 iconOrder:(id)a8
{
  v10 = *&a4.size.columns;
  cellIndex = a4.cellIndex;
  v22 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  Area = SBHIconGridSizeGetArea(v10);
  v17 = Area;
  if (Area >= 0x40)
  {
    v18 = malloc_type_calloc(Area, 8uLL, 0x100004000313F17uLL);
    [v12 getIconIndexes:v18 inGridRange:{cellIndex, v10}];
  }

  else
  {
    v18 = v21;
    [v12 getIconIndexes:v21 inGridRange:{cellIndex, v10}];
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v19 = 0;
  do
  {
    if (*&v18[8 * v19] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [v13 nodeAtIndex:?];
      *&v18[8 * v19] = [v15 indexOfNode:v20];
    }

    ++v19;
  }

  while (v17 != v19);
LABEL_9:
  [v14 setIconIndexes:v18 inGridRange:{a7.cellIndex, *&a7.size.columns}];
}

- (void)moveContainedIcon:(id)a3 beforeIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v14 = a3;
  v10 = a4;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  v12 = [v11 indexForIcon:v14];
  if (v12 != [v11 indexForIcon:v10] - 1)
  {
    v13 = -[SBIconListModel moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:](self, "moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:", v14, [v11 bestGridCellIndexForInsertingIcon:v14 atGridCellIndex:{objc_msgSend(v11, "gridCellIndexForIcon:gridCellInfoOptions:", v10, a5)}], a5, a6);
  }
}

- (void)moveContainedIcon:(id)a3 afterIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v18 = a3;
  v10 = a4;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  v12 = [v11 indexForIcon:v18];
  if (v12 != [v11 indexForIcon:v10] + 1)
  {
    v13 = [v11 gridCellInfoWithOptions:a5];
    v14 = [v11 gridCellIndexForIcon:v10 gridCellInfo:v13];
    v15 = [v11 gridCellIndexForIcon:v18 gridCellInfo:v13];
    v16 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v18 afterIconAtGridCellIndex:v14 gridCellInfo:v13];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [(SBIconListModel *)self moveContainedIcon:v18 toGridCellIndex:((__PAIR128__(v16 gridCellInfoOptions:v15) - v16) >> 64) mutationOptions:a5, a6];
    }
  }
}

- (void)moveContainedIcon:(id)a3 belowIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v14 = a3;
  v10 = a4;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  [v11 indexForIcon:v14];
  v12 = [v11 gridCellIndexBelowIconAtIndex:objc_msgSend(v11 options:{"indexForIcon:", v10), a5}];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self moveContainedIcon:v14 afterIcon:v10 gridCellInfoOptions:a5 mutationOptions:a6];
  }

  else
  {
    v13 = -[SBIconListModel moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:](self, "moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:", v14, [v11 bestGridCellIndexForInsertingIcon:v14 atGridCellIndex:v12], a5, a6);
  }
}

- (void)moveContainedIcon:(id)a3 aboveIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v14 = a3;
  v10 = a4;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  [v11 indexForIcon:v14];
  v12 = [v11 gridCellIndexAboveIconAtIndex:objc_msgSend(v11 options:{"indexForIcon:", v10), a5}];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self moveContainedIcon:v14 beforeIcon:v10 gridCellInfoOptions:a5 mutationOptions:a6];
  }

  else
  {
    v13 = -[SBIconListModel moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:](self, "moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:", v14, [v11 bestGridCellIndexForInsertingIcon:v14 atGridCellIndex:v12], a5, a6);
  }
}

- (void)moveContainedIcon:(id)a3 toIndex:(unint64_t)a4 options:(unint64_t)a5
{
  v11 = a3;
  v8 = [(SBIconListModel *)self indexForIcon:?];
  if (v8 != a4)
  {
    [(SBIconIndexMutableList *)self->_icons removeNodeAtIndex:v8];
    v9 = [(SBIconIndexMutableList *)self->_icons count];
    icons = self->_icons;
    if (v9 <= a4)
    {
      [(SBIconIndexMutableList *)icons addNode:v11];
    }

    else
    {
      [(SBIconIndexMutableList *)icons insertNode:v11 atIndex:a4];
    }

    [(SBIconListModel *)self markIconStateDirtyWithOptions:a5];
    [(SBIconListModel *)self _notifyListObserversDidMoveIcon:v11 options:a5];
  }
}

- (void)swapContainedIcon:(id)a3 withContainedIcon:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v38 = a3;
  v10 = a4;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  v12 = v11;
  if (v11 != self)
  {
    [(SBIconListModel *)v11 swapContainedIcon:v38 withContainedIcon:v10 gridCellInfoOptions:a5 mutationOptions:a6];
    goto LABEL_25;
  }

  v34 = a6;
  v13 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  v14 = [(SBIconListModel *)self gridCellIndexForIcon:v38 gridCellInfo:v13];
  v15 = [(SBIconListModel *)self gridCellIndexForIcon:v10 gridCellInfo:v13];
  [(SBIconListModel *)self coordinateForGridCellIndex:v14 gridCellInfo:v13];
  v35 = v16;
  [(SBIconListModel *)self coordinateForGridCellIndex:v15 gridCellInfo:v13];
  v36 = v17;
  v18 = [v38 gridSizeClass];
  v19 = [v10 gridSizeClass];
  v37 = v18;
  v20 = [(SBIconListModel *)self gridSizeForGridSizeClass:v18 gridCellInfoOptions:a5];
  v21 = [(SBIconListModel *)self gridSizeForGridSizeClass:v19 gridCellInfoOptions:a5];
  if (v14 < v15)
  {
    v22 = [(SBIconListModel *)self moveContainedIcon:v10 toGridCellIndex:v14 gridCellInfoOptions:a5 mutationOptions:v34];
    v23 = v15 + v21 - v20;
    if (v20 >= v21)
    {
      v23 = v15;
    }

    if (v20 > v21)
    {
      v24 = v15 - (v20 - v21);
    }

    else
    {
      v24 = v23;
    }

    if (v35 == v36)
    {
      v25 = v24;
    }

    else
    {
      v25 = v15;
    }

    v26 = self;
    v27 = v38;
    v28 = a5;
    v29 = v34;
LABEL_23:
    v33 = [(SBIconListModel *)v26 moveContainedIcon:v27 toGridCellIndex:v25 gridCellInfoOptions:v28 mutationOptions:v29];
    goto LABEL_24;
  }

  if (v14 > v15)
  {
    v30 = [(SBIconListModel *)self moveContainedIcon:v38 toGridCellIndex:v15 gridCellInfoOptions:a5 mutationOptions:v34];
    v31 = v14 - (v21 - v20);
    if (v20 >= v21)
    {
      v31 = v14;
    }

    if (v20 > v21)
    {
      v32 = v14 + v20 - v21;
    }

    else
    {
      v32 = v31;
    }

    if (v35 == v36)
    {
      v25 = v32;
    }

    else
    {
      v25 = v14;
    }

    v26 = self;
    v27 = v10;
    v28 = a5;
    v29 = v34;
    goto LABEL_23;
  }

LABEL_24:

LABEL_25:
}

- (void)performChangesByPreservingOrderOfDefaultSizedIcons:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListModel *)self icons];
  v4[2](v4);
  v6 = [(SBIconListModel *)self icons];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __70__SBIconListModel_performChangesByPreservingOrderOfDefaultSizedIcons___block_invoke;
  v30[3] = &unk_1E8089C20;
  v30[4] = self;
  v7 = [v5 bs_filter:v30];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70__SBIconListModel_performChangesByPreservingOrderOfDefaultSizedIcons___block_invoke_2;
  v29[3] = &unk_1E8089C20;
  v29[4] = self;
  v27 = [v6 bs_filter:v29];
  v28 = v7;
  if ([v7 isEqualToArray:?])
  {
    goto LABEL_24;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [(SBIconListModel *)self numberOfIcons];
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  v24 = v6;
  v25 = v5;
  v26 = v4;
  v11 = 0;
  for (i = 0; i != v10; ++i)
  {
    v13 = [(SBIconListModel *)self iconAtIndex:i];
    v14 = [v13 gridSizeClass];
    if (!v14)
    {
      if ([(SBIconListModel *)self isIconFixed:v13])
      {
        goto LABEL_15;
      }

LABEL_9:
      v15 = [v7 objectAtIndex:v11];
      v18 = [v27 containsObject:v15];
      if (v15 && (v18 & 1) != 0)
      {
        v19 = [SBPlaceholderIcon placeholderForIcon:v15];
      }

      else
      {
        v19 = [SBPlaceholderIcon placeholderForReason:@"preserveDefaultSizedIconOrder"];
      }

      v16 = v19;
      [(SBIconIndexMutableList *)self->_icons replaceNodeAtIndex:i withNode:v19];
      [v8 addObject:v16];
      ++v11;
LABEL_14:

      goto LABEL_15;
    }

    v15 = v14;
    v16 = [v13 gridSizeClass];
    if (![v16 isEqualToString:@"SBHIconGridSizeClassDefault"])
    {
      goto LABEL_14;
    }

    v17 = [(SBIconListModel *)self isIconFixed:v13];

    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_15:
  }

  v20 = 0;
  v5 = v25;
  v4 = v26;
  v6 = v24;
  do
  {
    v21 = [(SBIconListModel *)self iconAtIndex:v20];
    if ([v8 containsObject:v21])
    {
      v22 = [v21 referencedIcon];
      icons = self->_icons;
      if (v22)
      {
        [(SBIconIndexMutableList *)icons replaceNodeAtIndex:v20 withNode:v22];
      }

      else
      {
        [(SBIconIndexMutableList *)icons removeNodeAtIndex:v20--];
        --v10;
      }
    }

    ++v20;
  }

  while (v20 < v10);
LABEL_23:

LABEL_24:
}

uint64_t __70__SBIconListModel_performChangesByPreservingOrderOfDefaultSizedIcons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 gridSizeClass];
  if (v4)
  {
    v5 = [v3 gridSizeClass];
    if ([v5 isEqualToString:@"SBHIconGridSizeClassDefault"])
    {
      v6 = [*(a1 + 32) isIconFixed:v3] ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [*(a1 + 32) isIconFixed:v3] ^ 1;
  }

  return v6;
}

uint64_t __70__SBIconListModel_performChangesByPreservingOrderOfDefaultSizedIcons___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 gridSizeClass];
  if (v4)
  {
    v5 = [v3 gridSizeClass];
    if ([v5 isEqualToString:@"SBHIconGridSizeClassDefault"])
    {
      v6 = [*(a1 + 32) isIconFixed:v3] ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [*(a1 + 32) isIconFixed:v3] ^ 1;
  }

  return v6;
}

- (void)performChangesByPreservingPositionsOfIconsLargerThanSizeClass:(id)a3 block:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (!v6 || [v6 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    v9 = [(SBIconListModel *)self iconGridSizeClassSizes];
    v10 = [v9 gridSizeAreaForGridSizeClass:@"SBHIconGridSizeClassDefault"];
    icons = self->_icons;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __87__SBIconListModel_performChangesByPreservingPositionsOfIconsLargerThanSizeClass_block___block_invoke;
    v29[3] = &unk_1E808DD48;
    v30 = v9;
    v32 = v10;
    v31 = v8;
    v12 = v9;
    [(SBIconIndexMutableList *)icons enumerateNodesUsingBlock:v29];
  }

  v24 = v6;
  v7[2](v7);
  v13 = self->_icons;
  v14 = [v8 allValues];
  [(SBIconIndexMutableList *)v13 removeNodesInArray:v14];

  v15 = [v8 allKeys];
  v16 = [v15 sortedArrayUsingSelector:sel_compare_];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        v23 = [v8 objectForKey:v22];
        -[SBIconIndexMutableList insertNode:atIndex:](self->_icons, "insertNode:atIndex:", v23, [v22 unsignedIntegerValue]);
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }
}

void __87__SBIconListModel_performChangesByPreservingPositionsOfIconsLargerThanSizeClass_block___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 gridSizeClass];
  if ([*(a1 + 32) gridSizeAreaForGridSizeClass:v5] > *(a1 + 48))
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v6 setObject:v8 forKey:v7];
  }
}

- (id)largestClusteringSizeClassWithOptions:(unint64_t)a3
{
  v5 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:?];
  v6 = [(SBIconListModel *)self gridSizeWithOptions:a3];
  v7 = [(SBIconListModel *)self allowedGridSizeClasses];
  if (*&v6 < 0xFFFF0000)
  {
    [v5 largestGridSizeClassWhichTilesInGridSize:*&v6 allowedGridSizeClasses:v7];
  }

  else
  {
    [v5 shortestGridSizeClassWithWidth:v6.columns allowedGridSizeClasses:v7];
  }
  v8 = ;

  return v8;
}

- (void)performChangesByClusteringForSizeClass:(id)a3 behavior:(unint64_t)a4 withGridCellInfoOptions:(unint64_t)a5 block:(id)a6
{
  v17 = a3;
  v10 = a6;
  v11 = [(SBIconListModel *)self gridSizeForGridSizeClass:v17 gridCellInfoOptions:a5];
  v12 = [(SBIconListModel *)self largestClusteringSizeClassWithOptions:a5];
  v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:v12 gridCellInfoOptions:a5];
  if (v11.columns <= v13.columns && HIWORD(*&v11) <= HIWORD(*&v13))
  {
    v15 = v17;
  }

  else
  {
    v14 = v12;

    v15 = v14;
  }

  v18 = v15;
  v16 = [(SBIconListModel *)self _clusterIconsForSizeClass:v15 behavior:a4 gridCellInfoOptions:a5];
  v10[2](v10);

  [(SBIconListModel *)self _unclusterIcons:v16 ofSizeClass:v18 gridCellInfoOptions:a5];
}

- (id)_clusterIconsForSizeClass:(id)a3 behavior:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__SBIconListModel__clusterIconsForSizeClass_behavior_gridCellInfoOptions___block_invoke;
  v7[3] = &unk_1E808DD70;
  v7[4] = self;
  v7[5] = a5;
  v5 = [(SBIconListModel *)self _clusterIconsForSizeClass:a3 behavior:a4 gridCellInfoProvider:v7];

  return v5;
}

- (id)_clusterIconsForSizeClass:(id)a3 behavior:(unint64_t)a4 gridCellInfoProvider:(id)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v9 || ([v9 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) != 0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v13 = v10[2](v10);
  if ([v13 isLayoutOutOfBounds])
  {
    v14 = SBLogIcon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBIconListModel _clusterIconsForSizeClass:v14 behavior:? gridCellInfoProvider:?];
    }
  }

  v15 = [(SBIconListModel *)self gridSizeForGridSizeClass:v9 gridCellInfo:v13];
  v66 = v15;
  Area = SBHIconGridSizeGetArea(*&v15);
  if (Area != 1)
  {
    v17 = Area;
    v59 = v12;
    v60 = v10;
    v61 = v9;
    v18 = HIWORD(*&v15);
    v19 = [v13 gridSize];
    if (HIWORD(*&v15) > HIWORD(v19))
    {
LABEL_11:
      v12 = v59;
      v11 = v59;
      v10 = v60;
      v9 = v61;
      goto LABEL_12;
    }

    v21 = 0;
    v67 = v17;
    v22 = HIWORD(v19) / v15.rows;
    v23 = v19;
    v24 = v18 * v19;
    v54 = HIWORD(*&v15);
    v25 = v18 - 1;
    columns = v15.columns;
    v57 = v25;
    if (v25 <= 1)
    {
      v25 = 1;
    }

    v56 = v25;
    v62 = v19 / v15.columns;
    v63 = a4;
    v64 = v15.columns;
    v65 = v19;
    v51 = v24;
    v52 = HIWORD(v19) / v15.rows;
    while (columns > v23)
    {
      ++v21;
LABEL_76:
      if (v21 >= v22)
      {
        goto LABEL_11;
      }
    }

    v27 = 0;
    v28 = v24 * v21;
    v58 = v21 * v54;
    v53 = v21 + 1;
    v55 = (v21 + 1) * v54 - 1;
    v68 = v24 * v21;
    while (1)
    {
      if ([v13 iconIndexForGridCellIndex:v27 * columns + v28] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_11;
      }

      v69 = v27;
      v70 = v27 * columns;
      v29 = [(SBIconListModel *)self iconsForGridRange:v27 * columns + v28 gridCellInfo:v66, v13];
      v71 = [v29 count];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        v34 = *v74;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v74 != v34)
            {
              objc_enumerationMutation(v30);
            }

            v36 = [*(*(&v73 + 1) + 8 * i) gridSizeClass];
            v37 = [(SBIconListModel *)self gridSizeForGridSizeClass:v36 gridCellInfo:v13];

            v5 = v5 & 0xFFFFFFFF00000000 | *&v37;
            v33 += SBHIconGridSizeGetArea(v5);
          }

          v32 = [v30 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v32);
      }

      else
      {
        v33 = 0;
      }

      v39 = v63 == 1 || v71 > 1;
      if (v33 != v67)
      {
        v39 = 0;
      }

      v40 = v33 <= v67 && v63 == 2;
      v41 = v39 || v40;
      if (v71 < 2)
      {
        columns = v64;
        v23 = v65;
      }

      else
      {
        columns = v64;
        v23 = v65;
        if ((v41 & 1) == 0 && v33 < v67)
        {
          v42 = v58;
          v43 = v56;
          if (v57)
          {
            while ([v13 numberOfUsedGridCellsInRow:v42 columnRange:{v70, v64}] == v65)
            {
              ++v42;
              if (!--v43)
              {
                goto LABEL_49;
              }
            }

            goto LABEL_73;
          }

LABEL_49:
          v44 = [v13 numberOfUsedGridCellsInRow:v55 columnRange:{v70, v64}];
          if (v44)
          {
            v45 = v44 >= v65;
          }

          else
          {
            v45 = 1;
          }

          v41 = !v45;
        }
      }

      if (v63 != 1 || !v41 || v71 != 1)
      {
        break;
      }

      v46 = [v30 firstObject];
      v47 = objc_opt_self();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v46 isClusteredIconPlaceholder])
      {

        goto LABEL_67;
      }

      v48 = [v46 gridSizeClass];
      v49 = v48;
      if (v48 != v61)
      {
        v50 = [v46 gridSizeClass];
        v72 = [v50 isEqualToString:v61];

        columns = v64;
        v23 = v65;
        if (v72)
        {
          goto LABEL_72;
        }

LABEL_67:

LABEL_68:
        v46 = [SBPlaceholderIcon clusteredIconPlaceholderForIcons:v30];
        [v46 setGridSizeClass:v61];
        [v59 addObject:v46];
        -[SBIconIndexMutableList insertNode:atIndex:](self->_icons, "insertNode:atIndex:", v46, [v13 iconIndexForGridCellIndex:v70 + v68]);
        [(SBIconIndexMutableList *)self->_icons removeNodesInArray:v30];
        if ([(SBIconListModel *)self isInsertionFixedForIconGridSizeClass:v61 options:0])
        {
          [(SBIconListModel *)self setFixedLocation:v70 + v68 forIcon:v46 options:0x800000];
        }

        (v60[2])();
        v13 = v47 = v13;
        goto LABEL_71;
      }

      v23 = v65;
LABEL_71:

LABEL_72:
LABEL_73:

      v28 = v68;
      v27 = v69 + 1;
      if (v69 + 1 >= v62)
      {
        v22 = v52;
        v21 = v53;
        v24 = v51;
        goto LABEL_76;
      }
    }

    if ((v41 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_68;
  }

  v11 = 0;
LABEL_12:

LABEL_13:

  return v11;
}

- (BOOL)_canClusterIconsUsingSizeClass:(id)a3
{
  v4 = [(SBIconListModel *)self gridSizeForGridSizeClass:a3];
  v5 = [(SBIconListModel *)self gridSize];
  return (HIWORD(*&v5) == 0xFFFF || !(HIWORD(*&v5) % HIWORD(*&v4))) && (v5.columns == 0xFFFF || !(v5.columns % v4.columns));
}

- (void)_unclusterIcons:(id)a3 ofSizeClass:(id)a4 gridCellInfoOptions:(unint64_t)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SBIconListModel__unclusterIcons_ofSizeClass_gridCellInfoOptions___block_invoke;
  v5[3] = &unk_1E808DD98;
  v5[4] = self;
  [(SBIconListModel *)self _unclusterIcons:a3 ofSizeClass:a4 baseGridCellInfoOptions:a5 gridCellInfoProvider:v5];
}

- (void)_unclusterIcons:(id)a3 ofSizeClass:(id)a4 baseGridCellInfoOptions:(unint64_t)a5 gridCellInfoProvider:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v42 = a6;
  [(SBIconListModel *)self iconLayoutBehavior];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v8;
  v37 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v37)
  {
    v36 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v9;
        v10 = *(*(&v46 + 1) + 8 * v9);
        v11 = [(SBIconListModel *)self indexForIcon:v10];
        v12 = v42[2](v42, a5);
        v13 = [v10 gridSizeClass];
        v14 = [(SBIconListModel *)self gridSizeForGridSizeClass:v13 gridCellInfoOptions:a5];

        v44 = 0x7FFFFFFFFFFFFFFFLL;
        v45 = 0x7FFFFFFFFFFFFFFFLL;
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = [v12 gridCellIndexForIconIndex:v11];
          v44 = 0x7FFFFFFFFFFFFFFFLL;
          v45 = 0x7FFFFFFFFFFFFFFFLL;
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = [v12 coordinateForGridCellIndex:v15];
            v45 = v16;
          }
        }

        v39 = v12;
        [(SBIconIndexMutableList *)self->_icons removeNode:v10];
        [(SBIconListModel *)self removeFixedIconLocationForIcon:v10];
        v17 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a5];
        v18 = [v10 referencedIcons];
        v41 = v41 & 0xFFFFFFFF00000000 | *&v14;
        v38 = v17;
        v19 = [objc_opt_class() iconGridCellInfoForIcons:v18 gridSize:a5 gridSizeClassSizes:? iconLayoutBehavior:? referenceIconOrder:? fixedIconLocations:? options:?];
        if ([v18 count])
        {
          v20 = 0;
          while (1)
          {
            v21 = v42[2](v42, a5 | 0xC);
            v22 = [v18 objectAtIndex:v20];
            v23 = [v19 coordinateForGridCellIndex:{objc_msgSend(v19, "gridCellIndexForIconIndex:", v20)}];
            v25 = v24;
            IsNotFound = SBIconCoordinateIsNotFound(v44, v45);
            v27 = IsNotFound ? 0x7FFFFFFFFFFFFFFFLL : v44 - 1 + v23;
            v28 = IsNotFound ? 0x7FFFFFFFFFFFFFFFLL : v45 - 1 + v25;
            if (SBIconCoordinateIsNotFound(v27, v28))
            {
              break;
            }

            v29 = [v21 gridCellIndexForCoordinate:{v27, v28}];
            if (v29 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v30 = v29;
            v34 = [v21 iconIndexForGridCellIndex:v29];
            if (v34 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_20;
            }

LABEL_29:
            [(SBIconIndexMutableList *)self->_icons insertNode:v22 atIndex:v34];

            if (++v20 >= [v18 count])
            {
              goto LABEL_33;
            }
          }

          v30 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
          v31 = [(SBIconIndexMutableList *)self->_icons count];
          v32 = v30;
          if (v31)
          {
            v32 = [v21 gridCellIndexForIconIndex:v31 - 1];
          }

          if (v32 == 0x7FFFFFFFFFFFFFFFLL || (v33 = v30 + 1, v30 + 1 > v32))
          {
LABEL_28:
            v34 = [(SBIconIndexMutableList *)self->_icons count];
          }

          else
          {
            while (1)
            {
              v34 = [v21 iconIndexForGridCellIndex:v33];
              if (v34 != 0x7FFFFFFFFFFFFFFFLL && [v21 gridCellIndexForIconIndex:v34] > v30)
              {
                break;
              }

              if (++v33 > v32)
              {
                if (v34 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_29;
                }

                goto LABEL_28;
              }
            }
          }

          goto LABEL_29;
        }

LABEL_33:

        v9 = v40 + 1;
      }

      while (v40 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v37);
  }
}

- (int64_t)_moveIcon:(id)a3 byClusteringForSizeClass:(id)a4 toGridCellIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__SBIconListModel__moveIcon_byClusteringForSizeClass_toGridCellIndex_gridCellInfoOptions___block_invoke;
  v15[3] = &unk_1E808DDE8;
  v18 = a5;
  v15[4] = self;
  v12 = v10;
  v19 = a6;
  v16 = v12;
  v17 = &v20;
  [(SBIconListModel *)self performChangesByClusteringForSizeClass:v11 behavior:0 withGridCellInfoOptions:a6 block:v15];
  v13 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __90__SBIconListModel__moveIcon_byClusteringForSizeClass_toGridCellIndex_gridCellInfoOptions___block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__14;
  v26 = __Block_byref_object_dispose__14;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = *(a1 + 56);
  if ([*(a1 + 32) directlyContainsIcon:*(a1 + 40)])
  {
    v2 = v23;
    v3 = *(a1 + 40);
    v4 = v2[5];
    v2[5] = v3;
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __90__SBIconListModel__moveIcon_byClusteringForSizeClass_toGridCellIndex_gridCellInfoOptions___block_invoke_2;
    v12[3] = &unk_1E808DDC0;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v15 = &v22;
    v16 = &v18;
    v7 = *(a1 + 32);
    v13 = v6;
    v14 = v7;
    v17 = *(a1 + 56);
    [v5 enumerateIconsUsingBlock:v12];
    v4 = v13;
  }

  if (v23[5])
  {
    v8 = [*(a1 + 32) gridCellInfoWithOptions:*(a1 + 64)];
    v9 = [*(a1 + 32) _iconIndexForMovingIcon:v23[5] toGridCellIndex:v19[3] gridCellInfo:v8];
    [*(*(a1 + 32) + 8) moveNode:v23[5] toIndex:v9];
    v10 = [*(a1 + 32) gridCellInfoWithOptions:*(a1 + 64)];

    v11 = [v10 gridCellIndexForIconIndex:v9];
    *(*(*(a1 + 48) + 8) + 24) = v11 - v19[3];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void __90__SBIconListModel__moveIcon_byClusteringForSizeClass_toGridCellIndex_gridCellInfoOptions___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 referencesIcon:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) bestGridCellIndexForInsertingIcon:*(*(*(a1 + 48) + 8) + 40) atGridCellIndex:*(a1 + 64)];
    *a4 = 1;
  }
}

- (unint64_t)_iconIndexForMovingIcon:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 iconIndexForGridCellIndex:a4];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(SBIconIndexMutableList *)self->_icons count]- 1;
    goto LABEL_36;
  }

  if (!a4)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v11 = v10;
  v37 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:v10];
  v12 = [v37 gridSizeClass];
  v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:v12 gridCellInfo:v9];

  v14 = [v8 gridSizeClass];
  v15 = [(SBIconListModel *)self gridSizeForGridSizeClass:v14 gridCellInfo:v9];

  v16 = [v9 gridSize];
  v17 = v16;
  v18 = HIWORD(v16);
  v38 = 0u;
  v39 = 0u;
  SBHIconGridRangeGetBounds(a4, *&v15, v16, &v38);
  if (*(&v39 + 1) == v18 && *(&v38 + 1) == v17)
  {
    v11 = [(SBIconIndexMutableList *)self->_icons count]- 1;
  }

  else
  {
    v19 = HIWORD(*&v13);
    if (v19 > HIWORD(*&v15))
    {
      [v9 coordinateForGridCellIndex:{objc_msgSend(v9, "gridCellIndexForIconIndex:", v11)}];
      v21 = v20;
      [v9 coordinateForGridCellIndex:{objc_msgSend(v9, "gridCellIndexForIconIndex:", -[SBIconListModel indexForIcon:](self, "indexForIcon:", v8))}];
      v23 = v22;
      [v9 coordinateForGridCellIndex:a4];
      v25 = v37;
      if (v23 <= v21)
      {
        v28 = v21 + v19 - v24;
        if (v28 < 0)
        {
          v28 = v24 - (v21 + v19);
        }

        v29 = v23 - v24;
        if (v23 - v24 < 0)
        {
          v29 = v24 - v23;
        }

        if (v11)
        {
          v30 = v28 > v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        v11 -= v31;
      }

      else
      {
        v26 = v21 - v24;
        if (v21 - v24 < 0)
        {
          v26 = v24 - v21;
        }

        v27 = v23 - v24;
        if (v23 - v24 < 0)
        {
          v27 = v24 - v23;
        }

        if (v26 >= v27)
        {
          ++v11;
        }
      }

      goto LABEL_29;
    }
  }

  v25 = v37;
LABEL_29:
  if (v25 == v8 && v11 + 1 < [(SBIconIndexMutableList *)self->_icons count])
  {
    v32 = [v9 gridCellIndexForIconIndex:v11];
    v33 = a4 - v32;
    if (a4 > v32)
    {
      v34 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:v11 + 1];
      v35 = [v34 gridSizeClass];
      if (v33 >= SBHIconGridSizeGetArea([(SBIconListModel *)self gridSizeForGridSizeClass:v35 gridCellInfo:v9]))
      {
        ++v11;
      }
    }
  }

LABEL_36:
  return v11;
}

+ (id)movedIconsWithOriginalOrder:(id)a3 newOrder:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndex:v8];
      v10 = [v6 objectAtIndex:v8];
      if (v9 != v10)
      {
        [v7 addObject:v10];
      }

      ++v8;
    }

    while (v8 < [v6 count]);
  }

  return v7;
}

- (id)movedIconsFromGridCellInfo:(id)a3 withIconOrder:(id)a4 toGridCellInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13 = [v10 usedGridRange];
  v15 = v14;
  v16 = [v8 gridSize];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__SBIconListModel_movedIconsFromGridCellInfo_withIconOrder_toGridCellInfo___block_invoke;
  v25[3] = &unk_1E808DE10;
  v26 = v10;
  v27 = v12;
  v28 = self;
  v29 = v9;
  v30 = v8;
  v17 = v11;
  v31 = v17;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v21 = v10;
  SBHIconGridRangeEnumerateCellIndexes(v13, v15, v16, v25);
  v22 = v31;
  v23 = v17;

  return v17;
}

void __75__SBIconListModel_movedIconsFromGridCellInfo_withIconOrder_toGridCellInfo___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] iconIndexForGridCellIndex:a2];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (([a1[5] containsIndex:v4] & 1) == 0)
    {
      [a1[5] addIndex:v5];
      v8 = [a1[6] iconAtIndex:v5];
      v6 = [a1[7] indexOfObjectIdenticalTo:?];
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = [a1[8] gridCellIndexForIconIndex:?];
      }

      if (v7 != a2)
      {
        [a1[9] addObject:v8];
      }
    }
  }
}

- (SBIconListModelRotationReorderingInfo)_rotationReorderingInfoWithClusterSizeClass:(SEL)a3 gridCellInfoOptions:(id)a4
{
  v45 = retstr;
  v97 = *MEMORY[0x1E69E9840];
  v47 = a4;
  v62 = self;
  v46 = [(SBIconListModel *)self icons];
  if (v47)
  {
    if (![v47 isEqualToString:?])
    {
      v6 = [(SBIconListModel *)self gridSizeWithOptions:a5];
      columns = v6.columns;
      v8 = v6;
      IsLandscape = SBHIconGridSizeIsLandscape(*&v6);
      SmallestDimension = SBHIconGridSizeGetSmallestDimension(v8);
      Area = SBHIconGridSizeGetArea([(SBIconListModel *)v62 gridSizeForGridSizeClass:v47 gridCellInfoOptions:a5]);
      v12 = SBHIconGridSizeGetArea(v8);
      if (SBHIconGridSizeGetArea(SmallestDimension | (SmallestDimension << 16)) * 1.5 == v12)
      {
        v54 = Area;
        v58 = v8;
        v14 = [(SBIconListModel *)v62 gridCellInfoWithOptions:a5];
        v15 = columns;
        if (columns >= 0x40u)
        {
          v17 = malloc_type_calloc(columns, 8uLL, 0x100004000313F17uLL);
          v16 = v17;
        }

        else
        {
          v16 = 0;
          v17 = &v96;
        }

        v91 = 0;
        v92 = &v91;
        v93 = 0x2020000000;
        v94 = 0;
        v90[0] = 0;
        v90[1] = v90;
        v90[2] = 0x2020000000;
        v90[3] = 0x7FFFFFFFFFFFFFFFLL;
        v86 = 0;
        v87 = &v86;
        v88 = 0x2020000000;
        v89 = 0;
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __83__SBIconListModel__rotationReorderingInfoWithClusterSizeClass_gridCellInfoOptions___block_invoke;
        v78[3] = &unk_1E808DE38;
        v57 = v14;
        v79 = v57;
        v84 = v17;
        v85 = v8;
        v18 = v46;
        v80 = v18;
        v81 = v90;
        v82 = &v86;
        v83 = &v91;
        SBHIconGridRangeEnumerateSubranges(0, v8, v15 | 0x10000, v8, 0, v78);
        free(v16);
        v19 = [v18 indexOfObjectPassingTest:&__block_literal_global_92];
        v20 = [v18 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_94];
        v22 = v19 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0x7FFFFFFFFFFFFFFFLL && v19 > v20;
        v23 = !v22;
        *&v45->var0 = 0u;
        *&v45->var2 = 0u;
        v45->var0 = v23;
        v45->var2 = v92[3];
        v45->var3 = *(v87 + 24);
        if (v22)
        {
          goto LABEL_58;
        }

        v76 = 0;
        v77 = 0;
        v74 = 0;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        SBHIconGridRangeDivide(0, v8, &v76, &v72, SmallestDimension, !IsLandscape, v8);
        v70 = 0;
        v71 = 0;
        if (IsLandscape)
        {
          v24 = 2;
        }

        else
        {
          v24 = 3;
        }

        SBHIconGridRangeDivide(0, v8, &v74, &v70, SmallestDimension, v24, v8);
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        obj = v18;
        v25 = [obj countByEnumeratingWithState:&v66 objects:v95 count:16];
        if (v25)
        {
          v55 = 0;
          v56 = 0;
          v51 = 0;
          v52 = 0;
          v26 = 0;
          v53 = 0;
          v50 = 0;
          v64 = *v67;
          do
          {
            v65 = v25;
            for (i = 0; i != v65; ++i)
            {
              if (*v67 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v66 + 1) + 8 * i);
              v29 = [v28 gridSizeClass];
              v30 = v29;
              if (v29 && ([v29 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
              {
                v31 = SBHIconGridSizeGetArea([(SBIconListModel *)v62 gridSizeForGridSizeClass:v30 gridCellInfoOptions:a5]);
                v32 = v31 > v54;
                if (v31 > v54)
                {
                  ++v26;
                }

                v33 = [v57 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](v62, "indexForIcon:", v28)}];
                v34 = [(SBIconListModel *)v62 gridSizeForGridSizeClass:v30 gridCellInfoOptions:a5];
                v61 = v61 & 0xFFFFFFFF00000000 | v58;
                v35 = SBHIconGridRangeIntersection(v33, v34, v76, v77, v58);
                v37 = v36;
                v60 = v60 & 0xFFFFFFFF00000000 | v58;
                v38 = SBHIconGridRangeIntersection(v33, v34, v74, v75, v58);
                v40 = v39;
                if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v41 = SBHIconGridRangeEqualToIconGridRange(v35, v37, v33, v34);
                  v52 += v32;
                  v49 = v49 & 0xFFFFFFFF00000000 | v37;
                  v56 += SBHIconGridSizeGetArea(v37);
                  v53 |= !v41;
                }

                if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v42 = SBHIconGridRangeEqualToIconGridRange(v38, v40, v33, v34);
                  v51 += v32;
                  v48 = v48 & 0xFFFFFFFF00000000 | v40;
                  v55 += SBHIconGridSizeGetArea(v40);
                  v50 |= !v42;
                }
              }
            }

            v25 = [obj countByEnumeratingWithState:&v66 objects:v95 count:16];
          }

          while (v25);
        }

        else
        {
          v55 = 0;
          v56 = 0;
          v51 = 0;
          v52 = 0;
          v26 = 0;
          v53 = 0;
          v50 = 0;
        }

        if (v56)
        {
          v43 = v56 == v55;
        }

        else
        {
          v43 = 0;
        }

        v44 = !v43;
        if (v26 < 2)
        {
          if ((v52 <= v51) | v53 & 1)
          {
            if (!((v52 >= v51) | v50 & 1))
            {
              goto LABEL_57;
            }

            if (v56 > v55)
            {
              v44 = 0;
            }

            if ((v44 | v53))
            {
              if (!((v56 >= v55) | v50 & 1))
              {
                goto LABEL_57;
              }

              if (v53)
              {
                goto LABEL_48;
              }
            }
          }
        }

        else if ((v52 != v26) | v53 & 1)
        {
          if ((v51 != v26) | v50 & 1)
          {
LABEL_48:
            v45->var0 = 0;
LABEL_58:

            _Block_object_dispose(&v86, 8);
            _Block_object_dispose(v90, 8);
            _Block_object_dispose(&v91, 8);

            goto LABEL_5;
          }

LABEL_57:
          v45->var1 = 1;
          goto LABEL_58;
        }

        v45->var1 = 0;
        goto LABEL_58;
      }
    }
  }

  *&v45->var0 = 0u;
  *&v45->var2 = 0u;
LABEL_5:

  return result;
}

void __83__SBIconListModel__rotationReorderingInfoWithClusterSizeClass_gridCellInfoOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) getIconIndexes:*(a1 + 72) inGridRange:{a2, a3}];
  v7 = *(a1 + 80);
  if (!*(a1 + 80))
  {
    goto LABEL_20;
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(*(a1 + 72) + 8 * v10);
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

LABEL_13:
    if (++v10 >= v7)
    {
      goto LABEL_18;
    }
  }

  v12 = [*(a1 + 40) objectAtIndex:*(*(a1 + 72) + 8 * v10)];
  v13 = [v12 gridSizeClass];
  v14 = v13;
  if (v13 && ([v13 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 24);
    if (v16 == 0x7FFFFFFFFFFFFFFFLL || v11 > v16)
    {
      *(v15 + 24) = v11;
    }

    ++v9;

    v7 = *(a1 + 80);
    goto LABEL_13;
  }

  if (v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_18:
  if (v8 - 1 < v9)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    return;
  }

LABEL_20:
  *a4 = 1;
}

uint64_t __83__SBIconListModel__rotationReorderingInfoWithClusterSizeClass_gridCellInfoOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __83__SBIconListModel__rotationReorderingInfoWithClusterSizeClass_gridCellInfoOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_reorderedIconsWithClusterSizeClass:(id)a3 forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)a4 gridCellInfoOptions:(unint64_t)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(SBIconListModel *)self icons];
  if (v8 && ![v8 isEqualToString:@"SBHIconGridSizeClassDefault"] && (v10 = -[SBIconListModel gridSizeWithOptions:](self, "gridSizeWithOptions:", a5), v11 = v10, IsLandscape = SBHIconGridSizeIsLandscape(*&v10), v13 = -[SBIconListModel iconLayoutBehavior](self, "iconLayoutBehavior"), a4->var0))
  {
    v51 = v13;
    v14 = SBHIconGridSizeRotate(v11);
    SmallestDimension = SBHIconGridSizeGetSmallestDimension(v11);
    Area = SBHIconGridSizeGetArea(SmallestDimension | (SmallestDimension << 16));
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    SBHIconGridRangeDivide(0, v11, &v71, &v67, SmallestDimension, !IsLandscape, v11);
    v65 = 0;
    v66 = 0;
    if (IsLandscape)
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }

    SBHIconGridRangeDivide(0, v11, &v69, &v65, SmallestDimension, v17, v11);
    v54 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
    v18 = v14;
    v53 = [[SBIconListGridCellInfo alloc] initWithGridSize:v14];
    v52 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a5];
    v49 = [(SBIconListModel *)self rotatedGridCellInfoOptions:a5];
    if (Area >= 0x40)
    {
      v19 = malloc_type_calloc(Area, 8uLL, 0x100004000313F17uLL);
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = &v73;
    }

    var1 = a4->var1;
    v50 = v19;
    if (var1 == 1)
    {
      [v54 getIconIndexes:v20 inGridRange:{v69, v70}];
      if (IsLandscape)
      {
        v25 = (HIWORD(v14) - WORD1(v70)) * v14;
      }

      else
      {
        v25 = v14 - v70;
      }

      [(SBIconListGridCellInfo *)v53 setIconIndexes:v20 inGridRange:v25, v70];
      v26 = SBHIconGridRangeCellIndexesNotInIconGridRange(v71, v72, v69, v70, v11);
      v27 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __105__SBIconListModel__reorderedIconsWithClusterSizeClass_forRotationWithReorderingInfo_gridCellInfoOptions___block_invoke_2;
      v59[3] = &unk_1E808CC88;
      v48 = &v60;
      v28 = &v61;
      v60 = v54;
      v61 = v27;
      v29 = v27;
      v30 = v53;
      v31 = v29;
      [v26 enumerateIndexesUsingBlock:v59];
      v32 = objc_opt_class();
      v47 = v49;
      v45 = v51;
      v46 = v9;
      v33 = v9;
      v34 = v31;
      v35 = v53;
      v36 = 0;
    }

    else
    {
      if (var1)
      {
        v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unknown clustering zone" userInfo:0];
        objc_exception_throw(v44);
      }

      [v54 getIconIndexes:v20 inGridRange:{v71, v72}];
      [(SBIconListGridCellInfo *)v53 setIconIndexes:v20 inGridRange:v71, v72];
      if (IsLandscape)
      {
        v24 = SBHIconGridRangeMaxCellIndex(v71, v72, v14);
      }

      else
      {
        v24 = SBHIconGridRangeMaxCellIndexOnRow(v71, v72, v14, 0);
      }

      v37 = v24;
      v26 = SBHIconGridRangeCellIndexesNotInIconGridRange(v69, v70, v71, v72, v11);
      v38 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __105__SBIconListModel__reorderedIconsWithClusterSizeClass_forRotationWithReorderingInfo_gridCellInfoOptions___block_invoke;
      v62[3] = &unk_1E808CC88;
      v48 = &v63;
      v28 = &v64;
      v63 = v54;
      v64 = v38;
      v31 = v38;
      [v26 enumerateIndexesUsingBlock:v62];
      v32 = objc_opt_class();
      v47 = v49;
      v45 = v51;
      v46 = v9;
      v33 = v9;
      v34 = v31;
      v35 = v53;
      v36 = v37;
      v30 = v53;
    }

    [v32 layOutIcons:v33 atIndexes:v34 inGridCellInfo:v35 startingAtGridCellIndex:v36 gridSize:v18 gridSizeClassSizes:v52 iconLayoutBehavior:v45 referenceIconOrder:v46 fixedIconLocations:0 options:v47];

    v39 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __105__SBIconListModel__reorderedIconsWithClusterSizeClass_forRotationWithReorderingInfo_gridCellInfoOptions___block_invoke_3;
    v55[3] = &unk_1E808DE60;
    v56 = v30;
    v57 = self;
    v58 = v39;
    v40 = v39;
    v41 = v30;
    v42 = v40;
    v43 = v41;
    SBHIconGridRangeEnumerateCellIndexes(0, v18, v18, v55);
    free(v50);
    v21 = [v42 array];
  }

  else
  {
    v21 = v9;
  }

  return v21;
}

uint64_t __105__SBIconListModel__reorderedIconsWithClusterSizeClass_forRotationWithReorderingInfo_gridCellInfoOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    v5 = *(a1 + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

uint64_t __105__SBIconListModel__reorderedIconsWithClusterSizeClass_forRotationWithReorderingInfo_gridCellInfoOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    v5 = *(a1 + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

void __105__SBIconListModel__reorderedIconsWithClusterSizeClass_forRotationWithReorderingInfo_gridCellInfoOptions___block_invoke_3(id *a1, uint64_t a2)
{
  v3 = [a1[4] iconIndexForGridCellIndex:a2];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [a1[5] iconAtIndex:v3];
    [a1[6] addObject:v4];
  }
}

- (void)_reorderIconsWithClusterSizeClass:(id)a3 forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)a4 gridCellInfoOptions:(unint64_t)a5
{
  v6 = *&a4->var2;
  v10[0] = *&a4->var0;
  v10[1] = v6;
  v7 = [(SBIconListModel *)self _reorderedIconsWithClusterSizeClass:a3 forRotationWithReorderingInfo:v10 gridCellInfoOptions:a5];
  v8 = [(SBIconListModel *)self icons];
  if (([v7 isEqualToArray:v8] & 1) == 0)
  {
    v9 = [(SBIconListModel *)self setIcons:v7 gridCellInfoOptions:0 mutationOptions:0x100000];
  }
}

- (void)_reorderIconsAfterUnclusteringWithClusterSizeClass:(id)a3 forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)a4 gridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (!a4->var0 && a4->var2 == 1)
  {
    v10 = v8;
    v8 = [(SBIconListModel *)self _moveAllNonDefaultSizedIconsToBeginning];
    v9 = v10;
    if (!a4->var3)
    {
      v8 = [(SBIconListModel *)self _moveDefaultSizedIconsOfCountIntoContiguousLeadingNonDefaultSizedIcons:[(SBIconListModel *)self gridSizeForGridSizeClass:v10 gridCellInfoOptions:a5]];
      v9 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (void)_moveAllNonDefaultSizedIconsToBeginning
{
  v3 = [(SBIconListModel *)self icons];
  v4 = [v3 count];
  v5 = [v3 indexOfObjectPassingTest:&__block_literal_global_100];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    while (1)
    {
      v8 = [(SBIconListModel *)self rangeOfDirectlyContainedIconsInRange:v7 passingTest:v4 - v7, &__block_literal_global_102];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v10 = [(SBIconListModel *)self iconsInRange:v8, v9];
      [(SBIconIndexMutableList *)self->_icons moveNodes:v10 toContiguousIndicesStartingAt:v7];
      v11 = [(SBIconListModel *)self icons];

      v7 = [v11 indexOfObjectPassingTest:&__block_literal_global_100];
      v6 = v11;
      v3 = v11;
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = v3;
LABEL_6:
}

uint64_t __58__SBIconListModel__moveAllNonDefaultSizedIconsToBeginning__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __58__SBIconListModel__moveAllNonDefaultSizedIconsToBeginning__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_moveDefaultSizedIconsOfCountIntoContiguousLeadingNonDefaultSizedIcons:(unint64_t)a3
{
  v16 = [(SBIconListModel *)self icons];
  v5 = [v16 indexOfObjectPassingTest:&__block_literal_global_104];
  if (v5)
  {
    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    LODWORD(v8) = 0;
    v9 = v5;
    while (v9)
    {
      v10 = [v16 objectAtIndex:--v9];
      v11 = [v10 gridSizeClass];
      v8 = SBHIconGridSizeGetArea([(SBIconListModel *)self gridSizeForGridSizeClass:v11]) + v8;

      if (v8 >= a3)
      {
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [v16 count];
          if (v12 - v7 >= a3)
          {
            v13 = a3;
          }

          else
          {
            v13 = v12 - v7;
          }

          v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, v13}];
          v15 = [v16 objectsAtIndexes:v14];

          [(SBIconIndexMutableList *)self->_icons moveNodes:v15 toContiguousIndicesStartingAt:v9];
        }

        break;
      }
    }
  }
}

uint64_t __90__SBIconListModel__moveDefaultSizedIconsOfCountIntoContiguousLeadingNonDefaultSizedIcons___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)repairModelByEliminatingGapsInIcons:(id)a3 avoidingIcons:(id)a4 gridCellInfoOptions:(unint64_t)a5
{
  v7 = a3;
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:a5])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a5];
    v8 = [SBIconListModelRepairUtilities repairModelByEliminatingGapsInIcons:v7 avoidingIcons:0 gridSize:*&self->_gridSize gridSizeClassSizes:v9 iconLayoutBehavior:self->_iconLayoutBehavior fixedIconLocations:self->_fixedIconLocations];
  }

  return v8;
}

- (id)_updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:(unint64_t)a3 mutationOptions:(unint64_t)a4
{
  if ((a4 & 0x100000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBIconListModel *)self repairModelByEliminatingGapsInIcons:self->_icons avoidingIcons:0 gridCellInfoOptions:a3];
  }

  return v5;
}

- (id)_checkAndRemoveBouncedIconsAfterChangeToIcons:(id)a3 ignoringTrailingIconCheck:(BOOL)a4 options:(unint64_t)a5
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ((a5 & 0x1000000) != 0)
  {
    v17 = 0;
    goto LABEL_77;
  }

  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 1;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v58 = v7;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v95 objects:v105 count:16];
  v65 = a4;
  if (v9)
  {
    v10 = *v96;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v96 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v95 + 1) + 8 * i);
        v14 = [v13 gridSizeClass];
        if (v14)
        {
          v15 = [v13 gridSizeClass];
          v16 = [v15 isEqualToString:@"SBHIconGridSizeClassDefault"];

          v11 &= v16;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v95 objects:v105 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  if (((a5 >> 3) & 1) == 0)
  {
    v62 = 0;
    if ((a5 & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    v64 = 0;
    goto LABEL_19;
  }

  v62 = [v8 reverseObjectEnumerator];
  if ((a5 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v18 = [(SBIconListModel *)self directlyContainedIconsPassingTest:&__block_literal_global_107];
  v64 = [v18 reverseObjectEnumerator];

LABEL_19:
  v59 = [(SBIconListModel *)self delegate];
  if ((a5 & 0xC) != 0)
  {
    v61 = 0;
  }

  else
  {
    v61 = objc_opt_respondsToSelector();
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__SBIconListModel__checkAndRemoveBouncedIconsAfterChangeToIcons_ignoringTrailingIconCheck_options___block_invoke_2;
  aBlock[3] = &unk_1E808DE88;
  v19 = v8;
  v93 = (a5 & 4) >> 2;
  v91 = 0;
  v92 = &v99;
  v90 = v19;
  v94 = v65;
  v60 = _Block_copy(aBlock);
  v66 = 0;
  v20 = 0;
  v21 = 0;
  if (v62)
  {
    v22 = (a5 >> 3) & 1;
  }

  else
  {
    v22 = 0;
  }

  v63 = v22;
  do
  {
    v88 = v20;
    v23 = [(SBIconListModel *)self isGridLayoutValidWithOptions:0 outOfBoundsIcons:&v88];
    v24 = v88;

    if (v23)
    {
      break;
    }

    v25 = v21;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__14;
    v86 = __Block_byref_object_dispose__14;
    v87 = 0;
    if (!(((a5 & 0x8000000) == 0) | v66 & 1))
    {
      [(SBIconListModel *)self removeAllFixedIconLocations];
      [(SBIconListModel *)self saveOnlyRequiredIconLocationsAsFixedIfRequired];
      v29 = 0;
      v66 = 1;
      goto LABEL_57;
    }

    if (v63)
    {
      v26 = [v62 nextObject];
      v27 = v83[5];
      v83[5] = v26;

      v28 = v83[5];
      if ((a5 & 0x40) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v28 = 0;
      if ((a5 & 0x40) == 0)
      {
        goto LABEL_36;
      }
    }

    if (!v28 && v64)
    {
      v30 = [v64 nextObject];
      v31 = v83[5];
      v83[5] = v30;

      v28 = v83[5];
    }

LABEL_36:
    if (!v28)
    {
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __99__SBIconListModel__checkAndRemoveBouncedIconsAfterChangeToIcons_ignoringTrailingIconCheck_options___block_invoke_3;
      v79[3] = &unk_1E808DEB0;
      v32 = v60;
      v80 = v32;
      v81 = &v82;
      [v24 enumerateObjectsWithOptions:2 usingBlock:v79];

      if (!v83[5])
      {
        icons = self->_icons;
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __99__SBIconListModel__checkAndRemoveBouncedIconsAfterChangeToIcons_ignoringTrailingIconCheck_options___block_invoke_4;
        v76[3] = &unk_1E808DEB0;
        v77 = v32;
        v78 = &v82;
        [(SBIconIndexMutableList *)icons enumerateNodesWithOptions:2 usingBlock:v76];
      }
    }

    if (v11)
    {
      v34 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
      if (v34)
      {
        v35 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
        if ([v35 isEqualToString:@"SBHIconGridSizeClassDefault"] || (objc_msgSend(v83[5], "gridSizeClass"), (v36 = objc_claimAutoreleasedReturnValue()) == 0))
        {
        }

        else
        {
          v37 = [v83[5] gridSizeClass];
          v38 = [v37 isEqualToString:@"SBHIconGridSizeClassDefault"];

          if (v38)
          {
            goto LABEL_47;
          }

          v34 = v83[5];
          v83[5] = 0;
        }
      }
    }

LABEL_47:
    if (v83[5])
    {
      if (v61)
      {
        v39 = [v59 iconListModel:self shouldBounceIcon:? afterInsertingIcons:?];
        v40 = v83[5];
        v83[5] = v39;

        if (!v83[5])
        {
          v53 = 0;
LABEL_82:
          v54 = MEMORY[0x1E695DF30];
          v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Delegate returned an invalid icon to bounce: %@", v53];
          v56 = [v54 exceptionWithName:*MEMORY[0x1E695D930] reason:v55 userInfo:0];
          v57 = v56;

          objc_exception_throw(v56);
        }

        if (![(SBIconListModel *)self directlyContainsIcon:?])
        {
          v53 = v83[5];
          goto LABEL_82;
        }
      }

      if (!v25)
      {
        v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [(SBIconListModel *)self willRemoveIcon:v83[5] options:a5];
      [v25 insertObject:v83[5] atIndex:0];
      [(SBIconIndexMutableList *)self->_icons removeNodeIdenticalTo:v83[5]];
      v29 = 0;
    }

    else
    {
      v29 = 1;
      if (a5 & 4) == 0 && (v100[3])
      {
        v29 = 0;
        *(v100 + 24) = 0;
      }
    }

LABEL_57:
    _Block_object_dispose(&v82, 8);

    v21 = v25;
    v20 = v24;
  }

  while (!v29);
  v41 = v21;
  if (v21)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v42 = v21;
    v43 = [v42 countByEnumeratingWithState:&v72 objects:v104 count:16];
    if (v43)
    {
      v44 = *v73;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v73 != v44)
          {
            objc_enumerationMutation(v42);
          }

          [(SBIconListModel *)self didRemoveIcon:*(*(&v72 + 1) + 8 * j) options:a5];
        }

        v43 = [v42 countByEnumeratingWithState:&v72 objects:v104 count:16];
      }

      while (v43);
    }

    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v47 = v42;
    v48 = [v47 countByEnumeratingWithState:&v68 objects:v103 count:16];
    if (v48)
    {
      v49 = *v69;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v69 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v68 + 1) + 8 * k);
          if (([v19 containsObject:v51] & 1) == 0)
          {
            [v46 addObject:v51];
          }
        }

        v48 = [v47 countByEnumeratingWithState:&v68 objects:v103 count:16];
      }

      while (v48);
    }

    v41 = v21;
    [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:v46 movedIcons:0];
  }

  v17 = v41;

  _Block_object_dispose(&v99, 8);
  v7 = v58;
LABEL_77:

  return v17;
}

uint64_t __99__SBIconListModel__checkAndRemoveBouncedIconsAfterChangeToIcons_ignoringTrailingIconCheck_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3)
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __99__SBIconListModel__checkAndRemoveBouncedIconsAfterChangeToIcons_ignoringTrailingIconCheck_options___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __99__SBIconListModel__checkAndRemoveBouncedIconsAfterChangeToIcons_ignoringTrailingIconCheck_options___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)changeGridSize:(SBHIconGridSize)a3 options:(unint64_t)a4
{
  v7 = [(SBIconListModel *)self gridSize];
  v8 = v7;
  v9 = a3;
  if (SBHIconGridSizeEqualToIconGridSize(*&v7, *&a3))
  {
    v10 = 0;
  }

  else
  {
    v11 = [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
    v12 = [(SBIconListModel *)self coordinatesOfAllIconsWithOptions:0];
    v13 = [v11 coordinatesOfAllIconsWithOptions:0];
    [(SBIconListModel *)self setGridSize:v9];
    v10 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:0 ignoringTrailingIconCheck:0 options:a4];
    [(SBIconListModel *)self finishChangingFromGridSize:v8 withOldIconCoordinates:v12 bouncedIcons:v10 options:a4];
    [v11 finishChangingFromGridSize:v8 withOldIconCoordinates:v13 bouncedIcons:v10 options:a4];
  }

  return v10;
}

- (id)coordinatesOfAllIconsWithOptions:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:a3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__SBIconListModel_coordinatesOfAllIconsWithOptions___block_invoke;
  v12[3] = &unk_1E808DBB8;
  v12[4] = self;
  v13 = v6;
  v7 = v5;
  v14 = v7;
  v8 = v6;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __52__SBIconListModel_coordinatesOfAllIconsWithOptions___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 coordinateForIcon:v5 gridCellInfo:v4];
  v7 = a1[6];
  v9 = [MEMORY[0x1E696B098] sbh_valueWithSBIconCoordinate:{v6, v8}];
  [v7 setObject:v9 forKey:v5];
}

- (void)finishChangingFromGridSize:(SBHIconGridSize)a3 withOldIconCoordinates:(id)a4 bouncedIcons:(id)a5 options:(unint64_t)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v31 = v10;
  if (v10)
  {
    v29 = v11;
    v12 = [(SBIconListModel *)self gridSize];
    v13 = [(SBIconListModel *)self hasFixedIconLocations];
    v14 = a6 | 0x200;
    if (!v13)
    {
      v14 = a6;
    }

    v32 = v14;
    [(SBIconListModel *)self removeAllFixedIconLocations];
    v30 = [(SBIconListModel *)self icons];
    v15 = HIWORD(*&v12);
    [(SBIconIndexMutableList *)self->_icons removeAllNodes];
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__14;
    v54 = __Block_byref_object_dispose__14;
    v55 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __90__SBIconListModel_finishChangingFromGridSize_withOldIconCoordinates_bouncedIcons_options___block_invoke;
    v42[3] = &unk_1E808DED8;
    v43 = v29;
    v49 = v12;
    v36 = v10;
    v44 = v36;
    v45 = self;
    v46 = &v50;
    v47 = a6;
    v48 = v32;
    [v30 enumerateObjectsUsingBlock:v42];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v51[5];
    v16 = [obj countByEnumeratingWithState:&v38 objects:v56 count:16];
    if (v16)
    {
      columns = v12.columns;
      v34 = v12;
      v35 = *v39;
      do
      {
        v37 = v16;
        for (i = 0; i != v37; ++i)
        {
          if (*v39 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v20 = [v19 gridSizeClass];
          v21 = [v36 objectForKey:v19];
          v22 = [v21 sbh_SBIconCoordinateValue];
          v24 = v23;

          if (v22 >= columns)
          {
            v25 = columns;
          }

          else
          {
            v25 = v22;
          }

          if (v24 >= v15)
          {
            v26 = v15;
          }

          else
          {
            v26 = v24;
          }

          v6 = v6 & 0xFFFFFFFF00000000 | v34;
          v27 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v20 withoutFixedIconsNearGridRange:SBIconCoordinateGetGridCellIndex(v25 gridCellInfoOptions:v26, v6), 65537, 0];
          [(SBIconIndexMutableList *)self->_icons addNode:v19];
          if (v27 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = [(SBIconListModel *)self moveContainedIcon:v19 toGridCellIndex:v27 gridCellInfoOptions:0 mutationOptions:v32];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v38 objects:v56 count:16];
      }

      while (v16);
    }

    _Block_object_dispose(&v50, 8);
    v11 = v29;
  }
}

void __90__SBIconListModel_finishChangingFromGridSize_withOldIconCoordinates_bouncedIcons_options___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [*(a1 + 40) objectForKey:v13];
    v4 = [v3 sbh_SBIconCoordinateValue];
    v6 = v5;

    if (v4 <= *(a1 + 80) && v6 <= *(a1 + 82))
    {
      GridCellIndex = SBIconCoordinateGetGridCellIndex(v4, v6, *(a1 + 80));
      [*(*(a1 + 48) + 8) addNode:v13];
      v12 = [*(a1 + 48) moveContainedIcon:v13 toGridCellIndex:GridCellIndex gridCellInfoOptions:0 mutationOptions:*(a1 + 72) | *(a1 + 64)];
    }

    else
    {
      v7 = *(*(*(a1 + 56) + 8) + 40);
      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = *(*(a1 + 56) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v7 = *(*(*(a1 + 56) + 8) + 40);
      }

      [v7 addObject:v13];
    }
  }
}

- (unint64_t)firstFreeSlotIndex
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(SBIconListModel *)self hasNonDefaultSizeClassIcons]|| [(SBIconListModel *)self hasFixedIconLocations]|| [(SBIconListModel *)self hasPlaceholderIcons])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = self->_icons;
    v4 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v18;
LABEL_6:
      v9 = 0;
      v16 = v7 + v5;
      while (1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }

        ++v7;
        v13 = [v10 gridSizeClass];
        v6 += [(SBIconListModel *)self gridSizeAreaForGridSizeClass:v13];

        if (v5 == ++v9)
        {
          v5 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v7 = v16;
          if (v5)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (v6 >= [(SBIconListModel *)self maxNumberOfIcons])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v15 = [(SBIconListModel *)self numberOfIcons];
    if (v15 >= [(SBIconListModel *)self maxNumberOfIcons])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v15;
    }
  }
}

- (unint64_t)firstFreeGridCellIndexWithOptions:(unint64_t)a3
{
  v3 = [(SBIconListModel *)self gridCellInfoWithOptions:a3];
  v4 = [v3 firstEmptyGridCellIndex];

  return v4;
}

- (unint64_t)firstFreeGridCellIndexOfRangeOfSizeClass:(id)a3 ignoringValidGridLayoutCheck:(BOOL)a4 gridCellInfoOptions:(unint64_t)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (v8 && ![v8 isEqualToString:@"SBHIconGridSizeClassDefault"] || -[SBIconListModel hasNonDefaultSizeClassIcons](self, "hasNonDefaultSizeClassIcons") || -[SBIconListModel hasFixedIconLocationsWithGridCellInfoOptions:](self, "hasFixedIconLocationsWithGridCellInfoOptions:", a5))
  {
    v10 = [(SBIconListModel *)self firstFreeGridCellIndexOfRangeOfSize:[(SBIconListModel *)self gridSizeForGridSizeClass:v9 gridCellInfoOptions:a5] gridCellInfoOptions:a5];
    v11 = v10;
    if (v9 && v10 != 0x7FFFFFFFFFFFFFFFLL && ([v9 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0 && !a4)
    {
      v12 = objc_alloc_init(SBIcon);
      [(SBIcon *)v12 setGridSizeClass:v9];
      v16[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v14 = [(SBIconListModel *)self iconGridCellInfoBySimulatingInsertionOfIcons:v13 ignoringPlaceholders:0 gridCellInfoOptions:a5 iconOrder:0];

      if (![(SBIconListModel *)self isGridLayoutValid:v14])
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else if ([(SBIconListModel *)self isFull])
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = [(SBIconListModel *)self numberOfIcons];
  }

  return v11;
}

- (unint64_t)firstFreeGridCellIndexOfRangeOfSize:(SBHIconGridSize)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v7 = [(SBIconListModel *)self firstFreeGridCellIndexOfRangeOfSize:*&a3 gridCellInfo:v6];

  return v7;
}

- (void)updateHasPlaceholderIcons
{
  v3 = [(SBIconListModel *)self directlyContainsIconPassingTest:&__block_literal_global_117];

  [(SBIconListModel *)self setHasPlaceholderIcons:v3];
}

uint64_t __44__SBIconListModel_updateHasPlaceholderIcons__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setAllowsRotatedLayout:(BOOL)a3
{
  v3 = a3;
  if ([objc_opt_class() supportsRotatedLayout] && self->_allowsRotatedLayout != v3)
  {
    if (!v3)
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
    }

    self->_allowsRotatedLayout = v3;
  }
}

- (void)setAllowsIndependentRotatedLayout:(BOOL)a3
{
  if (self->_allowsIndependentRotatedLayout != a3)
  {
    self->_allowsIndependentRotatedLayout = a3;
    if (!a3)
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
    }
  }
}

- (void)_invalidateLayoutWithGridCellInfoOptions:(unint64_t)a3 mutationOptions:(unint64_t)a4
{
  v4 = a4;
  v7 = [(SBIconListModel *)self allowsRotatedLayout];
  if ((v4 & 0x40000000) == 0 && v7)
  {
    rotatedIcons = self->_rotatedIcons;
    v9 = [(SBIconListModel *)self wantsRotatedGridForOptions:a3];
    v10 = self->_rotatedIcons;
    if (v9)
    {
      if (!v10)
      {
        goto LABEL_8;
      }

      v10 = [(SBIconListModel *)self _rotatedIconsFromList:self->_rotatedIcons gridCellInfoOptions:2];
      [(SBIconIndexMutableList *)self->_icons setNodes:v10];
      [(SBIconListModel *)self updateHasNonDefaultSizeClassIcons];
      [(SBIconListModel *)self updateHasPlaceholderIcons];
    }

    else
    {
      self->_rotatedIcons = 0;
    }

LABEL_8:
    if (rotatedIcons)
    {
      ++self->_layoutInvalidations;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __76__SBIconListModel__invalidateLayoutWithGridCellInfoOptions_mutationOptions___block_invoke;
      v11[3] = &unk_1E808DF00;
      v11[4] = self;
      v11[5] = a3;
      [(SBIconListModel *)self _notifyListObservers:v11];
    }
  }
}

void __76__SBIconListModel__invalidateLayoutWithGridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconList:*(a1 + 32) didInvalidateLayoutWithGridCellInfoOptions:*(a1 + 40)];
  }
}

- (void)_ensureRotatedIcons
{
  if ([(SBIconListModel *)self allowsRotatedLayout]&& !self->_rotatedIcons)
  {
    v3 = [(SBIconListModel *)self _rotatedIconsFromList:self gridCellInfoOptions:0];
    [(SBIconListModel *)self _makeRotatedIconsListModelWithIcons:v3 options:0];
  }
}

- (id)_rotatedIconsFromList:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  v8 = v7;
  if (v7 && ![v7 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    v10 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a4];
    v11 = [(SBIconListModel *)self gridSizeWithOptions:a4];
    v24 = SBHIconGridSizeRotate(*&v11);
    v12 = [(SBIconListModel *)self rotatedGridCellInfoOptions:a4];
    v13 = [SBRotatedIconListModel alloc];
    WeakRetained = objc_loadWeakRetained(&self->_folder);
    v15 = [(SBIconListModel *)v13 initWithFolder:WeakRetained gridSize:*&v11 gridSizeClassSizes:v10];

    [(SBIconListModel *)self _configureRotatedIconsListModel:v15];
    v16 = [(SBIconListModel *)v15 setIconsFromIconListModel:v6];
    v35 = 0u;
    v36 = 0u;
    if (v15)
    {
      [(SBIconListModel *)v15 _rotationReorderingInfoWithClusterSizeClass:v8 gridCellInfoOptions:v12];
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __61__SBIconListModel__rotatedIconsFromList_gridCellInfoOptions___block_invoke;
    v25[3] = &unk_1E808DF78;
    v17 = v15;
    v26 = v17;
    v27 = v8;
    v28 = self;
    v29 = a4;
    v30 = v35;
    v31 = v36;
    v32 = v12;
    v33 = v11;
    v34 = v24;
    [(SBIconListModel *)v17 performChangesByPreservingOrderOfDefaultSizedIcons:v25];
    v18 = [v6 icons];
    v9 = [(SBIconListModel *)v17 icons];
    if (![(SBIconListModel *)self _validateIconsInArray:v18 matchArray:v9])
    {
      v19 = SBLogCommon();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

      if (v20)
      {
        NSLog(&cfstr_RotatedIconsDo.isa);
      }

      v21 = SBLogIcon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(SBIconListModel *)v18 _rotatedIconsFromList:v9 gridCellInfoOptions:v21];
      }

      v22 = v18;
      v9 = v22;
    }
  }

  else
  {
    v9 = [v6 icons];
  }

  return v9;
}

void __61__SBIconListModel__rotatedIconsFromList_gridCellInfoOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__SBIconListModel__rotatedIconsFromList_gridCellInfoOptions___block_invoke_2;
  v27[3] = &unk_1E808DF28;
  v4 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v28 = v4;
  v29 = v5;
  v31 = *(a1 + 104);
  v30 = v6;
  v7 = [v4 _clusterIconsForSizeClass:v3 behavior:2 gridCellInfoProvider:v27];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 96);
  v11 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v11;
  [v8 _reorderIconsWithClusterSizeClass:v9 forRotationWithReorderingInfo:&v25 gridCellInfoOptions:v10];
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__SBIconListModel__rotatedIconsFromList_gridCellInfoOptions___block_invoke_3;
  v21[3] = &unk_1E808DF50;
  v15 = v12;
  v16 = *(a1 + 48);
  v22 = v15;
  v23 = v16;
  v24 = *(a1 + 108);
  [v15 _unclusterIcons:v7 ofSizeClass:v13 baseGridCellInfoOptions:v14 gridCellInfoProvider:v21];
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 96);
  v20 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v20;
  [v17 _reorderIconsAfterUnclusteringWithClusterSizeClass:v18 forRotationWithReorderingInfo:&v25 gridCellInfoOptions:v19];
}

id __61__SBIconListModel__rotatedIconsFromList_gridCellInfoOptions___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) icons];
  v3 = [*(a1 + 40) gridCellInfoForIcons:v2 gridSize:*(a1 + 56) referenceIconOrder:v2 fixedIconLocations:0 options:*(a1 + 48)];

  return v3;
}

id __61__SBIconListModel__rotatedIconsFromList_gridCellInfoOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) icons];
  v5 = [*(a1 + 40) gridCellInfoForIcons:v4 gridSize:*(a1 + 48) referenceIconOrder:v4 fixedIconLocations:0 options:a2];

  return v5;
}

- (void)_makeRotatedIconsListModelWithIcons:(id)a3 options:(unint64_t)a4
{
  v13 = a3;
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    v6 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:2];
    v7 = SBHIconGridSizeRotate(*&self->_gridSize);
    v8 = [SBRotatedIconListModel alloc];
    WeakRetained = objc_loadWeakRetained(&self->_folder);
    v10 = [(SBIconListModel *)v8 initWithFolder:WeakRetained gridSize:v7 gridSizeClassSizes:v6];
    rotatedIcons = self->_rotatedIcons;
    self->_rotatedIcons = v10;

    [(SBIconListModel *)self _configureRotatedIconsListModel:self->_rotatedIcons];
    [(SBRotatedIconListModel *)self->_rotatedIcons setUnrotatedIconListModel:self];
    if ([v13 count])
    {
      v12 = [(SBIconListModel *)self->_rotatedIcons setIcons:v13 gridCellInfoOptions:0 mutationOptions:a4 | 0x800000];
    }

    [(SBIconListModel *)self->_rotatedIcons addListObserver:self];
  }
}

- (void)_configureRotatedIconsListModel:(id)a3
{
  v4 = a3;
  v9 = [(SBIconListModel *)self allowedGridSizeClasses];
  [v4 setAllowedGridSizeClasses:v9];
  v5 = [(SBIconListModel *)self gridSizeClassDomain];
  [v4 setGridSizeClassDomain:v5];
  v6 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  [v4 setRotatedLayoutClusterGridSizeClass:v6];
  [v4 setFixedIconLocationBehavior:{-[SBIconListModel fixedIconLocationBehavior](self, "fixedIconLocationBehavior")}];
  [v4 setIconDisplacementBehavior:{-[SBIconListModel iconDisplacementBehavior](self, "iconDisplacementBehavior")}];
  [v4 setIconLayoutBehavior:{-[SBIconListModel iconLayoutBehavior](self, "iconLayoutBehavior")}];
  v7 = [(SBIconListModel *)self layoutExcludedIcons];
  [v4 setLayoutExcludedIcons:v7];
  v8 = [(SBIconListModel *)self rotatedIconGridSizeClassSizes];
  [v4 setRotatedIconGridSizeClassSizes:v8];
  SBTreeNodeSetParent(v4, self);
}

- (id)_rotatedIconListModel
{
  p_super = self;
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    [(SBIconListModel *)p_super _ensureRotatedIcons];
    p_super = &p_super->_rotatedIcons->super;
  }

  return p_super;
}

- (id)_rotatedIconListModelIfAllowed
{
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    [(SBIconListModel *)self _ensureRotatedIcons];
    v3 = self->_rotatedIcons;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_rotatedIconListModelIfApplicable
{
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    v3 = self->_rotatedIcons;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_rotatedIcons
{
  v2 = [(SBIconListModel *)self _rotatedIconListModel];
  v3 = [v2 icons];

  return v3;
}

- (id)_rotatedIconsIfApplicable
{
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    v3 = [(SBIconListModel *)self->_rotatedIcons icons];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_rotatedIconOrderIfApplicable
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(SBIconListModel *)self allowsRotatedLayout]&& (rotatedIcons = self->_rotatedIcons) != 0)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[SBIconListModel numberOfIcons](rotatedIcons, "numberOfIcons")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_rotatedIcons;
    v6 = [(SBIconListModel *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(SBIconListModel *)self indexForIcon:*(*(&v13 + 1) + 8 * i), v13];
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          [v4 addObject:v11];
        }

        v7 = [(SBIconListModel *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setRotatedIcons:(id)a3 clearRotatedFixedIconLocations:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    rotatedIcons = self->_rotatedIcons;
    if (rotatedIcons)
    {
      v7 = [(SBIconListModel *)rotatedIcons setIcons:v8 gridCellInfoOptions:0 mutationOptions:0x100000];
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    [(SBIconListModel *)self _makeRotatedIconsListModelWithIcons:v8 options:0];
    if (v4)
    {
LABEL_4:
      [(SBIconListModel *)self->_rotatedIcons removeAllFixedIconLocations];
      [(SBIconListModel *)self->_rotatedIcons saveOnlyRequiredIconLocationsAsFixedIfRequired];
    }
  }

LABEL_5:
}

- (void)_updateRotatedIconsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  if ((a3 & 0x80000000) == 0)
  {
    [(SBIconListModel *)self _updateRotatedIconsUsingBlock:a4];
  }
}

- (void)_updateRotatedIconsUsingBlock:(id)a3
{
  v6 = a3;
  if ([(SBIconListModel *)self allowsRotatedLayout]&& self->_rotatedIcons)
  {
    v6[2]();
    v4 = [(SBIconListModel *)self icons];
    v5 = [(SBIconListModel *)self->_rotatedIcons icons];
    if (![(SBIconListModel *)self _validateIconsInArray:v4 matchArray:v5])
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
    }
  }
}

- (void)_updateOtherListWithGridCellInfoOptions:(unint64_t)a3 mutationOptions:(unint64_t)a4 createIfNecessary:(BOOL)a5 usingBlock:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = v10;
  if ((a4 & 0x80000000) == 0)
  {
    v16 = v10;
    v10 = [(SBIconListModel *)self allowsRotatedLayout];
    v11 = v16;
    if (v10)
    {
      v12 = [(SBIconListModel *)self _otherListForGridCellInfoOptions:a3 createIfNecessary:v6];
      if (v12)
      {
        v13 = (*(v16 + 2))(v16, v12, [(SBIconListModel *)self _otherGridCellInfoOptionsForGridCellInfoOptions:a3]);
        if (v13 == 1)
        {
          [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:a3 mutationOptions:a4];
        }

        else if (!v13)
        {
          v14 = [(SBIconListModel *)self icons];
          v15 = [v12 icons];
          if (![(SBIconListModel *)self _validateIconsInArray:v14 matchArray:v15])
          {
            [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:a3 mutationOptions:a4];
          }
        }
      }

      v11 = v16;
    }
  }

  MEMORY[0x1EEE66BB8](v10, v11);
}

- (BOOL)_validateIconsInArray:(id)a3 matchArray:(id)a4
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithArray:v7];

  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
  LOBYTE(v6) = [v8 isEqualToSet:v9];

  return v6;
}

- (id)_targetListForGridCellInfoOptions:(unint64_t)a3
{
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:a3])
  {
    v4 = [(SBIconListModel *)self _rotatedIconListModel];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (id)_targetListForGridCellInfo:(id)a3
{
  v4 = [(SBIconListModel *)self bestGridCellInfoOptionsForGridCellInfo:a3];

  return [(SBIconListModel *)self _targetListForGridCellInfoOptions:v4];
}

- (id)_otherListForGridCellInfoOptions:(unint64_t)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:a3])
  {
    v6 = self;
  }

  else
  {
    if (v4)
    {
      [(SBIconListModel *)self _rotatedIconListModel];
    }

    else
    {
      [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
    }
    v6 = ;
  }

  return v6;
}

- (unint64_t)_otherGridCellInfoOptionsForGridCellInfoOptions:(unint64_t)a3
{
  v4 = [(SBIconListModel *)self wantsRotatedGridForOptions:?];
  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  return v5 | a3 & 0xFFFFFFFFFFFFFFFDLL;
}

- (BOOL)representsSelf:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
  v6 = v5 == v4;

  return v6;
}

- (BOOL)canUseFastGridLayoutValidity
{
  if ([(SBIconListModel *)self hasFixedIconLocations])
  {
    return 0;
  }

  if (![(SBIconListModel *)self directlyContainsNonDefaultSizeClassIcon])
  {
    return 1;
  }

  v4 = [(SBIconListModel *)self iconGridSizeClassSizes];
  v5 = [v4 gridSizesMatchDefault];

  return v5;
}

- (BOOL)isGridLayoutValidWithOptions:(unint64_t)a3
{
  if ([(SBIconListModel *)self canUseFastGridLayoutValidity])
  {
    v5 = [(SBIconListModel *)self numberOfIcons];
    return v5 <= [(SBIconListModel *)self maxNumberOfIcons];
  }

  else
  {
    v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a3];
    v8 = [(SBIconListModel *)self isGridLayoutValid:v7];

    return v8;
  }
}

- (BOOL)isGridLayoutValid:(id)a3
{
  v4 = a3;
  if ([v4 isLayoutOutOfBounds])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SBIconListModel *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 iconListModel:self isGridLayoutValid:v4];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)isGridLayoutValidWithOptions:(unint64_t)a3 outOfBoundsIcons:(id *)a4
{
  v6 = [(SBIconListModel *)self numberOfIcons];
  if ([(SBIconListModel *)self canUseFastGridLayoutValidity])
  {
    v7 = [(SBIconListModel *)self maxNumberOfIcons];
    if (v6 <= v7)
    {
      v8 = 0;
      v9 = 1;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = [(SBIconListModel *)self iconsInRange:v7, v6 - v7];
      v9 = 0;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
  v9 = [(SBIconListModel *)self isGridLayoutValid:v10];
  v8 = 0;
  if (!v9)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__SBIconListModel_isGridLayoutValidWithOptions_outOfBoundsIcons___block_invoke;
    v16[3] = &unk_1E808CC88;
    v16[4] = self;
    v12 = v11;
    v17 = v12;
    [v10 enumerateOutOfBoundsIconIndexesInRange:0 options:v6 usingBlock:{0, v16}];
    v13 = v17;
    v8 = v12;
  }

  if (a4)
  {
LABEL_8:
    v14 = v8;
    *a4 = v8;
  }

LABEL_9:

  return v9;
}

void __65__SBIconListModel_isGridLayoutValidWithOptions_outOfBoundsIcons___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) iconAtIndex:a2];
  [*(a1 + 40) addObject:v3];
}

- (void)setFixedIconLocationBehavior:(int64_t)a3
{
  if (self->_fixedIconLocationBehavior != a3)
  {
    self->_fixedIconLocationBehavior = a3;
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
    if ((a3 - 2) >= 2)
    {
      if (!a3 && [(SBIconListModel *)self hasFixedIconLocations])
      {
        [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:0];
        fixedIconLocations = self->_fixedIconLocations;
        self->_fixedIconLocations = 0;
        v6 = fixedIconLocations;

        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __48__SBIconListModel_setFixedIconLocationBehavior___block_invoke;
        v7[3] = &unk_1E808AA60;
        v7[4] = self;
        [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v7];
        [(SBIconListModel *)self markIconStateDirty];
      }
    }

    else
    {

      [(SBIconListModel *)self saveOnlyRequiredIconLocationsAsFixed];
    }
  }
}

uint64_t __48__SBIconListModel_setFixedIconLocationBehavior___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) directlyContainedIconWithIdentifier:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) _notifyListObserversDidMoveIcon:v3 options:0];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (int64_t)effectiveIconDisplacementBehaviorWithGridCellInfo:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SBIconListModel *)self iconDisplacementBehavior];
  if (v9 == 3)
  {
    if (!v8)
    {
      v8 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
    }

    if ([(SBIconListModel *)self shouldUseTwoDimensionalMovementWithGridCellInfo:v8 mutationOptions:a5])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  if (((v9 == 1) & (a5 >> 25)) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (((a5 >> 34) & (v10 == 2)) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)shouldUseTwoDimensionalMovementWithGridCellInfo:(id)a3 mutationOptions:(unint64_t)a4
{
  v6 = a3;
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfo:v6])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__SBIconListModel_shouldUseTwoDimensionalMovementWithGridCellInfo_mutationOptions___block_invoke;
    v9[3] = &unk_1E808DFA0;
    v10 = v6;
    v11 = self;
    v12 = &v14;
    v13 = a4;
    [(SBIconListModel *)self enumerateIconsUsingBlock:v9];
    v7 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __83__SBIconListModel_shouldUseTwoDimensionalMovementWithGridCellInfo_mutationOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 gridSizeClass];
  LODWORD(a3) = [*(a1 + 40) isInsertionRequiredToBeFixedForIcon:v7 ofGridSizeClass:v8 atGridCellIndex:objc_msgSend(*(a1 + 32) gridCellInfo:"gridCellIndexForIconIndex:" mutationOptions:{a3), *(a1 + 32), *(a1 + 56)}];

  if (a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)fixedIconLocationsWithGridCellInfoOptions:(unint64_t)a3
{
  v3 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a3];
  v4 = [v3 fixedIconLocations];

  return v4;
}

- (void)setFixedIconLocations:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self filteredIncomingFixedIconLocationsIfNecessary:v6];
  if ((BSEqualDictionaries() & 1) == 0)
  {
    v8 = self->_fixedIconLocations;
    v9 = [v7 mutableCopy];
    fixedIconLocations = self->_fixedIconLocations;
    self->_fixedIconLocations = v9;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__SBIconListModel_setFixedIconLocations_options___block_invoke;
    v12[3] = &unk_1E808DFC8;
    v13 = v8;
    v14 = self;
    v15 = a4;
    v11 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:0];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:a4];
  }
}

void __49__SBIconListModel_setFixedIconLocations_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v9];
  LOBYTE(v5) = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v8 = [*(a1 + 40) directlyContainedIconWithIdentifier:v9];
    if (v8)
    {
      [*(a1 + 40) _notifyListObserversDidMoveIcon:v8 options:*(a1 + 48)];
    }
  }
}

- (void)addFixedIconLocations:(id)a3 options:(unint64_t)a4
{
  v6 = [(SBIconListModel *)self filteredIncomingFixedIconLocationsIfNecessary:a3];
  fixedIconLocations = self->_fixedIconLocations;
  if (fixedIconLocations)
  {
    v9 = v6;
    v8 = [(NSMutableDictionary *)fixedIconLocations mutableCopy];
    [v8 addEntriesFromDictionary:v9];

    v6 = v8;
  }

  v10 = v6;
  [(SBIconListModel *)self setFixedIconLocations:v6 options:a4];
}

- (id)filteredIncomingFixedIconLocationsIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListModel *)self fixedIconLocationBehavior];
  if ((v5 - 1) >= 2)
  {
    if (v5 == 3)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__14;
      v17 = __Block_byref_object_dispose__14;
      v18 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __65__SBIconListModel_filteredIncomingFixedIconLocationsIfNecessary___block_invoke;
      v10[3] = &unk_1E808DFF0;
      v10[4] = self;
      v12 = &v13;
      v7 = v4;
      v11 = v7;
      [v7 enumerateKeysAndObjectsUsingBlock:v10];
      v8 = v14[5];
      if (!v8)
      {
        v8 = v7;
      }

      v6 = v8;

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

void __65__SBIconListModel_filteredIncomingFixedIconLocationsIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) directlyContainedIconWithIdentifier:?];
  v4 = [v3 gridSizeClass];
  v5 = v4;
  if (!v4 || [v4 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      v7 = [*(a1 + 40) mutableCopy];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v6 removeObjectForKey:v10];
  }
}

- (void)enumerateFixedIconsUsingBlock:(id)a3
{
  v4 = a3;
  fixedIconLocations = self->_fixedIconLocations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SBIconListModel_enumerateFixedIconsUsingBlock___block_invoke;
  v7[3] = &unk_1E808E018;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)fixedIconLocations enumerateKeysAndObjectsUsingBlock:v7];
}

void __49__SBIconListModel_enumerateFixedIconsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) iconWithIdentifier:a2];
  if (v5)
  {
    [v6 unsignedIntegerValue];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)rotatedFixedIconLocations
{
  v2 = [(SBIconListModel *)self _rotatedIconListModelIfAllowed];
  v3 = [v2 fixedIconLocations];

  return v3;
}

- (void)setRotatedFixedIconLocations:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  if ([(SBIconListModel *)self allowsFixedIconLocations])
  {
    v6 = [(SBIconListModel *)self _rotatedIconListModelIfAllowed];
    [v6 setFixedIconLocations:v7 options:a4];
  }
}

- (void)removeFixedIconLocationForIcon:(id)a3
{
  v6 = a3;
  v4 = [v6 uniqueIdentifier];
  v5 = [(NSMutableDictionary *)self->_fixedIconLocations objectForKey:v4];

  if (v5)
  {
    [(NSMutableDictionary *)self->_fixedIconLocations removeObjectForKey:v4];
    if ([(SBIconListModel *)self directlyContainsIcon:v6])
    {
      [(SBIconListModel *)self markIconStateDirty];
      [(SBIconListModel *)self _notifyListObserversDidMoveIcon:v6 options:0];
    }
  }
}

- (void)removeFixedIconLocationsForIcons:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBIconListModel *)self removeFixedIconLocationForIcon:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeFixedIconLocationsForIconsInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  v5 = [(SBIconListModel *)self iconsForGridRange:a3.cellIndex gridCellInfo:*&a3.size.columns, a4];
  [(SBIconListModel *)self removeFixedIconLocationsForIcons:v5];
}

- (void)removeFixedIconLocationsForIconsInGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4
{
  v4 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  [(SBIconListModel *)self removeFixedIconLocationsForIconsInGridRange:cellIndex gridCellInfo:v4, v7];
}

- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegion:(id)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__SBIconListModel_removeFixedIconLocationsIfPossibleForIconsInContiguousRegion_gridCellInfo___block_invoke;
  v8[3] = &unk_1E808CC88;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [a3 enumerateGridCellIndexesUsingBlock:v8];
}

void __93__SBIconListModel_removeFixedIconLocationsIfPossibleForIconsInContiguousRegion_gridCellInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 40) iconAtIndex:v3];
    if (([*(a1 + 40) isInsertionFixedForIcon:? atGridCellIndex:? gridCellInfo:? mutationOptions:?] & 1) == 0)
    {
      [*(a1 + 40) removeFixedIconLocationForIcon:v4];
    }
  }
}

- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:(unint64_t)a3 sortByLayoutOrder:(BOOL)a4 gridCellInfoOptions:(unint64_t)a5
{
  v5 = a4;
  v8 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  [(SBIconListModel *)self removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:a3 sortByLayoutOrder:v5 gridCellInfo:v8];
}

- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:(unint64_t)a3 sortByLayoutOrder:(BOOL)a4 gridCellInfo:(id)a5
{
  v5 = a4;
  v9 = a5;
  v8 = [(SBIconListModel *)self contiguousRegionForGridCellIndex:a3 gridCellInfo:v9];
  [(SBIconListModel *)self removeFixedIconLocationsIfPossibleForIconsInContiguousRegion:v8 gridCellInfo:v9];
  if (v5)
  {
    [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfo:v9];
  }
}

- (void)removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:(unint64_t)a3
{
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:?])
  {
    v6 = [(SBIconListModel *)self gridCellInfoWithOptions:a3];
    v5 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a3];
    [v5 removeFixedIconLocationsIfPossibleWithGridCellInfo:v6];
  }
}

- (void)removeFixedIconLocationsIfPossibleWithGridCellInfo:(id)a3
{
  v4 = a3;
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfo:v4])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__SBIconListModel_removeFixedIconLocationsIfPossibleWithGridCellInfo___block_invoke;
    v5[3] = &unk_1E808CBC0;
    v5[4] = self;
    v6 = v4;
    [(SBIconListModel *)self enumerateIconsUsingBlock:v5];
  }
}

void __70__SBIconListModel_removeFixedIconLocationsIfPossibleWithGridCellInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) isIconFixed:?] && (objc_msgSend(*(a1 + 32), "isInsertionFixedForIcon:atGridCellIndex:gridCellInfo:mutationOptions:", v5, objc_msgSend(*(a1 + 40), "gridCellIndexForIconIndex:", a3), *(a1 + 40), 512) & 1) == 0)
  {
    [*(a1 + 32) removeFixedIconLocationForIcon:v5];
  }
}

- (void)addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__SBIconListModel_addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo___block_invoke;
  v6[3] = &unk_1E808CBC0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v6];
}

void __76__SBIconListModel_addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) gridCellIndexForIconIndex:a3];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [*(a1 + 40) isInsertionFixedForIcon:v9 atGridCellIndex:v5 gridCellInfo:*(a1 + 32) mutationOptions:512];
    v8 = *(a1 + 40);
    if (v7)
    {
      [v8 setFixedLocation:v6 forIcon:v9];
    }

    else
    {
      [v8 removeFixedIconLocationForIcon:v9];
    }
  }
}

- (void)removeAllFixedIconLocations
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_fixedIconLocations allKeys];
  fixedIconLocations = self->_fixedIconLocations;
  self->_fixedIconLocations = 0;

  if (v3)
  {
    [(SBIconListModel *)self markIconStateDirty];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          v10 = [(SBIconListModel *)self directlyContainedIconWithIdentifier:*(*(&v11 + 1) + 8 * v9), v11];
          if (v10)
          {
            [(SBIconListModel *)self _notifyListObserversDidMoveIcon:v10 options:0];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)swapFixedIconLocationForReplacedIcon:(id)a3 withReplacementIcon:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ([(SBIconListModel *)self isIconFixed:v14])
  {
    v7 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
    v8 = [(SBIconListModel *)self gridCellIndexForIcon:v14 gridCellInfo:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      [(SBIconListModel *)self removeFixedIconLocationForIcon:v14];
      v10 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
      v11 = [v6 gridSizeClass];
      v12 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v6 atGridCellIndex:v9 gridCellInfo:v10];
      v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:v11];
      if ([(SBIconListModel *)self isValidGridRange:v12 gridCellInfo:v13, v10])
      {
        [(SBIconListModel *)self removeFixedIconLocationsForIconsInGridRange:v12 gridCellInfo:v13, v10];
        [(SBIconListModel *)self setFixedLocation:v12 forIcon:v6];
      }
    }
  }
}

- (void)setFixedLocation:(unint64_t)a3 forIcon:(id)a4 options:(unint64_t)a5
{
  v17 = a4;
  v8 = [(SBIconListModel *)self fixedIconLocationBehavior];
  if (v8)
  {
    if (v8 == 3)
    {
      v9 = [v17 gridSizeClass];
      v10 = v9;
      if (!v9 || ([v9 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) != 0)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    if (!self->_fixedIconLocations)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      fixedIconLocations = self->_fixedIconLocations;
      self->_fixedIconLocations = v11;
    }

    v10 = [v17 uniqueIdentifier];
    v13 = [(NSMutableDictionary *)self->_fixedIconLocations objectForKey:v10];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    if ((BSEqualObjects() & 1) == 0)
    {
      v15 = self->_fixedIconLocations;
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableDictionary *)self->_fixedIconLocations removeObjectForKey:v10];
      }

      else
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [(NSMutableDictionary *)v15 setObject:v16 forKey:v10];
      }

      [(SBIconListModel *)self markIconStateDirtyWithOptions:a5];
      [(SBIconListModel *)self _notifyListObserversDidMoveIcon:v17 options:a5];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (unint64_t)fixedLocationForIcon:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [(NSMutableDictionary *)self->_fixedIconLocations objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (unint64_t)fixedLocationForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a4];
  v8 = [v7 fixedLocationForIcon:v6];

  return v8;
}

- (BOOL)hasFixedIconLocationsWithGridCellInfoOptions:(unint64_t)a3
{
  v3 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a3];
  v4 = [v3 hasFixedIconLocations];

  return v4;
}

- (BOOL)hasFixedIconLocationsWithGridCellInfo:(id)a3
{
  v3 = [(SBIconListModel *)self _targetListForGridCellInfo:a3];
  v4 = [v3 hasFixedIconLocations];

  return v4;
}

- (BOOL)areAllIconsFixed
{
  v3 = [(SBIconListModel *)self numberOfIcons];
  if ([(NSMutableDictionary *)self->_fixedIconLocations count]< v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__SBIconListModel_areAllIconsFixed__block_invoke;
  v15[3] = &unk_1E808A678;
  v6 = v5;
  v16 = v6;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v15];
  fixedIconLocations = self->_fixedIconLocations;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __35__SBIconListModel_areAllIconsFixed__block_invoke_2;
  v13 = &unk_1E808AA60;
  v14 = v6;
  v8 = v6;
  [(NSMutableDictionary *)fixedIconLocations enumerateKeysAndObjectsUsingBlock:&v10];
  v4 = [v8 count] == 0;

  return v4;
}

uint64_t __35__SBIconListModel_areAllIconsFixed__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (BOOL)isIconFixed:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a4];
  LOBYTE(self) = [v7 isIconFixed:v6];

  return self;
}

- (BOOL)isIcon:(id)a3 fixedAtGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a5];
  LOBYTE(a4) = [v9 isIcon:v8 fixedAtGridCellIndex:a4];

  return a4;
}

- (BOOL)hasFixedIconInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  v4 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  Area = SBHIconGridSizeGetArea(v4);
  v9 = Area;
  if (Area >= 0x40)
  {
    v10 = malloc_type_calloc(Area, 8uLL, 0x100004000313F17uLL);
    v19 = v7;
    [v7 getIconIndexes:v10 inGridRange:{cellIndex, v4}];
    v11 = v10;
  }

  else
  {
    v10 = v20;
    [v7 getIconIndexes:v20 inGridRange:{cellIndex, v4}];
    v11 = 0;
    if (!v9)
    {
      v14 = 0;
      goto LABEL_10;
    }

    v19 = v7;
  }

  v12 = 1;
  v13 = v9;
  v14 = 1;
  do
  {
    v15 = *v10++;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [(SBIconListModel *)self iconAtIndex:?];
      v17 = [(SBIconListModel *)self isIconFixed:v16];

      if (v17)
      {
        break;
      }
    }

    v14 = v12++ < v9;
    --v13;
  }

  while (v13);
  v7 = v19;
LABEL_10:
  free(v11);

  return v14;
}

- (BOOL)hasFixedIconInGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4
{
  v4 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  LOBYTE(v4) = [(SBIconListModel *)self hasFixedIconInGridRange:cellIndex gridCellInfo:v4, v7];

  return v4;
}

- (id)fixedIconsInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  v5 = [(SBIconListModel *)self iconsForGridRange:a3.cellIndex gridCellInfo:*&a3.size.columns, a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SBIconListModel_fixedIconsInGridRange_gridCellInfo___block_invoke;
  v8[3] = &unk_1E8089C20;
  v8[4] = self;
  v6 = [v5 bs_filter:v8];

  return v6;
}

- (BOOL)hasFixedIconsInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v7 = a4;
  v8 = [(SBIconListModel *)self gridSize];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SBIconListModel_hasFixedIconsInGridRange_gridCellInfo___block_invoke;
  v11[3] = &unk_1E808CDC0;
  v9 = v7;
  v12 = v9;
  v13 = self;
  v14 = &v15;
  SBHIconGridRangeEnumerateCellIndexes(cellIndex, *&size, v8, v11);
  LOBYTE(size.columns) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return size.columns;
}

void __57__SBIconListModel_hasFixedIconsInGridRange_gridCellInfo___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 40) iconAtIndex:v5];
    if ([*(a1 + 40) isIconFixed:?])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

- (BOOL)hasFixedIconsInContiguousRegion:(id)a3 gridCellInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__SBIconListModel_hasFixedIconsInContiguousRegion_gridCellInfo___block_invoke;
  v10[3] = &unk_1E808CDC0;
  v8 = v7;
  v11 = v8;
  v12 = self;
  v13 = &v14;
  [v6 enumerateGridCellIndexesUsingBlock:v10];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __64__SBIconListModel_hasFixedIconsInContiguousRegion_gridCellInfo___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 40) iconAtIndex:v5];
    if ([*(a1 + 40) isIconFixed:?])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

- (id)fixedIconsInContiguousRegion:(id)a3 gridCellInfo:(id)a4
{
  v5 = [(SBIconListModel *)self iconsInContiguousRegion:a3 gridCellInfo:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SBIconListModel_fixedIconsInContiguousRegion_gridCellInfo___block_invoke;
  v8[3] = &unk_1E8089C20;
  v8[4] = self;
  v6 = [v5 bs_filter:v8];

  return v6;
}

- (BOOL)hasAllFixedIconsInContiguousRegion:(id)a3 gridCellInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEmpty])
  {
    v8 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__SBIconListModel_hasAllFixedIconsInContiguousRegion_gridCellInfo___block_invoke;
    v10[3] = &unk_1E808CDC0;
    v11 = v7;
    v12 = self;
    v13 = &v14;
    [v6 enumerateGridCellIndexesUsingBlock:v10];
    v8 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  return v8 & 1;
}

void __67__SBIconListModel_hasAllFixedIconsInContiguousRegion_gridCellInfo___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 40) iconAtIndex:v5];
    if (([*(a1 + 40) isIconFixed:?] & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

- (BOOL)hasContiguousRegionOfFixedIconsAtGridCellIndex:(unint64_t)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = [v6 contiguousRegionForGridCellIndex:a3];
  v8 = v7;
  v9 = v7 && ([v7 isEmpty] & 1) == 0 && -[SBIconListModel hasAllFixedIconsInContiguousRegion:gridCellInfo:](self, "hasAllFixedIconsInContiguousRegion:gridCellInfo:", v8, v6);

  return v9;
}

- (BOOL)areIconsInContiguousRegionOfHeterogeneousFixedness:(id)a3 gridCellInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__SBIconListModel_areIconsInContiguousRegionOfHeterogeneousFixedness_gridCellInfo___block_invoke;
  v10[3] = &unk_1E808E040;
  v8 = v7;
  v11 = v8;
  v12 = self;
  v13 = v20;
  v14 = v22;
  v15 = &v16;
  [v6 enumerateGridCellIndexesUsingBlock:v10];
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);

  return self;
}

void __83__SBIconListModel_areIconsInContiguousRegionOfHeterogeneousFixedness_gridCellInfo___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v8 = [*(a1 + 40) iconAtIndex:v5];
  if ([*(a1 + 40) isIconFixed:?])
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v6 = *(a1 + 56);
      goto LABEL_8;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v6 = *(a1 + 48);
LABEL_8:
    v7 = *(v6 + 8);
    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
    }

    goto LABEL_10;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  *a3 = 1;
LABEL_10:
}

- (BOOL)isContiguousRegionEligibleForBackfill:(id)a3 gridCellInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8)
  {
    if ([(SBIconListModel *)self hasFixedIconsInContiguousRegion:v6 gridCellInfo:v7])
    {
      v9 = [v7 gridSize];
      v10 = [[SBIconListGridCellInfo alloc] initWithGridSize:v9];
      [(SBIconListGridCellInfo *)v10 setIconIndex:0 inContiguousRegion:v6];
      if ([v7 coordinateForGridCellIndex:{objc_msgSend(v6, "startGridCellIndex")}] == 1 && (v12 = v11, -[SBIconListGridCellInfo numberOfUsedGridCellsInRow:](v10, "numberOfUsedGridCellsInRow:", v11 - 1)) && (v13 = v8 > v9, v8 -= v9, v13))
      {
        while (v8)
        {
          v14 = [(SBIconListGridCellInfo *)v10 numberOfUsedGridCellsInRow:v12];
          v8 -= v14;
          ++v12;
          if (v14 < v9)
          {
            LOBYTE(v8) = v8 == 0;
            goto LABEL_12;
          }
        }

        LOBYTE(v8) = 1;
      }

      else
      {
        LOBYTE(v8) = 0;
      }

LABEL_12:
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (id)adjustContiguousRegionForBackfill:(id)a3 gridCellInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 gridSize];
  v8 = [v5 gridRange];
  if ((v9 & 0xFFFE0000) != 0)
  {
    v10 = v8;
    v11 = v9;
    v12 = [[SBIconListGridCellInfo alloc] initWithGridSize:v7];
    [(SBIconListGridCellInfo *)v12 setIconIndex:0 inContiguousRegion:v5];
    v39 = 0;
    v40 = &v39;
    v41 = 0x3010000000;
    v42 = &unk_1BEECC529;
    v43 = xmmword_1BEE85DF0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __66__SBIconListModel_adjustContiguousRegionForBackfill_gridCellInfo___block_invoke;
    v27[3] = &unk_1E808E068;
    v28 = v6;
    v13 = v12;
    v34 = v7;
    v32 = v10;
    v33 = v11;
    v29 = v13;
    v30 = &v39;
    v31 = &v35;
    SBHIconGridRangeEnumerateRows(v10, v11, v7, 0, v27);
    if (v36[3])
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x2020000000;
      v26 = 0;
      v15 = v40;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __66__SBIconListModel_adjustContiguousRegionForBackfill_gridCellInfo___block_invoke_2;
      v20[3] = &unk_1E808E090;
      v16 = v5;
      v21 = v16;
      v23 = &v39;
      v24 = v25;
      v17 = v14;
      v22 = v17;
      SBHIconGridRangeEnumerateCellIndexes(v15[4], v15[5], v7, v20);
      v18 = [v16 contiguousRegionByRemovingGridCellIndexes:v17];

      _Block_object_dispose(v25, 8);
    }

    else
    {
      v18 = v5;
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v18 = v5;
  }

  return v18;
}

uint64_t __66__SBIconListModel_adjustContiguousRegionForBackfill_gridCellInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  [*(a1 + 32) coordinateForGridCellIndex:a2];
  result = [*(a1 + 40) numberOfUsedGridCellsInRow:v10 - 1];
  if (result != *(a1 + 80))
  {
    if (*(a1 + 74) - 1 == a4)
    {
      v12 = *(*(a1 + 48) + 8);
      *(v12 + 32) = a2;
      *(v12 + 40) = a3;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    *a5 = 1;
  }

  return result;
}

uint64_t __66__SBIconListModel_adjustContiguousRegionForBackfill_gridCellInfo___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsGridCellIndex:a2];
  if (result)
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v7 = *(a1 + 40);

      return [v7 addIndex:a2];
    }
  }

  else if (*(*(*(a1 + 48) + 8) + 32) == a2)
  {
    *a3 = 1;
  }

  else
  {
    v8 = *(*(a1 + 56) + 8);
    if ((*(v8 + 24) & 1) == 0)
    {
      *(v8 + 24) = 1;
    }
  }

  return result;
}

- (void)saveCurrentIconLocationsAsFixed
{
  if ([(SBIconListModel *)self allowsFixedIconLocations])
  {
    v3 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __50__SBIconListModel_saveCurrentIconLocationsAsFixed__block_invoke;
    v9 = &unk_1E808CBC0;
    v10 = self;
    v11 = v3;
    v4 = v3;
    [(SBIconListModel *)self enumerateIconsUsingBlock:&v6];
    v5 = [(SBIconListModel *)self _rotatedIconListModelIfAllowed:v6];
    [v5 saveCurrentIconLocationsAsFixed];
  }
}

void __50__SBIconListModel_saveCurrentIconLocationsAsFixed__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) isIconFixed:?] & 1) == 0)
  {
    [*(a1 + 32) setFixedLocation:objc_msgSend(*(a1 + 40) forIcon:{"gridCellIndexForIconIndex:", a3), v5}];
  }
}

- (void)saveOnlyRequiredIconLocationsAsFixed
{
  v3 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
  fixedIconLocations = self->_fixedIconLocations;
  if (fixedIconLocations)
  {
    v5 = [(NSMutableDictionary *)fixedIconLocations mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__SBIconListModel_saveOnlyRequiredIconLocationsAsFixed__block_invoke;
  v10[3] = &unk_1E808DBB8;
  v10[4] = self;
  v11 = v3;
  v12 = v5;
  v6 = v5;
  v7 = v3;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v10];
  if ([v6 count])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [(SBIconListModel *)self setFixedIconLocations:v8];
  v9 = [(SBIconListModel *)self _rotatedIconListModelIfAllowed];
  [v9 saveOnlyRequiredIconLocationsAsFixed];
}

void __55__SBIconListModel_saveOnlyRequiredIconLocationsAsFixed__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if ([*(a1 + 32) isInsertionFixedForIcon:? options:?] && (objc_msgSend(*(a1 + 32), "isIconFixed:", v9) & 1) == 0)
  {
    v5 = [v9 uniqueIdentifier];
    v6 = [*(a1 + 40) gridCellIndexForIconIndex:a3];
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [v7 setObject:v8 forKey:v5];
  }
}

- (void)saveOnlyRequiredIconLocationsAsFixedIfRequired
{
  if ([(SBIconListModel *)self requiresSomeFixedIconLocations])
  {

    [(SBIconListModel *)self saveOnlyRequiredIconLocationsAsFixed];
  }
}

- (void)saveCurrentLocationAsFixedForIcon:(id)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBIconListModel *)self _targetListForGridCellInfo:v6];
  v8 = [v6 gridCellIndexForIconIndex:{objc_msgSend(v9, "indexForIcon:", v7)}];

  [v9 setFixedLocation:v8 forIcon:v7];
}

- (void)saveCurrentLocationAsFixedForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  [(SBIconListModel *)self saveCurrentLocationAsFixedForIcon:v6 gridCellInfo:v7];
}

- (BOOL)isInsertionFixedForIcon:(id)a3 options:(unint64_t)a4
{
  v6 = [a3 gridSizeClass];
  LOBYTE(a4) = [(SBIconListModel *)self isInsertionFixedForIconGridSizeClass:v6 options:a4];

  return a4;
}

- (BOOL)isInsertionFixedForIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v9 = a3;
  v10 = [v9 gridSizeClass];
  LOBYTE(a6) = [(SBIconListModel *)self isInsertionFixedForIcon:v9 ofGridSizeClass:v10 atGridCellIndex:a4 gridCellInfoOptions:0 mutationOptions:a6];

  return a6;
}

- (BOOL)isMoveFixedForIcon:(id)a3 toGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v12 = a3;
  v13 = ![(SBIconListModel *)self usesTwoDimensionalMovementWithGridCellInfo:a5 gridCellInfoOptions:a6 mutationOptions:a7]&& [(SBIconListModel *)self isInsertionFixedForIcon:v12 atGridCellIndex:a4 gridCellInfoOptions:0 mutationOptions:a7];

  return v13;
}

- (BOOL)isInsertionFixedForIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 mutationOptions:(unint64_t)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [v11 gridSizeClass];
  LOBYTE(a6) = [(SBIconListModel *)self isInsertionFixedForIcon:v11 ofGridSizeClass:v12 atGridCellIndex:a4 gridCellInfo:v10 mutationOptions:a6];

  return a6;
}

- (BOOL)isInsertionFixedForIconGridSizeClass:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v10 = a3;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  }

  v12 = [(SBIconListModel *)self isInsertionFixedForIconGridSizeClass:v10 atGridCellIndex:a4 gridCellInfo:v11 mutationOptions:a6];

  return v12;
}

- (BOOL)isInsertionFixedForIcon:(id)a3 ofGridSizeClass:(id)a4 atGridCellIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v18[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else if (v12)
  {
    v18[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14 = [(SBIconListModel *)self gridCellInfoExcludingIcons:v15 options:a6];
  }

  else
  {
    v14 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
  }

  v16 = [(SBIconListModel *)self isInsertionFixedForIcon:v12 ofGridSizeClass:v13 atGridCellIndex:a5 gridCellInfo:v14 mutationOptions:a7];

  return v16;
}

- (BOOL)isInsertionFixedForIcon:(id)a3 ofGridSizeClass:(id)a4 atGridCellIndex:(unint64_t)a5 gridCellInfo:(id)a6 mutationOptions:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(SBIconListModel *)self fixedIconLocationBehavior];
  if (v15 == 3)
  {
    if (v13)
    {
      LODWORD(a7) = [v13 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v15 == 2)
  {
LABEL_7:
    LOBYTE(a7) = 1;
    goto LABEL_11;
  }

  if (v15 != 1)
  {
LABEL_10:
    LOBYTE(a7) = 0;
    goto LABEL_11;
  }

  if ((a7 & 0x80) != 0)
  {
    goto LABEL_7;
  }

  if ((a7 & 0x200) == 0)
  {
    goto LABEL_10;
  }

  LOBYTE(a7) = [(SBIconListModel *)self isInsertionRequiredToBeFixedForIcon:v12 ofGridSizeClass:v13 atGridCellIndex:a5 gridCellInfo:v14 mutationOptions:a7];
LABEL_11:

  return a7;
}

- (BOOL)isInsertionRequiredToBeFixedForIcon:(id)a3 ofGridSizeClass:(id)a4 atGridCellIndex:(unint64_t)a5 gridCellInfo:(id)a6 mutationOptions:(unint64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  v15 = 1;
  if (a5 != 0x7FFFFFFFFFFFFFFFLL && v13)
  {
    if (!a5)
    {
      goto LABEL_10;
    }

    v16 = [(SBIconListModel *)self indexForIcon:v11];
    v17 = v16 == 0x7FFFFFFFFFFFFFFFLL || [v14 gridCellIndexForIconIndex:v16] == 0x7FFFFFFFFFFFFFFFLL;
    v18 = [(SBIconListModel *)self gridSizeAreaForGridSizeClass:v12];
    v19 = [v14 numberOfEmptyGridCells];
    v20 = v18;
    if (!v17)
    {
      v20 = 0;
    }

    if (v19 != v20)
    {
      v15 = [v14 indexOfFirstEmptyGridCellRangeOfSize:65537 inGridCellIndexRange:{0, a5}] != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      v15 = 0;
    }
  }

  return v15;
}

- (void)relocateAnyAffectedFixedIconsForInsertingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 replacingIcon:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v20 = a3;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 gridSizeClass];
    v15 = [v20 gridSizeClass];
    v16 = v15;
    if (v15 == v14 || ([v15 isEqualToString:v14] & 1) != 0)
    {

      goto LABEL_10;
    }
  }

  if ([(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:a6 mutationOptions:a7])
  {
    [(SBIconListModel *)self reflowIconsForwardForInsertingIcon:v20 atGridCellIndex:a4 replacingIcon:v13 gridCellInfoOptions:a6];
  }

  v14 = [v20 gridSizeClass];
  v17 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:v20 atGridCellIndex:a4 gridCellInfoOptions:a6];
  v18 = [(SBIconListModel *)self gridSizeForGridSizeClass:v14 gridCellInfoOptions:a6];
  if ([(SBIconListModel *)self isValidGridRange:v17 options:v18, a6])
  {
    v19 = [(SBIconListModel *)self relocateFixedIconsInGridRange:v17 gridCellInfoOptions:v18 mutationOptions:a6, a7];
  }

LABEL_10:
}

- (id)relocateFixedIconsInGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5
{
  v7 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v52 = *MEMORY[0x1E69E9840];
  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v11 = [(SBIconListModel *)self fixedIconsInGridRange:cellIndex gridCellInfo:v7, v10];
  if ([v11 count] && (-[SBIconListModel removeFixedIconLocationsForIconsInGridRange:gridCellInfo:](self, "removeFixedIconLocationsForIconsInGridRange:gridCellInfo:", cellIndex, v7, v10), !-[SBIconListModel usesTwoDimensionalMovementWithGridCellInfo:gridCellInfoOptions:mutationOptions:](self, "usesTwoDimensionalMovementWithGridCellInfo:gridCellInfoOptions:mutationOptions:", v10, a4, a5)))
  {
    v40 = v7;
    v13 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
    v39 = v7;
    v32 = v13;
    v33 = v11;
    if (SBHIconGridSizeEqualToIconGridSize([(SBIconListModel *)self gridSizeForGridSizeClass:v13 gridCellInfoOptions:a4], v7) && (obj = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v13 withoutFixedIconsNearGridRange:cellIndex gridCellInfo:v7, v10], obj != 0x7FFFFFFFFFFFFFFFLL))
    {
      v24 = [v10 gridSize];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v34 = v11;
      v25 = [v34 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v25)
      {
        v26 = v25;
        v36 = *v47;
        v27 = v24;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v47 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v29 = *(*(&v46 + 1) + 8 * i);
            v11 = v11 & 0xFFFFFFFF00000000 | v27;
            v30 = SBHIconGridRangeRelativeCellIndexForCellIndex(cellIndex, v40, [v10 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v29)}], v11);
            v24 = v24 & 0xFFFFFFFF00000000 | v27;
            [(SBIconListModel *)self setFixedLocation:SBHIconGridRangeCellIndexForRelativeCellIndex(obj forIcon:v39, v30, v24), v29];
          }

          v26 = [v34 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v26);
      }

      v12 = 0;
    }

    else
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __85__SBIconListModel_relocateFixedIconsInGridRange_gridCellInfoOptions_mutationOptions___block_invoke;
      v45[3] = &unk_1E808E0B8;
      v45[4] = self;
      v45[5] = a4;
      [v11 sortedArrayUsingComparator:v45];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obja = v44 = 0u;
      v14 = [obja countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v14)
      {
        v15 = v14;
        v35 = 0;
        v16 = *v42;
        v17 = cellIndex;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v42 != v16)
            {
              objc_enumerationMutation(obja);
            }

            v19 = *(*(&v41 + 1) + 8 * j);
            v20 = [v19 gridSizeClass];
            v21 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v20 withoutIconsNearGridRange:cellIndex gridCellInfo:v40, v10];
            if (v21 == 0x7FFFFFFFFFFFFFFFLL && (v21 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v20 withoutFixedIconsNearGridRange:cellIndex gridCellInfo:v40, v10], v21 == 0x7FFFFFFFFFFFFFFFLL))
            {
              v22 = v35;
              if (!v35)
              {
                v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              v35 = v22;
              [v22 addObject:v19];
            }

            else
            {
              [(SBIconListModel *)self setFixedLocation:v21 forIcon:v19];
              v23 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];

              v10 = v23;
            }

            cellIndex = v17;
          }

          v15 = [obja countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v15);
      }

      else
      {
        v35 = 0;
      }

      v12 = v35;
    }

    v11 = v33;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __85__SBIconListModel_relocateFixedIconsInGridRange_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 gridSizeClass];
  v7 = [v5 gridSizeClass];

  LODWORD(v5) = [*(a1 + 32) gridSizeForGridSizeClass:v6 gridCellInfoOptions:*(a1 + 40)];
  LODWORD(a1) = [*(a1 + 32) gridSizeForGridSizeClass:v7 gridCellInfoOptions:*(a1 + 40)];
  Area = SBHIconGridSizeGetArea(v5);
  v9 = SBHIconGridSizeGetArea(a1);
  v10 = -1;
  if (Area <= v9)
  {
    v10 = 1;
  }

  if (Area == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (void)reflowIconsForwardForInsertingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 replacingIcon:(id)a5 gridCellInfoOptions:(unint64_t)a6
{
  v14 = a3;
  v10 = a5;
  if ([(SBIconListModel *)self maxNumberOfIcons]> a4)
  {
    v11 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
    v12 = [v11 contiguousRegionForGridCellIndex:a4];
    if (([v12 isEmpty] & 1) == 0)
    {
      v13 = [v11 iconIndexesForContiguousRegion:v12];
      if ([v13 count] >= 2)
      {
        [(SBIconListModel *)self shiftFixedIconsInContiguousRegion:v12 forInsertingIcon:v14 orRemovingIcon:0 orResizingIcon:0 orMovingIcon:0 atGridCellIndex:a4 replacingIcon:v10 resizingToGridSizeClass:0 gridCellInfoOptions:a6 mutationOptions:0];
      }
    }
  }
}

- (void)reflowIconsForResizingIcon:(id)a3 atGridCellIndex:(unint64_t)a4 toGridSizeClass:(id)a5 gridCellInfoOptions:(unint64_t)a6
{
  v14 = a3;
  v10 = a5;
  if ([(SBIconListModel *)self maxNumberOfIcons]> a4)
  {
    v11 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
    v12 = [v11 contiguousRegionForGridCellIndex:a4];
    if (([v12 isEmpty] & 1) == 0)
    {
      v13 = [v11 iconIndexesForContiguousRegion:v12];
      if ([v13 count] >= 2)
      {
        [(SBIconListModel *)self shiftFixedIconsInContiguousRegion:v12 forInsertingIcon:0 orRemovingIcon:0 orResizingIcon:v14 orMovingIcon:0 atGridCellIndex:a4 replacingIcon:0 resizingToGridSizeClass:v10 gridCellInfoOptions:a6 mutationOptions:0];
      }
    }
  }
}

- (void)shiftFixedIconsInContiguousRegion:(id)a3 forInsertingIcon:(id)a4 orRemovingIcon:(id)a5 orResizingIcon:(id)a6 orMovingIcon:(id)a7 atGridCellIndex:(unint64_t)a8 replacingIcon:(id)a9 resizingToGridSizeClass:(id)a10 gridCellInfoOptions:(unint64_t)a11 mutationOptions:(unint64_t)a12
{
  v164 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v113 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  v112 = a8;
  if ([(SBIconListModel *)self maxNumberOfIcons]> a8)
  {
    v24 = [(SBIconListModel *)self gridCellInfoWithOptions:?];
    v110 = [v24 gridSize];
    v25 = [v18 gridRange];
    v27 = v26;
    v122 = self;
    v111 = v24;
    if ([(SBIconListModel *)self hasFixedIconsInGridRange:v25 gridCellInfo:v26, v24])
    {
      if (!v113)
      {
        v107 = v20;
        goto LABEL_7;
      }

      if ([(SBIconListModel *)self isContiguousRegionEligibleForBackfill:v18 gridCellInfo:v24])
      {
        v107 = v20;
        [(SBIconListModel *)self adjustContiguousRegionForBackfill:v18 gridCellInfo:v24];
        v29 = v28 = v21;

        v18 = v29;
        v21 = v28;
LABEL_7:
        v30 = v110 & 0xFFFF0000;
        v31 = v19;
        v32 = [v31 gridSizeClass];
        v99 = v31;
        v100 = v23;
        if (v31)
        {
          v105 = v31;
        }

        else
        {
          v33 = v32;
          v105 = v113;
          if (v113)
          {
            v32 = v33;
          }

          else
          {
            v105 = v107;
            v34 = v23;
            v35 = v21;
            v36 = v34;

            v32 = v36;
            v21 = v35;
          }
        }

        v106 = v22;
        v101 = v21;
        v37 = v27 & 0xFFFFFFFF0000FFFFLL;
        if (!v32)
        {
          v32 = [v105 gridSizeClass];
        }

        v109 = v32;
        v102 = v19;
        v38 = SBHIconGridRangeRowForCellIndex(v25, v37 | v30, v112, v110);
        v39 = SBHIconGridRangeMinCellIndexOnRow(v25, v37 | v30, v110, v38);
        v40 = SBHIconGridRangeIntersection(v39, v37 | v30, 0, v110, v110);
        v42 = v41;
        v43 = objc_alloc_init(MEMORY[0x1E695DFA0]);
        v154[0] = MEMORY[0x1E69E9820];
        v154[1] = 3221225472;
        v154[2] = __203__SBIconListModel_shiftFixedIconsInContiguousRegion_forInsertingIcon_orRemovingIcon_orResizingIcon_orMovingIcon_atGridCellIndex_replacingIcon_resizingToGridSizeClass_gridCellInfoOptions_mutationOptions___block_invoke;
        v154[3] = &unk_1E808E0E0;
        v160 = v112;
        v121 = v24;
        v155 = v121;
        v156 = v122;
        v98 = v106;
        v157 = v98;
        v97 = v107;
        v158 = v97;
        v114 = v43;
        v159 = v114;
        v103 = v18;
        [v18 enumerateGridCellIndexesUsingBlock:v154];
        v108 = v42;
        v44 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
        if (v112 > v39)
        {
          [(SBIconListGridCellInfo *)v44 setIconIndex:-1 inGridRange:SBHIconGridRangeRelativeCellIndexForCellIndex(v40, v42, v39, v110), (v112 - v39) | 0x10000];
        }

        v115 = v44;
        v119 = v42;
        v120 = v40;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v45 = [v114 array];
        v46 = [v45 copy];

        v47 = [v46 countByEnumeratingWithState:&v150 objects:v163 count:16];
        if (v47)
        {
          v48 = v47;
          v117 = *v151;
          do
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v151 != v117)
              {
                objc_enumerationMutation(v46);
              }

              v50 = *(*(&v150 + 1) + 8 * i);
              v51 = [(SBIconListModel *)v122 gridRangeForIcon:v50 gridCellInfo:v121];
              v53 = v52;
              v18 = v18 & 0xFFFFFFFF00000000 | v110;
              v54 = SBHIconGridRangeIntersection(v51, v52, v120, v42, v18);
              if ((SBHIconGridRangeIsEmpty(v54, v55) & 1) == 0)
              {
                v19 = v19 & 0xFFFFFFFF00000000 | v110;
                v56 = SBHIconGridRangeRelativeCellIndexForCellIndex(v120, v42, v54, v19);
                if ([(SBIconListGridCellInfo *)v115 indexOfFirstUsedGridCellInGridRange:v56, v53]!= 0x7FFFFFFFFFFFFFFFLL)
                {
                  [(SBIconListGridCellInfo *)v115 setIconIndex:-1 inGridRange:v56, v53];
                  [v114 removeObject:v50];
                }
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v150 objects:v163 count:16];
          }

          while (v48);
        }

        if (v109 && ![v109 isEqualToString:@"SBHIconGridSizeClassDefault"])
        {
          v60 = 0;
          v62 = v122;
        }

        else
        {
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v57 = v114;
          v58 = [v57 countByEnumeratingWithState:&v146 objects:v162 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = 0;
            v61 = *v147;
            v62 = v122;
            do
            {
              for (j = 0; j != v59; ++j)
              {
                if (*v147 != v61)
                {
                  objc_enumerationMutation(v57);
                }

                v64 = *(*(&v146 + 1) + 8 * j);
                v65 = [v64 gridSizeClass];
                v19 = v65;
                if (v65)
                {
                  if (([v65 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
                  {
                    v66 = [(SBIconListModel *)v62 indexForIcon:v64];
                    if (v66 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v67 = v57;
                      v68 = [v121 gridCellIndexForIconIndex:v66];
                      if (v68 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v69 = v68;
                        v70 = [v64 uniqueIdentifier];
                        v117 = v117 & 0xFFFFFFFF00000000 | v110;
                        v71 = SBHIconGridRangeRelativeCellIndexForCellIndex(v120, v119, v69, v110);
                        if (!v60)
                        {
                          v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
                        }

                        v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v71];
                        [v60 setObject:v72 forKey:v70];
                      }

                      v57 = v67;
                      v62 = v122;
                    }
                  }
                }
              }

              v59 = [v57 countByEnumeratingWithState:&v146 objects:v162 count:16];
            }

            while (v59);
          }

          else
          {
            v60 = 0;
            v62 = v122;
          }
        }

        if (v99 | v97)
        {
          v73 = [(SBIconListModel *)v62 gridSizeForGridSizeClass:v109 gridCellInfoOptions:a11];
          v74 = SBHIconGridRangeRelativeCellIndexForCellIndex(v120, v119, v112, v110);
          v75 = SBHIconGridRangeIntersection(v74, v73, 0, v108, v110);
          [(SBIconListGridCellInfo *)v115 setIconIndex:-1 inGridRange:v75, v76];
        }

        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __203__SBIconListModel_shiftFixedIconsInContiguousRegion_forInsertingIcon_orRemovingIcon_orResizingIcon_orMovingIcon_atGridCellIndex_replacingIcon_resizingToGridSizeClass_gridCellInfoOptions_mutationOptions___block_invoke_2;
        v138[3] = &unk_1E808E108;
        v140 = v112;
        v141 = v120;
        v145 = v110;
        v142 = v119;
        v143 = 0;
        v144 = v108;
        v77 = v115;
        v139 = v77;
        [v103 enumerateEmptyGridCellIndexesUsingBlock:v138];
        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 3221225472;
        v127[2] = __203__SBIconListModel_shiftFixedIconsInContiguousRegion_forInsertingIcon_orRemovingIcon_orResizingIcon_orMovingIcon_atGridCellIndex_replacingIcon_resizingToGridSizeClass_gridCellInfoOptions_mutationOptions___block_invoke_3;
        v127[3] = &unk_1E808E130;
        v128 = v98;
        v78 = v113;
        v129 = v78;
        v130 = v122;
        v18 = v103;
        v131 = v18;
        v133 = v120;
        v134 = v119;
        v137 = v110;
        v79 = v122;
        v135 = 0;
        v136 = v108;
        v80 = v77;
        v132 = v80;
        [(SBIconListModel *)v122 enumerateIconsUsingBlock:v127];
        obj = v80;
        if ((a12 & 0x200000) != 0)
        {
          v20 = v107;
          if (!v60)
          {
            v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          if (v113)
          {
            v81 = [v78 gridSizeClass];
            v82 = [(SBIconListModel *)v122 gridSizeAreaForGridSizeClass:v81 gridCellInfoOptions:a11];
            if (v82 >= 2)
            {
              v83 = v82;
              v118 = v81;
              v104 = v18;
              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              v84 = v114;
              v85 = [v84 countByEnumeratingWithState:&v123 objects:v161 count:16];
              if (v85)
              {
                v86 = v85;
                v87 = *v124;
                do
                {
                  for (k = 0; k != v86; ++k)
                  {
                    if (*v124 != v87)
                    {
                      objc_enumerationMutation(v84);
                    }

                    v89 = *(*(&v123 + 1) + 8 * k);
                    v90 = [v89 gridSizeClass];
                    if ([(SBIconListModel *)v122 gridSizeAreaForGridSizeClass:v90 gridCellInfoOptions:a11]>= v83)
                    {
                      v91 = [(SBIconListModel *)v122 gridCellIndexForIcon:v89 gridCellInfo:v121];
                      v92 = [v89 uniqueIdentifier];
                      v19 = v19 & 0xFFFFFFFF00000000 | v110;
                      v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{SBHIconGridRangeRelativeCellIndexForCellIndex(v120, v119, v91, v19)}];
                      [v60 setObject:v93 forKey:v92];
                    }
                  }

                  v86 = [v84 countByEnumeratingWithState:&v123 objects:v161 count:16];
                }

                while (v86);
              }

              v18 = v104;
              v20 = v107;
              v79 = v122;
              v81 = v118;
            }
          }
        }

        else
        {
          v20 = v107;
        }

        v94 = MEMORY[0x1E695E0F8];
        if (v60)
        {
          v94 = v60;
        }

        v95 = v94;
        v96 = [v114 array];
        [(SBIconListModel *)v79 layOutIcons:v96 inGridCellInfo:obj startingAtGridCellIndex:SBHIconGridRangeRelativeCellIndexForCellIndex(v120 gridSize:v119 fixedIconLocations:v112 options:v110), v108, v95, a11];
        [(SBIconListModel *)v79 transferPositionsFromGridCellInfo:obj representingGridRange:v120 asFixedLocationsForIcons:v119 gridCellInfoOptions:v96, a11];

        v21 = v101;
        v19 = v102;
        v22 = v106;
        v23 = v100;
      }
    }
  }
}

uint64_t __203__SBIconListModel_shiftFixedIconsInContiguousRegion_forInsertingIcon_orRemovingIcon_orResizingIcon_orMovingIcon_atGridCellIndex_replacingIcon_resizingToGridSizeClass_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t result, unint64_t a2)
{
  if (*(result + 72) <= a2)
  {
    v2 = result;
    result = [*(result + 32) iconIndexForGridCellIndex:a2];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = [*(v2 + 40) iconAtIndex:result];
      v4 = v3;
      if (v3 != *(v2 + 48) && v3 != *(v2 + 56))
      {
        v5 = v3;
        v3 = [*(v2 + 64) addObject:v3];
        v4 = v5;
      }

      return MEMORY[0x1EEE66BB8](v3, v4);
    }
  }

  return result;
}

uint64_t __203__SBIconListModel_shiftFixedIconsInContiguousRegion_forInsertingIcon_orRemovingIcon_orResizingIcon_orMovingIcon_atGridCellIndex_replacingIcon_resizingToGridSizeClass_gridCellInfoOptions_mutationOptions___block_invoke_2(uint64_t result, unint64_t a2)
{
  if (*(result + 40) <= a2)
  {
    v2 = result;
    v3 = SBHIconGridRangeRelativeCellIndexForCellIndex(*(result + 48), *(v2 + 56), a2, *(v2 + 80));
    result = SBHIconGridRangeContainsCellIndex(*(v2 + 64), *(v2 + 72), v3, *(v2 + 72));
    if (result)
    {
      v4 = *(v2 + 32);

      return [v4 setIconIndex:-1 forGridCellIndex:v3];
    }
  }

  return result;
}

uint64_t __203__SBIconListModel_shiftFixedIconsInContiguousRegion_forInsertingIcon_orRemovingIcon_orResizingIcon_orMovingIcon_atGridCellIndex_replacingIcon_resizingToGridSizeClass_gridCellInfoOptions_mutationOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3 && *(a1 + 40) != v3)
  {
    v10 = v3;
    v3 = [*(a1 + 48) fixedLocationForIcon:v3];
    v4 = v10;
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v3;
      v3 = [*(a1 + 56) containsGridCellIndex:v3];
      v4 = v10;
      if ((v3 & 1) == 0)
      {
        v3 = SBHIconGridRangeContainsCellIndex(*(a1 + 72), *(a1 + 80), v5, *(a1 + 104));
        v4 = v10;
        if (v3)
        {
          v6 = SBHIconGridRangeRelativeCellIndexForCellIndex(*(a1 + 72), *(a1 + 80), v5, *(a1 + 104));
          v7 = SBHIconGridRangeIntersection(v6, [*(a1 + 48) gridSizeForIcon:v10], *(a1 + 88), *(a1 + 96), *(a1 + 104));
          v3 = [*(a1 + 64) setIconIndex:-1 inGridRange:{v7, v8}];
          v4 = v10;
        }
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (id)gridCellInfoByUsingTwoDimensionalMovementToInsertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  if (!v13)
  {
    v13 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
  }

  v14 = [v13 gridSize];
  v15 = [(SBIconListModel *)self gridSizeForIcon:v12 gridCellInfoOptions:a6];
  if (![(SBIconListModel *)self isValidGridRange:a4 options:*&v15, a6])
  {
    v34 = 0;
    goto LABEL_28;
  }

  v44 = a7;
  v45 = a4;
  v43 = HIWORD(v14);
  v16 = v14;
  v42 = v14;
  v17 = SBIconCoordinateMakeWithGridCellIndex(a4, v14);
  v18 = v14;
  v20 = v19;
  v21 = v17 - 1;
  columns = v15.columns;
  v23 = v18 & 0xFFFF0000 | v15.columns;
  v41 = v18;
  if (v15.columns < v18)
  {
    do
    {
      if ([(SBIconListModel *)self areIconsInGridRangeFullyContained:v21 gridCellInfo:v23, v13])
      {
        break;
      }

      v24 = [(SBIconListModel *)self isValidGridRange:v21 options:v23 & 0xFFFFFFFFFFFF0000 | (v23 + 1), a6];
      v25 = v21 - 1;
      if (!v21)
      {
        v25 = 0;
      }

      if (v24)
      {
        v23 = v23 & 0xFFFFFFFFFFFF0000 | (v23 + 1);
      }

      else
      {
        v21 = v25;
      }

      columns = v23;
    }

    while (v23 < v16);
  }

  v26 = (v20 - 1) * v16;
  v27 = *&v15 & 0xFFFF0000 | v16;
  if (v43 > WORD1(v23) && ![(SBIconListModel *)self areIconsInGridRangeFullyContained:v26 gridCellInfo:v27, v13])
  {
    do
    {
      v28 = [(SBIconListModel *)self isValidGridRange:v26 options:v27 & 0xFFFFFFFF0000FFFFLL | (((v27 + 0x10000) >> 16) << 16), a6];
      v29 = v26 - v16;
      if (!v26)
      {
        v29 = 0;
      }

      if (v28)
      {
        v27 = v27 & 0xFFFFFFFF0000FFFFLL | (((v27 + 0x10000) >> 16) << 16);
      }

      else
      {
        v26 = v29;
      }
    }

    while (![(SBIconListModel *)self areIconsInGridRangeFullyContained:v26 gridCellInfo:v27, v13]);
  }

  if (v23 >= 0x50000 && columns > 2)
  {
    goto LABEL_22;
  }

  if (columns > 2)
  {
    if (v27 >= 0x50000)
    {
      goto LABEL_22;
    }

    v34 = 0;
    v36 = v44;
  }

  else
  {
    v36 = v44;
    v37 = [(SBIconListModel *)self gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:v12 atGridCellIndex:v45 constrainedToGridRange:v21 gridCellInfo:v23 gridCellInfoOptions:v13 mutationOptions:a6, v44];
    v34 = v37;
    if (v27 >= 0x50000)
    {
      if (v37)
      {
        v38 = 0;
        goto LABEL_44;
      }

      goto LABEL_22;
    }
  }

  v39 = [(SBIconListModel *)self gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:v12 atGridCellIndex:v45 constrainedToGridRange:v26 gridCellInfo:v27 gridCellInfoOptions:v13 mutationOptions:a6, v36];
  v38 = v39;
  if (v34 && v39)
  {
    v40 = [(SBIconListModel *)self gridCellInfoWithLeastMovementChangeWithGridCellInfo:v13 toGridCellInfo:v34 orGridCellInfo:v39];

    if (v40)
    {
      v34 = v40;
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v34)
  {
LABEL_44:

    goto LABEL_28;
  }

  if (v39)
  {
    v38 = v39;
    v34 = v38;
    goto LABEL_44;
  }

LABEL_22:
  if (SBIconCoordinateMakeWithGridCellIndex(v45, v42) >= v16 >> 1)
  {
    v30 = v16 >> 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = [(SBIconListModel *)self gridCellIndexesForIconsIntersectingGridRange:v30 gridCellInfo:v41 & 0xFFFF0000 | (v16 >> 1), v13];
  v32 = [v31 mutableCopy];

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __138__SBIconListModel_gridCellInfoByUsingTwoDimensionalMovementToInsertIcon_atGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
  v46[3] = &unk_1E808C408;
  v47 = v32;
  v33 = v32;
  SBHIconGridRangeEnumerateCellIndexes(v30, v41 & 0xFFFF0000 | (v16 >> 1), v42, v46);
  v34 = [(SBIconListModel *)self gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:v12 atGridCellIndex:v45 constrainedToGridCellIndexes:v33 gridCellInfo:v13 gridCellInfoOptions:a6 mutationOptions:v44];

  if (!v34)
  {
    v34 = [(SBIconListModel *)self gridCellInfoByUsingPredictedTwoDimensionalMovementToInsertIcon:v12 atGridCellIndex:v45 constrainedToGridRange:0 gridCellInfo:v42 gridCellInfoOptions:v13 mutationOptions:a6, v44];
  }

LABEL_28:

  return v34;
}

- (id)gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 constrainedToGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8
{
  size = a5.size;
  cellIndex = a5.cellIndex;
  v14 = a6;
  v15 = a3;
  v16 = SBHIconGridRangeCellIndexes(cellIndex, size, [v14 gridSize]);
  v17 = [(SBIconListModel *)self gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:v15 atGridCellIndex:a4 constrainedToGridCellIndexes:v16 gridCellInfo:v14 gridCellInfoOptions:a7 mutationOptions:a8];

  return v17;
}

- (id)gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 constrainedToGridCellIndexes:(id)a5 gridCellInfo:(id)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8
{
  v144 = *MEMORY[0x1E69E9840];
  v91 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [v14 gridSize];
  v16 = [(SBIconListModel *)self iconLayoutBehavior];
  v17 = v13;
  v136 = 0;
  v137 = &v136;
  v138 = 0x3032000000;
  v139 = __Block_byref_object_copy__14;
  v140 = __Block_byref_object_dispose__14;
  v141 = 0;
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __178__SBIconListModel_gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon_atGridCellIndex_constrainedToGridCellIndexes_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
  v128[3] = &unk_1E808E1A8;
  v18 = v14;
  v129 = v18;
  v19 = v17;
  v130 = v19;
  v131 = self;
  v135 = v15;
  v110 = v16;
  v133 = a7;
  v134 = v16;
  v97 = a7;
  v132 = &v136;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v128];
  v20 = v137[5];
  v21 = v19;
  v96 = self;
  if (v20)
  {
    v21 = v20;
  }

  v90 = v19;
  v98 = v18;
  if ([v21 count])
  {
    v22 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a7];
    v87 = [v22 largestGridSizeClass];
    v23 = [v22 gridSizeAreaForGridSizeClass:v87];
    if (v23 >= 0x21)
    {
      v24 = malloc_type_calloc(v23, 8uLL, 0x100004000313F17uLL);
      v89 = v24;
    }

    else
    {
      v89 = 0;
      v24 = &v143;
    }

    v25 = [v21 count];
    v26 = v25;
    v86 = v22;
    if (v25 >= 0x21)
    {
      v27 = malloc_type_calloc(v25, 8uLL, 0x100004000313F17uLL);
      v88 = v27;
    }

    else
    {
      v88 = 0;
      v27 = &v142;
    }

    [v21 getIndexes:v27 maxCount:v26 inIndexRange:0];
    v107 = v27;
    v95 = v26;
    v103 = v24;
    v28 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00409B46E140uLL);
    v28[4] = 1;
    v28[5] = [(SBIconListModel *)self indexForIcon:v91];
    v108 = v15;
    v29 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
    v30 = v28[1];
    v31 = v28;
    v28[1] = v29;

    v28[2] = a4;
    v32 = self;
    v33 = [(SBIconListModel *)self gridSizeForIcon:v91 gridCellInfoOptions:a7];
    v34 = 0;
    *(v28 + 6) = v33;
    v92 = 0;
    v99 = -1;
    v35 = 1.79769313e308;
    v36 = v24;
    v93 = v21;
    while (v31)
    {
      v102 = v34;
      v37 = v31[2];
      v38 = v31[3];
      v105 = *v31;
      [v31[1] setIconIndex:v31[5] inGridRange:{v37, v38}];
      v39 = [v98 getUniqueIconIndexes:v36 inGridRange:{v37, v38}];
      if (v39)
      {
        v40 = 0;
        v111 = 0;
        do
        {
          v41 = &v36[v40];
          if ([v31[1] gridCellIndexForIconIndex:*v41] == 0x7FFFFFFFFFFFFFFFLL)
          {
            ++v111;
          }

          else if (v40 < v39 - 1)
          {
            memmove(&v36[v40], v41 + 1, 8 * (v39 + ~v40));
            --v40;
            --v39;
          }

          ++v40;
        }

        while (v40 < v39);
      }

      else
      {
        v111 = 0;
      }

      v42 = v31[4] - 1;
      v104 = v42 + v111;
      v106 = v31;
      if (v42 + v111)
      {
        v43 = v31 + 6;
        __src = v31 + 6;
        if (v31[4] == 1)
        {
          v43 = v36;
        }

        v44 = *v43;
        v45 = v108;
        v46 = v100;
        v47 = [(SBIconListModel *)v32 gridSizeForIcon:[(SBIconListModel *)v32 iconAtIndex:*v43] gridCellInfoOptions:v97];
        v48 = [v98 gridCellIndexForIconIndex:v44];
        v49 = v47;
        if (v95 == 1)
        {
          goto LABEL_33;
        }

        v50 = v48;
        v94 = v42;
        v51 = 0;
        v52 = v95 - 1;
        do
        {
          v112 = v52;
          v113 = v51;
          v53 = v45;
          __len = v45;
          v54 = v107;
          v55 = v107;
          do
          {
            v56 = v55->u64[1];
            v55 = (v55 + 8);
            v57 = SBHIconGridDistanceBetweenGridRanges(v50, v49, v54->i64[0], v49, v53);
            v59 = v58;
            v60 = SBHIconGridDistanceBetweenGridRanges(v50, v49, v56, v49, __len);
            v62 = v61;
            NumberOfSteps = SBHIconGridDistanceGetNumberOfSteps(v57, v59);
            if (NumberOfSteps < SBHIconGridDistanceGetNumberOfSteps(v60, v62))
            {
              *v54 = vextq_s8(*v54, *v54, 8uLL);
            }

            v54 = v55;
            --v52;
          }

          while (v52);
          v51 = v113 + 1;
          v52 = v112 - 1;
          v45 = v108;
        }

        while (v113 + 1 != v95 - 1);
        v42 = v94;
        v46 = v100;
        if (v95)
        {
LABEL_33:
          v64 = v42;
          __lena = 8 * v42;
          v65 = v107;
          v66 = v95;
          v21 = v93;
          do
          {
            v68 = *v65++;
            v67 = v68;
            v46 = v46 & 0xFFFFFFFF00000000 | v45;
            v69 = SBIconCoordinateMakeWithGridCellIndex(v68, v46);
            v114 = v114 & 0xFFFFFFFF00000000 | v45;
            v115 = v115 & 0xFFFFFFFF00000000 | v49;
            if (_SBIconListIsCoordinateValidForGridSize(v69, v70, v49, v45, v110))
            {
              v109 = v109 & 0xFFFFFFFF00000000 | v45;
              if ((SBHIconGridRangeIsContainedInIndexSet(v67, v49, v93, v45) & 1) != 0 && ([v106[1] hasUsedGridCellsInGridRange:{v67, v49}] & 1) == 0)
              {
                v71 = malloc_type_calloc(1uLL, 8 * v104 + 40, 0x10A00409B46E140uLL);
                *v71 = v105;
                v72 = [v106[1] copy];
                v73 = v71[1];
                v71[1] = v72;

                v71[2] = v67;
                v71[3] = v49;
                v71[4] = v104;
                if (v64)
                {
                  memmove(v71 + 5, __src, __lena);
                }

                if (v111)
                {
                  memmove(&v71[v64 + 5], v103, 8 * v111);
                }

                v105 = v71;
                v45 = v108;
              }
            }

            --v66;
          }

          while (v66);
          v100 = v46;
        }

        else
        {
          v21 = v93;
        }

        v80 = v105;
      }

      else
      {
        v124 = 0;
        v125 = &v124;
        v126 = 0x2020000000;
        v127 = 1;
        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __178__SBIconListModel_gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon_atGridCellIndex_constrainedToGridCellIndexes_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_4;
        v118[3] = &unk_1E808E1D0;
        v74 = v98;
        v119 = v74;
        v120 = v32;
        v122 = v31;
        v123 = v97;
        v121 = &v124;
        [(SBIconListModel *)v32 enumerateIconsUsingBlock:v118];
        v75 = [v31[1] movementChangeInfoFromGridCellInfo:v74];
        if (*(v125 + 24) == 1 && ((v77 = v76, v78 = v76 / v75, v76 < v99) || v76 == v99 && v78 < v35))
        {
          v79 = v31[1];

          v80 = v105;
          v92 = v79;
          v99 = v77;
        }

        else
        {
          v78 = v35;
          v80 = v105;
        }

        _Block_object_dispose(&v124, 8);
        v35 = v78;
      }

      v81 = v106[1];
      v106[1] = 0;

      free(v106);
      if (v99 >= 2)
      {
        v36 = v103;
        v31 = v80;
        v34 = v102 + 1;
        v32 = v96;
        if (v102 < 0x9C4)
        {
          continue;
        }
      }

      goto LABEL_57;
    }

    v80 = 0;
LABEL_57:
    free(v89);
    free(v88);
    if (v80)
    {
      v82 = v80;
      do
      {
        v84 = *v82;
        v83 = v82[1];
        v82[1] = 0;

        free(v82);
        v82 = v84;
      }

      while (v84);
    }
  }

  else
  {
    v92 = 0;
  }

  _Block_object_dispose(&v136, 8);

  return v92;
}

void __178__SBIconListModel_gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon_atGridCellIndex_constrainedToGridCellIndexes_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) gridCellIndexForIconIndex:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if ([*(a1 + 40) containsIndex:v6])
    {
      v8 = [*(a1 + 48) gridSizeForIcon:v5 gridCellInfoOptions:*(a1 + 64)];
      v9 = *(a1 + 40);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __178__SBIconListModel_gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon_atGridCellIndex_constrainedToGridCellIndexes_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_2;
      v16[3] = &unk_1E808E158;
      v20 = *(a1 + 80);
      v21 = v8;
      v10 = *(a1 + 72);
      v18 = v7;
      v19 = v10;
      v17 = v9;
      if ([v17 indexPassingTest:v16] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = *(a1 + 56);
        if (!*(*(v11 + 8) + 40))
        {
          v12 = [*(a1 + 40) mutableCopy];
          v13 = *(*(a1 + 56) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v11 = *(a1 + 56);
        }

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __178__SBIconListModel_gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon_atGridCellIndex_constrainedToGridCellIndexes_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_3;
        v15[3] = &unk_1E808E180;
        v15[4] = v11;
        SBHIconGridRangeEnumerateCellIndexes(v7, v8, v8, v15);
      }
    }
  }
}

uint64_t __178__SBIconListModel_gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon_atGridCellIndex_constrainedToGridCellIndexes_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) == a2)
  {
    return 0;
  }

  v4 = SBIconCoordinateMakeWithGridCellIndex(a2, *(a1 + 56));
  v6 = *(a1 + 56);
  v5 = *(a1 + 60);
  if (!_SBIconListIsCoordinateValidForGridSize(v4, v7, v5, v6, *(a1 + 48)))
  {
    return 0;
  }

  v8 = *(a1 + 32);

  return SBHIconGridRangeIsContainedInIndexSet(a2, v5, v8, v6);
}

void __178__SBIconListModel_gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon_atGridCellIndex_constrainedToGridCellIndexes_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) gridCellIndexForIconIndex:a3];
  if ([*(*(a1 + 56) + 8) gridCellIndexForIconIndex:a3] == 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*(a1 + 40) gridSizeForIcon:v10 gridCellInfoOptions:*(a1 + 64)];
    if ([*(*(a1 + 56) + 8) indexOfFirstUsedGridCellInGridRange:{v7, v9}] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(*(a1 + 56) + 8) setIconIndex:a3 inGridRange:{v7, v9}];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

- (id)gridCellInfoByUsingPredictedTwoDimensionalMovementToInsertIcon:(id)a3 atGridCellIndex:(unint64_t)a4 constrainedToGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8
{
  v11 = *&a5.size.columns;
  cellIndex = a5.cellIndex;
  v13 = a3;
  v14 = a6;
  v25 = [v14 gridSize];
  v15 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
  v26 = cellIndex;
  v27 = 0;
  v16 = 0;
  v17 = -1;
  do
  {
    if ([(SBIconListModel *)self layOutIconsInGridCellInfo:v15 forInsertingIcon:v13 atGridCellIndex:a4 constrainedToGridRange:cellIndex preferredDisplacementDirection:v11 gridCellInfo:1 << v16 gridCellInfoOptions:v14 mutationOptions:a7, a8]&& ([(SBIconListGridCellInfo *)v15 movementChangeInfoFromGridCellInfo:v14], v18 < v17))
    {
      v19 = v18;
      v20 = v13;
      v21 = v11;
      v22 = a7;
      v23 = v15;

      v8 = v8 & 0xFFFFFFFF00000000 | v25;
      v15 = [[SBIconListGridCellInfo alloc] initWithGridSize:v8];

      v17 = v19;
      v27 = v23;
      a7 = v22;
      v11 = v21;
      v13 = v20;
      cellIndex = v26;
      if (!v19)
      {
        break;
      }
    }

    else
    {
      [(SBIconListGridCellInfo *)v15 clearAllIconAndGridCellIndexes];
    }

    ++v16;
  }

  while (v16 != 4);

  return v27;
}

- (BOOL)layOutIconsInGridCellInfo:(id)a3 forInsertingIcon:(id)a4 atGridCellIndex:(unint64_t)a5 constrainedToGridRange:(SBHIconGridRange)a6 preferredDisplacementDirection:(unint64_t)a7 gridCellInfo:(id)a8 gridCellInfoOptions:(unint64_t)a9 mutationOptions:(unint64_t)a10
{
  v11 = *&a6.size.columns;
  cellIndex = a6.cellIndex;
  v104 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v70 = [v18 gridSize];
  v71 = cellIndex;
  if ([(SBIconListModel *)self areIconsInGridRangeFullyContained:cellIndex gridCellInfo:v11, v18]&& (v19 = [(SBIconListModel *)self indexForIcon:v17], v20 = [(SBIconListModel *)self gridSizeForIcon:v17 gridCellInfoOptions:a9], [(SBIconListModel *)self isValidGridRange:a5 options:v20, a9]))
  {
    v67 = v11;
    v68 = a7;
    v58 = v17;
    v57 = [(SBIconListModel *)self iconsForGridRange:a5 gridCellInfo:v20, v18];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v21 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v57];
    v22 = [v21 countByEnumeratingWithState:&v97 objects:v103 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v98;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v98 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [(SBIconListModel *)self gridRangeForIcon:*(*(&v97 + 1) + 8 * i) gridCellInfo:v18];
          [v16 setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v26, v27}];
        }

        v23 = [v21 countByEnumeratingWithState:&v97 objects:v103 count:16];
      }

      while (v23);
    }

    [v16 setIconIndex:v19 inGridRange:{a5, v20}];
    [v16 setDebuggingIconType:objc_msgSend(objc_opt_class() forIconIndex:{"gridCellInfoIconTypeForIcon:", v58), v19}];
    v28 = [v58 gridSizeClass];
    v56 = v28;
    if (v28)
    {
      v66 = [v28 isEqualToString:{@"SBHIconGridSizeClassDefault", v28}];
    }

    else
    {
      v66 = 1;
    }

    v69 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v69 addObject:v58];
    v30 = objc_alloc(MEMORY[0x1E695DFA8]);
    v31 = [(SBIconIndexMutableList *)self->_icons nodes];
    v32 = [v30 initWithArray:v31];

    v59 = v32;
    [v32 removeObject:v58];
    v65 = [(SBIconListModel *)self iconLayoutBehavior];
    v33 = 1;
    while ([v21 count])
    {
      obj = v33;
      v34 = [v21 firstObject];
      v35 = [v34 gridSizeClass];
      v36 = [(SBIconListModel *)self gridRangeForIcon:v34 gridCellInfo:v18];
      v38 = v37;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __181__SBIconListModel_layOutIconsInGridCellInfo_forInsertingIcon_atGridCellIndex_constrainedToGridRange_preferredDisplacementDirection_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
      v83[3] = &unk_1E808E1F8;
      v39 = v16;
      v84 = v39;
      v85 = self;
      v86 = v18;
      v40 = v69;
      v96 = v66;
      v95 = v70;
      v87 = v40;
      v88 = v65;
      v89 = v36;
      v90 = v38;
      v41 = v35;
      v91 = v36;
      v92 = 65537;
      v93 = 0;
      v94 = v68;
      v72 = v39;
      v42 = [(SBIconListModel *)self bestGridCellIndexOfRangeOfGridSizeClass:v35 withinGridRange:v71 gridCellInfo:v67 passingTest:v39, v83];
      v29 = 0;
      if (v42 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v64 = v34;
        v61 = [(SBIconListModel *)self indexForIcon:v34];
        v63 = v41;
        v62 = v42;
        v60 = [(SBIconListModel *)self gridSizeForGridSizeClass:v41 gridCellInfoOptions:a9];
        v43 = [(SBIconListModel *)self iconsForGridRange:v42 gridCellInfo:?];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v44 = [v43 countByEnumeratingWithState:&v79 objects:v102 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v80;
          do
          {
            for (j = 0; j != v45; ++j)
            {
              if (*v80 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v79 + 1) + 8 * j);
              if (([v40 containsObject:v48] & 1) == 0)
              {
                [v21 addObject:v48];
              }
            }

            v45 = [v43 countByEnumeratingWithState:&v79 objects:v102 count:16];
          }

          while (v45);
        }

        v42 = v62;
        [v72 setIconIndex:v61 inGridRange:{v62, v60}];
        v34 = v64;
        [v72 setDebuggingIconType:objc_msgSend(objc_opt_class() forIconIndex:{"gridCellInfoIconTypeForIcon:", v64), v61}];
        [v21 removeObject:v64];
        [v40 addObject:v64];
        [v59 removeObject:v64];

        v29 = obj;
        v41 = v63;
      }

      v33 = v29;
      if (v42 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((v29 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }
    }

    LOBYTE(v29) = v33;
    if ((v33 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_31:
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obja = v59;
    v49 = [obja countByEnumeratingWithState:&v75 objects:v101 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v76;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v76 != v51)
          {
            objc_enumerationMutation(obja);
          }

          v53 = *(*(&v75 + 1) + 8 * k);
          v54 = [(SBIconListModel *)self indexForIcon:v53];
          [v16 setIconIndex:v54 inGridRange:{objc_msgSend(v18, "gridCellIndexForIconIndex:", v54), -[SBIconListModel gridSizeForIcon:](self, "gridSizeForIcon:", v53)}];
          [v16 setDebuggingIconType:objc_msgSend(objc_opt_class() forIconIndex:{"gridCellInfoIconTypeForIcon:", v53), v54}];
        }

        v50 = [obja countByEnumeratingWithState:&v75 objects:v101 count:16];
      }

      while (v50);
    }

LABEL_39:
    v17 = v58;
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  return v29 & 1;
}

unint64_t __181__SBIconListModel_layOutIconsInGridCellInfo_forInsertingIcon_atGridCellIndex_constrainedToGridRange_preferredDisplacementDirection_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasUsedGridCellsInGridRange:{a2, a3}])
  {
    return 0x8000000000000000;
  }

  v29 = a3;
  v30 = a2;
  v28 = a3;
  v7 = [*(a1 + 40) iconsForGridRange:a2 gridCellInfo:{a3, *(a1 + 48)}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        if (([*(a1 + 56) containsObject:v13] & 1) == 0 && *(a1 + 116) == 1)
        {
          v14 = [v13 gridSizeClass];
          if (v14)
          {
            v15 = v14;
            v16 = [v13 gridSizeClass];
            v17 = [v16 isEqualToString:@"SBHIconGridSizeClassDefault"];

            if ((v17 & 1) == 0)
            {
              v10 -= 10;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = SBIconCoordinateMakeWithGridCellIndex(v30, *(a1 + 112));
  v19 = *(a1 + 112);
  if (_SBIconListIsCoordinateValidForGridSize(v18, v20, v29, v19, *(a1 + 64)))
  {
    v21 = SBHIconGridRangeIntersection(v30, v28, *(a1 + 72), *(a1 + 80), v19);
    v23 = v22;
    if ((SBHIconGridRangeIsEmpty(v21, v22) & 1) == 0)
    {
      v10 += SBHIconGridSizeGetArea(v23) + 100;
    }

    v24 = SBHIconGridDistanceBetweenGridRanges(*(a1 + 88), *(a1 + 96), v30, 65537, *(a1 + 112));
    v26 = v25;
    v6 = v10 - SBHIconGridDistanceGetNumberOfSteps(v24, v25);
    if (*(a1 + 104) && SBHIconGridDistanceGetDirection(v24, v26) == *(a1 + 104))
    {
      v6 += 50;
    }
  }

  else
  {
    v6 = 0x8000000000000000;
  }

  return v6;
}

- (BOOL)needsToReflowIconsForRemovingIcon:(id)a3 inContiguousRegion:(id)a4 gridCellInfoOptions:(unint64_t)a5 mutationOptions:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  if ([(SBIconListModel *)self isContiguousRegionEligibleForBackfill:v11 gridCellInfo:v12])
  {
    if (-[SBIconListModel hasAllFixedIconsInContiguousRegion:gridCellInfo:](self, "hasAllFixedIconsInContiguousRegion:gridCellInfo:", v11, v12) || (v13 = [v12 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v10)}], v13 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = 1;
    }

    else
    {
      [v12 setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v13, -[SBIconListModel gridSizeForIcon:](self, "gridSizeForIcon:", v10)}];
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __108__SBIconListModel_needsToReflowIconsForRemovingIcon_inContiguousRegion_gridCellInfoOptions_mutationOptions___block_invoke;
      v16[3] = &unk_1E808E220;
      v17 = v10;
      v18 = v12;
      v19 = self;
      v20 = &v22;
      v21 = a6;
      [(SBIconListModel *)self enumerateIconsUsingBlock:v16];
      v14 = *(v23 + 24);

      _Block_object_dispose(&v22, 8);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void __108__SBIconListModel_needsToReflowIconsForRemovingIcon_inContiguousRegion_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 32) != v7)
  {
    v12 = v7;
    v8 = [*(a1 + 40) gridCellIndexForIconIndex:a3];
    v9 = *(a1 + 48);
    v10 = [v12 gridSizeClass];
    LODWORD(v8) = [v9 isInsertionRequiredToBeFixedForIcon:v12 ofGridSizeClass:v10 atGridCellIndex:v8 gridCellInfo:*(a1 + 40) mutationOptions:*(a1 + 64)];

    v11 = v8 == [*(a1 + 48) isIconFixed:v12];
    v7 = v12;
    if (!v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (void)relocateAnyAffectedFixedIconsForMovingIcon:(id)a3 fromGridCellIndex:(unint64_t)a4 toGridCellIndex:(unint64_t)a5 intoContiguousRegions:(id)a6 gridCellInfo:(id)a7 gridCellInfoOptions:(unint64_t)a8 mutationOptions:(unint64_t)a9
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  if ([(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfo:v17 gridCellInfoOptions:a8 mutationOptions:a9])
  {
    v23 = v17;
    v24 = v16;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(SBIconListModel *)self reorderFixedIconsInContiguousRegion:*(*(&v25 + 1) + 8 * i) forMovingIcon:v15 fromGridCellIndex:a4 toGridCellIndex:a5 gridCellInfoOptions:a8 mutationOptions:a9];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }

    v17 = v23;
    v16 = v24;
  }

  else
  {
    [(SBIconListModel *)self relocateAnyAffectedFixedIconsWithoutContiguousRegionReflowingForMovingIcon:v15 fromGridCellIndex:a4 toGridCellIndex:a5 intoContiguousRegions:v16 gridCellInfo:v17 gridCellInfoOptions:a8 mutationOptions:a9];
  }
}

- (void)relocateAnyAffectedFixedIconsWithoutContiguousRegionReflowingForMovingIcon:(id)a3 fromGridCellIndex:(unint64_t)a4 toGridCellIndex:(unint64_t)a5 intoContiguousRegions:(id)a6 gridCellInfo:(id)a7 gridCellInfoOptions:(unint64_t)a8 mutationOptions:(unint64_t)a9
{
  v17[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = [v12 gridSizeClass];
  v14 = [(SBIconListModel *)self gridSizeForGridSizeClass:v13 gridCellInfoOptions:a8];
  if ([(SBIconListModel *)self isValidGridRange:a5 options:v14, a8])
  {
    [(SBIconListModel *)self removeFixedIconLocationForIcon:v12];
    v17[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __199__SBIconListModel_relocateAnyAffectedFixedIconsWithoutContiguousRegionReflowingForMovingIcon_fromGridCellIndex_toGridCellIndex_intoContiguousRegions_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
    v16[3] = &unk_1E8088EC8;
    v16[4] = self;
    v16[5] = a5;
    v16[6] = v14;
    v16[7] = a8;
    v16[8] = a9;
    [(SBIconListModel *)self performByExcludingIconsFromLayout:v15 usingBlock:v16];
  }
}

- (void)reorderFixedIconsInContiguousRegion:(id)a3 forMovingIcon:(id)a4 fromGridCellIndex:(unint64_t)a5 toGridCellIndex:(unint64_t)a6 gridCellInfoOptions:(unint64_t)a7 mutationOptions:(unint64_t)a8
{
  v49[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = [(SBIconListModel *)self gridCellInfoWithOptions:a7];
  v39 = [v15 gridSize];
  v16 = [v14 gridSizeClass];
  v17 = [(SBIconListModel *)self gridSizeForGridSizeClass:v16 gridCellInfoOptions:a7];
  if ([(SBIconListModel *)self isValidGridRange:a6 gridCellInfo:v17, v15])
  {
    v18 = [(SBIconListModel *)self iconsForGridRange:a6 gridCellInfo:v17, v15];
    v19 = [v18 count];
    if (!v19 || v19 == 1 && ([v18 containsObject:v14] & 1) != 0)
    {
      goto LABEL_8;
    }

    if ([v13 containsGridCellIndex:a5] && -[SBIconListModel hasFixedIconsInContiguousRegion:gridCellInfo:](self, "hasFixedIconsInContiguousRegion:gridCellInfo:", v13, v15))
    {
      [(SBIconListModel *)self reorderFixedIconsForMovingIcon:v14 withinContiguousRegion:v13 toGridCellIndex:a6 gridCellInfoOptions:a7 mutationOptions:a8];
LABEL_8:

      goto LABEL_18;
    }
  }

  v20 = [v13 gridRange];
  v37 = v21;
  v38 = v20;
  v22 = [v13 startGridCellIndex];
  v23 = [(SBIconListModel *)self fixedIconsInContiguousRegion:v13 gridCellInfo:v15];
  if ([v23 count])
  {
    v33 = v22;
    v35 = v13;
    v24 = [(SBIconListModel *)self iconsInContiguousRegion:v13 gridCellInfo:v15];
    v34 = v16;
    if (([v24 containsObject:v14] & 1) == 0)
    {
      v25 = [v24 arrayByAddingObject:v14];

      v24 = v25;
    }

    v26 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __139__SBIconListModel_reorderFixedIconsInContiguousRegion_forMovingIcon_fromGridCellIndex_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke;
    v40[3] = &unk_1E808E248;
    v43 = a6;
    v44 = v17;
    v47 = v39;
    v45 = v38;
    v46 = v37;
    v41 = v35;
    v27 = v26;
    v42 = v27;
    [v41 enumerateEmptyGridCellIndexesUsingBlock:v40];
    if (v33 != v38)
    {
      v28 = 0;
      do
      {
        [(SBIconListGridCellInfo *)v27 setIconIndex:-1 forGridCellIndex:v28++];
      }

      while (v33 - v38 != v28);
    }

    v29 = [v14 uniqueIdentifier];
    v30 = SBHIconGridRangeRelativeCellIndexForCellIndex(v38, v37, a6, v39);
    v48 = v29;
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
    v49[0] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];

    [(SBIconListModel *)self layOutIcons:v24 inGridCellInfo:v27 startingAtGridCellIndex:0 gridSize:v37 fixedIconLocations:v32 options:a7];
    [(SBIconListModel *)self transferPositionsFromGridCellInfo:v27 representingGridRange:v38 asLocationsForIcons:v37 gridCellInfoOptions:v24 mutationOptions:a7, a8];

    v16 = v34;
    v13 = v35;
  }

LABEL_18:
}

uint64_t __139__SBIconListModel_reorderFixedIconsInContiguousRegion_forMovingIcon_fromGridCellIndex_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke(uint64_t a1, unint64_t a2)
{
  result = SBHIconGridRangeContainsCellIndex(*(a1 + 48), *(a1 + 56), a2, *(a1 + 80));
  if ((result & 1) == 0)
  {
    result = SBHIconGridRangeRowForCellIndex(*(a1 + 64), *(a1 + 72), a2, *(a1 + 80));
    if (result != *(a1 + 74) - 1)
    {
      result = [*(a1 + 32) isGridCellIndexInternal:a2];
      if ((result & 1) == 0)
      {
        v5 = SBHIconGridRangeRelativeCellIndexForCellIndex(*(a1 + 64), *(a1 + 72), a2, *(a1 + 80));
        v6 = *(a1 + 40);

        return [v6 setIconIndex:-1 forGridCellIndex:v5];
      }
    }
  }

  return result;
}

- (void)reorderFixedIconsForMovingIcon:(id)a3 withinContiguousRegion:(id)a4 toGridCellIndex:(unint64_t)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v43 = a3;
  v12 = a4;
  v13 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
  v14 = [v13 gridSize];
  v15 = [v12 gridRange];
  v17 = v16;
  v18 = [(SBIconListModel *)self fixedIconsInContiguousRegion:v12 gridCellInfo:v13];
  if ([v18 count])
  {
    v41 = v18;
    v19 = [(SBIconListModel *)self iconsInContiguousRegion:v12 gridCellInfo:v13];
    v42 = a7;
    v38 = v17;
    if (([v19 containsObject:v43] & 1) == 0)
    {
      v20 = [v19 arrayByAddingObject:v43];

      v19 = v20;
    }

    v40 = [(SBIconListModel *)self icons];
    v21 = [(SBIconListModel *)self indexForIcon:v43];
    v39 = [v43 gridSizeClass];
    v22 = [SBIconListModel gridSizeForGridSizeClass:"gridSizeForGridSizeClass:gridCellInfoOptions:" gridCellInfoOptions:?];
    v23 = SBHIconGridRangeUnion([v13 gridCellIndexForIconIndex:v21], v22, a5, v22, v14);
    v25 = SBHIconGridRangeExtendToGridEdges(v23, v24, 10, v14);
    v27 = v26;
    if (([(SBIconListModel *)self iconLayoutBehavior]& 1) == 0)
    {
      SBIconCoordinateMakeWithGridCellIndex(v25, v14);
      if ((v28 & 1) == 0)
      {
        v25 -= v14;
        v27 = v27 & 0xFFFFFFFF0000FFFFLL | (((v27 + 0x10000) >> 16) << 16);
      }
    }

    v29 = [v12 subcontiguousRegionWithGridRange:{v25, v27}];
    v30 = [(SBIconListModel *)self gridCellInfoByReflowingIconsInContiguousRegion:v29 forMovingIcon:v43 toGridCellIndex:a5 referenceIconOrder:v40 internalCellValidDirections:12 gridCellInfo:v13 gridCellInfoOptions:a6];
    if ([v30 isLayoutOutOfBounds])
    {
      v31 = [(SBIconListModel *)self gridCellInfoByReflowingIconsInContiguousRegion:v12 forMovingIcon:v43 toGridCellIndex:a5 referenceIconOrder:v40 internalCellValidDirections:15 gridCellInfo:v13 gridCellInfoOptions:a6];
      v32 = self;
      v33 = v31;
      v35 = v38;
      v34 = v15;
      v36 = v19;
    }

    else
    {
      v31 = [(SBIconListModel *)self iconsInContiguousRegion:v29 gridCellInfo:v13];
      v34 = [v29 gridRange];
      v32 = self;
      v33 = v30;
      v35 = v37;
      v36 = v31;
    }

    [(SBIconListModel *)v32 transferPositionsFromGridCellInfo:v33 representingGridRange:v34 asLocationsForIcons:v35 gridCellInfoOptions:v36 mutationOptions:a6, v42];

    v18 = v41;
  }
}

- (id)gridCellInfoByReflowingIconsInContiguousRegion:(id)a3 forMovingIcon:(id)a4 toGridCellIndex:(unint64_t)a5 referenceIconOrder:(id)a6 internalCellValidDirections:(unint64_t)a7 gridCellInfo:(id)a8 gridCellInfoOptions:(unint64_t)a9
{
  v53[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a8;
  v16 = a4;
  LODWORD(a8) = [v15 gridSize];
  v17 = [v14 gridRange];
  v19 = v18;
  v31 = [v14 startGridCellIndex];
  LODWORD(a4) = [(SBIconListModel *)self gridSizeForIcon:v16];
  v20 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __176__SBIconListModel_gridCellInfoByReflowingIconsInContiguousRegion_forMovingIcon_toGridCellIndex_referenceIconOrder_internalCellValidDirections_gridCellInfo_gridCellInfoOptions___block_invoke;
  v42[3] = &unk_1E808E270;
  v46 = a4;
  v47 = 0;
  v51 = a8;
  v48 = v17;
  v49 = v19;
  v45 = a5;
  v43 = v14;
  v50 = a7;
  v21 = v20;
  v44 = v21;
  v22 = v14;
  [v22 enumerateEmptyGridCellIndexesUsingBlock:v42];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __176__SBIconListModel_gridCellInfoByReflowingIconsInContiguousRegion_forMovingIcon_toGridCellIndex_referenceIconOrder_internalCellValidDirections_gridCellInfo_gridCellInfoOptions___block_invoke_2;
  v33[3] = &unk_1E808E108;
  v35 = a5;
  v36 = a4;
  v37 = 0;
  v41 = a8;
  v38 = v31;
  v39 = v17;
  v40 = v19;
  v23 = v21;
  v34 = v23;
  LOWORD(a4) = a8;
  SBHIconGridRangeEnumerateCellIndexes(v17, v19, a8, v33);
  v24 = [v16 uniqueIdentifier];

  v25 = SBHIconGridRangeRelativeCellIndexForCellIndex(v17, v19, a5, a4);
  v52 = v24;
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
  v53[0] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];

  v28 = [(SBIconListModel *)self iconsInContiguousRegion:v22 gridCellInfo:v15];

  [(SBIconListModel *)self layOutIcons:v28 inGridCellInfo:v23 startingAtGridCellIndex:0 gridSize:v19 fixedIconLocations:v27 options:a9];
  v29 = v23;

  return v23;
}

uint64_t __176__SBIconListModel_gridCellInfoByReflowingIconsInContiguousRegion_forMovingIcon_toGridCellIndex_referenceIconOrder_internalCellValidDirections_gridCellInfo_gridCellInfoOptions___block_invoke(uint64_t a1, unint64_t a2)
{
  result = SBHIconGridRangeContainsCellIndex(*(a1 + 48), *(a1 + 56), a2, *(a1 + 88));
  if ((result & 1) == 0)
  {
    result = SBHIconGridRangeRowForCellIndex(*(a1 + 64), *(a1 + 72), a2, *(a1 + 88));
    if (result != *(a1 + 74) - 1)
    {
      result = [*(a1 + 32) isGridCellIndexInternal:a2 directions:*(a1 + 80)];
      if ((result & 1) == 0)
      {
        v5 = SBHIconGridRangeRelativeCellIndexForCellIndex(*(a1 + 64), *(a1 + 72), a2, *(a1 + 88));
        v6 = *(a1 + 40);

        return [v6 setIconIndex:-1 forGridCellIndex:v5];
      }
    }
  }

  return result;
}

uint64_t __176__SBIconListModel_gridCellInfoByReflowingIconsInContiguousRegion_forMovingIcon_toGridCellIndex_referenceIconOrder_internalCellValidDirections_gridCellInfo_gridCellInfoOptions___block_invoke_2(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  result = SBHIconGridRangeContainsCellIndex(*(a1 + 40), *(a1 + 48), a2, *(a1 + 80));
  if ((result & 1) == 0)
  {
    if (*(a1 + 56) <= a2)
    {
      *a3 = 1;
    }

    else
    {
      v7 = SBHIconGridRangeRelativeCellIndexForCellIndex(*(a1 + 64), *(a1 + 72), a2, *(a1 + 80));
      v8 = *(a1 + 32);

      return [v8 setIconIndex:-1 forGridCellIndex:v7];
    }
  }

  return result;
}

- (void)transferPositionsFromGridCellInfo:(id)a3 representingGridRange:(SBHIconGridRange)a4 asFixedLocationsForIcons:(id)a5 gridCellInfoOptions:(unint64_t)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v29 = a6;
  v11 = [(SBIconListModel *)self gridSizeWithOptions:a6];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    v16 = v11;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [v9 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v18)}];
        if (v19 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v11 & 0xFFFFFFFF00000000 | v16, v20 = SBHIconGridRangeCellIndexForRelativeCellIndex(a4.cellIndex, a4.size.columns, v19, v11), v20 == 0x7FFFFFFFFFFFFFFFLL))
        {
          [(SBIconListModel *)self removeFixedIconLocationForIcon:v18];
        }

        else
        {
          [(SBIconListModel *)self setFixedLocation:v20 forIcon:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * j);
        if ([v9 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v26)}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = [v26 gridSizeClass];
          v28 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v27 withoutFixedIconsNearGridRange:a4.cellIndex gridCellInfoOptions:*&a4.size.columns, v29];
          if (v28 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(SBIconListModel *)self removeFixedIconLocationForIcon:v26];
          }

          else
          {
            [(SBIconListModel *)self setFixedLocation:v28 forIcon:v26];
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);
  }
}

- (void)transferLocationsForIconsFromGridCellInfo:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SBIconListModel *)self icons];
  -[SBIconListModel transferPositionsFromGridCellInfo:representingGridRange:asLocationsForIcons:gridCellInfoOptions:mutationOptions:](self, "transferPositionsFromGridCellInfo:representingGridRange:asLocationsForIcons:gridCellInfoOptions:mutationOptions:", v8, 0, [v8 gridSize], v9, a4, a5);
}

- (void)transferPositionsFromGridCellInfo:(id)a3 representingGridRange:(SBHIconGridRange)a4 asLocationsForIcons:(id)a5 gridCellInfoOptions:(unint64_t)a6 mutationOptions:(unint64_t)a7
{
  v10 = *&a4.size.columns;
  cellIndex = a4.cellIndex;
  v69 = *MEMORY[0x1E69E9840];
  v47 = a3;
  obj = a5;
  v13 = [(SBIconListModel *)self icons];
  v14 = [v13 copy];

  v15 = [(SBIconListModel *)self gridCellInfoWithOptions:a6];
  v16 = [(SBIconListModel *)self gridSizeWithOptions:a6];
  v40 = a7 & 0xFFFFFFE8FCDFFEFFLL | 0x1703000000;
  v17 = [(SBIconListModel *)self layoutExcludedIcons];
  v39 = [v17 copy];

  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __131__SBIconListModel_transferPositionsFromGridCellInfo_representingGridRange_asLocationsForIcons_gridCellInfoOptions_mutationOptions___block_invoke;
  v64[3] = &unk_1E808E298;
  v64[4] = self;
  v42 = v15;
  v65 = v42;
  v66 = cellIndex;
  v67 = v10;
  v18 = [v14 bs_filter:v64];
  v19 = [v18 mutableCopy];

  [(SBIconListModel *)self setLayoutExcludedIcons:v19];
  if (SBHIconGridSizeEqualToIconGridSize(v10, *&v16))
  {
    [(SBIconListModel *)self setIconOrderFromGridCellInfo:v47];
  }

  v20 = SBHIconGridRangeIntersection(cellIndex, v10, 0, *&v16, v16.columns);
  v22 = v21;
  v23 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __131__SBIconListModel_transferPositionsFromGridCellInfo_representingGridRange_asLocationsForIcons_gridCellInfoOptions_mutationOptions___block_invoke_2;
  v53[3] = &unk_1E808E2C0;
  v59 = v20;
  v60 = v22;
  v63 = v16;
  v48 = v47;
  v54 = v48;
  v38 = v23;
  v55 = v38;
  v46 = v14;
  v56 = v46;
  v37 = v19;
  v57 = v37;
  v58 = self;
  v45 = a6;
  v61 = a6;
  v62 = v40;
  SBHIconGridRangeEnumerateCellIndexes(v20, v22, v16.columns, v53);
  [(SBIconListModel *)self setLayoutExcludedIcons:v39];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obja = obj;
  v24 = [obja countByEnumeratingWithState:&v49 objects:v68 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v50;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v49 + 1) + 8 * i);
        v29 = [v46 indexOfObject:{v28, v37, v38}];
        if ([v48 gridCellIndexForIconIndex:v29] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = [v28 gridSizeClass];
          v31 = [(SBIconListModel *)self gridSizeForIcon:v28];
          v32 = [v42 gridCellIndexForIconIndex:v29];
          v33 = v31;
          v34 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v30 withoutFixedIconsNearGridRange:v32 gridCellInfoOptions:*&v31, v45];
          if (v34 == 0x7FFFFFFFFFFFFFFFLL && (v41 = v41 & 0xFFFFFFFF00000000 | *&v31, v34 = [SBIconListModel firstFreeGridCellIndexOfRangeOfSize:"firstFreeGridCellIndexOfRangeOfSize:gridCellInfoOptions:" gridCellInfoOptions:?], v34 == 0x7FFFFFFFFFFFFFFFLL))
          {
            [(SBIconIndexMutableList *)self->_icons moveNode:v28 toIndex:[(SBIconIndexMutableList *)self->_icons count]];
          }

          else
          {
            v35 = v34;
            [(SBIconListModel *)self removeFixedIconLocationsForIconsInGridRange:v34 gridCellInfoOptions:v33, v45];
            [(SBIconListModel *)self removeFixedIconLocationForIcon:v28];
            v36 = [(SBIconListModel *)self moveContainedIcon:v28 toGridCellIndex:v35 gridCellInfoOptions:v45 mutationOptions:v40];
          }
        }
      }

      v25 = [obja countByEnumeratingWithState:&v49 objects:v68 count:16];
    }

    while (v25);
  }

  [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:v45];
  [(SBIconListModel *)self removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:v45];
}

void __131__SBIconListModel_transferPositionsFromGridCellInfo_representingGridRange_asLocationsForIcons_gridCellInfoOptions_mutationOptions___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) iconIndexForGridCellIndex:{SBHIconGridRangeRelativeCellIndexForCellIndex(*(a1 + 72), *(a1 + 80), a2, *(a1 + 104))}];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v4 != -1)
  {
    v6 = v4;
    if (([*(a1 + 40) containsIndex:v4] & 1) == 0)
    {
      [*(a1 + 40) addIndex:v6];
      v8 = [*(a1 + 48) objectAtIndex:v6];
      [*(a1 + 56) removeObject:v8];
      [*(a1 + 64) setLayoutExcludedIcons:*(a1 + 56)];
      [*(a1 + 64) removeFixedIconLocationsForIconsInGridRange:a2 gridCellInfoOptions:{objc_msgSend(*(a1 + 64), "gridSizeForIcon:", v8), *(a1 + 88)}];
      [*(a1 + 64) removeFixedIconLocationForIcon:v8];
      v7 = [*(a1 + 64) moveContainedIcon:v8 toGridCellIndex:a2 gridCellInfoOptions:*(a1 + 88) mutationOptions:*(a1 + 96)];
      [*(a1 + 64) sortByLayoutOrderWithGridCellInfoOptions:*(a1 + 88)];
    }
  }
}

- (id)replaceLayoutWithGridCellInfo:(id)a3 mutationOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridSize];
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    v8 = [(SBIconListModel *)self rotatedGridSizeWithOptions:0];
    v9 = [v6 gridSize];
    v10 = v9;
    v11 = SBHIconGridSizeEqualToIconGridSize(v9, *&v8);
    v12 = [(SBIconListModel *)self icons];
    if (v11)
    {
      v7 = v8;
    }
  }

  else
  {
    LODWORD(v10) = [v6 gridSize];
    v12 = [(SBIconListModel *)self icons];
    v10 = v10;
  }

  [(SBIconListModel *)self transferPositionsFromGridCellInfo:v6 representingGridRange:0 asLocationsForIcons:*&v7 gridCellInfoOptions:v12 mutationOptions:[(SBIconListModel *)self bestGridCellInfoOptionsForGridCellInfo:v6], a4 | 0x200];
  v13 = [v6 iconIndexesInGridRange:{0, v10}];
  v14 = [(SBIconListModel *)self iconsAtIndexes:v13];
  v15 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:v14 ignoringTrailingIconCheck:0 options:a4];

  return v15;
}

- (int64_t)compareMovementChangeWithGridCellInfo:(id)a3 toGridCellInfo:(id)a4 orGridCellInfo:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 movementChangeInfoFromGridCellInfo:v8];
  v11 = v10;
  v12 = [v7 movementChangeInfoFromGridCellInfo:v8];
  v14 = v13;

  v15 = -1;
  v16 = 1;
  if (v9 >= v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  if (v9 <= v12)
  {
    v16 = v17;
  }

  if (v11 >= v14)
  {
    v15 = v16;
  }

  if (v11 <= v14)
  {
    return v15;
  }

  else
  {
    return 1;
  }
}

- (id)gridCellInfoWithLeastMovementChangeWithGridCellInfo:(id)a3 toGridCellInfo:(id)a4 orGridCellInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SBIconListModel *)self compareMovementChangeWithGridCellInfo:a3 toGridCellInfo:v8 orGridCellInfo:v9];
  v11 = v8;
  if ((v10 + 1) < 2)
  {
    goto LABEL_4;
  }

  if (v10 == 1)
  {
    v11 = v9;
LABEL_4:
    v12 = v11;
    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (unint64_t)bestGridCellInfoOptionsForGridCellInfo:(id)a3
{
  v4 = a3;
  [(SBIconListModel *)self gridSize];
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    if (SBHIconGridSizeEqualToIconGridSize([v4 gridSize], -[SBIconListModel rotatedGridSizeWithOptions:](self, "rotatedGridSizeWithOptions:", 0)))
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    [v4 gridSize];
    v5 = 0;
  }

  return v5;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsNearGridRange:(SBHIconGridRange)a4 gridCellInfo:(id)a5 passingTest:(id)a6
{
  v7 = *&a4.size.columns;
  cellIndex = a4.cellIndex;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = -[SBIconListModel firstGridCellIndexOfRangeOfGridSizeClass:withoutIconsNearGridRange:withinGridRange:gridCellInfo:passingTest:](self, "firstGridCellIndexOfRangeOfGridSizeClass:withoutIconsNearGridRange:withinGridRange:gridCellInfo:passingTest:", v13, cellIndex, v7, 0, [v12 gridSize], v12, v11);

  return v14;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsNearGridRange:(SBHIconGridRange)a4 withinGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6 passingTest:(id)a7
{
  size = a4.size;
  cellIndex = a4.cellIndex;
  v12 = a7;
  v13 = a3;
  v14 = a6;
  v29 = a7;
  v25 = v13;
  LODWORD(a6) = [(SBIconListModel *)self gridSizeForGridSizeClass:v13 gridCellInfo:v14];
  v15 = a6 >> 16;
  v24 = v14;
  v16 = [v14 gridSize];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = MEMORY[0x1E69E9820];
  v26 = a6;
  v28 = v16;
  v17 = v16;
  v18 = -a6;
  v19 = -v15;
  while (1)
  {
    v31[0] = v27;
    v31[1] = 3221225472;
    v31[2] = __127__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsNearGridRange_withinGridRange_gridCellInfo_passingTest___block_invoke;
    v31[3] = &unk_1E808E2E8;
    v34 = a5;
    v35 = v28;
    v20 = v29;
    v32 = v20;
    v33 = &v36;
    v12 = v12 & 0xFFFFFFFF00000000 | v26;
    v13 = v13 & 0xFFFFFFFF00000000 | v17;
    SBHIconGridRangeEnumerateTouchingRanges(cellIndex, *&size, v12, v13, 1, v31);
    if (v37[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v14 = v14 & 0xFFFFFFFF00000000 | v17;
    cellIndex = SBHIconGridRangeInset(cellIndex, *&size, v18, v19, v14);
    size = v21;
    v7 = v7 & 0xFFFFFFFF00000000 | v17;
    if (SBHIconGridSizeEqualToIconGridSize(v21, v7))
    {
      break;
    }
  }

  v22 = v37[3];
  _Block_object_dispose(&v36, 8);

  return v22;
}

uint64_t __127__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsNearGridRange_withinGridRange_gridCellInfo_passingTest___block_invoke(uint64_t a1, unint64_t a2, int a3, _BYTE *a4)
{
  result = SBHIconGridRangeContainsIconGridRange(*(a1 + 48), *(a1 + 56), a2, a3, *(a1 + 64));
  if (result)
  {
    result = (*(*(a1 + 32) + 16))();
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = a2;
      *a4 = 1;
    }
  }

  return result;
}

- (unint64_t)bestGridCellIndexOfRangeOfGridSizeClass:(id)a3 withinGridRange:(SBHIconGridRange)a4 gridCellInfo:(id)a5 passingTest:(id)a6
{
  v8 = *&a4.size.columns;
  cellIndex = a4.cellIndex;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  LODWORD(self) = [(SBIconListModel *)self gridSizeForGridSizeClass:v11 gridCellInfo:v12];
  v14 = [v12 gridSize];
  v15 = v14;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0x8000000000000000;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0x7FFFFFFFFFFFFFFFLL;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__SBIconListModel_bestGridCellIndexOfRangeOfGridSizeClass_withinGridRange_gridCellInfo_passingTest___block_invoke;
  v19[3] = &unk_1E808E310;
  v23 = cellIndex;
  v24 = v8;
  v25 = v14;
  v16 = v13;
  v20 = v16;
  v21 = v30;
  v22 = &v26;
  SBHIconGridRangeEnumerateSubranges(cellIndex, v8, self, v15, 1, v19);
  v17 = v27[3];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v30, 8);

  return v17;
}

uint64_t __100__SBIconListModel_bestGridCellIndexOfRangeOfGridSizeClass_withinGridRange_gridCellInfo_passingTest___block_invoke(uint64_t a1, unint64_t a2, int a3)
{
  result = SBHIconGridRangeContainsIconGridRange(*(a1 + 56), *(a1 + 64), a2, a3, *(a1 + 72));
  if (result)
  {
    result = (*(*(a1 + 32) + 16))();
    if (result > *(*(*(a1 + 40) + 8) + 24))
    {
      *(*(*(a1 + 48) + 8) + 24) = a2;
      *(*(*(a1 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutFixedIconsNearGridRange:(SBHIconGridRange)a4 gridCellInfo:(id)a5
{
  v5 = *&a4.size.columns;
  cellIndex = a4.cellIndex;
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutFixedIconsNearGridRange_gridCellInfo___block_invoke;
  v13[3] = &unk_1E808E338;
  v13[4] = self;
  v14 = v9;
  v10 = v9;
  v11 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:a3 withoutIconsNearGridRange:cellIndex gridCellInfo:v5 passingTest:v10, v13];

  return v11;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsNearGridRange:(SBHIconGridRange)a4 gridCellInfo:(id)a5
{
  v5 = *&a4.size.columns;
  cellIndex = a4.cellIndex;
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsNearGridRange_gridCellInfo___block_invoke;
  v13[3] = &unk_1E808E338;
  v13[4] = self;
  v14 = v9;
  v10 = v9;
  v11 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:a3 withoutIconsNearGridRange:cellIndex gridCellInfo:v5 passingTest:v10, v13];

  return v11;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsNearGridRange:(SBHIconGridRange)a4 withinGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6
{
  v6 = *&a5.size.columns;
  cellIndex = a5.cellIndex;
  v8 = *&a4.size.columns;
  v9 = a4.cellIndex;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsNearGridRange_withinGridRange_gridCellInfo___block_invoke;
  v16[3] = &unk_1E808E338;
  v16[4] = self;
  v17 = v12;
  v13 = v12;
  v14 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:a3 withoutIconsNearGridRange:v9 withinGridRange:v8 gridCellInfo:cellIndex passingTest:v6, v13, v16];

  return v14;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 nearGridRange:(SBHIconGridRange)a4 withinGridRange:(SBHIconGridRange)a5 gridCellInfo:(id)a6 withoutIconsPassingTest:(id)a7
{
  v7 = *&a5.size.columns;
  cellIndex = a5.cellIndex;
  v9 = *&a4.size.columns;
  v10 = a4.cellIndex;
  v13 = a6;
  v14 = a7;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __127__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_nearGridRange_withinGridRange_gridCellInfo_withoutIconsPassingTest___block_invoke;
  v19[3] = &unk_1E808E360;
  v19[4] = self;
  v20 = v13;
  v21 = v14;
  v15 = v14;
  v16 = v13;
  v17 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:a3 withoutIconsNearGridRange:v10 withinGridRange:v9 gridCellInfo:cellIndex passingTest:v7, v16, v19];

  return v17;
}

uint64_t __127__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_nearGridRange_withinGridRange_gridCellInfo_withoutIconsPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) iconsForGridRange:a2 gridCellInfo:{a3, *(a1 + 40)}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (!(*(*(a1 + 48) + 16))(*(a1 + 48)))
        {
          v9 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutIconsEqualToOrLargerThanGridSizeClass:(id)a4 nearGridRange:(SBHIconGridRange)a5 withinGridRange:(SBHIconGridRange)a6 gridCellInfo:(id)a7
{
  v7 = *&a6.size.columns;
  cellIndex = a6.cellIndex;
  v9 = *&a5.size.columns;
  v10 = a5.cellIndex;
  v14 = a7;
  v15 = a3;
  v16 = [(SBIconListModel *)self gridSizeAreaForGridSizeClass:a4 gridCellInfo:v14];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __148__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsEqualToOrLargerThanGridSizeClass_nearGridRange_withinGridRange_gridCellInfo___block_invoke;
  v20[3] = &unk_1E808E388;
  v20[4] = self;
  v21 = v14;
  v22 = v16;
  v17 = v14;
  v18 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v15 nearGridRange:v10 withinGridRange:v9 gridCellInfo:cellIndex withoutIconsPassingTest:v7, v17, v20];

  return v18;
}

BOOL __148__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsEqualToOrLargerThanGridSizeClass_nearGridRange_withinGridRange_gridCellInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 gridSizeClass];
  LODWORD(v3) = [v3 gridSizeAreaForGridSizeClass:v4 gridCellInfo:*(a1 + 40)];

  return v3 < *(a1 + 48);
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutFixedIconsNearGridRange:(SBHIconGridRange)a4 gridCellInfoOptions:(unint64_t)a5
{
  v6 = *&a4.size.columns;
  cellIndex = a4.cellIndex;
  v9 = a3;
  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  v11 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v9 withoutFixedIconsNearGridRange:cellIndex gridCellInfo:v6, v10];

  return v11;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutFixedIconsNearContiguousRegion:(id)a4 gridCellInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = -[SBIconListModel firstGridCellIndexOfRangeOfGridSizeClass:withoutFixedIconsNearGridRange:gridCellInfo:](self, "firstGridCellIndexOfRangeOfGridSizeClass:withoutFixedIconsNearGridRange:gridCellInfo:", v9, [a4 endGridCellIndex], 65537, v8);

  return v10;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)a3 withoutFixedIconsNearContiguousRegion:(id)a4 gridCellInfoOptions:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  v11 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:v9 withoutFixedIconsNearContiguousRegion:v8 gridCellInfo:v10];

  return v11;
}

- (id)contiguousRegionForGridCellIndex:(unint64_t)a3 gridCellInfoOptions:(unint64_t)a4
{
  v5 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v6 = [v5 contiguousRegionForGridCellIndex:a3];

  return v6;
}

- (unint64_t)firstGridCellIndexOfNaturalGapInRange:(_NSRange)a3 gridCellInfo:(id)a4
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (([(SBIconListModel *)self iconLayoutBehavior]& 1) != 0)
  {
    goto LABEL_23;
  }

  v11 = [v9 gridSize];
  v12 = v11;
  v29 = v11;
  Area = SBHIconGridSizeGetArea(v11);
  v30 = v12;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v5 = v5 & 0xFFFFFFFF00000000 | 0x10001;
    v14 = [v9 indexOfFirstEmptyGridCellRangeOfSize:v5 inGridCellIndexRange:{location, length}];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v15 = v14;
    v28 = v10;
    v16 = v29;
    while (1)
    {
      location = v15 + 1;
      length = Area - (v15 + 1);
      if (!v15)
      {
        location = 1;
        goto LABEL_14;
      }

      v4 = v4 & 0xFFFFFFFF00000000 | v16;
      v17 = SBIconCoordinateMakeWithGridCellIndex(v15, v4);
      if (v17 == 1 || v17 == v30)
      {
        goto LABEL_14;
      }

      v19 = [v9 iconIndexForGridCellIndex:v15 - 1];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_14;
      }

      v20 = [(SBIconListModel *)self iconAtIndex:v19];
      if (![(SBIconListModel *)self isIconFixed:v20])
      {
        break;
      }

      v16 = v29;
LABEL_14:
      v5 = v5 & 0xFFFFFFFF00000000 | 0x10001;
      v21 = [v9 indexOfFirstEmptyGridCellRangeOfSize:v5 inGridCellIndexRange:{location, Area - (v15 + 1)}];
      v15 = v21;
LABEL_15:
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v28;
        goto LABEL_23;
      }
    }

    v26 = [v20 gridSizeClass];
    v27 = v27 & 0xFFFFFFFF00000000 | 0x10001;
    v16 = v29;
    if (!SBHIconGridSizeEqualToIconGridSize(-[SBIconListModel gridSizeForGridSizeClass:](self, "gridSizeForGridSizeClass:"), 65537) || (v22 = [v9 iconIndexForGridCellIndex:v15 + 1], v22 == 0x7FFFFFFFFFFFFFFFLL))
    {

      v5 = v5 & 0xFFFFFFFF00000000 | 0x10001;
      v21 = [v9 indexOfFirstEmptyGridCellRangeOfSize:v5 inGridCellIndexRange:{v15 + 1, Area - (v15 + 1)}];
      v15 = v21;
      goto LABEL_15;
    }

    v24 = [(SBIconListModel *)self iconAtIndex:v22];
    v25 = [(SBIconListModel *)self isIconFixed:v24];
    v10 = v28;
    if (!v25)
    {
      v10 = v15;
    }
  }

  while (v25);
LABEL_23:

  return v10;
}

- (id)iconsByReplacingIconsNearNaturalGapWithPlaceholder:(id)a3 referenceIconOrder:(id *)a4 gridCellInfo:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(SBIconListModel *)self allowedGridSizeClasses];
  v10 = [(SBIconListModel *)self iconGridSizeClassSizes];
  v11 = [v10 bestGridSizeClassForGridSize:65538 allowedGridSizeClasses:v9];
  if (v11)
  {
    v27 = v10;
    v28 = v9;
    v12 = [(SBIconListModel *)self gridSize];
    v31 = v12;
    v13 = [(SBIconListModel *)self firstGridCellIndexOfNaturalGapInRange:0 gridCellInfo:SBHIconGridSizeGetArea(*&v12), v8];
    v14 = 0;
    v15 = 0;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v13;
      v15 = 0;
      v14 = 0;
      v29 = self;
      do
      {
        v17 = -[SBIconListModel iconAtIndex:](self, "iconAtIndex:", [v8 iconIndexForGridCellIndex:v16 - 1]);
        v18 = [SBPlaceholderIcon placeholderForIcon:v17];
        [v18 setGridSizeClass:v11];
        if (!v15)
        {
          v19 = v8;
          v20 = v11;
          v21 = v7;
          v15 = [v7 mutableCopy];
          if (a4)
          {
            v22 = [*a4 mutableCopy];
          }

          else
          {
            v22 = 0;
          }

          v14 = v22;
          v7 = v21;
          v11 = v20;
          v8 = v19;
          self = v29;
        }

        [v15 replaceObjectAtIndex:objc_msgSend(v15 withObject:{"indexOfObjectIdenticalTo:", v17), v18}];
        [v14 replaceObjectAtIndex:objc_msgSend(v14 withObject:{"indexOfObjectIdenticalTo:", v17), v18}];
        v9 = v9 & 0xFFFFFFFF00000000 | v31;
        v16 = [(SBIconListModel *)self firstGridCellIndexOfNaturalGapInRange:v16 + 1 gridCellInfo:SBHIconGridSizeGetArea(v9) - (v16 + 1), v8];
      }

      while (v16 != 0x7FFFFFFFFFFFFFFFLL);
    }

    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = v7;
    }

    v24 = v23;
    if (a4)
    {
      v25 = v14;
      *a4 = v14;
    }

    v10 = v27;
    v9 = v28;
  }

  else
  {
    v24 = v7;
  }

  return v24;
}

- (SBHIconGridSize)gridSizeWithOptions:(unint64_t)a3
{
  v5 = [(SBIconListModel *)self gridSize];
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:a3]&& [(SBIconListModel *)self allowsRotatedLayout])
  {

    return SBHIconGridSizeRotate(*&v5);
  }

  else
  {
    return v5;
  }
}

- (SBHIconGridSize)rotatedGridSizeWithOptions:(unint64_t)a3
{
  v5 = [(SBIconListModel *)self gridSize];
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:a3]|| ![(SBIconListModel *)self allowsRotatedLayout])
  {
    return v5;
  }

  else
  {

    return SBHIconGridSizeRotate(*&v5);
  }
}

- (unint64_t)rotatedGridCellInfoOptions:(unint64_t)a3
{
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:?]|| ![(SBIconListModel *)self allowsRotatedLayout])
  {
    return a3 & 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    return a3 | 2;
  }
}

- (SBHIconGridSize)boundedGridSizeWithOptions:(unint64_t)a3
{
  v5 = [(SBIconListModel *)self gridSizeWithOptions:?];
  columns = v5.columns;
  v7 = HIWORD(*&v5);
  v8 = v5;
  if (SBHIconGridSizeIsHorizontallyInfinite(v5.columns))
  {
    v9 = [(SBIconListModel *)self gridCellInfoWithOptions:a3];
    columns = [v9 numberOfUsedColumns];
    if (!SBHIconGridSizeIsVerticallyInfinite(v8))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (SBHIconGridSizeIsVerticallyInfinite(v8))
  {
    v9 = [(SBIconListModel *)self gridCellInfoWithOptions:a3];
LABEL_6:
    LOWORD(v7) = [v9 numberOfUsedRows];
LABEL_7:
  }

  return (columns | (v7 << 16));
}

- (id)iconsForLayoutWithGridCellInfoOptions:(unint64_t)a3
{
  v4 = [(SBIconListModel *)self iconsWithGridCellInfoOptions:a3];
  v5 = [(SBIconListModel *)self filterIconsForLayout:v4];

  return v5;
}

- (id)gridCellInfoWithOptions:(unint64_t)a3
{
  ++self->_layoutGenerationCount;
  v5 = [(SBIconListModel *)self gridSizeWithOptions:?];

  return [(SBIconListModel *)self gridCellInfoForGridSize:v5 options:a3];
}

- (id)gridCellInfoForGridSize:(SBHIconGridSize)a3 options:(unint64_t)a4
{
  v7 = [(SBIconListModel *)self icons];
  v8 = [(SBIconListModel *)self iconsForLayoutWithGridCellInfoOptions:a4];
  v9 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:a4];
  v10 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a4];
  v11 = [objc_opt_class() iconGridCellInfoForIcons:v8 gridSize:*&a3 gridSizeClassSizes:v10 iconLayoutBehavior:-[SBIconListModel iconLayoutBehavior](self referenceIconOrder:"iconLayoutBehavior") fixedIconLocations:v7 options:{v9, a4}];

  return v11;
}

- (id)gridCellInfoExcludingIcons:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self icons];
  v8 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:a4];
  v9 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a4];
  v10 = [(SBIconListModel *)self gridSizeWithOptions:a4];
  v11 = [(SBIconListModel *)self iconLayoutBehavior];
  v12 = [(SBIconListModel *)self iconsForLayoutWithGridCellInfoOptions:a4];
  v13 = [v12 mutableCopy];

  [v13 removeObjectsInArray:v6];
  v14 = [objc_opt_class() iconGridCellInfoForIcons:v13 gridSize:*&v10 gridSizeClassSizes:v9 iconLayoutBehavior:v11 referenceIconOrder:v7 fixedIconLocations:v8 options:a4];

  return v14;
}

- (id)gridCellInfoForIcons:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self icons];
  v8 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:a4];
  v9 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a4];
  v10 = [(SBIconListModel *)self gridSizeWithOptions:a4];
  v11 = [(SBIconListModel *)self iconLayoutBehavior];
  v12 = [(SBIconListModel *)self filterIconsForLayout:v6];

  v13 = [objc_opt_class() iconGridCellInfoForIcons:v12 gridSize:*&v10 gridSizeClassSizes:v9 iconLayoutBehavior:v11 referenceIconOrder:v7 fixedIconLocations:v8 options:a4];

  return v13;
}

- (id)gridCellInfoForIcons:(id)a3 gridSize:(SBHIconGridSize)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SBIconListModel *)self icons];
  v10 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:a5];
  v11 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a5];
  v12 = [(SBIconListModel *)self iconLayoutBehavior];
  v13 = [(SBIconListModel *)self filterIconsForLayout:v8];

  v14 = [objc_opt_class() iconGridCellInfoForIcons:v13 gridSize:*&a4 gridSizeClassSizes:v11 iconLayoutBehavior:v12 referenceIconOrder:v9 fixedIconLocations:v10 options:a5];

  return v14;
}

- (id)gridCellInfoForIcons:(id)a3 referenceIconOrder:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:a5];
  v11 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a5];
  v12 = [(SBIconListModel *)self gridSizeWithOptions:a5];
  v13 = [(SBIconListModel *)self iconLayoutBehavior];
  v14 = [(SBIconListModel *)self filterIconsForLayout:v9];

  v15 = [objc_opt_class() iconGridCellInfoForIcons:v14 gridSize:*&v12 gridSizeClassSizes:v11 iconLayoutBehavior:v13 referenceIconOrder:v8 fixedIconLocations:v10 options:a5];

  return v15;
}

- (id)gridCellInfoForIcons:(id)a3 gridSize:(SBHIconGridSize)a4 referenceIconOrder:(id)a5 options:(unint64_t)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:a6];
  v13 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a6];
  v14 = [(SBIconListModel *)self iconLayoutBehavior];
  v15 = [(SBIconListModel *)self filterIconsForLayout:v11];

  v16 = [objc_opt_class() iconGridCellInfoForIcons:v15 gridSize:*&a4 gridSizeClassSizes:v13 iconLayoutBehavior:v14 referenceIconOrder:v10 fixedIconLocations:v12 options:a6];

  return v16;
}

- (id)gridCellInfoForIcons:(id)a3 gridSize:(SBHIconGridSize)a4 referenceIconOrder:(id)a5 fixedIconLocations:(id)a6 options:(unint64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a7];
  v16 = [(SBIconListModel *)self iconLayoutBehavior];
  v17 = [(SBIconListModel *)self filterIconsForLayout:v14];

  v18 = [objc_opt_class() iconGridCellInfoForIcons:v17 gridSize:*&a4 gridSizeClassSizes:v15 iconLayoutBehavior:v16 referenceIconOrder:v13 fixedIconLocations:v12 options:a7];

  return v18;
}

- (void)layOutIcons:(id)a3 atIndexes:(id)a4 inGridCellInfo:(id)a5 startingAtGridCellIndex:(unint64_t)a6 gridSize:(SBHIconGridSize)a7 fixedIconLocations:(id)a8 options:(unint64_t)a9
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(SBIconListModel *)self icons];
  v19 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:a9];
  v20 = [(SBIconListModel *)self iconLayoutBehavior];
  v22 = [(SBIconListModel *)self filterIconsForLayout:v17];

  [objc_opt_class() layOutIcons:v22 atIndexes:v16 inGridCellInfo:v15 startingAtGridCellIndex:a6 gridSize:*&a7 gridSizeClassSizes:v19 iconLayoutBehavior:v20 referenceIconOrder:v18 fixedIconLocations:v14 options:a9];
}

- (void)layOutIcons:(id)a3 inGridCellInfo:(id)a4 startingAtGridCellIndex:(unint64_t)a5 gridSize:(SBHIconGridSize)a6 fixedIconLocations:(id)a7 options:(unint64_t)a8
{
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [(SBIconListModel *)self icons];
  v18 = [(SBIconListModel *)self iconGridSizeClassSizes];
  v19 = [(SBIconListModel *)self iconLayoutBehavior];
  v22 = [(SBIconListModel *)self filterIconsForLayout:v16];

  v20 = [v22 count];
  v21 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v20}];
  [objc_opt_class() layOutIcons:v22 atIndexes:v21 inGridCellInfo:v15 startingAtGridCellIndex:a5 gridSize:*&a6 gridSizeClassSizes:v18 iconLayoutBehavior:v19 referenceIconOrder:v17 fixedIconLocations:v14 options:a8];
}

- (void)layOutIcons:(id)a3 inGridCellInfo:(id)a4 startingAtGridCellIndex:(unint64_t)a5 gridSize:(SBHIconGridSize)a6 referenceIconOrder:(id)a7 fixedIconLocations:(id)a8 options:(unint64_t)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a4;
  v18 = a3;
  v22 = [(SBIconListModel *)self iconGridSizeClassSizes];
  v19 = [(SBIconListModel *)self iconLayoutBehavior];
  v20 = [v18 count];
  v21 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v20}];
  [objc_opt_class() layOutIcons:v18 atIndexes:v21 inGridCellInfo:v17 startingAtGridCellIndex:a5 gridSize:*&a6 gridSizeClassSizes:v22 iconLayoutBehavior:v19 referenceIconOrder:v16 fixedIconLocations:v15 options:a9];
}

+ (id)iconGridCellInfoForIcons:(id)a3 gridSize:(SBHIconGridSize)a4 gridSizeClassSizes:(id)a5 iconLayoutBehavior:(unint64_t)a6 referenceIconOrder:(id)a7 fixedIconLocations:(id)a8 options:(unint64_t)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a3;
  v19 = [[SBIconListGridCellInfo alloc] initWithGridSize:*&a4];
  v20 = [v18 count];
  v21 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v20}];
  [a1 layOutIcons:v18 atIndexes:v21 inGridCellInfo:v19 startingAtGridCellIndex:0 gridSize:*&a4 gridSizeClassSizes:v17 iconLayoutBehavior:a6 referenceIconOrder:v16 fixedIconLocations:v15 options:a9];

  return v19;
}

+ (void)layOutIcons:(id)a3 atIndexes:(id)a4 inGridCellInfo:(id)a5 startingAtGridCellIndex:(unint64_t)a6 gridSize:(SBHIconGridSize)a7 gridSizeClassSizes:(id)a8 iconLayoutBehavior:(unint64_t)a9 referenceIconOrder:(id)a10 fixedIconLocations:(id)a11 options:(unint64_t)a12
{
  v17 = a11;
  v18 = a3;
  v19 = a4;
  v85 = a5;
  v81 = a8;
  v20 = a10;
  v72 = a11;
  v83 = [v18 count];
  if (v83)
  {
    v21 = a12;
    rows = a7.rows;
    if ((a12 & 0x10) != 0)
    {
      v69 = 0;
      v70 = a7.rows - 1;
    }

    else
    {
      v70 = a6 / a7.columns;
      v69 = a6 % a7.columns;
    }

    columns = a7.columns;
    v71 = v19;
    v63 = a7;
    v73 = v20;
    if (!v72 || (v22 = [v19 firstIndex], v22 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v66 = 0;
LABEL_35:
      v38 = [v19 firstIndex];
      v39 = v66;
      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_91;
      }

      v40 = v38;
      v59 = v86;
      v60 = v21 & 0xC;
      v68 = v70;
      v65 = v18;
LABEL_37:
      if (v21)
      {
        v41 = v83 + ~v40;
      }

      else
      {
        v41 = v40;
      }

      v42 = [v18 objectAtIndex:{v41, v59}];
      if ([v39 containsIndex:v40])
      {
        goto LABEL_90;
      }

      v76 = [v42 gridSizeClass];
      v74 = [v81 gridSizeForGridSizeClass:?];
      if (v20 != v18)
      {
        v41 = [v20 indexOfObjectIdenticalTo:v42];
      }

      v43 = columns;
      v78 = v42;
      if (v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = SBLogCommon();
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);

        if (v45)
        {
          NSLog(&cfstr_MissingIconInR.isa);
        }

        v42 = v78;
        goto LABEL_89;
      }

      v67 = v41;
      v46 = rows;
      if (v68 >= rows)
      {
LABEL_72:
        v21 = a12;
        if ((a12 & 8) != 0)
        {
          v18 = v65;
          v19 = v71;
          v20 = v73;
          v39 = v66;
        }

        else
        {
          v89 = 0;
          v90 = &v89;
          v91 = 0x2020000000;
          v92 = 0x7FFFFFFFFFFFFFFFLL;
          v86[0] = __173__SBIconListModel_layOutIcons_atIndexes_inGridCellInfo_startingAtGridCellIndex_gridSize_gridSizeClassSizes_iconLayoutBehavior_referenceIconOrder_fixedIconLocations_options___block_invoke;
          v86[1] = &unk_1E808E3B0;
          v87 = v63;
          v88 = v74;
          v86[2] = &v89;
          v86[3] = a9;
          v61 = v61 & 0xFFFFFFFF00000000 | *&v63;
          v62 = v62 & 0xFFFFFFFF00000000 | v74;
          [v85 enumerateEmptyGridCellRangesOfSize:? inGridRange:? flipped:? usingBlock:?];
          v18 = v65;
          v19 = v71;
          v39 = v66;
          v56 = v90[3];
          if (v56 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v85 setIconIndex:v67 inGridRange:{v56, v74}];
            v20 = v73;
            _Block_object_dispose(&v89, 8);
            goto LABEL_89;
          }

          _Block_object_dispose(&v89, 8);
          v20 = v73;
        }

        [v85 markIconIndexAsOutOfBounds:v67];
        goto LABEL_89;
      }

      v47 = HIWORD(v74) - 1;
      if ((a12 & 0x10) != 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      v80 = v48;
      v49 = v47 * v63.columns;
      if ((a12 & 0x10) == 0)
      {
        v49 = 0;
      }

      v50 = v68;
      v51 = columns * v68 - v49;
      while (1)
      {
        if (v50 - v80 + (v74 >> 16) <= v46 && a9 & 1 | (v74 < 0x20000) | (((v50 - v80) & 1) == 0))
        {
          v52 = v50 == v70 ? v69 : 0;
          if (v52 < v43)
          {
            break;
          }
        }

LABEL_71:
        ++v50;
        v51 += v43;
        v46 = rows;
        if (v50 == rows)
        {
          goto LABEL_72;
        }
      }

      v53 = 0;
      while (1)
      {
        v54 = v74 + v52;
        if ((v74 & 0xFFFE) != 0 && v54 <= v43)
        {
          if ((a9 & 2) == 0 && v52 && v74 - columns + v52 && v52 % v74)
          {
            goto LABEL_70;
          }
        }

        else if (v54 > v43)
        {
          goto LABEL_70;
        }

        v55 = [v85 indexOfFirstUsedGridCellInGridRange:{v51 + v52, v74}];
        v43 = columns;
        if (v55 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v85 setIconIndex:v67 inGridRange:{v51 + v52, v74}];
          [v85 setDebuggingIconType:objc_msgSend(a1 forIconIndex:{"gridCellInfoIconTypeForIcon:", v42), v67}];
          if (v74 + v52 - 1 >= columns - 1)
          {
            v19 = v71;
            v20 = v73;
            v21 = a12;
            v39 = v66;
            if (v60)
            {
              v58 = v50 + 1;
              goto LABEL_87;
            }

            if ((v53 & 1) == 0)
            {
              v58 = v68;
              if (v50 == v70)
              {
                v58 = v68 + 1;
              }

LABEL_87:
              v68 = v58;
            }

            v18 = v65;
            goto LABEL_89;
          }

          v57 = v68;
          if (v60)
          {
            v57 = v50;
          }

          v68 = v57;
          v18 = v65;
          v19 = v71;
          v20 = v73;
          v21 = a12;
          v39 = v66;
LABEL_89:

LABEL_90:
          v40 = [v19 indexGreaterThanIndex:v40];
          if (v40 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_91:

            goto LABEL_92;
          }

          goto LABEL_37;
        }

LABEL_70:
        ++v52;
        v53 = 1;
        if (v52 == columns)
        {
          goto LABEL_71;
        }
      }
    }

    v23 = v22;
    v66 = 0;
    v75 = a7;
    while (1)
    {
      if (v21)
      {
        v24 = v83 + ~v23;
      }

      else
      {
        v24 = v23;
      }

      v25 = [v18 objectAtIndex:v24];
      v26 = [v25 gridSizeClass];
      v27 = [v81 gridSizeForGridSizeClass:v26];
      if (v20 != v18)
      {
        v24 = [v20 indexOfObjectIdenticalTo:v25];
      }

      v28 = [v25 uniqueIdentifier];
      v29 = [v72 objectForKey:v28];
      v30 = v29;
      if (!v29)
      {
        goto LABEL_34;
      }

      v79 = v26;
      v31 = [v29 unsignedIntegerValue];
      v32 = SBIconCoordinateMakeWithGridCellIndex(v31, v75);
      v77 = v33;
      if ([v85 indexOfFirstUsedGridCellInGridRange:{v31, v27}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = v32 - 1;
        v35 = v32 - 1 + v27;
        if ((v27 & 0xFFFE) == 0 || v35 > columns)
        {
          v19 = v71;
          if (v35 <= columns)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v19 = v71;
          if ((a9 & 2) != 0 || !v34 || columns - v27 == v34 || !(v34 % v27))
          {
LABEL_28:
            if (v77 - 1 + (v27 >> 16) <= rows && a9 & 1 | (v27 < 0x20000) | (((v77 - 1) & 1) == 0))
            {
              [v85 setIconIndex:v24 inGridRange:{v31, v27}];
              [v85 setDebuggingIconType:objc_msgSend(a1 forIconIndex:{"gridCellInfoIconTypeForIcon:", v25) | 1, v24}];
              v37 = v66;
              if (!v66)
              {
                v37 = objc_alloc_init(MEMORY[0x1E696AD50]);
              }

              v66 = v37;
              [v37 addIndex:v23];
            }
          }
        }
      }

      else
      {
        v19 = v71;
      }

      v26 = v79;
      v17 = v17 & 0xFFFFFFFF00000000 | v75;
LABEL_34:

      v23 = [v19 indexGreaterThanIndex:v23];
      v20 = v73;
      v21 = a12;
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_92:
}

uint64_t __173__SBIconListModel_layOutIcons_atIndexes_inGridCellInfo_startingAtGridCellIndex_gridSize_gridSizeClassSizes_iconLayoutBehavior_referenceIconOrder_fixedIconLocations_options___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = SBIconCoordinateMakeWithGridCellIndex(a2, *(a1 + 48));
  result = _SBIconListIsCoordinateValidForGridSize(v7, v8, *(a1 + 52), *(a1 + 48), *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

+ (unint64_t)gridCellInfoIconTypeForIcon:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 gridSizeClass];

  if (v7 && ![v7 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    v6 |= 4uLL;
  }

  return v6;
}

- (void)layOutIconsPrioritizedByGridArea:(id)a3 inGridCellInfo:(id)a4 gridSize:(SBHIconGridSize)a5 referenceIconOrder:(id)a6 referenceGridCellInfo:(id)a7 fixedIconLocations:(id)a8 options:(unint64_t)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v37 = a7;
  v17 = a8;
  v18 = [(SBIconListModel *)self iconGridSizeClassSizes];
  v19 = [(SBIconListModel *)self iconLayoutBehavior];
  v42 = [v14 bs_map:&__block_literal_global_137];
  v41 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v42];
  v20 = [v41 allObjects];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_2;
  v60[3] = &unk_1E808BB88;
  v21 = v18;
  v61 = v21;
  v40 = [v20 sortedArrayUsingComparator:v60];

  v22 = [v17 allKeys];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_3;
  v58[3] = &unk_1E808C8D0;
  v23 = v14;
  v59 = v23;
  v39 = v22;
  v24 = [v22 bs_compactMap:v58];
  v25 = [v24 count];
  if (v25)
  {
    v26 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v25}];
    v36 = a5;
    [objc_opt_class() layOutIcons:v24 atIndexes:v26 inGridCellInfo:v15 startingAtGridCellIndex:0 gridSize:v19 gridSizeClassSizes:v16 iconLayoutBehavior:v17 referenceIconOrder:a9 fixedIconLocations:? options:?];
  }

  else
  {
    v36 = a5;
  }

  v27 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:0];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_5;
  v45[3] = &unk_1E808E3D8;
  v46 = v28;
  v47 = self;
  v57 = a5;
  v48 = v15;
  v49 = v21;
  v50 = v16;
  v51 = v17;
  v55 = v19;
  v56 = a9;
  v52 = v23;
  v53 = v37;
  v54 = v27;
  v35 = v27;
  v44 = v37;
  v38 = v23;
  v29 = v17;
  v30 = v16;
  v31 = v21;
  v32 = v15;
  v33 = v28;
  [v40 enumerateObjectsWithOptions:2 usingBlock:v45];
  v34 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(v33, "count")}];
  [objc_opt_class() layOutIcons:v33 atIndexes:v34 inGridCellInfo:v32 startingAtGridCellIndex:0 gridSize:v36 gridSizeClassSizes:v31 iconLayoutBehavior:v19 referenceIconOrder:v30 fixedIconLocations:v29 options:a9];
}

uint64_t __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 gridSizeAreaForGridSizeClass:a2];
  v8 = [*(a1 + 32) gridSizeAreaForGridSizeClass:v6];

  return MEMORY[0x1EEDEFF38](v7, v8);
}

id __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_4;
  v9[3] = &unk_1E808BFD8;
  v5 = v3;
  v10 = v5;
  v6 = [v4 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndex:v6];
  }

  return v7;
}

uint64_t __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v23 = a3;
  if (!a3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(*(a1 + 32), "count")}];
    [objc_opt_class() layOutIcons:*(a1 + 32) atIndexes:v7 inGridCellInfo:*(a1 + 48) startingAtGridCellIndex:0 gridSize:*(a1 + 120) gridSizeClassSizes:*(a1 + 56) iconLayoutBehavior:*(a1 + 104) referenceIconOrder:*(a1 + 64) fixedIconLocations:*(a1 + 72) options:*(a1 + 112)];
    [*(a1 + 32) removeAllObjects];
  }

  v8 = [*(a1 + 56) gridSizeForGridSizeClass:v6];
  v9 = *(a1 + 80);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_6;
  v28[3] = &unk_1E8089C20;
  v22 = v6;
  v29 = v22;
  v10 = [v9 bs_filter:v28];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = *(a1 + 72);
        v17 = [v15 uniqueIdentifier];
        v18 = [v16 objectForKey:v17];

        if (!v18)
        {
          if (v23)
          {
            v19 = [*(a1 + 88) gridCellIndexForIconIndex:{objc_msgSend(*(a1 + 64), "indexOfObjectIdenticalTo:", v15)}];
            if ([*(a1 + 48) numberOfUsedGridCellsInGridRange:{v19, v8}])
            {
              [*(a1 + 32) addObject:v15];
              continue;
            }
          }

          else
          {
            v19 = 0;
          }

          v20 = objc_opt_class();
          v30 = v15;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
          v3 = v3 & 0xFFFFFFFF00000000 | *(a1 + 120);
          [v20 layOutIcons:v21 atIndexes:*(a1 + 96) inGridCellInfo:*(a1 + 48) startingAtGridCellIndex:v19 gridSize:v3 gridSizeClassSizes:*(a1 + 56) iconLayoutBehavior:*(a1 + 104) referenceIconOrder:*(a1 + 64) fixedIconLocations:*(a1 + 72) options:*(a1 + 112)];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v12);
  }
}

uint64_t __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 gridSizeClass];
  if (v4 == *(a1 + 32))
  {
    v6 = 1;
  }

  else
  {
    v5 = [v3 gridSizeClass];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  return v6;
}

- (void)setLayoutExcludedIcons:(id)a3
{
  v7 = a3;
  if ((BSEqualArrays() & 1) == 0)
  {
    v4 = [v7 copy];
    layoutExcludedIcons = self->_layoutExcludedIcons;
    self->_layoutExcludedIcons = v4;

    v6 = [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
    [v6 setLayoutExcludedIcons:v7];
  }
}

- (void)performByExcludingIconsFromLayout:(id)a3 usingBlock:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SBIconListModel *)self layoutExcludedIcons];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 arrayByAddingObjectsFromArray:v11];
  }

  else
  {
    v9 = v11;
  }

  v10 = v9;
  [(SBIconListModel *)self setLayoutExcludedIcons:v9];
  v6[2](v6);

  [(SBIconListModel *)self setLayoutExcludedIcons:v8];
}

- (id)filterIconsForLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListModel *)self layoutExcludedIcons];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    [v6 removeObjectsInArray:v5];

    v4 = v6;
  }

  return v4;
}

- (BOOL)getIconGridRange:(SBHIconGridRange *)a3 forGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v6 = [a5 gridRangeForGridCellIndex:a4];
  if (a3 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    a3->cellIndex = v6;
    *&a3->size.columns = v7;
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)gridCellIndexBelowIconAtIndex:(unint64_t)a3 gridCellInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 gridCellIndexForIconIndex:a3];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v9 = [v5 gridSize];
    v10 = [v5 gridRangeForGridCellIndex:v8];
    v7 = SBHIconGridRangeCellIndexBelowColumn(v10, v11, v9, 0);
  }

  return v7;
}

- (unint64_t)gridCellIndexBelowIconAtIndex:(unint64_t)a3 options:(unint64_t)a4
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v7 = [(SBIconListModel *)self gridCellIndexBelowIconAtIndex:a3 gridCellInfo:v6];

  return v7;
}

- (unint64_t)gridCellIndexAboveIconAtIndex:(unint64_t)a3 gridCellInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 gridCellIndexForIconIndex:a3];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v9 = [v5 gridSize];
    v10 = [v5 gridRangeForGridCellIndex:v8];
    v7 = SBHIconGridRangeCellIndexAboveColumn(v10, v11, v9, 0);
  }

  return v7;
}

- (unint64_t)gridCellIndexAboveIconAtIndex:(unint64_t)a3 options:(unint64_t)a4
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v7 = [(SBIconListModel *)self gridCellIndexAboveIconAtIndex:a3 gridCellInfo:v6];

  return v7;
}

- (SBIconCoordinate)coordinateForGridCellIndex:(unint64_t)a3 gridCellInfoOptions:(unint64_t)a4
{
  v5 = [(SBIconListModel *)self gridSizeWithOptions:a4];

  v6 = SBIconCoordinateMakeWithGridCellIndex(a3, v5);
  result.row = v7;
  result.column = v6;
  return result;
}

- (SBIconCoordinate)coordinateForGridCellIndex:(unint64_t)a3 gridCellInfo:(id)a4
{
  v4 = [a4 coordinateForGridCellIndex:a3];
  result.row = v5;
  result.column = v4;
  return result;
}

- (SBIconCoordinate)coordinateForIcon:(id)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = [v6 coordinateForGridCellIndex:{-[SBIconListModel gridCellIndexForIcon:gridCellInfo:](self, "gridCellIndexForIcon:gridCellInfo:", a3, v6)}];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.row = v11;
  result.column = v10;
  return result;
}

- (unint64_t)gridCellIndexForCoordinate:(SBIconCoordinate)a3 gridCellInfoOptions:(unint64_t)a4
{
  row = a3.row;
  column = a3.column;
  v6 = [(SBIconListModel *)self gridSizeWithOptions:a4];

  return SBIconCoordinateGetGridCellIndex(column, row, v6);
}

- (id)iconAtGridCellIndex:(unint64_t)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v7 = [(SBIconListModel *)self iconAtGridCellIndex:a3 gridCellInfo:v6];

  return v7;
}

- (id)iconAtGridCellIndex:(unint64_t)a3 gridCellInfo:(id)a4
{
  v5 = [a4 iconIndexForGridCellIndex:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(SBIconListModel *)self iconAtIndex:v5];
  }

  return v6;
}

- (SBHIconGridRange)gridRangeForIcon:(id)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 gridSizeClass];
  v9 = [(SBIconListModel *)self gridSizeForGridSizeClass:v8 gridCellInfo:v6];
  v10 = [(SBIconListModel *)self gridCellIndexForIcon:v7 gridCellInfo:v6];

  v11 = v10;
  v12 = v9;
  result.size = v12;
  result.cellIndex = v11;
  return result;
}

- (SBHIconGridRange)gridRangeForIcon:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v8 = [(SBIconListModel *)self gridRangeForIcon:v6 gridCellInfo:v7];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.size = v12;
  result.cellIndex = v11;
  return result;
}

- (id)iconsForGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:SBHIconGridSizeGetArea(size)];
  v9 = [v7 gridSize];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__SBIconListModel_iconsForGridRange_gridCellInfo___block_invoke;
  v14[3] = &unk_1E808DE60;
  v15 = v7;
  v16 = self;
  v17 = v8;
  LOWORD(self) = v9;
  v10 = v8;
  v11 = v7;
  SBHIconGridRangeEnumerateCellIndexes(cellIndex, size, self, v14);
  v12 = [v10 array];

  return v12;
}

void __50__SBIconListModel_iconsForGridRange_gridCellInfo___block_invoke(id *a1, uint64_t a2)
{
  v3 = [a1[4] iconIndexForGridCellIndex:a2];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [a1[5] iconAtIndex:v3];
    [a1[6] addObject:v4];
  }
}

- (id)iconsForGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4
{
  v4 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v8 = [(SBIconListModel *)self iconsForGridRange:cellIndex gridCellInfo:v4, v7];

  return v8;
}

- (BOOL)hasIconsInGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v6 = a4;
  v7 = [v6 gridSize];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__SBIconListModel_hasIconsInGridRange_gridCellInfo___block_invoke;
  v10[3] = &unk_1E808E400;
  v8 = v6;
  v11 = v8;
  v12 = &v13;
  SBHIconGridRangeEnumerateCellIndexes(cellIndex, *&size, v7, v10);
  LOBYTE(size.columns) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return size.columns;
}

uint64_t __52__SBIconListModel_hasIconsInGridRange_gridCellInfo___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)areIconsInGridRangeFullyContained:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  v4 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(SBIconListModel *)self iconsForGridRange:cellIndex gridCellInfo:v4, v7];
  v9 = [v7 gridSize];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    v14 = v9;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(SBIconListModel *)self gridRangeForIcon:*(*(&v20 + 1) + 8 * i) gridCellInfo:v7, v20];
        v9 = v9 & 0xFFFFFFFF00000000 | v14;
        if (!SBHIconGridRangeContainsIconGridRange(cellIndex, v4, v16, v17, v9))
        {
          v18 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  return v18;
}

- (id)iconsInGridRow:(unint64_t)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = -[SBIconListModel iconsForGridRange:gridCellInfo:](self, "iconsForGridRange:gridCellInfo:", [v6 gridCellIndexForCoordinate:{1, a3 + 1}], objc_msgSend(v6, "numberOfUsedGridCellsInRow:", a3) | 0x10000, v6);

  return v7;
}

- (id)iconsInGridColumn:(unint64_t)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = -[SBIconListModel iconsForGridRange:gridCellInfo:](self, "iconsForGridRange:gridCellInfo:", [v6 gridCellIndexForCoordinate:{a3 + 1, 1}], (objc_msgSend(v6, "numberOfUsedGridCellsInColumn:", a3) << 16) | 1, v6);

  return v7;
}

- (id)iconsInGridColumnRange:(_NSRange)a3 gridCellInfo:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = -[SBIconListModel iconsForGridRange:gridCellInfo:](self, "iconsForGridRange:gridCellInfo:", [v7 gridCellIndexForCoordinate:{location + 1, 1}], length | (objc_msgSend(v7, "numberOfUsedGridCellsInColumn:", location) << 16), v7);

  return v8;
}

- (id)iconsInContiguousRegion:(id)a3 gridCellInfoOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v8 = [(SBIconListModel *)self iconsInContiguousRegion:v6 gridCellInfo:v7];

  return v8;
}

- (id)iconsInContiguousRegion:(id)a3 startingAtGridCellIndex:(unint64_t)a4 gridCellInfo:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E695DFA0];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __80__SBIconListModel_iconsInContiguousRegion_startingAtGridCellIndex_gridCellInfo___block_invoke;
  v19 = &unk_1E808E428;
  v20 = v8;
  v21 = self;
  v22 = v11;
  v23 = a4;
  v12 = v11;
  v13 = v8;
  [v10 enumerateGridCellIndexesUsingBlock:&v16];

  v14 = [v12 array];

  return v14;
}

void __80__SBIconListModel_iconsInContiguousRegion_startingAtGridCellIndex_gridCellInfo___block_invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 56) <= a2)
  {
    v3 = [*(a1 + 32) iconIndexForGridCellIndex:a2];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [*(a1 + 40) iconAtIndex:v3];
      [*(a1 + 48) addObject:v4];
    }
  }
}

- (id)iconsAtGridCellIndexes:(id)a3 gridCellInfo:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696AD50];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [(SBIconListModel *)self numberOfIcons];
  v11 = [v6 gridSize];
  v12 = [v6 usedGridRange];
  v14 = SBHIconGridRangeMaxCellIndex(v12, v13, v11);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __55__SBIconListModel_iconsAtGridCellIndexes_gridCellInfo___block_invoke;
  v22 = &unk_1E808E450;
  v23 = v6;
  v24 = v9;
  v25 = v14;
  v26 = v10;
  v15 = v9;
  v16 = v6;
  [v8 enumerateIndexesUsingBlock:&v19];

  v17 = [(SBIconListModel *)self iconsAtIndexes:v15, v19, v20, v21, v22];

  return v17;
}

unint64_t __55__SBIconListModel_iconsAtGridCellIndexes_gridCellInfo___block_invoke(unint64_t result, unint64_t a2, _BYTE *a3)
{
  if (*(result + 48) <= a2 || (v4 = result, result = [*(result + 32) iconIndexForGridCellIndex:a2], result != 0x7FFFFFFFFFFFFFFFLL) && (objc_msgSend(*(v4 + 40), "addIndex:", result), result = objc_msgSend(*(v4 + 40), "count"), result >= *(v4 + 56)))
  {
    *a3 = 1;
  }

  return result;
}

- (id)gridCellIndexesForIconsIntersectingGridRange:(SBHIconGridRange)a3 gridCellInfoOptions:(unint64_t)a4
{
  v4 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:a4];
  v8 = [(SBIconListModel *)self gridCellIndexesForIconsIntersectingGridRange:cellIndex gridCellInfo:v4, v7];

  return v8;
}

- (id)gridCellIndexesForIconsIntersectingGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  v4 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = self;
  v9 = [(SBIconListModel *)self iconsForGridRange:cellIndex gridCellInfo:v4, v7];
  v22 = v7;
  v10 = [v7 gridSize];
  v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    v15 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [(SBIconListModel *)v8 gridRangeForIcon:*(*(&v25 + 1) + 8 * i) gridCellInfo:v22];
        v19 = v18;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __77__SBIconListModel_gridCellIndexesForIconsIntersectingGridRange_gridCellInfo___block_invoke;
        v23[3] = &unk_1E808C408;
        v24 = v11;
        v10 = v10 & 0xFFFFFFFF00000000 | v15;
        SBHIconGridRangeEnumerateCellIndexes(v17, v19, v10, v23);
      }

      v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  return v11;
}

- (unint64_t)numberOfUsedRows
{
  v2 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
  v3 = [v2 numberOfUsedRows];

  return v3;
}

- (unint64_t)numberOfUsedColumns
{
  v2 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
  v3 = [v2 numberOfUsedColumns];

  return v3;
}

- (unint64_t)numberOfUsedGridCells
{
  v3 = [(SBIconListModel *)self layoutExcludedIcons];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SBIconListModel_numberOfUsedGridCells__block_invoke;
  v7[3] = &unk_1E808E478;
  v4 = v3;
  v8 = v4;
  v9 = self;
  v10 = &v11;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v7];
  v5 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __40__SBIconListModel_numberOfUsedGridCells__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [v4 gridSizeClass];
    *(*(*(a1 + 48) + 8) + 24) += [*(a1 + 40) gridSizeAreaForGridSizeClass:v3];
  }
}

- (BOOL)isLayoutReversibleWhenRotated
{
  v3 = [(SBIconListModel *)self _rotatedIconListModel];
  v4 = [(SBIconListModel *)self icons];
  v5 = [v3 icons];
  v6 = [v4 isEqualToArray:v5];

  return v6;
}

- (BOOL)isValidGridRange:(SBHIconGridRange)a3 gridCellInfo:(id)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v6 = [a4 gridSize];

  return SBHIconGridRangeContainsIconGridRange(0, v6, cellIndex, size, v6);
}

- (BOOL)isValidGridRange:(SBHIconGridRange)a3 options:(unint64_t)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v6 = [(SBIconListModel *)self gridSizeWithOptions:a4];

  return SBHIconGridRangeContainsIconGridRange(0, *&v6, cellIndex, size, v6.columns);
}

- (id)layoutDescriptionWithOptions:(unint64_t)a3
{
  v3 = [(SBIconListModel *)self gridCellInfoWithOptions:a3];
  v4 = [v3 layoutDescription];

  return v4;
}

- (id)changeGridSizeClassOfContainedIcon:(id)a3 toGridSizeClass:(id)a4 gridCellInfoOptions:(unint64_t)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [(SBIconListModel *)self indexForIcon:v9];
  v12 = [v9 gridSizeClass];
  if (v12 == v10 || ([v10 isEqualToString:v12] & 1) != 0)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v14 = NSStringFromSelector(a2);
  v15 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v14];

  v16 = [(SBIconListModel *)self gridCellInfoWithOptions:a5];
  v17 = [v16 gridCellIndexForIconIndex:v11];
  v18 = [(SBIconListModel *)self bestGridCellIndexForInsertingIconOfGridSizeClass:v10 atGridCellIndex:v17 gridCellInfo:v16];
  if (v18 != v17)
  {
    v19 = [(SBIconListModel *)self moveContainedIcon:v9 toGridCellIndex:v18 gridCellInfoOptions:a5 mutationOptions:0x1000000];
  }

  if (!SBHIconGridSizeEqualToIconGridSize([(SBIconListModel *)self gridSizeForGridSizeClass:v12 gridCellInfoOptions:a5], [(SBIconListModel *)self gridSizeForGridSizeClass:v10 gridCellInfoOptions:a5]) && [(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfo:v16 gridCellInfoOptions:a5 mutationOptions:0])
  {
    [(SBIconListModel *)self reflowIconsForResizingIcon:v9 atGridCellIndex:v18 toGridSizeClass:v10 gridCellInfoOptions:a5];
  }

  [v9 setGridSizeClass:v10];
  if (!v12)
  {
    v20 = 1;
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_13:
    v21 = 1;
    goto LABEL_14;
  }

  v20 = [v12 isEqualToString:@"SBHIconGridSizeClassDefault"];
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_11:
  v21 = [v10 isEqualToString:@"SBHIconGridSizeClassDefault"];
LABEL_14:
  if (v20 != v21)
  {
    [(SBIconListModel *)self updateHasNonDefaultSizeClassIcons];
  }

  v30[0] = v9;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v23 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:v22 ignoringTrailingIconCheck:0 options:0];

  if ([v23 count])
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __90__SBIconListModel_changeGridSizeClassOfContainedIcon_toGridSizeClass_gridCellInfoOptions___block_invoke;
    v28[3] = &unk_1E8089C98;
    v29 = v23;
    [(SBIconListModel *)self _updateRotatedIconsUsingBlock:v28];
  }

  [(SBIconListModel *)self removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:a5];
  [(SBIconListModel *)self markIconStateDirty];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90__SBIconListModel_changeGridSizeClassOfContainedIcon_toGridSizeClass_gridCellInfoOptions___block_invoke_2;
  v26[3] = &unk_1E808E4A0;
  v26[4] = self;
  v27 = v9;
  [(SBIconListModel *)self _notifyListObservers:v26];
  [v15 invalidate];
  v24 = v27;
  v13 = v23;

LABEL_19:

  return v13;
}

void __90__SBIconListModel_changeGridSizeClassOfContainedIcon_toGridSizeClass_gridCellInfoOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconList:*(a1 + 32) didChangeGridSizeClassOfIcon:*(a1 + 40)];
  }
}

- (void)addIconsOfClass:(Class)a3 toSet:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_icons;
  v8 = [(SBIconIndexMutableList *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:{v12, v14}];
        }

        if ([v12 isFolderIcon])
        {
          v13 = [v12 folder];
          [v13 addIconsOfClass:a3 toSet:v6];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(SBIconIndexMutableList *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)addIconsPassingTest:(id)a3 toSet:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_icons;
  v9 = [(SBIconIndexMutableList *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      v15 = 0;
      if (v6[2](v6, v13, &v15))
      {
        [v7 addObject:v13];
      }

      if (v15)
      {
        break;
      }

      if ([v13 isFolderIcon])
      {
        v14 = [v13 folder];
        [v14 addIconsPassingTest:v6 toSet:v7];
      }

      if (v10 == ++v12)
      {
        v10 = [(SBIconIndexMutableList *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)iconsOfClass:(Class)a3
{
  v5 = objc_opt_new();
  [(SBIconListModel *)self addIconsOfClass:a3 toSet:v5];

  return v5;
}

- (BOOL)isIconStateDirty
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_iconStateIsDirty)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_icons;
    v2 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v2)
    {
      v4 = *v11;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = *(*(&v10 + 1) + 8 * i);
          if ([v6 isFolderIcon])
          {
            v7 = [v6 folder];
            v8 = [v7 isIconStateDirty];

            if (v8)
            {
              LOBYTE(v2) = 1;
              goto LABEL_14;
            }
          }
        }

        v2 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v2;
}

- (void)markIconStateDirty
{
  if (!self->_iconStateIsDirty)
  {
    self->_iconStateIsDirty = 1;
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __37__SBIconListModel_markIconStateDirty__block_invoke;
    v2[3] = &unk_1E808D788;
    v2[4] = self;
    [(SBIconListModel *)self _notifyListObservers:v2];
  }
}

void __37__SBIconListModel_markIconStateDirty__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconListIconStateDidDirty:*(a1 + 32)];
  }
}

- (void)markIconStateDirtyWithOptions:(unint64_t)a3
{
  if ((a3 & 0x20000000) == 0)
  {
    [(SBIconListModel *)self markIconStateDirty];
  }
}

- (void)markIconStateClean
{
  v16 = *MEMORY[0x1E69E9840];
  self->_iconStateIsDirty = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_icons;
  v4 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isFolderIcon])
        {
          v9 = [v8 folder];
          [v9 markIconStateClean];
        }
      }

      v5 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
  [v10 markIconStateClean];
}

- (void)sortUsingIconOrder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = v10 + 1;
        [(SBIconIndexMutableList *)self->_icons moveNode:*(*(&v11 + 1) + 8 * v9++) toIndex:v10++];
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)sortByLayoutOrderWithGridCellInfoOptions:(unint64_t)a3
{
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:?])
  {
    v5 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:a3];
    v7 = v5;
    if (v5 == self)
    {
      v6 = [(SBIconListModel *)self gridCellInfoWithOptions:a3];
      [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfo:v6];
    }

    else
    {
      [(SBIconListModel *)v5 sortByLayoutOrderWithGridCellInfoOptions:a3];
    }
  }
}

- (void)sortByLayoutOrderWithGridCellInfo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v6 = [(SBIconListModel *)self numberOfUsedRows];
  v7 = v6 * [v4 gridSize];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [v4 iconIndexForGridCellIndex:i];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [(SBIconListModel *)self iconAtIndex:v9];
        if (([v5 containsObject:v10] & 1) == 0)
        {
          [v5 addObject:v10];
        }
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_icons;
  v12 = [(SBIconIndexMutableList *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        if (([v5 containsObject:{v16, v19}] & 1) == 0)
        {
          [v5 addObject:v16];
        }
      }

      v13 = [(SBIconIndexMutableList *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  icons = self->_icons;
  v18 = [v5 array];
  [(SBIconIndexMutableList *)icons setNodes:v18];
}

- (void)sortByIconGridSizeAreaWithGridCellInfoOptions:(unint64_t)a3
{
  v5 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:?];
  v6 = v5;
  if (v5 == self)
  {
    v7 = [(SBIconListModel *)self icons];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__SBIconListModel_sortByIconGridSizeAreaWithGridCellInfoOptions___block_invoke;
    v9[3] = &unk_1E808E0B8;
    v9[4] = self;
    v9[5] = a3;
    v8 = [v7 sortedArrayUsingComparator:v9];
    [(SBIconIndexMutableList *)self->_icons setNodes:v8];
  }

  else
  {
    [(SBIconListModel *)v5 sortByLayoutOrderWithGridCellInfoOptions:a3];
  }
}

uint64_t __65__SBIconListModel_sortByIconGridSizeAreaWithGridCellInfoOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 gridSizeClass];
  v7 = [v5 gridSizeClass];

  LODWORD(v5) = [*(a1 + 32) gridSizeForGridSizeClass:v6 gridCellInfoOptions:*(a1 + 40)];
  LODWORD(a1) = [*(a1 + 32) gridSizeForGridSizeClass:v7 gridCellInfoOptions:*(a1 + 40)];
  Area = SBHIconGridSizeGetArea(v5);
  v9 = SBHIconGridSizeGetArea(a1);
  if (Area <= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (Area < v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  [(SBIconListModel *)self setHidden:v3 byUser:1 hiddenDate:v5];
}

- (void)setHidden:(BOOL)a3 byUser:(BOOL)a4 hiddenDate:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (v6 && v5)
  {
    if (v8)
    {
      v10 = self;
      v11 = v9;
LABEL_8:
      [(SBIconListModel *)v10 setHiddenDate:v11];
      goto LABEL_10;
    }

    v12 = [MEMORY[0x1E695DF00] date];
    [(SBIconListModel *)self setHiddenDate:v12];
  }

  else if (v5 && !v6)
  {
    v10 = self;
    v11 = 0;
    goto LABEL_8;
  }

LABEL_10:
  if (self->_hidden != v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__SBIconListModel_setHidden_byUser_hiddenDate___block_invoke;
    v14[3] = &unk_1E808D788;
    v14[4] = self;
    [(SBIconListModel *)self _notifyListObservers:v14];
    self->_hidden = v6;
    if (v6)
    {
      [(SBIconListModel *)self setOverflowSlotCount:0];
    }

    [(SBIconListModel *)self markIconStateDirty];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__SBIconListModel_setHidden_byUser_hiddenDate___block_invoke_2;
    v13[3] = &unk_1E808D788;
    v13[4] = self;
    [(SBIconListModel *)self _notifyListObservers:v13];
  }
}

void __47__SBIconListModel_setHidden_byUser_hiddenDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconListHiddenWillChange:*(a1 + 32)];
  }
}

void __47__SBIconListModel_setHidden_byUser_hiddenDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconListHiddenDidChange:*(a1 + 32)];
  }
}

- (BOOL)isHiddenByUser
{
  v2 = [(SBIconListModel *)self hiddenDate];
  v3 = v2 != 0;

  return v3;
}

- (void)setFocusModeIdentifiers:(id)a3
{
  v6 = a3;
  if ([(NSSet *)v6 count])
  {
    v4 = v6;
  }

  else
  {

    v4 = 0;
  }

  p_focusModeIdentifiers = &self->_focusModeIdentifiers;
  if (v4 != self->_focusModeIdentifiers)
  {
    v7 = v4;
    objc_storeStrong(p_focusModeIdentifiers, v4);
    p_focusModeIdentifiers = [(SBIconListModel *)self markIconStateDirty];
    v4 = v7;
  }

  MEMORY[0x1EEE66BB8](p_focusModeIdentifiers, v4);
}

- (void)updateForFocusModeActivated:(BOOL)a3 wantsListVisible:(BOOL)a4
{
  if (a3)
  {
    v5 = !a4;
  }

  else
  {
    v5 = [(SBIconListModel *)self isHiddenByUser:a3];
  }

  [(SBIconListModel *)self setHidden:v5 byUser:0 hiddenDate:0];
}

- (void)setAllowedGridSizeClasses:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    allowedGridSizeClasses = self->_allowedGridSizeClasses;
    self->_allowedGridSizeClasses = v4;

    [(SBIconListModel *)self removeAnyIconsWithDisallowedGridSizeClasses];
    [(SBIconListModel *)self->_rotatedIcons setAllowedGridSizeClasses:v6];
  }
}

- (void)removeAnyIconsWithDisallowedGridSizeClasses
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_icons;
  v4 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
    v6 = v3;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v11 + 1) + 8 * i);
      v10 = [v9 gridSizeClass];
      if (![(SBIconListModel *)self isAllowedToContainIconGridSizeClass:v10])
      {
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [(SBIconIndexMutableList *)v6 addObject:v9];
      }
    }

    v5 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);

  if (v6)
  {
    [(SBIconListModel *)self removeIcons:v6];
LABEL_15:
  }
}

- (void)setGridSizeClassDomain:(id)a3
{
  v5 = a3;
  if (self->_gridSizeClassDomain != v5)
  {
    objc_storeStrong(&self->_gridSizeClassDomain, a3);
    [(SBIconListModel *)self removeAnyIconsWithDisallowedGridSizeClasses];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__SBIconListModel_setGridSizeClassDomain___block_invoke;
    v7[3] = &unk_1E808CD70;
    v6 = v5;
    v8 = v6;
    [(SBIconListModel *)self enumerateFolderIconsUsingBlock:v7];
    [(SBIconListModel *)self->_rotatedIcons setGridSizeClassDomain:v6];
  }
}

void __42__SBIconListModel_setGridSizeClassDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 folder];
  [v3 setGridSizeClassDomain:*(a1 + 32)];
}

- (SBHIconGridSizeClassDomain)effectiveGridSizeClassDomain
{
  v2 = self->_gridSizeClassDomain;
  if (!v2)
  {
    v2 = +[SBHIconGridSizeClassDomain globalDomain];
  }

  return v2;
}

- (void)setRotatedLayoutClusterGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rotatedLayoutClusterGridSizeClass != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      rotatedLayoutClusterGridSizeClass = self->_rotatedLayoutClusterGridSizeClass;
      self->_rotatedLayoutClusterGridSizeClass = v6;

      v4 = [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setIconLayoutBehavior:(unint64_t)a3
{
  if (self->_iconLayoutBehavior != a3)
  {
    self->_iconLayoutBehavior = a3;
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
  }
}

- (void)setOverflowSlotCount:(unint64_t)a3
{
  if (self->_overflowSlotCount != a3)
  {
    self->_overflowSlotCount = a3;
    [(SBIconListModel *)self markIconStateDirty];
  }
}

- (void)addListObserver:(id)a3
{
  v4 = a3;
  listObservers = self->_listObservers;
  v8 = v4;
  if (!listObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_listObservers;
    self->_listObservers = v6;

    v4 = v8;
    listObservers = self->_listObservers;
  }

  [(NSHashTable *)listObservers addObject:v4];
}

- (void)_notifyListObservers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_listObservers copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_notifyListObserversWillAddIcon:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBIconListModel__notifyListObserversWillAddIcon___block_invoke;
  v6[3] = &unk_1E808E4A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBIconListModel *)self _notifyListObservers:v6];
}

void __51__SBIconListModel__notifyListObserversWillAddIcon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconList:*(a1 + 32) willAddIcon:*(a1 + 40)];
  }
}

- (void)_notifyListObserversDidAddIcon:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(SBIconListModel *)self _notifyListObserversDidAddIcons:v6 didRemoveIcons:0 movedIcons:0 didReplaceIcon:0 withIcon:0 options:0, v7, v8];
}

- (void)_notifyListObserversWillRemoveIcon:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SBIconListModel__notifyListObserversWillRemoveIcon___block_invoke;
  v6[3] = &unk_1E808E4A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBIconListModel *)self _notifyListObservers:v6];
}

void __54__SBIconListModel__notifyListObserversWillRemoveIcon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconList:*(a1 + 32) willRemoveIcon:*(a1 + 40)];
  }
}

- (void)_notifyListObserversDidRemoveIcon:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:v6 movedIcons:0 didReplaceIcon:0 withIcon:0 options:0, v7, v8];
}

- (void)_notifyListObserversDidMoveIcon:(id)a3 options:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v9 count:1];

  [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:0 movedIcons:v8 didReplaceIcon:0 withIcon:0 options:a4, v9, v10];
}

- (void)_notifyListObserversDidAddIcons:(id)a3 didRemoveIcons:(id)a4 movedIcons:(id)a5 didReplaceIcon:(id)a6 withIcon:(id)a7 options:(unint64_t)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ((v8 & 0x800000) == 0)
  {
    v19 = [(SBIconListModel *)self activeTransactionCreatingIfNecessary:0];
    v20 = v19;
    if (v19)
    {
      [v19 queueNotifyingListObserversDidAddIcons:v14 didRemoveIcons:v15 movedIcons:v16 didReplaceIcon:v17 withIcon:v18];
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __109__SBIconListModel__notifyListObserversDidAddIcons_didRemoveIcons_movedIcons_didReplaceIcon_withIcon_options___block_invoke;
      v21[3] = &unk_1E808E4C8;
      v21[4] = self;
      v22 = v14;
      v23 = v15;
      v24 = v16;
      v25 = v17;
      v26 = v18;
      [(SBIconListModel *)self _notifyListObservers:v21];
    }
  }
}

- (void)_notifyListObserver:(id)a3 didAddIcons:(id)a4 didRemoveIcons:(id)a5 movedIcons:(id)a6 didReplaceIcon:(id)a7 withIcon:(id)a8
{
  v52 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (v18 && v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 iconList:self didReplaceIcon:v18 withIcon:v20];
  }

  v36 = v15;
  if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = v15;
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      do
      {
        v25 = 0;
        do
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v14 iconList:self didAddIcon:*(*(&v45 + 1) + 8 * v25++)];
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v23);
    }

    v15 = v36;
  }

  if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = v16;
    v27 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        v30 = 0;
        do
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v14 iconList:self didRemoveIcon:*(*(&v41 + 1) + 8 * v30++)];
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v28);
    }

    v15 = v36;
  }

  if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = v17;
    v32 = [v31 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v38;
      do
      {
        v35 = 0;
        do
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [v14 iconList:self didMoveIcon:*(*(&v37 + 1) + 8 * v35++)];
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v33);
    }

    v15 = v36;
  }
}

- (void)_notifyListObserversDirectlyContainsNonDefaultSizeClassIconDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __87__SBIconListModel__notifyListObserversDirectlyContainsNonDefaultSizeClassIconDidChange__block_invoke;
  v2[3] = &unk_1E808D788;
  v2[4] = self;
  [(SBIconListModel *)self _notifyListObservers:v2];
}

void __87__SBIconListModel__notifyListObserversDirectlyContainsNonDefaultSizeClassIconDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconListDirectlyContainsNonDefaultSizeClassIconDidChange:*(a1 + 32)];
  }
}

+ (BOOL)isListModelNodeIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 hasPrefix:@"list:"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)listModelNodeIdentifierForUniqueIdentifier:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:@"list:%@", v4];

  return v5;
}

- (BOOL)containsNodeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListModel *)self nodeIdentifier];
  v6 = [v5 isEqual:v4];

  v7 = (v6 & 1) != 0 || [(SBIconIndexMutableList *)self->_icons containsNodeIdentifier:v4];
  return v7;
}

- (id)containedNodeIdentifiers
{
  v3 = [(SBIconIndexMutableList *)self->_icons containedNodeIdentifiers];
  v4 = [(SBIconListModel *)self nodeIdentifier];
  [v3 addObject:v4];

  return v3;
}

- (id)indexPathsForContainedNodeIdentifier:(id)a3 prefixPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconListModel *)self nodeIdentifier];
  v9 = [v8 isEqual:v6];

  if (v9)
  {
    [MEMORY[0x1E695DFA8] setWithObject:v7];
  }

  else
  {
    [(SBIconIndexMutableList *)self->_icons indexPathsForContainedNodeIdentifier:v6 prefixPath:v7];
  }
  v10 = ;

  return v10;
}

- (id)nodesAlongIndexPath:(id)a3 consumedIndexes:(unint64_t)a4
{
  v5 = [(SBIconIndexMutableList *)self->_icons nodesAlongIndexPath:a3 consumedIndexes:a4];
  [v5 insertObject:self atIndex:0];

  return v5;
}

- (void)addNodeObserver:(id)a3
{
  v7 = a3;
  if (![(NSHashTable *)self->_nodeObservers containsObject:?])
  {
    nodeObservers = self->_nodeObservers;
    if (!nodeObservers)
    {
      v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v6 = self->_nodeObservers;
      self->_nodeObservers = v5;

      nodeObservers = self->_nodeObservers;
    }

    [(NSHashTable *)nodeObservers addObject:v7];
  }
}

- (void)enumerateNodeObserversUsingBlock:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_nodeObservers copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)nodeDescriptionWithPrefix:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD60];
  v5 = a3;
  v6 = [v4 stringWithString:v5];
  v7 = objc_autoreleasePoolPush();
  v8 = &stru_1F3D472A8;
  if (v5)
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = [(SBIconListModel *)self nodeIdentifier];
  v11 = SBIconIndexDebugStringForNodeIdentifier(v10);
  [v6 appendString:v11];

  [v6 appendString:@"\n"];
  icons = self->_icons;
  v13 = [(__CFString *)v9 stringByAppendingString:@" "];
  v14 = [(SBIconIndexMutableList *)icons indexDescriptionWithPrefix:v13];
  [v6 appendString:v14];

  v15 = [(__CFString *)v9 stringByAppendingString:@"   L "];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_icons;
  v17 = [(SBIconIndexMutableList *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * i);
        [v6 appendString:{@"\n", v24}];
        v22 = [v21 nodeDescriptionWithPrefix:v15];
        [v6 appendString:v22];
      }

      v18 = [(SBIconIndexMutableList *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(v7);

  return v6;
}

- (void)list:(id)a3 didAddContainedNodeIdentifiers:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (self->_icons == a3 && [v6 count])
  {
    v8 = [(SBIconListModel *)self activeTransaction];
    v9 = v8;
    if (v8)
    {
      [v8 addNodeIdentifiers:v7];
    }

    else
    {
      v10 = [(NSHashTable *)self->_nodeObservers copy];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v16 + 1) + 8 * i) node:self didAddContainedNodeIdentifiers:{v7, v16}];
          }

          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)list:(id)a3 didRemoveContainedNodeIdentifiers:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (self->_icons == a3 && [v6 count])
  {
    v8 = [(SBIconListModel *)self activeTransaction];
    v9 = v8;
    if (v8)
    {
      [v8 removeNodeIdentifiers:v7];
    }

    else
    {
      v10 = [(NSHashTable *)self->_nodeObservers copy];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v16 + 1) + 8 * i) node:self didRemoveContainedNodeIdentifiers:{v7, v16}];
          }

          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)listDidMoveNodes:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_icons == a3)
  {
    v4 = [(NSHashTable *)self->_nodeObservers copy];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) nodeDidMoveContainedNodes:{self, v10}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)iconList:(id)a3 willAddIcon:(id)a4
{
  if (self->_rotatedIcons == a3)
  {
    v6 = a4;
    [(SBIconListModel *)self updateGridSizeForAddedIcon:v6 removedIcon:0];
    [(SBIconListModel *)self _notifyListObserversWillAddIcon:v6];
  }
}

- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  if (self->_rotatedIcons == a3)
  {
    [(SBIconListModel *)self updateGridSizeForAddedIcon:a5 removedIcon:a4];
  }
}

- (void)setBadgeBehaviorProvider:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_badgeBehaviorProvider);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_badgeBehaviorProvider);
    objc_storeWeak(&self->_badgeBehaviorProvider, v4);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__SBIconListModel_setBadgeBehaviorProvider___block_invoke;
    v8[3] = &unk_1E808CD70;
    v9 = v6;
    v7 = v6;
    [(SBIconListModel *)self enumerateFolderIconsUsingBlock:v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithIconListModel:self copyLeafIcons:0];
}

- (id)_iconAtIndex:(unint64_t)a3
{
  if ([(SBIconIndexMutableList *)self->_icons count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:a3];
  }

  return v5;
}

- (void)_coalesceChangesWithRequestID:(id)a3 changeBlock:(id)a4
{
  v6 = a4;
  v7 = [(SBIconListModel *)self startCoalescingContentChangesForReason:a3];
  v6[2](v6);

  [v7 invalidate];
}

- (id)activeTransactionCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconListModel *)self activeTransaction];
  if (!v5 && v3)
  {
    v5 = [[_SBIconListModelTransaction alloc] initWithListModel:self];
    [(SBIconListModel *)self setActiveTransaction:v5];
  }

  return v5;
}

- (id)startCoalescingContentChangesForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListModel *)self activeTransactionCreatingIfNecessary:1];
  v6 = [[SBIconListModelTransactionAssertion alloc] initWithListModel:self reason:v4];

  [v5 addAssertion:v6];

  return v6;
}

- (void)removeTransactionAssertion:(id)a3
{
  v4 = a3;
  v5 = [(SBIconListModel *)self activeTransactionCreatingIfNecessary:0];
  [v5 removeAssertion:v4];

  if (v5 && ![v5 assertionCount])
  {
    [(SBIconListModel *)self setActiveTransaction:0];
    [v5 commitChanges];
  }
}

- (id)succinctDescription
{
  v2 = [(SBIconListModel *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListModel *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListModel *)self effectiveGridSizeClassDomain];
  v5 = [(SBIconListModel *)self succinctDescriptionBuilder];
  v6 = [(SBIconListModel *)self uniqueIdentifier];
  [v5 appendString:v6 withName:@"uniqueIdentifier"];

  v7 = [v5 appendInteger:-[SBIconIndexMutableList count](self->_icons withName:{"count"), @"count"}];
  WeakRetained = objc_loadWeakRetained(&self->_folder);
  v9 = [v5 appendPointer:WeakRetained withName:@"folder"];

  v10 = [v5 appendBool:-[SBIconListModel isHidden](self withName:"isHidden") ifEqualTo:{@"hidden", 1}];
  v11 = [v5 appendBool:-[SBIconListModel isHiddenByUser](self withName:"isHiddenByUser") ifEqualTo:{@"hiddenByUser", 1}];
  v12 = [(SBIconListModel *)self overflowSlotCount];
  if (v12)
  {
    v13 = [v5 appendInteger:v12 withName:@"overflowSlotCount"];
  }

  v14 = SBHStringForIconGridSize(*&self->_gridSize);
  v15 = [v5 appendObject:v14 withName:@"gridSize"];

  v16 = [(SBIconListModel *)self iconGridSizeClassSizes];
  v17 = [v16 descriptionWithGridSizeClassDomain:v4];
  v18 = [v5 appendObject:v17 withName:@"gridSizeClassSizes"];

  v19 = [(SBHIconGridSizeClassSet *)self->_allowedGridSizeClasses descriptionWithGridSizeClassDomain:v4];
  v20 = [v5 appendObject:v19 withName:@"allowedGridSizeClasses"];

  v21 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  v22 = v21;
  if (v21 && ([v21 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    v23 = [v4 descriptionForGridSizeClass:v22];
    [v5 appendString:v23 withName:@"rotatedLayoutClusterGridSizeClass"];
  }

  v24 = [v5 appendBool:-[SBIconListModel allowsRotatedLayout](self withName:"allowsRotatedLayout") ifEqualTo:{@"allowsRotatedLayout", 1}];
  v25 = [v5 appendBool:-[SBIconListModel allowsIndependentRotatedLayout](self withName:"allowsIndependentRotatedLayout") ifEqualTo:{@"allowsIndependentRotatedLayout", 0}];
  v26 = [(SBIconListModel *)self focusModeIdentifiers];
  if ([v26 count])
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v26 allObjects];
    v29 = [v28 componentsJoinedByString:{@", "}];
    v30 = [v27 stringWithFormat:@"{%@}", v29];
    [v5 appendString:v30 withName:@"focusModeIdentifiers"];
  }

  v31 = [(SBIconListModel *)self iconLayoutBehavior];
  if (v31)
  {
    v32 = SBHStringForIconLayoutBehavior(v31);
    [v5 appendString:v32 withName:@"iconLayoutBehavior"];
  }

  v33 = SBHStringForFixedIconLocationBehavior([(SBIconListModel *)self fixedIconLocationBehavior]);
  [v5 appendString:v33 withName:@"fixedIconLocationBehavior"];

  v34 = SBHStringForIconDisplacementBehavior([(SBIconListModel *)self iconDisplacementBehavior]);
  [v5 appendString:v34 withName:@"iconDisplacementBehavior"];

  v35 = [v5 appendBool:-[SBIconListModel isIconStateDirty](self withName:"isIconStateDirty") ifEqualTo:{@"isIconStateDirty", 1}];

  return v5;
}

- (SBTreeNode)treeParent
{
  WeakRetained = objc_loadWeakRetained(&self->_treeParent);

  return WeakRetained;
}

- (SBIconListModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHIconBadgeBehaviorProviding)badgeBehaviorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeBehaviorProvider);

  return WeakRetained;
}

- (id)miniGridViewWithIconImageInfo:(SBIconImageInfo *)a3 cellSpacing:(CGSize)a4 imageAppearance:(id)a5 options:(unint64_t)a6 cellProvider:(id)a7
{
  v12 = v10;
  v13 = v9;
  v51 = v8;
  v14 = v7;
  height = a4.height;
  width = a4.width;
  v18 = a3;
  v19 = a6;
  v20 = [(SBIconListModel *)self gridSize];
  v21 = HIWORD(*&v20);
  if (v20.columns)
  {
    v22 = v13 * (v20.columns - 1);
  }

  else
  {
    v22 = 0.0;
  }

  v50 = self;
  v23 = [(SBIconListModel *)self numberOfIcons];
  v49 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  columns = v20.columns;
  v24 = objc_alloc_init(SBHIconMiniGridView);
  v25 = v24;
  v44 = HIWORD(*&v20);
  v26 = v12 * (v21 - 1);
  if (*&v20 < 0x10000)
  {
    v26 = 0.0;
  }

  [(SBHIconMiniGridView *)v24 setBounds:0.0, 0.0, v22 + v20.columns * width, v26 + v21 * height];
  [(SBHIconMiniGridView *)v25 setGridSize:*&v20];
  v27 = v23;
  [(SBHIconMiniGridView *)v25 setCellCount:v23];
  v53 = v18;
  [(SBHIconMiniGridView *)v25 setImageAppearance:v18];
  if (*&v20 >= 0x10000)
  {
    v28 = v20.columns;
    v47 = 0;
    v46 = 0;
    v48 = width + v13;
    v43 = v20.columns;
    v42 = v20.columns - 1;
    while (!columns)
    {
LABEL_23:
      v47 += v43;
      if (++v46 == v44)
      {
        goto LABEL_24;
      }
    }

    v29 = 0;
    v30 = v42;
    v31 = v47;
    while (1)
    {
      if (v27 <= v31)
      {
        goto LABEL_23;
      }

      v32 = [(SBIconListModel *)v50 iconAtIndex:v31];
      v33 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:v53];
      if (v19)
      {
        v34 = v19[2](v19, v32, v33, a5, width, height, v14, v51);
        if (v34)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v34 = [v32 iconLayerViewWithInfo:v33 traitCollection:a5 options:1 priority:{width, height, v14, v51}];
        [v34 setGlassIdentifier:10];
        if (v34)
        {
LABEL_15:
          [v32 applyTreatmentsToMiniGridCellView:v34];
          [v34 bounds];
          x = v56.origin.x;
          y = v56.origin.y;
          v37 = v56.size.width;
          v38 = v56.size.height;
          if (CGRectGetWidth(v56) <= 0.0)
          {
            [v34 setBounds:{0.0, 0.0, width, height}];
          }

          else
          {
            v57.origin.x = x;
            v57.origin.y = y;
            v57.size.width = v37;
            v57.size.height = v38;
            v39 = CGRectGetWidth(v57);
            CGAffineTransformMakeScale(&v54, width / v39, width / v39);
            [v34 setTransform:&v54];
          }

          [(SBHIconMiniGridView *)v25 addSubview:v34];
          if (v49 == 1)
          {
            v40 = v30;
          }

          else
          {
            v40 = v29;
          }

          [v34 setCenter:{width * 0.5 + v40 * v48, height * 0.5 + v46 * (height + v12)}];
          [(SBHIconMiniGridView *)v25 setView:v34 forIcon:v32];
        }
      }

      ++v29;
      ++v31;
      --v30;
      if (v29 >= v28)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_24:

  return v25;
}

- (id)miniGridViewWithListLayout:(id)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = MEMORY[0x1E69DD1B8];
  v9 = a3;
  v10 = [v8 sbh_iconImageAppearanceFromTraitCollection:a4];
  v11 = [(SBIconListModel *)self miniGridViewWithListLayout:v9 imageAppearance:v10 options:a5];

  return v11;
}

- (id)miniGridViewWithListLayout:(id)a3 imageAppearance:(id)a4 options:(unint64_t)a5 cellProvider:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  [v12 iconImageInfo];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = SBHIconListLayoutFolderIconGridCellSize(v12);
  v21 = v20;
  v22 = v18 * (v19 / v14);
  v23 = SBHIconListLayoutFolderIconGridCellSpacing(v12);
  v25 = v24;

  v26 = [(SBIconListModel *)self miniGridViewWithIconImageInfo:v11 cellSpacing:a5 imageAppearance:v10 options:v19 cellProvider:v21, v16, v22, v23, v25];

  return v26;
}

- (void)insertIcons:atIndex:options:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_3(&dword_1BEB18000, v2, v3, "%s ERROR: icon of class %{public}@ cannot be added to this model: %@", v4, v5, v6, v7, 2u);
}

- (void)insertIcons:(os_log_t)log atIndex:options:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[SBIconListModel insertIcons:atIndex:options:]";
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "%s ERROR: invalid index for insertion", &v1, 0xCu);
}

- (void)insertIconWhilePreservingQuads:toGridCellIndex:gridCellInfoOptions:mutationOptions:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_3(&dword_1BEB18000, v2, v3, "%s ERROR: icon of class %{public}@ cannot be added to this model: %@", v4, v5, v6, v7, 2u);
}

- (void)_moveContainedIconWithinAffectedQuadsIfNecessary:(uint64_t)a1 toGridCellIndex:(NSObject *)a2 gridCellInfoOptions:mutationOptions:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Couldn't put icon into the pocket list model (%@)", &v2, 0xCu);
}

- (void)_rotatedIconsFromList:(os_log_t)log gridCellInfoOptions:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "Missing icons after rotating! %@ vs %@", &v3, 0x16u);
}

@end