@interface SBIconListModel
+ (BOOL)isListModelNodeIdentifier:(id)identifier;
+ (id)iconGridCellInfoForIcons:(id)icons gridSize:(SBHIconGridSize)size gridSizeClassSizes:(id)sizes iconLayoutBehavior:(unint64_t)behavior referenceIconOrder:(id)order fixedIconLocations:(id)locations options:(unint64_t)options;
+ (id)listModelNodeIdentifierForUniqueIdentifier:(id)identifier;
+ (id)movedIconsWithOriginalOrder:(id)order newOrder:(id)newOrder;
+ (unint64_t)gridCellInfoIconTypeForIcon:(id)icon;
+ (void)applyIconLayoutFromGridCellInfo:(id)info inGridRange:(SBHIconGridRange)range iconOrder:(id)order toGridCellInfo:(id)cellInfo inGridRange:(SBHIconGridRange)gridRange iconOrder:(id)iconOrder;
+ (void)layOutIcons:(id)icons atIndexes:(id)indexes inGridCellInfo:(id)info startingAtGridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size gridSizeClassSizes:(id)sizes iconLayoutBehavior:(unint64_t)behavior referenceIconOrder:(id)self0 fixedIconLocations:(id)self1 options:(unint64_t)self2;
- (BOOL)_canClusterIconsUsingSizeClass:(id)class;
- (BOOL)_moveContainedIconBySwappingVerticallyWithAdjacentIcons:(id)icons toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)_moveContainedIconLargerThanQuadsIfNecessary:(id)necessary toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)_moveContainedIconUsingAutomaticClusteringIfNecessary:(id)necessary toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)_moveContainedIconUsingTwoDimensionalMovement:(id)movement toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)_moveContainedIconWithinAffectedQuadsIfNecessary:(id)necessary toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)_validateIconsInArray:(id)array matchArray:(id)matchArray;
- (BOOL)allowsAddingIcon:(id)icon ignoringPlaceholders:(BOOL)placeholders;
- (BOOL)allowsAddingIcons:(id)icons ignoringPlaceholders:(BOOL)placeholders;
- (BOOL)areAllIconsFixed;
- (BOOL)areIconsInContiguousRegionOfHeterogeneousFixedness:(id)fixedness gridCellInfo:(id)info;
- (BOOL)areIconsInGridRangeFullyContained:(SBHIconGridRange)contained gridCellInfo:(id)info;
- (BOOL)canBounceIcon:(id)icon;
- (BOOL)canUseFastGridLayoutValidity;
- (BOOL)containsIcon:(id)icon;
- (BOOL)containsNodeIdentifier:(id)identifier;
- (BOOL)containsWidgetIconWithExtensionBundleIdentifier:(id)identifier;
- (BOOL)directlyContainsAnyIconInArray:(id)array;
- (BOOL)directlyContainsIconOfClass:(Class)class;
- (BOOL)directlyContainsIconPassingTest:(id)test;
- (BOOL)directlyContainsIcons:(id)icons;
- (BOOL)getIconGridRange:(SBHIconGridRange *)range forGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (BOOL)hasAllFixedIconsInContiguousRegion:(id)region gridCellInfo:(id)info;
- (BOOL)hasContiguousRegionOfFixedIconsAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (BOOL)hasFixedIconInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (BOOL)hasFixedIconInGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options;
- (BOOL)hasFixedIconLocationsWithGridCellInfo:(id)info;
- (BOOL)hasFixedIconLocationsWithGridCellInfoOptions:(unint64_t)options;
- (BOOL)hasFixedIconsInContiguousRegion:(id)region gridCellInfo:(id)info;
- (BOOL)hasFixedIconsInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (BOOL)hasIconsInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (BOOL)isAllowedToContainIcon:(id)icon;
- (BOOL)isAllowedToContainIconGridSizeClass:(id)class;
- (BOOL)isAllowedToContainIcons:(id)icons;
- (BOOL)isContiguousRegionEligibleForBackfill:(id)backfill gridCellInfo:(id)info;
- (BOOL)isEligibleForSimpleMutationsWithGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)isGridLayoutValid:(id)valid;
- (BOOL)isGridLayoutValidWithOptions:(unint64_t)options;
- (BOOL)isGridLayoutValidWithOptions:(unint64_t)options outOfBoundsIcons:(id *)icons;
- (BOOL)isHiddenByUser;
- (BOOL)isIcon:(id)icon fixedAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (BOOL)isIconFixed:(id)fixed gridCellInfoOptions:(unint64_t)options;
- (BOOL)isIconStateDirty;
- (BOOL)isInsertionFixedForIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfo:(id)info mutationOptions:(unint64_t)options;
- (BOOL)isInsertionFixedForIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)isInsertionFixedForIcon:(id)icon ofGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfo:(id)info mutationOptions:(unint64_t)options;
- (BOOL)isInsertionFixedForIcon:(id)icon ofGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)isInsertionFixedForIcon:(id)icon options:(unint64_t)options;
- (BOOL)isInsertionFixedForIconGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)isInsertionRequiredToBeFixedForIcon:(id)icon ofGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfo:(id)info mutationOptions:(unint64_t)options;
- (BOOL)isLayoutReversibleWhenRotated;
- (BOOL)isMoveFixedForIcon:(id)icon toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)isValidGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (BOOL)isValidGridRange:(SBHIconGridRange)range options:(unint64_t)options;
- (BOOL)layOutIconsInGridCellInfo:(id)info forInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index constrainedToGridRange:(SBHIconGridRange)range preferredDisplacementDirection:(unint64_t)direction gridCellInfo:(id)cellInfo gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)self0;
- (BOOL)needsToReflowIconsForRemovingIcon:(id)icon inContiguousRegion:(id)region gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (BOOL)representsSelf:(id)self;
- (BOOL)shouldUseTwoDimensionalMovementWithGridCellInfo:(id)info mutationOptions:(unint64_t)options;
- (NSArray)treeChildren;
- (SBFolder)folder;
- (SBHIconBadgeBehaviorProviding)badgeBehaviorProvider;
- (SBHIconGridRange)gridRangeForIcon:(id)icon gridCellInfo:(id)info;
- (SBHIconGridRange)gridRangeForIcon:(id)icon gridCellInfoOptions:(unint64_t)options;
- (SBHIconGridSize)boundedGridSizeWithOptions:(unint64_t)options;
- (SBHIconGridSize)gridSizeForGridSizeClass:(id)class gridCellInfo:(id)info;
- (SBHIconGridSize)gridSizeForGridSizeClass:(id)class gridCellInfoOptions:(unint64_t)options;
- (SBHIconGridSize)gridSizeForIcon:(id)icon;
- (SBHIconGridSize)gridSizeForIcon:(id)icon gridCellInfo:(id)info;
- (SBHIconGridSize)gridSizeForIcon:(id)icon gridCellInfoOptions:(unint64_t)options;
- (SBHIconGridSize)gridSizeWithOptions:(unint64_t)options;
- (SBHIconGridSize)rotatedGridSizeWithOptions:(unint64_t)options;
- (SBHIconGridSizeClassDomain)effectiveGridSizeClassDomain;
- (SBIconCoordinate)coordinateForGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (SBIconCoordinate)coordinateForGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (SBIconCoordinate)coordinateForIcon:(id)icon gridCellInfo:(id)info;
- (SBIconListModel)initWithFolder:(id)folder gridSize:(SBHIconGridSize)size;
- (SBIconListModel)initWithFolder:(id)folder maxIconCount:(unint64_t)count;
- (SBIconListModel)initWithIconListModel:(id)model copyLeafIcons:(BOOL)icons;
- (SBIconListModel)initWithUniqueIdentifier:(id)identifier folder:(id)folder gridSize:(SBHIconGridSize)size;
- (SBIconListModel)initWithUniqueIdentifier:(id)identifier folder:(id)folder gridSize:(SBHIconGridSize)size gridSizeClassSizes:(id)sizes;
- (SBIconListModelDelegate)delegate;
- (SBIconListModelRotationReorderingInfo)_rotationReorderingInfoWithClusterSizeClass:(SEL)class gridCellInfoOptions:(id)options;
- (SBTreeNode)treeParent;
- (_NSRange)rangeOfDirectlyContainedIconsInRange:(_NSRange)range passingTest:(id)test;
- (id)_checkAndRemoveBouncedIconsAfterChangeToIcons:(id)icons ignoringTrailingIconCheck:(BOOL)check options:(unint64_t)options;
- (id)_clusterIconsForSizeClass:(id)class behavior:(unint64_t)behavior gridCellInfoOptions:(unint64_t)options;
- (id)_clusterIconsForSizeClass:(id)class behavior:(unint64_t)behavior gridCellInfoProvider:(id)provider;
- (id)_iconAtIndex:(unint64_t)index;
- (id)_otherListForGridCellInfoOptions:(unint64_t)options createIfNecessary:(BOOL)necessary;
- (id)_reorderedIconsWithClusterSizeClass:(id)class forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)info gridCellInfoOptions:(unint64_t)options;
- (id)_rotatedIconListModel;
- (id)_rotatedIconListModelIfAllowed;
- (id)_rotatedIconListModelIfApplicable;
- (id)_rotatedIconOrderIfApplicable;
- (id)_rotatedIcons;
- (id)_rotatedIconsFromList:(id)list gridCellInfoOptions:(unint64_t)options;
- (id)_rotatedIconsIfApplicable;
- (id)_targetListForGridCellInfo:(id)info;
- (id)_targetListForGridCellInfoOptions:(unint64_t)options;
- (id)_updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)activeTransactionCreatingIfNecessary:(BOOL)necessary;
- (id)addIcon:(id)icon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)addIcon:(id)icon options:(unint64_t)options;
- (id)addIcons:(id)icons options:(unint64_t)options;
- (id)adjustContiguousRegionForBackfill:(id)backfill gridCellInfo:(id)info;
- (id)allowedIconsForByReplacingContentsWithIcons:(id)icons;
- (id)allowedIconsForIcons:(id)icons ignoringPlaceholders:(BOOL)placeholders;
- (id)changeGridSize:(SBHIconGridSize)size options:(unint64_t)options;
- (id)changeGridSizeClassOfContainedIcon:(id)icon toGridSizeClass:(id)class gridCellInfoOptions:(unint64_t)options;
- (id)containedNodeIdentifiers;
- (id)contiguousRegionForGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (id)coordinatesOfAllIconsWithOptions:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)directlyContainedIconPassingTest:(id)test;
- (id)directlyContainedIconsPassingTest:(id)test;
- (id)filterIconsForLayout:(id)layout;
- (id)filteredIncomingFixedIconLocationsIfNecessary:(id)necessary;
- (id)fixedIconLocations;
- (id)fixedIconLocationsWithGridCellInfoOptions:(unint64_t)options;
- (id)fixedIconsInContiguousRegion:(id)region gridCellInfo:(id)info;
- (id)fixedIconsInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (id)gridCellIndexesForIconsIntersectingGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (id)gridCellIndexesForIconsIntersectingGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options;
- (id)gridCellInfoByReflowingIconsInContiguousRegion:(id)region forMovingIcon:(id)icon toGridCellIndex:(unint64_t)index referenceIconOrder:(id)order internalCellValidDirections:(unint64_t)directions gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options;
- (id)gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:(id)icon atGridCellIndex:(unint64_t)index constrainedToGridCellIndexes:(id)indexes gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:(id)icon atGridCellIndex:(unint64_t)index constrainedToGridRange:(SBHIconGridRange)range gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)gridCellInfoByUsingPredictedTwoDimensionalMovementToInsertIcon:(id)icon atGridCellIndex:(unint64_t)index constrainedToGridRange:(SBHIconGridRange)range gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)gridCellInfoByUsingTwoDimensionalMovementToInsertIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)gridCellInfoExcludingIcons:(id)icons options:(unint64_t)options;
- (id)gridCellInfoForGridSize:(SBHIconGridSize)size options:(unint64_t)options;
- (id)gridCellInfoForIcons:(id)icons gridSize:(SBHIconGridSize)size options:(unint64_t)options;
- (id)gridCellInfoForIcons:(id)icons gridSize:(SBHIconGridSize)size referenceIconOrder:(id)order fixedIconLocations:(id)locations options:(unint64_t)options;
- (id)gridCellInfoForIcons:(id)icons gridSize:(SBHIconGridSize)size referenceIconOrder:(id)order options:(unint64_t)options;
- (id)gridCellInfoForIcons:(id)icons options:(unint64_t)options;
- (id)gridCellInfoForIcons:(id)icons referenceIconOrder:(id)order options:(unint64_t)options;
- (id)gridCellInfoWithLeastMovementChangeWithGridCellInfo:(id)info toGridCellInfo:(id)cellInfo orGridCellInfo:(id)gridCellInfo;
- (id)gridCellInfoWithOptions:(unint64_t)options;
- (id)gridSizeClassSizesWithGridCellInfo:(id)info;
- (id)gridSizeClassSizesWithOptions:(unint64_t)options;
- (id)iconAtCoordinate:(SBIconCoordinate)coordinate gridCellInfo:(id)info;
- (id)iconAtCoordinate:(SBIconCoordinate)coordinate gridCellInfoOptions:(unint64_t)options;
- (id)iconAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (id)iconAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (id)iconGridCellInfoBySimulatingInsertionOfIcons:(id)icons ignoringPlaceholders:(BOOL)placeholders gridCellInfoOptions:(unint64_t)options iconOrder:(id *)order;
- (id)iconGridCellInfoBySimulatingRemovalOfIcons:(id)icons ignoringPlaceholders:(BOOL)placeholders gridCellInfoOptions:(unint64_t)options iconOrder:(id *)order;
- (id)iconWithIdentifier:(id)identifier;
- (id)iconsAtGridCellIndexes:(id)indexes gridCellInfo:(id)info;
- (id)iconsByReplacingIconsNearNaturalGapWithPlaceholder:(id)placeholder referenceIconOrder:(id *)order gridCellInfo:(id)info;
- (id)iconsForGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (id)iconsForGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options;
- (id)iconsForLayoutWithGridCellInfoOptions:(unint64_t)options;
- (id)iconsInContiguousRegion:(id)region gridCellInfoOptions:(unint64_t)options;
- (id)iconsInContiguousRegion:(id)region startingAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (id)iconsInGridColumn:(unint64_t)column gridCellInfo:(id)info;
- (id)iconsInGridColumnRange:(_NSRange)range gridCellInfo:(id)info;
- (id)iconsInGridRow:(unint64_t)row gridCellInfo:(id)info;
- (id)iconsOfClass:(Class)class;
- (id)iconsPassingTest:(id)test;
- (id)iconsThatAreAllowedToBeContainedInIcons:(id)icons;
- (id)iconsWithGridCellInfoOptions:(unint64_t)options;
- (id)indexPathsForContainedNodeIdentifier:(id)identifier prefixPath:(id)path;
- (id)insertIcon:(id)icon atCoordinate:(SBIconCoordinate)coordinate gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)insertIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)insertIcon:(id)icon atIndex:(unint64_t)index;
- (id)insertIcon:(id)icon atIndex:(unint64_t)index options:(unint64_t)options;
- (id)insertIcon:(id)icon relativeToIcon:(id)toIcon positionDelta:(int64_t)delta gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)insertIconWhilePreservingQuads:(id)quads toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)insertIcons:(id)icons atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)insertIcons:(id)icons atIndex:(unint64_t)index options:(unint64_t)options;
- (id)largestClusteringSizeClassWithOptions:(unint64_t)options;
- (id)lastDirectlyContainedLeafIconWithApplicationBundleIdentifier:(id)identifier;
- (id)layoutDescriptionWithOptions:(unint64_t)options;
- (id)miniGridViewWithIconImageInfo:(SBIconImageInfo *)info cellSpacing:(CGSize)spacing imageAppearance:(id)appearance options:(unint64_t)options cellProvider:(id)provider;
- (id)miniGridViewWithListLayout:(id)layout imageAppearance:(id)appearance options:(unint64_t)options cellProvider:(id)provider;
- (id)miniGridViewWithListLayout:(id)layout traitCollection:(id)collection options:(unint64_t)options;
- (id)moveContainedIcon:(id)icon toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)movedIconsFromGridCellInfo:(id)info withIconOrder:(id)order toGridCellInfo:(id)cellInfo;
- (id)nodeDescriptionWithPrefix:(id)prefix;
- (id)nodesAlongIndexPath:(id)path consumedIndexes:(unint64_t)indexes;
- (id)relocateFixedIconsInGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)repairModelByEliminatingGapsInIcons:(id)icons avoidingIcons:(id)avoidingIcons gridCellInfoOptions:(unint64_t)options;
- (id)replaceIcon:(id)icon withIcon:(id)withIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)replaceIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options;
- (id)replaceIcon:(id)icon withIcons:(id)icons gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)replaceIconAtGridCellIndex:(unint64_t)index withIcon:(id)icon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)replaceIconAtIndex:(unint64_t)index withIcon:(id)icon options:(unint64_t)options;
- (id)replaceLayoutWithGridCellInfo:(id)info mutationOptions:(unint64_t)options;
- (id)rotatedFixedIconLocations;
- (id)setIcons:(id)icons gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (id)setIconsFromIconListModel:(id)model;
- (id)startCoalescingContentChangesForReason:(id)reason;
- (id)succinctDescription;
- (int64_t)_moveIcon:(id)icon byClusteringForSizeClass:(id)class toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (int64_t)compareMovementChangeWithGridCellInfo:(id)info toGridCellInfo:(id)cellInfo orGridCellInfo:(id)gridCellInfo;
- (int64_t)effectiveIconDisplacementBehaviorWithGridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (unint64_t)_iconIndexForMovingIcon:(id)icon toGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (unint64_t)_otherGridCellInfoOptionsForGridCellInfoOptions:(unint64_t)options;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon aboveIconAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon aboveIconAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon afterIconAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon afterIconAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon belowIconAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon belowIconAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon gridCellInfo:(id)info;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon gridCellInfoOptions:(unint64_t)options;
- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon maintainingPositionRelativeToIcon:(id)toIcon before:(BOOL)before ignoringPlaceholders:(BOOL)placeholders gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (unint64_t)bestGridCellIndexForInsertingIconOfGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfo:(id)info;
- (unint64_t)bestGridCellIndexForMovingIcons:(id)icons toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (unint64_t)bestGridCellIndexOfRangeOfGridSizeClass:(id)class withinGridRange:(SBHIconGridRange)range gridCellInfo:(id)info passingTest:(id)test;
- (unint64_t)bestGridCellInfoOptionsForGridCellInfo:(id)info;
- (unint64_t)bestIconIndexForReplacingIcon:(id)icon withIcon:(id)withIcon gridCellInfo:(id)info;
- (unint64_t)countOfDirectlyContainedIconsPassingTest:(id)test;
- (unint64_t)countOfNonDefaultSizeClassIcons;
- (unint64_t)firstFreeGridCellIndexOfRangeOfSize:(SBHIconGridSize)size gridCellInfoOptions:(unint64_t)options;
- (unint64_t)firstFreeGridCellIndexOfRangeOfSizeClass:(id)class ignoringValidGridLayoutCheck:(BOOL)check gridCellInfoOptions:(unint64_t)options;
- (unint64_t)firstFreeGridCellIndexWithOptions:(unint64_t)options;
- (unint64_t)firstFreeSlotIndex;
- (unint64_t)firstGridCellIndexOfNaturalGapInRange:(_NSRange)range gridCellInfo:(id)info;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class nearGridRange:(SBHIconGridRange)range withinGridRange:(SBHIconGridRange)gridRange gridCellInfo:(id)info withoutIconsPassingTest:(id)test;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutFixedIconsNearContiguousRegion:(id)region gridCellInfo:(id)info;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutFixedIconsNearContiguousRegion:(id)region gridCellInfoOptions:(unint64_t)options;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutFixedIconsNearGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutFixedIconsNearGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsEqualToOrLargerThanGridSizeClass:(id)sizeClass nearGridRange:(SBHIconGridRange)range withinGridRange:(SBHIconGridRange)gridRange gridCellInfo:(id)info;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsNearGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsNearGridRange:(SBHIconGridRange)range gridCellInfo:(id)info passingTest:(id)test;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsNearGridRange:(SBHIconGridRange)range withinGridRange:(SBHIconGridRange)gridRange gridCellInfo:(id)info;
- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsNearGridRange:(SBHIconGridRange)range withinGridRange:(SBHIconGridRange)gridRange gridCellInfo:(id)info passingTest:(id)test;
- (unint64_t)fixedLocationForIcon:(id)icon;
- (unint64_t)fixedLocationForIcon:(id)icon gridCellInfoOptions:(unint64_t)options;
- (unint64_t)gridCellIndexAboveIconAtIndex:(unint64_t)index gridCellInfo:(id)info;
- (unint64_t)gridCellIndexAboveIconAtIndex:(unint64_t)index options:(unint64_t)options;
- (unint64_t)gridCellIndexBelowIconAtIndex:(unint64_t)index gridCellInfo:(id)info;
- (unint64_t)gridCellIndexBelowIconAtIndex:(unint64_t)index options:(unint64_t)options;
- (unint64_t)gridCellIndexForCoordinate:(SBIconCoordinate)coordinate gridCellInfoOptions:(unint64_t)options;
- (unint64_t)gridCellIndexForIcon:(id)icon gridCellInfo:(id)info;
- (unint64_t)gridCellIndexForIcon:(id)icon gridCellInfoOptions:(unint64_t)options;
- (unint64_t)gridCellIndexForIconIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options;
- (unint64_t)gridCellIndexForIconWithIdentifier:(id)identifier gridCellInfo:(id)info;
- (unint64_t)gridCellIndexForInsertingIcon:(id)icon relativeToIcon:(id)toIcon positionDelta:(int64_t)delta gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (unint64_t)indexForIcon:(id)icon;
- (unint64_t)indexForIconWithIdentifier:(id)identifier;
- (unint64_t)indexForInsertingIcon:(id)icon relativeToIcon:(id)toIcon positionDelta:(int64_t)delta;
- (unint64_t)numberOfNonPlaceholderIcons;
- (unint64_t)numberOfUsedColumns;
- (unint64_t)numberOfUsedGridCells;
- (unint64_t)numberOfUsedRows;
- (unint64_t)numberOfUsedSlots;
- (unint64_t)removeIconFromOtherPositionsInHierarchy:(id)hierarchy forInsertingAtIndex:(unint64_t)index removeIfAlreadyContained:(BOOL)contained gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (unint64_t)rotatedGridCellInfoOptions:(unint64_t)options;
- (unint64_t)simpleInsertionIconIndexForGridCellIndex:(unint64_t)index;
- (unint64_t)willAddIcon:(id)icon atIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (unint64_t)willReplaceIcon:(id)icon withIcon:(id)withIcon atIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (unsigned)gridSizeAreaForGridSizeClass:(id)class gridCellInfo:(id)info;
- (unsigned)gridSizeAreaForGridSizeClass:(id)class gridCellInfoOptions:(unint64_t)options;
- (void)_coalesceChangesWithRequestID:(id)d changeBlock:(id)block;
- (void)_configureRotatedIconsListModel:(id)model;
- (void)_ensureRotatedIcons;
- (void)_invalidateLayoutWithGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)_makeRotatedIconsListModelWithIcons:(id)icons options:(unint64_t)options;
- (void)_moveAllNonDefaultSizedIconsToBeginning;
- (void)_moveContainedIconUsingSimpleMovement:(id)movement toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)_moveDefaultSizedIconsOfCountIntoContiguousLeadingNonDefaultSizedIcons:(unint64_t)icons;
- (void)_notifyListObserver:(id)observer didAddIcons:(id)icons didRemoveIcons:(id)removeIcons movedIcons:(id)movedIcons didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)_notifyListObservers:(id)observers;
- (void)_notifyListObserversDidAddIcon:(id)icon;
- (void)_notifyListObserversDidAddIcons:(id)icons didRemoveIcons:(id)removeIcons movedIcons:(id)movedIcons didReplaceIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options;
- (void)_notifyListObserversDidMoveIcon:(id)icon options:(unint64_t)options;
- (void)_notifyListObserversDidRemoveIcon:(id)icon;
- (void)_notifyListObserversDirectlyContainsNonDefaultSizeClassIconDidChange;
- (void)_notifyListObserversWillAddIcon:(id)icon;
- (void)_notifyListObserversWillRemoveIcon:(id)icon;
- (void)_reorderIconsAfterUnclusteringWithClusterSizeClass:(id)class forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)info gridCellInfoOptions:(unint64_t)options;
- (void)_reorderIconsWithClusterSizeClass:(id)class forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)info gridCellInfoOptions:(unint64_t)options;
- (void)_setRotatedIcons:(id)icons clearRotatedFixedIconLocations:(BOOL)locations;
- (void)_unclusterIcons:(id)icons ofSizeClass:(id)class baseGridCellInfoOptions:(unint64_t)options gridCellInfoProvider:(id)provider;
- (void)_unclusterIcons:(id)icons ofSizeClass:(id)class gridCellInfoOptions:(unint64_t)options;
- (void)_updateOtherListWithGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions createIfNecessary:(BOOL)necessary usingBlock:(id)block;
- (void)_updateRotatedIconsUsingBlock:(id)block;
- (void)_updateRotatedIconsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)addFixedIconLocations:(id)locations options:(unint64_t)options;
- (void)addIconsOfClass:(Class)class toSet:(id)set;
- (void)addIconsPassingTest:(id)test toSet:(id)set;
- (void)addListObserver:(id)observer;
- (void)addNodeObserver:(id)observer;
- (void)addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo:(id)info;
- (void)ancestryDidChange;
- (void)clearParentNodeForIconIfNecessary:(id)necessary;
- (void)didAddIcon:(id)icon options:(unint64_t)options;
- (void)didRemoveIcon:(id)icon options:(unint64_t)options;
- (void)didReplaceIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options;
- (void)enumerateFixedIconsUsingBlock:(id)block;
- (void)enumerateFolderIconsUsingBlock:(id)block;
- (void)enumerateIconsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateNodeObserversUsingBlock:(id)block;
- (void)finishChangingFromGridSize:(SBHIconGridSize)size withOldIconCoordinates:(id)coordinates bouncedIcons:(id)icons options:(unint64_t)options;
- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)iconList:(id)list willAddIcon:(id)icon;
- (void)layOutIcons:(id)icons atIndexes:(id)indexes inGridCellInfo:(id)info startingAtGridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size fixedIconLocations:(id)locations options:(unint64_t)options;
- (void)layOutIcons:(id)icons inGridCellInfo:(id)info startingAtGridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size fixedIconLocations:(id)locations options:(unint64_t)options;
- (void)layOutIcons:(id)icons inGridCellInfo:(id)info startingAtGridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size referenceIconOrder:(id)order fixedIconLocations:(id)locations options:(unint64_t)options;
- (void)layOutIconsPrioritizedByGridArea:(id)area inGridCellInfo:(id)info gridSize:(SBHIconGridSize)size referenceIconOrder:(id)order referenceGridCellInfo:(id)cellInfo fixedIconLocations:(id)locations options:(unint64_t)options;
- (void)list:(id)list didAddContainedNodeIdentifiers:(id)identifiers;
- (void)list:(id)list didRemoveContainedNodeIdentifiers:(id)identifiers;
- (void)listDidMoveNodes:(id)nodes;
- (void)markIconStateClean;
- (void)markIconStateDirty;
- (void)markIconStateDirtyWithOptions:(unint64_t)options;
- (void)moveContainedIcon:(id)icon aboveIcon:(id)aboveIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)moveContainedIcon:(id)icon afterIcon:(id)afterIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)moveContainedIcon:(id)icon beforeIcon:(id)beforeIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)moveContainedIcon:(id)icon belowIcon:(id)belowIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)moveContainedIcon:(id)icon toIndex:(unint64_t)index options:(unint64_t)options;
- (void)performByExcludingIconsFromLayout:(id)layout usingBlock:(id)block;
- (void)performChangesByClusteringForSizeClass:(id)class behavior:(unint64_t)behavior withGridCellInfoOptions:(unint64_t)options block:(id)block;
- (void)performChangesByPreservingOrderOfDefaultSizedIcons:(id)icons;
- (void)performChangesByPreservingPositionsOfIconsLargerThanSizeClass:(id)class block:(id)block;
- (void)reflowIconsForResizingIcon:(id)icon atGridCellIndex:(unint64_t)index toGridSizeClass:(id)class gridCellInfoOptions:(unint64_t)options;
- (void)reflowIconsForwardForInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index replacingIcon:(id)replacingIcon gridCellInfoOptions:(unint64_t)options;
- (void)relocateAnyAffectedFixedIconsForInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index replacingIcon:(id)replacingIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)relocateAnyAffectedFixedIconsForMovingIcon:(id)icon fromGridCellIndex:(unint64_t)index toGridCellIndex:(unint64_t)cellIndex intoContiguousRegions:(id)regions gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)relocateAnyAffectedFixedIconsWithoutContiguousRegionReflowingForMovingIcon:(id)icon fromGridCellIndex:(unint64_t)index toGridCellIndex:(unint64_t)cellIndex intoContiguousRegions:(id)regions gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)removeAllFixedIconLocations;
- (void)removeAllIcons;
- (void)removeAllIconsPassingTest:(id)test;
- (void)removeAnyIconsWithDisallowedGridSizeClasses;
- (void)removeFixedIconLocationForIcon:(id)icon;
- (void)removeFixedIconLocationsForIcons:(id)icons;
- (void)removeFixedIconLocationsForIconsInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info;
- (void)removeFixedIconLocationsForIconsInGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options;
- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegion:(id)region gridCellInfo:(id)info;
- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:(unint64_t)index sortByLayoutOrder:(BOOL)order gridCellInfo:(id)info;
- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:(unint64_t)index sortByLayoutOrder:(BOOL)order gridCellInfoOptions:(unint64_t)options;
- (void)removeFixedIconLocationsIfPossibleWithGridCellInfo:(id)info;
- (void)removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:(unint64_t)options;
- (void)removeIcon:(id)icon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)removeIcon:(id)icon options:(unint64_t)options;
- (void)removeIconAtIndex:(unint64_t)index options:(unint64_t)options;
- (void)removeIcons:(id)icons;
- (void)removeIcons:(id)icons gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)removeIcons:(id)icons options:(unint64_t)options;
- (void)removeIconsAtIndexes:(id)indexes options:(unint64_t)options;
- (void)removeLastIcon;
- (void)removeTransactionAssertion:(id)assertion;
- (void)reorderFixedIconsForMovingIcon:(id)icon withinContiguousRegion:(id)region toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)reorderFixedIconsInContiguousRegion:(id)region forMovingIcon:(id)icon fromGridCellIndex:(unint64_t)index toGridCellIndex:(unint64_t)cellIndex gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)saveCurrentIconLocationsAsFixed;
- (void)saveCurrentLocationAsFixedForIcon:(id)icon gridCellInfo:(id)info;
- (void)saveCurrentLocationAsFixedForIcon:(id)icon gridCellInfoOptions:(unint64_t)options;
- (void)saveOnlyRequiredIconLocationsAsFixed;
- (void)saveOnlyRequiredIconLocationsAsFixedIfRequired;
- (void)setAllowedGridSizeClasses:(id)classes;
- (void)setAllowsIndependentRotatedLayout:(BOOL)layout;
- (void)setAllowsRotatedLayout:(BOOL)layout;
- (void)setBadgeBehaviorProvider:(id)provider;
- (void)setFixedIconLocationBehavior:(int64_t)behavior;
- (void)setFixedIconLocations:(id)locations options:(unint64_t)options;
- (void)setFixedLocation:(unint64_t)location forIcon:(id)icon options:(unint64_t)options;
- (void)setFocusModeIdentifiers:(id)identifiers;
- (void)setGridSize:(SBHIconGridSize)size;
- (void)setGridSizeClassDomain:(id)domain;
- (void)setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:(SBHIconGridSize)icons;
- (void)setHasNonDefaultSizeClassIcons:(BOOL)icons;
- (void)setHidden:(BOOL)hidden;
- (void)setHidden:(BOOL)hidden byUser:(BOOL)user hiddenDate:(id)date;
- (void)setIconLayoutBehavior:(unint64_t)behavior;
- (void)setIconOrderFromGridCellInfo:(id)info referenceIconOrder:(id)order;
- (void)setLayoutExcludedIcons:(id)icons;
- (void)setOverflowSlotCount:(unint64_t)count;
- (void)setRotatedFixedIconLocations:(id)locations options:(unint64_t)options;
- (void)setRotatedLayoutClusterGridSizeClass:(id)class;
- (void)shiftFixedIconsInContiguousRegion:(id)region forInsertingIcon:(id)icon orRemovingIcon:(id)removingIcon orResizingIcon:(id)resizingIcon orMovingIcon:(id)movingIcon atGridCellIndex:(unint64_t)index replacingIcon:(id)replacingIcon resizingToGridSizeClass:(id)self0 gridCellInfoOptions:(unint64_t)self1 mutationOptions:(unint64_t)self2;
- (void)sortByIconGridSizeAreaWithGridCellInfoOptions:(unint64_t)options;
- (void)sortByLayoutOrderWithGridCellInfo:(id)info;
- (void)sortByLayoutOrderWithGridCellInfoOptions:(unint64_t)options;
- (void)sortUsingIconOrder:(id)order;
- (void)swapContainedIcon:(id)icon withContainedIcon:(id)containedIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)swapFixedIconLocationForReplacedIcon:(id)icon withReplacementIcon:(id)replacementIcon;
- (void)transferLocationsForIconsFromGridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)transferPositionsFromGridCellInfo:(id)info representingGridRange:(SBHIconGridRange)range asFixedLocationsForIcons:(id)icons gridCellInfoOptions:(unint64_t)options;
- (void)transferPositionsFromGridCellInfo:(id)info representingGridRange:(SBHIconGridRange)range asLocationsForIcons:(id)icons gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (void)updateForFocusModeActivated:(BOOL)activated wantsListVisible:(BOOL)visible;
- (void)updateGridSizeClassDomainForIconIfNecessary:(id)necessary;
- (void)updateGridSizeForAddedIcon:(id)icon removedIcon:(id)removedIcon;
- (void)updateGridSizeForInsertionOfFirstNonDefaultSizedIconIfNecessary;
- (void)updateGridSizeForRemovalOfLastNonDefaultSizedIconIfNecessary;
- (void)updateHasNonDefaultSizeClassIcons;
- (void)updateHasPlaceholderIcons;
- (void)updateParentNodeForIconIfNecessary:(id)necessary;
- (void)willRemoveIcon:(id)icon options:(unint64_t)options;
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
  nodes = [(SBIconIndexMutableList *)self->_icons nodes];
  v4 = [nodes countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(nodes);
        }

        [(SBIconListModel *)self removeIconFromOtherPositionsInHierarchy:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [nodes countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    array = 0;
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
          folder = [v8 folder];
          if (folder)
          {
            if (!array)
            {
              array = [MEMORY[0x1E695DF70] array];
            }

            [array addObject:folder];
          }
        }
      }

      v4 = [(SBIconIndexMutableList *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    array = 0;
  }

  return array;
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
  numberOfIcons = [(SBIconListModel *)self numberOfIcons];
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
  v5 = numberOfIcons - v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (SBIconListModel)initWithFolder:(id)folder maxIconCount:(unint64_t)count
{
  countCopy = count;
  folderCopy = folder;
  v7 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v8 = [(SBIconListModel *)self initWithUniqueIdentifier:0 folder:folderCopy gridSize:countCopy | 0x10000 gridSizeClassSizes:v7];

  return v8;
}

- (SBIconListModel)initWithFolder:(id)folder gridSize:(SBHIconGridSize)size
{
  folderCopy = folder;
  v7 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v8 = [(SBIconListModel *)self initWithUniqueIdentifier:0 folder:folderCopy gridSize:*&size gridSizeClassSizes:v7];

  return v8;
}

- (SBIconListModel)initWithUniqueIdentifier:(id)identifier folder:(id)folder gridSize:(SBHIconGridSize)size
{
  folderCopy = folder;
  identifierCopy = identifier;
  v10 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v11 = [(SBIconListModel *)self initWithUniqueIdentifier:identifierCopy folder:folderCopy gridSize:*&size gridSizeClassSizes:v10];

  return v11;
}

- (SBIconListModel)initWithUniqueIdentifier:(id)identifier folder:(id)folder gridSize:(SBHIconGridSize)size gridSizeClassSizes:(id)sizes
{
  identifierCopy = identifier;
  folderCopy = folder;
  sizesCopy = sizes;
  v28.receiver = self;
  v28.super_class = SBIconListModel;
  v13 = [(SBIconListModel *)&v28 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_folder, folderCopy);
    v15 = objc_alloc_init(SBIconIndexMutableList);
    icons = v14->_icons;
    v14->_icons = v15;

    v14->_gridSize = size;
    v14->_initialGridSize = size;
    v17 = [sizesCopy copy];
    gridSizeClassSizes = v14->_gridSizeClassSizes;
    v14->_gridSizeClassSizes = v17;

    v19 = +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
    allowedGridSizeClasses = v14->_allowedGridSizeClasses;
    v14->_allowedGridSizeClasses = v19;

    v14->_allowsRotatedLayout = [objc_opt_class() allowsRotatedLayoutByDefault];
    objc_storeStrong(&v14->_rotatedLayoutClusterGridSizeClass, @"SBHIconGridSizeClassDefault");
    v14->_fixedIconLocationBehavior = [objc_opt_class() defaultFixedIconLocationBehavior];
    [(SBIconIndexMutableList *)v14->_icons setObserver:v14];
    if (identifierCopy)
    {
      v21 = [identifierCopy copy];
      uniqueIdentifier = v14->_uniqueIdentifier;
      v14->_uniqueIdentifier = v21;
    }

    else
    {
      uniqueIdentifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
      uUIDString = [(NSString *)uniqueIdentifier UUIDString];
      v24 = v14->_uniqueIdentifier;
      v14->_uniqueIdentifier = uUIDString;
    }

    v25 = [objc_opt_class() listModelNodeIdentifierForUniqueIdentifier:v14->_uniqueIdentifier];
    nodeIdentifier = v14->_nodeIdentifier;
    v14->_nodeIdentifier = v25;

    v14->_allowsIndependentRotatedLayout = 1;
  }

  return v14;
}

- (SBIconListModel)initWithIconListModel:(id)model copyLeafIcons:(BOOL)icons
{
  iconsCopy = icons;
  v91 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v87.receiver = self;
  v87.super_class = SBIconListModel;
  v7 = [(SBIconListModel *)&v87 init];
  if (v7)
  {
    folder = [modelCopy folder];
    objc_storeWeak(v7 + 15, folder);

    *(v7 + 6) = [modelCopy gridSize];
    *(v7 + 90) = [modelCopy initialGridSize];
    *(v7 + 86) = [modelCopy gridSizeWhenDirectlyContainingNonDefaultSizedIcons];
    iconGridSizeClassSizes = [modelCopy iconGridSizeClassSizes];
    v10 = [iconGridSizeClassSizes copy];
    v11 = *(v7 + 7);
    *(v7 + 7) = v10;

    rotatedIconGridSizeClassSizes = [modelCopy rotatedIconGridSizeClassSizes];
    v13 = [rotatedIconGridSizeClassSizes copy];
    v14 = *(v7 + 28);
    *(v7 + 28) = v13;

    allowedGridSizeClasses = [modelCopy allowedGridSizeClasses];
    v16 = [allowedGridSizeClasses copy];
    v17 = *(v7 + 16);
    *(v7 + 16) = v16;

    v7[80] = [modelCopy allowsRotatedLayout];
    rotatedLayoutClusterGridSizeClass = [modelCopy rotatedLayoutClusterGridSizeClass];
    v19 = *(v7 + 17);
    *(v7 + 17) = rotatedLayoutClusterGridSizeClass;

    *(v7 + 18) = [modelCopy iconLayoutBehavior];
    uniqueIdentifier = [modelCopy uniqueIdentifier];
    v21 = [uniqueIdentifier copy];
    v22 = *(v7 + 13);
    *(v7 + 13) = v21;

    nodeIdentifier = [modelCopy nodeIdentifier];
    v24 = *(v7 + 8);
    *(v7 + 8) = nodeIdentifier;

    v7[82] = [modelCopy isHidden];
    hiddenDate = [modelCopy hiddenDate];
    v26 = [hiddenDate copy];
    v27 = *(v7 + 20);
    *(v7 + 20) = v26;

    *(v7 + 24) = [modelCopy fixedIconLocationBehavior];
    v28 = [modelCopy[9] mutableCopy];
    v29 = *(v7 + 9);
    *(v7 + 9) = v28;

    v7[83] = *(modelCopy + 83);
    v7[84] = *(modelCopy + 84);
    badgeBehaviorProvider = [modelCopy badgeBehaviorProvider];
    objc_storeWeak(v7 + 25, badgeBehaviorProvider);

    gridSizeClassDomain = [modelCopy gridSizeClassDomain];
    v32 = *(v7 + 14);
    *(v7 + 14) = gridSizeClassDomain;

    v7[81] = [modelCopy allowsIndependentRotatedLayout];
    *(v7 + 22) = [modelCopy overflowSlotCount];
    parentNodeForChildren = [v7 parentNodeForChildren];
    if (iconsCopy)
    {
      v34 = [[SBIconIndexMutableList alloc] initWithList:modelCopy[1] copyNodes:1];
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
            folder2 = [v39 folder];
            v41 = [objc_alloc(objc_opt_class()) initWithFolder:folder2 copyLeafIcons:1];
            v42 = [objc_alloc(objc_opt_class()) initWithFolder:v41];
            [*(v7 + 1) replaceNodeAtIndex:i withNode:v42];
            SBTreeNodeSetParent(v41, parentNodeForChildren);
          }
        }
      }
    }

    else
    {
      v43 = objc_opt_self();
      v44 = [modelCopy directlyContainsIconOfClass:v43];

      if (v44)
      {
        v45 = objc_alloc_init(SBIconIndexMutableList);
        v46 = *(v7 + 1);
        *(v7 + 1) = v45;

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v47 = modelCopy[1];
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
                folder3 = [v53 folder];
                SBTreeNodeSetParent(folder3, parentNodeForChildren);
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
        v55 = [modelCopy[1] copy];
        v47 = *(v7 + 1);
        *(v7 + 1) = v55;
      }
    }

    [*(v7 + 1) setObserver:v7];
    _rotatedIconOrderIfApplicable = [modelCopy _rotatedIconOrderIfApplicable];
    if (_rotatedIconOrderIfApplicable)
    {
      v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_rotatedIconOrderIfApplicable, "count")}];
      v58 = [*(v7 + 1) count];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v74 = _rotatedIconOrderIfApplicable;
      v59 = _rotatedIconOrderIfApplicable;
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

            unsignedIntegerValue = [*(*(&v79 + 1) + 8 * k) unsignedIntegerValue];
            if (unsignedIntegerValue < v58)
            {
              v65 = [*(v7 + 1) nodeAtIndex:unsignedIntegerValue];
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
      rotatedFixedIconLocations = [modelCopy rotatedFixedIconLocations];
      [v7 setRotatedFixedIconLocations:rotatedFixedIconLocations options:0x20000000];

      _rotatedIconOrderIfApplicable = v74;
    }

    [v7 markIconStateClean];
  }

  return v7;
}

- (void)setGridSize:(SBHIconGridSize)size
{
  if (!SBHIconGridSizeEqualToIconGridSize(*&size, *&self->_gridSize))
  {
    self->_gridSize = size;
    [(SBIconListModel *)self->_rotatedIcons setGridSize:SBHIconGridSizeRotate(*&size)];
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

- (void)setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:(SBHIconGridSize)icons
{
  iconsCopy = icons;
  if (!SBHIconGridSizeEqualToIconGridSize(*&icons, *&self->_gridSizeWhenDirectlyContainingNonDefaultSizedIcons))
  {
    self->_gridSizeWhenDirectlyContainingNonDefaultSizedIcons = icons;
    if (![(SBIconListModel *)self directlyContainsNonDefaultSizeClassIcon]|| SBHIconGridSizeIsEmpty(iconsCopy))
    {
      iconsCopy = [(SBIconListModel *)self initialGridSize];
    }

    [(SBIconListModel *)self setGridSize:iconsCopy];
  }
}

- (void)updateGridSizeForAddedIcon:(id)icon removedIcon:(id)removedIcon
{
  removedIconCopy = removedIcon;
  gridSizeClass = [icon gridSizeClass];
  gridSizeClass2 = [removedIconCopy gridSizeClass];

  countOfNonDefaultSizeClassIcons = [(SBIconListModel *)self countOfNonDefaultSizeClassIcons];
  if (countOfNonDefaultSizeClassIcons == 1 && gridSizeClass2)
  {
    if (([gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0 && (!gridSizeClass || objc_msgSend(gridSizeClass, "isEqualToString:", @"SBHIconGridSizeClassDefault")))
    {
      [(SBIconListModel *)self updateGridSizeForRemovalOfLastNonDefaultSizedIconIfNecessary];
    }
  }

  else if (!countOfNonDefaultSizeClassIcons && gridSizeClass && ([gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
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

- (void)setHasNonDefaultSizeClassIcons:(BOOL)icons
{
  if (self->_hasNonDefaultSizeClassIcons != icons)
  {
    self->_hasNonDefaultSizeClassIcons = icons;
    if (icons)
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
  gridSizeWhenDirectlyContainingNonDefaultSizedIcons = [(SBIconListModel *)self gridSizeWhenDirectlyContainingNonDefaultSizedIcons];
  v4 = gridSizeWhenDirectlyContainingNonDefaultSizedIcons;
  if (!SBHIconGridSizeIsEmpty(*&gridSizeWhenDirectlyContainingNonDefaultSizedIcons))
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

- (SBHIconGridSize)gridSizeForGridSizeClass:(id)class gridCellInfoOptions:(unint64_t)options
{
  classCopy = class;
  v7 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  LODWORD(self) = [v7 gridSizeForGridSizeClass:classCopy];

  return self;
}

- (unsigned)gridSizeAreaForGridSizeClass:(id)class gridCellInfoOptions:(unint64_t)options
{
  classCopy = class;
  v7 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  LODWORD(self) = [v7 gridSizeAreaForGridSizeClass:classCopy];

  return self;
}

- (unsigned)gridSizeAreaForGridSizeClass:(id)class gridCellInfo:(id)info
{
  classCopy = class;
  v7 = [(SBIconListModel *)self gridSizeClassSizesWithGridCellInfo:info];
  LODWORD(self) = [v7 gridSizeAreaForGridSizeClass:classCopy];

  return self;
}

- (SBHIconGridSize)gridSizeForGridSizeClass:(id)class gridCellInfo:(id)info
{
  classCopy = class;
  v7 = [(SBIconListModel *)self gridSizeClassSizesWithGridCellInfo:info];
  LODWORD(self) = [v7 gridSizeForGridSizeClass:classCopy];

  return self;
}

- (SBHIconGridSize)gridSizeForIcon:(id)icon
{
  gridSizeClass = [icon gridSizeClass];
  LODWORD(self) = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass];

  return self;
}

- (SBHIconGridSize)gridSizeForIcon:(id)icon gridCellInfoOptions:(unint64_t)options
{
  gridSizeClass = [icon gridSizeClass];
  LODWORD(options) = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];

  return options;
}

- (SBHIconGridSize)gridSizeForIcon:(id)icon gridCellInfo:(id)info
{
  infoCopy = info;
  gridSizeClass = [icon gridSizeClass];
  LODWORD(self) = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfo:infoCopy];

  return self;
}

- (id)gridSizeClassSizesWithOptions:(unint64_t)options
{
  if (![(SBIconListModel *)self wantsRotatedGridForOptions:options]|| ([(SBIconListModel *)self rotatedIconGridSizeClassSizes], (iconGridSizeClassSizes = objc_claimAutoreleasedReturnValue()) == 0))
  {
    iconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
  }

  return iconGridSizeClassSizes;
}

- (id)gridSizeClassSizesWithGridCellInfo:(id)info
{
  if (SBHIconGridSizeEqualToIconGridSize([info gridSize], -[SBIconListModel gridSizeWithOptions:](self, "gridSizeWithOptions:", 2)))
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

        gridSizeClass = [*(*(&v11 + 1) + 8 * i) gridSizeClass];
        v6 += [(SBIconListModel *)self gridSizeAreaForGridSizeClass:gridSizeClass];
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

- (id)iconsWithGridCellInfoOptions:(unint64_t)options
{
  v3 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  icons = [v3 icons];

  return icons;
}

- (id)setIcons:(id)icons gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v116 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  optionsCopy = options;
  v9 = [(SBIconListModel *)self iconsWithGridCellInfoOptions:options];
  if ([v9 isEqualToArray:iconsCopy])
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
    v69 = iconsCopy;
    v13 = iconsCopy;
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
            [(SBIconListModel *)self willAddIcon:v18 atIndex:0 gridCellInfoOptions:optionsCopy mutationOptions:mutationOptions | 0x4000000];
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
    selfCopy = self;
    mutationOptionsCopy = mutationOptions;
    [(SBIconListModel *)self enumerateIconsUsingBlock:v100];
    v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v20 = v11;
    v21 = [v20 countByEnumeratingWithState:&v96 objects:v114 count:16];
    mutationOptionsCopy2 = mutationOptions;
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
            folder = [v26 folder];
            uniqueIdentifier = [folder uniqueIdentifier];
            v94[0] = MEMORY[0x1E69E9820];
            v94[1] = 3221225472;
            v94[2] = __64__SBIconListModel_setIcons_gridCellInfoOptions_mutationOptions___block_invoke_2;
            v94[3] = &unk_1E808BFD8;
            v29 = uniqueIdentifier;
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
              selfCopy2 = self;
              v36 = v35 = v19;
              [v72 addObject:v36];

              v19 = v35;
              self = selfCopy2;
              v20 = v33;
              [v19 removeObjectAtIndex:v31];

              v23 = v71;
            }

            v22 = v75;
            mutationOptions = mutationOptionsCopy2;
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

          lastObject = [*(*(&v90 + 1) + 8 * j) lastObject];
          [v20 removeObject:lastObject];
        }

        v39 = [v37 countByEnumeratingWithState:&v90 objects:v112 count:16];
      }

      while (v39);
    }

    if ([v20 count])
    {
      object = 0;
      v43 = 1;
      v44 = v68;
    }

    else
    {
      v44 = v68;
      if ([v19 count])
      {
        object = 0;
        v43 = 1;
      }

      else
      {
        v45 = [v70 differenceFromArray:v68 withOptions:2];
        insertions = [v45 insertions];
        firstObject = [insertions firstObject];
        object = [firstObject object];

        v43 = 0;
      }
    }

    v73 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:optionsCopy];
    [v73[1] setNodes:v44];
    v48 = [(SBIconListModel *)self _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:optionsCopy mutationOptions:mutationOptions];
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

          [(SBIconListModel *)self didAddIcon:*(*(&v86 + 1) + 8 * k) options:mutationOptions];
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

          [(SBIconListModel *)self didRemoveIcon:*(*(&v82 + 1) + 8 * m) options:mutationOptions];
        }

        v56 = [v54 countByEnumeratingWithState:&v82 objects:v110 count:16];
      }

      while (v56);
    }

    v10 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:0 ignoringTrailingIconCheck:1 options:mutationOptions];
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:optionsCopy mutationOptions:mutationOptions];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:mutationOptions];
    if (v43)
    {
      [(SBIconListModel *)self _notifyListObserversDidAddIcons:v49 didRemoveIcons:v54 movedIcons:0 options:mutationOptions];
    }

    else if (object)
    {
      [(SBIconListModel *)self _notifyListObserversDidMoveIcon:object options:mutationOptions];
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
          firstObject2 = [v64 firstObject];
          lastObject2 = [v64 lastObject];
          [(SBIconListModel *)self didReplaceIcon:firstObject2 withIcon:lastObject2 options:mutationOptionsCopy2];
        }

        v61 = [v59 countByEnumeratingWithState:&v78 objects:v109 count:16];
      }

      while (v61);
    }

    iconsCopy = v69;
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

- (id)setIconsFromIconListModel:(id)model
{
  modelCopy = model;
  icons = [modelCopy icons];
  v6 = [(SBIconListModel *)self setIcons:icons gridCellInfoOptions:0 mutationOptions:0x40000000];
  fixedIconLocations = [modelCopy fixedIconLocations];
  [(SBIconListModel *)self setFixedIconLocations:fixedIconLocations];
  if (-[SBIconListModel allowsRotatedLayout](self, "allowsRotatedLayout") && [modelCopy allowsRotatedLayout])
  {
    _rotatedIconsIfApplicable = [modelCopy _rotatedIconsIfApplicable];
    if (_rotatedIconsIfApplicable)
    {
      v9 = [(SBIconListModel *)self setIcons:_rotatedIconsIfApplicable gridCellInfoOptions:2 mutationOptions:0x40000000];
      rotatedFixedIconLocations = [modelCopy rotatedFixedIconLocations];
      [(SBIconListModel *)self setRotatedFixedIconLocations:rotatedFixedIconLocations];
    }
  }

  return v6;
}

- (unint64_t)indexForIcon:(id)icon
{
  v18 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
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

      if ([iconCopy isEqual:{*(*(&v13 + 1) + 8 * v10), v13}])
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

- (unint64_t)indexForIconWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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

      uniqueIdentifier = [*(*(&v15 + 1) + 8 * v10) uniqueIdentifier];
      v13 = [uniqueIdentifier isEqual:identifierCopy];

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

- (id)iconsPassingTest:(id)test
{
  v4 = [(SBIconListModel *)self indexesForIconsPassingTest:test];
  v5 = [(SBIconListModel *)self iconsAtIndexes:v4];

  return v5;
}

- (unint64_t)gridCellIndexForIcon:(id)icon gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v8 = [(SBIconListModel *)self gridCellIndexForIcon:iconCopy gridCellInfo:v7];

  return v8;
}

- (unint64_t)gridCellIndexForIcon:(id)icon gridCellInfo:(id)info
{
  infoCopy = info;
  v7 = [(SBIconListModel *)self indexForIcon:icon];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(SBIconListModel *)self gridCellIndexForIconIndex:v7 gridCellInfo:infoCopy];
  }

  return v8;
}

- (unint64_t)gridCellIndexForIconWithIdentifier:(id)identifier gridCellInfo:(id)info
{
  infoCopy = info;
  v7 = [(SBIconListModel *)self indexForIconWithIdentifier:identifier];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(SBIconListModel *)self gridCellIndexForIconIndex:v7 gridCellInfo:infoCopy];
  }

  return v8;
}

- (unint64_t)gridCellIndexForIconIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v7 = [(SBIconListModel *)self gridCellIndexForIconIndex:index gridCellInfo:v6];

  return v7;
}

- (id)iconAtCoordinate:(SBIconCoordinate)coordinate gridCellInfoOptions:(unint64_t)options
{
  row = coordinate.row;
  column = coordinate.column;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v8 = [(SBIconListModel *)self iconAtCoordinate:column gridCellInfo:row, v7];

  return v8;
}

- (id)iconAtCoordinate:(SBIconCoordinate)coordinate gridCellInfo:(id)info
{
  row = coordinate.row;
  column = coordinate.column;
  infoCopy = info;
  infoCopy = [(SBIconListModel *)self iconAtGridCellIndex:[(SBIconListModel *)self gridCellIndexForCoordinate:column gridCellInfo:row gridCellInfo:infoCopy], infoCopy];

  return infoCopy;
}

- (BOOL)containsIcon:(id)icon
{
  nodeIdentifier = [icon nodeIdentifier];
  v5 = [(SBIconListModel *)self iconWithIdentifier:nodeIdentifier];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (BOOL)directlyContainsIcons:(id)icons
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  iconsCopy = icons;
  v5 = [iconsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(iconsCopy);
        }

        if (![(SBIconListModel *)self directlyContainsIcon:*(*(&v11 + 1) + 8 * i), v11])
        {

          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [iconsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = [iconsCopy count] != 0;
LABEL_11:

  return v9;
}

- (BOOL)directlyContainsAnyIconInArray:(id)array
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  arrayCopy = array;
  v5 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(arrayCopy);
        }

        if ([(SBIconListModel *)self directlyContainsIcon:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)iconWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = [(SBIconListModel *)self directlyContainedIconWithIdentifier:identifierCopy];
  v5 = v12[5];
  if (!v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__SBIconListModel_iconWithIdentifier___block_invoke;
    v8[3] = &unk_1E808D800;
    v10 = &v11;
    v9 = identifierCopy;
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

- (id)lastDirectlyContainedLeafIconWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__SBIconListModel_lastDirectlyContainedLeafIconWithApplicationBundleIdentifier___block_invoke;
  v9[3] = &unk_1E808BFD8;
  v10 = identifierCopy;
  v5 = identifierCopy;
  v6 = [(SBIconListModel *)self directlyContainedIconsPassingTest:v9];
  lastObject = [v6 lastObject];

  return lastObject;
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

- (id)directlyContainedIconPassingTest:(id)test
{
  v4 = [(SBIconIndexMutableList *)self->_icons indexOfNodePassingTest:test];
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

- (id)directlyContainedIconsPassingTest:(id)test
{
  v4 = [(SBIconIndexMutableList *)self->_icons indexesOfNodesPassingTest:test];
  v5 = [(SBIconListModel *)self iconsAtIndexes:v4];

  return v5;
}

- (unint64_t)countOfDirectlyContainedIconsPassingTest:(id)test
{
  v3 = [(SBIconIndexMutableList *)self->_icons indexesOfNodesPassingTest:test];
  v4 = [v3 count];

  return v4;
}

- (BOOL)directlyContainsIconOfClass:(Class)class
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SBIconListModel_directlyContainsIconOfClass___block_invoke;
  v6[3] = &__block_descriptor_40_e23_B32__0__SBIcon_8Q16_B24lu32l8;
  v6[4] = class;
  v3 = [(SBIconListModel *)self directlyContainedIconPassingTest:v6];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)directlyContainsIconPassingTest:(id)test
{
  v3 = [(SBIconListModel *)self directlyContainedIconPassingTest:test];
  v4 = v3 != 0;

  return v4;
}

- (_NSRange)rangeOfDirectlyContainedIconsInRange:(_NSRange)range passingTest:(id)test
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  testCopy = test;
  v7 = 0;
  if (length)
  {
    v8 = 1;
    v9 = location;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      selfCopy = [(SBIconListModel *)selfCopy iconAtIndex:v9, selfCopy];
      v19 = 0;
      if (testCopy[2](testCopy, selfCopy, v9, &v19))
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

- (BOOL)containsWidgetIconWithExtensionBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
          activeWidget = [v9 activeWidget];
          extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];

          LOBYTE(activeWidget) = [extensionBundleIdentifier isEqualToString:identifierCopy];
          if (activeWidget)
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

- (void)enumerateIconsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  icons = self->_icons;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SBIconListModel_enumerateIconsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_1E808D870;
  v10 = blockCopy;
  optionsCopy = options;
  v8 = blockCopy;
  [(SBIconIndexMutableList *)icons enumerateNodesWithOptions:options & 2 usingBlock:v9];
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

- (void)enumerateFolderIconsUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SBIconListModel_enumerateFolderIconsUsingBlock___block_invoke;
  v6[3] = &unk_1E808CEF8;
  v7 = blockCopy;
  v5 = blockCopy;
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

- (id)iconGridCellInfoBySimulatingInsertionOfIcons:(id)icons ignoringPlaceholders:(BOOL)placeholders gridCellInfoOptions:(unint64_t)options iconOrder:(id *)order
{
  v50 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v9 = objc_alloc_init(SBIconIndexMutableList);
  selfCopy = self;
  icons = self->_icons;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __115__SBIconListModel_iconGridCellInfoBySimulatingInsertionOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke;
  v46[3] = &unk_1E808D898;
  placeholdersCopy = placeholders;
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
  v37 = selfCopy;
  v38 = &v40;
  optionsCopy = options;
  v13 = _Block_copy(aBlock);
  v13[2]();
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = iconsCopy;
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
        gridSizeClass = [v17 gridSizeClass];
        if (gridSizeClass && ([v17 gridSizeClass], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"SBHIconGridSizeClassDefault"), v19, gridSizeClass, !v20))
        {
          if ([(SBIconIndexMutableList *)v12 count])
          {
            v21 = [v41[5] gridCellIndexForIconIndex:{-[SBIconIndexMutableList count](v12, "count") - 1}];
          }

          else
          {
            v21 = 0;
          }

          if (v21 > -[SBIconListModel maxNumberOfIcons](selfCopy, "maxNumberOfIcons") || (v22 = -[SBIconListModel bestGridCellIndexForInsertingIcon:atGridCellIndex:](selfCopy, "bestGridCellIndexForInsertingIcon:atGridCellIndex:", v17, v21), v23 = [v41[5] iconIndexForGridCellIndex:v22], v23 == 0x7FFFFFFFFFFFFFFFLL))
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

  v24 = [(SBIconListModel *)selfCopy repairModelByEliminatingGapsInIcons:v12 avoidingIcons:0 gridCellInfoOptions:options];
  (v13[2])(v13);
  if (order)
  {
    *order = [(SBIconIndexMutableList *)v12 nodes];
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

- (id)iconGridCellInfoBySimulatingRemovalOfIcons:(id)icons ignoringPlaceholders:(BOOL)placeholders gridCellInfoOptions:(unint64_t)options iconOrder:(id *)order
{
  iconsCopy = icons;
  v11 = objc_alloc_init(SBIconIndexMutableList);
  icons = self->_icons;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __113__SBIconListModel_iconGridCellInfoBySimulatingRemovalOfIcons_ignoringPlaceholders_gridCellInfoOptions_iconOrder___block_invoke;
  v40[3] = &unk_1E808D8E8;
  v13 = iconsCopy;
  v41 = v13;
  placeholdersCopy = placeholders;
  v14 = v11;
  v42 = v14;
  [(SBIconIndexMutableList *)icons enumerateNodesUsingBlock:v40];
  nodes = [(SBIconIndexMutableList *)self->_icons nodes];
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
  selfCopy = self;
  v17 = nodes;
  v31 = v17;
  optionsCopy = options;
  v18 = _Block_copy(&v25);
  v18[2](v18, v19, v20, v21);
  v22 = [(SBIconListModel *)self repairModelByEliminatingGapsInIcons:v16 avoidingIcons:0 gridCellInfoOptions:options, v25, v26, v27, v28];
  (v18[2])(v18);
  if (order)
  {
    *order = [(SBIconIndexMutableList *)v16 nodes];
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

- (BOOL)allowsAddingIcon:(id)icon ignoringPlaceholders:(BOOL)placeholders
{
  placeholdersCopy = placeholders;
  v11[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  if ([(SBIconListModel *)self isAllowedToContainIcon:iconCopy])
  {
    v11[0] = iconCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [(SBIconListModel *)self iconGridCellInfoBySimulatingInsertionOfIcons:v7 ignoringPlaceholders:placeholdersCopy gridCellInfoOptions:0 iconOrder:0];

    v9 = [(SBIconListModel *)self isGridLayoutValid:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isAllowedToContainIcon:(id)icon
{
  iconCopy = icon;
  if (![(SBIconListModel *)self directlyContainsIcon:iconCopy])
  {
    gridSizeClass = [iconCopy gridSizeClass];
    if ([(SBIconListModel *)self isAllowedToContainIconGridSizeClass:gridSizeClass])
    {
      v7 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass];
      gridSize = [(SBIconListModel *)self gridSize];
      v5 = 0;
      if (v7.columns > gridSize.columns)
      {
        goto LABEL_13;
      }

      if (HIWORD(*&v7) > HIWORD(*&gridSize))
      {
        goto LABEL_13;
      }

      if ([(SBIconListModel *)self allowsRotatedLayout])
      {
        v9 = [(SBIconListModel *)self gridSizeWithOptions:2];
        v10 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:2];
        v5 = 0;
        if (v10.columns > v9.columns || HIWORD(*&v10) > HIWORD(*&v9))
        {
          goto LABEL_13;
        }
      }

      delegate = [(SBIconListModel *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_16:
        gridSizeClass2 = [iconCopy gridSizeClass];
        if (!gridSizeClass2 || ([iconCopy gridSizeClass], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isEqualToString:", @"SBHIconGridSizeClassDefault") & 1) != 0))
        {
          rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
          if (rotatedLayoutClusterGridSizeClass)
          {
            rotatedLayoutClusterGridSizeClass2 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
            v16 = ([rotatedLayoutClusterGridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0 && -[SBIconListModel isFull](self, "isFull");

            if (gridSizeClass2)
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

          if (!gridSizeClass2)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_28;
      }

      v5 = [delegate iconListModel:self isAllowedToContainIcon:iconCopy];

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

- (BOOL)isAllowedToContainIcons:(id)icons
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  iconsCopy = icons;
  v5 = [iconsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(iconsCopy);
        }

        if (![(SBIconListModel *)self isAllowedToContainIcon:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [iconsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)allowsAddingIcons:(id)icons ignoringPlaceholders:(BOOL)placeholders
{
  placeholdersCopy = placeholders;
  iconsCopy = icons;
  if ([(SBIconListModel *)self isAllowedToContainIcons:iconsCopy])
  {
    v7 = [(SBIconListModel *)self iconGridCellInfoBySimulatingInsertionOfIcons:iconsCopy ignoringPlaceholders:placeholdersCopy gridCellInfoOptions:0 iconOrder:0];
    v8 = [(SBIconListModel *)self isGridLayoutValid:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconsThatAreAllowedToBeContainedInIcons:(id)icons
{
  iconsCopy = icons;
  v5 = iconsCopy;
  if (![(SBIconListModel *)self isAllowedToContainIcons:iconsCopy])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__SBIconListModel_iconsThatAreAllowedToBeContainedInIcons___block_invoke;
    v8[3] = &unk_1E808BFD8;
    v8[4] = self;
    v6 = [iconsCopy indexesOfObjectsPassingTest:v8];
    v5 = [iconsCopy objectsAtIndexes:v6];
  }

  return v5;
}

- (id)allowedIconsForIcons:(id)icons ignoringPlaceholders:(BOOL)placeholders
{
  placeholdersCopy = placeholders;
  iconsCopy = icons;
  if ([(SBIconListModel *)self directlyContainsIcons:iconsCopy])
  {
    v7 = iconsCopy;
  }

  else
  {
    v8 = [(SBIconListModel *)self iconsThatAreAllowedToBeContainedInIcons:iconsCopy];
    v7 = v8;
    if ([v8 count])
    {
      v9 = v8;
      while (1)
      {
        v10 = [(SBIconListModel *)self iconGridCellInfoBySimulatingInsertionOfIcons:v9 ignoringPlaceholders:placeholdersCopy gridCellInfoOptions:0 iconOrder:0];
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

- (id)allowedIconsForByReplacingContentsWithIcons:(id)icons
{
  iconsCopy = icons;
  v5 = [(SBIconListModel *)self iconsThatAreAllowedToBeContainedInIcons:iconsCopy];
  v6 = [(SBIconListModel *)self gridCellInfoForIcons:iconsCopy referenceIconOrder:iconsCopy options:0];

  v7 = v5;
  v8 = v7;
  if (![(SBIconListModel *)self isGridLayoutValid:v6])
  {
    numberOfIcons = [(SBIconListModel *)self numberOfIcons];
    v10 = [v7 count];
    v11 = [v6 indexOfOutOfBoundsIconInRange:{numberOfIcons, v10}];
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

- (BOOL)isAllowedToContainIconGridSizeClass:(id)class
{
  classCopy = class;
  allowedGridSizeClasses = [(SBIconListModel *)self allowedGridSizeClasses];
  effectiveGridSizeClassDomain = [(SBIconListModel *)self effectiveGridSizeClassDomain];
  v7 = [allowedGridSizeClasses containsGridSizeClass:classCopy inDomain:effectiveGridSizeClassDomain];

  return v7;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  if (gridSizeClass)
  {
    gridSizeClass2 = [iconCopy gridSizeClass];
    if (![gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"])
    {
      goto LABEL_6;
    }
  }

  if ([(SBIconListModel *)self hasNonDefaultSizeClassIcons]|| [(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:options])
  {
    if (gridSizeClass)
    {
LABEL_6:
    }
  }

  else
  {
    isFull = [(SBIconListModel *)self isFull];
    v14 = isFull;
    if (gridSizeClass)
    {

      if (!v14)
      {
        goto LABEL_8;
      }
    }

    else if (!isFull)
    {
      goto LABEL_8;
    }
  }

  v11 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  index = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:index gridCellInfo:v11];

LABEL_8:
  return index;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  infoCopy = info;
  gridSizeClass = [icon gridSizeClass];
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIconOfGridSizeClass:gridSizeClass atGridCellIndex:index gridCellInfo:infoCopy];

  return v10;
}

- (unint64_t)bestGridCellIndexForInsertingIconOfGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  classCopy = class;
  infoCopy = info;
  if (classCopy)
  {
    if (([classCopy isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
    {
      v10 = [(SBIconListModel *)self gridSizeForGridSizeClass:classCopy gridCellInfo:infoCopy];
      gridSize = [infoCopy gridSize];
      if (*&v10 >= 0x10000)
      {
        columns = v10.columns;
        if (v10.columns)
        {
          v13 = HIWORD(*&v10);
          v14 = HIWORD(gridSize);
          v15 = gridSize;
          v16 = index / gridSize;
          iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
          LODWORD(v18) = v14 - v13;
          v19 = (v14 - v13);
          if (iconLayoutBehavior)
          {
            if (v16 >= v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = index / v15;
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

          v22 = index % v15;
          v23 = (v15 - columns);
          if ((iconLayoutBehavior & 2) != 0)
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

            v22 = index % v15 - (index % v15) % v24;
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

          index = v22 + v18 * v15;
        }
      }
    }
  }

  return index;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon afterIconAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v9 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy afterIconAtGridCellIndex:index gridCellInfo:v9];

  return v10;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon afterIconAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  iconCopy = icon;
  infoCopy = info;
  v10 = [infoCopy gridRangeForGridCellIndex:index];
  v12 = v11;
  gridSize = [infoCopy gridSize];
  v14 = SBHIconGridRangeMaxCellIndex(v10, v12, gridSize);
  if (v14 == SBHIconGridRangeMaxCellIndex(0, gridSize, gridSize))
  {
    infoCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (gridSize != v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = HIWORD(v12) - 1;
    }

    infoCopy = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:SBHIconGridRangeMaxCellIndexOnRow(v10 gridCellInfo:v12, gridSize, v16), infoCopy];
  }

  return infoCopy;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon belowIconAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v9 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy belowIconAtGridCellIndex:index gridCellInfo:v9];

  return v10;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon belowIconAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  iconCopy = icon;
  infoCopy = info;
  v10 = [infoCopy gridRangeForGridCellIndex:index];
  v12 = SBHIconGridRangeCellIndexBelowColumn(v10, v11, [infoCopy gridSize], 0);
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:v12 gridCellInfo:infoCopy];
  }

  return v13;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon aboveIconAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v9 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy aboveIconAtGridCellIndex:index gridCellInfo:v9];

  return v10;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon aboveIconAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  iconCopy = icon;
  infoCopy = info;
  v10 = [infoCopy gridRangeForGridCellIndex:index];
  v12 = SBHIconGridRangeCellIndexAboveColumn(v10, v11, [infoCopy gridSize], 0);
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:v12 gridCellInfo:infoCopy];
  }

  return v13;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v8 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy gridCellInfo:v7];

  return v8;
}

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon gridCellInfo:(id)info
{
  v43 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  infoCopy = info;
  rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  v9 = rotatedLayoutClusterGridSizeClass;
  if (rotatedLayoutClusterGridSizeClass && ([rotatedLayoutClusterGridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    gridSizeClass = [iconCopy gridSizeClass];
    v11 = [SBIconListModel gridSizeForGridSizeClass:"gridSizeForGridSizeClass:gridCellInfo:" gridCellInfo:?];
    gridSize = [infoCopy gridSize];
    v20 = [(SBIconListModel *)self gridSizeForGridSizeClass:v9 gridCellInfo:infoCopy];
    Area = SBHIconGridSizeGetArea(*&v11);
    iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
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
    v36 = gridSize;
    v37 = v11;
    v33 = iconLayoutBehavior;
    v34 = v15;
    v35 = Area;
    v31 = infoCopy;
    selfCopy = self;
    v16 = _Block_copy(aBlock);
    if (SBHIconGridRangeContainsIconGridRange(0, *&v20, 0, *&v11, gridSize))
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __66__SBIconListModel_bestGridCellIndexForInsertingIcon_gridCellInfo___block_invoke_2;
      v25[3] = &unk_1E808D960;
      v28 = v11;
      v29 = gridSize;
      v26 = v16;
      v27 = &v38;
      SBHIconGridRangeEnumerateSubranges(0, gridSize, *&v20, gridSize, 0, v25);
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
      SBHIconGridRangeEnumerateSubranges(0, gridSize, *&v11, gridSize, 1, v22);

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

- (unint64_t)bestIconIndexForReplacingIcon:(id)icon withIcon:(id)withIcon gridCellInfo:(id)info
{
  infoCopy = info;
  withIconCopy = withIcon;
  v10 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:withIconCopy atGridCellIndex:[(SBIconListModel *)self gridCellIndexForIcon:icon gridCellInfo:infoCopy] gridCellInfo:infoCopy];

  if (v10)
  {
    v10 = [infoCopy iconIndexForGridCellIndex:v10];
  }

  return v10;
}

- (BOOL)isEligibleForSimpleMutationsWithGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  if ([(SBIconListModel *)self hasNonDefaultSizeClassIcons])
  {
    return 0;
  }

  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:options])
  {
    return 0;
  }

  return (mutationOptions & 0x1000000080) == 0;
}

- (BOOL)canBounceIcon:(id)icon
{
  iconCopy = icon;
  if ([(SBIconListModel *)self isIconFixed:iconCopy])
  {
    v5 = 0;
  }

  else
  {
    folder = [(SBIconListModel *)self folder];
    v7 = folder;
    if (folder)
    {
      v5 = [folder canBounceIcon:iconCopy];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (unint64_t)removeIconFromOtherPositionsInHierarchy:(id)hierarchy forInsertingAtIndex:(unint64_t)index removeIfAlreadyContained:(BOOL)contained gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  containedCopy = contained;
  hierarchyCopy = hierarchy;
  uniqueIdentifier = [hierarchyCopy uniqueIdentifier];
  v14 = SBTreeNodeGetRootNode(self);
  v15 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    mutationOptionsCopy = mutationOptions;
    v18 = v14;
    v34 = [v18 indexPathForIconWithIdentifier:uniqueIdentifier];
    v33 = uniqueIdentifier;
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
    v25 = v21 == hierarchyCopy && v24;
    if (v25 && containedCopy)
    {
      v26 = [(SBIconListModel *)self shouldRemoveAlreadyContainedIconWhenRemovingFromOtherPositionsInHierarchy:hierarchyCopy gridCellInfoOptions:options mutationOptions:mutationOptionsCopy];
      indexCopy3 = index;
      v28 = v21;
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    else
    {
      indexCopy3 = index;
      v28 = v21;
      if (v25)
      {
LABEL_19:
        if ([hierarchyCopy isFolderIcon])
        {
          v29 = objc_alloc_init(SBIcon);
          if (index != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(SBIconIndexMutableList *)self->_icons insertNode:v29 atIndex:index];
          }

          folder = [hierarchyCopy folder];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __140__SBIconListModel_removeIconFromOtherPositionsInHierarchy_forInsertingAtIndex_removeIfAlreadyContained_gridCellInfoOptions_mutationOptions___block_invoke;
          v35[3] = &unk_1E808D9B0;
          v36 = v18;
          v31 = folder;
          v37 = v31;
          [v31 enumerateAllIconsUsingBlock:v35];
          indexCopy3 = [(SBIconIndexMutableList *)self->_icons indexOfNode:v29];
          if (indexCopy3 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(SBIconIndexMutableList *)self->_icons removeNodeAtIndex:indexCopy3];
          }

          v28 = v21;
        }

        index = indexCopy3;
        uniqueIdentifier = v33;
        goto LABEL_26;
      }
    }

    indexCopy3 = index;
    if (v23 == self)
    {
      indexCopy3 = (__PAIR128__(index, [v34 sb_lastIconIndex]) - index) >> 64;
    }

    [(SBIconListModel *)v23 removeIcon:v28 options:mutationOptionsCopy];
    goto LABEL_19;
  }

  if (containedCopy)
  {
    v22 = [(SBIconListModel *)self indexForIconWithIdentifier:uniqueIdentifier];
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      index = (__PAIR128__(index, v22) - index) >> 64;
      [(SBIconListModel *)self removeIcon:hierarchyCopy];
    }
  }

LABEL_26:

  return index;
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

- (unint64_t)willAddIcon:(id)icon atIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  [(SBIconListModel *)self updateGridSizeForAddedIcon:iconCopy removedIcon:0];
  if ((mutationOptions & 0x4000000) == 0)
  {
    index = [(SBIconListModel *)self removeIconFromOtherPositionsInHierarchy:iconCopy forInsertingAtIndex:index removeIfAlreadyContained:1 gridCellInfoOptions:options mutationOptions:mutationOptions];
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self _notifyListObserversWillAddIcon:iconCopy];
  }

  return index;
}

- (unint64_t)willReplaceIcon:(id)icon withIcon:(id)withIcon atIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  withIconCopy = withIcon;
  [(SBIconListModel *)self updateGridSizeForAddedIcon:withIconCopy removedIcon:icon];
  if ((mutationOptions & 0x4000000) == 0)
  {
    index = [(SBIconListModel *)self removeIconFromOtherPositionsInHierarchy:withIconCopy forInsertingAtIndex:index removeIfAlreadyContained:1 gridCellInfoOptions:options mutationOptions:mutationOptions];
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self _notifyListObserversWillAddIcon:withIconCopy];
  }

  return index;
}

- (void)updateParentNodeForIconIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([necessaryCopy isFolderIcon])
  {
    folder = [necessaryCopy folder];
    parentNodeForChildren = [(SBIconListModel *)self parentNodeForChildren];
    SBTreeNodeSetParent(folder, parentNodeForChildren);
  }
}

- (void)clearParentNodeForIconIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([necessaryCopy isFolderIcon])
  {
    folder = [necessaryCopy folder];
    SBTreeNodeSetParent(folder, 0);
  }
}

- (void)updateGridSizeClassDomainForIconIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([necessaryCopy isFolderIcon])
  {
    folder = [necessaryCopy folder];
    gridSizeClassDomain = [(SBIconListModel *)self gridSizeClassDomain];
    [folder setGridSizeClassDomain:gridSizeClassDomain];
  }
}

- (void)didAddIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  [(SBIconListModel *)self updateParentNodeForIconIfNecessary:iconCopy];
  [(SBIconListModel *)self updateGridSizeClassDomainForIconIfNecessary:iconCopy];
  if ([(SBIconListModel *)self isInsertionFixedForIcon:iconCopy options:0])
  {
    if (![(SBIconListModel *)self isIconFixed:iconCopy])
    {
      v6 = [(SBIconListModel *)self gridCellIndexForIcon:iconCopy gridCellInfoOptions:0];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SBIconListModel *)self setFixedLocation:v6 forIcon:iconCopy options:options | 0x800000];
      }
    }
  }

  gridSizeClass = [iconCopy gridSizeClass];
  if (gridSizeClass)
  {
    v8 = gridSizeClass;
    gridSizeClass2 = [iconCopy gridSizeClass];
    v10 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

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

- (void)willRemoveIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  [(SBIconListModel *)self updateGridSizeForAddedIcon:0 removedIcon:iconCopy];
  [(SBIconListModel *)self _notifyListObserversWillRemoveIcon:iconCopy];
}

- (void)didRemoveIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  [(SBIconListModel *)self clearParentNodeForIconIfNecessary:iconCopy];
  [(SBIconListModel *)self removeFixedIconLocationForIcon:iconCopy];
  gridSizeClass = [iconCopy gridSizeClass];
  if (gridSizeClass)
  {
    v6 = gridSizeClass;
    gridSizeClass2 = [iconCopy gridSizeClass];
    v8 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

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

- (void)didReplaceIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options
{
  withIconCopy = withIcon;
  iconCopy = icon;
  [(SBIconListModel *)self clearParentNodeForIconIfNecessary:iconCopy];
  [(SBIconListModel *)self updateParentNodeForIconIfNecessary:withIconCopy];
  [(SBIconListModel *)self updateGridSizeClassDomainForIconIfNecessary:withIconCopy];
  [(SBIconListModel *)self _notifyListObserversDidReplaceIcon:iconCopy withIcon:withIconCopy];
}

- (id)addIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  v7 = [(SBIconListModel *)self insertIcon:iconCopy atIndex:[(SBIconListModel *)self numberOfIcons] options:options];

  return v7;
}

- (id)addIcon:(id)icon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  v10 = [(SBIconListModel *)self firstFreeGridCellIndexOfRangeOfSizeClass:gridSizeClass gridCellInfoOptions:options];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self addIcon:iconCopy options:mutationOptions];
  }

  else
  {
    [(SBIconListModel *)self insertIcon:iconCopy atGridCellIndex:v10 gridCellInfoOptions:options mutationOptions:mutationOptions | 0x800000000];
  }
  v11 = ;

  return v11;
}

- (id)addIcons:(id)icons options:(unint64_t)options
{
  v19 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [iconsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    array = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(iconsCopy);
        }

        v12 = [(SBIconListModel *)self addIcon:*(*(&v14 + 1) + 8 * i) options:options];
        if (v12)
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObjectsFromArray:v12];
        }
      }

      v8 = [iconsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)insertIcon:(id)icon atIndex:(unint64_t)index
{
  v12 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v6 = MEMORY[0x1E695DEC8];
  iconCopy2 = icon;
  v8 = [v6 arrayWithObjects:&iconCopy count:1];

  v9 = [(SBIconListModel *)self insertIcons:v8 atIndex:index options:0, iconCopy, v12];

  return v9;
}

- (id)insertIcon:(id)icon atIndex:(unint64_t)index options:(unint64_t)options
{
  v14 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v8 = MEMORY[0x1E695DEC8];
  iconCopy2 = icon;
  v10 = [v8 arrayWithObjects:&iconCopy count:1];

  v11 = [(SBIconListModel *)self insertIcons:v10 atIndex:index options:options, iconCopy, v14];

  return v11;
}

- (id)insertIcons:(id)icons atIndex:(unint64_t)index options:(unint64_t)options
{
  v49 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBIconListModel insertIcons:v9 atIndex:? options:?];
    }

    v10 = iconsCopy;
  }

  else
  {
    optionsCopy = options;
    numberOfIcons = [(SBIconListModel *)self numberOfIcons];
    v24 = numberOfIcons <= index;
    if (numberOfIcons <= index)
    {
      index = [(SBIconListModel *)self numberOfIcons];
    }

    indexCopy = index;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = iconsCopy;
    v10 = iconsCopy;
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

          gridSizeClass = [v16 gridSizeClass];
          if (gridSizeClass)
          {
            gridSizeClass2 = [v16 gridSizeClass];
            v19 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

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

    folder = [(SBIconListModel *)self folder];
    v22 = [folder startCoalescingContentChangesForReason:@"insertIcons"];
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
    v32 = indexCopy;
    v34 = (optionsCopy & 0x10000000) != 0;
    v29 = v10;
    selfCopy = self;
    v35 = v14 & 1;
    v33 = optionsCopy;
    v31 = &v38;
    v36 = v24;
    v37 = (optionsCopy & 0x80000000) == 0;
    [(SBIconListModel *)self _coalesceChangesWithRequestID:@"insertIcons" changeBlock:v28];
    [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:0];
    [v22 invalidate];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:optionsCopy];
    v10 = v39[5];

    _Block_object_dispose(&v38, 8);
LABEL_23:
    iconsCopy = v27;
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

- (id)insertIconWhilePreservingQuads:(id)quads toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v37[1] = *MEMORY[0x1E69E9840];
  quadsCopy = quads;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  v12 = v11;
  if (v11 == self)
  {
    if ([(SBIconListModel *)self isAllowedToContainIcon:quadsCopy])
    {
      gridSizeClass = [quadsCopy gridSizeClass];
      v20 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
      rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
      v16 = [(SBIconListModel *)self gridSizeForGridSizeClass:rotatedLayoutClusterGridSizeClass gridCellInfoOptions:options];
      folder = [(SBIconListModel *)self folder];
      v17 = [folder startCoalescingContentChangesForReason:@"insertIcons"];
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
      mutationOptionsCopy = mutationOptions;
      indexCopy = index;
      v23 = quadsCopy;
      v24 = rotatedLayoutClusterGridSizeClass;
      v29 = v20;
      v30 = v16;
      v25 = &v31;
      optionsCopy = options;
      [(SBIconListModel *)self _coalesceChangesWithRequestID:@"insertIcons" changeBlock:v22];
      [v17 invalidate];
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:options mutationOptions:mutationOptions];
      [(SBIconListModel *)self markIconStateDirtyWithOptions:mutationOptions];
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

      v37[0] = quadsCopy;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    }
  }

  else
  {
    v13 = [(SBIconListModel *)v11 insertIconWhilePreservingQuads:quadsCopy toGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions];
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:options mutationOptions:mutationOptions];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:mutationOptions];
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

- (id)insertIcon:(id)icon relativeToIcon:(id)toIcon positionDelta:(int64_t)delta gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v31[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  toIconCopy = toIcon;
  if ([(SBIconListModel *)self isAllowedToContainIcon:iconCopy])
  {
    v14 = 0;
    if (iconCopy != toIconCopy && delta)
    {
      v15 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
      v16 = [(SBIconListModel *)self directlyContainsIcon:iconCopy];
      v17 = [v15 gridCellIndexForInsertingIcon:iconCopy relativeToIcon:toIconCopy positionDelta:delta gridCellInfoOptions:options mutationOptions:mutationOptions];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = iconCopy;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      }

      else
      {
        v18 = v17;
        if (v16)
        {
          v19 = [v15 moveContainedIcon:iconCopy toGridCellIndex:v17 gridCellInfoOptions:options mutationOptions:mutationOptions];
          v14 = 0;
        }

        else
        {
          v20 = [(SBIconListModel *)self _otherListForGridCellInfoOptions:options];
          v21 = v20;
          if (v20 == v15)
          {

            v21 = 0;
          }

          0xC0000000 = [v15 insertIcon:iconCopy atGridCellIndex:v18 gridCellInfoOptions:options mutationOptions:mutationOptions | 0xC0000000];
          v23 = 0xC0000000;
          if (0xC0000000)
          {
            v24 = [0xC0000000 mutableCopy];
          }

          else
          {
            v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v25 = v24;
          if (v21)
          {
            [v21 removeIcons:v23 options:mutationOptions | 0xC0000000];
            if ([v21 directlyContainsIcon:toIconCopy])
            {
              v26 = [v21 insertIcon:iconCopy atGridCellIndex:objc_msgSend(v21 gridCellInfoOptions:"gridCellIndexForInsertingIcon:relativeToIcon:positionDelta:gridCellInfoOptions:mutationOptions:" mutationOptions:{iconCopy, toIconCopy, delta, 0, mutationOptions | 0xC4000000), 0, mutationOptions | 0xC4000000}];
              if (v26)
              {
                v27 = v26;
                [v15 removeIcons:v26];
                [v25 addObjectsFromArray:v27];
              }
            }

            else
            {
              0xC00000002 = [v21 addIcon:iconCopy options:mutationOptions | 0xC0000000];
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
    v31[0] = iconCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  }

  return v14;
}

- (unint64_t)indexForInsertingIcon:(id)icon relativeToIcon:(id)toIcon positionDelta:(int64_t)delta
{
  v7 = [(SBIconListModel *)self indexForIcon:toIcon];
  if (delta >= 0)
  {
    deltaCopy = delta;
  }

  else
  {
    deltaCopy = -delta;
  }

  if (delta < 0)
  {
    v11 = v7 >= deltaCopy;
    v12 = v7 - deltaCopy;
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
    v9 = v7 + deltaCopy;
    result = [(SBIconListModel *)self numberOfIcons];
    if (v9 < result)
    {
      return v9;
    }
  }

  return result;
}

- (unint64_t)gridCellIndexForInsertingIcon:(id)icon relativeToIcon:(id)toIcon positionDelta:(int64_t)delta gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v66[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  toIconCopy = toIcon;
  optionsCopy = options;
  v42 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  gridSizeClass = [iconCopy gridSizeClass];
  gridSizeClass2 = [toIconCopy gridSizeClass];
  selfCopy = self;
  gridSize = [v42 gridSize];
  optionsCopy2 = options;
  v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
  v14 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass2 gridCellInfoOptions:optionsCopy2];
  maxNumberOfIcons = [(SBIconListModel *)selfCopy maxNumberOfIcons];
  if (delta >= 0)
  {
    deltaCopy = delta;
  }

  else
  {
    deltaCopy = -delta;
  }

  v52 = deltaCopy;
  v16 = [(SBIconListModel *)selfCopy gridRangeForIcon:iconCopy gridCellInfo:v42];
  v17 = v42;
  v18 = selfCopy;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v66[0] = iconCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
    v20 = [(SBIconListModel *)selfCopy iconGridCellInfoBySimulatingRemovalOfIcons:v19 ignoringPlaceholders:0 gridCellInfoOptions:optionsCopy iconOrder:0];

    v17 = v20;
  }

  v54 = v17;
  v39 = [(SBIconListModel *)selfCopy gridCellIndexForIcon:toIconCopy gridCellInfo:?];
  v37 = v14;
  v53 = v13;
  v21 = gridSize;
  if (((delta & 0x4000000000000000) != 0) ^ __OFSUB__(delta, -delta) | (delta == -delta))
  {
    deltaCopy2 = -delta;
  }

  else
  {
    deltaCopy2 = delta;
  }

  v48 = deltaCopy2;
  v23 = v39;
  while (1)
  {
    v24 = v21;
    v25 = v23;
    if ((delta & 0x8000000000000000) == 0 || v23 < v52)
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      if (delta < 0 || v48 + v23 >= maxNumberOfIcons)
      {
        break;
      }
    }

    v23 += delta;
    v21 = v24;
    if (v23 == [(SBIconListModel *)v18 bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:v25 + delta gridCellInfo:v54]&& [(SBIconListModel *)v18 isValidGridRange:v25 + delta options:v53, optionsCopy])
    {
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 1;
      v27 = [(SBIconListModel *)v18 iconsForGridRange:v25 + delta gridCellInfo:v53, v54];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v27;
      v28 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v28)
      {
        v45 = *v58;
        v38 = iconCopy;
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
            v33 = SBHIconGridRangeIntersection(v30, v31, v25 + delta, v53, v24);
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __114__SBIconListModel_gridCellIndexForInsertingIcon_relativeToIcon_positionDelta_gridCellInfoOptions_mutationOptions___block_invoke;
            v55[3] = &unk_1E808DB18;
            v55[5] = v30;
            v55[6] = v32;
            v56 = gridSize;
            v55[4] = &v61;
            v14 = v14 & 0xFFFFFFFF00000000 | v24;
            SBHIconGridRangeEnumerateCellIndexes(v33, v34, v14, v55);
            if ((v62[3] & 1) == 0)
            {
              iconCopy = v38;
              v21 = v24;
              v18 = selfCopy;
              goto LABEL_26;
            }

            v18 = selfCopy;
          }

          v21 = v24;
          v28 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
          iconCopy = v38;
          if (v28)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      v35 = *(v62 + 24);
      v23 = delta + v25;
      _Block_object_dispose(&v61, 8);
      if (v35)
      {
        v26 = delta + v25;
        break;
      }
    }
  }

  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((delta & 0x8000000000000000) == 0 || v39)
    {
      v26 = [(SBIconListModel *)v18 firstGridCellIndexOfRangeOfGridSizeClass:gridSizeClass withoutIconsNearGridRange:v39 gridCellInfo:v37, v54];
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

- (unint64_t)bestGridCellIndexForInsertingIcon:(id)icon maintainingPositionRelativeToIcon:(id)toIcon before:(BOOL)before ignoringPlaceholders:(BOOL)placeholders gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  placeholdersCopy = placeholders;
  beforeCopy = before;
  iconCopy = icon;
  toIconCopy = toIcon;
  if (placeholdersCopy)
  {
    v15 = [(SBIconListModel *)self indexesForIconsPassingTest:&__block_literal_global_58];
    if ([v15 count])
    {
      v16 = beforeCopy;
      v17 = [(SBIconListModel *)self copy];
      [v17 removeIconsAtIndexes:v15 options:0];
      v18 = [v17 bestGridCellIndexForInsertingIcon:iconCopy maintainingPositionRelativeToIcon:toIconCopy before:v16 ignoringPlaceholders:0 gridCellInfoOptions:options mutationOptions:mutationOptions];

      goto LABEL_34;
    }
  }

  v19 = [(SBIconListModel *)self indexForIcon:toIconCopy];
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v19;
    v50 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    v21 = [v50 gridCellIndexForIconIndex:v20];
    v22 = v21;
    if (!beforeCopy || v21)
    {
      [iconCopy uniqueIdentifier];
      v24 = v23 = beforeCopy;
      uniqueIdentifier = [toIconCopy uniqueIdentifier];
      v48 = [(SBIconListModel *)self gridSizeForIcon:iconCopy];
      v46 = [(SBIconListModel *)self gridSizeForIcon:toIconCopy];
      gridSize = [v50 gridSize];
      Area = SBHIconGridSizeGetArea(gridSize);
      v28 = -1;
      if (!v23)
      {
        v28 = 1;
      }

      v47 = v28;
      if (!v23)
      {
        v29 = [(SBIconListModel *)self indexForIcon:iconCopy];
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

      v45 = toIconCopy;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __151__SBIconListModel_bestGridCellIndexForInsertingIcon_maintainingPositionRelativeToIcon_before_ignoringPlaceholders_gridCellInfoOptions_mutationOptions___block_invoke_2;
      aBlock[3] = &unk_1E808DB40;
      v44 = v24;
      v53 = v44;
      v43 = uniqueIdentifier;
      v54 = v43;
      v55 = v48;
      v56 = v46;
      v57 = gridSize;
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

          v33 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:v22 gridCellInfo:v50, v43, v44];
          selfCopy = self;
          v35 = [(SBIconListModel *)self copy];
          v36 = iconCopy;
          v37 = [(SBIconListModel *)v35 insertIcon:iconCopy atGridCellIndex:v33 gridCellInfoOptions:options mutationOptions:mutationOptions];
          v38 = [(SBIconListModel *)v35 gridCellInfoWithOptions:options];
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
            iconCopy = v36;
            break;
          }

          v32 |= v22 == 0;
          v22 = v41;
          iconCopy = v36;
          self = selfCopy;
        }

        while (v18 == 0x7FFFFFFFFFFFFFFFLL);
      }

      toIconCopy = v45;
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

- (id)replaceIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options
{
  v15 = *MEMORY[0x1E69E9840];
  withIconCopy = withIcon;
  v8 = MEMORY[0x1E695DEC8];
  withIconCopy2 = withIcon;
  iconCopy = icon;
  v11 = [v8 arrayWithObjects:&withIconCopy count:1];

  v12 = [(SBIconListModel *)self replaceIcon:iconCopy withIcons:v11 options:options, withIconCopy, v15];

  return v12;
}

- (id)replaceIconAtIndex:(unint64_t)index withIcon:(id)icon options:(unint64_t)options
{
  v13[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v9 = [(SBIconListModel *)self iconAtIndex:index];
  v13[0] = iconCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [(SBIconListModel *)self replaceIcon:v9 withIcons:v10 options:options];

  return v11;
}

- (id)replaceIconAtGridCellIndex:(unint64_t)index withIcon:(id)icon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  v11 = [(SBIconListModel *)self iconAtGridCellIndex:index gridCellInfoOptions:options];
  if (v11)
  {
    [(SBIconListModel *)self replaceIcon:v11 withIcon:iconCopy gridCellInfoOptions:options mutationOptions:mutationOptions];
  }

  else
  {
    [(SBIconListModel *)self insertIcon:iconCopy atGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions];
  }
  v12 = ;

  return v12;
}

- (id)replaceIcon:(id)icon withIcons:(id)icons gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v76 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  iconsCopy = icons;
  v13 = [iconsCopy count];
  if (!v13)
  {
    [(SBIconListModel *)self removeIcon:iconCopy options:mutationOptions];
    v20 = 0;
    goto LABEL_68;
  }

  v14 = v13;
  if (![(SBIconListModel *)self isAllowedToContainIcons:iconsCopy])
  {
    v20 = iconsCopy;
    goto LABEL_68;
  }

  v15 = NSStringFromSelector(a2);
  v51 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v15];

  selfCopy = self;
  v16 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  firstObject = [iconsCopy firstObject];
  gridSizeClass = [firstObject gridSizeClass];
  gridSizeClass2 = [iconCopy gridSizeClass];
  v53 = gridSizeClass2;
  v54 = gridSizeClass;
  if (v14 == 1 && (!gridSizeClass || [gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"]) && (!gridSizeClass2 || objc_msgSend(gridSizeClass2, "isEqualToString:", @"SBHIconGridSizeClassDefault")) && objc_msgSend(v16, "isEligibleForSimpleMutationsWithGridCellInfoOptions:mutationOptions:", options, mutationOptions | 0x80000000))
  {
    v56 = 0;
    v57 = [v16 indexForIcon:iconCopy];
    v58 = 1;
    v59 = v57;
  }

  else
  {
    v56 = [v16 gridCellInfoWithOptions:options];
    v57 = [v16 indexForIcon:iconCopy];
    v59 = [v56 gridCellIndexForIconIndex:?];
    v58 = 0;
    if (v14 != 1)
    {
      goto LABEL_25;
    }
  }

  v21 = firstObject;
  v22 = [v16 gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
  v23 = [v16 gridSizeForGridSizeClass:gridSizeClass2 gridCellInfoOptions:options];
  v24 = v59;
  if ((v58 & 1) == 0)
  {
    v24 = [v16 bestGridCellIndexForInsertingIcon:v21 atGridCellIndex:v59 gridCellInfo:v56];
  }

  if (!SBHIconGridSizeEqualToIconGridSize(v23, v22) && [v16 usesContiguousRegionReflowingWithGridCellInfo:v56 gridCellInfoOptions:options mutationOptions:mutationOptions | 0x80000000])
  {
    [v16 reflowIconsForwardForInsertingIcon:v21 atGridCellIndex:v24 replacingIcon:iconCopy gridCellInfoOptions:options];
  }

  if ((v58 & 1) == 0 && ([v16 isInsertionFixedForIcon:v21 atGridCellIndex:v24 gridCellInfo:v56 mutationOptions:mutationOptions | 0x80000000] & 1) != 0 || (v54 == v53 || objc_msgSend(v54, "isEqualToString:", v53)) && objc_msgSend(v16, "isIconFixed:", iconCopy))
  {
    [v16 swapFixedIconLocationForReplacedIcon:iconCopy withReplacementIcon:v21];
  }

LABEL_25:
  v50 = firstObject;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v52 = iconsCopy;
  obj = iconsCopy;
  v55 = iconCopy;
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
          0x80000000 = [v16 willAddIcon:*(*(&v70 + 1) + 8 * v26) atIndex:0 gridCellInfoOptions:options mutationOptions:mutationOptions | 0x80000000];
        }

        else
        {
          v30 = v57;
          if ((v58 & 1) == 0)
          {
            v30 = [v16 bestIconIndexForReplacingIcon:iconCopy withIcon:*(*(&v70 + 1) + 8 * v26) gridCellInfo:v56];
          }

          0x80000000 = [v16 willReplaceIcon:iconCopy withIcon:v28 atIndex:v30 gridCellInfoOptions:options mutationOptions:mutationOptions | 0x80000000];
        }

        v31 = 0x80000000;
        if ((mutationOptions & 0x100) != 0)
        {
          [v16 relocateAnyAffectedFixedIconsForInsertingIcon:v28 atGridCellIndex:v59 replacingIcon:iconCopy gridCellInfoOptions:options mutationOptions:mutationOptions | 0x80000000];
        }

        if (v27)
        {
          0x800000002 = [v16 insertIcon:v28 afterIcon:v27 gridCellInfoOptions:options mutationOptions:mutationOptions | 0x80000000];
          v33 = 0x800000002;
          if (v63)
          {
            if (0x800000002)
            {
              v34 = [v63 arrayByAddingObjectsFromArray:0x800000002];

              v63 = v34;
            }
          }

          else
          {
            v63 = 0x800000002;
          }

          v25 = v27;
        }

        else
        {
          v35 = [v16[1] indexOfNode:iconCopy];
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

            iconCopy = v55;
          }

          v25 = v28;
        }

        0x800000003 = [v16 _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:options mutationOptions:mutationOptions | 0x80000000];
        if ([0x800000003 count])
        {
          v40 = v64;
          if (!v64)
          {
            v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          v64 = v40;
          [v40 addObjectsFromArray:0x800000003];
        }

        [v16 sortByLayoutOrderWithGridCellInfoOptions:options];
        [v16 removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:options];
        if (!v27)
        {
          [v16 didRemoveIcon:iconCopy options:mutationOptions | 0x80000000];
        }

        [v16 didAddIcon:v28 options:mutationOptions | 0x80000000];

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

  0x800000004 = [v16 _checkAndRemoveBouncedIconsAfterChangeToIcons:obj ignoringTrailingIconCheck:1 options:mutationOptions | 0x80000000];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __77__SBIconListModel_replaceIcon_withIcons_gridCellInfoOptions_mutationOptions___block_invoke;
  v65[3] = &unk_1E808DB68;
  mutationOptionsCopy = mutationOptions;
  v42 = 0x800000004;
  v66 = v42;
  v43 = iconCopy;
  v67 = v43;
  v44 = obj;
  v68 = v44;
  [(SBIconListModel *)selfCopy _updateOtherListWithGridCellInfoOptions:options mutationOptions:mutationOptions createIfNecessary:0 usingBlock:v65];
  [(SBIconListModel *)selfCopy saveOnlyRequiredIconLocationsAsFixedIfRequired];
  v45 = [v44 subarrayWithRange:{1, objc_msgSend(v44, "count") - 1}];
  allObjects = [v64 allObjects];
  [(SBIconListModel *)selfCopy _notifyListObserversDidAddIcons:v45 didRemoveIcons:0 movedIcons:allObjects didReplaceIcon:v43 withIcon:v50 options:mutationOptions | 0x80000000];

  [v51 invalidate];
  [(SBIconListModel *)selfCopy markIconStateDirtyWithOptions:mutationOptions | 0x80000000];
  if (v42 || !v63)
  {
    iconCopy = v55;
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
    iconCopy = v55;
  }

LABEL_67:

  iconsCopy = v52;
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

- (void)removeIconAtIndex:(unint64_t)index options:(unint64_t)options
{
  v6 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:index];
  [(SBIconListModel *)self removeIcon:v6 options:options];
}

- (void)removeLastIcon
{
  lastNode = [(SBIconIndexMutableList *)self->_icons lastNode];
  [(SBIconListModel *)self removeIcon:lastNode];
}

- (void)removeIcon:(id)icon options:(unint64_t)options
{
  v21[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  if ((options & 0x200000) != 0)
  {
    [(SBIconListModel *)self removeIcon:iconCopy gridCellInfoOptions:0 mutationOptions:options];
    goto LABEL_16;
  }

  v8 = NSStringFromSelector(a2);
  v9 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v8];

  [(SBIconListModel *)self willRemoveIcon:iconCopy options:options];
  if (![(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:0 mutationOptions:options])
  {
    v12 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
  v11 = [(SBIconListModel *)self gridCellIndexForIcon:iconCopy gridCellInfo:v10];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(SBIconListModel *)self contiguousRegionForGridCellIndex:v11 gridCellInfo:v10];
    if (!v12 || [(SBIconListModel *)self needsToReflowIconsForRemovingIcon:iconCopy inContiguousRegion:v12 gridCellInfoOptions:0 mutationOptions:options])
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_8:

LABEL_11:
  [(SBIconIndexMutableList *)self->_icons removeNodeIdenticalTo:iconCopy];
  if ((options & 0x8000) != 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __38__SBIconListModel_removeIcon_options___block_invoke;
    v19[3] = &unk_1E808CD70;
    v20 = iconCopy;
    [(SBIconListModel *)self enumerateFolderIconsUsingBlock:v19];
  }

  v13 = [(SBIconListModel *)self _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:0 mutationOptions:options];
  if (v12)
  {
    [(SBIconListModel *)self shiftFixedIconsBackwardsInContiguousRegion:v12 toFillHoleLeftByRemovingIcon:iconCopy fromGridCellIndex:v11 gridCellInfoOptions:0 mutationOptions:options];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__SBIconListModel_removeIcon_options___block_invoke_2;
  v16[3] = &unk_1E808DA28;
  v14 = iconCopy;
  v17 = v14;
  optionsCopy = options;
  [(SBIconListModel *)self _updateRotatedIconsWithOptions:options usingBlock:v16];
  [(SBIconListModel *)self didRemoveIcon:v14 options:options];
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:v15 movedIcons:v13];

  [v9 invalidate];
  [(SBIconListModel *)self markIconStateDirtyWithOptions:options];

LABEL_16:
}

void __38__SBIconListModel_removeIcon_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 folder];
  [v3 removeIcon:*(a1 + 32) options:0];
}

- (void)removeIcons:(id)icons
{
  v14 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [iconsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(iconsCopy);
        }

        [(SBIconListModel *)self removeIcon:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [iconsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeIcons:(id)icons options:(unint64_t)options
{
  v16 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [iconsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(iconsCopy);
        }

        [(SBIconListModel *)self removeIcon:*(*(&v11 + 1) + 8 * v10++) options:options];
      }

      while (v8 != v10);
      v8 = [iconsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)removeIcons:(id)icons gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v18 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [iconsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(iconsCopy);
        }

        [(SBIconListModel *)self removeIcon:*(*(&v13 + 1) + 8 * v12++) gridCellInfoOptions:options mutationOptions:mutationOptions];
      }

      while (v10 != v12);
      v10 = [iconsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)removeAllIcons
{
  numberOfIcons = [(SBIconListModel *)self numberOfIcons];
  if (numberOfIcons)
  {
    v4 = numberOfIcons;
    do
    {
      [(SBIconListModel *)self removeIconAtIndex:0];
      --v4;
    }

    while (v4);
  }
}

- (void)removeIconsAtIndexes:(id)indexes options:(unint64_t)options
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SBIconListModel_removeIconsAtIndexes_options___block_invoke;
  v4[3] = &unk_1E808DB90;
  v4[4] = self;
  v4[5] = options;
  [indexes enumerateIndexesWithOptions:2 usingBlock:v4];
}

- (void)removeAllIconsPassingTest:(id)test
{
  testCopy = test;
  numberOfIcons = [(SBIconListModel *)self numberOfIcons];
  if (numberOfIcons)
  {
    v5 = numberOfIcons;
    for (i = 0; i < v5; ++i)
    {
      v7 = [(SBIconListModel *)self iconAtIndex:i];
      if (testCopy[2](testCopy, v7))
      {
        [(SBIconListModel *)self removeIconAtIndex:i--];
        --v5;
      }
    }
  }
}

- (void)removeIcon:(id)icon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v68[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  if ((mutationOptions & 0x200000) != 0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __66__SBIconListModel_removeIcon_gridCellInfoOptions_mutationOptions___block_invoke;
    v64[3] = &unk_1E808DBB8;
    v12 = iconCopy;
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
        v15 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
        gridSize = [v15 gridSize];
        gridSizeClass = [v12 gridSizeClass];
        v16 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
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
        v19 = [(SBIconListModel *)self repairModelByEliminatingGapsInIcons:v44 avoidingIcons:0 gridCellInfoOptions:options];
        nodes = [v44 nodes];
        v41 = [(SBIconListModel *)self gridCellInfoForIcons:nodes options:options];

        if (((*(v43 + 2))(v43, v41) & 1) != 0 && v16.columns != gridSize)
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
          optionsCopy = options;
          v57 = v43;
          v33 = v22;
          v56 = v33;
          v60 = Area;
          [v45 enumerateIndexesUsingBlock:v54];
          v37 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
          v23 = NSStringFromSelector(a2);
          v32 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v23];

          [(SBIconListModel *)self willRemoveIcon:v12 options:mutationOptions];
          v24 = ![(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:options mutationOptions:mutationOptions];
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
            v52 = gridSize;
            v46[4] = self;
            v49 = v53;
            optionsCopy2 = options;
            v51 = v26;
            v47 = v33;
            v48 = v37;
            SBHIconGridRangeEnumerateSubranges(v35, v34, v34 | 0x10000, gridSize, 0, v46);

            _Block_object_dispose(v53, 8);
          }

          v27 = [(SBIconListModel *)self _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:options mutationOptions:mutationOptions];
          if (v25)
          {
            [(SBIconListModel *)self shiftFixedIconsBackwardsInContiguousRegion:v25 toFillHoleLeftByRemovingIcon:v12 fromGridCellIndex:0x7FFFFFFFFFFFFFFFLL gridCellInfoOptions:options mutationOptions:mutationOptions];
          }

          [(SBIconListModel *)self didRemoveIcon:v12 options:mutationOptions];
          v28 = [(SBIconListModel *)self _otherListForGridCellInfoOptions:options];
          if (v28 != v37)
          {
            [v28 removeIcon:v12 gridCellInfoOptions:-[SBIconListModel rotatedGridCellInfoOptions:](self mutationOptions:{"rotatedGridCellInfoOptions:", options), mutationOptions}];
          }

          v68[0] = v12;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
          [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:v29 movedIcons:v27];

          [v32 invalidate];
          [(SBIconListModel *)self markIconStateDirtyWithOptions:mutationOptions];
        }

        else
        {
          [(SBIconListModel *)self removeIcon:v12 options:mutationOptions & 0xFFFFFFFFFFDFFFFFLL];
        }
      }
    }

    else
    {
      [(SBIconListModel *)self removeIcon:v12 options:mutationOptions & 0xFFFFFFFFFFDFFFFFLL];
    }
  }

  else
  {
    [(SBIconListModel *)self removeIcon:iconCopy options:mutationOptions];
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

- (id)insertIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v47[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v12 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  if ([(SBIconListModel *)self directlyContainsIcon:iconCopy])
  {
    options = [(SBIconListModel *)self moveContainedIcon:iconCopy toGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions];
    goto LABEL_50;
  }

  v13 = NSStringFromSelector(a2);
  v14 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v13];

  if (v12 != self)
  {
    0x60000000 = [(SBIconListModel *)v12 insertIcon:iconCopy atGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions | 0x60000000];
    if (0x60000000)
    {
      [(SBIconListModel *)self removeIcons:0x60000000 options:mutationOptions | 0xEC000000];
    }

    0xEC000000 = [(SBIconListModel *)self addIcon:iconCopy options:mutationOptions | 0xEC000000];
    if ((mutationOptions & 0x800000000) == 0)
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:options mutationOptions:mutationOptions];
    }

    goto LABEL_48;
  }

  folder = [(SBIconListModel *)self folder];
  v17 = [folder startCoalescingContentChangesForReason:@"insertIcons"];
  v18 = [(SBIconListModel *)self isValidGridCellIndex:index options:options];
  [(SBIconListModel *)self willAddIcon:iconCopy atIndex:0 gridCellInfoOptions:options mutationOptions:mutationOptions];
  v42 = v14;
  if (v18 && ![(SBIconListModel *)self isValidGridCellIndex:index options:options])
  {
    index = [(SBIconListModel *)self maxNumberOfIcons]- 1;
  }

  v44 = v17;
  v19 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:index gridCellInfoOptions:options];
  gridSizeClass = [iconCopy gridSizeClass];
  v21 = [(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:options];
  v46 = v19;
  if (gridSizeClass && ![gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] || -[SBIconListModel isFull](self, "isFull") || index > -[SBIconListModel numberOfIcons](self, "numberOfIcons") || !-[SBIconListModel isEligibleForSimpleMutationsWithGridCellInfoOptions:mutationOptions:](self, "isEligibleForSimpleMutationsWithGridCellInfoOptions:mutationOptions:", options, mutationOptions))
  {
    v24 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    v41 = [v24 iconIndexForGridCellIndex:v19];
    v25 = v19;
    v22 = v24;
    v23 = ![(SBIconListModel *)self isInsertionFixedForIcon:iconCopy atGridCellIndex:v25 gridCellInfo:v24 mutationOptions:mutationOptions];
  }

  else
  {
    v41 = [(SBIconListModel *)self simpleInsertionIconIndexForGridCellIndex:v19];
    v22 = 0;
    v23 = 1;
  }

  v43 = gridSizeClass;
  if (v21)
  {
    v26 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
    if ((mutationOptions & 0x100) != 0)
    {
      [(SBIconListModel *)self relocateAnyAffectedFixedIconsForInsertingIcon:iconCopy atGridCellIndex:index replacingIcon:0 gridCellInfoOptions:options mutationOptions:mutationOptions];
      v27 = [(SBIconListModel *)self gridCellInfoWithOptions:options];

      v22 = v27;
    }

    if ([(SBIconListModel *)self hasFixedIconInGridRange:v46 gridCellInfo:v26, v22])
    {
      v14 = v42;
      [v42 invalidate];
      v28 = v44;
      [v44 invalidate];
      v47[0] = iconCopy;
      options = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
      0x60000000 = 0;
      v29 = 0;
      goto LABEL_47;
    }
  }

  v14 = v42;
  if ((v23 & 1) == 0)
  {
    [(SBIconListModel *)self setFixedLocation:v46 forIcon:iconCopy options:mutationOptions | 0x800000];
  }

  v28 = v44;
  if ((mutationOptions & 0x200000) == 0)
  {
    goto LABEL_37;
  }

  gridSizeClass2 = [iconCopy gridSizeClass];
  if (!gridSizeClass2)
  {
    goto LABEL_37;
  }

  v40 = gridSizeClass2;
  gridSizeClass3 = [iconCopy gridSizeClass];
  if ([gridSizeClass3 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    goto LABEL_36;
  }

  rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  if (!rotatedLayoutClusterGridSizeClass)
  {
    goto LABEL_36;
  }

  v39 = rotatedLayoutClusterGridSizeClass;
  rotatedLayoutClusterGridSizeClass2 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  v33 = [rotatedLayoutClusterGridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];
  if ((mutationOptions & 0x100000) != 0 || (v33 & 1) != 0 || [(SBIconListModel *)self directlyContainsIcon:iconCopy]|| ![(SBIconListModel *)self directlyContainsNonDefaultSizeClassIcon])
  {

LABEL_36:
    goto LABEL_37;
  }

  v37 = [(SBIconListModel *)self isGridLayoutValidWithOptions:options | 0xC];

  if (v37)
  {
    0x70000000 = [(SBIconListModel *)self insertIconWhilePreservingQuads:iconCopy toGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions | 0x70000000];
    goto LABEL_40;
  }

LABEL_37:
  if (v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    0x60000000 = [(SBIconListModel *)self addIcon:iconCopy options:mutationOptions | 0x70000000];
    v35 = ![(SBIconListModel *)self allowsIndependentRotatedLayout];
    goto LABEL_41;
  }

  0x70000000 = [(SBIconListModel *)self insertIcon:iconCopy atIndex:v41 options:mutationOptions | 0x70000000];
LABEL_40:
  0x60000000 = 0x70000000;
  v35 = 1;
LABEL_41:
  [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:options];
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:options]&& [(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:options mutationOptions:mutationOptions])
  {
    [(SBIconListModel *)self removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:v46 sortByLayoutOrder:1 gridCellInfoOptions:options];
  }

  [v44 invalidate];
  if (v35)
  {
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:options mutationOptions:mutationOptions];
  }

  v29 = 1;
LABEL_47:

  if (v29)
  {
LABEL_48:
    [v14 invalidate];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:mutationOptions];
    0x60000000 = 0x60000000;
    options = 0x60000000;
  }

LABEL_50:

  return options;
}

- (unint64_t)simpleInsertionIconIndexForGridCellIndex:(unint64_t)index
{
  if ([(SBIconListModel *)self numberOfIcons]<= index)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return index;
  }
}

- (id)insertIcon:(id)icon atCoordinate:(SBIconCoordinate)coordinate gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  row = coordinate.row;
  column = coordinate.column;
  iconCopy = icon;
  mutationOptions = [(SBIconListModel *)self insertIcon:iconCopy atGridCellIndex:[(SBIconListModel *)self gridCellIndexForCoordinate:column gridCellInfoOptions:row gridCellInfoOptions:options] mutationOptions:options, mutationOptions];

  return mutationOptions;
}

- (id)insertIcons:(id)icons atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconsCopy = icons;
  if ([iconsCopy count])
  {
    v11 = [(SBIconListModel *)self directlyContainsIcons:iconsCopy];
    if ((mutationOptions & 0x400) != 0 && v11)
    {
      index = [(SBIconListModel *)self bestGridCellIndexForMovingIcons:iconsCopy toGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions];
    }

    firstObject = [iconsCopy firstObject];
    v13 = [(SBIconListModel *)self insertIcon:firstObject atGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions];
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
    v18 = firstObject;
    v29 = v18;
    v19 = [iconsCopy count];
    v20 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, v19 - 1}];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__SBIconListModel_insertIcons_atGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke;
    v23[3] = &unk_1E808DC80;
    v23[4] = self;
    v25 = v28;
    optionsCopy = options;
    mutationOptionsCopy = mutationOptions;
    v21 = v17;
    v24 = v21;
    [iconsCopy enumerateObjectsAtIndexes:v20 options:0 usingBlock:v23];

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

- (unint64_t)bestGridCellIndexForMovingIcons:(id)icons toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v41 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v34 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  gridSize = [v34 gridSize];
  v9 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = iconsCopy;
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
    indexCopy2 = index;
    if (v23 == [v10 count])
    {
      [v21 gridRange];
      v26 = v25;
      v27 = v25;
      v28 = SBHIconGridRangeIntersection(index, v25, 0, gridSize, gridSize);
      v30 = v29;
      if (!SBHIconGridRangeEqualToIconGridRange(index, v27, v28, v29))
      {
        v35[0] = index;
        v35[1] = v27;
        SBHIconGridRangeOffset(v35, 2, v26 - v30, gridSize);
        SBHIconGridRangeOffset(v35, 1, (HIWORD(v26) - HIWORD(v30)), gridSize);
        if ([v34 iconIndexForGridCellIndex:v35[0]] == 0x7FFFFFFFFFFFFFFFLL)
        {
          indexCopy2 = v35[0];
        }
      }
    }
  }

  else
  {
    indexCopy2 = index;
  }

  return indexCopy2;
}

- (id)replaceIcon:(id)icon withIcon:(id)withIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v17 = *MEMORY[0x1E69E9840];
  withIconCopy = withIcon;
  v10 = MEMORY[0x1E695DEC8];
  withIconCopy2 = withIcon;
  iconCopy = icon;
  v13 = [v10 arrayWithObjects:&withIconCopy count:1];

  v14 = [(SBIconListModel *)self replaceIcon:iconCopy withIcons:v13 gridCellInfoOptions:options mutationOptions:mutationOptions, withIconCopy, v17];

  return v14;
}

- (id)moveContainedIcon:(id)icon toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v53[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  v13 = gridSizeClass;
  if (gridSizeClass && ![gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] || -[SBIconListModel numberOfIcons](self, "numberOfIcons") <= index)
  {
    v15 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  }

  else
  {
    v14 = [(SBIconListModel *)self isEligibleForSimpleMutationsWithGridCellInfoOptions:options mutationOptions:mutationOptions];
    v15 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
    if (v14)
    {
      v16 = [(SBIconListModel *)self indexForIcon:iconCopy];
      v17 = 0;
      v18 = 1;
      goto LABEL_8;
    }
  }

  v17 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  index = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:index gridCellInfo:v17];
  v16 = [v17 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", iconCopy)}];
  v18 = 0;
LABEL_8:
  if (v16 == index)
  {
    if ((mutationOptions & 0x80) != 0)
    {
      [(SBIconListModel *)v15 setFixedLocation:index forIcon:iconCopy];
    }

    v19 = 0;
  }

  else
  {
    v52 = v18;
    v20 = NSStringFromSelector(a2);
    v51 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v20];

    icons = [(SBIconListModel *)self icons];
    if (v15 == self)
    {
      v21 = [(SBIconListModel *)self gridSizeForGridSizeClass:v13 gridCellInfoOptions:options];
      v46 = v15;
      if (v52)
      {
        [(SBIconIndexMutableList *)self->_icons moveNode:iconCopy toIndex:index];
        v44 = 0;
        v47 = 0;
        v22 = 0;
        v23 = 1;
      }

      else
      {
        v24 = v21;
        v45 = [(SBIconListModel *)self isMoveFixedForIcon:iconCopy toGridCellIndex:index gridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions];
        if ([(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions])
        {
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v48 = 0;
          }

          else
          {
            v48 = [(SBIconListModel *)self contiguousRegionForGridCellIndex:v16 gridCellInfo:v17];
          }

          gridSize = [v17 gridSize];
          v27 = SBHIconGridRangeIntersection(index, v24, 0, gridSize, gridSize);
          v25 = [(SBIconListModel *)self contiguousRegionsForGridRange:v27 gridCellInfo:v28, v17];
        }

        else
        {
          v25 = 0;
          v48 = 0;
        }

        v47 = v25;
        if ([(SBIconListModel *)self shouldDisplaceExistingFixedIconsWithGridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions])
        {
          [(SBIconListModel *)self relocateAnyAffectedFixedIconsForMovingIcon:iconCopy fromGridCellIndex:v16 toGridCellIndex:index intoContiguousRegions:v25 gridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions];
          v29 = [(SBIconListModel *)self gridCellInfoWithOptions:options];

          v17 = v29;
        }

        v30 = [(SBIconListModel *)self isIconFixed:iconCopy];
        v31 = v30;
        if (v45)
        {
          [(SBIconListModel *)self setFixedLocation:index forIcon:iconCopy options:mutationOptions | 0x800000];
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
            [(SBIconListModel *)self shiftFixedIconsBackwardsInContiguousRegion:v48 toFillHoleLeftByRemovingIcon:iconCopy fromGridCellIndex:v16 gridCellInfoOptions:options mutationOptions:mutationOptions];
          }

          [(SBIconListModel *)self saveOnlyRequiredIconLocationsAsFixedIfRequired];
          v23 = 1;
          v44 = 1;
        }

        else
        {
          if (v30 && ![(SBIconListModel *)self usesTwoDimensionalMovementWithGridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions])
          {
            [(SBIconListModel *)self removeFixedIconLocationForIcon:iconCopy];
            [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:options];
            v33 = [(SBIconListModel *)self gridCellInfoWithOptions:options];

            v17 = v33;
          }

          if ([(SBIconListModel *)self _moveContainedIconUsingTwoDimensionalMovement:iconCopy toGridCellIndex:index gridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions]|| [(SBIconListModel *)self _moveContainedIconWithinAffectedQuadsIfNecessary:iconCopy toGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions]|| [(SBIconListModel *)self _moveContainedIconLargerThanQuadsIfNecessary:iconCopy toGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions]|| [(SBIconListModel *)self _moveContainedIconBySwappingVerticallyWithAdjacentIcons:iconCopy toGridCellIndex:index gridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions]|| [(SBIconListModel *)self _moveContainedIconUsingAutomaticClusteringIfNecessary:iconCopy toGridCellIndex:index gridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions])
          {
            v44 = 0;
            v23 = 1;
          }

          else
          {
            [(SBIconListModel *)self _moveContainedIconUsingSimpleMovement:iconCopy toGridCellIndex:index gridCellInfo:v17 gridCellInfoOptions:options mutationOptions:mutationOptions];
            v23 = 0;
            v44 = 0;
          }

          v22 = v48;
        }
      }

      v34 = [(SBIconListModel *)self _updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:options mutationOptions:mutationOptions];
      if (v22 && ((v44 | [v22 isEmpty]) & 1) == 0)
      {
        [(SBIconListModel *)self shiftFixedIconsBackwardsInContiguousRegion:v22 toFillHoleLeftByRemovingIcon:iconCopy fromGridCellIndex:v16 gridCellInfoOptions:options mutationOptions:mutationOptions];
      }

      v49 = v22;
      if (v23)
      {
        v53[0] = iconCopy;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
        v19 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:v35 ignoringTrailingIconCheck:0 options:mutationOptions];

        [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:options];
      }

      else
      {
        v19 = 0;
      }

      v15 = v46;
      if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:options])
      {
        v36 = [(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:options mutationOptions:mutationOptions];
        if ((mutationOptions & 0x80) == 0 && v36)
        {
          [(SBIconListModel *)self removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:index sortByLayoutOrder:1 gridCellInfoOptions:options];
        }
      }
    }

    else
    {
      v19 = [(SBIconListModel *)v15 moveContainedIcon:iconCopy toGridCellIndex:index gridCellInfoOptions:options mutationOptions:mutationOptions];
      [(SBIconListModel *)self removeIcons:v19 options:options | 0x80000000];
    }

    if (![(SBIconListModel *)self allowsIndependentRotatedLayout])
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:options mutationOptions:mutationOptions];
    }

    if (v52)
    {
      if (v16 >= index)
      {
        indexCopy = index;
      }

      else
      {
        indexCopy = v16;
      }

      if (v16 <= index)
      {
        indexCopy2 = index;
      }

      else
      {
        indexCopy2 = v16;
      }

      v39 = icons;
      v40 = [icons subarrayWithRange:{indexCopy, indexCopy2 - indexCopy}];
    }

    else
    {
      [(SBIconListModel *)self gridCellInfoWithOptions:options];
      v42 = v41 = v15;
      v39 = icons;
      v40 = [(SBIconListModel *)self movedIconsFromGridCellInfo:v17 withIconOrder:icons toGridCellInfo:v42];

      v15 = v41;
    }

    if ([v40 count])
    {
      [(SBIconListModel *)self markIconStateDirtyWithOptions:mutationOptions];
      [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:0 movedIcons:v40];
    }

    [v51 invalidate];
  }

  return v19;
}

- (BOOL)_moveContainedIconWithinAffectedQuadsIfNecessary:(id)necessary toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v75 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if ((mutationOptions & 0x300000000) == 0)
  {
    rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
    v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:rotatedLayoutClusterGridSizeClass gridCellInfoOptions:options];
    v14 = v13;
    Area = SBHIconGridSizeGetArea(*&v13);
    if (!rotatedLayoutClusterGridSizeClass || (v16 = Area, ([rotatedLayoutClusterGridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) != 0))
    {
      LOBYTE(gridSizeClass) = 0;
LABEL_10:

      goto LABEL_11;
    }

    count = v16;
    gridSizeClass = [necessaryCopy gridSizeClass];
    v69 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
    v17 = [(SBIconListModel *)self gridSizeWithOptions:options];
    v71 = gridSizeClass;
    if (gridSizeClass)
    {
      v65 = v17;
      if (([(SBRotatedIconListModel *)gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"]& 1) == 0)
      {
        LOBYTE(gridSizeClass) = 0;
        if (*&v13 < 0x10000)
        {
          goto LABEL_9;
        }

        columns = v13.columns;
        if (!v13.columns)
        {
          goto LABEL_9;
        }

        LOBYTE(gridSizeClass) = 0;
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
          LOBYTE(gridSizeClass) = 0;
          if (columns >= v69.columns && HIWORD(*&v69) <= v20)
          {
            v63 = columns;
            v21 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
            v59 = [v21 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", necessaryCopy)}];
            v62 = [(SBIconIndexMutableList *)self->_icons copy];
            v70 = v21;
            v22 = [(SBIconListModel *)self iconAtGridCellIndex:index gridCellInfo:v21];
            v61 = v22;
            if (v22)
            {
              gridSizeClass2 = [v22 gridSizeClass];
            }

            else
            {
              gridSizeClass2 = @"SBHIconGridSizeClassDefault";
            }

            v24 = gridSizeClass2;
            v25 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass2 gridCellInfoOptions:options];
            LOBYTE(gridSizeClass) = 0;
            if (v63 >= v25.columns && HIWORD(*&v25) <= v20)
            {
              v58 = v24;
              v26 = v65.columns;
              v66 = SBHIconGridRangeSubrangeIncludingCellIndex(0, v65.columns, v59, v14, v65.columns);
              v57 = v27;
              v28 = SBHIconGridRangeSubrangeIncludingCellIndex(0, v26, index, v14, v26);
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
              LOBYTE(gridSizeClass) = 0;
              if (!(v32 >> 16))
              {
                v51 = v32;
                if (!(v20 >> 16))
                {
                  [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
                  v49 = v47 = v51;
                  gridSizeClass = [SBIconListModel initWithUniqueIdentifier:"initWithUniqueIdentifier:folder:gridSize:gridSizeClassSizes:" folder:@"QuadMovement" gridSize:0 gridSizeClassSizes:?];
                  rotatedLayoutClusterGridSizeClass2 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
                  [(SBIconListModel *)gridSizeClass setRotatedLayoutClusterGridSizeClass:rotatedLayoutClusterGridSizeClass2];

                  [(SBIconListModel *)gridSizeClass setFixedIconLocationBehavior:0];
                  gridSizeClassDomain = [(SBIconListModel *)self gridSizeClassDomain];
                  [(SBIconListModel *)gridSizeClass setGridSizeClassDomain:gridSizeClassDomain];

                  v48 = [(SBIconListModel *)self iconsForGridRange:v66 gridCellInfo:v57, v70];
                  v35 = [(SBIconListModel *)gridSizeClass addIcons:?];
                  if (v66 != v60)
                  {
                    v36 = [(SBIconListModel *)self iconsForGridRange:v60 gridCellInfo:v56, v70];
                    v37 = [(SBIconListModel *)gridSizeClass addIcons:v36];
                  }

                  p_isa = &gridSizeClass->super.super.isa;
                  LOBYTE(gridSizeClass) = [(SBIconListModel *)gridSizeClass directlyContainsIcon:necessaryCopy];
                  if (gridSizeClass)
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
                    v41 = SBHIconGridRangeRelativeCellIndexForCellIndex(v60, v56, index, v50);
                    v42 = [p_isa moveContainedIcon:necessaryCopy toGridCellIndex:SBHIconGridRangeCellIndexForRelativeCellIndex(v64 gridCellInfoOptions:v14 mutationOptions:{v41, v47), options, mutationOptions | 0x100000000}];
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

      LOBYTE(gridSizeClass) = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  LOBYTE(gridSizeClass) = 0;
LABEL_11:

  return gridSizeClass;
}

- (BOOL)_moveContainedIconLargerThanQuadsIfNecessary:(id)necessary toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v27 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if ((mutationOptions & 0x300000000) == 0)
  {
    rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
    v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:rotatedLayoutClusterGridSizeClass gridCellInfoOptions:options];
    Area = SBHIconGridSizeGetArea(*&v13);
    gridSizeClass = [necessaryCopy gridSizeClass];
    v16 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
    v17 = v16;
    v18 = SBHIconGridSizeGetArea(*&v16);
    gridSize = [(SBIconListModel *)self gridSize];
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
      if (v13.columns >= gridSize.columns || HIWORD(*&gridSize) <= HIWORD(*&v13))
      {
        goto LABEL_6;
      }

      if (!(gridSize.columns % v13.columns) && !(HIWORD(*&gridSize) % HIWORD(*&v13)) && SBHIconGridRangeContainsIconGridRange(0, *&gridSize, index, v17, gridSize.columns))
      {
        v21 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
        v22 = [v21 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", necessaryCopy)}];
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
        [v24 setIconIndexes:v23 inGridRange:{index, v17}];
        [v21 getIconIndexes:v23 inGridRange:{index, v17}];
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

- (BOOL)_moveContainedIconBySwappingVerticallyWithAdjacentIcons:(id)icons toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v63 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  infoCopy = info;
  if ((mutationOptions & 0x200000000) != 0 || ![(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:options mutationOptions:mutationOptions])
  {
    v32 = 0;
  }

  else
  {
    gridSizeClass = [iconsCopy gridSizeClass];
    v14 = [SBIconListModel gridSizeForGridSizeClass:"gridSizeForGridSizeClass:gridCellInfoOptions:" gridCellInfoOptions:?];
    gridSize = [infoCopy gridSize];
    v16 = v14;
    v17 = [(SBIconListModel *)self gridRangeForIcon:iconsCopy gridCellInfo:infoCopy];
    v18 = gridSize;
    v50 = v19;
    v51 = v17;
    v20 = SBHIconGridRangeUnion(index, v16, v17, v19, gridSize);
    v22 = v21;
    if ([(SBIconListModel *)self isValidGridRange:index gridCellInfo:v16, infoCopy])
    {
      v53 = v18;
      selfCopy = self;
      indexCopy = index;
      [(SBIconListModel *)self iconsForGridRange:index gridCellInfo:v16, infoCopy];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v23 = v59 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v24)
      {
        v25 = v24;
        obj = v23;
        mutationOptionsCopy = mutationOptions;
        optionsCopy = options;
        v47 = iconsCopy;
        v26 = *v57;
LABEL_6:
        v27 = 0;
        while (1)
        {
          if (*v57 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = infoCopy;
          v29 = [(SBIconListModel *)selfCopy gridRangeForIcon:*(*(&v56 + 1) + 8 * v27) gridCellInfo:infoCopy];
          v31 = v30;
          v16 = v16 & 0xFFFFFFFF00000000 | v53;
          if (SBHIconGridRangeContainsIconGridRange(v20, v22, v29, v30, v16))
          {
            mutationOptions = mutationOptions & 0xFFFFFFFF00000000 | v53;
            if ((SBHIconGridRangeTouchedEdges(v51, v50, v29, v31, mutationOptions) & 5) != 0)
            {
              break;
            }
          }

          ++v27;
          infoCopy = v28;
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
        infoCopy = v28;
        v33 = [(SBIconListModel *)selfCopy iconsForGridRange:v20 gridCellInfo:v22, v28];
        if ([v33 indexOfObjectPassingTest:&__block_literal_global_73] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = 0;
LABEL_18:
          iconsCopy = v47;
          goto LABEL_20;
        }

        v36 = [[SBIconListGridCellInfo alloc] initWithGridSize:v22];
        v37 = SBHIconGridRangeRelativeCellIndexForCellIndex(v20, v22, indexCopy, v53);
        iconsCopy = v47;
        uniqueIdentifier = [v47 uniqueIdentifier];
        v60 = uniqueIdentifier;
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
        v61 = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

        [(SBIconListModel *)selfCopy layOutIcons:v33 inGridCellInfo:v36 startingAtGridCellIndex:0 gridSize:v22 fixedIconLocations:v40 options:optionsCopy];
        isLayoutOutOfBounds = [(SBIconListGridCellInfo *)v36 isLayoutOutOfBounds];
        if (!isLayoutOutOfBounds)
        {
          v54 = v40;
          v42 = [v28 copy];
          [v42 setLayoutFromGridCellInfo:v36 fromGridRange:0 toGridCellIndex:{v22, v35}];
          icons = [(SBIconListModel *)selfCopy icons];
          [(SBIconListModel *)selfCopy transferPositionsFromGridCellInfo:v42 representingGridRange:0 asLocationsForIcons:v53 gridCellInfoOptions:icons mutationOptions:optionsCopy, mutationOptionsCopy];

          v40 = v54;
        }

        v32 = !isLayoutOutOfBounds;

        infoCopy = v28;
        v34 = gridSizeClass;
        v23 = obj;
      }

      else
      {
        v32 = 0;
        v33 = v23;
LABEL_20:
        v34 = gridSizeClass;
      }
    }

    else
    {
      v32 = 0;
      v34 = gridSizeClass;
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

- (BOOL)_moveContainedIconUsingAutomaticClusteringIfNecessary:(id)necessary toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  necessaryCopy = necessary;
  infoCopy = info;
  if ((mutationOptions & 0x200000000) != 0)
  {
    goto LABEL_38;
  }

  gridSizeClass = [necessaryCopy gridSizeClass];
  v48 = [SBIconListModel gridSizeForGridSizeClass:"gridSizeForGridSizeClass:gridCellInfoOptions:" gridCellInfoOptions:?];
  v50 = necessaryCopy;
  v14 = [(SBIconListModel *)self indexForIcon:necessaryCopy];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  if (!infoCopy)
  {
    infoCopy = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  }

  mutationOptionsCopy = mutationOptions;
  v15 = [infoCopy iconIndexForGridCellIndex:index];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(SBIconIndexMutableList *)self->_icons count]- 1;
  }

  if (gridSizeClass && ([gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    v46 = infoCopy;
    indexCopy = index;
    v16 = @"SBHIconGridSizeClassDefault";
    v17 = [(SBIconListModel *)self gridSizeAreaForGridSizeClass:v16 gridCellInfoOptions:options];
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
      gridSizeClass2 = [v19 gridSizeClass];
      v21 = [(SBIconListModel *)self gridSizeAreaForGridSizeClass:gridSizeClass2 gridCellInfoOptions:options];
      if (v21 > v17)
      {
        v22 = gridSizeClass2;

        v17 = v21;
        v16 = v22;
      }

      ++v14;
    }

    while (v14 <= v18);
    v23 = [(SBIconListModel *)self gridSizeForGridSizeClass:v16 gridCellInfoOptions:options];
    v24 = [(SBIconListModel *)self largestClusteringSizeClassWithOptions:options];
    v25 = [(SBIconListModel *)self gridSizeForGridSizeClass:v24 gridCellInfoOptions:options];
    v26 = HIWORD(*&v23);
    columns = v23.columns;
    if (v23.columns > v25.columns || v26 > HIWORD(*&v25))
    {
      v28 = v24;

      v16 = v28;
    }

    v29 = columns > v48.columns;
    index = indexCopy;
    if (v29 || v26 > HIWORD(*&v48))
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      allowedGridSizeClasses = [(SBIconListModel *)self allowedGridSizeClasses];
      effectiveGridSizeClassDomain = [(SBIconListModel *)self effectiveGridSizeClassDomain];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
      v62[3] = &unk_1E808DCD0;
      v33 = v30;
      v63 = v33;
      selfCopy = self;
      optionsCopy = options;
      [allowedGridSizeClasses enumerateGridSizeClassesInDomain:effectiveGridSizeClassDomain usingBlock:v62];
      v34 = [v33 indexOfObject:v16];
      v35 = [v33 indexOfObject:gridSizeClass];
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
        v60 = indexCopy;
        optionsCopy2 = options;
        [v33 enumerateObjectsAtIndexes:v36 options:2 usingBlock:v57];
      }
    }

    infoCopy = v46;
  }

  Area = SBHIconGridSizeGetArea([infoCopy gridSize]);
  v38 = v67[3];
  necessaryCopy = v50;
  if (v38 < 0 && -v38 > index)
  {
    v38 = -index;
LABEL_33:
    v67[3] = v38;
    goto LABEL_34;
  }

  if (v38 >= 1 && v38 + index >= Area)
  {
    v38 = Area + ~index;
    goto LABEL_33;
  }

LABEL_34:
  v39 = gridSizeClass;
  if ([(SBIconListModel *)self _canClusterIconsUsingSizeClass:v39])
  {
    v40 = infoCopy;
    v41 = 0;
    rotatedLayoutClusterGridSizeClass = v39;
  }

  else
  {
    rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
    v40 = infoCopy;

    v41 = 2;
  }

  v43 = v38 + index;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __138__SBIconListModel__moveContainedIconUsingAutomaticClusteringIfNecessary_toGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke_4;
  v52[3] = &unk_1E808DD20;
  v52[4] = self;
  v44 = v39;
  v53 = v44;
  v55 = options & 0xFFFFFFFFFFFFFFFDLL;
  v54 = v50;
  v56 = v43;
  [(SBIconListModel *)self performChangesByClusteringForSizeClass:rotatedLayoutClusterGridSizeClass behavior:v41 withGridCellInfoOptions:options block:v52];
  infoCopy = v40;

  _Block_object_dispose(&v66, 8);
  mutationOptions = mutationOptionsCopy;
LABEL_38:

  return (mutationOptions & 0x200000000) == 0;
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

- (BOOL)_moveContainedIconUsingTwoDimensionalMovement:(id)movement toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  movementCopy = movement;
  infoCopy = info;
  if ([(SBIconListModel *)self usesTwoDimensionalMovementWithGridCellInfo:infoCopy gridCellInfoOptions:options mutationOptions:mutationOptions])
  {
    if (!infoCopy)
    {
      infoCopy = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    }

    v14 = [(SBIconListModel *)self gridRangeForIcon:movementCopy gridCellInfo:infoCopy];
    v39 = v15;
    v40 = v14;
    gridSize = [infoCopy gridSize];
    v41 = [(SBIconListModel *)self indexForIcon:movementCopy];
    v17 = [infoCopy gridCellIndexForIconIndex:?];
    v18 = [(SBIconListModel *)self gridSizeForIcon:movementCopy gridCellInfoOptions:options];
    v19 = SBHIconGridRangeTouchedEdges(v17, v18, index, v18, gridSize);
    v42 = v17;
    v20 = SBHIconGridRangeIntersection(v17, v18, index, v18, gridSize);
    if (v19)
    {
      if ([(SBIconListModel *)self areIconsInGridRangeFullyContained:index gridCellInfo:v18, infoCopy])
      {
        v21 = [infoCopy copy];
        v19 = v21;
        v22 = v17;
        v23 = v18;
        indexCopy = index;
        goto LABEL_10;
      }
    }

    else if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = SBHIconGridRangeUnion(v17, v18, index, v18, gridSize);
      v26 = v25;
      if ([(SBIconListModel *)self areIconsInGridRangeFullyContained:v19 gridCellInfo:v25, infoCopy])
      {
        v43 = SBHIconGridRangeDifference(v19, v26, v42, v18, gridSize);
        v38 = v27;
        v28 = SBHIconGridRangeDifference(v19, v26, index, v18, gridSize);
        v21 = [infoCopy copy];
        v19 = v21;
        v22 = v43;
        v23 = v38;
        indexCopy = v28;
LABEL_10:
        [v21 swapLayoutInGridRange:v22 withLayoutAtGridCellIndex:{v23, indexCopy}];
        [v19 setIconIndex:v41 inGridRange:{index, v18}];
        if (v19)
        {
LABEL_22:
          [(SBIconListModel *)self transferLocationsForIconsFromGridCellInfo:v19 gridCellInfoOptions:options mutationOptions:mutationOptions];

          v34 = 1;
          goto LABEL_23;
        }
      }
    }

    selfCopy = self;
    mutationOptionsCopy = mutationOptions;
    v29 = 0;
    while (1)
    {
      indexCopy2 = index;
      indexCopy3 = index;
      v45 = v18;
      v31 = qword_1BEE87B98[v29];
      v32 = SBHIconGridRangeMovementDirectionIsVertical(v31) ? WORD1(v18) : v18;
      v19 = v19 & 0xFFFFFFFF00000000 | gridSize;
      if (SBHIconGridRangeOffset(&indexCopy3, v31, v32, v19) == v32 && ![infoCopy hasUsedGridCellsInGridRange:{indexCopy3, v45}])
      {
        break;
      }

      ++v29;
      index = indexCopy2;
      if (v29 == 4)
      {
        goto LABEL_18;
      }
    }

    v19 = [infoCopy copy];
    index = indexCopy2;
    [v19 swapLayoutInGridRange:indexCopy2 withLayoutAtGridCellIndex:{v18, indexCopy3}];
    [v19 setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v42, v18}];
    [v19 setIconIndex:v41 inGridRange:{indexCopy2, v18}];
    if (v19)
    {
      mutationOptions = mutationOptionsCopy;
      self = selfCopy;
      goto LABEL_22;
    }

LABEL_18:
    v33 = [infoCopy copy];
    [v33 setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v40, v39}];
    self = selfCopy;
    mutationOptions = mutationOptionsCopy;
    v19 = [(SBIconListModel *)selfCopy gridCellInfoByUsingTwoDimensionalMovementToInsertIcon:movementCopy atGridCellIndex:index gridCellInfo:v33 gridCellInfoOptions:options mutationOptions:mutationOptionsCopy];

    if (v19)
    {
      goto LABEL_22;
    }
  }

  v34 = 0;
LABEL_23:

  return v34;
}

- (void)_moveContainedIconUsingSimpleMovement:(id)movement toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  movementCopy = movement;
  infoCopy = info;
  if (!infoCopy)
  {
    infoCopy = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  }

  [(SBIconIndexMutableList *)self->_icons moveNode:movementCopy toIndex:[(SBIconListModel *)self _iconIndexForMovingIcon:movementCopy toGridCellIndex:index gridCellInfo:infoCopy]];
}

- (void)setIconOrderFromGridCellInfo:(id)info referenceIconOrder:(id)order
{
  v23 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  orderCopy = order;
  selfCopy = self;
  icons = [(SBIconListModel *)self icons];
  v9 = [orderCopy count];
  gridSize = [infoCopy gridSize];
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

  v12 = [infoCopy getUniqueIconIndexes:v11 inGridRange:{0, gridSize}];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = icons;
  for (i = [icons mutableCopy]; v12; --v12)
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
        v17 = [orderCopy nodeAtIndex:?];
        [v13 addObject:v17];
        [i removeObject:v17];
      }
    }
  }

  if ([i count])
  {
    [v13 addObjectsFromArray:i];
  }

  [(SBIconIndexMutableList *)selfCopy->_icons setNodes:v13];
  free(v19);
}

+ (void)applyIconLayoutFromGridCellInfo:(id)info inGridRange:(SBHIconGridRange)range iconOrder:(id)order toGridCellInfo:(id)cellInfo inGridRange:(SBHIconGridRange)gridRange iconOrder:(id)iconOrder
{
  v10 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v22 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  orderCopy = order;
  cellInfoCopy = cellInfo;
  iconOrderCopy = iconOrder;
  Area = SBHIconGridSizeGetArea(v10);
  v17 = Area;
  if (Area >= 0x40)
  {
    v18 = malloc_type_calloc(Area, 8uLL, 0x100004000313F17uLL);
    [infoCopy getIconIndexes:v18 inGridRange:{cellIndex, v10}];
  }

  else
  {
    v18 = v21;
    [infoCopy getIconIndexes:v21 inGridRange:{cellIndex, v10}];
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
      v20 = [orderCopy nodeAtIndex:?];
      *&v18[8 * v19] = [iconOrderCopy indexOfNode:v20];
    }

    ++v19;
  }

  while (v17 != v19);
LABEL_9:
  [cellInfoCopy setIconIndexes:v18 inGridRange:{gridRange.cellIndex, *&gridRange.size.columns}];
}

- (void)moveContainedIcon:(id)icon beforeIcon:(id)beforeIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  beforeIconCopy = beforeIcon;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  v12 = [v11 indexForIcon:iconCopy];
  if (v12 != [v11 indexForIcon:beforeIconCopy] - 1)
  {
    v13 = -[SBIconListModel moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:](self, "moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:", iconCopy, [v11 bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:{objc_msgSend(v11, "gridCellIndexForIcon:gridCellInfoOptions:", beforeIconCopy, options)}], options, mutationOptions);
  }
}

- (void)moveContainedIcon:(id)icon afterIcon:(id)afterIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  afterIconCopy = afterIcon;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  v12 = [v11 indexForIcon:iconCopy];
  if (v12 != [v11 indexForIcon:afterIconCopy] + 1)
  {
    v13 = [v11 gridCellInfoWithOptions:options];
    v14 = [v11 gridCellIndexForIcon:afterIconCopy gridCellInfo:v13];
    v15 = [v11 gridCellIndexForIcon:iconCopy gridCellInfo:v13];
    v16 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy afterIconAtGridCellIndex:v14 gridCellInfo:v13];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      mutationOptions = [(SBIconListModel *)self moveContainedIcon:iconCopy toGridCellIndex:((__PAIR128__(v16 gridCellInfoOptions:v15) - v16) >> 64) mutationOptions:options, mutationOptions];
    }
  }
}

- (void)moveContainedIcon:(id)icon belowIcon:(id)belowIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  belowIconCopy = belowIcon;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  [v11 indexForIcon:iconCopy];
  v12 = [v11 gridCellIndexBelowIconAtIndex:objc_msgSend(v11 options:{"indexForIcon:", belowIconCopy), options}];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self moveContainedIcon:iconCopy afterIcon:belowIconCopy gridCellInfoOptions:options mutationOptions:mutationOptions];
  }

  else
  {
    v13 = -[SBIconListModel moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:](self, "moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:", iconCopy, [v11 bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:v12], options, mutationOptions);
  }
}

- (void)moveContainedIcon:(id)icon aboveIcon:(id)aboveIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  aboveIconCopy = aboveIcon;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  [v11 indexForIcon:iconCopy];
  v12 = [v11 gridCellIndexAboveIconAtIndex:objc_msgSend(v11 options:{"indexForIcon:", aboveIconCopy), options}];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBIconListModel *)self moveContainedIcon:iconCopy beforeIcon:aboveIconCopy gridCellInfoOptions:options mutationOptions:mutationOptions];
  }

  else
  {
    v13 = -[SBIconListModel moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:](self, "moveContainedIcon:toGridCellIndex:gridCellInfoOptions:mutationOptions:", iconCopy, [v11 bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:v12], options, mutationOptions);
  }
}

- (void)moveContainedIcon:(id)icon toIndex:(unint64_t)index options:(unint64_t)options
{
  iconCopy = icon;
  v8 = [(SBIconListModel *)self indexForIcon:?];
  if (v8 != index)
  {
    [(SBIconIndexMutableList *)self->_icons removeNodeAtIndex:v8];
    v9 = [(SBIconIndexMutableList *)self->_icons count];
    icons = self->_icons;
    if (v9 <= index)
    {
      [(SBIconIndexMutableList *)icons addNode:iconCopy];
    }

    else
    {
      [(SBIconIndexMutableList *)icons insertNode:iconCopy atIndex:index];
    }

    [(SBIconListModel *)self markIconStateDirtyWithOptions:options];
    [(SBIconListModel *)self _notifyListObserversDidMoveIcon:iconCopy options:options];
  }
}

- (void)swapContainedIcon:(id)icon withContainedIcon:(id)containedIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  containedIconCopy = containedIcon;
  v11 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  v12 = v11;
  if (v11 != self)
  {
    [(SBIconListModel *)v11 swapContainedIcon:iconCopy withContainedIcon:containedIconCopy gridCellInfoOptions:options mutationOptions:mutationOptions];
    goto LABEL_25;
  }

  mutationOptionsCopy = mutationOptions;
  v13 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v14 = [(SBIconListModel *)self gridCellIndexForIcon:iconCopy gridCellInfo:v13];
  v15 = [(SBIconListModel *)self gridCellIndexForIcon:containedIconCopy gridCellInfo:v13];
  [(SBIconListModel *)self coordinateForGridCellIndex:v14 gridCellInfo:v13];
  v35 = v16;
  [(SBIconListModel *)self coordinateForGridCellIndex:v15 gridCellInfo:v13];
  v36 = v17;
  gridSizeClass = [iconCopy gridSizeClass];
  gridSizeClass2 = [containedIconCopy gridSizeClass];
  v37 = gridSizeClass;
  v20 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
  v21 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass2 gridCellInfoOptions:options];
  if (v14 < v15)
  {
    v22 = [(SBIconListModel *)self moveContainedIcon:containedIconCopy toGridCellIndex:v14 gridCellInfoOptions:options mutationOptions:mutationOptionsCopy];
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

    selfCopy2 = self;
    v27 = iconCopy;
    optionsCopy2 = options;
    v29 = mutationOptionsCopy;
LABEL_23:
    v33 = [(SBIconListModel *)selfCopy2 moveContainedIcon:v27 toGridCellIndex:v25 gridCellInfoOptions:optionsCopy2 mutationOptions:v29];
    goto LABEL_24;
  }

  if (v14 > v15)
  {
    v30 = [(SBIconListModel *)self moveContainedIcon:iconCopy toGridCellIndex:v15 gridCellInfoOptions:options mutationOptions:mutationOptionsCopy];
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

    selfCopy2 = self;
    v27 = containedIconCopy;
    optionsCopy2 = options;
    v29 = mutationOptionsCopy;
    goto LABEL_23;
  }

LABEL_24:

LABEL_25:
}

- (void)performChangesByPreservingOrderOfDefaultSizedIcons:(id)icons
{
  iconsCopy = icons;
  icons = [(SBIconListModel *)self icons];
  iconsCopy[2](iconsCopy);
  icons2 = [(SBIconListModel *)self icons];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __70__SBIconListModel_performChangesByPreservingOrderOfDefaultSizedIcons___block_invoke;
  v30[3] = &unk_1E8089C20;
  v30[4] = self;
  v7 = [icons bs_filter:v30];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70__SBIconListModel_performChangesByPreservingOrderOfDefaultSizedIcons___block_invoke_2;
  v29[3] = &unk_1E8089C20;
  v29[4] = self;
  v27 = [icons2 bs_filter:v29];
  v28 = v7;
  if ([v7 isEqualToArray:?])
  {
    goto LABEL_24;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  numberOfIcons = [(SBIconListModel *)self numberOfIcons];
  if (!numberOfIcons)
  {
    goto LABEL_23;
  }

  v10 = numberOfIcons;
  v24 = icons2;
  v25 = icons;
  v26 = iconsCopy;
  v11 = 0;
  for (i = 0; i != v10; ++i)
  {
    v13 = [(SBIconListModel *)self iconAtIndex:i];
    gridSizeClass = [v13 gridSizeClass];
    if (!gridSizeClass)
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

      gridSizeClass2 = v19;
      [(SBIconIndexMutableList *)self->_icons replaceNodeAtIndex:i withNode:v19];
      [v8 addObject:gridSizeClass2];
      ++v11;
LABEL_14:

      goto LABEL_15;
    }

    v15 = gridSizeClass;
    gridSizeClass2 = [v13 gridSizeClass];
    if (![gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"])
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
  icons = v25;
  iconsCopy = v26;
  icons2 = v24;
  do
  {
    v21 = [(SBIconListModel *)self iconAtIndex:v20];
    if ([v8 containsObject:v21])
    {
      referencedIcon = [v21 referencedIcon];
      icons = self->_icons;
      if (referencedIcon)
      {
        [(SBIconIndexMutableList *)icons replaceNodeAtIndex:v20 withNode:referencedIcon];
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

- (void)performChangesByPreservingPositionsOfIconsLargerThanSizeClass:(id)class block:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  classCopy = class;
  blockCopy = block;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (!classCopy || [classCopy isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    iconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
    v10 = [iconGridSizeClassSizes gridSizeAreaForGridSizeClass:@"SBHIconGridSizeClassDefault"];
    icons = self->_icons;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __87__SBIconListModel_performChangesByPreservingPositionsOfIconsLargerThanSizeClass_block___block_invoke;
    v29[3] = &unk_1E808DD48;
    v30 = iconGridSizeClassSizes;
    v32 = v10;
    v31 = dictionary;
    v12 = iconGridSizeClassSizes;
    [(SBIconIndexMutableList *)icons enumerateNodesUsingBlock:v29];
  }

  v24 = classCopy;
  blockCopy[2](blockCopy);
  v13 = self->_icons;
  allValues = [dictionary allValues];
  [(SBIconIndexMutableList *)v13 removeNodesInArray:allValues];

  allKeys = [dictionary allKeys];
  v16 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
        v23 = [dictionary objectForKey:v22];
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

- (id)largestClusteringSizeClassWithOptions:(unint64_t)options
{
  v5 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:?];
  v6 = [(SBIconListModel *)self gridSizeWithOptions:options];
  allowedGridSizeClasses = [(SBIconListModel *)self allowedGridSizeClasses];
  if (*&v6 < 0xFFFF0000)
  {
    [v5 largestGridSizeClassWhichTilesInGridSize:*&v6 allowedGridSizeClasses:allowedGridSizeClasses];
  }

  else
  {
    [v5 shortestGridSizeClassWithWidth:v6.columns allowedGridSizeClasses:allowedGridSizeClasses];
  }
  v8 = ;

  return v8;
}

- (void)performChangesByClusteringForSizeClass:(id)class behavior:(unint64_t)behavior withGridCellInfoOptions:(unint64_t)options block:(id)block
{
  classCopy = class;
  blockCopy = block;
  v11 = [(SBIconListModel *)self gridSizeForGridSizeClass:classCopy gridCellInfoOptions:options];
  v12 = [(SBIconListModel *)self largestClusteringSizeClassWithOptions:options];
  v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:v12 gridCellInfoOptions:options];
  if (v11.columns <= v13.columns && HIWORD(*&v11) <= HIWORD(*&v13))
  {
    v15 = classCopy;
  }

  else
  {
    v14 = v12;

    v15 = v14;
  }

  v18 = v15;
  v16 = [(SBIconListModel *)self _clusterIconsForSizeClass:v15 behavior:behavior gridCellInfoOptions:options];
  blockCopy[2](blockCopy);

  [(SBIconListModel *)self _unclusterIcons:v16 ofSizeClass:v18 gridCellInfoOptions:options];
}

- (id)_clusterIconsForSizeClass:(id)class behavior:(unint64_t)behavior gridCellInfoOptions:(unint64_t)options
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__SBIconListModel__clusterIconsForSizeClass_behavior_gridCellInfoOptions___block_invoke;
  v7[3] = &unk_1E808DD70;
  v7[4] = self;
  v7[5] = options;
  v5 = [(SBIconListModel *)self _clusterIconsForSizeClass:class behavior:behavior gridCellInfoProvider:v7];

  return v5;
}

- (id)_clusterIconsForSizeClass:(id)class behavior:(unint64_t)behavior gridCellInfoProvider:(id)provider
{
  v78 = *MEMORY[0x1E69E9840];
  classCopy = class;
  providerCopy = provider;
  if (!classCopy || ([classCopy isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) != 0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  array = [MEMORY[0x1E695DF70] array];
  v13 = providerCopy[2](providerCopy);
  if ([v13 isLayoutOutOfBounds])
  {
    v14 = SBLogIcon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBIconListModel _clusterIconsForSizeClass:v14 behavior:? gridCellInfoProvider:?];
    }
  }

  v15 = [(SBIconListModel *)self gridSizeForGridSizeClass:classCopy gridCellInfo:v13];
  v66 = v15;
  Area = SBHIconGridSizeGetArea(*&v15);
  if (Area != 1)
  {
    v17 = Area;
    v59 = array;
    v60 = providerCopy;
    v61 = classCopy;
    v18 = HIWORD(*&v15);
    gridSize = [v13 gridSize];
    if (HIWORD(*&v15) > HIWORD(gridSize))
    {
LABEL_11:
      array = v59;
      v11 = v59;
      providerCopy = v60;
      classCopy = v61;
      goto LABEL_12;
    }

    v21 = 0;
    v67 = v17;
    v22 = HIWORD(gridSize) / v15.rows;
    v23 = gridSize;
    v24 = v18 * gridSize;
    v54 = HIWORD(*&v15);
    v25 = v18 - 1;
    columns = v15.columns;
    v57 = v25;
    if (v25 <= 1)
    {
      v25 = 1;
    }

    v56 = v25;
    v62 = gridSize / v15.columns;
    behaviorCopy = behavior;
    v64 = v15.columns;
    v65 = gridSize;
    v51 = v24;
    v52 = HIWORD(gridSize) / v15.rows;
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

            gridSizeClass = [*(*(&v73 + 1) + 8 * i) gridSizeClass];
            v37 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfo:v13];

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

      v39 = behaviorCopy == 1 || v71 > 1;
      if (v33 != v67)
      {
        v39 = 0;
      }

      v40 = v33 <= v67 && behaviorCopy == 2;
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

      if (behaviorCopy != 1 || !v41 || v71 != 1)
      {
        break;
      }

      firstObject = [v30 firstObject];
      v47 = objc_opt_self();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![firstObject isClusteredIconPlaceholder])
      {

        goto LABEL_67;
      }

      gridSizeClass2 = [firstObject gridSizeClass];
      v49 = gridSizeClass2;
      if (gridSizeClass2 != v61)
      {
        gridSizeClass3 = [firstObject gridSizeClass];
        v72 = [gridSizeClass3 isEqualToString:v61];

        columns = v64;
        v23 = v65;
        if (v72)
        {
          goto LABEL_72;
        }

LABEL_67:

LABEL_68:
        firstObject = [SBPlaceholderIcon clusteredIconPlaceholderForIcons:v30];
        [firstObject setGridSizeClass:v61];
        [v59 addObject:firstObject];
        -[SBIconIndexMutableList insertNode:atIndex:](self->_icons, "insertNode:atIndex:", firstObject, [v13 iconIndexForGridCellIndex:v70 + v68]);
        [(SBIconIndexMutableList *)self->_icons removeNodesInArray:v30];
        if ([(SBIconListModel *)self isInsertionFixedForIconGridSizeClass:v61 options:0])
        {
          [(SBIconListModel *)self setFixedLocation:v70 + v68 forIcon:firstObject options:0x800000];
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

- (BOOL)_canClusterIconsUsingSizeClass:(id)class
{
  v4 = [(SBIconListModel *)self gridSizeForGridSizeClass:class];
  gridSize = [(SBIconListModel *)self gridSize];
  return (HIWORD(*&gridSize) == 0xFFFF || !(HIWORD(*&gridSize) % HIWORD(*&v4))) && (gridSize.columns == 0xFFFF || !(gridSize.columns % v4.columns));
}

- (void)_unclusterIcons:(id)icons ofSizeClass:(id)class gridCellInfoOptions:(unint64_t)options
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SBIconListModel__unclusterIcons_ofSizeClass_gridCellInfoOptions___block_invoke;
  v5[3] = &unk_1E808DD98;
  v5[4] = self;
  [(SBIconListModel *)self _unclusterIcons:icons ofSizeClass:class baseGridCellInfoOptions:options gridCellInfoProvider:v5];
}

- (void)_unclusterIcons:(id)icons ofSizeClass:(id)class baseGridCellInfoOptions:(unint64_t)options gridCellInfoProvider:(id)provider
{
  v51 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  providerCopy = provider;
  [(SBIconListModel *)self iconLayoutBehavior];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = iconsCopy;
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
        v12 = providerCopy[2](providerCopy, options);
        gridSizeClass = [v10 gridSizeClass];
        v14 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];

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
        v17 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
        referencedIcons = [v10 referencedIcons];
        v41 = v41 & 0xFFFFFFFF00000000 | *&v14;
        v38 = v17;
        v19 = [objc_opt_class() iconGridCellInfoForIcons:referencedIcons gridSize:options gridSizeClassSizes:? iconLayoutBehavior:? referenceIconOrder:? fixedIconLocations:? options:?];
        if ([referencedIcons count])
        {
          v20 = 0;
          while (1)
          {
            v21 = providerCopy[2](providerCopy, options | 0xC);
            v22 = [referencedIcons objectAtIndex:v20];
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

            if (++v20 >= [referencedIcons count])
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

- (int64_t)_moveIcon:(id)icon byClusteringForSizeClass:(id)class toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  classCopy = class;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__SBIconListModel__moveIcon_byClusteringForSizeClass_toGridCellIndex_gridCellInfoOptions___block_invoke;
  v15[3] = &unk_1E808DDE8;
  indexCopy = index;
  v15[4] = self;
  v12 = iconCopy;
  optionsCopy = options;
  v16 = v12;
  v17 = &v20;
  [(SBIconListModel *)self performChangesByClusteringForSizeClass:classCopy behavior:0 withGridCellInfoOptions:options block:v15];
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

- (unint64_t)_iconIndexForMovingIcon:(id)icon toGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  iconCopy = icon;
  infoCopy = info;
  v10 = [infoCopy iconIndexForGridCellIndex:index];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(SBIconIndexMutableList *)self->_icons count]- 1;
    goto LABEL_36;
  }

  if (!index)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v11 = v10;
  v37 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:v10];
  gridSizeClass = [v37 gridSizeClass];
  v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfo:infoCopy];

  gridSizeClass2 = [iconCopy gridSizeClass];
  v15 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass2 gridCellInfo:infoCopy];

  gridSize = [infoCopy gridSize];
  v17 = gridSize;
  v18 = HIWORD(gridSize);
  v38 = 0u;
  v39 = 0u;
  SBHIconGridRangeGetBounds(index, *&v15, gridSize, &v38);
  if (*(&v39 + 1) == v18 && *(&v38 + 1) == v17)
  {
    v11 = [(SBIconIndexMutableList *)self->_icons count]- 1;
  }

  else
  {
    v19 = HIWORD(*&v13);
    if (v19 > HIWORD(*&v15))
    {
      [infoCopy coordinateForGridCellIndex:{objc_msgSend(infoCopy, "gridCellIndexForIconIndex:", v11)}];
      v21 = v20;
      [infoCopy coordinateForGridCellIndex:{objc_msgSend(infoCopy, "gridCellIndexForIconIndex:", -[SBIconListModel indexForIcon:](self, "indexForIcon:", iconCopy))}];
      v23 = v22;
      [infoCopy coordinateForGridCellIndex:index];
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
  if (v25 == iconCopy && v11 + 1 < [(SBIconIndexMutableList *)self->_icons count])
  {
    v32 = [infoCopy gridCellIndexForIconIndex:v11];
    v33 = index - v32;
    if (index > v32)
    {
      v34 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:v11 + 1];
      gridSizeClass3 = [v34 gridSizeClass];
      if (v33 >= SBHIconGridSizeGetArea([(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass3 gridCellInfo:infoCopy]))
      {
        ++v11;
      }
    }
  }

LABEL_36:
  return v11;
}

+ (id)movedIconsWithOriginalOrder:(id)order newOrder:(id)newOrder
{
  orderCopy = order;
  newOrderCopy = newOrder;
  array = [MEMORY[0x1E695DF70] array];
  if ([newOrderCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [orderCopy objectAtIndex:v8];
      v10 = [newOrderCopy objectAtIndex:v8];
      if (v9 != v10)
      {
        [array addObject:v10];
      }

      ++v8;
    }

    while (v8 < [newOrderCopy count]);
  }

  return array;
}

- (id)movedIconsFromGridCellInfo:(id)info withIconOrder:(id)order toGridCellInfo:(id)cellInfo
{
  infoCopy = info;
  orderCopy = order;
  cellInfoCopy = cellInfo;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  usedGridRange = [cellInfoCopy usedGridRange];
  v15 = v14;
  gridSize = [infoCopy gridSize];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__SBIconListModel_movedIconsFromGridCellInfo_withIconOrder_toGridCellInfo___block_invoke;
  v25[3] = &unk_1E808DE10;
  v26 = cellInfoCopy;
  v27 = v12;
  selfCopy = self;
  v29 = orderCopy;
  v30 = infoCopy;
  v17 = v11;
  v31 = v17;
  v18 = infoCopy;
  v19 = orderCopy;
  v20 = v12;
  v21 = cellInfoCopy;
  SBHIconGridRangeEnumerateCellIndexes(usedGridRange, v15, gridSize, v25);
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

- (SBIconListModelRotationReorderingInfo)_rotationReorderingInfoWithClusterSizeClass:(SEL)class gridCellInfoOptions:(id)options
{
  v45 = retstr;
  v97 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  selfCopy = self;
  icons = [(SBIconListModel *)self icons];
  if (optionsCopy)
  {
    if (![optionsCopy isEqualToString:?])
    {
      v6 = [(SBIconListModel *)self gridSizeWithOptions:a5];
      columns = v6.columns;
      v8 = v6;
      IsLandscape = SBHIconGridSizeIsLandscape(*&v6);
      SmallestDimension = SBHIconGridSizeGetSmallestDimension(v8);
      Area = SBHIconGridSizeGetArea([(SBIconListModel *)selfCopy gridSizeForGridSizeClass:optionsCopy gridCellInfoOptions:a5]);
      v12 = SBHIconGridSizeGetArea(v8);
      if (SBHIconGridSizeGetArea(SmallestDimension | (SmallestDimension << 16)) * 1.5 == v12)
      {
        v54 = Area;
        v58 = v8;
        v14 = [(SBIconListModel *)selfCopy gridCellInfoWithOptions:a5];
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
        v18 = icons;
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
              gridSizeClass = [v28 gridSizeClass];
              v30 = gridSizeClass;
              if (gridSizeClass && ([gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
              {
                v31 = SBHIconGridSizeGetArea([(SBIconListModel *)selfCopy gridSizeForGridSizeClass:v30 gridCellInfoOptions:a5]);
                v32 = v31 > v54;
                if (v31 > v54)
                {
                  ++v26;
                }

                v33 = [v57 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](selfCopy, "indexForIcon:", v28)}];
                v34 = [(SBIconListModel *)selfCopy gridSizeForGridSizeClass:v30 gridCellInfoOptions:a5];
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

- (id)_reorderedIconsWithClusterSizeClass:(id)class forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)info gridCellInfoOptions:(unint64_t)options
{
  v74 = *MEMORY[0x1E69E9840];
  classCopy = class;
  icons = [(SBIconListModel *)self icons];
  if (classCopy && ![classCopy isEqualToString:@"SBHIconGridSizeClassDefault"] && (v10 = -[SBIconListModel gridSizeWithOptions:](self, "gridSizeWithOptions:", options), v11 = v10, IsLandscape = SBHIconGridSizeIsLandscape(*&v10), v13 = -[SBIconListModel iconLayoutBehavior](self, "iconLayoutBehavior"), info->var0))
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
    v54 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    v18 = v14;
    v53 = [[SBIconListGridCellInfo alloc] initWithGridSize:v14];
    v52 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
    v49 = [(SBIconListModel *)self rotatedGridCellInfoOptions:options];
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

    var1 = info->var1;
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
      v46 = icons;
      v33 = icons;
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
      v46 = icons;
      v33 = icons;
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
    selfCopy = self;
    v58 = v39;
    v40 = v39;
    v41 = v30;
    v42 = v40;
    v43 = v41;
    SBHIconGridRangeEnumerateCellIndexes(0, v18, v18, v55);
    free(v50);
    array = [v42 array];
  }

  else
  {
    array = icons;
  }

  return array;
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

- (void)_reorderIconsWithClusterSizeClass:(id)class forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)info gridCellInfoOptions:(unint64_t)options
{
  v6 = *&info->var2;
  v10[0] = *&info->var0;
  v10[1] = v6;
  v7 = [(SBIconListModel *)self _reorderedIconsWithClusterSizeClass:class forRotationWithReorderingInfo:v10 gridCellInfoOptions:options];
  icons = [(SBIconListModel *)self icons];
  if (([v7 isEqualToArray:icons] & 1) == 0)
  {
    v9 = [(SBIconListModel *)self setIcons:v7 gridCellInfoOptions:0 mutationOptions:0x100000];
  }
}

- (void)_reorderIconsAfterUnclusteringWithClusterSizeClass:(id)class forRotationWithReorderingInfo:(SBIconListModelRotationReorderingInfo *)info gridCellInfoOptions:(unint64_t)options
{
  classCopy = class;
  v9 = classCopy;
  if (!info->var0 && info->var2 == 1)
  {
    v10 = classCopy;
    classCopy = [(SBIconListModel *)self _moveAllNonDefaultSizedIconsToBeginning];
    v9 = v10;
    if (!info->var3)
    {
      classCopy = [(SBIconListModel *)self _moveDefaultSizedIconsOfCountIntoContiguousLeadingNonDefaultSizedIcons:[(SBIconListModel *)self gridSizeForGridSizeClass:v10 gridCellInfoOptions:options]];
      v9 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](classCopy, v9);
}

- (void)_moveAllNonDefaultSizedIconsToBeginning
{
  icons = [(SBIconListModel *)self icons];
  v4 = [icons count];
  v5 = [icons indexOfObjectPassingTest:&__block_literal_global_100];
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
      icons2 = [(SBIconListModel *)self icons];

      v7 = [icons2 indexOfObjectPassingTest:&__block_literal_global_100];
      v6 = icons2;
      icons = icons2;
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = icons;
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

- (void)_moveDefaultSizedIconsOfCountIntoContiguousLeadingNonDefaultSizedIcons:(unint64_t)icons
{
  icons = [(SBIconListModel *)self icons];
  v5 = [icons indexOfObjectPassingTest:&__block_literal_global_104];
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
      v10 = [icons objectAtIndex:--v9];
      gridSizeClass = [v10 gridSizeClass];
      v8 = SBHIconGridSizeGetArea([(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass]) + v8;

      if (v8 >= icons)
      {
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [icons count];
          if (v12 - v7 >= icons)
          {
            iconsCopy = icons;
          }

          else
          {
            iconsCopy = v12 - v7;
          }

          v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, iconsCopy}];
          v15 = [icons objectsAtIndexes:v14];

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

- (id)repairModelByEliminatingGapsInIcons:(id)icons avoidingIcons:(id)avoidingIcons gridCellInfoOptions:(unint64_t)options
{
  iconsCopy = icons;
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:options])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
    v8 = [SBIconListModelRepairUtilities repairModelByEliminatingGapsInIcons:iconsCopy avoidingIcons:0 gridSize:*&self->_gridSize gridSizeClassSizes:v9 iconLayoutBehavior:self->_iconLayoutBehavior fixedIconLocations:self->_fixedIconLocations];
  }

  return v8;
}

- (id)_updateModelByRepairingGapsIfNecessaryWithGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  if ((mutationOptions & 0x100000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBIconListModel *)self repairModelByEliminatingGapsInIcons:self->_icons avoidingIcons:0 gridCellInfoOptions:options];
  }

  return v5;
}

- (id)_checkAndRemoveBouncedIconsAfterChangeToIcons:(id)icons ignoringTrailingIconCheck:(BOOL)check options:(unint64_t)options
{
  v106 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  if ((options & 0x1000000) != 0)
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
  v58 = iconsCopy;
  v8 = iconsCopy;
  v9 = [v8 countByEnumeratingWithState:&v95 objects:v105 count:16];
  checkCopy = check;
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
        gridSizeClass = [v13 gridSizeClass];
        if (gridSizeClass)
        {
          gridSizeClass2 = [v13 gridSizeClass];
          v16 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

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

  if (((options >> 3) & 1) == 0)
  {
    reverseObjectEnumerator = 0;
    if ((options & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    reverseObjectEnumerator2 = 0;
    goto LABEL_19;
  }

  reverseObjectEnumerator = [v8 reverseObjectEnumerator];
  if ((options & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v18 = [(SBIconListModel *)self directlyContainedIconsPassingTest:&__block_literal_global_107];
  reverseObjectEnumerator2 = [v18 reverseObjectEnumerator];

LABEL_19:
  delegate = [(SBIconListModel *)self delegate];
  if ((options & 0xC) != 0)
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
  v93 = (options & 4) >> 2;
  v91 = 0;
  v92 = &v99;
  v90 = v19;
  v94 = checkCopy;
  v60 = _Block_copy(aBlock);
  v66 = 0;
  v20 = 0;
  v21 = 0;
  if (reverseObjectEnumerator)
  {
    v22 = (options >> 3) & 1;
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
    if (!(((options & 0x8000000) == 0) | v66 & 1))
    {
      [(SBIconListModel *)self removeAllFixedIconLocations];
      [(SBIconListModel *)self saveOnlyRequiredIconLocationsAsFixedIfRequired];
      v29 = 0;
      v66 = 1;
      goto LABEL_57;
    }

    if (v63)
    {
      nextObject = [reverseObjectEnumerator nextObject];
      v27 = v83[5];
      v83[5] = nextObject;

      v28 = v83[5];
      if ((options & 0x40) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v28 = 0;
      if ((options & 0x40) == 0)
      {
        goto LABEL_36;
      }
    }

    if (!v28 && reverseObjectEnumerator2)
    {
      nextObject2 = [reverseObjectEnumerator2 nextObject];
      v31 = v83[5];
      v83[5] = nextObject2;

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
      rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
      if (rotatedLayoutClusterGridSizeClass)
      {
        rotatedLayoutClusterGridSizeClass2 = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
        if ([rotatedLayoutClusterGridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"] || (objc_msgSend(v83[5], "gridSizeClass"), (v36 = objc_claimAutoreleasedReturnValue()) == 0))
        {
        }

        else
        {
          gridSizeClass3 = [v83[5] gridSizeClass];
          v38 = [gridSizeClass3 isEqualToString:@"SBHIconGridSizeClassDefault"];

          if (v38)
          {
            goto LABEL_47;
          }

          rotatedLayoutClusterGridSizeClass = v83[5];
          v83[5] = 0;
        }
      }
    }

LABEL_47:
    if (v83[5])
    {
      if (v61)
      {
        v39 = [delegate iconListModel:self shouldBounceIcon:? afterInsertingIcons:?];
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

      [(SBIconListModel *)self willRemoveIcon:v83[5] options:options];
      [v25 insertObject:v83[5] atIndex:0];
      [(SBIconIndexMutableList *)self->_icons removeNodeIdenticalTo:v83[5]];
      v29 = 0;
    }

    else
    {
      v29 = 1;
      if (options & 4) == 0 && (v100[3])
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

          [(SBIconListModel *)self didRemoveIcon:*(*(&v72 + 1) + 8 * j) options:options];
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
  iconsCopy = v58;
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

- (id)changeGridSize:(SBHIconGridSize)size options:(unint64_t)options
{
  gridSize = [(SBIconListModel *)self gridSize];
  v8 = gridSize;
  sizeCopy = size;
  if (SBHIconGridSizeEqualToIconGridSize(*&gridSize, *&size))
  {
    v10 = 0;
  }

  else
  {
    _rotatedIconListModelIfApplicable = [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
    v12 = [(SBIconListModel *)self coordinatesOfAllIconsWithOptions:0];
    v13 = [_rotatedIconListModelIfApplicable coordinatesOfAllIconsWithOptions:0];
    [(SBIconListModel *)self setGridSize:sizeCopy];
    v10 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:0 ignoringTrailingIconCheck:0 options:options];
    [(SBIconListModel *)self finishChangingFromGridSize:v8 withOldIconCoordinates:v12 bouncedIcons:v10 options:options];
    [_rotatedIconListModelIfApplicable finishChangingFromGridSize:v8 withOldIconCoordinates:v13 bouncedIcons:v10 options:options];
  }

  return v10;
}

- (id)coordinatesOfAllIconsWithOptions:(unint64_t)options
{
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__SBIconListModel_coordinatesOfAllIconsWithOptions___block_invoke;
  v12[3] = &unk_1E808DBB8;
  v12[4] = self;
  v13 = v6;
  v7 = strongToStrongObjectsMapTable;
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

- (void)finishChangingFromGridSize:(SBHIconGridSize)size withOldIconCoordinates:(id)coordinates bouncedIcons:(id)icons options:(unint64_t)options
{
  v57 = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  iconsCopy = icons;
  v31 = coordinatesCopy;
  if (coordinatesCopy)
  {
    v29 = iconsCopy;
    gridSize = [(SBIconListModel *)self gridSize];
    hasFixedIconLocations = [(SBIconListModel *)self hasFixedIconLocations];
    optionsCopy = options | 0x200;
    if (!hasFixedIconLocations)
    {
      optionsCopy = options;
    }

    v32 = optionsCopy;
    [(SBIconListModel *)self removeAllFixedIconLocations];
    icons = [(SBIconListModel *)self icons];
    v15 = HIWORD(*&gridSize);
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
    v49 = gridSize;
    v36 = coordinatesCopy;
    v44 = v36;
    selfCopy = self;
    v46 = &v50;
    optionsCopy2 = options;
    v48 = v32;
    [icons enumerateObjectsUsingBlock:v42];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v51[5];
    v16 = [obj countByEnumeratingWithState:&v38 objects:v56 count:16];
    if (v16)
    {
      columns = gridSize.columns;
      v34 = gridSize;
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
          gridSizeClass = [v19 gridSizeClass];
          v21 = [v36 objectForKey:v19];
          sbh_SBIconCoordinateValue = [v21 sbh_SBIconCoordinateValue];
          v24 = v23;

          if (sbh_SBIconCoordinateValue >= columns)
          {
            v25 = columns;
          }

          else
          {
            v25 = sbh_SBIconCoordinateValue;
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
          v27 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:gridSizeClass withoutFixedIconsNearGridRange:SBIconCoordinateGetGridCellIndex(v25 gridCellInfoOptions:v26, v6), 65537, 0];
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
    iconsCopy = v29;
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
        gridSizeClass = [v10 gridSizeClass];
        v6 += [(SBIconListModel *)self gridSizeAreaForGridSizeClass:gridSizeClass];

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
    numberOfIcons = [(SBIconListModel *)self numberOfIcons];
    if (numberOfIcons >= [(SBIconListModel *)self maxNumberOfIcons])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return numberOfIcons;
    }
  }
}

- (unint64_t)firstFreeGridCellIndexWithOptions:(unint64_t)options
{
  v3 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  firstEmptyGridCellIndex = [v3 firstEmptyGridCellIndex];

  return firstEmptyGridCellIndex;
}

- (unint64_t)firstFreeGridCellIndexOfRangeOfSizeClass:(id)class ignoringValidGridLayoutCheck:(BOOL)check gridCellInfoOptions:(unint64_t)options
{
  v16[1] = *MEMORY[0x1E69E9840];
  classCopy = class;
  v9 = classCopy;
  if (classCopy && ![classCopy isEqualToString:@"SBHIconGridSizeClassDefault"] || -[SBIconListModel hasNonDefaultSizeClassIcons](self, "hasNonDefaultSizeClassIcons") || -[SBIconListModel hasFixedIconLocationsWithGridCellInfoOptions:](self, "hasFixedIconLocationsWithGridCellInfoOptions:", options))
  {
    v10 = [(SBIconListModel *)self firstFreeGridCellIndexOfRangeOfSize:[(SBIconListModel *)self gridSizeForGridSizeClass:v9 gridCellInfoOptions:options] gridCellInfoOptions:options];
    numberOfIcons = v10;
    if (v9 && v10 != 0x7FFFFFFFFFFFFFFFLL && ([v9 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0 && !check)
    {
      v12 = objc_alloc_init(SBIcon);
      [(SBIcon *)v12 setGridSizeClass:v9];
      v16[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v14 = [(SBIconListModel *)self iconGridCellInfoBySimulatingInsertionOfIcons:v13 ignoringPlaceholders:0 gridCellInfoOptions:options iconOrder:0];

      if (![(SBIconListModel *)self isGridLayoutValid:v14])
      {
        numberOfIcons = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else if ([(SBIconListModel *)self isFull])
  {
    numberOfIcons = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    numberOfIcons = [(SBIconListModel *)self numberOfIcons];
  }

  return numberOfIcons;
}

- (unint64_t)firstFreeGridCellIndexOfRangeOfSize:(SBHIconGridSize)size gridCellInfoOptions:(unint64_t)options
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v7 = [(SBIconListModel *)self firstFreeGridCellIndexOfRangeOfSize:*&size gridCellInfo:v6];

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

- (void)setAllowsRotatedLayout:(BOOL)layout
{
  layoutCopy = layout;
  if ([objc_opt_class() supportsRotatedLayout] && self->_allowsRotatedLayout != layoutCopy)
  {
    if (!layoutCopy)
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
    }

    self->_allowsRotatedLayout = layoutCopy;
  }
}

- (void)setAllowsIndependentRotatedLayout:(BOOL)layout
{
  if (self->_allowsIndependentRotatedLayout != layout)
  {
    self->_allowsIndependentRotatedLayout = layout;
    if (!layout)
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
    }
  }
}

- (void)_invalidateLayoutWithGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  mutationOptionsCopy = mutationOptions;
  allowsRotatedLayout = [(SBIconListModel *)self allowsRotatedLayout];
  if ((mutationOptionsCopy & 0x40000000) == 0 && allowsRotatedLayout)
  {
    rotatedIcons = self->_rotatedIcons;
    v9 = [(SBIconListModel *)self wantsRotatedGridForOptions:options];
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
      v11[5] = options;
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

- (id)_rotatedIconsFromList:(id)list gridCellInfoOptions:(unint64_t)options
{
  listCopy = list;
  rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  v8 = rotatedLayoutClusterGridSizeClass;
  if (rotatedLayoutClusterGridSizeClass && ![rotatedLayoutClusterGridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    v10 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
    v11 = [(SBIconListModel *)self gridSizeWithOptions:options];
    v24 = SBHIconGridSizeRotate(*&v11);
    v12 = [(SBIconListModel *)self rotatedGridCellInfoOptions:options];
    v13 = [SBRotatedIconListModel alloc];
    WeakRetained = objc_loadWeakRetained(&self->_folder);
    v15 = [(SBIconListModel *)v13 initWithFolder:WeakRetained gridSize:*&v11 gridSizeClassSizes:v10];

    [(SBIconListModel *)self _configureRotatedIconsListModel:v15];
    v16 = [(SBIconListModel *)v15 setIconsFromIconListModel:listCopy];
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
    selfCopy = self;
    optionsCopy = options;
    v30 = v35;
    v31 = v36;
    v32 = v12;
    v33 = v11;
    v34 = v24;
    [(SBIconListModel *)v17 performChangesByPreservingOrderOfDefaultSizedIcons:v25];
    icons = [listCopy icons];
    icons2 = [(SBIconListModel *)v17 icons];
    if (![(SBIconListModel *)self _validateIconsInArray:icons matchArray:icons2])
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
        [(SBIconListModel *)icons _rotatedIconsFromList:icons2 gridCellInfoOptions:v21];
      }

      v22 = icons;
      icons2 = v22;
    }
  }

  else
  {
    icons2 = [listCopy icons];
  }

  return icons2;
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

- (void)_makeRotatedIconsListModelWithIcons:(id)icons options:(unint64_t)options
{
  iconsCopy = icons;
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
    if ([iconsCopy count])
    {
      0x800000 = [(SBIconListModel *)self->_rotatedIcons setIcons:iconsCopy gridCellInfoOptions:0 mutationOptions:options | 0x800000];
    }

    [(SBIconListModel *)self->_rotatedIcons addListObserver:self];
  }
}

- (void)_configureRotatedIconsListModel:(id)model
{
  modelCopy = model;
  allowedGridSizeClasses = [(SBIconListModel *)self allowedGridSizeClasses];
  [modelCopy setAllowedGridSizeClasses:allowedGridSizeClasses];
  gridSizeClassDomain = [(SBIconListModel *)self gridSizeClassDomain];
  [modelCopy setGridSizeClassDomain:gridSizeClassDomain];
  rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  [modelCopy setRotatedLayoutClusterGridSizeClass:rotatedLayoutClusterGridSizeClass];
  [modelCopy setFixedIconLocationBehavior:{-[SBIconListModel fixedIconLocationBehavior](self, "fixedIconLocationBehavior")}];
  [modelCopy setIconDisplacementBehavior:{-[SBIconListModel iconDisplacementBehavior](self, "iconDisplacementBehavior")}];
  [modelCopy setIconLayoutBehavior:{-[SBIconListModel iconLayoutBehavior](self, "iconLayoutBehavior")}];
  layoutExcludedIcons = [(SBIconListModel *)self layoutExcludedIcons];
  [modelCopy setLayoutExcludedIcons:layoutExcludedIcons];
  rotatedIconGridSizeClassSizes = [(SBIconListModel *)self rotatedIconGridSizeClassSizes];
  [modelCopy setRotatedIconGridSizeClassSizes:rotatedIconGridSizeClassSizes];
  SBTreeNodeSetParent(modelCopy, self);
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
  _rotatedIconListModel = [(SBIconListModel *)self _rotatedIconListModel];
  icons = [_rotatedIconListModel icons];

  return icons;
}

- (id)_rotatedIconsIfApplicable
{
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    icons = [(SBIconListModel *)self->_rotatedIcons icons];
  }

  else
  {
    icons = 0;
  }

  return icons;
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

- (void)_setRotatedIcons:(id)icons clearRotatedFixedIconLocations:(BOOL)locations
{
  locationsCopy = locations;
  iconsCopy = icons;
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    rotatedIcons = self->_rotatedIcons;
    if (rotatedIcons)
    {
      v7 = [(SBIconListModel *)rotatedIcons setIcons:iconsCopy gridCellInfoOptions:0 mutationOptions:0x100000];
      if (!locationsCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    [(SBIconListModel *)self _makeRotatedIconsListModelWithIcons:iconsCopy options:0];
    if (locationsCopy)
    {
LABEL_4:
      [(SBIconListModel *)self->_rotatedIcons removeAllFixedIconLocations];
      [(SBIconListModel *)self->_rotatedIcons saveOnlyRequiredIconLocationsAsFixedIfRequired];
    }
  }

LABEL_5:
}

- (void)_updateRotatedIconsWithOptions:(unint64_t)options usingBlock:(id)block
{
  if ((options & 0x80000000) == 0)
  {
    [(SBIconListModel *)self _updateRotatedIconsUsingBlock:block];
  }
}

- (void)_updateRotatedIconsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(SBIconListModel *)self allowsRotatedLayout]&& self->_rotatedIcons)
  {
    blockCopy[2]();
    icons = [(SBIconListModel *)self icons];
    icons2 = [(SBIconListModel *)self->_rotatedIcons icons];
    if (![(SBIconListModel *)self _validateIconsInArray:icons matchArray:icons2])
    {
      [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
    }
  }
}

- (void)_updateOtherListWithGridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions createIfNecessary:(BOOL)necessary usingBlock:(id)block
{
  necessaryCopy = necessary;
  blockCopy = block;
  v11 = blockCopy;
  if ((mutationOptions & 0x80000000) == 0)
  {
    v16 = blockCopy;
    blockCopy = [(SBIconListModel *)self allowsRotatedLayout];
    v11 = v16;
    if (blockCopy)
    {
      v12 = [(SBIconListModel *)self _otherListForGridCellInfoOptions:options createIfNecessary:necessaryCopy];
      if (v12)
      {
        v13 = (*(v16 + 2))(v16, v12, [(SBIconListModel *)self _otherGridCellInfoOptionsForGridCellInfoOptions:options]);
        if (v13 == 1)
        {
          [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:options mutationOptions:mutationOptions];
        }

        else if (!v13)
        {
          icons = [(SBIconListModel *)self icons];
          icons2 = [v12 icons];
          if (![(SBIconListModel *)self _validateIconsInArray:icons matchArray:icons2])
          {
            [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:options mutationOptions:mutationOptions];
          }
        }
      }

      v11 = v16;
    }
  }

  MEMORY[0x1EEE66BB8](blockCopy, v11);
}

- (BOOL)_validateIconsInArray:(id)array matchArray:(id)matchArray
{
  v5 = MEMORY[0x1E695DFD8];
  matchArrayCopy = matchArray;
  arrayCopy = array;
  v8 = [[v5 alloc] initWithArray:arrayCopy];

  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:matchArrayCopy];
  LOBYTE(matchArrayCopy) = [v8 isEqualToSet:v9];

  return matchArrayCopy;
}

- (id)_targetListForGridCellInfoOptions:(unint64_t)options
{
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:options])
  {
    selfCopy = [(SBIconListModel *)self _rotatedIconListModel];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_targetListForGridCellInfo:(id)info
{
  v4 = [(SBIconListModel *)self bestGridCellInfoOptionsForGridCellInfo:info];

  return [(SBIconListModel *)self _targetListForGridCellInfoOptions:v4];
}

- (id)_otherListForGridCellInfoOptions:(unint64_t)options createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:options])
  {
    selfCopy = self;
  }

  else
  {
    if (necessaryCopy)
    {
      [(SBIconListModel *)self _rotatedIconListModel];
    }

    else
    {
      [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
    }
    selfCopy = ;
  }

  return selfCopy;
}

- (unint64_t)_otherGridCellInfoOptionsForGridCellInfoOptions:(unint64_t)options
{
  v4 = [(SBIconListModel *)self wantsRotatedGridForOptions:?];
  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  return v5 | options & 0xFFFFFFFFFFFFFFFDLL;
}

- (BOOL)representsSelf:(id)self
{
  if (self == self)
  {
    return 1;
  }

  selfCopy = self;
  _rotatedIconListModelIfApplicable = [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
  v6 = _rotatedIconListModelIfApplicable == selfCopy;

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

  iconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
  gridSizesMatchDefault = [iconGridSizeClassSizes gridSizesMatchDefault];

  return gridSizesMatchDefault;
}

- (BOOL)isGridLayoutValidWithOptions:(unint64_t)options
{
  if ([(SBIconListModel *)self canUseFastGridLayoutValidity])
  {
    numberOfIcons = [(SBIconListModel *)self numberOfIcons];
    return numberOfIcons <= [(SBIconListModel *)self maxNumberOfIcons];
  }

  else
  {
    v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    v8 = [(SBIconListModel *)self isGridLayoutValid:v7];

    return v8;
  }
}

- (BOOL)isGridLayoutValid:(id)valid
{
  validCopy = valid;
  if ([validCopy isLayoutOutOfBounds])
  {
    v5 = 0;
  }

  else
  {
    delegate = [(SBIconListModel *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [delegate iconListModel:self isGridLayoutValid:validCopy];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)isGridLayoutValidWithOptions:(unint64_t)options outOfBoundsIcons:(id *)icons
{
  numberOfIcons = [(SBIconListModel *)self numberOfIcons];
  if ([(SBIconListModel *)self canUseFastGridLayoutValidity])
  {
    maxNumberOfIcons = [(SBIconListModel *)self maxNumberOfIcons];
    if (numberOfIcons <= maxNumberOfIcons)
    {
      v8 = 0;
      v9 = 1;
      if (!icons)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = [(SBIconListModel *)self iconsInRange:maxNumberOfIcons, numberOfIcons - maxNumberOfIcons];
      v9 = 0;
      if (!icons)
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
    [v10 enumerateOutOfBoundsIconIndexesInRange:0 options:numberOfIcons usingBlock:{0, v16}];
    v13 = v17;
    v8 = v12;
  }

  if (icons)
  {
LABEL_8:
    v14 = v8;
    *icons = v8;
  }

LABEL_9:

  return v9;
}

void __65__SBIconListModel_isGridLayoutValidWithOptions_outOfBoundsIcons___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) iconAtIndex:a2];
  [*(a1 + 40) addObject:v3];
}

- (void)setFixedIconLocationBehavior:(int64_t)behavior
{
  if (self->_fixedIconLocationBehavior != behavior)
  {
    self->_fixedIconLocationBehavior = behavior;
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
    if ((behavior - 2) >= 2)
    {
      if (!behavior && [(SBIconListModel *)self hasFixedIconLocations])
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

- (int64_t)effectiveIconDisplacementBehaviorWithGridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  infoCopy = info;
  iconDisplacementBehavior = [(SBIconListModel *)self iconDisplacementBehavior];
  if (iconDisplacementBehavior == 3)
  {
    if (!infoCopy)
    {
      infoCopy = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    }

    if ([(SBIconListModel *)self shouldUseTwoDimensionalMovementWithGridCellInfo:infoCopy mutationOptions:mutationOptions])
    {
      iconDisplacementBehavior = 2;
    }

    else
    {
      iconDisplacementBehavior = 1;
    }
  }

  if (((iconDisplacementBehavior == 1) & (mutationOptions >> 25)) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = iconDisplacementBehavior;
  }

  if (((mutationOptions >> 34) & (v10 == 2)) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)shouldUseTwoDimensionalMovementWithGridCellInfo:(id)info mutationOptions:(unint64_t)options
{
  infoCopy = info;
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfo:infoCopy])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__SBIconListModel_shouldUseTwoDimensionalMovementWithGridCellInfo_mutationOptions___block_invoke;
    v9[3] = &unk_1E808DFA0;
    v10 = infoCopy;
    selfCopy = self;
    v12 = &v14;
    optionsCopy = options;
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

- (id)fixedIconLocationsWithGridCellInfoOptions:(unint64_t)options
{
  v3 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  fixedIconLocations = [v3 fixedIconLocations];

  return fixedIconLocations;
}

- (void)setFixedIconLocations:(id)locations options:(unint64_t)options
{
  locationsCopy = locations;
  v7 = [(SBIconListModel *)self filteredIncomingFixedIconLocationsIfNecessary:locationsCopy];
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
    selfCopy = self;
    optionsCopy = options;
    v11 = v8;
    [locationsCopy enumerateKeysAndObjectsUsingBlock:v12];
    [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:0];
    [(SBIconListModel *)self markIconStateDirtyWithOptions:options];
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

- (void)addFixedIconLocations:(id)locations options:(unint64_t)options
{
  v6 = [(SBIconListModel *)self filteredIncomingFixedIconLocationsIfNecessary:locations];
  fixedIconLocations = self->_fixedIconLocations;
  if (fixedIconLocations)
  {
    v9 = v6;
    v8 = [(NSMutableDictionary *)fixedIconLocations mutableCopy];
    [v8 addEntriesFromDictionary:v9];

    v6 = v8;
  }

  v10 = v6;
  [(SBIconListModel *)self setFixedIconLocations:v6 options:options];
}

- (id)filteredIncomingFixedIconLocationsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  fixedIconLocationBehavior = [(SBIconListModel *)self fixedIconLocationBehavior];
  if ((fixedIconLocationBehavior - 1) >= 2)
  {
    if (fixedIconLocationBehavior == 3)
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
      v7 = necessaryCopy;
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
    v6 = necessaryCopy;
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

- (void)enumerateFixedIconsUsingBlock:(id)block
{
  blockCopy = block;
  fixedIconLocations = self->_fixedIconLocations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SBIconListModel_enumerateFixedIconsUsingBlock___block_invoke;
  v7[3] = &unk_1E808E018;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
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
  _rotatedIconListModelIfAllowed = [(SBIconListModel *)self _rotatedIconListModelIfAllowed];
  fixedIconLocations = [_rotatedIconListModelIfAllowed fixedIconLocations];

  return fixedIconLocations;
}

- (void)setRotatedFixedIconLocations:(id)locations options:(unint64_t)options
{
  locationsCopy = locations;
  if ([(SBIconListModel *)self allowsFixedIconLocations])
  {
    _rotatedIconListModelIfAllowed = [(SBIconListModel *)self _rotatedIconListModelIfAllowed];
    [_rotatedIconListModelIfAllowed setFixedIconLocations:locationsCopy options:options];
  }
}

- (void)removeFixedIconLocationForIcon:(id)icon
{
  iconCopy = icon;
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  v5 = [(NSMutableDictionary *)self->_fixedIconLocations objectForKey:uniqueIdentifier];

  if (v5)
  {
    [(NSMutableDictionary *)self->_fixedIconLocations removeObjectForKey:uniqueIdentifier];
    if ([(SBIconListModel *)self directlyContainsIcon:iconCopy])
    {
      [(SBIconListModel *)self markIconStateDirty];
      [(SBIconListModel *)self _notifyListObserversDidMoveIcon:iconCopy options:0];
    }
  }
}

- (void)removeFixedIconLocationsForIcons:(id)icons
{
  v14 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [iconsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(iconsCopy);
        }

        [(SBIconListModel *)self removeFixedIconLocationForIcon:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [iconsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeFixedIconLocationsForIconsInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  info = [(SBIconListModel *)self iconsForGridRange:range.cellIndex gridCellInfo:*&range.size.columns, info];
  [(SBIconListModel *)self removeFixedIconLocationsForIcons:info];
}

- (void)removeFixedIconLocationsForIconsInGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options
{
  v4 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  [(SBIconListModel *)self removeFixedIconLocationsForIconsInGridRange:cellIndex gridCellInfo:v4, v7];
}

- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegion:(id)region gridCellInfo:(id)info
{
  infoCopy = info;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__SBIconListModel_removeFixedIconLocationsIfPossibleForIconsInContiguousRegion_gridCellInfo___block_invoke;
  v8[3] = &unk_1E808CC88;
  v9 = infoCopy;
  selfCopy = self;
  v7 = infoCopy;
  [region enumerateGridCellIndexesUsingBlock:v8];
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

- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:(unint64_t)index sortByLayoutOrder:(BOOL)order gridCellInfoOptions:(unint64_t)options
{
  orderCopy = order;
  v8 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  [(SBIconListModel *)self removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:index sortByLayoutOrder:orderCopy gridCellInfo:v8];
}

- (void)removeFixedIconLocationsIfPossibleForIconsInContiguousRegionForGridCellIndex:(unint64_t)index sortByLayoutOrder:(BOOL)order gridCellInfo:(id)info
{
  orderCopy = order;
  infoCopy = info;
  v8 = [(SBIconListModel *)self contiguousRegionForGridCellIndex:index gridCellInfo:infoCopy];
  [(SBIconListModel *)self removeFixedIconLocationsIfPossibleForIconsInContiguousRegion:v8 gridCellInfo:infoCopy];
  if (orderCopy)
  {
    [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfo:infoCopy];
  }
}

- (void)removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:(unint64_t)options
{
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:?])
  {
    v6 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    v5 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
    [v5 removeFixedIconLocationsIfPossibleWithGridCellInfo:v6];
  }
}

- (void)removeFixedIconLocationsIfPossibleWithGridCellInfo:(id)info
{
  infoCopy = info;
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfo:infoCopy])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__SBIconListModel_removeFixedIconLocationsIfPossibleWithGridCellInfo___block_invoke;
    v5[3] = &unk_1E808CBC0;
    v5[4] = self;
    v6 = infoCopy;
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

- (void)addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__SBIconListModel_addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo___block_invoke;
  v6[3] = &unk_1E808CBC0;
  v7 = infoCopy;
  selfCopy = self;
  v5 = infoCopy;
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
  allKeys = [(NSMutableDictionary *)self->_fixedIconLocations allKeys];
  fixedIconLocations = self->_fixedIconLocations;
  self->_fixedIconLocations = 0;

  if (allKeys)
  {
    [(SBIconListModel *)self markIconStateDirty];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = allKeys;
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

- (void)swapFixedIconLocationForReplacedIcon:(id)icon withReplacementIcon:(id)replacementIcon
{
  iconCopy = icon;
  replacementIconCopy = replacementIcon;
  if ([(SBIconListModel *)self isIconFixed:iconCopy])
  {
    v7 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
    v8 = [(SBIconListModel *)self gridCellIndexForIcon:iconCopy gridCellInfo:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      [(SBIconListModel *)self removeFixedIconLocationForIcon:iconCopy];
      v10 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
      gridSizeClass = [replacementIconCopy gridSizeClass];
      v12 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:replacementIconCopy atGridCellIndex:v9 gridCellInfo:v10];
      v13 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass];
      if ([(SBIconListModel *)self isValidGridRange:v12 gridCellInfo:v13, v10])
      {
        [(SBIconListModel *)self removeFixedIconLocationsForIconsInGridRange:v12 gridCellInfo:v13, v10];
        [(SBIconListModel *)self setFixedLocation:v12 forIcon:replacementIconCopy];
      }
    }
  }
}

- (void)setFixedLocation:(unint64_t)location forIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  fixedIconLocationBehavior = [(SBIconListModel *)self fixedIconLocationBehavior];
  if (fixedIconLocationBehavior)
  {
    if (fixedIconLocationBehavior == 3)
    {
      gridSizeClass = [iconCopy gridSizeClass];
      uniqueIdentifier = gridSizeClass;
      if (!gridSizeClass || ([gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) != 0)
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

    uniqueIdentifier = [iconCopy uniqueIdentifier];
    v13 = [(NSMutableDictionary *)self->_fixedIconLocations objectForKey:uniqueIdentifier];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
    if ((BSEqualObjects() & 1) == 0)
    {
      v15 = self->_fixedIconLocations;
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableDictionary *)self->_fixedIconLocations removeObjectForKey:uniqueIdentifier];
      }

      else
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
        [(NSMutableDictionary *)v15 setObject:v16 forKey:uniqueIdentifier];
      }

      [(SBIconListModel *)self markIconStateDirtyWithOptions:options];
      [(SBIconListModel *)self _notifyListObserversDidMoveIcon:iconCopy options:options];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (unint64_t)fixedLocationForIcon:(id)icon
{
  uniqueIdentifier = [icon uniqueIdentifier];
  v5 = [(NSMutableDictionary *)self->_fixedIconLocations objectForKey:uniqueIdentifier];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (unint64_t)fixedLocationForIcon:(id)icon gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v7 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  v8 = [v7 fixedLocationForIcon:iconCopy];

  return v8;
}

- (BOOL)hasFixedIconLocationsWithGridCellInfoOptions:(unint64_t)options
{
  v3 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  hasFixedIconLocations = [v3 hasFixedIconLocations];

  return hasFixedIconLocations;
}

- (BOOL)hasFixedIconLocationsWithGridCellInfo:(id)info
{
  v3 = [(SBIconListModel *)self _targetListForGridCellInfo:info];
  hasFixedIconLocations = [v3 hasFixedIconLocations];

  return hasFixedIconLocations;
}

- (BOOL)areAllIconsFixed
{
  numberOfIcons = [(SBIconListModel *)self numberOfIcons];
  if ([(NSMutableDictionary *)self->_fixedIconLocations count]< numberOfIcons)
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

- (BOOL)isIconFixed:(id)fixed gridCellInfoOptions:(unint64_t)options
{
  fixedCopy = fixed;
  v7 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  LOBYTE(self) = [v7 isIconFixed:fixedCopy];

  return self;
}

- (BOOL)isIcon:(id)icon fixedAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v9 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
  LOBYTE(index) = [v9 isIcon:iconCopy fixedAtGridCellIndex:index];

  return index;
}

- (BOOL)hasFixedIconInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  v4 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v21 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  Area = SBHIconGridSizeGetArea(v4);
  v9 = Area;
  if (Area >= 0x40)
  {
    v10 = malloc_type_calloc(Area, 8uLL, 0x100004000313F17uLL);
    v19 = infoCopy;
    [infoCopy getIconIndexes:v10 inGridRange:{cellIndex, v4}];
    v11 = v10;
  }

  else
  {
    v10 = v20;
    [infoCopy getIconIndexes:v20 inGridRange:{cellIndex, v4}];
    v11 = 0;
    if (!v9)
    {
      v14 = 0;
      goto LABEL_10;
    }

    v19 = infoCopy;
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
  infoCopy = v19;
LABEL_10:
  free(v11);

  return v14;
}

- (BOOL)hasFixedIconInGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options
{
  v4 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  LOBYTE(v4) = [(SBIconListModel *)self hasFixedIconInGridRange:cellIndex gridCellInfo:v4, v7];

  return v4;
}

- (id)fixedIconsInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  info = [(SBIconListModel *)self iconsForGridRange:range.cellIndex gridCellInfo:*&range.size.columns, info];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SBIconListModel_fixedIconsInGridRange_gridCellInfo___block_invoke;
  v8[3] = &unk_1E8089C20;
  v8[4] = self;
  v6 = [info bs_filter:v8];

  return v6;
}

- (BOOL)hasFixedIconsInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  size = range.size;
  cellIndex = range.cellIndex;
  infoCopy = info;
  gridSize = [(SBIconListModel *)self gridSize];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SBIconListModel_hasFixedIconsInGridRange_gridCellInfo___block_invoke;
  v11[3] = &unk_1E808CDC0;
  v9 = infoCopy;
  v12 = v9;
  selfCopy = self;
  v14 = &v15;
  SBHIconGridRangeEnumerateCellIndexes(cellIndex, *&size, gridSize, v11);
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

- (BOOL)hasFixedIconsInContiguousRegion:(id)region gridCellInfo:(id)info
{
  regionCopy = region;
  infoCopy = info;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__SBIconListModel_hasFixedIconsInContiguousRegion_gridCellInfo___block_invoke;
  v10[3] = &unk_1E808CDC0;
  v8 = infoCopy;
  v11 = v8;
  selfCopy = self;
  v13 = &v14;
  [regionCopy enumerateGridCellIndexesUsingBlock:v10];
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

- (id)fixedIconsInContiguousRegion:(id)region gridCellInfo:(id)info
{
  v5 = [(SBIconListModel *)self iconsInContiguousRegion:region gridCellInfo:info];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SBIconListModel_fixedIconsInContiguousRegion_gridCellInfo___block_invoke;
  v8[3] = &unk_1E8089C20;
  v8[4] = self;
  v6 = [v5 bs_filter:v8];

  return v6;
}

- (BOOL)hasAllFixedIconsInContiguousRegion:(id)region gridCellInfo:(id)info
{
  regionCopy = region;
  infoCopy = info;
  if ([regionCopy isEmpty])
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
    v11 = infoCopy;
    selfCopy = self;
    v13 = &v14;
    [regionCopy enumerateGridCellIndexesUsingBlock:v10];
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

- (BOOL)hasContiguousRegionOfFixedIconsAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  infoCopy = info;
  v7 = [infoCopy contiguousRegionForGridCellIndex:index];
  v8 = v7;
  v9 = v7 && ([v7 isEmpty] & 1) == 0 && -[SBIconListModel hasAllFixedIconsInContiguousRegion:gridCellInfo:](self, "hasAllFixedIconsInContiguousRegion:gridCellInfo:", v8, infoCopy);

  return v9;
}

- (BOOL)areIconsInContiguousRegionOfHeterogeneousFixedness:(id)fixedness gridCellInfo:(id)info
{
  fixednessCopy = fixedness;
  infoCopy = info;
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
  v8 = infoCopy;
  v11 = v8;
  selfCopy = self;
  v13 = v20;
  v14 = v22;
  v15 = &v16;
  [fixednessCopy enumerateGridCellIndexesUsingBlock:v10];
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

- (BOOL)isContiguousRegionEligibleForBackfill:(id)backfill gridCellInfo:(id)info
{
  backfillCopy = backfill;
  infoCopy = info;
  v8 = [backfillCopy count];
  if (v8)
  {
    if ([(SBIconListModel *)self hasFixedIconsInContiguousRegion:backfillCopy gridCellInfo:infoCopy])
    {
      gridSize = [infoCopy gridSize];
      v10 = [[SBIconListGridCellInfo alloc] initWithGridSize:gridSize];
      [(SBIconListGridCellInfo *)v10 setIconIndex:0 inContiguousRegion:backfillCopy];
      if ([infoCopy coordinateForGridCellIndex:{objc_msgSend(backfillCopy, "startGridCellIndex")}] == 1 && (v12 = v11, -[SBIconListGridCellInfo numberOfUsedGridCellsInRow:](v10, "numberOfUsedGridCellsInRow:", v11 - 1)) && (v13 = v8 > gridSize, v8 -= gridSize, v13))
      {
        while (v8)
        {
          v14 = [(SBIconListGridCellInfo *)v10 numberOfUsedGridCellsInRow:v12];
          v8 -= v14;
          ++v12;
          if (v14 < gridSize)
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

- (id)adjustContiguousRegionForBackfill:(id)backfill gridCellInfo:(id)info
{
  backfillCopy = backfill;
  infoCopy = info;
  gridSize = [infoCopy gridSize];
  gridRange = [backfillCopy gridRange];
  if ((v9 & 0xFFFE0000) != 0)
  {
    v10 = gridRange;
    v11 = v9;
    v12 = [[SBIconListGridCellInfo alloc] initWithGridSize:gridSize];
    [(SBIconListGridCellInfo *)v12 setIconIndex:0 inContiguousRegion:backfillCopy];
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
    v28 = infoCopy;
    v13 = v12;
    v34 = gridSize;
    v32 = v10;
    v33 = v11;
    v29 = v13;
    v30 = &v39;
    v31 = &v35;
    SBHIconGridRangeEnumerateRows(v10, v11, gridSize, 0, v27);
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
      v16 = backfillCopy;
      v21 = v16;
      v23 = &v39;
      v24 = v25;
      v17 = v14;
      v22 = v17;
      SBHIconGridRangeEnumerateCellIndexes(v15[4], v15[5], gridSize, v20);
      v18 = [v16 contiguousRegionByRemovingGridCellIndexes:v17];

      _Block_object_dispose(v25, 8);
    }

    else
    {
      v18 = backfillCopy;
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v18 = backfillCopy;
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
    selfCopy = self;
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
  _rotatedIconListModelIfAllowed = [(SBIconListModel *)self _rotatedIconListModelIfAllowed];
  [_rotatedIconListModelIfAllowed saveOnlyRequiredIconLocationsAsFixed];
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

- (void)saveCurrentLocationAsFixedForIcon:(id)icon gridCellInfo:(id)info
{
  infoCopy = info;
  iconCopy = icon;
  v9 = [(SBIconListModel *)self _targetListForGridCellInfo:infoCopy];
  v8 = [infoCopy gridCellIndexForIconIndex:{objc_msgSend(v9, "indexForIcon:", iconCopy)}];

  [v9 setFixedLocation:v8 forIcon:iconCopy];
}

- (void)saveCurrentLocationAsFixedForIcon:(id)icon gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  [(SBIconListModel *)self saveCurrentLocationAsFixedForIcon:iconCopy gridCellInfo:v7];
}

- (BOOL)isInsertionFixedForIcon:(id)icon options:(unint64_t)options
{
  gridSizeClass = [icon gridSizeClass];
  LOBYTE(options) = [(SBIconListModel *)self isInsertionFixedForIconGridSizeClass:gridSizeClass options:options];

  return options;
}

- (BOOL)isInsertionFixedForIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  LOBYTE(mutationOptions) = [(SBIconListModel *)self isInsertionFixedForIcon:iconCopy ofGridSizeClass:gridSizeClass atGridCellIndex:index gridCellInfoOptions:0 mutationOptions:mutationOptions];

  return mutationOptions;
}

- (BOOL)isMoveFixedForIcon:(id)icon toGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  v13 = ![(SBIconListModel *)self usesTwoDimensionalMovementWithGridCellInfo:info gridCellInfoOptions:options mutationOptions:mutationOptions]&& [(SBIconListModel *)self isInsertionFixedForIcon:iconCopy atGridCellIndex:index gridCellInfoOptions:0 mutationOptions:mutationOptions];

  return v13;
}

- (BOOL)isInsertionFixedForIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfo:(id)info mutationOptions:(unint64_t)options
{
  infoCopy = info;
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  LOBYTE(options) = [(SBIconListModel *)self isInsertionFixedForIcon:iconCopy ofGridSizeClass:gridSizeClass atGridCellIndex:index gridCellInfo:infoCopy mutationOptions:options];

  return options;
}

- (BOOL)isInsertionFixedForIconGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  classCopy = class;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  }

  v12 = [(SBIconListModel *)self isInsertionFixedForIconGridSizeClass:classCopy atGridCellIndex:index gridCellInfo:v11 mutationOptions:mutationOptions];

  return v12;
}

- (BOOL)isInsertionFixedForIcon:(id)icon ofGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v18[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  classCopy = class;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else if (iconCopy)
  {
    v18[0] = iconCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14 = [(SBIconListModel *)self gridCellInfoExcludingIcons:v15 options:options];
  }

  else
  {
    v14 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  }

  v16 = [(SBIconListModel *)self isInsertionFixedForIcon:iconCopy ofGridSizeClass:classCopy atGridCellIndex:index gridCellInfo:v14 mutationOptions:mutationOptions];

  return v16;
}

- (BOOL)isInsertionFixedForIcon:(id)icon ofGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfo:(id)info mutationOptions:(unint64_t)options
{
  iconCopy = icon;
  classCopy = class;
  infoCopy = info;
  fixedIconLocationBehavior = [(SBIconListModel *)self fixedIconLocationBehavior];
  if (fixedIconLocationBehavior == 3)
  {
    if (classCopy)
    {
      LODWORD(options) = [classCopy isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (fixedIconLocationBehavior == 2)
  {
LABEL_7:
    LOBYTE(options) = 1;
    goto LABEL_11;
  }

  if (fixedIconLocationBehavior != 1)
  {
LABEL_10:
    LOBYTE(options) = 0;
    goto LABEL_11;
  }

  if ((options & 0x80) != 0)
  {
    goto LABEL_7;
  }

  if ((options & 0x200) == 0)
  {
    goto LABEL_10;
  }

  LOBYTE(options) = [(SBIconListModel *)self isInsertionRequiredToBeFixedForIcon:iconCopy ofGridSizeClass:classCopy atGridCellIndex:index gridCellInfo:infoCopy mutationOptions:options];
LABEL_11:

  return options;
}

- (BOOL)isInsertionRequiredToBeFixedForIcon:(id)icon ofGridSizeClass:(id)class atGridCellIndex:(unint64_t)index gridCellInfo:(id)info mutationOptions:(unint64_t)options
{
  iconCopy = icon;
  classCopy = class;
  infoCopy = info;
  v14 = infoCopy;
  v15 = 1;
  if (index != 0x7FFFFFFFFFFFFFFFLL && infoCopy)
  {
    if (!index)
    {
      goto LABEL_10;
    }

    v16 = [(SBIconListModel *)self indexForIcon:iconCopy];
    v17 = v16 == 0x7FFFFFFFFFFFFFFFLL || [v14 gridCellIndexForIconIndex:v16] == 0x7FFFFFFFFFFFFFFFLL;
    v18 = [(SBIconListModel *)self gridSizeAreaForGridSizeClass:classCopy];
    numberOfEmptyGridCells = [v14 numberOfEmptyGridCells];
    v20 = v18;
    if (!v17)
    {
      v20 = 0;
    }

    if (numberOfEmptyGridCells != v20)
    {
      v15 = [v14 indexOfFirstEmptyGridCellRangeOfSize:65537 inGridCellIndexRange:{0, index}] != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      v15 = 0;
    }
  }

  return v15;
}

- (void)relocateAnyAffectedFixedIconsForInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index replacingIcon:(id)replacingIcon gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  replacingIconCopy = replacingIcon;
  v13 = replacingIconCopy;
  if (replacingIconCopy)
  {
    gridSizeClass = [replacingIconCopy gridSizeClass];
    gridSizeClass2 = [iconCopy gridSizeClass];
    v16 = gridSizeClass2;
    if (gridSizeClass2 == gridSizeClass || ([gridSizeClass2 isEqualToString:gridSizeClass] & 1) != 0)
    {

      goto LABEL_10;
    }
  }

  if ([(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfoOptions:options mutationOptions:mutationOptions])
  {
    [(SBIconListModel *)self reflowIconsForwardForInsertingIcon:iconCopy atGridCellIndex:index replacingIcon:v13 gridCellInfoOptions:options];
  }

  gridSizeClass = [iconCopy gridSizeClass];
  v17 = [(SBIconListModel *)self bestGridCellIndexForInsertingIcon:iconCopy atGridCellIndex:index gridCellInfoOptions:options];
  v18 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
  if ([(SBIconListModel *)self isValidGridRange:v17 options:v18, options])
  {
    mutationOptions = [(SBIconListModel *)self relocateFixedIconsInGridRange:v17 gridCellInfoOptions:v18 mutationOptions:options, mutationOptions];
  }

LABEL_10:
}

- (id)relocateFixedIconsInGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v7 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v52 = *MEMORY[0x1E69E9840];
  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v11 = [(SBIconListModel *)self fixedIconsInGridRange:cellIndex gridCellInfo:v7, v10];
  if ([v11 count] && (-[SBIconListModel removeFixedIconLocationsForIconsInGridRange:gridCellInfo:](self, "removeFixedIconLocationsForIconsInGridRange:gridCellInfo:", cellIndex, v7, v10), !-[SBIconListModel usesTwoDimensionalMovementWithGridCellInfo:gridCellInfoOptions:mutationOptions:](self, "usesTwoDimensionalMovementWithGridCellInfo:gridCellInfoOptions:mutationOptions:", v10, options, mutationOptions)))
  {
    v40 = v7;
    rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
    v39 = v7;
    v32 = rotatedLayoutClusterGridSizeClass;
    v33 = v11;
    if (SBHIconGridSizeEqualToIconGridSize([(SBIconListModel *)self gridSizeForGridSizeClass:rotatedLayoutClusterGridSizeClass gridCellInfoOptions:options], v7) && (obj = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:rotatedLayoutClusterGridSizeClass withoutFixedIconsNearGridRange:cellIndex gridCellInfo:v7, v10], obj != 0x7FFFFFFFFFFFFFFFLL))
    {
      gridSize = [v10 gridSize];
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
        v27 = gridSize;
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
            gridSize = gridSize & 0xFFFFFFFF00000000 | v27;
            [(SBIconListModel *)self setFixedLocation:SBHIconGridRangeCellIndexForRelativeCellIndex(obj forIcon:v39, v30, gridSize), v29];
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
      v45[5] = options;
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
            gridSizeClass = [v19 gridSizeClass];
            v21 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:gridSizeClass withoutIconsNearGridRange:cellIndex gridCellInfo:v40, v10];
            if (v21 == 0x7FFFFFFFFFFFFFFFLL && (v21 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:gridSizeClass withoutFixedIconsNearGridRange:cellIndex gridCellInfo:v40, v10], v21 == 0x7FFFFFFFFFFFFFFFLL))
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
              v23 = [(SBIconListModel *)self gridCellInfoWithOptions:options];

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

- (void)reflowIconsForwardForInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index replacingIcon:(id)replacingIcon gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  replacingIconCopy = replacingIcon;
  if ([(SBIconListModel *)self maxNumberOfIcons]> index)
  {
    v11 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    v12 = [v11 contiguousRegionForGridCellIndex:index];
    if (([v12 isEmpty] & 1) == 0)
    {
      v13 = [v11 iconIndexesForContiguousRegion:v12];
      if ([v13 count] >= 2)
      {
        [(SBIconListModel *)self shiftFixedIconsInContiguousRegion:v12 forInsertingIcon:iconCopy orRemovingIcon:0 orResizingIcon:0 orMovingIcon:0 atGridCellIndex:index replacingIcon:replacingIconCopy resizingToGridSizeClass:0 gridCellInfoOptions:options mutationOptions:0];
      }
    }
  }
}

- (void)reflowIconsForResizingIcon:(id)icon atGridCellIndex:(unint64_t)index toGridSizeClass:(id)class gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  classCopy = class;
  if ([(SBIconListModel *)self maxNumberOfIcons]> index)
  {
    v11 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    v12 = [v11 contiguousRegionForGridCellIndex:index];
    if (([v12 isEmpty] & 1) == 0)
    {
      v13 = [v11 iconIndexesForContiguousRegion:v12];
      if ([v13 count] >= 2)
      {
        [(SBIconListModel *)self shiftFixedIconsInContiguousRegion:v12 forInsertingIcon:0 orRemovingIcon:0 orResizingIcon:iconCopy orMovingIcon:0 atGridCellIndex:index replacingIcon:0 resizingToGridSizeClass:classCopy gridCellInfoOptions:options mutationOptions:0];
      }
    }
  }
}

- (void)shiftFixedIconsInContiguousRegion:(id)region forInsertingIcon:(id)icon orRemovingIcon:(id)removingIcon orResizingIcon:(id)resizingIcon orMovingIcon:(id)movingIcon atGridCellIndex:(unint64_t)index replacingIcon:(id)replacingIcon resizingToGridSizeClass:(id)self0 gridCellInfoOptions:(unint64_t)self1 mutationOptions:(unint64_t)self2
{
  v164 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  iconCopy = icon;
  removingIconCopy = removingIcon;
  resizingIconCopy = resizingIcon;
  movingIconCopy = movingIcon;
  replacingIconCopy = replacingIcon;
  classCopy = class;
  indexCopy = index;
  if ([(SBIconListModel *)self maxNumberOfIcons]> index)
  {
    v24 = [(SBIconListModel *)self gridCellInfoWithOptions:?];
    gridSize = [v24 gridSize];
    gridRange = [regionCopy gridRange];
    v27 = v26;
    selfCopy = self;
    v111 = v24;
    if ([(SBIconListModel *)self hasFixedIconsInGridRange:gridRange gridCellInfo:v26, v24])
    {
      if (!removingIconCopy)
      {
        v107 = resizingIconCopy;
        goto LABEL_7;
      }

      if ([(SBIconListModel *)self isContiguousRegionEligibleForBackfill:regionCopy gridCellInfo:v24])
      {
        v107 = resizingIconCopy;
        [(SBIconListModel *)self adjustContiguousRegionForBackfill:regionCopy gridCellInfo:v24];
        v29 = v28 = movingIconCopy;

        regionCopy = v29;
        movingIconCopy = v28;
LABEL_7:
        v30 = gridSize & 0xFFFF0000;
        v31 = iconCopy;
        gridSizeClass = [v31 gridSizeClass];
        v99 = v31;
        v100 = classCopy;
        if (v31)
        {
          v105 = v31;
        }

        else
        {
          v33 = gridSizeClass;
          v105 = removingIconCopy;
          if (removingIconCopy)
          {
            gridSizeClass = v33;
          }

          else
          {
            v105 = v107;
            v34 = classCopy;
            v35 = movingIconCopy;
            v36 = v34;

            gridSizeClass = v36;
            movingIconCopy = v35;
          }
        }

        v106 = replacingIconCopy;
        v101 = movingIconCopy;
        v37 = v27 & 0xFFFFFFFF0000FFFFLL;
        if (!gridSizeClass)
        {
          gridSizeClass = [v105 gridSizeClass];
        }

        v109 = gridSizeClass;
        v102 = iconCopy;
        v38 = SBHIconGridRangeRowForCellIndex(gridRange, v37 | v30, indexCopy, gridSize);
        v39 = SBHIconGridRangeMinCellIndexOnRow(gridRange, v37 | v30, gridSize, v38);
        v40 = SBHIconGridRangeIntersection(v39, v37 | v30, 0, gridSize, gridSize);
        v42 = v41;
        v43 = objc_alloc_init(MEMORY[0x1E695DFA0]);
        v154[0] = MEMORY[0x1E69E9820];
        v154[1] = 3221225472;
        v154[2] = __203__SBIconListModel_shiftFixedIconsInContiguousRegion_forInsertingIcon_orRemovingIcon_orResizingIcon_orMovingIcon_atGridCellIndex_replacingIcon_resizingToGridSizeClass_gridCellInfoOptions_mutationOptions___block_invoke;
        v154[3] = &unk_1E808E0E0;
        v160 = indexCopy;
        v121 = v24;
        v155 = v121;
        v156 = selfCopy;
        v98 = v106;
        v157 = v98;
        v97 = v107;
        v158 = v97;
        v114 = v43;
        v159 = v114;
        v103 = regionCopy;
        [regionCopy enumerateGridCellIndexesUsingBlock:v154];
        v108 = v42;
        v44 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
        if (indexCopy > v39)
        {
          [(SBIconListGridCellInfo *)v44 setIconIndex:-1 inGridRange:SBHIconGridRangeRelativeCellIndexForCellIndex(v40, v42, v39, gridSize), (indexCopy - v39) | 0x10000];
        }

        v115 = v44;
        v119 = v42;
        v120 = v40;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        array = [v114 array];
        v46 = [array copy];

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
              v51 = [(SBIconListModel *)selfCopy gridRangeForIcon:v50 gridCellInfo:v121];
              v53 = v52;
              regionCopy = regionCopy & 0xFFFFFFFF00000000 | gridSize;
              v54 = SBHIconGridRangeIntersection(v51, v52, v120, v42, regionCopy);
              if ((SBHIconGridRangeIsEmpty(v54, v55) & 1) == 0)
              {
                iconCopy = iconCopy & 0xFFFFFFFF00000000 | gridSize;
                v56 = SBHIconGridRangeRelativeCellIndexForCellIndex(v120, v42, v54, iconCopy);
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
          v62 = selfCopy;
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
            v62 = selfCopy;
            do
            {
              for (j = 0; j != v59; ++j)
              {
                if (*v147 != v61)
                {
                  objc_enumerationMutation(v57);
                }

                v64 = *(*(&v146 + 1) + 8 * j);
                gridSizeClass2 = [v64 gridSizeClass];
                iconCopy = gridSizeClass2;
                if (gridSizeClass2)
                {
                  if (([gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
                  {
                    v66 = [(SBIconListModel *)v62 indexForIcon:v64];
                    if (v66 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v67 = v57;
                      v68 = [v121 gridCellIndexForIconIndex:v66];
                      if (v68 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v69 = v68;
                        uniqueIdentifier = [v64 uniqueIdentifier];
                        v117 = v117 & 0xFFFFFFFF00000000 | gridSize;
                        v71 = SBHIconGridRangeRelativeCellIndexForCellIndex(v120, v119, v69, gridSize);
                        if (!v60)
                        {
                          v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
                        }

                        v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v71];
                        [v60 setObject:v72 forKey:uniqueIdentifier];
                      }

                      v57 = v67;
                      v62 = selfCopy;
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
            v62 = selfCopy;
          }
        }

        if (v99 | v97)
        {
          v73 = [(SBIconListModel *)v62 gridSizeForGridSizeClass:v109 gridCellInfoOptions:options];
          v74 = SBHIconGridRangeRelativeCellIndexForCellIndex(v120, v119, indexCopy, gridSize);
          v75 = SBHIconGridRangeIntersection(v74, v73, 0, v108, gridSize);
          [(SBIconListGridCellInfo *)v115 setIconIndex:-1 inGridRange:v75, v76];
        }

        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __203__SBIconListModel_shiftFixedIconsInContiguousRegion_forInsertingIcon_orRemovingIcon_orResizingIcon_orMovingIcon_atGridCellIndex_replacingIcon_resizingToGridSizeClass_gridCellInfoOptions_mutationOptions___block_invoke_2;
        v138[3] = &unk_1E808E108;
        v140 = indexCopy;
        v141 = v120;
        v145 = gridSize;
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
        v78 = removingIconCopy;
        v129 = v78;
        v130 = selfCopy;
        regionCopy = v103;
        v131 = regionCopy;
        v133 = v120;
        v134 = v119;
        v137 = gridSize;
        v79 = selfCopy;
        v135 = 0;
        v136 = v108;
        v80 = v77;
        v132 = v80;
        [(SBIconListModel *)selfCopy enumerateIconsUsingBlock:v127];
        obj = v80;
        if ((mutationOptions & 0x200000) != 0)
        {
          resizingIconCopy = v107;
          if (!v60)
          {
            v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          if (removingIconCopy)
          {
            gridSizeClass3 = [v78 gridSizeClass];
            v82 = [(SBIconListModel *)selfCopy gridSizeAreaForGridSizeClass:gridSizeClass3 gridCellInfoOptions:options];
            if (v82 >= 2)
            {
              v83 = v82;
              v118 = gridSizeClass3;
              v104 = regionCopy;
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
                    gridSizeClass4 = [v89 gridSizeClass];
                    if ([(SBIconListModel *)selfCopy gridSizeAreaForGridSizeClass:gridSizeClass4 gridCellInfoOptions:options]>= v83)
                    {
                      v91 = [(SBIconListModel *)selfCopy gridCellIndexForIcon:v89 gridCellInfo:v121];
                      uniqueIdentifier2 = [v89 uniqueIdentifier];
                      iconCopy = iconCopy & 0xFFFFFFFF00000000 | gridSize;
                      v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{SBHIconGridRangeRelativeCellIndexForCellIndex(v120, v119, v91, iconCopy)}];
                      [v60 setObject:v93 forKey:uniqueIdentifier2];
                    }
                  }

                  v86 = [v84 countByEnumeratingWithState:&v123 objects:v161 count:16];
                }

                while (v86);
              }

              regionCopy = v104;
              resizingIconCopy = v107;
              v79 = selfCopy;
              gridSizeClass3 = v118;
            }
          }
        }

        else
        {
          resizingIconCopy = v107;
        }

        v94 = MEMORY[0x1E695E0F8];
        if (v60)
        {
          v94 = v60;
        }

        v95 = v94;
        array2 = [v114 array];
        [(SBIconListModel *)v79 layOutIcons:array2 inGridCellInfo:obj startingAtGridCellIndex:SBHIconGridRangeRelativeCellIndexForCellIndex(v120 gridSize:v119 fixedIconLocations:indexCopy options:gridSize), v108, v95, options];
        [(SBIconListModel *)v79 transferPositionsFromGridCellInfo:obj representingGridRange:v120 asFixedLocationsForIcons:v119 gridCellInfoOptions:array2, options];

        movingIconCopy = v101;
        iconCopy = v102;
        replacingIconCopy = v106;
        classCopy = v100;
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

- (id)gridCellInfoByUsingTwoDimensionalMovementToInsertIcon:(id)icon atGridCellIndex:(unint64_t)index gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  infoCopy = info;
  if (!infoCopy)
  {
    infoCopy = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  }

  gridSize = [infoCopy gridSize];
  v15 = [(SBIconListModel *)self gridSizeForIcon:iconCopy gridCellInfoOptions:options];
  if (![(SBIconListModel *)self isValidGridRange:index options:*&v15, options])
  {
    mutationOptionsCopy2 = 0;
    goto LABEL_28;
  }

  mutationOptionsCopy = mutationOptions;
  indexCopy = index;
  v43 = HIWORD(gridSize);
  v16 = gridSize;
  v42 = gridSize;
  v17 = SBIconCoordinateMakeWithGridCellIndex(index, gridSize);
  v18 = gridSize;
  v20 = v19;
  v21 = v17 - 1;
  columns = v15.columns;
  v23 = v18 & 0xFFFF0000 | v15.columns;
  v41 = v18;
  if (v15.columns < v18)
  {
    do
    {
      if ([(SBIconListModel *)self areIconsInGridRangeFullyContained:v21 gridCellInfo:v23, infoCopy])
      {
        break;
      }

      options = [(SBIconListModel *)self isValidGridRange:v21 options:v23 & 0xFFFFFFFFFFFF0000 | (v23 + 1), options];
      v25 = v21 - 1;
      if (!v21)
      {
        v25 = 0;
      }

      if (options)
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
  if (v43 > WORD1(v23) && ![(SBIconListModel *)self areIconsInGridRangeFullyContained:v26 gridCellInfo:v27, infoCopy])
  {
    do
    {
      options2 = [(SBIconListModel *)self isValidGridRange:v26 options:v27 & 0xFFFFFFFF0000FFFFLL | (((v27 + 0x10000) >> 16) << 16), options];
      v29 = v26 - v16;
      if (!v26)
      {
        v29 = 0;
      }

      if (options2)
      {
        v27 = v27 & 0xFFFFFFFF0000FFFFLL | (((v27 + 0x10000) >> 16) << 16);
      }

      else
      {
        v26 = v29;
      }
    }

    while (![(SBIconListModel *)self areIconsInGridRangeFullyContained:v26 gridCellInfo:v27, infoCopy]);
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

    mutationOptionsCopy2 = 0;
    v36 = mutationOptionsCopy;
  }

  else
  {
    v36 = mutationOptionsCopy;
    mutationOptionsCopy = [(SBIconListModel *)self gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:iconCopy atGridCellIndex:indexCopy constrainedToGridRange:v21 gridCellInfo:v23 gridCellInfoOptions:infoCopy mutationOptions:options, mutationOptionsCopy];
    mutationOptionsCopy2 = mutationOptionsCopy;
    if (v27 >= 0x50000)
    {
      if (mutationOptionsCopy)
      {
        v38 = 0;
        goto LABEL_44;
      }

      goto LABEL_22;
    }
  }

  v39 = [(SBIconListModel *)self gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:iconCopy atGridCellIndex:indexCopy constrainedToGridRange:v26 gridCellInfo:v27 gridCellInfoOptions:infoCopy mutationOptions:options, v36];
  v38 = v39;
  if (mutationOptionsCopy2 && v39)
  {
    v40 = [(SBIconListModel *)self gridCellInfoWithLeastMovementChangeWithGridCellInfo:infoCopy toGridCellInfo:mutationOptionsCopy2 orGridCellInfo:v39];

    if (v40)
    {
      mutationOptionsCopy2 = v40;
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (mutationOptionsCopy2)
  {
LABEL_44:

    goto LABEL_28;
  }

  if (v39)
  {
    v38 = v39;
    mutationOptionsCopy2 = v38;
    goto LABEL_44;
  }

LABEL_22:
  if (SBIconCoordinateMakeWithGridCellIndex(indexCopy, v42) >= v16 >> 1)
  {
    v30 = v16 >> 1;
  }

  else
  {
    v30 = 0;
  }

  infoCopy = [(SBIconListModel *)self gridCellIndexesForIconsIntersectingGridRange:v30 gridCellInfo:v41 & 0xFFFF0000 | (v16 >> 1), infoCopy];
  v32 = [infoCopy mutableCopy];

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __138__SBIconListModel_gridCellInfoByUsingTwoDimensionalMovementToInsertIcon_atGridCellIndex_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
  v46[3] = &unk_1E808C408;
  v47 = v32;
  v33 = v32;
  SBHIconGridRangeEnumerateCellIndexes(v30, v41 & 0xFFFF0000 | (v16 >> 1), v42, v46);
  mutationOptionsCopy2 = [(SBIconListModel *)self gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:iconCopy atGridCellIndex:indexCopy constrainedToGridCellIndexes:v33 gridCellInfo:infoCopy gridCellInfoOptions:options mutationOptions:mutationOptionsCopy];

  if (!mutationOptionsCopy2)
  {
    mutationOptionsCopy2 = [(SBIconListModel *)self gridCellInfoByUsingPredictedTwoDimensionalMovementToInsertIcon:iconCopy atGridCellIndex:indexCopy constrainedToGridRange:0 gridCellInfo:v42 gridCellInfoOptions:infoCopy mutationOptions:options, mutationOptionsCopy];
  }

LABEL_28:

  return mutationOptionsCopy2;
}

- (id)gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:(id)icon atGridCellIndex:(unint64_t)index constrainedToGridRange:(SBHIconGridRange)range gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  size = range.size;
  cellIndex = range.cellIndex;
  infoCopy = info;
  iconCopy = icon;
  v16 = SBHIconGridRangeCellIndexes(cellIndex, size, [infoCopy gridSize]);
  v17 = [(SBIconListModel *)self gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:iconCopy atGridCellIndex:index constrainedToGridCellIndexes:v16 gridCellInfo:infoCopy gridCellInfoOptions:options mutationOptions:mutationOptions];

  return v17;
}

- (id)gridCellInfoByUsingBruteForcedTwoDimensionalMovementToInsertIcon:(id)icon atGridCellIndex:(unint64_t)index constrainedToGridCellIndexes:(id)indexes gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v144 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  indexesCopy = indexes;
  infoCopy = info;
  gridSize = [infoCopy gridSize];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v17 = indexesCopy;
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
  v18 = infoCopy;
  v129 = v18;
  v19 = v17;
  v130 = v19;
  selfCopy = self;
  v135 = gridSize;
  v110 = iconLayoutBehavior;
  optionsCopy = options;
  v134 = iconLayoutBehavior;
  optionsCopy2 = options;
  v132 = &v136;
  [(SBIconListModel *)self enumerateIconsUsingBlock:v128];
  v20 = v137[5];
  v21 = v19;
  selfCopy2 = self;
  if (v20)
  {
    v21 = v20;
  }

  v90 = v19;
  v98 = v18;
  if ([v21 count])
  {
    v22 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
    largestGridSizeClass = [v22 largestGridSizeClass];
    v23 = [v22 gridSizeAreaForGridSizeClass:largestGridSizeClass];
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
    v28[5] = [(SBIconListModel *)self indexForIcon:iconCopy];
    v108 = gridSize;
    v29 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
    v30 = v28[1];
    v31 = v28;
    v28[1] = v29;

    v28[2] = index;
    selfCopy3 = self;
    v33 = [(SBIconListModel *)self gridSizeForIcon:iconCopy gridCellInfoOptions:options];
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
        v47 = [(SBIconListModel *)selfCopy3 gridSizeForIcon:[(SBIconListModel *)selfCopy3 iconAtIndex:*v43] gridCellInfoOptions:optionsCopy2];
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
        v120 = selfCopy3;
        v122 = v31;
        v123 = optionsCopy2;
        v121 = &v124;
        [(SBIconListModel *)selfCopy3 enumerateIconsUsingBlock:v118];
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
        selfCopy3 = selfCopy2;
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

- (id)gridCellInfoByUsingPredictedTwoDimensionalMovementToInsertIcon:(id)icon atGridCellIndex:(unint64_t)index constrainedToGridRange:(SBHIconGridRange)range gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v11 = *&range.size.columns;
  cellIndex = range.cellIndex;
  iconCopy = icon;
  infoCopy = info;
  gridSize = [infoCopy gridSize];
  v15 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
  v26 = cellIndex;
  v27 = 0;
  v16 = 0;
  v17 = -1;
  do
  {
    if ([(SBIconListModel *)self layOutIconsInGridCellInfo:v15 forInsertingIcon:iconCopy atGridCellIndex:index constrainedToGridRange:cellIndex preferredDisplacementDirection:v11 gridCellInfo:1 << v16 gridCellInfoOptions:infoCopy mutationOptions:options, mutationOptions]&& ([(SBIconListGridCellInfo *)v15 movementChangeInfoFromGridCellInfo:infoCopy], v18 < v17))
    {
      v19 = v18;
      v20 = iconCopy;
      v21 = v11;
      optionsCopy = options;
      v23 = v15;

      v8 = v8 & 0xFFFFFFFF00000000 | gridSize;
      v15 = [[SBIconListGridCellInfo alloc] initWithGridSize:v8];

      v17 = v19;
      v27 = v23;
      options = optionsCopy;
      v11 = v21;
      iconCopy = v20;
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

- (BOOL)layOutIconsInGridCellInfo:(id)info forInsertingIcon:(id)icon atGridCellIndex:(unint64_t)index constrainedToGridRange:(SBHIconGridRange)range preferredDisplacementDirection:(unint64_t)direction gridCellInfo:(id)cellInfo gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)self0
{
  v11 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v104 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  iconCopy = icon;
  cellInfoCopy = cellInfo;
  gridSize = [cellInfoCopy gridSize];
  v71 = cellIndex;
  if ([(SBIconListModel *)self areIconsInGridRangeFullyContained:cellIndex gridCellInfo:v11, cellInfoCopy]&& (v19 = [(SBIconListModel *)self indexForIcon:iconCopy], v20 = [(SBIconListModel *)self gridSizeForIcon:iconCopy gridCellInfoOptions:options], [(SBIconListModel *)self isValidGridRange:index options:v20, options]))
  {
    v67 = v11;
    directionCopy = direction;
    v58 = iconCopy;
    cellInfoCopy = [(SBIconListModel *)self iconsForGridRange:index gridCellInfo:v20, cellInfoCopy];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v21 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:cellInfoCopy];
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

          v26 = [(SBIconListModel *)self gridRangeForIcon:*(*(&v97 + 1) + 8 * i) gridCellInfo:cellInfoCopy];
          [infoCopy setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v26, v27}];
        }

        v23 = [v21 countByEnumeratingWithState:&v97 objects:v103 count:16];
      }

      while (v23);
    }

    [infoCopy setIconIndex:v19 inGridRange:{index, v20}];
    [infoCopy setDebuggingIconType:objc_msgSend(objc_opt_class() forIconIndex:{"gridCellInfoIconTypeForIcon:", v58), v19}];
    gridSizeClass = [v58 gridSizeClass];
    v56 = gridSizeClass;
    if (gridSizeClass)
    {
      v66 = [gridSizeClass isEqualToString:{@"SBHIconGridSizeClassDefault", gridSizeClass}];
    }

    else
    {
      v66 = 1;
    }

    v69 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v69 addObject:v58];
    v30 = objc_alloc(MEMORY[0x1E695DFA8]);
    nodes = [(SBIconIndexMutableList *)self->_icons nodes];
    v32 = [v30 initWithArray:nodes];

    v59 = v32;
    [v32 removeObject:v58];
    iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
    v33 = 1;
    while ([v21 count])
    {
      obj = v33;
      firstObject = [v21 firstObject];
      gridSizeClass2 = [firstObject gridSizeClass];
      v36 = [(SBIconListModel *)self gridRangeForIcon:firstObject gridCellInfo:cellInfoCopy];
      v38 = v37;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __181__SBIconListModel_layOutIconsInGridCellInfo_forInsertingIcon_atGridCellIndex_constrainedToGridRange_preferredDisplacementDirection_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
      v83[3] = &unk_1E808E1F8;
      v39 = infoCopy;
      v84 = v39;
      selfCopy = self;
      v86 = cellInfoCopy;
      v40 = v69;
      v96 = v66;
      v95 = gridSize;
      v87 = v40;
      v88 = iconLayoutBehavior;
      v89 = v36;
      v90 = v38;
      v41 = gridSizeClass2;
      v91 = v36;
      v92 = 65537;
      v93 = 0;
      v94 = directionCopy;
      v72 = v39;
      v42 = [(SBIconListModel *)self bestGridCellIndexOfRangeOfGridSizeClass:gridSizeClass2 withinGridRange:v71 gridCellInfo:v67 passingTest:v39, v83];
      v29 = 0;
      if (v42 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v64 = firstObject;
        v61 = [(SBIconListModel *)self indexForIcon:firstObject];
        v63 = v41;
        v62 = v42;
        v60 = [(SBIconListModel *)self gridSizeForGridSizeClass:v41 gridCellInfoOptions:options];
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
        firstObject = v64;
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
          [infoCopy setIconIndex:v54 inGridRange:{objc_msgSend(cellInfoCopy, "gridCellIndexForIconIndex:", v54), -[SBIconListModel gridSizeForIcon:](self, "gridSizeForIcon:", v53)}];
          [infoCopy setDebuggingIconType:objc_msgSend(objc_opt_class() forIconIndex:{"gridCellInfoIconTypeForIcon:", v53), v54}];
        }

        v50 = [obja countByEnumeratingWithState:&v75 objects:v101 count:16];
      }

      while (v50);
    }

LABEL_39:
    iconCopy = v58;
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

- (BOOL)needsToReflowIconsForRemovingIcon:(id)icon inContiguousRegion:(id)region gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  regionCopy = region;
  v12 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  if ([(SBIconListModel *)self isContiguousRegionEligibleForBackfill:regionCopy gridCellInfo:v12])
  {
    if (-[SBIconListModel hasAllFixedIconsInContiguousRegion:gridCellInfo:](self, "hasAllFixedIconsInContiguousRegion:gridCellInfo:", regionCopy, v12) || (v13 = [v12 gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", iconCopy)}], v13 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = 1;
    }

    else
    {
      [v12 setIconIndex:0x7FFFFFFFFFFFFFFFLL inGridRange:{v13, -[SBIconListModel gridSizeForIcon:](self, "gridSizeForIcon:", iconCopy)}];
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __108__SBIconListModel_needsToReflowIconsForRemovingIcon_inContiguousRegion_gridCellInfoOptions_mutationOptions___block_invoke;
      v16[3] = &unk_1E808E220;
      v17 = iconCopy;
      v18 = v12;
      selfCopy = self;
      v20 = &v22;
      mutationOptionsCopy = mutationOptions;
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

- (void)relocateAnyAffectedFixedIconsForMovingIcon:(id)icon fromGridCellIndex:(unint64_t)index toGridCellIndex:(unint64_t)cellIndex intoContiguousRegions:(id)regions gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v30 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  regionsCopy = regions;
  infoCopy = info;
  if ([(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfo:infoCopy gridCellInfoOptions:options mutationOptions:mutationOptions])
  {
    v23 = infoCopy;
    v24 = regionsCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = regionsCopy;
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

          [(SBIconListModel *)self reorderFixedIconsInContiguousRegion:*(*(&v25 + 1) + 8 * i) forMovingIcon:iconCopy fromGridCellIndex:index toGridCellIndex:cellIndex gridCellInfoOptions:options mutationOptions:mutationOptions];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }

    infoCopy = v23;
    regionsCopy = v24;
  }

  else
  {
    [(SBIconListModel *)self relocateAnyAffectedFixedIconsWithoutContiguousRegionReflowingForMovingIcon:iconCopy fromGridCellIndex:index toGridCellIndex:cellIndex intoContiguousRegions:regionsCopy gridCellInfo:infoCopy gridCellInfoOptions:options mutationOptions:mutationOptions];
  }
}

- (void)relocateAnyAffectedFixedIconsWithoutContiguousRegionReflowingForMovingIcon:(id)icon fromGridCellIndex:(unint64_t)index toGridCellIndex:(unint64_t)cellIndex intoContiguousRegions:(id)regions gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v17[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  v14 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
  if ([(SBIconListModel *)self isValidGridRange:cellIndex options:v14, options])
  {
    [(SBIconListModel *)self removeFixedIconLocationForIcon:iconCopy];
    v17[0] = iconCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __199__SBIconListModel_relocateAnyAffectedFixedIconsWithoutContiguousRegionReflowingForMovingIcon_fromGridCellIndex_toGridCellIndex_intoContiguousRegions_gridCellInfo_gridCellInfoOptions_mutationOptions___block_invoke;
    v16[3] = &unk_1E8088EC8;
    v16[4] = self;
    v16[5] = cellIndex;
    v16[6] = v14;
    v16[7] = options;
    v16[8] = mutationOptions;
    [(SBIconListModel *)self performByExcludingIconsFromLayout:v15 usingBlock:v16];
  }
}

- (void)reorderFixedIconsInContiguousRegion:(id)region forMovingIcon:(id)icon fromGridCellIndex:(unint64_t)index toGridCellIndex:(unint64_t)cellIndex gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v49[1] = *MEMORY[0x1E69E9840];
  regionCopy = region;
  iconCopy = icon;
  v15 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  gridSize = [v15 gridSize];
  gridSizeClass = [iconCopy gridSizeClass];
  v17 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options];
  if ([(SBIconListModel *)self isValidGridRange:cellIndex gridCellInfo:v17, v15])
  {
    v18 = [(SBIconListModel *)self iconsForGridRange:cellIndex gridCellInfo:v17, v15];
    v19 = [v18 count];
    if (!v19 || v19 == 1 && ([v18 containsObject:iconCopy] & 1) != 0)
    {
      goto LABEL_8;
    }

    if ([regionCopy containsGridCellIndex:index] && -[SBIconListModel hasFixedIconsInContiguousRegion:gridCellInfo:](self, "hasFixedIconsInContiguousRegion:gridCellInfo:", regionCopy, v15))
    {
      [(SBIconListModel *)self reorderFixedIconsForMovingIcon:iconCopy withinContiguousRegion:regionCopy toGridCellIndex:cellIndex gridCellInfoOptions:options mutationOptions:mutationOptions];
LABEL_8:

      goto LABEL_18;
    }
  }

  gridRange = [regionCopy gridRange];
  v37 = v21;
  v38 = gridRange;
  startGridCellIndex = [regionCopy startGridCellIndex];
  v23 = [(SBIconListModel *)self fixedIconsInContiguousRegion:regionCopy gridCellInfo:v15];
  if ([v23 count])
  {
    v33 = startGridCellIndex;
    v35 = regionCopy;
    v24 = [(SBIconListModel *)self iconsInContiguousRegion:regionCopy gridCellInfo:v15];
    v34 = gridSizeClass;
    if (([v24 containsObject:iconCopy] & 1) == 0)
    {
      v25 = [v24 arrayByAddingObject:iconCopy];

      v24 = v25;
    }

    v26 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __139__SBIconListModel_reorderFixedIconsInContiguousRegion_forMovingIcon_fromGridCellIndex_toGridCellIndex_gridCellInfoOptions_mutationOptions___block_invoke;
    v40[3] = &unk_1E808E248;
    cellIndexCopy = cellIndex;
    v44 = v17;
    v47 = gridSize;
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

    uniqueIdentifier = [iconCopy uniqueIdentifier];
    v30 = SBHIconGridRangeRelativeCellIndexForCellIndex(v38, v37, cellIndex, gridSize);
    v48 = uniqueIdentifier;
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
    v49[0] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];

    [(SBIconListModel *)self layOutIcons:v24 inGridCellInfo:v27 startingAtGridCellIndex:0 gridSize:v37 fixedIconLocations:v32 options:options];
    [(SBIconListModel *)self transferPositionsFromGridCellInfo:v27 representingGridRange:v38 asLocationsForIcons:v37 gridCellInfoOptions:v24 mutationOptions:options, mutationOptions];

    gridSizeClass = v34;
    regionCopy = v35;
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

- (void)reorderFixedIconsForMovingIcon:(id)icon withinContiguousRegion:(id)region toGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  iconCopy = icon;
  regionCopy = region;
  v13 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  gridSize = [v13 gridSize];
  gridRange = [regionCopy gridRange];
  v17 = v16;
  v18 = [(SBIconListModel *)self fixedIconsInContiguousRegion:regionCopy gridCellInfo:v13];
  if ([v18 count])
  {
    v41 = v18;
    v19 = [(SBIconListModel *)self iconsInContiguousRegion:regionCopy gridCellInfo:v13];
    mutationOptionsCopy = mutationOptions;
    v38 = v17;
    if (([v19 containsObject:iconCopy] & 1) == 0)
    {
      v20 = [v19 arrayByAddingObject:iconCopy];

      v19 = v20;
    }

    icons = [(SBIconListModel *)self icons];
    v21 = [(SBIconListModel *)self indexForIcon:iconCopy];
    gridSizeClass = [iconCopy gridSizeClass];
    v22 = [SBIconListModel gridSizeForGridSizeClass:"gridSizeForGridSizeClass:gridCellInfoOptions:" gridCellInfoOptions:?];
    v23 = SBHIconGridRangeUnion([v13 gridCellIndexForIconIndex:v21], v22, index, v22, gridSize);
    v25 = SBHIconGridRangeExtendToGridEdges(v23, v24, 10, gridSize);
    v27 = v26;
    if (([(SBIconListModel *)self iconLayoutBehavior]& 1) == 0)
    {
      SBIconCoordinateMakeWithGridCellIndex(v25, gridSize);
      if ((v28 & 1) == 0)
      {
        v25 -= gridSize;
        v27 = v27 & 0xFFFFFFFF0000FFFFLL | (((v27 + 0x10000) >> 16) << 16);
      }
    }

    v29 = [regionCopy subcontiguousRegionWithGridRange:{v25, v27}];
    v30 = [(SBIconListModel *)self gridCellInfoByReflowingIconsInContiguousRegion:v29 forMovingIcon:iconCopy toGridCellIndex:index referenceIconOrder:icons internalCellValidDirections:12 gridCellInfo:v13 gridCellInfoOptions:options];
    if ([v30 isLayoutOutOfBounds])
    {
      v31 = [(SBIconListModel *)self gridCellInfoByReflowingIconsInContiguousRegion:regionCopy forMovingIcon:iconCopy toGridCellIndex:index referenceIconOrder:icons internalCellValidDirections:15 gridCellInfo:v13 gridCellInfoOptions:options];
      selfCopy2 = self;
      v33 = v31;
      v35 = v38;
      gridRange2 = gridRange;
      v36 = v19;
    }

    else
    {
      v31 = [(SBIconListModel *)self iconsInContiguousRegion:v29 gridCellInfo:v13];
      gridRange2 = [v29 gridRange];
      selfCopy2 = self;
      v33 = v30;
      v35 = v37;
      v36 = v31;
    }

    [(SBIconListModel *)selfCopy2 transferPositionsFromGridCellInfo:v33 representingGridRange:gridRange2 asLocationsForIcons:v35 gridCellInfoOptions:v36 mutationOptions:options, mutationOptionsCopy];

    v18 = v41;
  }
}

- (id)gridCellInfoByReflowingIconsInContiguousRegion:(id)region forMovingIcon:(id)icon toGridCellIndex:(unint64_t)index referenceIconOrder:(id)order internalCellValidDirections:(unint64_t)directions gridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options
{
  v53[1] = *MEMORY[0x1E69E9840];
  regionCopy = region;
  infoCopy = info;
  iconCopy = icon;
  LODWORD(info) = [infoCopy gridSize];
  gridRange = [regionCopy gridRange];
  v19 = v18;
  startGridCellIndex = [regionCopy startGridCellIndex];
  LODWORD(icon) = [(SBIconListModel *)self gridSizeForIcon:iconCopy];
  v20 = [[SBIconListGridCellInfo alloc] initWithGridSize:?];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __176__SBIconListModel_gridCellInfoByReflowingIconsInContiguousRegion_forMovingIcon_toGridCellIndex_referenceIconOrder_internalCellValidDirections_gridCellInfo_gridCellInfoOptions___block_invoke;
  v42[3] = &unk_1E808E270;
  iconCopy2 = icon;
  v47 = 0;
  infoCopy2 = info;
  v48 = gridRange;
  v49 = v19;
  indexCopy = index;
  v43 = regionCopy;
  directionsCopy = directions;
  v21 = v20;
  v44 = v21;
  v22 = regionCopy;
  [v22 enumerateEmptyGridCellIndexesUsingBlock:v42];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __176__SBIconListModel_gridCellInfoByReflowingIconsInContiguousRegion_forMovingIcon_toGridCellIndex_referenceIconOrder_internalCellValidDirections_gridCellInfo_gridCellInfoOptions___block_invoke_2;
  v33[3] = &unk_1E808E108;
  indexCopy2 = index;
  iconCopy3 = icon;
  v37 = 0;
  infoCopy3 = info;
  v38 = startGridCellIndex;
  v39 = gridRange;
  v40 = v19;
  v23 = v21;
  v34 = v23;
  LOWORD(icon) = info;
  SBHIconGridRangeEnumerateCellIndexes(gridRange, v19, info, v33);
  uniqueIdentifier = [iconCopy uniqueIdentifier];

  v25 = SBHIconGridRangeRelativeCellIndexForCellIndex(gridRange, v19, index, icon);
  v52 = uniqueIdentifier;
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
  v53[0] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];

  v28 = [(SBIconListModel *)self iconsInContiguousRegion:v22 gridCellInfo:infoCopy];

  [(SBIconListModel *)self layOutIcons:v28 inGridCellInfo:v23 startingAtGridCellIndex:0 gridSize:v19 fixedIconLocations:v27 options:options];
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

- (void)transferPositionsFromGridCellInfo:(id)info representingGridRange:(SBHIconGridRange)range asFixedLocationsForIcons:(id)icons gridCellInfoOptions:(unint64_t)options
{
  v41 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  iconsCopy = icons;
  optionsCopy = options;
  v11 = [(SBIconListModel *)self gridSizeWithOptions:options];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = iconsCopy;
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
        v19 = [infoCopy gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v18)}];
        if (v19 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v11 & 0xFFFFFFFF00000000 | v16, v20 = SBHIconGridRangeCellIndexForRelativeCellIndex(range.cellIndex, range.size.columns, v19, v11), v20 == 0x7FFFFFFFFFFFFFFFLL))
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
        if ([infoCopy gridCellIndexForIconIndex:{-[SBIconListModel indexForIcon:](self, "indexForIcon:", v26)}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          gridSizeClass = [v26 gridSizeClass];
          optionsCopy = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:gridSizeClass withoutFixedIconsNearGridRange:range.cellIndex gridCellInfoOptions:*&range.size.columns, optionsCopy];
          if (optionsCopy == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(SBIconListModel *)self removeFixedIconLocationForIcon:v26];
          }

          else
          {
            [(SBIconListModel *)self setFixedLocation:optionsCopy forIcon:v26];
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);
  }
}

- (void)transferLocationsForIconsFromGridCellInfo:(id)info gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  infoCopy = info;
  icons = [(SBIconListModel *)self icons];
  -[SBIconListModel transferPositionsFromGridCellInfo:representingGridRange:asLocationsForIcons:gridCellInfoOptions:mutationOptions:](self, "transferPositionsFromGridCellInfo:representingGridRange:asLocationsForIcons:gridCellInfoOptions:mutationOptions:", infoCopy, 0, [infoCopy gridSize], icons, options, mutationOptions);
}

- (void)transferPositionsFromGridCellInfo:(id)info representingGridRange:(SBHIconGridRange)range asLocationsForIcons:(id)icons gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  v10 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v69 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  obj = icons;
  icons = [(SBIconListModel *)self icons];
  v14 = [icons copy];

  v15 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v16 = [(SBIconListModel *)self gridSizeWithOptions:options];
  v40 = mutationOptions & 0xFFFFFFE8FCDFFEFFLL | 0x1703000000;
  layoutExcludedIcons = [(SBIconListModel *)self layoutExcludedIcons];
  v39 = [layoutExcludedIcons copy];

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
    [(SBIconListModel *)self setIconOrderFromGridCellInfo:infoCopy];
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
  v48 = infoCopy;
  v54 = v48;
  v38 = v23;
  v55 = v38;
  v46 = v14;
  v56 = v46;
  v37 = v19;
  v57 = v37;
  selfCopy = self;
  optionsCopy = options;
  optionsCopy2 = options;
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
          gridSizeClass = [v28 gridSizeClass];
          v31 = [(SBIconListModel *)self gridSizeForIcon:v28];
          v32 = [v42 gridCellIndexForIconIndex:v29];
          v33 = v31;
          optionsCopy = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:gridSizeClass withoutFixedIconsNearGridRange:v32 gridCellInfoOptions:*&v31, optionsCopy];
          if (optionsCopy == 0x7FFFFFFFFFFFFFFFLL && (v41 = v41 & 0xFFFFFFFF00000000 | *&v31, optionsCopy = [SBIconListModel firstFreeGridCellIndexOfRangeOfSize:"firstFreeGridCellIndexOfRangeOfSize:gridCellInfoOptions:" gridCellInfoOptions:?], optionsCopy == 0x7FFFFFFFFFFFFFFFLL))
          {
            [(SBIconIndexMutableList *)self->_icons moveNode:v28 toIndex:[(SBIconIndexMutableList *)self->_icons count]];
          }

          else
          {
            v35 = optionsCopy;
            [(SBIconListModel *)self removeFixedIconLocationsForIconsInGridRange:optionsCopy gridCellInfoOptions:v33, optionsCopy];
            [(SBIconListModel *)self removeFixedIconLocationForIcon:v28];
            v36 = [(SBIconListModel *)self moveContainedIcon:v28 toGridCellIndex:v35 gridCellInfoOptions:optionsCopy mutationOptions:v40];
          }
        }
      }

      v25 = [obja countByEnumeratingWithState:&v49 objects:v68 count:16];
    }

    while (v25);
  }

  [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfoOptions:optionsCopy];
  [(SBIconListModel *)self removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:optionsCopy];
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

- (id)replaceLayoutWithGridCellInfo:(id)info mutationOptions:(unint64_t)options
{
  infoCopy = info;
  gridSize = [(SBIconListModel *)self gridSize];
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    v8 = [(SBIconListModel *)self rotatedGridSizeWithOptions:0];
    gridSize2 = [infoCopy gridSize];
    v10 = gridSize2;
    v11 = SBHIconGridSizeEqualToIconGridSize(gridSize2, *&v8);
    icons = [(SBIconListModel *)self icons];
    if (v11)
    {
      gridSize = v8;
    }
  }

  else
  {
    LODWORD(v10) = [infoCopy gridSize];
    icons = [(SBIconListModel *)self icons];
    v10 = v10;
  }

  [(SBIconListModel *)self transferPositionsFromGridCellInfo:infoCopy representingGridRange:0 asLocationsForIcons:*&gridSize gridCellInfoOptions:icons mutationOptions:[(SBIconListModel *)self bestGridCellInfoOptionsForGridCellInfo:infoCopy], options | 0x200];
  v13 = [infoCopy iconIndexesInGridRange:{0, v10}];
  v14 = [(SBIconListModel *)self iconsAtIndexes:v13];
  v15 = [(SBIconListModel *)self _checkAndRemoveBouncedIconsAfterChangeToIcons:v14 ignoringTrailingIconCheck:0 options:options];

  return v15;
}

- (int64_t)compareMovementChangeWithGridCellInfo:(id)info toGridCellInfo:(id)cellInfo orGridCellInfo:(id)gridCellInfo
{
  gridCellInfoCopy = gridCellInfo;
  infoCopy = info;
  v9 = [cellInfo movementChangeInfoFromGridCellInfo:infoCopy];
  v11 = v10;
  v12 = [gridCellInfoCopy movementChangeInfoFromGridCellInfo:infoCopy];
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

- (id)gridCellInfoWithLeastMovementChangeWithGridCellInfo:(id)info toGridCellInfo:(id)cellInfo orGridCellInfo:(id)gridCellInfo
{
  cellInfoCopy = cellInfo;
  gridCellInfoCopy = gridCellInfo;
  v10 = [(SBIconListModel *)self compareMovementChangeWithGridCellInfo:info toGridCellInfo:cellInfoCopy orGridCellInfo:gridCellInfoCopy];
  v11 = cellInfoCopy;
  if ((v10 + 1) < 2)
  {
    goto LABEL_4;
  }

  if (v10 == 1)
  {
    v11 = gridCellInfoCopy;
LABEL_4:
    v12 = v11;
    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (unint64_t)bestGridCellInfoOptionsForGridCellInfo:(id)info
{
  infoCopy = info;
  [(SBIconListModel *)self gridSize];
  if ([(SBIconListModel *)self allowsRotatedLayout])
  {
    if (SBHIconGridSizeEqualToIconGridSize([infoCopy gridSize], -[SBIconListModel rotatedGridSizeWithOptions:](self, "rotatedGridSizeWithOptions:", 0)))
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
    [infoCopy gridSize];
    v5 = 0;
  }

  return v5;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsNearGridRange:(SBHIconGridRange)range gridCellInfo:(id)info passingTest:(id)test
{
  v7 = *&range.size.columns;
  cellIndex = range.cellIndex;
  testCopy = test;
  infoCopy = info;
  classCopy = class;
  v14 = -[SBIconListModel firstGridCellIndexOfRangeOfGridSizeClass:withoutIconsNearGridRange:withinGridRange:gridCellInfo:passingTest:](self, "firstGridCellIndexOfRangeOfGridSizeClass:withoutIconsNearGridRange:withinGridRange:gridCellInfo:passingTest:", classCopy, cellIndex, v7, 0, [infoCopy gridSize], infoCopy, testCopy);

  return v14;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsNearGridRange:(SBHIconGridRange)range withinGridRange:(SBHIconGridRange)gridRange gridCellInfo:(id)info passingTest:(id)test
{
  size = range.size;
  cellIndex = range.cellIndex;
  testCopy = test;
  classCopy = class;
  infoCopy = info;
  testCopy2 = test;
  v25 = classCopy;
  LODWORD(info) = [(SBIconListModel *)self gridSizeForGridSizeClass:classCopy gridCellInfo:infoCopy];
  v15 = info >> 16;
  v24 = infoCopy;
  gridSize = [infoCopy gridSize];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = MEMORY[0x1E69E9820];
  infoCopy2 = info;
  v28 = gridSize;
  v17 = gridSize;
  v18 = -info;
  v19 = -v15;
  while (1)
  {
    v31[0] = v27;
    v31[1] = 3221225472;
    v31[2] = __127__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsNearGridRange_withinGridRange_gridCellInfo_passingTest___block_invoke;
    v31[3] = &unk_1E808E2E8;
    gridRangeCopy = gridRange;
    v35 = v28;
    v20 = testCopy2;
    v32 = v20;
    v33 = &v36;
    testCopy = testCopy & 0xFFFFFFFF00000000 | infoCopy2;
    classCopy = classCopy & 0xFFFFFFFF00000000 | v17;
    SBHIconGridRangeEnumerateTouchingRanges(cellIndex, *&size, testCopy, classCopy, 1, v31);
    if (v37[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    infoCopy = infoCopy & 0xFFFFFFFF00000000 | v17;
    cellIndex = SBHIconGridRangeInset(cellIndex, *&size, v18, v19, infoCopy);
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

- (unint64_t)bestGridCellIndexOfRangeOfGridSizeClass:(id)class withinGridRange:(SBHIconGridRange)range gridCellInfo:(id)info passingTest:(id)test
{
  v8 = *&range.size.columns;
  cellIndex = range.cellIndex;
  classCopy = class;
  infoCopy = info;
  testCopy = test;
  LODWORD(self) = [(SBIconListModel *)self gridSizeForGridSizeClass:classCopy gridCellInfo:infoCopy];
  gridSize = [infoCopy gridSize];
  v15 = gridSize;
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
  v25 = gridSize;
  v16 = testCopy;
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

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutFixedIconsNearGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  v5 = *&range.size.columns;
  cellIndex = range.cellIndex;
  infoCopy = info;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutFixedIconsNearGridRange_gridCellInfo___block_invoke;
  v13[3] = &unk_1E808E338;
  v13[4] = self;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:class withoutIconsNearGridRange:cellIndex gridCellInfo:v5 passingTest:v10, v13];

  return v11;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsNearGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  v5 = *&range.size.columns;
  cellIndex = range.cellIndex;
  infoCopy = info;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsNearGridRange_gridCellInfo___block_invoke;
  v13[3] = &unk_1E808E338;
  v13[4] = self;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:class withoutIconsNearGridRange:cellIndex gridCellInfo:v5 passingTest:v10, v13];

  return v11;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsNearGridRange:(SBHIconGridRange)range withinGridRange:(SBHIconGridRange)gridRange gridCellInfo:(id)info
{
  v6 = *&gridRange.size.columns;
  cellIndex = gridRange.cellIndex;
  v8 = *&range.size.columns;
  v9 = range.cellIndex;
  infoCopy = info;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsNearGridRange_withinGridRange_gridCellInfo___block_invoke;
  v16[3] = &unk_1E808E338;
  v16[4] = self;
  v17 = infoCopy;
  v13 = infoCopy;
  v14 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:class withoutIconsNearGridRange:v9 withinGridRange:v8 gridCellInfo:cellIndex passingTest:v6, v13, v16];

  return v14;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class nearGridRange:(SBHIconGridRange)range withinGridRange:(SBHIconGridRange)gridRange gridCellInfo:(id)info withoutIconsPassingTest:(id)test
{
  v7 = *&gridRange.size.columns;
  cellIndex = gridRange.cellIndex;
  v9 = *&range.size.columns;
  v10 = range.cellIndex;
  infoCopy = info;
  testCopy = test;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __127__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_nearGridRange_withinGridRange_gridCellInfo_withoutIconsPassingTest___block_invoke;
  v19[3] = &unk_1E808E360;
  v19[4] = self;
  v20 = infoCopy;
  v21 = testCopy;
  v15 = testCopy;
  v16 = infoCopy;
  v17 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:class withoutIconsNearGridRange:v10 withinGridRange:v9 gridCellInfo:cellIndex passingTest:v7, v16, v19];

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

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutIconsEqualToOrLargerThanGridSizeClass:(id)sizeClass nearGridRange:(SBHIconGridRange)range withinGridRange:(SBHIconGridRange)gridRange gridCellInfo:(id)info
{
  v7 = *&gridRange.size.columns;
  cellIndex = gridRange.cellIndex;
  v9 = *&range.size.columns;
  v10 = range.cellIndex;
  infoCopy = info;
  classCopy = class;
  v16 = [(SBIconListModel *)self gridSizeAreaForGridSizeClass:sizeClass gridCellInfo:infoCopy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __148__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsEqualToOrLargerThanGridSizeClass_nearGridRange_withinGridRange_gridCellInfo___block_invoke;
  v20[3] = &unk_1E808E388;
  v20[4] = self;
  v21 = infoCopy;
  v22 = v16;
  v17 = infoCopy;
  v18 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:classCopy nearGridRange:v10 withinGridRange:v9 gridCellInfo:cellIndex withoutIconsPassingTest:v7, v17, v20];

  return v18;
}

BOOL __148__SBIconListModel_firstGridCellIndexOfRangeOfGridSizeClass_withoutIconsEqualToOrLargerThanGridSizeClass_nearGridRange_withinGridRange_gridCellInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 gridSizeClass];
  LODWORD(v3) = [v3 gridSizeAreaForGridSizeClass:v4 gridCellInfo:*(a1 + 40)];

  return v3 < *(a1 + 48);
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutFixedIconsNearGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options
{
  v6 = *&range.size.columns;
  cellIndex = range.cellIndex;
  classCopy = class;
  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v11 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:classCopy withoutFixedIconsNearGridRange:cellIndex gridCellInfo:v6, v10];

  return v11;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutFixedIconsNearContiguousRegion:(id)region gridCellInfo:(id)info
{
  infoCopy = info;
  classCopy = class;
  v10 = -[SBIconListModel firstGridCellIndexOfRangeOfGridSizeClass:withoutFixedIconsNearGridRange:gridCellInfo:](self, "firstGridCellIndexOfRangeOfGridSizeClass:withoutFixedIconsNearGridRange:gridCellInfo:", classCopy, [region endGridCellIndex], 65537, infoCopy);

  return v10;
}

- (unint64_t)firstGridCellIndexOfRangeOfGridSizeClass:(id)class withoutFixedIconsNearContiguousRegion:(id)region gridCellInfoOptions:(unint64_t)options
{
  regionCopy = region;
  classCopy = class;
  v10 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v11 = [(SBIconListModel *)self firstGridCellIndexOfRangeOfGridSizeClass:classCopy withoutFixedIconsNearContiguousRegion:regionCopy gridCellInfo:v10];

  return v11;
}

- (id)contiguousRegionForGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  v5 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v6 = [v5 contiguousRegionForGridCellIndex:index];

  return v6;
}

- (unint64_t)firstGridCellIndexOfNaturalGapInRange:(_NSRange)range gridCellInfo:(id)info
{
  length = range.length;
  location = range.location;
  infoCopy = info;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (([(SBIconListModel *)self iconLayoutBehavior]& 1) != 0)
  {
    goto LABEL_23;
  }

  gridSize = [infoCopy gridSize];
  v12 = gridSize;
  v29 = gridSize;
  Area = SBHIconGridSizeGetArea(gridSize);
  v30 = v12;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v5 = v5 & 0xFFFFFFFF00000000 | 0x10001;
    v14 = [infoCopy indexOfFirstEmptyGridCellRangeOfSize:v5 inGridCellIndexRange:{location, length}];
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

      v19 = [infoCopy iconIndexForGridCellIndex:v15 - 1];
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
      v21 = [infoCopy indexOfFirstEmptyGridCellRangeOfSize:v5 inGridCellIndexRange:{location, Area - (v15 + 1)}];
      v15 = v21;
LABEL_15:
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v28;
        goto LABEL_23;
      }
    }

    gridSizeClass = [v20 gridSizeClass];
    v27 = v27 & 0xFFFFFFFF00000000 | 0x10001;
    v16 = v29;
    if (!SBHIconGridSizeEqualToIconGridSize(-[SBIconListModel gridSizeForGridSizeClass:](self, "gridSizeForGridSizeClass:"), 65537) || (v22 = [infoCopy iconIndexForGridCellIndex:v15 + 1], v22 == 0x7FFFFFFFFFFFFFFFLL))
    {

      v5 = v5 & 0xFFFFFFFF00000000 | 0x10001;
      v21 = [infoCopy indexOfFirstEmptyGridCellRangeOfSize:v5 inGridCellIndexRange:{v15 + 1, Area - (v15 + 1)}];
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

- (id)iconsByReplacingIconsNearNaturalGapWithPlaceholder:(id)placeholder referenceIconOrder:(id *)order gridCellInfo:(id)info
{
  placeholderCopy = placeholder;
  infoCopy = info;
  allowedGridSizeClasses = [(SBIconListModel *)self allowedGridSizeClasses];
  iconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
  v11 = [iconGridSizeClassSizes bestGridSizeClassForGridSize:65538 allowedGridSizeClasses:allowedGridSizeClasses];
  if (v11)
  {
    v27 = iconGridSizeClassSizes;
    v28 = allowedGridSizeClasses;
    gridSize = [(SBIconListModel *)self gridSize];
    v31 = gridSize;
    infoCopy = [(SBIconListModel *)self firstGridCellIndexOfNaturalGapInRange:0 gridCellInfo:SBHIconGridSizeGetArea(*&gridSize), infoCopy];
    v14 = 0;
    v15 = 0;
    if (infoCopy != 0x7FFFFFFFFFFFFFFFLL)
    {
      infoCopy2 = infoCopy;
      v15 = 0;
      v14 = 0;
      selfCopy = self;
      do
      {
        v17 = -[SBIconListModel iconAtIndex:](self, "iconAtIndex:", [infoCopy iconIndexForGridCellIndex:infoCopy2 - 1]);
        v18 = [SBPlaceholderIcon placeholderForIcon:v17];
        [v18 setGridSizeClass:v11];
        if (!v15)
        {
          v19 = infoCopy;
          v20 = v11;
          v21 = placeholderCopy;
          v15 = [placeholderCopy mutableCopy];
          if (order)
          {
            v22 = [*order mutableCopy];
          }

          else
          {
            v22 = 0;
          }

          v14 = v22;
          placeholderCopy = v21;
          v11 = v20;
          infoCopy = v19;
          self = selfCopy;
        }

        [v15 replaceObjectAtIndex:objc_msgSend(v15 withObject:{"indexOfObjectIdenticalTo:", v17), v18}];
        [v14 replaceObjectAtIndex:objc_msgSend(v14 withObject:{"indexOfObjectIdenticalTo:", v17), v18}];
        allowedGridSizeClasses = allowedGridSizeClasses & 0xFFFFFFFF00000000 | v31;
        infoCopy2 = [(SBIconListModel *)self firstGridCellIndexOfNaturalGapInRange:infoCopy2 + 1 gridCellInfo:SBHIconGridSizeGetArea(allowedGridSizeClasses) - (infoCopy2 + 1), infoCopy];
      }

      while (infoCopy2 != 0x7FFFFFFFFFFFFFFFLL);
    }

    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = placeholderCopy;
    }

    v24 = v23;
    if (order)
    {
      v25 = v14;
      *order = v14;
    }

    iconGridSizeClassSizes = v27;
    allowedGridSizeClasses = v28;
  }

  else
  {
    v24 = placeholderCopy;
  }

  return v24;
}

- (SBHIconGridSize)gridSizeWithOptions:(unint64_t)options
{
  gridSize = [(SBIconListModel *)self gridSize];
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:options]&& [(SBIconListModel *)self allowsRotatedLayout])
  {

    return SBHIconGridSizeRotate(*&gridSize);
  }

  else
  {
    return gridSize;
  }
}

- (SBHIconGridSize)rotatedGridSizeWithOptions:(unint64_t)options
{
  gridSize = [(SBIconListModel *)self gridSize];
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:options]|| ![(SBIconListModel *)self allowsRotatedLayout])
  {
    return gridSize;
  }

  else
  {

    return SBHIconGridSizeRotate(*&gridSize);
  }
}

- (unint64_t)rotatedGridCellInfoOptions:(unint64_t)options
{
  if ([(SBIconListModel *)self wantsRotatedGridForOptions:?]|| ![(SBIconListModel *)self allowsRotatedLayout])
  {
    return options & 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    return options | 2;
  }
}

- (SBHIconGridSize)boundedGridSizeWithOptions:(unint64_t)options
{
  v5 = [(SBIconListModel *)self gridSizeWithOptions:?];
  columns = v5.columns;
  v7 = HIWORD(*&v5);
  v8 = v5;
  if (SBHIconGridSizeIsHorizontallyInfinite(v5.columns))
  {
    v9 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
    columns = [v9 numberOfUsedColumns];
    if (!SBHIconGridSizeIsVerticallyInfinite(v8))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (SBHIconGridSizeIsVerticallyInfinite(v8))
  {
    v9 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
LABEL_6:
    LOWORD(v7) = [v9 numberOfUsedRows];
LABEL_7:
  }

  return (columns | (v7 << 16));
}

- (id)iconsForLayoutWithGridCellInfoOptions:(unint64_t)options
{
  v4 = [(SBIconListModel *)self iconsWithGridCellInfoOptions:options];
  v5 = [(SBIconListModel *)self filterIconsForLayout:v4];

  return v5;
}

- (id)gridCellInfoWithOptions:(unint64_t)options
{
  ++self->_layoutGenerationCount;
  v5 = [(SBIconListModel *)self gridSizeWithOptions:?];

  return [(SBIconListModel *)self gridCellInfoForGridSize:v5 options:options];
}

- (id)gridCellInfoForGridSize:(SBHIconGridSize)size options:(unint64_t)options
{
  icons = [(SBIconListModel *)self icons];
  v8 = [(SBIconListModel *)self iconsForLayoutWithGridCellInfoOptions:options];
  v9 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:options];
  v10 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  v11 = [objc_opt_class() iconGridCellInfoForIcons:v8 gridSize:*&size gridSizeClassSizes:v10 iconLayoutBehavior:-[SBIconListModel iconLayoutBehavior](self referenceIconOrder:"iconLayoutBehavior") fixedIconLocations:icons options:{v9, options}];

  return v11;
}

- (id)gridCellInfoExcludingIcons:(id)icons options:(unint64_t)options
{
  iconsCopy = icons;
  icons = [(SBIconListModel *)self icons];
  v8 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:options];
  v9 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  v10 = [(SBIconListModel *)self gridSizeWithOptions:options];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v12 = [(SBIconListModel *)self iconsForLayoutWithGridCellInfoOptions:options];
  v13 = [v12 mutableCopy];

  [v13 removeObjectsInArray:iconsCopy];
  v14 = [objc_opt_class() iconGridCellInfoForIcons:v13 gridSize:*&v10 gridSizeClassSizes:v9 iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:icons fixedIconLocations:v8 options:options];

  return v14;
}

- (id)gridCellInfoForIcons:(id)icons options:(unint64_t)options
{
  iconsCopy = icons;
  icons = [(SBIconListModel *)self icons];
  v8 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:options];
  v9 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  v10 = [(SBIconListModel *)self gridSizeWithOptions:options];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v12 = [(SBIconListModel *)self filterIconsForLayout:iconsCopy];

  v13 = [objc_opt_class() iconGridCellInfoForIcons:v12 gridSize:*&v10 gridSizeClassSizes:v9 iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:icons fixedIconLocations:v8 options:options];

  return v13;
}

- (id)gridCellInfoForIcons:(id)icons gridSize:(SBHIconGridSize)size options:(unint64_t)options
{
  iconsCopy = icons;
  icons = [(SBIconListModel *)self icons];
  v10 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:options];
  v11 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v13 = [(SBIconListModel *)self filterIconsForLayout:iconsCopy];

  v14 = [objc_opt_class() iconGridCellInfoForIcons:v13 gridSize:*&size gridSizeClassSizes:v11 iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:icons fixedIconLocations:v10 options:options];

  return v14;
}

- (id)gridCellInfoForIcons:(id)icons referenceIconOrder:(id)order options:(unint64_t)options
{
  orderCopy = order;
  iconsCopy = icons;
  v10 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:options];
  v11 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  v12 = [(SBIconListModel *)self gridSizeWithOptions:options];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v14 = [(SBIconListModel *)self filterIconsForLayout:iconsCopy];

  v15 = [objc_opt_class() iconGridCellInfoForIcons:v14 gridSize:*&v12 gridSizeClassSizes:v11 iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:orderCopy fixedIconLocations:v10 options:options];

  return v15;
}

- (id)gridCellInfoForIcons:(id)icons gridSize:(SBHIconGridSize)size referenceIconOrder:(id)order options:(unint64_t)options
{
  orderCopy = order;
  iconsCopy = icons;
  v12 = [(SBIconListModel *)self fixedIconLocationsWithGridCellInfoOptions:options];
  v13 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v15 = [(SBIconListModel *)self filterIconsForLayout:iconsCopy];

  v16 = [objc_opt_class() iconGridCellInfoForIcons:v15 gridSize:*&size gridSizeClassSizes:v13 iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:orderCopy fixedIconLocations:v12 options:options];

  return v16;
}

- (id)gridCellInfoForIcons:(id)icons gridSize:(SBHIconGridSize)size referenceIconOrder:(id)order fixedIconLocations:(id)locations options:(unint64_t)options
{
  locationsCopy = locations;
  orderCopy = order;
  iconsCopy = icons;
  v15 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v17 = [(SBIconListModel *)self filterIconsForLayout:iconsCopy];

  v18 = [objc_opt_class() iconGridCellInfoForIcons:v17 gridSize:*&size gridSizeClassSizes:v15 iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:orderCopy fixedIconLocations:locationsCopy options:options];

  return v18;
}

- (void)layOutIcons:(id)icons atIndexes:(id)indexes inGridCellInfo:(id)info startingAtGridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size fixedIconLocations:(id)locations options:(unint64_t)options
{
  locationsCopy = locations;
  infoCopy = info;
  indexesCopy = indexes;
  iconsCopy = icons;
  icons = [(SBIconListModel *)self icons];
  v19 = [(SBIconListModel *)self gridSizeClassSizesWithOptions:options];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v22 = [(SBIconListModel *)self filterIconsForLayout:iconsCopy];

  [objc_opt_class() layOutIcons:v22 atIndexes:indexesCopy inGridCellInfo:infoCopy startingAtGridCellIndex:index gridSize:*&size gridSizeClassSizes:v19 iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:icons fixedIconLocations:locationsCopy options:options];
}

- (void)layOutIcons:(id)icons inGridCellInfo:(id)info startingAtGridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size fixedIconLocations:(id)locations options:(unint64_t)options
{
  locationsCopy = locations;
  infoCopy = info;
  iconsCopy = icons;
  icons = [(SBIconListModel *)self icons];
  iconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v22 = [(SBIconListModel *)self filterIconsForLayout:iconsCopy];

  v20 = [v22 count];
  v21 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v20}];
  [objc_opt_class() layOutIcons:v22 atIndexes:v21 inGridCellInfo:infoCopy startingAtGridCellIndex:index gridSize:*&size gridSizeClassSizes:iconGridSizeClassSizes iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:icons fixedIconLocations:locationsCopy options:options];
}

- (void)layOutIcons:(id)icons inGridCellInfo:(id)info startingAtGridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size referenceIconOrder:(id)order fixedIconLocations:(id)locations options:(unint64_t)options
{
  locationsCopy = locations;
  orderCopy = order;
  infoCopy = info;
  iconsCopy = icons;
  iconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v20 = [iconsCopy count];
  v21 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v20}];
  [objc_opt_class() layOutIcons:iconsCopy atIndexes:v21 inGridCellInfo:infoCopy startingAtGridCellIndex:index gridSize:*&size gridSizeClassSizes:iconGridSizeClassSizes iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:orderCopy fixedIconLocations:locationsCopy options:options];
}

+ (id)iconGridCellInfoForIcons:(id)icons gridSize:(SBHIconGridSize)size gridSizeClassSizes:(id)sizes iconLayoutBehavior:(unint64_t)behavior referenceIconOrder:(id)order fixedIconLocations:(id)locations options:(unint64_t)options
{
  locationsCopy = locations;
  orderCopy = order;
  sizesCopy = sizes;
  iconsCopy = icons;
  v19 = [[SBIconListGridCellInfo alloc] initWithGridSize:*&size];
  v20 = [iconsCopy count];
  v21 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v20}];
  [self layOutIcons:iconsCopy atIndexes:v21 inGridCellInfo:v19 startingAtGridCellIndex:0 gridSize:*&size gridSizeClassSizes:sizesCopy iconLayoutBehavior:behavior referenceIconOrder:orderCopy fixedIconLocations:locationsCopy options:options];

  return v19;
}

+ (void)layOutIcons:(id)icons atIndexes:(id)indexes inGridCellInfo:(id)info startingAtGridCellIndex:(unint64_t)index gridSize:(SBHIconGridSize)size gridSizeClassSizes:(id)sizes iconLayoutBehavior:(unint64_t)behavior referenceIconOrder:(id)self0 fixedIconLocations:(id)self1 options:(unint64_t)self2
{
  locationsCopy = locations;
  iconsCopy = icons;
  indexesCopy = indexes;
  infoCopy = info;
  sizesCopy = sizes;
  orderCopy = order;
  locationsCopy2 = locations;
  v83 = [iconsCopy count];
  if (v83)
  {
    optionsCopy5 = options;
    rows = size.rows;
    if ((options & 0x10) != 0)
    {
      v69 = 0;
      v70 = size.rows - 1;
    }

    else
    {
      v70 = index / size.columns;
      v69 = index % size.columns;
    }

    columns = size.columns;
    v71 = indexesCopy;
    sizeCopy = size;
    v73 = orderCopy;
    if (!locationsCopy2 || (v22 = [indexesCopy firstIndex], v22 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v66 = 0;
LABEL_35:
      firstIndex = [indexesCopy firstIndex];
      v39 = v66;
      if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_91;
      }

      v40 = firstIndex;
      v59 = v86;
      v60 = optionsCopy5 & 0xC;
      v68 = v70;
      v65 = iconsCopy;
LABEL_37:
      if (optionsCopy5)
      {
        v41 = v83 + ~v40;
      }

      else
      {
        v41 = v40;
      }

      v42 = [iconsCopy objectAtIndex:{v41, v59}];
      if ([v39 containsIndex:v40])
      {
        goto LABEL_90;
      }

      gridSizeClass = [v42 gridSizeClass];
      v74 = [sizesCopy gridSizeForGridSizeClass:?];
      if (orderCopy != iconsCopy)
      {
        v41 = [orderCopy indexOfObjectIdenticalTo:v42];
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
        optionsCopy5 = options;
        if ((options & 8) != 0)
        {
          iconsCopy = v65;
          indexesCopy = v71;
          orderCopy = v73;
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
          v87 = sizeCopy;
          v88 = v74;
          v86[2] = &v89;
          v86[3] = behavior;
          v61 = v61 & 0xFFFFFFFF00000000 | *&sizeCopy;
          v62 = v62 & 0xFFFFFFFF00000000 | v74;
          [infoCopy enumerateEmptyGridCellRangesOfSize:? inGridRange:? flipped:? usingBlock:?];
          iconsCopy = v65;
          indexesCopy = v71;
          v39 = v66;
          v56 = v90[3];
          if (v56 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [infoCopy setIconIndex:v67 inGridRange:{v56, v74}];
            orderCopy = v73;
            _Block_object_dispose(&v89, 8);
            goto LABEL_89;
          }

          _Block_object_dispose(&v89, 8);
          orderCopy = v73;
        }

        [infoCopy markIconIndexAsOutOfBounds:v67];
        goto LABEL_89;
      }

      v47 = HIWORD(v74) - 1;
      if ((options & 0x10) != 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      v80 = v48;
      v49 = v47 * sizeCopy.columns;
      if ((options & 0x10) == 0)
      {
        v49 = 0;
      }

      v50 = v68;
      v51 = columns * v68 - v49;
      while (1)
      {
        if (v50 - v80 + (v74 >> 16) <= v46 && behavior & 1 | (v74 < 0x20000) | (((v50 - v80) & 1) == 0))
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
          if ((behavior & 2) == 0 && v52 && v74 - columns + v52 && v52 % v74)
          {
            goto LABEL_70;
          }
        }

        else if (v54 > v43)
        {
          goto LABEL_70;
        }

        v55 = [infoCopy indexOfFirstUsedGridCellInGridRange:{v51 + v52, v74}];
        v43 = columns;
        if (v55 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [infoCopy setIconIndex:v67 inGridRange:{v51 + v52, v74}];
          [infoCopy setDebuggingIconType:objc_msgSend(self forIconIndex:{"gridCellInfoIconTypeForIcon:", v42), v67}];
          if (v74 + v52 - 1 >= columns - 1)
          {
            indexesCopy = v71;
            orderCopy = v73;
            optionsCopy5 = options;
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

            iconsCopy = v65;
            goto LABEL_89;
          }

          v57 = v68;
          if (v60)
          {
            v57 = v50;
          }

          v68 = v57;
          iconsCopy = v65;
          indexesCopy = v71;
          orderCopy = v73;
          optionsCopy5 = options;
          v39 = v66;
LABEL_89:

LABEL_90:
          v40 = [indexesCopy indexGreaterThanIndex:v40];
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
    sizeCopy2 = size;
    while (1)
    {
      if (optionsCopy5)
      {
        v24 = v83 + ~v23;
      }

      else
      {
        v24 = v23;
      }

      v25 = [iconsCopy objectAtIndex:v24];
      gridSizeClass2 = [v25 gridSizeClass];
      v27 = [sizesCopy gridSizeForGridSizeClass:gridSizeClass2];
      if (orderCopy != iconsCopy)
      {
        v24 = [orderCopy indexOfObjectIdenticalTo:v25];
      }

      uniqueIdentifier = [v25 uniqueIdentifier];
      v29 = [locationsCopy2 objectForKey:uniqueIdentifier];
      v30 = v29;
      if (!v29)
      {
        goto LABEL_34;
      }

      v79 = gridSizeClass2;
      unsignedIntegerValue = [v29 unsignedIntegerValue];
      v32 = SBIconCoordinateMakeWithGridCellIndex(unsignedIntegerValue, sizeCopy2);
      v77 = v33;
      if ([infoCopy indexOfFirstUsedGridCellInGridRange:{unsignedIntegerValue, v27}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = v32 - 1;
        v35 = v32 - 1 + v27;
        if ((v27 & 0xFFFE) == 0 || v35 > columns)
        {
          indexesCopy = v71;
          if (v35 <= columns)
          {
            goto LABEL_28;
          }
        }

        else
        {
          indexesCopy = v71;
          if ((behavior & 2) != 0 || !v34 || columns - v27 == v34 || !(v34 % v27))
          {
LABEL_28:
            if (v77 - 1 + (v27 >> 16) <= rows && behavior & 1 | (v27 < 0x20000) | (((v77 - 1) & 1) == 0))
            {
              [infoCopy setIconIndex:v24 inGridRange:{unsignedIntegerValue, v27}];
              [infoCopy setDebuggingIconType:objc_msgSend(self forIconIndex:{"gridCellInfoIconTypeForIcon:", v25) | 1, v24}];
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
        indexesCopy = v71;
      }

      gridSizeClass2 = v79;
      locationsCopy = locationsCopy & 0xFFFFFFFF00000000 | sizeCopy2;
LABEL_34:

      v23 = [indexesCopy indexGreaterThanIndex:v23];
      orderCopy = v73;
      optionsCopy5 = options;
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

+ (unint64_t)gridCellInfoIconTypeForIcon:(id)icon
{
  iconCopy = icon;
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

  gridSizeClass = [iconCopy gridSizeClass];

  if (gridSizeClass && ![gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    v6 |= 4uLL;
  }

  return v6;
}

- (void)layOutIconsPrioritizedByGridArea:(id)area inGridCellInfo:(id)info gridSize:(SBHIconGridSize)size referenceIconOrder:(id)order referenceGridCellInfo:(id)cellInfo fixedIconLocations:(id)locations options:(unint64_t)options
{
  areaCopy = area;
  infoCopy = info;
  orderCopy = order;
  cellInfoCopy = cellInfo;
  locationsCopy = locations;
  iconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  v42 = [areaCopy bs_map:&__block_literal_global_137];
  v41 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v42];
  allObjects = [v41 allObjects];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_2;
  v60[3] = &unk_1E808BB88;
  v21 = iconGridSizeClassSizes;
  v61 = v21;
  v40 = [allObjects sortedArrayUsingComparator:v60];

  allKeys = [locationsCopy allKeys];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_3;
  v58[3] = &unk_1E808C8D0;
  v23 = areaCopy;
  v59 = v23;
  v39 = allKeys;
  v24 = [allKeys bs_compactMap:v58];
  v25 = [v24 count];
  if (v25)
  {
    v26 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v25}];
    sizeCopy2 = size;
    [objc_opt_class() layOutIcons:v24 atIndexes:v26 inGridCellInfo:infoCopy startingAtGridCellIndex:0 gridSize:iconLayoutBehavior gridSizeClassSizes:orderCopy iconLayoutBehavior:locationsCopy referenceIconOrder:options fixedIconLocations:? options:?];
  }

  else
  {
    sizeCopy2 = size;
  }

  v27 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:0];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __144__SBIconListModel_layOutIconsPrioritizedByGridArea_inGridCellInfo_gridSize_referenceIconOrder_referenceGridCellInfo_fixedIconLocations_options___block_invoke_5;
  v45[3] = &unk_1E808E3D8;
  v46 = v28;
  selfCopy = self;
  sizeCopy3 = size;
  v48 = infoCopy;
  v49 = v21;
  v50 = orderCopy;
  v51 = locationsCopy;
  v55 = iconLayoutBehavior;
  optionsCopy = options;
  v52 = v23;
  v53 = cellInfoCopy;
  v54 = v27;
  v35 = v27;
  v44 = cellInfoCopy;
  v38 = v23;
  v29 = locationsCopy;
  v30 = orderCopy;
  v31 = v21;
  v32 = infoCopy;
  v33 = v28;
  [v40 enumerateObjectsWithOptions:2 usingBlock:v45];
  v34 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(v33, "count")}];
  [objc_opt_class() layOutIcons:v33 atIndexes:v34 inGridCellInfo:v32 startingAtGridCellIndex:0 gridSize:sizeCopy2 gridSizeClassSizes:v31 iconLayoutBehavior:iconLayoutBehavior referenceIconOrder:v30 fixedIconLocations:v29 options:options];
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

- (void)setLayoutExcludedIcons:(id)icons
{
  iconsCopy = icons;
  if ((BSEqualArrays() & 1) == 0)
  {
    v4 = [iconsCopy copy];
    layoutExcludedIcons = self->_layoutExcludedIcons;
    self->_layoutExcludedIcons = v4;

    _rotatedIconListModelIfApplicable = [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
    [_rotatedIconListModelIfApplicable setLayoutExcludedIcons:iconsCopy];
  }
}

- (void)performByExcludingIconsFromLayout:(id)layout usingBlock:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  layoutExcludedIcons = [(SBIconListModel *)self layoutExcludedIcons];
  v8 = layoutExcludedIcons;
  if (layoutExcludedIcons)
  {
    v9 = [layoutExcludedIcons arrayByAddingObjectsFromArray:layoutCopy];
  }

  else
  {
    v9 = layoutCopy;
  }

  v10 = v9;
  [(SBIconListModel *)self setLayoutExcludedIcons:v9];
  blockCopy[2](blockCopy);

  [(SBIconListModel *)self setLayoutExcludedIcons:v8];
}

- (id)filterIconsForLayout:(id)layout
{
  layoutCopy = layout;
  layoutExcludedIcons = [(SBIconListModel *)self layoutExcludedIcons];
  if (layoutExcludedIcons)
  {
    v6 = [layoutCopy mutableCopy];
    [v6 removeObjectsInArray:layoutExcludedIcons];

    layoutCopy = v6;
  }

  return layoutCopy;
}

- (BOOL)getIconGridRange:(SBHIconGridRange *)range forGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  v6 = [info gridRangeForGridCellIndex:index];
  if (range && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    range->cellIndex = v6;
    *&range->size.columns = v7;
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)gridCellIndexBelowIconAtIndex:(unint64_t)index gridCellInfo:(id)info
{
  infoCopy = info;
  v6 = [infoCopy gridCellIndexForIconIndex:index];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    gridSize = [infoCopy gridSize];
    v10 = [infoCopy gridRangeForGridCellIndex:v8];
    v7 = SBHIconGridRangeCellIndexBelowColumn(v10, v11, gridSize, 0);
  }

  return v7;
}

- (unint64_t)gridCellIndexBelowIconAtIndex:(unint64_t)index options:(unint64_t)options
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v7 = [(SBIconListModel *)self gridCellIndexBelowIconAtIndex:index gridCellInfo:v6];

  return v7;
}

- (unint64_t)gridCellIndexAboveIconAtIndex:(unint64_t)index gridCellInfo:(id)info
{
  infoCopy = info;
  v6 = [infoCopy gridCellIndexForIconIndex:index];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    gridSize = [infoCopy gridSize];
    v10 = [infoCopy gridRangeForGridCellIndex:v8];
    v7 = SBHIconGridRangeCellIndexAboveColumn(v10, v11, gridSize, 0);
  }

  return v7;
}

- (unint64_t)gridCellIndexAboveIconAtIndex:(unint64_t)index options:(unint64_t)options
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v7 = [(SBIconListModel *)self gridCellIndexAboveIconAtIndex:index gridCellInfo:v6];

  return v7;
}

- (SBIconCoordinate)coordinateForGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  v5 = [(SBIconListModel *)self gridSizeWithOptions:options];

  v6 = SBIconCoordinateMakeWithGridCellIndex(index, v5);
  result.row = v7;
  result.column = v6;
  return result;
}

- (SBIconCoordinate)coordinateForGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  v4 = [info coordinateForGridCellIndex:index];
  result.row = v5;
  result.column = v4;
  return result;
}

- (SBIconCoordinate)coordinateForIcon:(id)icon gridCellInfo:(id)info
{
  infoCopy = info;
  v7 = [infoCopy coordinateForGridCellIndex:{-[SBIconListModel gridCellIndexForIcon:gridCellInfo:](self, "gridCellIndexForIcon:gridCellInfo:", icon, infoCopy)}];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.row = v11;
  result.column = v10;
  return result;
}

- (unint64_t)gridCellIndexForCoordinate:(SBIconCoordinate)coordinate gridCellInfoOptions:(unint64_t)options
{
  row = coordinate.row;
  column = coordinate.column;
  v6 = [(SBIconListModel *)self gridSizeWithOptions:options];

  return SBIconCoordinateGetGridCellIndex(column, row, v6);
}

- (id)iconAtGridCellIndex:(unint64_t)index gridCellInfoOptions:(unint64_t)options
{
  v6 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v7 = [(SBIconListModel *)self iconAtGridCellIndex:index gridCellInfo:v6];

  return v7;
}

- (id)iconAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  v5 = [info iconIndexForGridCellIndex:index];
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

- (SBHIconGridRange)gridRangeForIcon:(id)icon gridCellInfo:(id)info
{
  infoCopy = info;
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  v9 = [(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfo:infoCopy];
  v10 = [(SBIconListModel *)self gridCellIndexForIcon:iconCopy gridCellInfo:infoCopy];

  v11 = v10;
  v12 = v9;
  result.size = v12;
  result.cellIndex = v11;
  return result;
}

- (SBHIconGridRange)gridRangeForIcon:(id)icon gridCellInfoOptions:(unint64_t)options
{
  iconCopy = icon;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v8 = [(SBIconListModel *)self gridRangeForIcon:iconCopy gridCellInfo:v7];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.size = v12;
  result.cellIndex = v11;
  return result;
}

- (id)iconsForGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  size = range.size;
  cellIndex = range.cellIndex;
  infoCopy = info;
  v8 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:SBHIconGridSizeGetArea(size)];
  gridSize = [infoCopy gridSize];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__SBIconListModel_iconsForGridRange_gridCellInfo___block_invoke;
  v14[3] = &unk_1E808DE60;
  v15 = infoCopy;
  selfCopy = self;
  v17 = v8;
  LOWORD(self) = gridSize;
  v10 = v8;
  v11 = infoCopy;
  SBHIconGridRangeEnumerateCellIndexes(cellIndex, size, self, v14);
  array = [v10 array];

  return array;
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

- (id)iconsForGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options
{
  v4 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v8 = [(SBIconListModel *)self iconsForGridRange:cellIndex gridCellInfo:v4, v7];

  return v8;
}

- (BOOL)hasIconsInGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  size = range.size;
  cellIndex = range.cellIndex;
  infoCopy = info;
  gridSize = [infoCopy gridSize];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__SBIconListModel_hasIconsInGridRange_gridCellInfo___block_invoke;
  v10[3] = &unk_1E808E400;
  v8 = infoCopy;
  v11 = v8;
  v12 = &v13;
  SBHIconGridRangeEnumerateCellIndexes(cellIndex, *&size, gridSize, v10);
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

- (BOOL)areIconsInGridRangeFullyContained:(SBHIconGridRange)contained gridCellInfo:(id)info
{
  v4 = *&contained.size.columns;
  cellIndex = contained.cellIndex;
  v25 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  infoCopy = [(SBIconListModel *)self iconsForGridRange:cellIndex gridCellInfo:v4, infoCopy];
  gridSize = [infoCopy gridSize];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = infoCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    v14 = gridSize;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(SBIconListModel *)self gridRangeForIcon:*(*(&v20 + 1) + 8 * i) gridCellInfo:infoCopy, v20];
        gridSize = gridSize & 0xFFFFFFFF00000000 | v14;
        if (!SBHIconGridRangeContainsIconGridRange(cellIndex, v4, v16, v17, gridSize))
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

- (id)iconsInGridRow:(unint64_t)row gridCellInfo:(id)info
{
  infoCopy = info;
  v7 = -[SBIconListModel iconsForGridRange:gridCellInfo:](self, "iconsForGridRange:gridCellInfo:", [infoCopy gridCellIndexForCoordinate:{1, row + 1}], objc_msgSend(infoCopy, "numberOfUsedGridCellsInRow:", row) | 0x10000, infoCopy);

  return v7;
}

- (id)iconsInGridColumn:(unint64_t)column gridCellInfo:(id)info
{
  infoCopy = info;
  v7 = -[SBIconListModel iconsForGridRange:gridCellInfo:](self, "iconsForGridRange:gridCellInfo:", [infoCopy gridCellIndexForCoordinate:{column + 1, 1}], (objc_msgSend(infoCopy, "numberOfUsedGridCellsInColumn:", column) << 16) | 1, infoCopy);

  return v7;
}

- (id)iconsInGridColumnRange:(_NSRange)range gridCellInfo:(id)info
{
  length = range.length;
  location = range.location;
  infoCopy = info;
  v8 = -[SBIconListModel iconsForGridRange:gridCellInfo:](self, "iconsForGridRange:gridCellInfo:", [infoCopy gridCellIndexForCoordinate:{location + 1, 1}], length | (objc_msgSend(infoCopy, "numberOfUsedGridCellsInColumn:", location) << 16), infoCopy);

  return v8;
}

- (id)iconsInContiguousRegion:(id)region gridCellInfoOptions:(unint64_t)options
{
  regionCopy = region;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v8 = [(SBIconListModel *)self iconsInContiguousRegion:regionCopy gridCellInfo:v7];

  return v8;
}

- (id)iconsInContiguousRegion:(id)region startingAtGridCellIndex:(unint64_t)index gridCellInfo:(id)info
{
  infoCopy = info;
  v9 = MEMORY[0x1E695DFA0];
  regionCopy = region;
  v11 = objc_alloc_init(v9);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __80__SBIconListModel_iconsInContiguousRegion_startingAtGridCellIndex_gridCellInfo___block_invoke;
  v19 = &unk_1E808E428;
  v20 = infoCopy;
  selfCopy = self;
  v22 = v11;
  indexCopy = index;
  v12 = v11;
  v13 = infoCopy;
  [regionCopy enumerateGridCellIndexesUsingBlock:&v16];

  array = [v12 array];

  return array;
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

- (id)iconsAtGridCellIndexes:(id)indexes gridCellInfo:(id)info
{
  infoCopy = info;
  v7 = MEMORY[0x1E696AD50];
  indexesCopy = indexes;
  v9 = objc_alloc_init(v7);
  numberOfIcons = [(SBIconListModel *)self numberOfIcons];
  gridSize = [infoCopy gridSize];
  usedGridRange = [infoCopy usedGridRange];
  v14 = SBHIconGridRangeMaxCellIndex(usedGridRange, v13, gridSize);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __55__SBIconListModel_iconsAtGridCellIndexes_gridCellInfo___block_invoke;
  v22 = &unk_1E808E450;
  v23 = infoCopy;
  v24 = v9;
  v25 = v14;
  v26 = numberOfIcons;
  v15 = v9;
  v16 = infoCopy;
  [indexesCopy enumerateIndexesUsingBlock:&v19];

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

- (id)gridCellIndexesForIconsIntersectingGridRange:(SBHIconGridRange)range gridCellInfoOptions:(unint64_t)options
{
  v4 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v7 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v8 = [(SBIconListModel *)self gridCellIndexesForIconsIntersectingGridRange:cellIndex gridCellInfo:v4, v7];

  return v8;
}

- (id)gridCellIndexesForIconsIntersectingGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  v4 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  selfCopy = self;
  infoCopy = [(SBIconListModel *)self iconsForGridRange:cellIndex gridCellInfo:v4, infoCopy];
  v22 = infoCopy;
  gridSize = [infoCopy gridSize];
  v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = infoCopy;
  v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    v15 = gridSize;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [(SBIconListModel *)selfCopy gridRangeForIcon:*(*(&v25 + 1) + 8 * i) gridCellInfo:v22];
        v19 = v18;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __77__SBIconListModel_gridCellIndexesForIconsIntersectingGridRange_gridCellInfo___block_invoke;
        v23[3] = &unk_1E808C408;
        v24 = v11;
        gridSize = gridSize & 0xFFFFFFFF00000000 | v15;
        SBHIconGridRangeEnumerateCellIndexes(v17, v19, gridSize, v23);
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
  numberOfUsedRows = [v2 numberOfUsedRows];

  return numberOfUsedRows;
}

- (unint64_t)numberOfUsedColumns
{
  v2 = [(SBIconListModel *)self gridCellInfoWithOptions:0];
  numberOfUsedColumns = [v2 numberOfUsedColumns];

  return numberOfUsedColumns;
}

- (unint64_t)numberOfUsedGridCells
{
  layoutExcludedIcons = [(SBIconListModel *)self layoutExcludedIcons];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SBIconListModel_numberOfUsedGridCells__block_invoke;
  v7[3] = &unk_1E808E478;
  v4 = layoutExcludedIcons;
  v8 = v4;
  selfCopy = self;
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
  _rotatedIconListModel = [(SBIconListModel *)self _rotatedIconListModel];
  icons = [(SBIconListModel *)self icons];
  icons2 = [_rotatedIconListModel icons];
  v6 = [icons isEqualToArray:icons2];

  return v6;
}

- (BOOL)isValidGridRange:(SBHIconGridRange)range gridCellInfo:(id)info
{
  size = range.size;
  cellIndex = range.cellIndex;
  gridSize = [info gridSize];

  return SBHIconGridRangeContainsIconGridRange(0, gridSize, cellIndex, size, gridSize);
}

- (BOOL)isValidGridRange:(SBHIconGridRange)range options:(unint64_t)options
{
  size = range.size;
  cellIndex = range.cellIndex;
  v6 = [(SBIconListModel *)self gridSizeWithOptions:options];

  return SBHIconGridRangeContainsIconGridRange(0, *&v6, cellIndex, size, v6.columns);
}

- (id)layoutDescriptionWithOptions:(unint64_t)options
{
  v3 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  layoutDescription = [v3 layoutDescription];

  return layoutDescription;
}

- (id)changeGridSizeClassOfContainedIcon:(id)icon toGridSizeClass:(id)class gridCellInfoOptions:(unint64_t)options
{
  v30[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  classCopy = class;
  v11 = [(SBIconListModel *)self indexForIcon:iconCopy];
  gridSizeClass = [iconCopy gridSizeClass];
  if (gridSizeClass == classCopy || ([classCopy isEqualToString:gridSizeClass] & 1) != 0)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v14 = NSStringFromSelector(a2);
  v15 = [(SBIconListModel *)self startCoalescingContentChangesForReason:v14];

  v16 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
  v17 = [v16 gridCellIndexForIconIndex:v11];
  v18 = [(SBIconListModel *)self bestGridCellIndexForInsertingIconOfGridSizeClass:classCopy atGridCellIndex:v17 gridCellInfo:v16];
  if (v18 != v17)
  {
    v19 = [(SBIconListModel *)self moveContainedIcon:iconCopy toGridCellIndex:v18 gridCellInfoOptions:options mutationOptions:0x1000000];
  }

  if (!SBHIconGridSizeEqualToIconGridSize([(SBIconListModel *)self gridSizeForGridSizeClass:gridSizeClass gridCellInfoOptions:options], [(SBIconListModel *)self gridSizeForGridSizeClass:classCopy gridCellInfoOptions:options]) && [(SBIconListModel *)self usesContiguousRegionReflowingWithGridCellInfo:v16 gridCellInfoOptions:options mutationOptions:0])
  {
    [(SBIconListModel *)self reflowIconsForResizingIcon:iconCopy atGridCellIndex:v18 toGridSizeClass:classCopy gridCellInfoOptions:options];
  }

  [iconCopy setGridSizeClass:classCopy];
  if (!gridSizeClass)
  {
    v20 = 1;
    if (classCopy)
    {
      goto LABEL_11;
    }

LABEL_13:
    v21 = 1;
    goto LABEL_14;
  }

  v20 = [gridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"];
  if (!classCopy)
  {
    goto LABEL_13;
  }

LABEL_11:
  v21 = [classCopy isEqualToString:@"SBHIconGridSizeClassDefault"];
LABEL_14:
  if (v20 != v21)
  {
    [(SBIconListModel *)self updateHasNonDefaultSizeClassIcons];
  }

  v30[0] = iconCopy;
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

  [(SBIconListModel *)self removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:options];
  [(SBIconListModel *)self markIconStateDirty];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90__SBIconListModel_changeGridSizeClassOfContainedIcon_toGridSizeClass_gridCellInfoOptions___block_invoke_2;
  v26[3] = &unk_1E808E4A0;
  v26[4] = self;
  v27 = iconCopy;
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

- (void)addIconsOfClass:(Class)class toSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  setCopy = set;
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
          [setCopy addObject:{v12, v14}];
        }

        if ([v12 isFolderIcon])
        {
          folder = [v12 folder];
          [folder addIconsOfClass:class toSet:setCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(SBIconIndexMutableList *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)addIconsPassingTest:(id)test toSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  testCopy = test;
  setCopy = set;
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
      if (testCopy[2](testCopy, v13, &v15))
      {
        [setCopy addObject:v13];
      }

      if (v15)
      {
        break;
      }

      if ([v13 isFolderIcon])
      {
        folder = [v13 folder];
        [folder addIconsPassingTest:testCopy toSet:setCopy];
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

- (id)iconsOfClass:(Class)class
{
  v5 = objc_opt_new();
  [(SBIconListModel *)self addIconsOfClass:class toSet:v5];

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
            folder = [v6 folder];
            isIconStateDirty = [folder isIconStateDirty];

            if (isIconStateDirty)
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

- (void)markIconStateDirtyWithOptions:(unint64_t)options
{
  if ((options & 0x20000000) == 0)
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
          folder = [v8 folder];
          [folder markIconStateClean];
        }
      }

      v5 = [(SBIconIndexMutableList *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  _rotatedIconListModelIfApplicable = [(SBIconListModel *)self _rotatedIconListModelIfApplicable];
  [_rotatedIconListModelIfApplicable markIconStateClean];
}

- (void)sortUsingIconOrder:(id)order
{
  v16 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [orderCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(orderCopy);
        }

        v7 = v10 + 1;
        [(SBIconIndexMutableList *)self->_icons moveNode:*(*(&v11 + 1) + 8 * v9++) toIndex:v10++];
      }

      while (v6 != v9);
      v6 = [orderCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)sortByLayoutOrderWithGridCellInfoOptions:(unint64_t)options
{
  if ([(SBIconListModel *)self hasFixedIconLocationsWithGridCellInfoOptions:?])
  {
    v5 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:options];
    v7 = v5;
    if (v5 == self)
    {
      v6 = [(SBIconListModel *)self gridCellInfoWithOptions:options];
      [(SBIconListModel *)self sortByLayoutOrderWithGridCellInfo:v6];
    }

    else
    {
      [(SBIconListModel *)v5 sortByLayoutOrderWithGridCellInfoOptions:options];
    }
  }
}

- (void)sortByLayoutOrderWithGridCellInfo:(id)info
{
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  numberOfUsedRows = [(SBIconListModel *)self numberOfUsedRows];
  v7 = numberOfUsedRows * [infoCopy gridSize];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [infoCopy iconIndexForGridCellIndex:i];
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
  array = [v5 array];
  [(SBIconIndexMutableList *)icons setNodes:array];
}

- (void)sortByIconGridSizeAreaWithGridCellInfoOptions:(unint64_t)options
{
  v5 = [(SBIconListModel *)self _targetListForGridCellInfoOptions:?];
  v6 = v5;
  if (v5 == self)
  {
    icons = [(SBIconListModel *)self icons];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__SBIconListModel_sortByIconGridSizeAreaWithGridCellInfoOptions___block_invoke;
    v9[3] = &unk_1E808E0B8;
    v9[4] = self;
    v9[5] = options;
    v8 = [icons sortedArrayUsingComparator:v9];
    [(SBIconIndexMutableList *)self->_icons setNodes:v8];
  }

  else
  {
    [(SBIconListModel *)v5 sortByLayoutOrderWithGridCellInfoOptions:options];
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

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  date = [MEMORY[0x1E695DF00] date];
  [(SBIconListModel *)self setHidden:hiddenCopy byUser:1 hiddenDate:date];
}

- (void)setHidden:(BOOL)hidden byUser:(BOOL)user hiddenDate:(id)date
{
  userCopy = user;
  hiddenCopy = hidden;
  dateCopy = date;
  v9 = dateCopy;
  if (hiddenCopy && userCopy)
  {
    if (dateCopy)
    {
      selfCopy2 = self;
      v11 = v9;
LABEL_8:
      [(SBIconListModel *)selfCopy2 setHiddenDate:v11];
      goto LABEL_10;
    }

    date = [MEMORY[0x1E695DF00] date];
    [(SBIconListModel *)self setHiddenDate:date];
  }

  else if (userCopy && !hiddenCopy)
  {
    selfCopy2 = self;
    v11 = 0;
    goto LABEL_8;
  }

LABEL_10:
  if (self->_hidden != hiddenCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__SBIconListModel_setHidden_byUser_hiddenDate___block_invoke;
    v14[3] = &unk_1E808D788;
    v14[4] = self;
    [(SBIconListModel *)self _notifyListObservers:v14];
    self->_hidden = hiddenCopy;
    if (hiddenCopy)
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
  hiddenDate = [(SBIconListModel *)self hiddenDate];
  v3 = hiddenDate != 0;

  return v3;
}

- (void)setFocusModeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([(NSSet *)identifiersCopy count])
  {
    v4 = identifiersCopy;
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

- (void)updateForFocusModeActivated:(BOOL)activated wantsListVisible:(BOOL)visible
{
  if (activated)
  {
    v5 = !visible;
  }

  else
  {
    v5 = [(SBIconListModel *)self isHiddenByUser:activated];
  }

  [(SBIconListModel *)self setHidden:v5 byUser:0 hiddenDate:0];
}

- (void)setAllowedGridSizeClasses:(id)classes
{
  classesCopy = classes;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [classesCopy copy];
    allowedGridSizeClasses = self->_allowedGridSizeClasses;
    self->_allowedGridSizeClasses = v4;

    [(SBIconListModel *)self removeAnyIconsWithDisallowedGridSizeClasses];
    [(SBIconListModel *)self->_rotatedIcons setAllowedGridSizeClasses:classesCopy];
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
      gridSizeClass = [v9 gridSizeClass];
      if (![(SBIconListModel *)self isAllowedToContainIconGridSizeClass:gridSizeClass])
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

- (void)setGridSizeClassDomain:(id)domain
{
  domainCopy = domain;
  if (self->_gridSizeClassDomain != domainCopy)
  {
    objc_storeStrong(&self->_gridSizeClassDomain, domain);
    [(SBIconListModel *)self removeAnyIconsWithDisallowedGridSizeClasses];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__SBIconListModel_setGridSizeClassDomain___block_invoke;
    v7[3] = &unk_1E808CD70;
    v6 = domainCopy;
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

- (void)setRotatedLayoutClusterGridSizeClass:(id)class
{
  classCopy = class;
  v5 = classCopy;
  if (self->_rotatedLayoutClusterGridSizeClass != classCopy)
  {
    v8 = classCopy;
    classCopy = [classCopy isEqualToString:?];
    v5 = v8;
    if ((classCopy & 1) == 0)
    {
      v6 = [v8 copy];
      rotatedLayoutClusterGridSizeClass = self->_rotatedLayoutClusterGridSizeClass;
      self->_rotatedLayoutClusterGridSizeClass = v6;

      classCopy = [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](classCopy, v5);
}

- (void)setIconLayoutBehavior:(unint64_t)behavior
{
  if (self->_iconLayoutBehavior != behavior)
  {
    self->_iconLayoutBehavior = behavior;
    [(SBIconListModel *)self _invalidateLayoutWithGridCellInfoOptions:0 mutationOptions:0];
  }
}

- (void)setOverflowSlotCount:(unint64_t)count
{
  if (self->_overflowSlotCount != count)
  {
    self->_overflowSlotCount = count;
    [(SBIconListModel *)self markIconStateDirty];
  }
}

- (void)addListObserver:(id)observer
{
  observerCopy = observer;
  listObservers = self->_listObservers;
  v8 = observerCopy;
  if (!listObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_listObservers;
    self->_listObservers = weakObjectsHashTable;

    observerCopy = v8;
    listObservers = self->_listObservers;
  }

  [(NSHashTable *)listObservers addObject:observerCopy];
}

- (void)_notifyListObservers:(id)observers
{
  v15 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
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

        observersCopy[2](observersCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_notifyListObserversWillAddIcon:(id)icon
{
  iconCopy = icon;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBIconListModel__notifyListObserversWillAddIcon___block_invoke;
  v6[3] = &unk_1E808E4A0;
  v6[4] = self;
  v7 = iconCopy;
  v5 = iconCopy;
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

- (void)_notifyListObserversDidAddIcon:(id)icon
{
  v8 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v4 = MEMORY[0x1E695DEC8];
  iconCopy2 = icon;
  v6 = [v4 arrayWithObjects:&iconCopy count:1];

  [(SBIconListModel *)self _notifyListObserversDidAddIcons:v6 didRemoveIcons:0 movedIcons:0 didReplaceIcon:0 withIcon:0 options:0, iconCopy, v8];
}

- (void)_notifyListObserversWillRemoveIcon:(id)icon
{
  iconCopy = icon;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SBIconListModel__notifyListObserversWillRemoveIcon___block_invoke;
  v6[3] = &unk_1E808E4A0;
  v6[4] = self;
  v7 = iconCopy;
  v5 = iconCopy;
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

- (void)_notifyListObserversDidRemoveIcon:(id)icon
{
  v8 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v4 = MEMORY[0x1E695DEC8];
  iconCopy2 = icon;
  v6 = [v4 arrayWithObjects:&iconCopy count:1];

  [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:v6 movedIcons:0 didReplaceIcon:0 withIcon:0 options:0, iconCopy, v8];
}

- (void)_notifyListObserversDidMoveIcon:(id)icon options:(unint64_t)options
{
  v10 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v6 = MEMORY[0x1E695DEC8];
  iconCopy2 = icon;
  v8 = [v6 arrayWithObjects:&iconCopy count:1];

  [(SBIconListModel *)self _notifyListObserversDidAddIcons:0 didRemoveIcons:0 movedIcons:v8 didReplaceIcon:0 withIcon:0 options:options, iconCopy, v10];
}

- (void)_notifyListObserversDidAddIcons:(id)icons didRemoveIcons:(id)removeIcons movedIcons:(id)movedIcons didReplaceIcon:(id)icon withIcon:(id)withIcon options:(unint64_t)options
{
  optionsCopy = options;
  iconsCopy = icons;
  removeIconsCopy = removeIcons;
  movedIconsCopy = movedIcons;
  iconCopy = icon;
  withIconCopy = withIcon;
  if ((optionsCopy & 0x800000) == 0)
  {
    v19 = [(SBIconListModel *)self activeTransactionCreatingIfNecessary:0];
    v20 = v19;
    if (v19)
    {
      [v19 queueNotifyingListObserversDidAddIcons:iconsCopy didRemoveIcons:removeIconsCopy movedIcons:movedIconsCopy didReplaceIcon:iconCopy withIcon:withIconCopy];
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __109__SBIconListModel__notifyListObserversDidAddIcons_didRemoveIcons_movedIcons_didReplaceIcon_withIcon_options___block_invoke;
      v21[3] = &unk_1E808E4C8;
      v21[4] = self;
      v22 = iconsCopy;
      v23 = removeIconsCopy;
      v24 = movedIconsCopy;
      v25 = iconCopy;
      v26 = withIconCopy;
      [(SBIconListModel *)self _notifyListObservers:v21];
    }
  }
}

- (void)_notifyListObserver:(id)observer didAddIcons:(id)icons didRemoveIcons:(id)removeIcons movedIcons:(id)movedIcons didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  v52 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  iconsCopy = icons;
  removeIconsCopy = removeIcons;
  movedIconsCopy = movedIcons;
  iconCopy = icon;
  withIconCopy = withIcon;
  v20 = withIconCopy;
  if (iconCopy && withIconCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [observerCopy iconList:self didReplaceIcon:iconCopy withIcon:v20];
  }

  v36 = iconsCopy;
  if (iconsCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = iconsCopy;
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

          [observerCopy iconList:self didAddIcon:*(*(&v45 + 1) + 8 * v25++)];
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v23);
    }

    iconsCopy = v36;
  }

  if (removeIconsCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = removeIconsCopy;
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

          [observerCopy iconList:self didRemoveIcon:*(*(&v41 + 1) + 8 * v30++)];
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v28);
    }

    iconsCopy = v36;
  }

  if (movedIconsCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = movedIconsCopy;
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

          [observerCopy iconList:self didMoveIcon:*(*(&v37 + 1) + 8 * v35++)];
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v33);
    }

    iconsCopy = v36;
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

+ (BOOL)isListModelNodeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = [identifierCopy hasPrefix:@"list:"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)listModelNodeIdentifierForUniqueIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  identifierCopy = [[v3 alloc] initWithFormat:@"list:%@", identifierCopy];

  return identifierCopy;
}

- (BOOL)containsNodeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nodeIdentifier = [(SBIconListModel *)self nodeIdentifier];
  v6 = [nodeIdentifier isEqual:identifierCopy];

  v7 = (v6 & 1) != 0 || [(SBIconIndexMutableList *)self->_icons containsNodeIdentifier:identifierCopy];
  return v7;
}

- (id)containedNodeIdentifiers
{
  containedNodeIdentifiers = [(SBIconIndexMutableList *)self->_icons containedNodeIdentifiers];
  nodeIdentifier = [(SBIconListModel *)self nodeIdentifier];
  [containedNodeIdentifiers addObject:nodeIdentifier];

  return containedNodeIdentifiers;
}

- (id)indexPathsForContainedNodeIdentifier:(id)identifier prefixPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  nodeIdentifier = [(SBIconListModel *)self nodeIdentifier];
  v9 = [nodeIdentifier isEqual:identifierCopy];

  if (v9)
  {
    [MEMORY[0x1E695DFA8] setWithObject:pathCopy];
  }

  else
  {
    [(SBIconIndexMutableList *)self->_icons indexPathsForContainedNodeIdentifier:identifierCopy prefixPath:pathCopy];
  }
  v10 = ;

  return v10;
}

- (id)nodesAlongIndexPath:(id)path consumedIndexes:(unint64_t)indexes
{
  v5 = [(SBIconIndexMutableList *)self->_icons nodesAlongIndexPath:path consumedIndexes:indexes];
  [v5 insertObject:self atIndex:0];

  return v5;
}

- (void)addNodeObserver:(id)observer
{
  observerCopy = observer;
  if (![(NSHashTable *)self->_nodeObservers containsObject:?])
  {
    nodeObservers = self->_nodeObservers;
    if (!nodeObservers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v6 = self->_nodeObservers;
      self->_nodeObservers = weakObjectsHashTable;

      nodeObservers = self->_nodeObservers;
    }

    [(NSHashTable *)nodeObservers addObject:observerCopy];
  }
}

- (void)enumerateNodeObserversUsingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)nodeDescriptionWithPrefix:(id)prefix
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD60];
  prefixCopy = prefix;
  v6 = [v4 stringWithString:prefixCopy];
  v7 = objc_autoreleasePoolPush();
  v8 = &stru_1F3D472A8;
  if (prefixCopy)
  {
    v8 = prefixCopy;
  }

  v9 = v8;

  nodeIdentifier = [(SBIconListModel *)self nodeIdentifier];
  v11 = SBIconIndexDebugStringForNodeIdentifier(nodeIdentifier);
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

- (void)list:(id)list didAddContainedNodeIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (self->_icons == list && [identifiersCopy count])
  {
    activeTransaction = [(SBIconListModel *)self activeTransaction];
    v9 = activeTransaction;
    if (activeTransaction)
    {
      [activeTransaction addNodeIdentifiers:v7];
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

- (void)list:(id)list didRemoveContainedNodeIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (self->_icons == list && [identifiersCopy count])
  {
    activeTransaction = [(SBIconListModel *)self activeTransaction];
    v9 = activeTransaction;
    if (activeTransaction)
    {
      [activeTransaction removeNodeIdentifiers:v7];
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

- (void)listDidMoveNodes:(id)nodes
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_icons == nodes)
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

- (void)iconList:(id)list willAddIcon:(id)icon
{
  if (self->_rotatedIcons == list)
  {
    iconCopy = icon;
    [(SBIconListModel *)self updateGridSizeForAddedIcon:iconCopy removedIcon:0];
    [(SBIconListModel *)self _notifyListObserversWillAddIcon:iconCopy];
  }
}

- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  if (self->_rotatedIcons == list)
  {
    [(SBIconListModel *)self updateGridSizeForAddedIcon:withIcon removedIcon:icon];
  }
}

- (void)setBadgeBehaviorProvider:(id)provider
{
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_badgeBehaviorProvider);

  if (WeakRetained != providerCopy)
  {
    v6 = objc_loadWeakRetained(&self->_badgeBehaviorProvider);
    objc_storeWeak(&self->_badgeBehaviorProvider, providerCopy);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__SBIconListModel_setBadgeBehaviorProvider___block_invoke;
    v8[3] = &unk_1E808CD70;
    v9 = v6;
    v7 = v6;
    [(SBIconListModel *)self enumerateFolderIconsUsingBlock:v8];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithIconListModel:self copyLeafIcons:0];
}

- (id)_iconAtIndex:(unint64_t)index
{
  if ([(SBIconIndexMutableList *)self->_icons count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBIconIndexMutableList *)self->_icons nodeAtIndex:index];
  }

  return v5;
}

- (void)_coalesceChangesWithRequestID:(id)d changeBlock:(id)block
{
  blockCopy = block;
  v7 = [(SBIconListModel *)self startCoalescingContentChangesForReason:d];
  blockCopy[2](blockCopy);

  [v7 invalidate];
}

- (id)activeTransactionCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  activeTransaction = [(SBIconListModel *)self activeTransaction];
  if (!activeTransaction && necessaryCopy)
  {
    activeTransaction = [[_SBIconListModelTransaction alloc] initWithListModel:self];
    [(SBIconListModel *)self setActiveTransaction:activeTransaction];
  }

  return activeTransaction;
}

- (id)startCoalescingContentChangesForReason:(id)reason
{
  reasonCopy = reason;
  v5 = [(SBIconListModel *)self activeTransactionCreatingIfNecessary:1];
  v6 = [[SBIconListModelTransactionAssertion alloc] initWithListModel:self reason:reasonCopy];

  [v5 addAssertion:v6];

  return v6;
}

- (void)removeTransactionAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = [(SBIconListModel *)self activeTransactionCreatingIfNecessary:0];
  [v5 removeAssertion:assertionCopy];

  if (v5 && ![v5 assertionCount])
  {
    [(SBIconListModel *)self setActiveTransaction:0];
    [v5 commitChanges];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListModel *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListModel *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  effectiveGridSizeClassDomain = [(SBIconListModel *)self effectiveGridSizeClassDomain];
  succinctDescriptionBuilder = [(SBIconListModel *)self succinctDescriptionBuilder];
  uniqueIdentifier = [(SBIconListModel *)self uniqueIdentifier];
  [succinctDescriptionBuilder appendString:uniqueIdentifier withName:@"uniqueIdentifier"];

  v7 = [succinctDescriptionBuilder appendInteger:-[SBIconIndexMutableList count](self->_icons withName:{"count"), @"count"}];
  WeakRetained = objc_loadWeakRetained(&self->_folder);
  v9 = [succinctDescriptionBuilder appendPointer:WeakRetained withName:@"folder"];

  v10 = [succinctDescriptionBuilder appendBool:-[SBIconListModel isHidden](self withName:"isHidden") ifEqualTo:{@"hidden", 1}];
  v11 = [succinctDescriptionBuilder appendBool:-[SBIconListModel isHiddenByUser](self withName:"isHiddenByUser") ifEqualTo:{@"hiddenByUser", 1}];
  overflowSlotCount = [(SBIconListModel *)self overflowSlotCount];
  if (overflowSlotCount)
  {
    v13 = [succinctDescriptionBuilder appendInteger:overflowSlotCount withName:@"overflowSlotCount"];
  }

  v14 = SBHStringForIconGridSize(*&self->_gridSize);
  v15 = [succinctDescriptionBuilder appendObject:v14 withName:@"gridSize"];

  iconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
  v17 = [iconGridSizeClassSizes descriptionWithGridSizeClassDomain:effectiveGridSizeClassDomain];
  v18 = [succinctDescriptionBuilder appendObject:v17 withName:@"gridSizeClassSizes"];

  v19 = [(SBHIconGridSizeClassSet *)self->_allowedGridSizeClasses descriptionWithGridSizeClassDomain:effectiveGridSizeClassDomain];
  v20 = [succinctDescriptionBuilder appendObject:v19 withName:@"allowedGridSizeClasses"];

  rotatedLayoutClusterGridSizeClass = [(SBIconListModel *)self rotatedLayoutClusterGridSizeClass];
  v22 = rotatedLayoutClusterGridSizeClass;
  if (rotatedLayoutClusterGridSizeClass && ([rotatedLayoutClusterGridSizeClass isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    v23 = [effectiveGridSizeClassDomain descriptionForGridSizeClass:v22];
    [succinctDescriptionBuilder appendString:v23 withName:@"rotatedLayoutClusterGridSizeClass"];
  }

  v24 = [succinctDescriptionBuilder appendBool:-[SBIconListModel allowsRotatedLayout](self withName:"allowsRotatedLayout") ifEqualTo:{@"allowsRotatedLayout", 1}];
  v25 = [succinctDescriptionBuilder appendBool:-[SBIconListModel allowsIndependentRotatedLayout](self withName:"allowsIndependentRotatedLayout") ifEqualTo:{@"allowsIndependentRotatedLayout", 0}];
  focusModeIdentifiers = [(SBIconListModel *)self focusModeIdentifiers];
  if ([focusModeIdentifiers count])
  {
    v27 = MEMORY[0x1E696AEC0];
    allObjects = [focusModeIdentifiers allObjects];
    v29 = [allObjects componentsJoinedByString:{@", "}];
    v30 = [v27 stringWithFormat:@"{%@}", v29];
    [succinctDescriptionBuilder appendString:v30 withName:@"focusModeIdentifiers"];
  }

  iconLayoutBehavior = [(SBIconListModel *)self iconLayoutBehavior];
  if (iconLayoutBehavior)
  {
    v32 = SBHStringForIconLayoutBehavior(iconLayoutBehavior);
    [succinctDescriptionBuilder appendString:v32 withName:@"iconLayoutBehavior"];
  }

  v33 = SBHStringForFixedIconLocationBehavior([(SBIconListModel *)self fixedIconLocationBehavior]);
  [succinctDescriptionBuilder appendString:v33 withName:@"fixedIconLocationBehavior"];

  v34 = SBHStringForIconDisplacementBehavior([(SBIconListModel *)self iconDisplacementBehavior]);
  [succinctDescriptionBuilder appendString:v34 withName:@"iconDisplacementBehavior"];

  v35 = [succinctDescriptionBuilder appendBool:-[SBIconListModel isIconStateDirty](self withName:"isIconStateDirty") ifEqualTo:{@"isIconStateDirty", 1}];

  return succinctDescriptionBuilder;
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

- (id)miniGridViewWithIconImageInfo:(SBIconImageInfo *)info cellSpacing:(CGSize)spacing imageAppearance:(id)appearance options:(unint64_t)options cellProvider:(id)provider
{
  v12 = v10;
  v13 = v9;
  v51 = v8;
  v14 = v7;
  height = spacing.height;
  width = spacing.width;
  infoCopy = info;
  optionsCopy = options;
  gridSize = [(SBIconListModel *)self gridSize];
  v21 = HIWORD(*&gridSize);
  if (gridSize.columns)
  {
    v22 = v13 * (gridSize.columns - 1);
  }

  else
  {
    v22 = 0.0;
  }

  selfCopy = self;
  numberOfIcons = [(SBIconListModel *)self numberOfIcons];
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  columns = gridSize.columns;
  v24 = objc_alloc_init(SBHIconMiniGridView);
  v25 = v24;
  v44 = HIWORD(*&gridSize);
  v26 = v12 * (v21 - 1);
  if (*&gridSize < 0x10000)
  {
    v26 = 0.0;
  }

  [(SBHIconMiniGridView *)v24 setBounds:0.0, 0.0, v22 + gridSize.columns * width, v26 + v21 * height];
  [(SBHIconMiniGridView *)v25 setGridSize:*&gridSize];
  v27 = numberOfIcons;
  [(SBHIconMiniGridView *)v25 setCellCount:numberOfIcons];
  v53 = infoCopy;
  [(SBHIconMiniGridView *)v25 setImageAppearance:infoCopy];
  if (*&gridSize >= 0x10000)
  {
    v28 = gridSize.columns;
    v47 = 0;
    v46 = 0;
    v48 = width + v13;
    v43 = gridSize.columns;
    v42 = gridSize.columns - 1;
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

      v32 = [(SBIconListModel *)selfCopy iconAtIndex:v31];
      v33 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:v53];
      if (optionsCopy)
      {
        v34 = optionsCopy[2](optionsCopy, v32, v33, appearance, width, height, v14, v51);
        if (v34)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v34 = [v32 iconLayerViewWithInfo:v33 traitCollection:appearance options:1 priority:{width, height, v14, v51}];
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
          if (userInterfaceLayoutDirection == 1)
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

- (id)miniGridViewWithListLayout:(id)layout traitCollection:(id)collection options:(unint64_t)options
{
  v8 = MEMORY[0x1E69DD1B8];
  layoutCopy = layout;
  v10 = [v8 sbh_iconImageAppearanceFromTraitCollection:collection];
  v11 = [(SBIconListModel *)self miniGridViewWithListLayout:layoutCopy imageAppearance:v10 options:options];

  return v11;
}

- (id)miniGridViewWithListLayout:(id)layout imageAppearance:(id)appearance options:(unint64_t)options cellProvider:(id)provider
{
  providerCopy = provider;
  appearanceCopy = appearance;
  layoutCopy = layout;
  [layoutCopy iconImageInfo];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = SBHIconListLayoutFolderIconGridCellSize(layoutCopy);
  v21 = v20;
  v22 = v18 * (v19 / v14);
  v23 = SBHIconListLayoutFolderIconGridCellSpacing(layoutCopy);
  v25 = v24;

  v26 = [(SBIconListModel *)self miniGridViewWithIconImageInfo:appearanceCopy cellSpacing:options imageAppearance:providerCopy options:v19 cellProvider:v21, v16, v22, v23, v25];

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