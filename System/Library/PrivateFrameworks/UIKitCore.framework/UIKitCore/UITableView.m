@interface UITableView
+ (void)_ensureInitializeSystemAppearanceModifications;
- (BOOL)_allowsEffectiveFocus;
- (BOOL)_allowsEffectiveMultipleSelection;
- (BOOL)_allowsEffectiveSelection;
- (BOOL)_allowsEffectiveSelectionOrCustomActionAtIndexPath:(id)a3;
- (BOOL)_allowsSelectionOfPendingSelectionIndexPath:(id)a3;
- (BOOL)_beginReorderingForCell:(id)a3 touch:(id)a4;
- (BOOL)_beginTrackingWithEvent:(id)a3;
- (BOOL)_canBeginDragAtPoint:(CGPoint)a3 indexPath:(id)a4;
- (BOOL)_canBeginMenuInteractionAtLocation:(CGPoint)a3;
- (BOOL)_canEditRowAtIndexPath:(id)a3;
- (BOOL)_canFocusCell:(id)a3;
- (BOOL)_canHandleDropSession:(id)a3;
- (BOOL)_canMoveRowAtIndexPath:(id)a3;
- (BOOL)_canPerformAction:(SEL)a3 forCell:(id)a4 sender:(id)a5;
- (BOOL)_canPerformPrimaryActionForRowAtIndexPath:(id)a3;
- (BOOL)_canRowBeIncludedInMultipleSelection:(id)a3;
- (BOOL)_canSelectRowContainingHitView:(id)a3;
- (BOOL)_cellPrefetchingAllowed;
- (BOOL)_commitPlaceholderInsertionWithContext:(id)a3 dataSourceUpdates:(id)a4;
- (BOOL)_defaultAllowsFocus;
- (BOOL)_defaultAllowsFocusDuringEditing;
- (BOOL)_delegateAllowsHighlightingItemAtIndexPath:(id)a3;
- (BOOL)_delegateWantsFooterForSection:(int64_t)a3;
- (BOOL)_delegateWantsFooterTitleForSection:(int64_t)a3;
- (BOOL)_delegateWantsHeaderForSection:(int64_t)a3;
- (BOOL)_delegateWantsHeaderTitleForSection:(int64_t)a3;
- (BOOL)_dragAndDropUsedForReordering;
- (BOOL)_dragSessionAllowsMoveOperation:(id)a3;
- (BOOL)_dragSessionIsRestrictedToDraggingApplication:(id)a3;
- (BOOL)_effectiveDefaultAllowsFocus;
- (BOOL)_estimatesHeights;
- (BOOL)_estimatesRowHeights;
- (BOOL)_estimatesSectionFooterHeights;
- (BOOL)_estimatesSectionHeaderHeights;
- (BOOL)_hasContentForBarInteractions;
- (BOOL)_hasFocusedCellForIndexPath:(id)a3;
- (BOOL)_hasHeaderFooterBelowRowAtIndexPath:(id)a3;
- (BOOL)_highlightRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 usingPresentationValues:(BOOL)a6 playFeedback:(BOOL)a7;
- (BOOL)_indexPathIsValid:(id)a3;
- (BOOL)_inferFocusabilityForCell:(id)a3 atIndexPath:(id)a4;
- (BOOL)_isCellReorderable:(id)a3;
- (BOOL)_isEditingRowAtIndexPath:(id)a3;
- (BOOL)_isFirstResponderInDeletedSectionOrRow:(id)a3;
- (BOOL)_isFocusedViewInDeletedSectionOrRow:(id)a3;
- (BOOL)_isInModalViewController;
- (BOOL)_isLastRowForIndexPath:(id)a3;
- (BOOL)_isReordering;
- (BOOL)_isScrolledToTop;
- (BOOL)_isTableHeaderAutohiding;
- (BOOL)_isTopHeaderForSection:(int64_t)a3;
- (BOOL)_isUsingPresentationValues;
- (BOOL)_pathIsHidden:(id)a3;
- (BOOL)_recomputeHeightForCell:(id)a3 atIndexPath:(id)a4;
- (BOOL)_recomputeHeightForHeaderOrFooter:(BOOL)a3 view:(id)a4 inSection:(int64_t)a5;
- (BOOL)_retargetScrollAnimation;
- (BOOL)_selectionInteractionShouldBegin:(id)a3;
- (BOOL)_shouldAllowInternalDrop;
- (BOOL)_shouldApplyReadableWidthInsets;
- (BOOL)_shouldBecomeFocusedOnSelection;
- (BOOL)_shouldChangeIndexBasedOnValueChanged;
- (BOOL)_shouldConfigureCellForDisplayDuringDequeueForIndexPath:(id)a3;
- (BOOL)_shouldConsumePressEvent:(id)a3;
- (BOOL)_shouldDeselectRowsOnTouchesBegan;
- (BOOL)_shouldDisplayExtraSeparatorsAtOffset:(double *)a3;
- (BOOL)_shouldDrawDarkSeparators;
- (BOOL)_shouldDrawSeparatorAtBottomOfSectionForCellAtIndexPath:(id)a3;
- (BOOL)_shouldDrawSeparatorAtTopOfSectionForCellAtIndexPath:(id)a3;
- (BOOL)_shouldDrawTopSeparatorDueToMergedBarForCellAtIndexPath:(id)a3;
- (BOOL)_shouldHaveIndexOverlaySelectionView;
- (BOOL)_shouldIncludeRowInMultipleSelectionGroupWithCell:(id)a3 atIndexPath:(id)a4;
- (BOOL)_shouldIndentWhileEditingForRowAtIndexPath:(id)a3;
- (BOOL)_shouldRestorePreReloadScrollPositionWithFirstVisibleIndexPath:(id)a3 scrolledToTop:(BOOL)a4;
- (BOOL)_shouldReusePreviouslyFocusedTableViewSubview:(id)a3 viewType:(int)a4;
- (BOOL)_shouldSelectionFollowFocusForIndexPath:(id)a3 initiatedBySelection:(BOOL)a4;
- (BOOL)_shouldSetIndexBackgroundColorToTableBackgroundColor;
- (BOOL)_shouldShowHeadersAndFooters;
- (BOOL)_shouldShowIndexOverlays;
- (BOOL)_shouldShowMenuForCell:(id)a3;
- (BOOL)_shouldSpringLoadRowAtIndexPath:(id)a3 withContext:(id)a4;
- (BOOL)_shouldStripHeaderTopPaddingForSection:(int64_t)a3;
- (BOOL)_shouldUnionVisibleBounds;
- (BOOL)_shouldUpdateFocusInContext:(id)a3;
- (BOOL)_shouldWrapCells;
- (BOOL)_supplementariesFollowSectionContentInsets;
- (BOOL)_supportsCellPrefetching;
- (BOOL)_swipeDeletionCommitted;
- (BOOL)_visibleFooterViewsContainsView:(id)a3;
- (BOOL)_visibleHeaderViewsContainsView:(id)a3;
- (BOOL)_wantsSwipes;
- (BOOL)_wasEditingRowAtIndexPath:(id)a3;
- (BOOL)allowsFocus;
- (BOOL)allowsFocusDuringEditing;
- (BOOL)canBecomeFocused;
- (BOOL)dragInteractionEnabled;
- (BOOL)hasActiveDrag;
- (BOOL)hasActiveDrop;
- (BOOL)hasUncommittedUpdates;
- (BOOL)highlightRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5;
- (BOOL)selectionFollowsFocus;
- (BOOL)shouldDisplayTopSeparatorForRowAtIndexPath:(id)a3;
- (BOOL)swipeActionController:(id)a3 insertActionsView:(id)a4 forItemAtIndexPath:(id)a5;
- (BOOL)swipeActionController:(id)a3 mayBeginSwipeForItemAtIndexPath:(id)a4;
- (BOOL)touchesShouldCancelInContentView:(id)a3;
- (BOOL)usesVariableMargins;
- (CGPoint)_adjustFocusContentOffset:(CGPoint)a3 toShowFocusItemWithInfo:(id)a4;
- (CGPoint)_contentOffsetForLowFidelityScrollInDirection:(CGPoint)a3 duration:(double *)a4;
- (CGPoint)_contentOffsetForScrollingToRowAtIndexPath:(id)a3 atScrollPosition:(int64_t)a4;
- (CGPoint)_contentOffsetForScrollingToRowAtIndexPath:(id)a3 atScrollPosition:(int64_t)a4 usingPresentationValues:(BOOL)a5;
- (CGPoint)_validContentOffsetForProposedOffset:(CGPoint)a3;
- (CGPoint)indexBarAccessoryView:(id)a3 contentOffsetForEntry:(id)a4 atIndex:(int64_t)a5;
- (CGRect)_boundsForIndexOverlay;
- (CGRect)_calloutTargetRectForCell:(id)a3;
- (CGRect)_floatingRectForFooterInSection:(int64_t)a3 heightCanBeGuessed:(BOOL)a4;
- (CGRect)_floatingRectForHeaderInSection:(int64_t)a3 heightCanBeGuessed:(BOOL)a4;
- (CGRect)_frameForWrapper;
- (CGRect)_indexFrame;
- (CGRect)_rectForFooterInSection:(int64_t)a3 usingPresentationValues:(BOOL)a4;
- (CGRect)_rectForHeaderInSection:(int64_t)a3 usingPresentationValues:(BOOL)a4;
- (CGRect)_rectForRowAtIndexPath:(id)a3 canGuess:(BOOL)a4;
- (CGRect)_rectForRowAtIndexPath:(id)a3 usingPresentationValues:(BOOL)a4;
- (CGRect)_rectForSection:(int64_t)a3 usingPresentationValues:(BOOL)a4;
- (CGRect)_rectForTableFooterView;
- (CGRect)_rectForTableHeaderView;
- (CGRect)_tableViewRectForRowAtIndexPath:(id)a3 canGuess:(BOOL)a4;
- (CGRect)_visibleBounds;
- (CGRect)rectForFooterInSection:(NSInteger)section;
- (CGRect)rectForHeaderInSection:(NSInteger)section;
- (CGRect)rectForRowAtIndexPath:(NSIndexPath *)indexPath;
- (CGRect)rectForSection:(NSInteger)section;
- (CGSize)_contentSize;
- (CGSize)_sizeForHeaderInSection:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (Class)_intelligenceBaseClass;
- (NSArray)indexPathsForRowsInRect:(CGRect)rect;
- (NSArray)indexPathsForSelectedRows;
- (NSArray)indexPathsForVisibleRows;
- (NSArray)visibleCells;
- (NSIndexPath)indexPathForCell:(UITableViewCell *)cell;
- (NSIndexPath)indexPathForRowAtPoint:(CGPoint)point;
- (NSIndexPath)indexPathForSelectedRow;
- (NSInteger)numberOfRowsInSection:(NSInteger)section;
- (NSInteger)numberOfSections;
- (NSMutableArray)_placeholderContexts;
- (NSString)description;
- (UIColor)separatorColor;
- (UIEdgeInsets)_backgroundContentInset;
- (UIEdgeInsets)_cachedSectionIndexBarInsets;
- (UIEdgeInsets)_cellSafeAreaInsets;
- (UIEdgeInsets)_effectiveSafeAreaInsets;
- (UIEdgeInsets)_insetsForIndexBar;
- (UIEdgeInsets)_rawSectionContentInset;
- (UIEdgeInsets)_rawSeparatorInset;
- (UIEdgeInsets)_sectionContentInset;
- (UIEdgeInsets)_sectionFooterContentInsets;
- (UIEdgeInsets)_sectionHeaderContentInsets;
- (UIEdgeInsets)_tableContentInset;
- (UIEdgeInsets)separatorInset;
- (UIEdgeInsets)swipeActionController:(id)a3 extraInsetsForItemAtIndexPath:(id)a4;
- (UIEdgeInsets)swipeActionController:(id)a3 pullViewInsetsForItemAtIndexPath:(id)a4;
- (UITableView)initWithCoder:(NSCoder *)coder;
- (UITableView)initWithFrame:(CGRect)frame style:(UITableViewStyle)style;
- (UITableViewCell)cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (UITableViewCell)dequeueReusableCellWithIdentifier:(NSString *)identifier;
- (UITableViewCell)dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;
- (UITableViewDragDestinationDelegate)dragDestinationDelegate;
- (UITableViewDragSourceDelegate)dragSourceDelegate;
- (UITableViewHeaderFooterView)dequeueReusableHeaderFooterViewWithIdentifier:(NSString *)identifier;
- (UITableViewHeaderFooterView)footerViewForSection:(NSInteger)section;
- (UITableViewHeaderFooterView)headerViewForSection:(NSInteger)section;
- (_NSRange)_sectionsInRect:(CGRect)a3;
- (_NSRange)_visibleGlobalRows;
- (_NSRange)_visibleGlobalRowsInRect:(CGRect)a3;
- (_NSRange)_visibleGlobalRowsInRect:(CGRect)a3 canGuess:(BOOL)a4;
- (_UITableViewVisibleCellsUpdateRanges)_calculateVisibleCellsUpdateRangesForGlobalRowRange:(SEL)a3 createIfNecessary:(_NSRange)a4;
- (double)_backgroundInset;
- (double)_cellIndexBarExtentFromEdge;
- (double)_classicHeightForFooterInSection:(int64_t)a3;
- (double)_classicHeightForHeaderInSection:(int64_t)a3;
- (double)_classicHeightForRowAtIndexPath:(id)a3;
- (double)_clientRequestedFillerRowHeight;
- (double)_computeOffsetOfFirstVisibleCellWithIndexPath:(id)a3;
- (double)_contentBottomForScrollObservation;
- (double)_contentOffsetYForRestoringScrollPositionOfFirstVisibleRowWithContentInsetTop:(double)a3 canGuessHeights:(BOOL)a4;
- (double)_contentWidthForCell:(id)a3 forRowAtIndexPath:(id)a4;
- (double)_contentWidthForCell:(id)a3 forRowAtIndexPath:(id)a4 usingPresentationValues:(BOOL)a5;
- (double)_dataSourceHeightForFooterInSection:(int64_t)a3;
- (double)_dataSourceHeightForHeaderInSection:(int64_t)a3;
- (double)_dataSourceHeightForRowAtIndexPath:(id)a3;
- (double)_defaultFillerRowHeight;
- (double)_defaultSectionFooterHeight;
- (double)_defaultSectionHeaderHeight;
- (double)_estimatedHeightForFooterInSection:(int64_t)a3;
- (double)_estimatedHeightForHeaderInSection:(int64_t)a3;
- (double)_estimatedHeightForRowAtIndexPath:(id)a3;
- (double)_fullWidthHeaderWidth;
- (double)_headerFooterLeadingMarginWidthIsHeader:(BOOL)a3 isFirstSection:(BOOL)a4;
- (double)_headerFooterTrailingMarginWidth;
- (double)_heightForCell:(id)a3 atIndexPath:(id)a4;
- (double)_heightForFooterInSection:(int64_t)a3;
- (double)_heightForFooterView:(id)a3 inSection:(int64_t)a4;
- (double)_heightForHeaderView:(id)a3 inSection:(int64_t)a4;
- (double)_heightForRowAtIndexPath:(id)a3;
- (double)_heightForSeparator;
- (double)_heightForShadowRowAtIndexPath:(id)a3;
- (double)_heightForTableFooter;
- (double)_heightForTableHeader;
- (double)_indexBarExtentFromEdge;
- (double)_marginWidth;
- (double)_maxTitleWidthForFooterInSection:(int64_t)a3;
- (double)_maxTitleWidthForHeaderInSection:(int64_t)a3;
- (double)_paddingAboveFirstSectionHeader;
- (double)_paddingAboveSectionHeaders;
- (double)_shadowHeightOffset;
- (double)_sidePadding;
- (double)_spacingForExtraSeparators;
- (double)heightForAutohidingTableHeaderView;
- (id)_addToShadowUpdatesControllerIfNeeded:(id)a3;
- (id)_adjustedIndexPath:(id)a3 forMoveOfIndexPath:(id)a4 toIndexPath:(id)a5;
- (id)_arrayForUpdateAction:(int)a3;
- (id)_backgroundColorForDeleteConfirmationButtonForRowAtIndexPath:(id)a3;
- (id)_backgroundColorForSwipeAccessoryButtonForRowAtIndexPath:(id)a3;
- (id)_backgroundEffects;
- (id)_beginAnimatingDropOfCell:(id)a3 isCanceling:(BOOL)a4;
- (id)_cellContainerView;
- (id)_cellForRowAtIndexPath:(id)a3 usingPresentationValues:(BOOL)a4;
- (id)_cellForShadowRowAtIndexPath:(id)a3;
- (id)_cellReuseMapForType:(int)a3;
- (id)_classMapForType:(int)a3;
- (id)_contentSubviews;
- (id)_contextualActionForDeletingRowAtIndexPath:(id)a3 performsFirstActionWithFullSwipe:(BOOL *)a4;
- (id)_contextualActionForDeletingRowAtIndexPath:(id)a3 usingPresentationValues:(BOOL)a4;
- (id)_createPreparedCellForGlobalRow:(int64_t)a3 willDisplay:(BOOL)a4;
- (id)_createPreparedCellForGlobalRow:(int64_t)a3 withIndexPath:(id)a4 willDisplay:(BOOL)a5;
- (id)_createPreparedCellForRowAtIndexPath:(id)a3 willDisplay:(BOOL)a4;
- (id)_currentIndexPathForExistingShadowInsertUpdate:(id)a3;
- (id)_currentIndexPathForPlaceholder:(id)a3;
- (id)_dataSourceActual;
- (id)_dataSourceProxy;
- (id)_defaultContextMenuTargetedPreviewForIdentifier:(id)a3;
- (id)_delegateActual;
- (id)_delegatePreferredIndexPath;
- (id)_delegateProxy;
- (id)_delegateViewForFooterInSection:(int64_t)a3;
- (id)_delegateViewForHeaderInSection:(int64_t)a3;
- (id)_deletePlaceholderForContext:(id)a3;
- (id)_dequeueReusableCellWithIdentifier:(id)a3 forIndexPath:(id)a4 usingPresentationValues:(BOOL)a5;
- (id)_dequeueReusableViewOfType:(int)a3 withIdentifier:(id)a4;
- (id)_detailTextForHeaderInSection:(int64_t)a3;
- (id)_diffableDataSourceImpl;
- (id)_dragDelegateActual;
- (id)_dragDelegateProxy;
- (id)_dragDestinationDelegateActual;
- (id)_dragDestinationDelegateProxy;
- (id)_dragPreviewParametersForIndexPath:(id)a3;
- (id)_dragSessionPropertiesForSession:(id)a3;
- (id)_dragSourceDelegateActual;
- (id)_dragSourceDelegateProxy;
- (id)_draggedIndexPath;
- (id)_dropDelegateActual;
- (id)_dropDelegateProxy;
- (id)_dropPreviewParametersForIndexPath:(id)a3;
- (id)_existingCellForRowAtIndexPath:(id)a3;
- (id)_existingFocusItemsInRect:(CGRect)a3;
- (id)_existingFooterViewForSection:(int64_t)a3;
- (id)_existingHeaderViewForSection:(int64_t)a3;
- (id)_existingOrTentativeHeaderViewCreatedIfNeededForSection:(int64_t)a3;
- (id)_expectedDiffableUpdateItem;
- (id)_focusFastScrollingIndexBarEntries;
- (id)_focusPromiseItemsInRect:(CGRect)a3;
- (id)_focusScrollBoundaryMetricsForItem:(id)a3;
- (id)_footerViewForSection:(int64_t)a3 usingPresentationValues:(BOOL)a4;
- (id)_fulfillPromisedFocusRegionForIndexPath:(id)a3;
- (id)_gapIndexPath;
- (id)_generateDeletedOrMovedRowsIndexSetFromUpdateItems:(id)a3 updateSupport:(id)a4 preReloadFirstVisibleRowIndexPath:(id)a5 outReloadedRowNewIndexPath:(id *)a6;
- (id)_headerViewForSection:(int64_t)a3 usingPresentationValues:(BOOL)a4;
- (id)_identityTracker:(BOOL)a3;
- (id)_indexBarEntries;
- (id)_indexPathForCell:(id)a3 usingPresentationValues:(BOOL)a4;
- (id)_indexPathForRowAtPoint:(CGPoint)a3 usingPresentationValues:(BOOL)a4;
- (id)_indexPathForSelectedRowUsingPresentationValues:(BOOL)a3;
- (id)_indexPathForTentativeCell:(id)a3;
- (id)_indexPathsForHighlightedRows;
- (id)_indexPathsForHighlightedRowsUsingPresentationValues:(BOOL)a3;
- (id)_indexPathsForRowsInRect:(CGRect)a3 usingPresentationValues:(BOOL)a4;
- (id)_indexPathsForSelectedRowsUsingPresentationValues:(BOOL)a3;
- (id)_indexPathsForVisibleRowsUsingPresentationValues:(BOOL)a3;
- (id)_insertPlaceholderAtIndexPath:(id)a3 withContext:(id)a4;
- (id)_itemsForAddingToDragSession:(id)a3 atIndexPath:(id)a4 point:(CGPoint)a5 withDataOwner:(int64_t)a6;
- (id)_itemsForBeginningDragSession:(id)a3 atIndexPath:(id)a4;
- (id)_managedSubviewForView:(id)a3 viewType:(int *)a4 indexPath:(id *)a5;
- (id)_moveRowAtIndexPath:(id)a3 toIndexPath:(id)a4 usingPresentationValues:(BOOL)a5;
- (id)_moveSection:(int64_t)a3 toSection:(int64_t)a4 usingPresentationValues:(BOOL)a5;
- (id)_nearestCellToPoint:(CGPoint)a3 expandingVisibleCells:(BOOL)a4;
- (id)_newSectionViewWithFrame:(CGRect)a3 forSection:(int64_t)a4 isHeader:(BOOL)a5;
- (id)_nibExternalObjectsTablesForType:(int)a3;
- (id)_nibMapForType:(int)a3;
- (id)_performShadowUpdates:(id)a3;
- (id)_placeholderContextForIndexPath:(id)a3;
- (id)_popReusableHeaderView:(BOOL)a3;
- (id)_prefetchDataSourceActual;
- (id)_prefetchDataSourceProxy;
- (id)_prefetchedCellForRowAtIndexPath:(id)a3 willDisplay:(BOOL)a4;
- (id)_preparedCells;
- (id)_reorderingCell;
- (id)_reorderingIndexPath;
- (id)_reorderingSupport;
- (id)_resolvedDropProposalAfterAdditionalHitTestingForIndexPath:(id)a3 dropSession:(id)a4 dropOperation:(unint64_t)a5 dropIntent:(int64_t)a6 dropProposal:(id)a7;
- (id)_resolvedTableConstants;
- (id)_retargetedReorderIndexPathForInitialIndexPath:(id)a3 proposedIndexPath:(id)a4;
- (id)_revertExistingShadowInsertUpdate:(id)a3 withAlongsideUpdates:(id)a4;
- (id)_rowsToIncludeInDragSession:(id)a3 atIndexPath:(id)a4 withDataOwner:(int64_t)a5;
- (id)_scrollTestExtraResults;
- (id)_sectionHeaderView:(BOOL)a3 withFrame:(CGRect)a4 forSection:(int64_t)a5 floating:(BOOL)a6 visibleRectDisplacement:(double)a7 reuseViewIfPossible:(BOOL)a8 willDisplay:(BOOL)a9;
- (id)_sectionsWithSectionOperationsInUpdateItems:(void *)a1;
- (id)_setupAnimationsForResizedViewsWithOldRowData:(id)a3 oldVisibleViews:(id)a4;
- (id)_shadowUpdateForPlaceholder:(id)a3;
- (id)_shadowUpdatesController;
- (id)_sortedDeduplicatedReloadItems;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_tableFooterView:(BOOL)a3;
- (id)_tableHeaderView:(BOOL)a3;
- (id)_tableViewCellForContentView:(id)a3;
- (id)_targetIndexPathAtPoint:(CGPoint)a3 withLastTargetIndexPath:(id)a4 adjustedForGap:(BOOL)a5;
- (id)_targetIndexPathForDrop:(id)a3;
- (id)_titleForDeleteConfirmationButton:(id)a3;
- (id)_titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a3;
- (id)_titleForFooterInSection:(int64_t)a3;
- (id)_titleForHeaderInSection:(int64_t)a3;
- (id)_titleForSwipeAccessoryButtonForRowAtIndexPath:(id)a3;
- (id)_trailingSwipeConfigurationAtIndexPath:(id)a3 fromRemoveButton:(BOOL)a4;
- (id)_updateIndexOverlayToShowTitleAtIndex:(int64_t)a3;
- (id)_updateRowsAtIndexPaths:(id)a3 withUpdateAction:(int)a4 rowAnimation:(int64_t)a5 usingPresentationValues:(BOOL)a6;
- (id)_updateSections:(id)a3 withUpdateAction:(int)a4 rowAnimation:(int64_t)a5 headerFooterOnly:(BOOL)a6 usingPresentationValues:(BOOL)a7;
- (id)_updatedDropProposalForIndexPath:(id)a3 dropSession:(id)a4 withDefaultProposal:(id)a5;
- (id)_visibleCellForGlobalRow:(int64_t)a3;
- (id)_visibleCellsUsingPresentationValues:(BOOL)a3;
- (id)_visibleFooterViewForSection:(int64_t)a3;
- (id)_visibleHeaderFooterViews;
- (id)_visibleHeaderViewForSection:(int64_t)a3;
- (id)_visibleViews;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)contextualActionForDeletingRowAtIndexPath:(id)a3;
- (id)dataSource;
- (id)dataSourceIndexPathForPresentationIndexPath:(id)a3;
- (id)delegate;
- (id)deleteConfirmationIndexPath;
- (id)dragDelegate;
- (id)dropDelegate;
- (id)focusItemsInRect:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)preferredFocusedView;
- (id)prefetchDataSource;
- (id)presentationIndexPathForDataSourceIndexPath:(id)a3;
- (id)sectionBorderColor;
- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4;
- (id)swipeActionForDeletingRowAtIndexPath:(id)a3;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)_accessoryTypeForCell:(id)a3 forRowAtIndexPath:(id)a4;
- (int64_t)_bottomSeparatorInsetBehaviorForCellAtIndexPath:(id)a3;
- (int64_t)_cellFocusItemDeferral:(id)a3;
- (int64_t)_currentSectionIndexTitleIndex;
- (int64_t)_dataOwnerForDragSession:(id)a3 atIndexPath:(id)a4;
- (int64_t)_dataOwnerForDropSession:(id)a3 atIndexPath:(id)a4;
- (int64_t)_dataSourceNumberOfItemsInSection:(int64_t)a3;
- (int64_t)_dataSourceNumberOfSections;
- (int64_t)_editingStyleForRowAtIndexPath:(id)a3;
- (int64_t)_globalReorderingRow;
- (int64_t)_numberOfRowsInSection:(int64_t)a3;
- (int64_t)_numberOfRowsInSection:(int64_t)a3 usingPresentationValues:(BOOL)a4;
- (int64_t)_numberOfSections;
- (int64_t)_numberOfSectionsUsingPresentationValues:(BOOL)a3;
- (int64_t)_popoverControllerStyle;
- (int64_t)_rowDataNumberOfSections;
- (int64_t)_sectionForFooterView:(id)a3;
- (int64_t)_sectionForHeaderView:(id)a3;
- (int64_t)_sectionIndexChangedToIndex:(int64_t)a3 title:(id)a4;
- (int64_t)_titleAlignmentForFooterInSection:(int64_t)a3;
- (int64_t)_titleAlignmentForHeaderInSection:(int64_t)a3;
- (int64_t)_topSeparatorInsetBehaviorForCellAtIndexPath:(id)a3;
- (int64_t)_visibleGlobalRowForRowAtIndexPathAdjustedForCurrentUpdate:(id)a3;
- (int64_t)_visibleSectionForSectionAdjustedForCurrentUpdate:(int64_t)a3;
- (int64_t)dataSourceSectionIndexForPresentationSectionIndex:(int64_t)a3;
- (int64_t)highlightedGlobalRow;
- (int64_t)layoutDirectionForSwipeActionController:(id)a3;
- (int64_t)presentationSectionIndexForDataSourceSectionIndex:(int64_t)a3;
- (uint64_t)_canRecomputePreferredAttributesForInvalidatedElements;
- (unint64_t)_countStringRowCount;
- (unint64_t)_edgesApplyingBaseInsetsToIndexBarInsets;
- (unint64_t)maximumNumberOfSectionIndexTitlesWithoutTruncation;
- (void)_Bug_Detected_In_Client_Of_UITableView_Invalid_Batch_Updates:(id)a3;
- (void)_Bug_Detected_In_Client_Of_UITableView_Invalid_Number_Of_Rows_In_Section:(id)a3;
- (void)_Bug_Detected_In_Client_Of_UITableView_Invalid_Number_Of_Sections:(id)a3;
- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)a3;
- (void)_accessoryButtonAction:(id)a3;
- (void)_addContentSubview:(id)a3 atBack:(BOOL)a4;
- (void)_addIndexToAppropriateContainer;
- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5;
- (void)_adjustCountLabel;
- (void)_adjustExtraSeparators;
- (void)_adjustForAutomaticKeyboardInfo:(id)a3 animated:(BOOL)a4 lastAdjustment:(double *)a5;
- (void)_adjustPreReloadStateForRestoringContentOffsetWithUpdateItems:(id)a3 updateSupport:(id)a4;
- (void)_adjustReusableTableCells;
- (void)_adjustTableHeaderAndFooterViews;
- (void)_animateDeletionOfRowAtIndexPath:(id)a3;
- (void)_animateDeletionOfRowWithCell:(id)a3;
- (void)_animateDragCancelForCell:(id)a3;
- (void)_animateLiftOfRowsAtIndexPaths:(id)a3;
- (void)_animateScanlineViewForCell:(id)a3 occurrence:(id)a4 actionsView:(id)a5;
- (void)_animateSwipeCancelation;
- (void)_animateSwipeOccurrenceAction:(id)a3 alongsideCell:(id)a4 animation:(id)a5;
- (void)_animateTableViewContentToNewLayoutWithDuration:(double)a3 reorderingCell:(id)a4 additionalAnimations:(id)a5;
- (void)_applyAppearanceDefaults;
- (void)_applyCoalescedContentSizeUpdates;
- (void)_applyContentSizeDeltaImmediately:(double)a3;
- (void)_autoscrollForReordering:(id)a3;
- (void)_beginAnimatingCells;
- (void)_beginDragAndDropReorderingOfIndexPath:(id)a3 cell:(id)a4;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)_cancelCellReorder:(BOOL)a3;
- (void)_cellDidBecomeFocused:(id)a3;
- (void)_cellDidBecomeUnfocused:(id)a3;
- (void)_cellDidHideSelectedBackground:(id)a3;
- (void)_cellDidInvalidateIntrinsicContentSize:(id)a3;
- (void)_cellDidShowSelectedBackground:(id)a3;
- (void)_cleanupStateFromDeleteConfirmation;
- (void)_clearNeedsRecomputeHeightsForInvalidatedElements;
- (void)_coalesceContentSizeUpdateWithDelta:(double)a3;
- (void)_configureBackgroundView;
- (void)_configureCachedCellForDisplay:(id)a3 forIndexPath:(id)a4;
- (void)_configureCellForDisplay:(id)a3 forIndexPath:(id)a4;
- (void)_configureCellPrefetchingHandlers;
- (void)_configureContextMenuInteractionIfNeeded;
- (void)_configureDataSourcePrefetchingHandlers;
- (void)_configureIndexOverlayIndicatorViewIfNecessary;
- (void)_configureIndexOverlaySelectionViewIfNecessary;
- (void)_configureTableHeaderFooterView:(id)a3 forHeader:(BOOL)a4 section:(int64_t)a5 floating:(BOOL)a6 visibleRectDisplacement:(double)a7 withTitle:(id)a8 detailText:(id)a9 textAlignment:(int64_t)a10 fromClient:(BOOL)a11;
- (void)_createOrUninstallDragAndDropControllersIfNeeded;
- (void)_darkenedSystemColorsChanged;
- (void)_deleteAllPlaceholderCells;
- (void)_deselectAllRowsAnimated:(BOOL)a3 notifyDelegate:(BOOL)a4 excludingMultiSelectRows:(BOOL)a5;
- (void)_deselectRowAtIndexPath:(id)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)_deselectRowsAtIndexPaths:(id)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)_deselectRowsAtIndexPaths:(id)a3 animated:(BOOL)a4 transitionCoordinator:(id)a5;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_didInsertRowForTableCell:(id)a3;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_distributeSeparatorColor:(id)a3;
- (void)_downArrowLongPress:(id)a3;
- (void)_downArrowTap:(id)a3;
- (void)_dragSessionDidEnd:(id)a3;
- (void)_dragSessionWillBegin:(id)a3;
- (void)_draggingReorderingCell:(id)a3 yDelta:(double)a4 touch:(id)a5;
- (void)_drawExtraSeparator:(CGRect)a3;
- (void)_dropEnded:(id)a3;
- (void)_dropEntered:(id)a3;
- (void)_dropExited:(id)a3;
- (void)_endAnimatingCells;
- (void)_endAnimatingDropOfCell:(id)a3;
- (void)_endCellAnimationsWithContext:(id)a3;
- (void)_endCellReorderAnimation:(BOOL)a3 wasCancelled:(BOOL)a4;
- (void)_endDragAndDropReordering;
- (void)_endReorderingForCell:(id)a3 wasCancelled:(BOOL)a4 animated:(BOOL)a5;
- (void)_endSwipeToDeleteRowDidDelete:(BOOL)a3;
- (void)_endUpdatingVisibleCells:(BOOL)a3 originalContentOffset:(CGPoint)a4 originalContentHeight:(double)a5 focusedView:(id)a6 focusedViewType:(int)a7;
- (void)_ensurePreReloadVisibleRowRangeIsValidWithPostReloadRowCount:(int64_t)a3;
- (void)_ensureReturnedView:(id)a3 isNotContainedInReusePoolForViewType:(int)a4;
- (void)_ensureRowDataIsLoaded;
- (void)_ensureViewsAreLoadedInRect:(CGRect)a3;
- (void)_forciblyCancelPendingSelection;
- (void)_getGradientMaskBounds:(CGRect *)a3 startInsets:(UIEdgeInsets *)a4 endInsets:(UIEdgeInsets *)a5 intensities:(UIEdgeInsets *)a6;
- (void)_handleNudgeInDirection:(int64_t)a3;
- (void)_handleUserInterfaceIdiomChange;
- (void)_headerFooterDidInvalidateIntrinsicContentSize:(id)a3;
- (void)_hideIndexOverlay:(id)a3;
- (void)_hideSeparatorForRowAtIndexPath:(id)a3;
- (void)_highlightCell:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 highlight:(BOOL)a6;
- (void)_highlightSpringLoadedRowAtIndexPath:(id)a3;
- (void)_initializeTentativeViewContainers;
- (void)_intelligenceCollectSubelementsIn:(CGRect)a3 using:(id)a4 transformToRoot:(id)a5;
- (void)_invalidateForTopOrBottomPaddingChange:(BOOL)a3;
- (void)_languageChanged;
- (void)_layoutAdjustmentsDidChange;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3;
- (void)_longPressNudgeScrollToRow:(int64_t)a3 position:(int64_t)a4;
- (void)_moveSectionIndexTitleIndexToIndex:(int64_t)a3 highlight:(BOOL)a4;
- (void)_moveWithEvent:(id)a3;
- (void)_notifyDataSourceForMoveOfRowFromIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)_notifyDidEndDisplayingCell:(id)a3 forIndexPath:(id)a4;
- (void)_notifyDidEndDisplayingHeaderFooterView:(id)a3 forSection:(int64_t)a4 isHeader:(BOOL)a5;
- (void)_notifyDidScroll;
- (void)_notifyWillDisplayCell:(id)a3 forIndexPath:(id)a4;
- (void)_notifyWillDisplayHeaderFooterView:(id)a3 forSection:(int64_t)a4 isHeader:(BOOL)a5;
- (void)_nudgeScroll:(int64_t)a3;
- (void)_performAction:(SEL)a3 forCell:(id)a4 sender:(id)a5;
- (void)_performBatchUpdates:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)_performDiffableUpdate:(id)a3;
- (void)_performDrop:(id)a3 withDropCoordinator:(id)a4 forceHandleAsReorder:(BOOL)a5;
- (void)_performInternalBatchUpdates:(id)a3;
- (void)_performInternalReloadData;
- (void)_performRevertingShadowUpdates:(id)a3;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_prefetchCellAtGlobalRow:(int64_t)a3 aboveVisibleRange:(BOOL)a4;
- (void)_preparePrefetchContext;
- (void)_prepareToLiftRowsAtIndexPaths:(id)a3;
- (void)_prepareToSizeView:(id)a3;
- (void)_prolongIndexOverlayTimer;
- (void)_purgeReuseQueues;
- (void)_reapTentativeViews;
- (void)_rebaseExistingShadowUpdatesIfNecessaryWithSortedInsertItems:(id)a3 sortedDeleteItems:(id)a4 sortedMoveItems:(id)a5;
- (void)_rebuildGeometryForcingRowDataUpdate:(BOOL)a3 skipContentOffsetAdjustment:(BOOL)a4 updateImmediatelyIfPossible:(BOOL)a5;
- (void)_rebuildGeometryWithCompatibility;
- (void)_recomputeHeightsForInvalidatedElementsIfNeeded;
- (void)_recomputeSectionIndexTitleIndex;
- (void)_reconfigureCell:(id)a3 forRowAtIndexPath:(id)a4;
- (void)_reconfigureRowAtIndexPath:(id)a3 usingPresentationValues:(BOOL)a4;
- (void)_rectChangedWithNewSize:(CGSize)a3 oldSize:(CGSize)a4;
- (void)_registerForTraitChangesRequiringMetricsAdapterInvalidation;
- (void)_registerThing:(id)a3 asNib:(BOOL)a4 forViewType:(int)a5 withReuseIdentifer:(id)a6;
- (void)_reloadDataIfNeeded;
- (void)_reloadSectionHeaderFooters:(id)a3 withRowAnimation:(int64_t)a4;
- (void)_removeAllVisibleCells;
- (void)_removeAndResetAllVisibleCells;
- (void)_removeDropTargetAndResetAppearance;
- (void)_removeIndex;
- (void)_removeOrphanedViews:(id)a3;
- (void)_removeTableViewGestureRecognizers;
- (void)_reorderPositionChangedForCell:(id)a3 withScrollFactorPercentage:(float)a4;
- (void)_requestAppropriateFocusUpdate;
- (void)_resetAllShadowUpdates;
- (void)_resetDarkenedSeparatorColor;
- (void)_resetDragSwipeAndTouchSelectFlags;
- (void)_resetOrRebaseFocusedViewWithUpdateSupport:(id)a3 indexPathMapping:(id)a4;
- (void)_resetSwipeActionController;
- (void)_resetUpdateItemArrays;
- (void)_resignOrRebaseFirstResponderViewWithUpdateSupport:(id)a3 indexPathMapping:(id)a4;
- (void)_restoreOrAdjustContentOffsetWithRowCount:(int64_t)a3 initialContentInsetTop:(double)a4;
- (void)_resumeReloads;
- (void)_reuseHeaderFooterView:(id)a3 isHeader:(BOOL)a4 forSection:(int64_t)a5;
- (void)_reusePrefetchedCell:(id)a3 withIndexPath:(id)a4;
- (void)_reusePreviouslyFocusedTableViewSubviewIfNeeded:(id)a3 viewType:(int)a4 indexPath:(id)a5;
- (void)_reuseTableViewCell:(id)a3 withIndexPath:(id)a4 didEndDisplaying:(BOOL)a5;
- (void)_reuseTableViewSubview:(id)a3 viewType:(int)a4;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3;
- (void)_scheduleAdjustExtraSeparators;
- (void)_scrollFirstResponderCellToVisible:(BOOL)a3;
- (void)_scrollToRowAtIndexPath:(id)a3 atScrollPosition:(int64_t)a4 animated:(BOOL)a5 usingPresentationValues:(BOOL)a6;
- (void)_scrollToTopHidingTableHeader:(BOOL)a3;
- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4;
- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)a3;
- (void)_sectionIndexChanged:(id)a3;
- (void)_sectionIndexTouchesBegan:(id)a3;
- (void)_sectionIndexTouchesEnded:(id)a3;
- (void)_selectAllSelectedRows;
- (void)_selectRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 notifyDelegate:(BOOL)a6;
- (void)_selectRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 notifyDelegate:(BOOL)a6 isCellMultiSelect:(BOOL)a7 deselectPrevious:(BOOL)a8 performCustomSelectionAction:(BOOL)a9;
- (void)_selectRowsAtIndexPaths:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 notifyDelegate:(BOOL)a6;
- (void)_selectedIndexPathsDidChange;
- (void)_selectionInteractionDidBeginHinting:(id)a3;
- (void)_selectionInteractionDidCancelHinting:(id)a3;
- (void)_selectionInteractionDidSelect:(id)a3;
- (void)_sendDidEndEditingForIndexPath:(id)a3;
- (void)_sendGeometryAffectingContentBottomChangedToScrollObservers;
- (void)_sendWillBeginEditingForIndexPath:(id)a3;
- (void)_setAllowsReorderingWhenNotEditing:(BOOL)a3;
- (void)_setBackgroundColor:(id)a3 animated:(BOOL)a4;
- (void)_setBackgroundEffects:(id)a3;
- (void)_setBottomPadding:(double)a3;
- (void)_setCellsSelfSize:(BOOL)a3;
- (void)_setClearBlendingViewCompositingFilter;
- (void)_setDefaultGradientMaskInsets;
- (void)_setDefaultLayoutMargins:(UIEdgeInsets)a3;
- (void)_setDisableReuseQueuePurgeOnTextSizeChanges:(BOOL)a3;
- (void)_setDrawsSeparatorAtTopOfSections:(BOOL)a3;
- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4 forced:(BOOL)a5;
- (void)_setExternalObjectTable:(id)a3 forNibLoadingOfCellWithReuseIdentifier:(id)a4;
- (void)_setExternalObjectTable:(id)a3 forNibLoadingOfHeaderFooterWithReuseIdentifier:(id)a4;
- (void)_setGestureRecognizerRequiresTableGestureRecognizersToFail:(id)a3;
- (void)_setHeaderAndFooterViewsFloat:(BOOL)a3;
- (void)_setHeight:(double)a3 forRowAtIndexPath:(id)a4;
- (void)_setHeight:(double)a3 forRowAtIndexPath:(id)a4 usingPresentationValues:(BOOL)a5;
- (void)_setHeightForTableHeaderViewHiding:(double)a3;
- (void)_setIgnoreCopyFilterForTableAnimations:(BOOL)a3;
- (void)_setIgnorePinnedTableHeaderUpdates:(BOOL)a3;
- (void)_setIndexRetargetFeedbackGenerator:(id)a3;
- (void)_setIsAncestorOfFirstResponder:(BOOL)a3;
- (void)_setKeepsFirstResponderVisibleOnBoundsChange:(BOOL)a3;
- (void)_setManuallyManagesSwipeUI:(BOOL)a3;
- (void)_setNeedsIndexBarInsetsUpdate;
- (void)_setNeedsRecomputeHeightsForInvalidatedElements;
- (void)_setNeedsVisibleCellsUpdate:(BOOL)a3 withFrames:(BOOL)a4;
- (void)_setNeedsVisibleCellsUpdate:(BOOL)a3 withFrames:(BOOL)a4 updateImmediatelyIfPossible:(BOOL)a5;
- (void)_setPinsTableHeaderView:(BOOL)a3;
- (void)_setReorderFeedbackGenerator:(id)a3;
- (void)_setRowCount:(unint64_t)a3;
- (void)_setSectionContentInset:(UIEdgeInsets)a3;
- (void)_setSectionContentInsetFollowsLayoutMargins:(BOOL)a3;
- (void)_setSectionHeaderFooterPadding:(double)a3;
- (void)_setSeparatorInsetIsRelativeToCellEdges:(BOOL)a3;
- (void)_setSeparatorsDrawAsOverlay:(BOOL)a3;
- (void)_setSeparatorsDrawInVibrantLightModeUIAppearance:(id)a3;
- (void)_setShouldBecomeFocusedOnSelection:(BOOL)a3;
- (void)_setTopPadding:(double)a3;
- (void)_setUpContentFocusContainerGuide;
- (void)_setUseLegacySectionHeaderFooterPinningBehavior:(BOOL)a3;
- (void)_setUseUnifiedSelectionBehavior:(BOOL)a3;
- (void)_setUsesStaticScrollBar:(BOOL)a3;
- (void)_setupCell:(id)a3 forEditing:(BOOL)a4 atIndexPath:(id)a5 animated:(BOOL)a6 updateSeparators:(BOOL)a7;
- (void)_setupCell:(id)a3 forEditing:(BOOL)a4 atIndexPath:(id)a5 canEdit:(BOOL)a6 editingStyle:(int64_t)a7 shouldIndentWhileEditing:(BOOL)a8 showsReorderControl:(BOOL)a9 accessoryType:(int64_t)a10 animated:(BOOL)a11 updateSeparators:(BOOL)a12;
- (void)_setupCellAnimations;
- (void)_setupDefaultHeights;
- (void)_setupSectionView:(id)a3 isHeader:(BOOL)a4 forSection:(int64_t)a5;
- (void)_setupTableViewCommon;
- (void)_shiftSectionIndexTitleIndexByAmount:(int64_t)a3;
- (void)_showSeparatorForRowAtIndexPath:(id)a3;
- (void)_showSeparatorForRowBeforeIndexPath:(id)a3;
- (void)_startIndexOverlayIndicatorIgnoreTimer;
- (void)_startIndexOverlayTimerWithDelay:(double)a3;
- (void)_startViewAnimationsForUpdate:(id)a3 withContext:(id)a4 swipeOccurrenceAnimatingDelete:(id)a5 oldVisibleViews:(id)a6 useCopyBlendingForAnimations:(BOOL)a7;
- (void)_stopAutoscrollTimer;
- (void)_stopIgnoringWheelEventsOnIndexOverlayIndicator:(id)a3;
- (void)_stopIndexOverlayTimer;
- (void)_stopScrollingNotify:(BOOL)a3 pin:(BOOL)a4;
- (void)_storePreReloadStateForRestoringContentOffsetWithFirstVisibleIndexPath:(id)a3;
- (void)_storeStateForRestoringContentOffsetIfNeeded;
- (void)_swipeToDeleteCell:(id)a3;
- (void)_systemTextSizeChanged;
- (void)_tableFooterHeightDidChangeToHeight:(double)a3;
- (void)_tableHeaderHeightDidChangeToHeight:(double)a3;
- (void)_tearDownIndexOverlayViews;
- (void)_transitionIndexOverlaySelectionViewToVisible:(BOOL)a3;
- (void)_transitionIndexOverlayToVisible:(BOOL)a3 shouldFadeBackToInvisible:(BOOL)a4;
- (void)_unhighlightAllRowsAndHighlightGlobalRow:(int64_t)a3;
- (void)_unhighlightSpringLoadedRow;
- (void)_upArrowLongPress:(id)a3;
- (void)_upArrowTap:(id)a3;
- (void)_updateAnimationDidStopWithOldVisibleViews:(id)a3 finished:(BOOL)a4 context:(id)a5;
- (void)_updateAppearanceOfVisibleRowsForDragState;
- (void)_updateBackgroundView;
- (void)_updateBackgroundViewFrame;
- (void)_updateCell:(id)a3 withValue:(id)a4;
- (void)_updateConstants;
- (void)_updateConstantsForVisibleCellsAndHeaderFooterViews;
- (void)_updateContentSize;
- (void)_updateContentSizeSkippingContentOffsetAdjustment:(BOOL)a3;
- (void)_updateContextMenuStateForVisibleCells:(id)a3;
- (void)_updateCycleIdleUntil:(unint64_t)a3;
- (void)_updateDragControllerEnabledState;
- (void)_updateDragStateForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateDropStateForVisibleCellsForActiveDrop:(BOOL)a3 dropTargetIndexPath:(id)a4;
- (void)_updateDropTargetAppearanceWithTargetIndexPath:(id)a3 dropProposal:(id)a4 dropSession:(id)a5;
- (void)_updateFocusAfterLoadingCellsWithFocusedView:(id)a3 viewType:(int)a4;
- (void)_updateFocusedCellIndexPathIfNecessaryWithLastFocusedRect:(CGRect)a3;
- (void)_updateFocusedItemToIndexPath:(id)a3;
- (void)_updateForChangeInEffectiveContentInset;
- (void)_updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:(UIEdgeInsets)a3 oldEdgesPropagatingSafeAreaInsets:(unint64_t)a4 adjustContentOffsetIfNecessary:(BOOL)a5;
- (void)_updateHeaderFooterPinningBehavior;
- (void)_updateIdentityTrackerWithUpdateSupport:(id)a3;
- (void)_updateIndex;
- (void)_updateIndexDisplayedTitles;
- (void)_updateIndexFrame;
- (void)_updateIndexTitles:(id)a3;
- (void)_updateIndexTitlesFromDataSource;
- (void)_updateIsFloating:(BOOL)a3 withVisibleRectDisplacement:(double)a4 forHeaderFooterView:(id)a5 isStandardHeaderFooter:(BOOL)a6 isHeader:(BOOL)a7;
- (void)_updateListEnvironmentTraitOverrideWithSectionContentInsets:(UIEdgeInsets)a3;
- (void)_updateMarginWidthForVisibleViewsForceLayout:(BOOL)a3;
- (void)_updateMultiSelectControllerIfNeeded;
- (void)_updatePinnedTableHeader;
- (void)_updateRowData;
- (void)_updateRowDataIfNeeded;
- (void)_updateSectionIndex;
- (void)_updateSelectedAndHighlightedStateForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateSelectionGroupingForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateSelectionGroupingForVisibleCells;
- (void)_updateSelectionIsKey;
- (void)_updateSeparatorStateForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateSeparatorStateForVisibleCells;
- (void)_updateSeparatorStyleForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateShowScrollIndicatorsFlag;
- (void)_updateTableHeaderFooterViewInsetsContentViewsToSafeArea;
- (void)_updateTableHeaderViewForAutoHideWithVelocity:(double)a3 targetOffset:(CGPoint *)a4;
- (void)_updateTableHeadersAndFootersNow:(BOOL)a3;
- (void)_updateTopSeparatorForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateTopSeparatorForVisibleCells;
- (void)_updateVerticalScrollIndicatorVisibility;
- (void)_updateVisibleCellsForRanges:(_UITableViewVisibleCellsUpdateRanges *)a3 createIfNecessary:(BOOL)a4;
- (void)_updateVisibleCellsImmediatelyIfNecessary;
- (void)_updateVisibleCellsNow:(BOOL)a3;
- (void)_updateVisibleHeadersAndFootersNow:(BOOL)a3;
- (void)_updateWithItems:(id)a3 updateSupport:(id)a4;
- (void)_updateWrapperClipping;
- (void)_updateWrapperContentInset;
- (void)_updateWrapperFrame;
- (void)_updateWrapperView;
- (void)_userSelectCell:(id)a3;
- (void)_userSelectRowAtPendingSelectionIndexPath:(id)a3;
- (void)_userSelectRowAtPendingSelectionIndexPath:(id)a3 animatedSelection:(BOOL)a4;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)_willChangeToIdiom:(int64_t)a3 onScreen:(id)a4;
- (void)_willUpdateFocusInContext:(id)a3;
- (void)accessoryInsetsDidChange:(UIEdgeInsets)a3;
- (void)adjustIndexPaths:(id)a3 forMoveOfIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)awakeFromNib;
- (void)beginUpdates;
- (void)bringSubviewToFront:(id)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)deleteRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void)deleteSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation;
- (void)didMoveToWindow;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endUpdatesWithContext:(id)a3;
- (void)flashScrollIndicators;
- (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void)insertSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation;
- (void)layoutSubviews;
- (void)moveRowAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath;
- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection;
- (void)noteNumberOfRowsChanged;
- (void)performUsingPresentationValues:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)reconfigureRowsAtIndexPaths:(NSArray *)indexPaths;
- (void)registerClass:(Class)aClass forHeaderFooterViewReuseIdentifier:(NSString *)identifier;
- (void)registerClass:(Class)cellClass forCellReuseIdentifier:(NSString *)identifier;
- (void)registerNib:(UINib *)nib forCellReuseIdentifier:(NSString *)identifier;
- (void)registerNib:(UINib *)nib forHeaderFooterViewReuseIdentifier:(NSString *)identifier;
- (void)reloadData;
- (void)reloadRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void)reloadSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation;
- (void)resizeSubviewsWithOldSize:(CGSize)a3;
- (void)scrollToNearestSelectedRowAtScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;
- (void)scrollToRowAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;
- (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UITableViewScrollPosition)scrollPosition;
- (void)sendSubviewToBack:(id)a3;
- (void)setAllowsFocus:(BOOL)allowsFocus;
- (void)setAllowsFocusDuringEditing:(BOOL)allowsFocusDuringEditing;
- (void)setAllowsMultipleSelection:(BOOL)allowsMultipleSelection;
- (void)setAllowsMultipleSelectionDuringEditing:(BOOL)allowsMultipleSelectionDuringEditing;
- (void)setAllowsSelection:(BOOL)allowsSelection;
- (void)setAllowsSelectionDuringEditing:(BOOL)allowsSelectionDuringEditing;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundView:(UIView *)backgroundView;
- (void)setBounds:(CGRect)a3;
- (void)setCellLayoutMarginsFollowReadableWidth:(BOOL)cellLayoutMarginsFollowReadableWidth;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setContentSize:(CGSize)a3 skipContentOffsetAdjustment:(BOOL)a4;
- (void)setCountString:(id)a3;
- (void)setCountStringInsignificantRowCount:(unint64_t)a3;
- (void)setDataSource:(id)dataSource;
- (void)setDelaysContentTouches:(BOOL)a3;
- (void)setDelegate:(id)delegate;
- (void)setDeleteConfirmationIndexPath:(id)a3 animated:(BOOL)a4;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setDragDelegate:(id)dragDelegate;
- (void)setDragDestinationDelegate:(id)a3;
- (void)setDragInteractionEnabled:(BOOL)dragInteractionEnabled;
- (void)setDragSourceDelegate:(id)a3;
- (void)setDropDelegate:(id)dropDelegate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEstimatedRowHeight:(CGFloat)estimatedRowHeight;
- (void)setEstimatedSectionFooterHeight:(CGFloat)estimatedSectionFooterHeight;
- (void)setEstimatedSectionHeaderHeight:(CGFloat)estimatedSectionHeaderHeight;
- (void)setFillerRowHeight:(CGFloat)fillerRowHeight;
- (void)setFrame:(CGRect)a3;
- (void)setIndexHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setIndexHiddenForSearch:(BOOL)a3;
- (void)setInsetsContentViewsToSafeArea:(BOOL)insetsContentViewsToSafeArea;
- (void)setInsetsLayoutMarginsFromSafeArea:(BOOL)a3;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)setMultiselectCheckmarkColor:(id)a3;
- (void)setOverlapsSectionHeaderViews:(BOOL)a3;
- (void)setPrefetchDataSource:(id)prefetchDataSource;
- (void)setPrefetchingEnabled:(BOOL)prefetchingEnabled;
- (void)setRefreshControl:(id)a3;
- (void)setRemembersLastFocusedIndexPath:(BOOL)remembersLastFocusedIndexPath;
- (void)setRowHeight:(CGFloat)rowHeight;
- (void)setSectionBorderColor:(id)a3;
- (void)setSectionFooterHeight:(CGFloat)sectionFooterHeight;
- (void)setSectionHeaderHeight:(CGFloat)sectionHeaderHeight;
- (void)setSectionHeaderTopPadding:(CGFloat)sectionHeaderTopPadding;
- (void)setSectionIndexBackgroundColor:(UIColor *)sectionIndexBackgroundColor;
- (void)setSectionIndexColor:(UIColor *)sectionIndexColor;
- (void)setSectionIndexTrackingBackgroundColor:(UIColor *)sectionIndexTrackingBackgroundColor;
- (void)setSelectionFollowsFocus:(BOOL)selectionFollowsFocus;
- (void)setSelfSizingInvalidation:(UITableViewSelfSizingInvalidation)selfSizingInvalidation;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setSeparatorColor:(UIColor *)separatorColor;
- (void)setSeparatorEffect:(UIVisualEffect *)separatorEffect;
- (void)setSeparatorInset:(UIEdgeInsets)separatorInset;
- (void)setSeparatorStyle:(UITableViewCellSeparatorStyle)separatorStyle;
- (void)setShowsHorizontalScrollIndicator:(BOOL)a3;
- (void)setTableFooterView:(UIView *)tableFooterView;
- (void)setTableHeaderBackgroundColor:(id)a3;
- (void)setTableHeaderView:(UIView *)tableHeaderView;
- (void)setTableHeaderViewShouldAutoHide:(BOOL)a3;
- (void)swipeActionController:(id)a3 cleanupActionsView:(id)a4 forItemAtIndexPath:(id)a5;
- (void)swipeActionController:(id)a3 didCompleteAnimationOfAction:(id)a4 canceled:(BOOL)a5 atIndexPath:(id)a6;
- (void)swipeActionController:(id)a3 didEndSwipeForItemAtIndexPath:(id)a4;
- (void)swipeActionController:(id)a3 swipeOccurrence:(id)a4 didChangeStateFrom:(int64_t)a5 to:(int64_t)a6;
- (void)swipeActionController:(id)a3 willBeginSwipeForItemAtIndexPath:(id)a4;
- (void)swipeActionController:(id)a3 willPerformAction:(id)a4 atIndexPath:(id)a5;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)unhighlightRowAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation UITableView

- (NSArray)indexPathsForVisibleRows
{
  v3 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _indexPathsForVisibleRowsUsingPresentationValues:v3];
}

- (BOOL)_isUsingPresentationValues
{
  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController && [(_UITableViewShadowUpdatesController *)shadowUpdatesController hasShadowUpdates])
  {
    return (*(&self->_tableFlags + 28) >> 6) & 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)_shouldUnionVisibleBounds
{
  v3 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
  v4 = [v3 scrollManager];
  v5 = [v4 isScrollingScrollableContainer:self];

  if ((*(&self->_tableFlags + 24) & 2) != 0 || +[UIView _isInAnimationBlock])
  {
    v6 = 0;
    goto LABEL_4;
  }

  v4 = [(UIView *)self window];
  if (([v4 isRotating] | v5))
  {
    v6 = 1;
LABEL_4:
    [(UIView *)self bounds];
    v13.origin.x = v7;
    v13.origin.y = v8;
    v13.size.width = v9;
    v13.size.height = v10;
    v11 = CGRectIntersectsRect(self->_visibleBounds, v13);
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

LABEL_10:
  return v11;
}

- (CGRect)_visibleBounds
{
  v15.receiver = self;
  v15.super_class = UITableView;
  [(UIScrollView *)&v15 visibleBounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(UITableView *)self _shouldUnionVisibleBounds])
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v17 = CGRectUnion(v16, self->_visibleBounds);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_scheduleAdjustExtraSeparators
{
  *(&self->_tableFlags + 2) |= 0x40uLL;
  if ((*(&self->_tableFlags + 15) & 0x40) == 0)
  {
    [(UIScrollView *)self setNeedsLayout];
  }
}

void __61__UITableView__ensureInitializeSystemAppearanceModifications__block_invoke(uint64_t a1)
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (((v3 - 1) & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __61__UITableView__ensureInitializeSystemAppearanceModifications__block_invoke_2;
      v4[3] = &__block_descriptor_40_e5_v8__0l;
      v4[4] = *(a1 + 32);
      [UIView _performSystemAppearanceModifications:v4];
    }
  }
}

- (id)_resolvedTableConstants
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UITableConstantsForTraitCollection(v2);

  return v3;
}

+ (void)_ensureInitializeSystemAppearanceModifications
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__UITableView__ensureInitializeSystemAppearanceModifications__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_ensureInitializeSystemAppearanceModifications_onceToken_0 != -1)
  {
    dispatch_once(&_ensureInitializeSystemAppearanceModifications_onceToken_0, block);
  }
}

- (UIEdgeInsets)_effectiveSafeAreaInsets
{
  v3 = [(UITableView *)self insetsContentViewsToSafeArea];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (v3)
  {
    [(UIView *)self safeAreaInsets:0.0];
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (void)_updateVerticalScrollIndicatorVisibility
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 _hasSplitViewControllerContextPrimaryColumn];
    v7 = 0x10000000;
    if (v6)
    {
      v7 = 0;
    }

    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFEFFFFFFFLL | v7;

    [(UITableView *)self _updateShowScrollIndicatorsFlag];
  }
}

uint64_t __36__UITableView_selectionFollowsFocus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _focusBehavior];
  v3 = [v2 defaultValueForSelectionFollowsFocusInTableView:*(a1 + 32)];

  return v3;
}

- (BOOL)_shouldSetIndexBackgroundColorToTableBackgroundColor
{
  v3 = [(UIScrollView *)self _staticScrollBar];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIView *)self traitCollection];
    v4 = [v5 userInterfaceIdiom] == 3;
  }

  return v4;
}

- (BOOL)_shouldDrawDarkSeparators
{
  v2 = dyld_program_sdk_at_least();
  if (v2)
  {
    LOBYTE(v2) = _AXDarkenSystemColors() != 0;
  }

  return v2;
}

- (BOOL)_estimatesHeights
{
  if ([(UITableView *)self _estimatesRowHeights]|| [(UITableView *)self _estimatesSectionHeaderHeights])
  {
    return 1;
  }

  return [(UITableView *)self _estimatesSectionFooterHeights];
}

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (double)_defaultFillerRowHeight
{
  v2 = 0.0;
  if ((*(&self->_tableFlags + 13) & 0x60) == 0 && (_UIFloatingBarEnabled() & 1) == 0)
  {
    metricsAdapter = self->_metricsAdapter;
    if (metricsAdapter)
    {
      if ((*&metricsAdapter->_adapterFlags & 4) == 0)
      {
        [(UITableMetricsAdapter *)metricsAdapter _updateSharedListBehaviors];
      }

      if ((metricsAdapter->_headerFooterPinningBehavior - 1) >= 2)
      {
        return -1.0;
      }

      else
      {
        return 0.0;
      }
    }

    else
    {
      return -1.0;
    }
  }

  return v2;
}

- (void)_createOrUninstallDragAndDropControllersIfNeeded
{
  v3 = [(UITableView *)self _dragAndDropUsedForReordering];
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  if (WeakRetained)
  {
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_dragSourceDelegate);
    v6 = v5 != 0 || v3;

    if (!v6)
    {
      [(_UITableViewDragController *)self->_dragController uninstallFromTableView];
      dragController = self->_dragController;
      self->_dragController = 0;

      goto LABEL_7;
    }
  }

  if (!self->_dragController)
  {
    v7 = [[_UITableViewDragController alloc] initWithTableView:self];
    v8 = self->_dragController;
    self->_dragController = v7;
  }

  [(UITableView *)self _updateDragControllerEnabledState];
LABEL_7:
  v9 = objc_loadWeakRetained(&self->_dropDelegate);
  if (v9)
  {
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
    v11 = v10 != 0 || v3;

    if (!v11)
    {
      [(_UITableViewDropController *)self->_dropController uninstallFromTableView];
      dropController = self->_dropController;
      self->_dropController = 0;
      goto LABEL_14;
    }
  }

  if (self->_dropController)
  {
    return;
  }

  v12 = [[_UITableViewDropController alloc] initWithTableView:self];
  dropController = self->_dropController;
  self->_dropController = v12;
LABEL_14:
}

- (BOOL)_dragAndDropUsedForReordering
{
  v3 = dyld_program_sdk_at_least();
  if (v3)
  {
    p_tableFlags = &self->_tableFlags;
    v5 = (~*(&self->_tableFlags + 6) & 0xC0000000) == 0;
    if ((*(&self->_tableFlags + 3) & 0x40000000) == 0)
    {
      v5 = +[_UITableViewDragController isEnabledByDefault];
    }

    WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
    if (WeakRetained)
    {
      v7 = 1;
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_dropDelegate);
      if (v8)
      {
        v7 = 1;
      }

      else
      {
        v9 = objc_loadWeakRetained(&self->_dragSourceDelegate);
        if (v9)
        {
          v7 = 1;
        }

        else
        {
          v10 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
          v7 = v10 != 0;
        }
      }
    }

    LOBYTE(v3) = (*(p_tableFlags + 3) & 4) != 0 && (v5 && v7 || (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_TableViewReorderingUsesDragAndDrop, @"TableViewReorderingUsesDragAndDrop", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E724);
  }

  return v3;
}

- (void)_setupTableViewCommon
{
  v65[2] = *MEMORY[0x1E69E9840];
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 1) & 0x600000000000) == 0x400000000000)
  {
    v4 = &self->_tableFlags + 3;
    *(&self->_tableFlags + 3) |= 0x200000uLL;
  }

  else
  {
    v5 = [(UIView *)self traitCollection];
    v4 = p_tableFlags + 3;
    *(p_tableFlags + 3) = *(p_tableFlags + 3) & 0xFFFFFFFFFFDFFFFFLL | (([v5 userInterfaceIdiom] == 6) << 21);
  }

  [(UITableView *)self _setUpContentFocusContainerGuide];
  [(UITableView *)self _removeTableViewGestureRecognizers];
  v6 = [(UITableView *)self _resolvedTableConstants];
  constants = self->_constants;
  self->_constants = v6;

  v8 = [[UITableMetricsAdapter alloc] initWithTableStyle:self scrollView:?];
  metricsAdapter = self->_metricsAdapter;
  self->_metricsAdapter = v8;

  [(UITableView *)self _applyAppearanceDefaults];
  [(UITableView *)self _registerForTraitChangesRequiringMetricsAdapterInvalidation];
  v10 = [[_UITableViewSubviewManager alloc] initWithTableView:?];
  subviewManager = self->_subviewManager;
  self->_subviewManager = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  visibleCells = self->_visibleCells;
  self->_visibleCells = v12;

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  visibleHeaderViews = self->_visibleHeaderViews;
  self->_visibleHeaderViews = v14;

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  visibleFooterViews = self->_visibleFooterViews;
  self->_visibleFooterViews = v16;

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  highlightedIndexPaths = self->_highlightedIndexPaths;
  self->_highlightedIndexPaths = v18;

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selectedIndexPaths = self->_selectedIndexPaths;
  self->_selectedIndexPaths = v20;

  *(p_tableFlags + 1) |= 0x800000000000000uLL;
  *(p_tableFlags + 3) |= 0x1000000uLL;
  v22 = [(UIScrollView *)self showsHorizontalScrollIndicator];
  v23 = 0x8000000;
  if (!v22)
  {
    v23 = 0;
  }

  *(p_tableFlags + 2) = *(p_tableFlags + 2) & 0xFFFFFFFFF7FFFFFFLL | v23;
  v24 = [(UIScrollView *)self showsVerticalScrollIndicator];
  v25 = 0x10000000;
  if (!v24)
  {
    v25 = 0;
  }

  *(p_tableFlags + 2) = *(p_tableFlags + 2) & 0xFFFFFFFFEFFFFFFFLL | v25;
  self->_sectionIndexMinimumDisplayRowCount = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_sectionContentInset.top = _Q0;
  *&self->_sectionContentInset.bottom = _Q0;
  self->_sectionCornerRadius = -1.0;
  self->_topPadding = -1.0;
  self->_bottomPadding = -1.0;
  self->_sectionHeaderTopPadding = -1.0;
  *(p_tableFlags + 2) |= 0x100000000000000uLL;
  *&self->_separatorInset.top = _Q0;
  *&self->_separatorInset.bottom = _Q0;
  v31 = self->_metricsAdapter;
  if (v31)
  {
    if ((*&v31->_adapterFlags & 4) == 0)
    {
      [(UITableMetricsAdapter *)v31 _updateSharedListBehaviors];
    }

    contentHuggingElements = v31->_contentHuggingElements;
  }

  else
  {
    contentHuggingElements = 0;
  }

  self->_contentHuggingElements = contentHuggingElements;
  if (dyld_program_sdk_at_least())
  {
    v33 = dyld_program_sdk_at_least() ^ 1;
  }

  else
  {
    v33 = 0;
  }

  [(UITableView *)self setCellLayoutMarginsFollowReadableWidth:v33];
  *v4 |= 0x100000000uLL;
  [(UITableView *)self _setSeparatorInsetIsRelativeToCellEdges:dyld_program_sdk_at_least()];
  v34 = dyld_program_sdk_at_least();
  v35 = 0x100000000000;
  if (!v34)
  {
    v35 = 0;
  }

  *v4 = *v4 & 0xFFFFEFFFFFFFFFFFLL | v35;
  v36 = _UISupportsIntrinsicContentSizeInvalidation();
  v37 = 0x400000000000;
  if (!v36)
  {
    v37 = 0;
  }

  *v4 = *v4 & 0xFFFF3FFFFFFFFFFFLL | v37;
  [(UITableView *)self _updateWrapperView];
  v38 = [(UIView *)self traitCollection];
  v39 = +[UISwipeActionVisualStyleProvider visualStyleForIdiom:](UISwipeActionVisualStyleProvider, "visualStyleForIdiom:", [v38 userInterfaceIdiom]);

  v40 = -[UISwipeActionController initWithSwipeActionHost:style:]([UISwipeActionController alloc], "initWithSwipeActionHost:style:", self, [v39 defaultSwipeActionUIStyleForUITableViewStyle:{-[UITableView style](self, "style")}]);
  swipeActionController = self->_swipeActionController;
  self->_swipeActionController = v40;

  [(UITableView *)self _defaultFillerRowHeight];
  [(UITableView *)self setFillerRowHeight:?];
  [(UITableView *)self _updateHeaderFooterPinningBehavior];
  v42 = +[_UIDragSnappingFeedbackGeneratorConfiguration defaultConfiguration];
  v43 = [v42 tweakedConfigurationForClass:objc_opt_class() usage:@"reorder"];

  v44 = [(UIFeedbackGenerator *)[_UIDragSnappingFeedbackGenerator alloc] initWithConfiguration:v43 view:self];
  reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
  self->_reorderFeedbackGenerator = v44;

  v46 = [MEMORY[0x1E696AD88] defaultCenter];
  [v46 addObserver:self selector:sel__languageChanged name:0x1EFB8EEB0 object:UIApp];
  [v46 addObserver:self selector:sel__darkenedSystemColorsChanged name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];
  if (dyld_program_sdk_at_least())
  {
    v65[0] = 0x1EFE32440;
    v65[1] = 0x1EFE324A0;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v48 = [(UIView *)self _registerForTraitTokenChanges:v47 withTarget:self action:sel__systemTextSizeChanged];
  }

  else
  {
    [v46 addObserver:self selector:sel__systemTextSizeChanged name:@"UIContentSizeCategoryDidChangeNotification" object:0];
  }

  v64 = 0x1EFE32398;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  v50 = [(UIView *)self _registerForTraitTokenChanges:v49 withTarget:self action:sel__handleUserInterfaceIdiomChange];

  v63 = 0x1EFE32590;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v52 = [(UIView *)self _registerForTraitTokenChanges:v51 withTarget:self action:sel__updateVerticalScrollIndicatorVisibility];

  [(UITableView *)self _updateVerticalScrollIndicatorVisibility];
  v53 = _UITableTraitsAffectingSelectionIsKey();
  if ([v53 count])
  {
    v54 = [(UIView *)self _registerForTraitTokenChanges:v53 withTarget:self action:sel__updateSelectionIsKey];
  }

  v55 = objc_opt_new();
  sectionIndexTitlesForTableView = self->_sectionIndexTitlesForTableView;
  self->_sectionIndexTitlesForTableView = v55;

  v57 = dyld_program_sdk_at_least();
  v58 = 2048;
  if (!v57)
  {
    v58 = 0;
  }

  *v4 = *v4 & 0xFFFFFFFFFFFFF7FFLL | v58;
  [(UITableView *)self _initializeTentativeViewContainers];
  v59 = +[(UIView *)UITableView];
  [v59 _beginListeningForAppearanceEventsForSetter:sel_setBackgroundColor_];
  [v59 _beginListeningForAppearanceEventsForSetter:sel_setSeparatorColor_];
  [v59 _beginListeningForAppearanceEventsForSetter:sel_setSeparatorStyle_];
  [(UIScrollView *)self _setContentScrollsAlongXAxis:0];
  [(UIScrollView *)self _setContentScrollsAlongYAxis:1];
  [(UITableView *)self _setCachedSectionIndexBarInsets:1.79769313e308, 1.79769313e308, 1.79769313e308, 1.79769313e308];
  if (dyld_program_sdk_at_least())
  {
    v60 = [MEMORY[0x1E696AD88] defaultCenter];
    [v60 addObserver:self selector:sel__purgeReuseQueues name:@"UIApplicationDidReceiveMemoryWarningNotification" object:0];
  }

  [(UITableView *)self _updateListEnvironmentTraitOverrideWithSectionContentInsets:0.0, 0.0, 0.0, 0.0];
  [(UITableView *)self _updateSelectionIsKey];
  v61 = objc_opt_new();
  [(_UISelectionInteraction *)v61 setDelegate:self];
  [(_UISelectionInteraction *)v61 setEnabled:0];
  [(_UISelectionInteraction *)v61 setSimulatePressesCallbacksForLegacyBehavior:1];
  [(UIView *)self addInteraction:v61];
  selectionInteraction = self->_selectionInteraction;
  self->_selectionInteraction = v61;
}

- (void)_setUpContentFocusContainerGuide
{
  if (!self->_contentFocusContainerGuide)
  {
    v3 = objc_alloc_init(UIFocusContainerGuide);
    contentFocusContainerGuide = self->_contentFocusContainerGuide;
    self->_contentFocusContainerGuide = v3;

    [(UIView *)self addLayoutGuide:self->_contentFocusContainerGuide];
    [(UILayoutGuide *)self->_contentFocusContainerGuide _setLockedToOwningView:1];
    [(UILayoutGuide *)self->_contentFocusContainerGuide setIdentifier:@"UITableViewContentFocusContainerGuide"];
    v5 = self->_contentFocusContainerGuide;
    [(UIView *)self bounds];

    [(UILayoutGuide *)v5 _setManualLayoutFrame:?];
  }
}

- (void)_removeTableViewGestureRecognizers
{
  [(UIView *)self removeGestureRecognizer:self->_upArrowLongPressGestureRecognizer];
  upArrowLongPressGestureRecognizer = self->_upArrowLongPressGestureRecognizer;
  self->_upArrowLongPressGestureRecognizer = 0;

  [(UIView *)self removeGestureRecognizer:self->_downArrowLongPressGestureRecognizer];
  downArrowLongPressGestureRecognizer = self->_downArrowLongPressGestureRecognizer;
  self->_downArrowLongPressGestureRecognizer = 0;

  [(UIView *)self removeGestureRecognizer:self->_upArrowTapGestureRecognizer];
  upArrowTapGestureRecognizer = self->_upArrowTapGestureRecognizer;
  self->_upArrowTapGestureRecognizer = 0;

  [(UIView *)self removeGestureRecognizer:self->_downArrowTapGestureRecognizer];
  downArrowTapGestureRecognizer = self->_downArrowTapGestureRecognizer;
  self->_downArrowTapGestureRecognizer = 0;
}

- (void)_updateWrapperView
{
  v3 = [(UITableView *)self _shouldWrapCells];
  v4 = *(&self->_tableFlags + 2);
  v5 = 0x2000000000000000;
  if (!v3)
  {
    v5 = 0;
  }

  *(&self->_tableFlags + 2) = v4 & 0xDFFFFFFFFFFFFFFFLL | v5;
  wrapperView = self->_wrapperView;
  if (!v3)
  {
    if (!wrapperView)
    {
      return;
    }

    [(UIScrollView *)wrapperView removeFromSuperview];
    v15 = self->_wrapperView;
    self->_wrapperView = 0;

    if ((v4 & 0x4000000000000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!wrapperView)
  {
    [(UITableView *)self _frameForWrapper];
    v11 = [[UITableViewWrapperView alloc] initWithFrame:v7, v8, v9, v10];
    v12 = self->_wrapperView;
    self->_wrapperView = v11;

    [(UIScrollView *)self->_wrapperView _setAutomaticContentOffsetAdjustmentEnabled:0];
    [(UIView *)self->_wrapperView setEdgesPreservingSuperviewLayoutMargins:10];
    [(UIView *)self->_wrapperView setEdgesInsettingLayoutMarginsFromSafeArea:[(UIView *)self->_wrapperView edgesInsettingLayoutMarginsFromSafeArea]& 0xA];
    [(UIView *)self->_wrapperView setLayoutMargins:0.0, 0.0, 0.0, 0.0];
    [(UIScrollView *)self->_wrapperView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)self->_wrapperView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)self->_wrapperView setScrollsToTop:0];
    [(UIView *)self->_wrapperView setInsetsLayoutMarginsFromSafeArea:[(UIView *)self insetsLayoutMarginsFromSafeArea]];
    [(UIScrollView *)self->_wrapperView setScrollEnabled:0];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v13 = [(UIScrollView *)self->_wrapperView _touchesDelayedGestureRecognizer];
      [v13 setEnabled:1];
    }

    [(UITableView *)self _updateWrapperContentInset];
    v14 = *(&self->_tableFlags + 2);
    [(UITableView *)self _addContentSubview:self->_wrapperView atBack:1];
    [(UITableView *)self _updateWrapperClipping];
    if ((v14 & 0x4000000000000000) != 0)
    {
LABEL_11:
      if ((*(&self->_tableFlags + 15) & 8) == 0)
      {

        [(UITableView *)self _removeAndResetAllVisibleCells];
      }
    }
  }
}

- (BOOL)_shouldWrapCells
{
  if (!dyld_program_sdk_at_least() || [(UITableView *)self _manuallyManagesSwipeUI]|| [(UITableView *)self _sectionContentInsetFollowsLayoutMargins])
  {
    return 1;
  }

  [(UITableView *)self _sectionContentInset];
  v3 = 1;
  if (v8 == 0.0 && v5 == 0.0 && v7 == 0.0 && v6 == 0.0)
  {
    v9 = [(UIView *)self traitCollection];
    if ([v9 userInterfaceIdiom] != 3)
    {
      v10 = [(UIScrollView *)self _staticScrollBar];
      v3 = v10 != 0;
    }
  }

  return v3;
}

- (UIEdgeInsets)_sectionContentInset
{
  top = self->_sectionContentInset.top;
  left = self->_sectionContentInset.left;
  bottom = self->_sectionContentInset.bottom;
  right = self->_sectionContentInset.right;
  [(UITableView *)self _effectiveSafeAreaInsets];
  v8 = v7;
  v10 = v9;
  v11 = 0.0;
  v12 = 0.0;
  if ((*(&self->_tableFlags + 26) & 0x20) == 0)
  {
    v13 = [(UITableMetricsAdapter *)self->_metricsAdapter defaultTableContentInsets];
    v11 = v14;
    v15 = v8;
    v16 = bottom;
    v17 = top;
    v18 = v10;
    v20 = v19;
    v21 = [(UIView *)self _shouldReverseLayoutDirection];
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = v11;
    }

    if (!v21)
    {
      v11 = v20;
    }

    v10 = v18;
    top = v17;
    bottom = v16;
    v8 = v15;
    v12 = v22;
  }

  if (left == -1.0 && (-[UIView traitCollection](self, "traitCollection"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 userInterfaceIdiom], v23, left = 0.0, v24 != 3))
  {
    if ((*(&self->_tableFlags + 26) & 0x20) != 0)
    {
      [(UIView *)self layoutMargins];
      v12 = v37;
      if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
      {
        [(UITableView *)self _indexBarExtentFromEdge];
        v12 = fmax(v12, v38);
      }
    }
  }

  else
  {
    v12 = v8 + left;
  }

  if (right == -1.0 && (-[UIView traitCollection](self, "traitCollection"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 userInterfaceIdiom], v25, right = 0.0, v26 != 3))
  {
    if ((*(&self->_tableFlags + 26) & 0x20) != 0)
    {
      [(UIView *)self layoutMargins];
      v11 = v39;
      if ((*(&self->super.super._viewFlags + 18) & 0x40) == 0)
      {
        [(UITableView *)self _indexBarExtentFromEdge];
        v11 = fmax(v11, v40);
      }
    }
  }

  else
  {
    v11 = v10 + right;
  }

  if (bottom == -1.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = bottom;
  }

  if (top == -1.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = top;
  }

  [(UITableView *)self _tableContentInset];
  v30 = v28 + v29;
  v32 = v12 + v31;
  v34 = v27 + v33;
  v36 = v11 + v35;
  result.right = v36;
  result.bottom = v34;
  result.left = v32;
  result.top = v30;
  return result;
}

- (UIEdgeInsets)_tableContentInset
{
  [(UIScrollView *)self accessoryInsets];
  v4 = v3;
  v6 = v5 + 0.0;
  v7 = v3 + 0.0;
  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 3)
  {
    [(UITableView *)self _effectiveSafeAreaInsets];
    v11 = v10;
    v13 = v12;
    [(UIView *)self bounds];
    v14 = CGRectGetWidth(v21) - v6 - v7 - v11 - v13;
    v15 = round((v14 + -520.0) * 0.25);
    if (v14 <= 520.0 || v15 <= 12.0)
    {
      if (v4 == 0.0)
      {
        v7 = v7 + 12.0;
      }

      v15 = 12.0;
    }

    else
    {
      v7 = v7 + v15;
    }

    v6 = v6 + v15;
  }

  v17 = 0.0;
  v18 = 0.0;
  v19 = v6;
  v20 = v7;
  result.right = v20;
  result.bottom = v18;
  result.left = v19;
  result.top = v17;
  return result;
}

- (void)_initializeTentativeViewContainers
{
  if ((*(&self->_tableFlags + 25) & 8) != 0)
  {
    if (!self->_tentativeCells)
    {
      v3 = [MEMORY[0x1E695DF90] dictionary];
      tentativeCells = self->_tentativeCells;
      self->_tentativeCells = v3;
    }

    if (!self->_tentativeHeaderViews)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      tentativeHeaderViews = self->_tentativeHeaderViews;
      self->_tentativeHeaderViews = v5;
    }

    if (!self->_tentativeFooterViews)
    {
      v7 = [MEMORY[0x1E695DF90] dictionary];
      tentativeFooterViews = self->_tentativeFooterViews;
      self->_tentativeFooterViews = v7;
    }
  }
}

- (void)_resetDarkenedSeparatorColor
{
  v3 = [(UIView *)self _accessibilityHigherContrastTintColorForColor:self->_separatorColor];
  darkenedSeparatorColor = self->_darkenedSeparatorColor;
  self->_darkenedSeparatorColor = v3;
}

- (void)_setupDefaultHeights
{
  if ((*(&self->_tableFlags + 25) & 8) != 0)
  {
    self->_rowHeight = -1.0;
    self->_sectionHeaderHeight = -1.0;
    self->_sectionFooterHeight = -1.0;
    v7 = dyld_program_sdk_at_least();
    v6 = -1.0;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
    self->_rowHeight = v3;
    [(UITableConstants *)self->_constants defaultSectionHeaderHeightForTableView:self];
    self->_sectionHeaderHeight = v4;
    [(UITableConstants *)self->_constants defaultSectionFooterHeightForTableView:self];
    self->_sectionFooterHeight = v5;
    v6 = 0.0;
  }

  self->_estimatedRowHeight = v6;
  self->_estimatedSectionHeaderHeight = v6;
  self->_estimatedSectionFooterHeight = v6;
}

- (BOOL)_estimatesRowHeights
{
  v2 = self;
  estimatedRowHeight = self->_estimatedRowHeight;
  LOBYTE(self) = 1;
  if (estimatedRowHeight != -1.0 && estimatedRowHeight <= 0.0)
  {
    LODWORD(self) = (*(&v2->_tableFlags + 4) >> 5) & 1;
  }

  return self;
}

- (void)_updateHeaderFooterPinningBehavior
{
  metricsAdapter = self->_metricsAdapter;
  if (metricsAdapter)
  {
    if ((*&metricsAdapter->_adapterFlags & 4) == 0)
    {
      [(UITableMetricsAdapter *)self->_metricsAdapter _updateSharedListBehaviors];
    }

    headerFooterPinningBehavior = metricsAdapter->_headerFooterPinningBehavior;
  }

  else
  {
    headerFooterPinningBehavior = 0;
  }

  if ((headerFooterPinningBehavior - 1) <= 1 && (*(&self->_tableFlags + 3) & 0x10000000000000) != 0)
  {
    v5 = *(&self->_tableFlags + 1) | 0x18000000000000;
LABEL_11:
    *(&self->_tableFlags + 1) = v5;
    return;
  }

  v6 = *(&self->_tableFlags + 1);
  if ((headerFooterPinningBehavior - 1) <= 1 && self->_sectionHeaderTopPadding == 0.0)
  {
    v5 = v6 | 0x18000000000000;
    goto LABEL_11;
  }

  *(&self->_tableFlags + 1) = v6 & 0xFFE7FFFFFFFFFFFFLL | ((headerFooterPinningBehavior & 3) << 51);
}

- (void)_updateSelectionIsKey
{
  v3 = (*(&self->_tableFlags + 2) >> 24) & 1;
  v4 = [(UITableView *)self selectionFollowsFocus];

  _UITableUpdateSelectionIsKeyTraitOverride(self, v3, v4);
}

- (BOOL)selectionFollowsFocus
{
  v2 = (*(&self->_tableFlags + 2) >> 16) & 3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__UITableView_selectionFollowsFocus__block_invoke;
  v4[3] = &unk_1E70F3CB0;
  v4[4] = self;
  return _UITriStateToBool_0(v2, v4);
}

- (void)_resetSwipeActionController
{
  [(UISwipeActionController *)self->_swipeActionController reloadData];
  if ((*(&self->_tableFlags + 22) & 8) != 0)
  {
    [(UITableView *)self _setEditing:0 animated:0 forced:1];
  }

  swipeToDeleteCell = self->_swipeToDeleteCell;
  self->_swipeToDeleteCell = 0;

  swipedIndexPath = self->_swipedIndexPath;
  self->_swipedIndexPath = 0;
}

- (double)_heightForTableHeader
{
  if ([(UITableView *)self _shouldUseNewHeaderFooterBehavior])
  {
    v3 = 0.0;
    if ((*(&self->_tableFlags + 7) & 0x40) != 0)
    {
      v4 = [(UITableView *)self _delegateProxy];
      [v4 heightForHeaderInTableView:self];
      v3 = v5;
    }

    if (v3 == -1.0)
    {
      return 0.0;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    [(UIView *)self->_tableHeaderView frame];

    return CGRectGetHeight(*&v7);
  }
}

- (void)_updateRowData
{
  if (!self->_rowData)
  {
    v3 = [[UITableViewRowData alloc] initWithTableView:?];
    rowData = self->_rowData;
    self->_rowData = v3;
  }

  visibleCells = self->_visibleCells;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__UITableView__updateRowData__block_invoke;
  v7[3] = &unk_1E7123498;
  v7[4] = self;
  [(NSMutableArray *)visibleCells enumerateObjectsUsingBlock:v7];
  *(&self->_tableFlags + 2) &= ~0x1000000000000uLL;
  [(UITableViewRowData *)self->_rowData invalidateAllSections];
  if (*(&self->_tableFlags + 4))
  {
    if ((*(&self->_tableFlags + 14) & 7) != 0)
    {
      [(UITableView *)self _scheduleAdjustExtraSeparators];
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__UITableView__updateRowData__block_invoke_2;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [UIView _performSystemAppearanceModifications:v6];
  }

  [(UITableView *)self _adjustReusableTableCells];
}

- (double)_heightForTableFooter
{
  if ([(UITableView *)self _shouldUseNewHeaderFooterBehavior])
  {
    v3 = 0.0;
    if ((*&self->_tableFlags & 0x8000000000000000) != 0)
    {
      v4 = [(UITableView *)self _delegateProxy];
      [v4 heightForFooterInTableView:self];
      v3 = v5;
    }

    if (v3 == -1.0)
    {
      return 0.0;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    [(UIView *)self->_tableFooterView frame];

    return CGRectGetHeight(*&v7);
  }
}

- (int64_t)_numberOfSections
{
  if ((*&self->_tableFlags & 4) == 0)
  {
    return 1;
  }

  v4 = [(UITableView *)self _dataSourceProxy];
  v5 = [v4 numberOfSectionsInTableView:self];

  return v5 & ~(v5 >> 63);
}

- (id)_dataSourceProxy
{
  if ([(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController hasShadowUpdates])
  {
    WeakRetained = self->_shadowUpdatesController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  return WeakRetained;
}

uint64_t __29__UITableView__updateRowData__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) rowHeight];
  v2 = *(a1 + 32);

  return [v2 setRowHeight:?];
}

- (void)_adjustReusableTableCells
{
  reusableTableCells = self->_reusableTableCells;
  if (self->_rowData)
  {
    if (reusableTableCells)
    {
      return;
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reusableTableCells = self->_reusableTableCells;
  }

  else
  {
    if (!reusableTableCells)
    {
      return;
    }

    v4 = 0;
  }

  self->_reusableTableCells = v4;
}

- (void)_updateContentSize
{
  v3 = dyld_program_sdk_at_least();

  [(UITableView *)self _updateContentSizeSkippingContentOffsetAdjustment:v3];
}

- (BOOL)_isTableHeaderAutohiding
{
  v2 = [(UITableView *)self tableHeaderView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateShowScrollIndicatorsFlag
{
  if (self->_index)
  {
    v3 = [(UIView *)self window];
    v4 = [v3 _screen];
    v5 = [v4 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    if ([v5 integerValue] == 2)
    {
      v6 = *(&self->_tableFlags + 2);

      if ((v6 & 0x400000000) == 0)
      {
        v7 = *(&self->_tableFlags + 2);
LABEL_6:
        v9.receiver = self;
        v9.super_class = UITableView;
        [(UIScrollView *)&v9 setShowsHorizontalScrollIndicator:(v7 >> 27) & 1];
        [(UIScrollView *)&v8 _setDefaultShowsVerticalScrollIndicator:(*(&self->_tableFlags + 2) >> 28) & 1, self, UITableView];
        return;
      }
    }

    else
    {
    }
  }

  else
  {
    v7 = *(&self->_tableFlags + 2);
    if ((v7 & 0x400000000) == 0)
    {
      goto LABEL_6;
    }
  }

  v11.receiver = self;
  v11.super_class = UITableView;
  [(UIScrollView *)&v11 setShowsHorizontalScrollIndicator:0];
  v10.receiver = self;
  v10.super_class = UITableView;
  [(UIScrollView *)&v10 setShowsVerticalScrollIndicator:0, v8.receiver, v8.super_class];
}

- (void)_updateWrapperFrame
{
  if ((*(&self->_tableFlags + 23) & 0x20) != 0)
  {
    [(UITableView *)self _frameForWrapper];
    [(UIScrollView *)self->_wrapperView setFrame:?];

    [(UITableView *)self _updateWrapperContentInset];
  }
}

- (void)_adjustTableHeaderAndFooterViews
{
  if (self->_tableHeaderView)
  {
    if ((*(&self->_tableFlags + 22) & 0x10) == 0)
    {
      v3 = [(UITableViewRowData *)self->_rowData rectForTableHeaderView];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      [(UIView *)self->_tableHeaderView frame];
      v14.origin.x = v3;
      v14.origin.y = v5;
      v14.size.width = v7;
      v14.size.height = v9;
      if (!CGRectEqualToRect(v13, v14))
      {
        [(UIView *)self->_tableHeaderView setFrame:v3, v5, v7, v9];
      }
    }
  }

  if (self->_tableFooterView)
  {
    v10 = [(UITableViewRowData *)self->_rowData rectForTableFooterView];
    tableFooterView = self->_tableFooterView;

    [(UIView *)tableFooterView setFrame:v10];
  }
}

- (void)_adjustCountLabel
{
  countLabel = self->_countLabel;
  if (countLabel)
  {
    [(UIView *)countLabel frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(UIScrollView *)self contentSize];
    v11 = v10;
    v13 = v12;
    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v11;
    v17.size.height = v9;
    Height = CGRectGetHeight(v17);
    v15 = self->_countLabel;

    [(UILabel *)v15 setFrame:v5, v13 - Height, v11, v9];
  }
}

- (void)_updateIndexFrame
{
  if (self->_indexContainerView)
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UITableView *)self _insetsForIndexBar];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(UIView *)self traitCollection];
    v20 = [v19 userInterfaceIdiom];

    if (v20 == 3)
    {
      v21 = [(UIView *)self window];
      v22 = [v21 _screen];
      v23 = [v22 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
      if ([v23 integerValue] == 2)
      {
      }

      else
      {
        v24 = [(UIScrollView *)self _staticScrollBar];
        v25 = [v24 superview];

        if (v25)
        {
          v26 = (v10 - (v12 + v16) + -64.0) * 0.5;
          v12 = v12 + v26;
          v16 = v16 + v26;
        }
      }
    }

    v74 = v4;
    v75 = v10;
    v27 = v4 + v14;
    v76 = v8;
    v28 = v8 - (v18 + v14);
    v29 = v6;
    v30 = v6 + v12;
    v31 = v10 - (v16 + v12);
    v32 = *(&self->super.super._viewFlags + 2);
    [(UITableViewIndex *)self->_index sizeThatFits:v28, v31];
    v34 = v33;
    v36 = v35;
    if ((v32 & 0x400000) != 0)
    {
      v37 = v33;
      v80.origin.x = v27;
      v80.origin.y = v30;
      v80.size.width = v28;
      v80.size.height = v31;
      MinX = CGRectGetMinX(v80);
    }

    else
    {
      v79.origin.x = v27;
      v79.origin.y = v30;
      v79.size.width = v28;
      v79.size.height = v31;
      v37 = v34;
      MinX = CGRectGetMaxX(v79) - v34;
    }

    v81.origin.x = v27;
    v81.origin.y = v30;
    v81.size.width = v28;
    v81.size.height = v31;
    MinY = CGRectGetMinY(v81);
    v40 = *(&self->_tableFlags + 2);
    if ((v40 & 0x2000000) != 0)
    {
      v41 = v29;
      v42 = v76;
      if ((v40 & 0x4000000) == 0)
      {
        if ((v32 & 0x400000) != 0)
        {
          MinX = -v37;
        }

        else
        {
          [(UIView *)self bounds];
          MinX = CGRectGetMaxX(v82);
        }
      }

      [(UIView *)self->_index bounds];
      if (v36 != v43)
      {
        [(UIView *)self->_index bounds];
        MinY = MinY + v36 - v44;
        [(UIView *)self->_index bounds];
        v36 = v45;
      }
    }

    else
    {
      v41 = v29;
      v42 = v76;
    }

    if (v20 == 3)
    {
      [(UITableView *)self _externalIndexWidth];
      v37 = v46;
      v47 = [(UIView *)self window];
      v48 = [v47 _screen];
      v49 = [v48 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
      v50 = [v49 integerValue];

      if (v50 != 2)
      {
        v51 = [(UIScrollView *)self _staticScrollBar];
        if (v51 && (v52 = v51, -[UIScrollView _staticScrollBar](self, "_staticScrollBar"), v53 = objc_claimAutoreleasedReturnValue(), [v53 superview], v54 = objc_claimAutoreleasedReturnValue(), v54, v53, v52, v54))
        {
          v55 = [(UIScrollView *)self _staticScrollBar];
          [v55 centeringBounds];
          MinX = round(v57 + (v56 - v37) * 0.5);

          v58 = [(UIScrollView *)self _staticScrollBar];
          [v58 centeringBounds];
          MinY = round(v60 + (v59 - v36) * 0.5);
        }

        else
        {
          MinX = v42 - v37;
        }
      }
    }

    if ((*(&self->_tableFlags + 7) & 0x10) != 0)
    {
      v61 = [(UITableView *)self _delegateProxy];
      [v61 tableView:self frameForSectionIndexGivenProposedFrame:{MinX, MinY, v37, v36}];
      MinX = v62;
      MinY = v63;
      v37 = v64;
      v36 = v65;
    }

    v66 = 0.0;
    if (v20 == 3)
    {
      v67 = 0.0;
    }

    else if ((v32 & 0x400000) != 0)
    {
      v85.origin.x = MinX;
      v85.origin.y = MinY;
      v85.size.width = v37;
      v85.size.height = v36;
      v70 = CGRectGetMinX(v85);
      v86.origin.x = v74;
      v86.size.height = v75;
      v86.origin.y = v41;
      v86.size.width = v42;
      v71 = CGRectGetMinX(v86);
      v67 = 0.0;
      v66 = fmax(v70 - v71, 0.0);
      MinX = MinX - v66;
      v37 = v37 + v66;
    }

    else
    {
      v83.origin.x = v74;
      v83.size.height = v75;
      v83.origin.y = v41;
      v83.size.width = v42;
      MaxX = CGRectGetMaxX(v83);
      v84.origin.x = MinX;
      v84.origin.y = MinY;
      v84.size.width = v37;
      v84.size.height = v36;
      v69 = CGRectGetMaxX(v84);
      v66 = 0.0;
      v67 = fmax(MaxX - v69, 0.0);
      v37 = v37 + v67;
    }

    [(UITableViewIndex *)self->_index setDrawingInsets:0.0, v66, 0.0, v67];
    [(UIView *)self->_indexContainerView setFrame:MinX, MinY, v37, v36];
    if ([(UITableView *)self _isShowingIndex])
    {
      v72 = [(UITableView *)self tableHeaderView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v77 = [(UITableView *)self tableHeaderView];
        [v77 _updateInsetsForTableView:self];
      }
    }
  }
}

- (double)_indexBarExtentFromEdge
{
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 3)
  {
    v4 = [(UIView *)self window];
    v5 = [v4 _screen];
    v6 = [v5 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    v7 = [v6 integerValue];

    result = 0.0;
    if (v7 != 2)
    {
      return result;
    }
  }

  else
  {
  }

  v9 = [(UITableView *)self _isShowingIndex];
  result = 0.0;
  if (v9)
  {
    if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
    {
      [(UIView *)self->_index frame];

      return CGRectGetMaxX(*&v11);
    }

    else
    {
      [(UIView *)self bounds];
      Width = CGRectGetWidth(v16);
      [(UIView *)self->_index frame];
      return Width - CGRectGetMinX(v17);
    }
  }

  return result;
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = UITableView;
  v2 = [(UIScrollView *)&v4 delegate];

  return v2;
}

- (void)_configureContextMenuInteractionIfNeeded
{
  contextMenuInteraction = self->_contextMenuInteraction;
  if ((*(&self->_tableFlags + 12) & 0x10) != 0)
  {
    if (!contextMenuInteraction)
    {
      v5 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
      v6 = self->_contextMenuInteraction;
      self->_contextMenuInteraction = v5;

      v7 = self->_contextMenuInteraction;

      [(UIView *)self addInteraction:v7];
    }
  }

  else if (contextMenuInteraction)
  {
    [(UIView *)self removeInteraction:?];
    v4 = self->_contextMenuInteraction;
    self->_contextMenuInteraction = 0;
  }
}

- (void)reloadData
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->_tableReloadingSuspendedCount < 1)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &qword_1EA967558);
    if (*CategoryCachedImpl)
    {
      v45 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = v45;
        *v48 = 138412546;
        *&v48[4] = objc_opt_class();
        *&v48[12] = 2048;
        *&v48[14] = self;
        v47 = *&v48[4];
        _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "<%@ %p> reloadData performing", v48, 0x16u);
      }
    }

    v8 = __UILogGetCategoryCachedImpl("TableView", &qword_1EA967560);
    v9 = *(v8 + 8);
    v10 = os_signpost_id_make_with_pointer(*(v8 + 8), self);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *v48 = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_EVENT, v11, "ReloadData", "", v48, 2u);
      }
    }

    [(UITableView *)self _suspendReloads];
    if (self->_firstResponderViewType == 1 || [(UITableView *)self _shouldUseNewHeaderFooterBehavior])
    {
      if (self->_firstResponderView)
      {
        *(&self->_tableFlags + 3) |= 0x40000000000000uLL;
        v12 = [(UIView *)self window];
        v13 = [v12 firstResponder];
        [v13 resignFirstResponder];

        *(&self->_tableFlags + 3) &= ~0x40000000000000uLL;
        if (self->_firstResponderView)
        {
          [(UITableView *)self _resumeReloads];
          return;
        }
      }
    }

    v14 = *(&self->_tableFlags + 2);
    *(&self->_tableFlags + 2) = v14 | 0x400;
    if (self->_focusedCell)
    {
      *(&self->_tableFlags + 3) |= 0x20000uLL;
      [(UIView *)self->_focusedCell frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(UIScrollView *)self visibleBounds];
      v51.origin.x = v23;
      v51.origin.y = v24;
      v51.size.width = v25;
      v51.size.height = v26;
      v50.origin.x = v16;
      v50.origin.y = v18;
      v50.size.width = v20;
      v50.size.height = v22;
      v27 = CGRectIntersectsRect(v50, v51);
      v28 = 0x40000;
      if (!v27)
      {
        v28 = 0;
      }

      *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFFFFFBFFFFLL | v28;
    }

    [(UIView *)self setNeedsFocusUpdate:*v48];
    [(_UITableViewDragController *)self->_dragController forceReset];
    v5 = [(_UITableViewDropController *)self->_dropController beginIgnoringDrags];
    [(UITableView *)self _resetAllShadowUpdates];
    v29 = [(UITableView *)self _identityTracker:0];
    [(_UIIndexPathIdentityTracker *)v29 reset];

    [(UIContextMenuInteraction *)self->_contextMenuInteraction _retargetDismissingMenuWithInternalIdentifier:0 toPreview:0 force:1];
    [(UITableView *)self _resetSwipeActionController];
    v30 = [(UITableView *)self _isScrolledToTop];
    v31 = [(UITableView *)self _indexPathsForVisibleRowsUsingPresentationValues:1];
    v32 = [v31 firstObject];

    if ((*(&self->_tableFlags + 25) & 2) == 0)
    {
      [(UITableView *)self _storePreReloadStateForRestoringContentOffsetWithFirstVisibleIndexPath:v32];
    }

    v33 = *(&self->_tableFlags + 2);
    if ((v33 & 0x2000000000000) != 0)
    {
      *(&self->_tableFlags + 2) = v33 | 0x4000000000000;
    }

    [(UITableView *)self _cleanupStateFromDeleteConfirmation];
    v34 = [(UIView *)self->_wrapperView layer];
    [v34 removeAllAnimations];

    reorderingSupport = self->_reorderingSupport;
    if (reorderingSupport && (*(reorderingSupport + 32) & 4) == 0)
    {
      *(reorderingSupport + 32) |= 4u;
      rowData = self->_rowData;
      v37 = reorderingSupport;
      [(UITableViewRowData *)rowData setReorderedIndexPath:?];
      [(UITableView *)self _cancelCellReorder:0];
    }

    [(UITableView *)self _removeAllVisibleCells];
    *(&self->_tableFlags + 2) &= ~0x20000000uLL;
    [(UITableView *)self noteNumberOfRowsChanged];
    if ((*(&self->_tableFlags + 29) & 0x20) == 0)
    {
      [(NSMutableArray *)self->_highlightedIndexPaths removeAllObjects];
      [(NSMutableArray *)self->_selectedIndexPaths removeAllObjects];
      [(_UITableViewMultiSelectController *)self->_multiSelectController clearSelectionState];
      deselectionTransitionIndexPaths = self->_deselectionTransitionIndexPaths;
      self->_deselectionTransitionIndexPaths = 0;

      [(NSMutableSet *)self->_hiddenSeparatorIndexPaths removeAllObjects];
    }

    pendingSelectionIndexPath = self->_pendingSelectionIndexPath;
    if (pendingSelectionIndexPath)
    {
      self->_pendingSelectionIndexPath = 0;
    }

    [(UITableView *)self _updateIndex];
    if ([(UITableView *)self _shouldRestorePreReloadScrollPositionWithFirstVisibleIndexPath:v32 scrolledToTop:v30])
    {
      *(&self->_tableFlags + 3) |= 0x200uLL;
    }

    v40 = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFFFFBFFLL | (((v14 >> 10) & 1) << 10);
    *(&self->_tableFlags + 1) &= ~0x800000000000000uLL;
    *(&self->_tableFlags + 2) = v40;
    [(UITableView *)self _clearNeedsRecomputeHeightsForInvalidatedElements];
    if (self->_focusedCellIndexPath && ![(UITableView *)self _indexPathIsValid:?])
    {
      focusedCellIndexPath = self->_focusedCellIndexPath;
      self->_focusedCellIndexPath = 0;
    }

    [v5 endIgnoringDrags];
    [(UITableView *)self _resumeReloads];
    prefetchContext = self->_prefetchContext;
    if (prefetchContext)
    {
      [(_UITableViewPrefetchContext *)prefetchContext cancelWithNewMaxIndex:?];
    }

    v43 = *(&self->_tableFlags + 3);
    if ((v43 & 0x40000000000) != 0 && !self->_tableReloadingSuspendedCount)
    {
      *(&self->_tableFlags + 3) = v43 & 0xFFFFFBFFFFFFFFFFLL;
      [(UITableView *)self _purgeReuseQueues];
      v43 = *(&self->_tableFlags + 3);
    }

    if ((v43 & 0x201000000000) == 0x1000000000)
    {
      v44 = [(UIView *)self window];

      if (v44)
      {
        [(UIView *)self layoutIfNeeded];
      }
    }

    goto LABEL_43;
  }

  *(&self->_tableFlags + 1) |= 0x200000000000000uLL;
  v3 = __UILogGetCategoryCachedImpl("TableViewOperations", &qword_1EA967550);
  if (*v3)
  {
    v4 = *(v3 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      *v48 = 138412546;
      *&v48[4] = objc_opt_class();
      *&v48[12] = 2048;
      *&v48[14] = self;
      v6 = *&v48[4];
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "<%@ %p> reloadData called but reloads are suspended", v48, 0x16u);

LABEL_43:
    }
  }
}

- (void)_resetAllShadowUpdates
{
  [(NSMutableArray *)self->_placeholderContexts removeAllObjects];
  shadowUpdatesController = self->_shadowUpdatesController;

  [(_UITableViewShadowUpdatesController *)shadowUpdatesController reset];
}

- (BOOL)_isScrolledToTop
{
  [(UIScrollView *)self contentOffset];

  return [(UITableView *)self _isScrolledToTopAtContentOffsetY:v3];
}

- (void)_cleanupStateFromDeleteConfirmation
{
  swipedIndexPath = self->_swipedIndexPath;
  self->_swipedIndexPath = 0;

  *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFF7FFFFFFFFFFFFFLL | (((*(&self->_tableFlags + 1) >> 54) & 1) << 55);
  swipeToDeleteCell = self->_swipeToDeleteCell;
  self->_swipeToDeleteCell = 0;

  if ((*(&self->_tableFlags + 23) & 0x20) != 0 && [(UIView *)self->_wrapperView clipsToBounds])
  {
    [(UITableView *)self _updateWrapperClipping];
  }

  *(&self->_tableFlags + 3) &= ~0x100uLL;
}

- (void)_removeAllVisibleCells
{
  visibleCells = self->_visibleCells;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__UITableView__removeAllVisibleCells__block_invoke;
  v8[3] = &unk_1E7123498;
  v8[4] = self;
  [(NSMutableArray *)visibleCells enumerateObjectsWithOptions:2 usingBlock:v8];
  [(NSMutableArray *)self->_visibleCells removeAllObjects];
  self->_visibleRows.location = 0;
  self->_visibleRows.length = 0;
  *(&self->_tableFlags + 2) &= ~0x4000000000000000uLL;
  v4 = [(NSMutableDictionary *)self->_visibleHeaderViews copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__UITableView__removeAllVisibleCells__block_invoke_2;
  v7[3] = &unk_1E70FEDB8;
  v7[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = [(NSMutableDictionary *)self->_visibleFooterViews copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__UITableView__removeAllVisibleCells__block_invoke_3;
  v6[3] = &unk_1E70FEDB8;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];

  [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa removeAllPrefetchedCells];
  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
}

- (void)noteNumberOfRowsChanged
{
  if (self->_tableReloadingSuspendedCount < 2)
  {
    [(UITableView *)self _setRowCount:0x7FFFFFFFFFFFFFFFLL];
    [(UITableView *)self _updateRowData];
    [(UITableView *)self _setRowCount:[(UITableViewRowData *)self->_rowData numberOfRows]];
    [(UITableView *)self _updateContentSize];
    [(UITableView *)self _updateIndex];

    [(UITableView *)self _numberOfRowsDidChange];
  }

  else
  {
    *(&self->_tableFlags + 1) |= 0x200000000000000uLL;
  }
}

- (unint64_t)_countStringRowCount
{
  v2 = (*(&self->_tableFlags + 2) >> 2) & 0xFLL;
  v3 = [(UITableViewRowData *)self->_rowData numberOfRows];
  if (v3 >= v2)
  {
    return v3 - v2;
  }

  else
  {
    return 0;
  }
}

- (void)_updateIndex
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(UITableView *)self _dataSourceHasSectionIndexTitlesForTableView])
  {
    v3 = *(&self->_tableFlags + 2);
    if ((v3 & 0x20000000) == 0)
    {
      *(&self->_tableFlags + 2) = v3 | 0x20000000;
      [(UITableView *)self _updateIndexTitlesFromDataSource];
      v4 = [(UITableView *)self _dataSourceSectionIndexTitles];
      v5 = v4;
      if (v4 && [v4 count] && -[UITableViewRowData numberOfRows](self->_rowData) >= self->_sectionIndexMinimumDisplayRowCount)
      {
        if (!self->_index)
        {
          v28 = 0;
          v29 = 0;
          v13 = [(UIView *)self traitCollection];
          [UITableViewIndex makeTableViewIndex:&v29 containerView:&v28 forTraits:v13];
          v14 = v29;
          v15 = v29;
          v16 = v28;
          v17 = v28;

          [v15 setTableView:self];
          objc_storeStrong(&self->_index, v14);
          [(UIControl *)self->_index addTarget:self action:sel__sectionIndexTouchesBegan_ forControlEvents:1];
          [(UIControl *)self->_index addTarget:self action:sel__sectionIndexChanged_ forControlEvents:4096];
          [(UIControl *)self->_index addTarget:self action:sel__sectionIndexTouchesEnded_ forControlEvents:448];
          objc_storeStrong(&self->_indexContainerView, v16);
          if (!self->_indexRetargetFeedbackGenerator)
          {
            v18 = +[_UISelectionFeedbackGeneratorConfiguration strongConfiguration];
            v19 = [v18 tweakedConfigurationForClass:objc_opt_class() usage:@"indexRetarget"];

            v20 = [(UIFeedbackGenerator *)[UISelectionFeedbackGenerator alloc] initWithConfiguration:v19 view:self->_index];
            indexRetargetFeedbackGenerator = self->_indexRetargetFeedbackGenerator;
            self->_indexRetargetFeedbackGenerator = v20;
          }

          if ([(UITableView *)self _shouldSetIndexBackgroundColorToTableBackgroundColor])
          {
            index = self->_index;
            v23 = [(UIView *)self backgroundColor];
            [(UIView *)index setBackgroundColor:v23];
          }

          [(UITableViewIndex *)self->_index setIndexColor:self->_indexColor];
          [(UITableViewIndex *)self->_index setIndexBackgroundColor:self->_indexBackgroundColor];
          [(UITableViewIndex *)self->_index setIndexTrackingBackgroundColor:self->_indexTrackingBackgroundColor];
          [(UITableView *)self _addIndexToAppropriateContainer];
        }

        [(UITableView *)self _updateIndexDisplayedTitles];
      }

      else
      {
        [(UITableView *)self _removeIndex];
      }
    }

    if (self->_index)
    {
      [(UITableView *)self _updateIndexFrame];
      [(UITableView *)self _addIndexToAppropriateContainer];
    }
  }

  else if (self->_index)
  {
    [(UITableView *)self _removeIndex];
  }

  [(UITableView *)self _cellIndexBarExtentFromEdge];
  v7 = v6;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_visibleCells;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v24 + 1) + 8 * i) _setIndexBarExtentFromEdge:{v7, v24}];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }
}

- (double)_cellIndexBarExtentFromEdge
{
  [(UITableView *)self _indexBarExtentFromEdge];
  v4 = v3;
  [(UITableView *)self _sectionContentInset];
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return fmax(v4 - v7, 0.0);
}

- (void)_clearNeedsRecomputeHeightsForInvalidatedElements
{
  intrinsicContentSizeInvalidationContext = self->_intrinsicContentSizeInvalidationContext;
  self->_intrinsicContentSizeInvalidationContext = 0;

  *(&self->_tableFlags + 3) &= 0xFFFCFFFFFFFFFFFFLL;
}

- (void)_resumeReloads
{
  v2 = self->_tableReloadingSuspendedCount - 1;
  self->_tableReloadingSuspendedCount = v2;
  if (!v2)
  {
    v3 = *(&self->_tableFlags + 1);
    if ((v3 & 0x200000000000000) != 0)
    {
      *(&self->_tableFlags + 1) = v3 & 0xFDFFFFFFFFFFFFFFLL;
      [(UITableView *)self reloadData];
    }

    else if ((v3 & 0x4000000000000000) != 0)
    {
      [(UIScrollView *)self setNeedsLayout];
    }
  }
}

- (BOOL)_hasContentForBarInteractions
{
  if (([(UITableViewRowData *)self->_rowData hasRows]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UITableView;
  return [(UIScrollView *)&v4 _hasContentForBarInteractions];
}

- (void)_layoutAdjustmentsDidChange
{
  v4.receiver = self;
  v4.super_class = UITableView;
  [(UIScrollView *)&v4 _layoutAdjustmentsDidChange];
  if (((*(&self->_tableFlags + 1) >> 45) & 3uLL) - 1 > 1)
  {
    [(UITableView *)self _updateSeparatorStateForVisibleCells];
  }

  else
  {
    [(UITableView *)self _topPadding];
    if (v3 == -1.0)
    {
      [(UITableView *)self _invalidateForTopOrBottomPaddingChange:1];
    }
  }
}

- (BOOL)_shouldShowHeadersAndFooters
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] != 3;

  return v3;
}

- (BOOL)_estimatesSectionHeaderHeights
{
  v2 = self;
  estimatedSectionHeaderHeight = self->_estimatedSectionHeaderHeight;
  LOBYTE(self) = 1;
  if (estimatedSectionHeaderHeight != -1.0 && estimatedSectionHeaderHeight <= 0.0)
  {
    LODWORD(self) = (*(&v2->_tableFlags + 4) >> 6) & 1;
  }

  return self;
}

- (UIEdgeInsets)_sectionHeaderContentInsets
{
  if ([(UITableView *)self _supplementarySectionHeadersHugContent]|| [(UITableView *)self _supplementariesFollowSectionContentInsets])
  {

    [(UITableView *)self _sectionContentInset];
  }

  else
  {

    [(UITableView *)self _tableContentInset];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)_visibleHeaderFooterViews
{
  v3 = [(NSMutableDictionary *)self->_visibleHeaderViews count];
  v4 = [(NSMutableDictionary *)self->_visibleFooterViews count]+ v3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4)
  {
    rowData = self->_rowData;
    [(UITableView *)self _visibleBounds];
    v11 = [(UITableViewRowData *)rowData sectionsInRect:v7, v8, v9, v10];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = __40__UITableView__visibleHeaderFooterViews__block_invoke;
    v16 = &unk_1E7123728;
    v18 = v11;
    v19 = v12;
    v17 = v5;
    __40__UITableView__visibleHeaderFooterViews__block_invoke(v14, self->_visibleHeaderViews);
    v15(v14, self->_visibleFooterViews);
  }

  return v5;
}

- (BOOL)_supplementariesFollowSectionContentInsets
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom] == 6 && -[UITableView style](self, "style") == UITableViewStylePlain;

  return v4;
}

- (BOOL)_estimatesSectionFooterHeights
{
  v2 = self;
  estimatedSectionFooterHeight = self->_estimatedSectionFooterHeight;
  LOBYTE(self) = 1;
  if (estimatedSectionFooterHeight != -1.0 && estimatedSectionFooterHeight <= 0.0)
  {
    LODWORD(self) = *(&v2->_tableFlags + 4) >> 7;
  }

  return self;
}

- (UIEdgeInsets)_sectionFooterContentInsets
{
  if ([(UITableView *)self _supplementariesFollowSectionContentInsets])
  {

    [(UITableView *)self _sectionContentInset];
  }

  else
  {

    [(UITableView *)self _tableContentInset];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)heightForAutohidingTableHeaderView
{
  rowData = self->_rowData;
  if (!rowData)
  {
    return 0.0;
  }

  heightForTableHeaderViewHiding = rowData->_heightForTableHeaderViewHiding;
  if (heightForTableHeaderViewHiding < 0.0)
  {
    heightForTableHeaderViewHiding = [(UITableViewRowData *)rowData heightForTableHeaderView];
  }

  return fmax(heightForTableHeaderViewHiding, 0.0);
}

- (void)_updateBackgroundView
{
  [(UITableView *)self _updateBackgroundViewFrame];
  if (self->_backgroundView)
  {

    [UIScrollView _moveContentSubview:"_moveContentSubview:toBack:" toBack:?];
  }
}

- (void)_updateBackgroundViewFrame
{
  [(UIView *)self bounds];
  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView setFrame:?];
}

- (void)_sendGeometryAffectingContentBottomChangedToScrollObservers
{
  if ((*(&self->_tableFlags + 28) & 0x80) == 0)
  {
    v2.receiver = self;
    v2.super_class = UITableView;
    [(UIScrollView *)&v2 _sendGeometryAffectingContentBottomChangedToScrollObservers];
  }
}

- (void)_ensureRowDataIsLoaded
{
  if (!self->_rowData)
  {
    [(UITableView *)self _updateRowData];
  }
}

- (void)_updateRowDataIfNeeded
{
  if (self->_rowData)
  {
    [(UITableView *)self _updateRowData];
  }
}

- (void)_updatePinnedTableHeader
{
  rowData = self->_rowData;
  if (rowData && (*(&self->_tableFlags + 22) & 0x10) == 0)
  {
    v4 = [(UITableViewRowData *)rowData rectForTableHeaderView];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_tableHeaderView frame];
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    if (!CGRectEqualToRect(v13, v14))
    {
      [(UIView *)self->_tableHeaderView setFrame:v4, v6, v8, v10];
    }

    if ((*(&self->_tableFlags + 20) & 2) != 0)
    {
      tableHeaderView = self->_tableHeaderView;

      [(UITableView *)self _addContentSubview:tableHeaderView atBack:0];
    }
  }
}

- (void)layoutSubviews
{
  [(UITableView *)self _applyCoalescedContentSizeUpdates];
  [(UITableView *)self _reloadDataIfNeeded];
  if ((*(&self->_tableFlags + 15) & 0x10) != 0)
  {
    [(UITableView *)self _rebuildGeometry];
  }

  [(UITableView *)self _recomputeHeightsForInvalidatedElementsIfNeeded];
  if ((*(&self->_tableFlags + 15) & 0x40) != 0 && !self->_tableReloadingSuspendedCount)
  {
    [(UITableView *)self _visibleBounds];
    if (CGRectIsEmpty(v10))
    {
      *(&self->_tableFlags + 1) |= 0x8000000000000000;
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      [(UITableView *)self _updateVisibleCellsNow:1];
      objc_autoreleasePoolPop(v3);
    }
  }

  if ((*(&self->_tableFlags + 16) & 0x40) != 0)
  {
    [(UITableView *)self _adjustExtraSeparators];
  }

  [(UITableView *)self _updateBackgroundView];
  [(UITableView *)self _updateIndex];
  [(UIScrollView *)self _scrollViewDidLayoutSubviews];
  contentFocusContainerGuide = self->_contentFocusContainerGuide;
  [(UIView *)self bounds];
  [(UILayoutGuide *)contentFocusContainerGuide _setManualLayoutFrame:?];
  [(UITableView *)self _preparePrefetchContext];
  [(_UITableViewPrefetchContext *)self->_prefetchContext pruneCellsForVisibleIndexRange:self->_visibleRows.length];
  if ((*(&self->_tableFlags + 3) & 0x1004000) == 0x1000000)
  {
    prefetchContext = self->_prefetchContext;
    [(UIScrollView *)self contentOffset];
    location = self->_visibleRows.location;
    length = self->_visibleRows.length;

    [(_UITableViewPrefetchContext *)prefetchContext updateVisibleIndexRange:length withContentOffset:v6];
  }
}

- (id)_preparedCells
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:{-[NSMutableArray count](self->_visibleCells, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_visibleCells;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v14 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  subviewManager = self->_subviewManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29__UITableView__preparedCells__block_invoke;
  v12[3] = &unk_1E7123950;
  v10 = v3;
  v13 = v10;
  if (subviewManager)
  {
    [(NSMutableDictionary *)subviewManager->_prefetchedCells enumerateKeysAndObjectsUsingBlock:v12];
  }

  if (self->_focusedCell && self->_focusedViewType == 1)
  {
    [v10 addObject:?];
  }

  if (self->_firstResponderView && self->_firstResponderViewType == 1)
  {
    [v10 addObject:?];
  }

  return v10;
}

- (void)_applyCoalescedContentSizeUpdates
{
  if (self->_coalescedContentSizeDelta != 0.0)
  {
    self->_coalescedContentSizeDelta = 0.0;
    [(UITableView *)self _applyContentSizeDeltaImmediately:?];
  }
}

- (void)_reloadDataIfNeeded
{
  if ((*(&self->_tableFlags + 15) & 8) != 0 && (*(&self->_tableFlags + 17) & 4) == 0 && !self->_tableReloadingSuspendedCount)
  {
    [(UITableView *)self reloadData];
  }
}

- (void)_updateTableHeaderFooterViewInsetsContentViewsToSafeArea
{
  if (_IsKindOfUITableViewHeaderFooterView(self->_tableHeaderView))
  {
    [(UIView *)self->_tableHeaderView _setInsetsContentViewsToSafeArea:[(UITableView *)self insetsContentViewsToSafeArea]];
  }

  if (_IsKindOfUITableViewHeaderFooterView(self->_tableFooterView))
  {
    tableFooterView = self->_tableFooterView;
    v4 = [(UITableView *)self insetsContentViewsToSafeArea];

    [(UIView *)tableFooterView _setInsetsContentViewsToSafeArea:v4];
  }
}

- (NSString)description
{
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 3);
  *(&self->_tableFlags + 3) = v4 | 0x200000000;
  v13.receiver = self;
  v13.super_class = UITableView;
  v5 = [(UIScrollView *)&v13 description];
  v6 = [v5 mutableCopy];

  [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = WeakRetained;
  if ((v4 & 0x200000000) != 0)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_loadWeakRetained(&self->_dataSource);
    [v6 appendFormat:@"; dataSource: <%@: %p>>", v10, v11];
  }

  else
  {
    [v6 appendFormat:@"; dataSource: %@>", WeakRetained];
  }

  *(p_tableFlags + 3) = *(p_tableFlags + 3) & 0xFFFFFFFDFFFFFFFFLL | v4 & 0x200000000;

  return v6;
}

- (NSIndexPath)indexPathForSelectedRow
{
  v3 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _indexPathForSelectedRowUsingPresentationValues:v3];
}

- (void)_updateForChangeInEffectiveContentInset
{
  if ((*(&self->_tableFlags + 19) & 4) == 0)
  {
    [(UITableView *)self _setNeedsIndexBarInsetsUpdate];
  }

  [(UITableView *)self _updateContentSize];

  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:0];
}

void __37__UITableView__removeAllVisibleCells__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (*(v5 + 3190))
  {
    v7 = *(v5 + 2160);
    v8 = *(v5 + 2256);
    v9 = a2;
    [(UITableViewRowData *)v7 indexPathForRowAtGlobalRow:?];
  }

  else
  {
    [a2 _indexPath];
  }
  v10 = ;
  [*(a1 + 32) _reuseTableViewCell:a2 withIndexPath:v10 didEndDisplaying:1];
}

- (void)_updateConstants
{
  v3 = self->_constants;
  v4 = [(UITableView *)self _resolvedTableConstants];
  constants = self->_constants;
  self->_constants = v4;

  v6 = [[UITableMetricsAdapter alloc] initWithTableStyle:self scrollView:?];
  metricsAdapter = self->_metricsAdapter;
  self->_metricsAdapter = v6;

  [(UITableView *)self _updateConstantsForVisibleCellsAndHeaderFooterViews];
  [(UITableView *)self _rebuildGeometry];
  if ((dyld_program_sdk_at_least() & 1) != 0 || (_UIMainBundleIdentifier(), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqualToString:@"com.relayrides.ios.RelayRides"], v8, (v9 & 1) == 0))
  {

    [(UITableView *)self _applyAppearanceDefaults];
  }
}

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = UITableView;
  [(UIView *)&v14 didMoveToWindow];
  v3 = [(UIView *)self window];
  if (v3)
  {
    [(UIView *)self _rawLayoutMargins];
    v5 = v4;
    v7 = v6;
    v8 = [v3 screen];
    v9 = [v8 _wantsWideContentMargins];

    if (v9)
    {
      [(UIView *)self frame];
      if (CGRectGetWidth(v15) <= 320.0)
      {
        v10 = 16.0;
      }

      else
      {
        v10 = 20.0;
      }

      v11 = v10;
    }

    else
    {
      if (dyld_program_sdk_at_least())
      {
        v11 = 16.0;
      }

      else
      {
        v11 = 15.0;
      }

      dyld_program_sdk_at_least();
    }

    [(UITableView *)self _setDefaultLayoutMargins:v5, v11, v7];
    [(UIScrollView *)self setNeedsLayout];
    if ([(UITableView *)self _supportsCellPrefetching])
    {
      p_tableFlags = &self->_tableFlags;
      if ((*(&self->_tableFlags + 25) & 0x40) == 0)
      {
        _UIUpdateCycleRegisterIdleObserver(self);
        v13 = *(&self->_tableFlags + 3) | 0x4000;
        goto LABEL_16;
      }
    }
  }

  else
  {
    p_tableFlags = &self->_tableFlags;
    if ((*(&self->_tableFlags + 25) & 0x40) != 0)
    {
      _UIUpdateCycleUnregisterIdleObserver(self);
      v13 = *(&self->_tableFlags + 3) & 0xFFFFFFFFFFFFBFFFLL;
LABEL_16:
      *(p_tableFlags + 3) = v13;
    }
  }
}

- (UIEdgeInsets)_cachedSectionIndexBarInsets
{
  top = self->_cachedSectionIndexBarInsets.top;
  left = self->_cachedSectionIndexBarInsets.left;
  bottom = self->_cachedSectionIndexBarInsets.bottom;
  right = self->_cachedSectionIndexBarInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_storeStateForRestoringContentOffsetIfNeeded
{
  v3 = [(UITableView *)self _indexPathsForVisibleRowsUsingPresentationValues:1];
  v4 = [v3 firstObject];

  if ((*(&self->_tableFlags + 25) & 2) == 0)
  {
    [(UITableView *)self _storePreReloadStateForRestoringContentOffsetWithFirstVisibleIndexPath:v4];
    if ([(UITableView *)self _shouldRestorePreReloadScrollPositionWithFirstVisibleIndexPath:v4 scrolledToTop:[(UITableView *)self _isScrolledToTop]])
    {
      *(&self->_tableFlags + 3) |= 0x200uLL;
    }
  }
}

- (id)_delegateProxy
{
  if ([(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController hasShadowUpdates])
  {
    WeakRetained = self->_shadowUpdatesController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  }

  return WeakRetained;
}

- (double)_headerFooterTrailingMarginWidth
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    return self->_sectionContentInset.right;
  }

  v3 = *(&self->super.super._viewFlags + 2);
  [(UITableView *)self _sectionContentInset];
  v5 = v4;
  v7 = v6;
  [(UITableView *)self _tableContentInset];
  v9 = fmax(v5 - v8, 0.0);
  v11 = fmax(v7 - v10, 0.0);
  if ((v3 & 0x400000) != 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  right = self->_separatorInset.right;
  v14 = [(UITableView *)self _separatorInsetIsRelativeToCellEdges];
  if (v12 == 0.0)
  {
    [(UITableView *)self _defaultTrailingCellMarginWidth];
    v16 = v15;
  }

  else
  {
    [(UITableMetricsAdapter *)self->_metricsAdapter defaultTableLayoutMargins];
    v16 = v17;
  }

  [(UITableView *)self _indexBarExtentFromEdge];
  v19 = v18;
  [(UIView *)self directionalLayoutMargins];
  v21 = v20;
  v22 = [(UITableView *)self _shouldApplyReadableWidthInsets];
  if (v12 <= 0.0)
  {
    if (right == -1.0)
    {
      v23 = fmax(v19, v21);
      if (!v22)
      {
        v23 = v19;
      }
    }

    else
    {
      v23 = right + v19;
      v24 = right + fmax(v21, v19);
      if (v22)
      {
        v23 = v24;
      }

      if (v14)
      {
        v23 = right;
      }
    }

    if (v22)
    {
      return v23;
    }

    else
    {
      return v16 + v23;
    }
  }

  return v16;
}

- (void)_recomputeHeightsForInvalidatedElementsIfNeeded
{
  if (!self->_intrinsicContentSizeInvalidationContext)
  {
    return;
  }

  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 30) & 1) != 0 && ([(UIView *)self window], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = *(p_tableFlags + 3);
    if ((v5 & 0x2000000000000) == 0)
    {
      *(p_tableFlags + 3) = v5 | 0x2000000000000;

      [(UIScrollView *)self setNeedsLayout];
      return;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UICollectionViewLayoutInvalidationContext *)self->_intrinsicContentSizeInvalidationContext invalidatedItemIndexPaths];
  v8 = [(UICollectionViewLayoutInvalidationContext *)self->_intrinsicContentSizeInvalidationContext invalidatedSupplementaryIndexPaths];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__UITableView__recomputeHeightsForInvalidatedElementsIfNeeded__block_invoke;
  v27[3] = &unk_1E70F6228;
  v9 = v7;
  v28 = v9;
  v29 = self;
  v10 = v8;
  v30 = v10;
  if (v6)
  {
    v11 = [(UITableViewRowData *)self->_rowData copy];
    v12 = [(UITableView *)self _visibleViews];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__194;
    v25[4] = __Block_byref_object_dispose__194;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__UITableView__recomputeHeightsForInvalidatedElementsIfNeeded__block_invoke_2;
    v20[3] = &unk_1E7123900;
    v23 = v25;
    v24 = v27;
    v20[4] = self;
    v13 = v11;
    v21 = v13;
    v22 = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__UITableView__recomputeHeightsForInvalidatedElementsIfNeeded__block_invoke_3;
    v17[3] = &unk_1E7104548;
    v19 = v25;
    v17[4] = self;
    v14 = v22;
    v18 = v14;
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:1028 options:v20 animations:v17 completion:?];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    __62__UITableView__recomputeHeightsForInvalidatedElementsIfNeeded__block_invoke(v27);
  }

  [(UITableView *)self _clearNeedsRecomputeHeightsForInvalidatedElements];
  v15 = *(p_tableFlags + 3);
  *(p_tableFlags + 3) = v15 & 0xFFF3FFFFFFFFFFFFLL | ((((v15 + 0x4000000000000) >> 50) & 3) << 50);
  if ((v15 & 0xC000000000000) == 0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__UITableView__recomputeHeightsForInvalidatedElementsIfNeeded__block_invoke_4;
    v16[3] = &unk_1E70F3590;
    v16[4] = self;
    [UIApp _performBlockAfterCATransactionCommits:v16];
  }
}

- (void)_reapTentativeViews
{
  if ((*(&self->_tableFlags + 25) & 8) != 0)
  {
    v3 = [(NSMutableDictionary *)self->_tentativeCells copy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __34__UITableView__reapTentativeViews__block_invoke;
    v8[3] = &unk_1E7123950;
    v8[4] = self;
    [v3 enumerateKeysAndObjectsUsingBlock:v8];
    [(NSMutableDictionary *)self->_tentativeCells removeAllObjects];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v5 = __34__UITableView__reapTentativeViews__block_invoke_2;
    v6 = &unk_1E7123558;
    v7 = self;
    __34__UITableView__reapTentativeViews__block_invoke_2(v4, self->_tentativeHeaderViews, self->_visibleHeaderViews, 1);
    v5(v4, self->_tentativeFooterViews, self->_visibleFooterViews, 0);
  }
}

- (UIEdgeInsets)_cellSafeAreaInsets
{
  if (self->_wrapperView)
  {
    self = self->_wrapperView;
  }

  [(UIView *)self safeAreaInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (uint64_t)_canRecomputePreferredAttributesForInvalidatedElements
{
  if (result)
  {
    v1 = result;
    result = _UISupportsIntrinsicContentSizeInvalidation();
    if (result)
    {
      v2 = *(v1 + 3192);
      return (v2 & 0xC00000000000) != 0 && ((v2 >> 50) & 3) < _UIMaximumIntrinsicContentSizeInvalidationUpdatesPerCommit() && (*(v1 + 3183) & 0x18) == 0 && !*(v1 + 2296) && *(v1 + 2960) == 0;
    }
  }

  return result;
}

- (UIColor)separatorColor
{
  v3 = [(UITableView *)self _shouldDrawDarkSeparators];
  v4 = 98;
  if (v3)
  {
    v4 = 112;
  }

  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___UITableView__rowData[v4]);

  return v5;
}

- (id)sectionBorderColor
{
  sectionBorderColor = self->_sectionBorderColor;
  if (sectionBorderColor)
  {
    v3 = sectionBorderColor;
  }

  else
  {
    v3 = [(UITableView *)self separatorColor];
  }

  return v3;
}

- (BOOL)_allowsEffectiveMultipleSelection
{
  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0x4000;
  }

  return (v2 & *(&self->_tableFlags + 4)) != 0;
}

- (BOOL)_retargetScrollAnimation
{
  v3 = [(UIScrollView *)self isScrollAnimating];
  if (v3)
  {
    if (!self->_targetIndexPathForScrolling)
    {
      goto LABEL_7;
    }

    v3 = [(UITableView *)self _estimatesHeights];
    if (v3)
    {
      v4 = [(NSIndexPath *)self->_targetIndexPathForScrolling section];
      v5 = [(NSIndexPath *)self->_targetIndexPathForScrolling row];
      if (v4 < [(UITableView *)self _numberOfSectionsUsingPresentationValues:1]&& v5 < [(UITableView *)self _numberOfRowsInSection:v4 usingPresentationValues:1])
      {
        [(UIScrollView *)self contentOffset];
        [(UITableView *)self _validContentOffsetForProposedOffset:?];
        [(UIScrollView *)self _updateScrollAnimationForChangedTargetOffset:?];
        LOBYTE(v3) = 1;
        return v3;
      }

LABEL_7:
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)_adjustExtraSeparators
{
  p_tableFlags = &self->_tableFlags;
  *(&self->_tableFlags + 2) &= ~0x40uLL;
  v57 = 0.0;
  if ([(UITableView *)self _shouldDisplayExtraSeparatorsAtOffset:&v57]&& ([(UIView *)self traitCollection], v4 = objc_claimAutoreleasedReturnValue(), v5 = _UISeparatorThicknessForTraitCollection(v4), v4, left = self->_separatorInset.left, right = self->_separatorInset.right, [(UITableView *)self _defaultMarginWidth], v52 = v8, [(UIView *)self directionalLayoutMargins], v49 = v9, v47 = v10, [(UITableView *)self _indexBarExtentFromEdge], v12 = v11, v13 = [(UITableView *)self _shouldApplyReadableWidthInsets], v14 = *(&self->super.super._viewFlags + 2), v15 = [(UITableView *)self _separatorInsetIsRelativeToCellEdges], [(UITableView *)self _spacingForExtraSeparators], v17 = v16, [(UIView *)self bounds], v55 = v20, v56 = v19, rect = v21, v22 = floor(v18 * 1.5), v23 = v57, v57 < v22))
  {
    v24 = v18;
    v25 = 0;
    v26 = left == -1.0 || v15;
    v27 = v52;
    if (left != -1.0)
    {
      v27 = left;
    }

    v51 = left;
    v53 = v27;
    v50 = left + v49;
    v28 = fmax(v47, v12);
    if (!v13)
    {
      v28 = v12;
    }

    v29 = right + v28;
    if (v15)
    {
      v29 = right;
    }

    v30 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
    if (right == -1.0)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    v48 = v14;
    do
    {
      v32 = v53;
      if ((v26 & 1) == 0)
      {
        if (v13 | dyld_program_sdk_at_least())
        {
          v32 = v50;
        }

        else
        {
          v32 = v51;
        }

        v23 = v57;
      }

      v58.origin.y = v55;
      v58.origin.x = v56;
      v58.size.width = rect;
      v58.size.height = v24;
      v33 = v17 + v23 - v5;
      v34 = CGRectGetWidth(v58) - (v32 + v31);
      if ((v14 & 0x400000) != 0)
      {
        v32 = v31;
      }

      v35 = v30[530];
      if (v25 >= [*(&self->super.super.super.super.isa + v35) count])
      {
        v36 = [[_UITableViewCellSeparatorView alloc] initWithFrame:v32, v33, v34, v5];
        [(UIView *)v36 setAutoresizingMask:2];
        v37 = *(p_tableFlags + 2);
        if ((v37 & 0xE00000000000000) == 0x600000000000000)
        {
          [(_UITableViewCellSeparatorView *)v36 setDrawsWithVibrantLightMode:1];
        }

        else
        {
          v14 = p_tableFlags;
          v38 = v30;
          v39 = v13;
          [(UIView *)v36 _setDrawsAsBackdropOverlayWithBlendMode:(v37 >> 53) & 1];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v40 = [(UITableView *)self separatorColor];
            [(UIView *)v36 setBackgroundColor:v40];
          }

          v13 = v39;
          v30 = v38;
          p_tableFlags = v14;
          LODWORD(v14) = v48;
        }

        [(_UITableViewCellSeparatorView *)v36 setSeparatorEffect:self->_separatorEffect];
        [(UITableView *)self _addContentSubview:v36 atBack:0];
        v41 = *(&self->super.super.super.super.isa + v35);
        if (!v41)
        {
          v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v43 = *(&self->super.super.super.super.isa + v35);
          *(&self->super.super.super.super.isa + v35) = v42;

          v41 = *(&self->super.super.super.super.isa + v35);
        }

        [v41 addObject:v36];
      }

      else
      {
        v36 = [*(&self->super.super.super.super.isa + v35) objectAtIndex:v25];
        [(UIView *)v36 setFrame:v32, v33, v34, v5];
      }

      v23 = v17 + v57;
      v57 = v23;
      ++v25;
    }

    while (v23 < v22);
    while (1)
    {
      extraSeparators = *(&self->super.super.super.super.isa + v35);
LABEL_40:
      if ([(NSMutableArray *)extraSeparators count]<= v25)
      {
        break;
      }

      v46 = [*(&self->super.super.super.super.isa + v35) lastObject];
      [v46 removeFromSuperview];

      [*(&self->super.super.super.super.isa + v35) removeLastObject];
    }
  }

  else
  {
    v35 = 2392;
    extraSeparators = self->_extraSeparators;
    if (!extraSeparators)
    {
      v25 = 0;
      goto LABEL_40;
    }

    [(NSMutableArray *)extraSeparators makeObjectsPerformSelector:sel_removeFromSuperview];
    v45 = self->_extraSeparators;
    self->_extraSeparators = 0;
  }
}

- (void)_preparePrefetchContext
{
  if (!self->_prefetchContext && (*(&self->_tableFlags + 27) & 1) != 0)
  {
    v3 = [[_UITableViewPrefetchContext alloc] initWithMaxIndex:10 prefetchItemCount:9 refreshPrefetchThresholdCount:15 cancelThresholdCount:?];
    prefetchContext = self->_prefetchContext;
    self->_prefetchContext = v3;
  }

  [(UITableView *)self _configureDataSourcePrefetchingHandlers];

  [(UITableView *)self _configureCellPrefetchingHandlers];
}

- (void)_configureDataSourcePrefetchingHandlers
{
  prefetchContext = self->_prefetchContext;
  if (prefetchContext && (v4 = prefetchContext->_requestHandler) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = self->_prefetchContext;
    if (v6)
    {
      v6 = v6->_cancelHandler;
    }

    v7 = v6;
    v5 = v7 != 0;

    v4 = 0;
  }

  v9 = *(&self->_tableFlags + 3) & 0x3000000;
  if (v5 || v9 != 50331648)
  {
    if (v9 != 50331648 && v5)
    {
      v15 = self->_prefetchContext;
      if (v15)
      {
        objc_setProperty_nonatomic_copy(v15, v8, 0, 16);
        v17 = self->_prefetchContext;
        if (v17)
        {

          objc_setProperty_nonatomic_copy(v17, v16, 0, 24);
        }
      }
    }
  }

  else
  {
    objc_initWeak(&location, self);
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __54__UITableView__configureDataSourcePrefetchingHandlers__block_invoke;
    newValue[3] = &unk_1E7119648;
    objc_copyWeak(&v21, &location);
    v11 = self->_prefetchContext;
    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v10, newValue, 16);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__UITableView__configureDataSourcePrefetchingHandlers__block_invoke_2;
    v18[3] = &unk_1E7119648;
    objc_copyWeak(&v19, &location);
    v13 = self->_prefetchContext;
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v12, v18, 24);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)_configureCellPrefetchingHandlers
{
  prefetchContext = self->_prefetchContext;
  if (prefetchContext && (v4 = prefetchContext->_cellHandler) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = self->_prefetchContext;
    if (v6)
    {
      v6 = v6->_cellPruningHandler;
    }

    v7 = v6;
    v5 = v7 != 0;

    v4 = 0;
  }

  if ((*(&self->_tableFlags + 27) & 1) == 0)
  {
    v9 = 0;
LABEL_10:
    if (v5 && !v9)
    {
      v10 = self->_prefetchContext;
      if (v10)
      {
        objc_setProperty_nonatomic_copy(v10, v8, 0, 32);
        v12 = self->_prefetchContext;
        if (v12)
        {
          objc_setProperty_nonatomic_copy(v12, v11, 0, 40);
        }
      }

      subviewManager = self->_subviewManager;

      [(_UITableViewSubviewManager *)&subviewManager->super.isa removeAllPrefetchedCells];
    }

    return;
  }

  v9 = [(UITableView *)self _supportsCellPrefetching];
  if (v5 || !v9)
  {
    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __48__UITableView__configureCellPrefetchingHandlers__block_invoke;
  newValue[3] = &unk_1E7123750;
  objc_copyWeak(&v21, &location);
  v15 = self->_prefetchContext;
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v14, newValue, 32);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__UITableView__configureCellPrefetchingHandlers__block_invoke_2;
  v18[3] = &unk_1E71237A0;
  objc_copyWeak(&v19, &location);
  v17 = self->_prefetchContext;
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v16, v18, 40);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __48__UITableView__configureCellPrefetchingHandlers__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[281];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__UITableView__configureCellPrefetchingHandlers__block_invoke_3;
    v8[3] = &unk_1E7123778;
    v8[4] = v6;
    v8[5] = a2;
    v8[6] = a3;
    [(_UITableViewSubviewManager *)v7 filterPrefetchedCells:v8];
  }
}

uint64_t __48__UITableView__configureCellPrefetchingHandlers__block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 _isAnimating])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(UITableViewRowData *)*(a1[4] + 2160) globalRowForRowAtIndexPath:v5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v8 = a1[5];
      v10 = v7 >= v8;
      v9 = v7 - v8;
      v10 = !v10 || v9 >= a1[6];
      v6 = !v10;
    }
  }

  return v6;
}

- (void)_setNeedsIndexBarInsetsUpdate
{
  [(UITableView *)self _cachedSectionIndexBarInsets];
  if (v6 != 1.79769313e308 || v3 != 1.79769313e308 || v5 != 1.79769313e308 || v4 != 1.79769313e308)
  {
    [(UIScrollView *)self setNeedsLayout];
  }

  [(UITableView *)self _setCachedSectionIndexBarInsets:1.79769313e308, 1.79769313e308, 1.79769313e308, 1.79769313e308];
}

- (BOOL)_shouldDeselectRowsOnTouchesBegan
{
  if ((*(&self->_tableFlags + 29) & 0x10) != 0)
  {
    return 0;
  }

  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (id)_reorderingIndexPath
{
  reorderingSupport = self->_reorderingSupport;
  if (reorderingSupport)
  {
    return reorderingSupport->_initialIndexPath;
  }

  else
  {
    return 0;
  }
}

void __34__UITableView__reapTentativeViews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([*(*(a1 + 32) + 2272) containsObject:v5] & 1) == 0)
  {
    v6 = [v5 _tableView];
    v7 = v6;
    if (v6 == *(a1 + 32))
    {
    }

    else
    {
      v8 = [v5 superview];

      if (v8)
      {
        goto LABEL_7;
      }
    }

    [*(a1 + 32) _reuseTableViewCell:v5 withIndexPath:v9 didEndDisplaying:0];
  }

LABEL_7:
}

- (void)_addIndexToAppropriateContainer
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    v5 = [(UIView *)self window];
    v6 = [v5 _screen];
    v7 = [v6 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    v8 = [v7 integerValue];

    if (v8 == 2)
    {

      [(UITableView *)self _removeIndex];
      return;
    }

    indexContainerView = self->_indexContainerView;
    v9 = [(UIScrollView *)self _staticScrollBar];
    v12 = v9;
    if (indexContainerView)
    {
      [v9 addSubview:self->_indexContainerView];

      v9 = [(UIScrollView *)self _staticScrollBar];
      v12 = v9;
      v10 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    [(UITableView *)self _addContentSubview:self->_indexContainerView atBack:0];
    v9 = [(UIScrollView *)self _staticScrollBar];
    v12 = v9;
  }

  v10 = 0;
LABEL_10:
  [v9 setShouldInsetButtonsForIndex:v10];
}

- (BOOL)_shouldApplyReadableWidthInsets
{
  v3 = [(UITableView *)self cellLayoutMarginsFollowReadableWidth];
  if (v3)
  {

    LOBYTE(v3) = [(UIView *)self _safeAreaWidthExceedsReadableWidth];
  }

  return v3;
}

void __34__UITableView__reapTentativeViews__block_invoke_2(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if ([v7 count])
  {
    v9 = [v8 allValues];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__UITableView__reapTentativeViews__block_invoke_3;
    v12[3] = &unk_1E7123530;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    v15 = a4;
    v11 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
    [v7 removeAllObjects];
  }
}

- (id)_reorderingSupport
{
  reorderingSupport = self->_reorderingSupport;
  if (!reorderingSupport)
  {
    v4 = objc_alloc_init(_UITableViewReorderingSupport);
    v5 = self->_reorderingSupport;
    self->_reorderingSupport = v4;

    reorderingSupport = self->_reorderingSupport;
  }

  return reorderingSupport;
}

- (BOOL)_cellPrefetchingAllowed
{
  if (![(UITableView *)self _supportsCellPrefetching]|| (*(&self->_tableFlags + 27) & 1) == 0)
  {
    return 0;
  }

  v4 = [(UITableView *)self _reorderingIndexPath];
  v3 = v4 == 0;

  return v3;
}

- (BOOL)_supportsCellPrefetching
{
  v2 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_TableViewCellPrefetchingMode, @"TableViewCellPrefetchingMode", _UIInternalPreferenceUpdateInteger);
  v3 = qword_1ED48B590;
  if (v2)
  {
    v3 = 0;
  }

  if (v3 == -1)
  {
    return 0;
  }

  if (v3 == 1)
  {
    return 1;
  }

  return dyld_program_sdk_at_least();
}

- (CGRect)_frameForWrapper
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITableView *)self _sectionContentInset];
  v12 = v11;
  v14 = v13;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v15 = CGRectGetWidth(v24) - (v12 + v14);
  if (v15 <= 0.0)
  {
    v16 = v8;
  }

  else
  {
    v16 = v15;
  }

  if (v15 > 0.0)
  {
    v4 = v12;
  }

  v25.origin.y = 0.0;
  v25.origin.x = v4;
  v25.size.width = v16;
  v25.size.height = v10;
  Height = CGRectGetHeight(v25);
  [(UIScrollView *)self contentSize];
  if (Height >= v18)
  {
    v19 = Height;
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = 0.0;
  v22 = v4;
  v23 = v16;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
}

- (void)_updateSeparatorStateForVisibleCells
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableArray *)self->_visibleCells copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(UITableView *)self _indexPathForCell:v8 usingPresentationValues:1];
        [(UITableView *)self _updateSeparatorStateForCell:v8 atIndexPath:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_updateWrapperContentInset
{
  [(UIView *)self->_wrapperView bounds];
  wrapperView = self->_wrapperView;

  [(UIScrollView *)wrapperView setContentSize:v3, v4];
}

- (void)_updateWrapperClipping
{
  if ((*(&self->_tableFlags + 23) & 0x20) != 0)
  {
    if (self->_updateAnimationCount > 0 || (v2 = *(&self->_tableFlags + 3), (v2 & 0x10) != 0))
    {
      v4 = 1;
    }

    else
    {
      v3 = (v2 >> 5) & 1;
      if (self->_swipeToDeleteCell)
      {
        v4 = 1;
      }

      else
      {
        v4 = v3;
      }
    }

    [(UIView *)self->_wrapperView setClipsToBounds:v4];
  }
}

- (void)_notifyDidScroll
{
  if ((*(&self->_tableFlags + 28) & 0x80) == 0)
  {
    v2.receiver = self;
    v2.super_class = UITableView;
    [(UIScrollView *)&v2 _notifyDidScroll];
  }
}

- (void)_tearDownIndexOverlayViews
{
  [(UIView *)self->_indexOverlayIndicatorView removeFromSuperview];
  indexOverlayIndicatorView = self->_indexOverlayIndicatorView;
  self->_indexOverlayIndicatorView = 0;

  [(UIView *)self->_indexOverlaySelectionView removeFromSuperview];
  indexOverlaySelectionView = self->_indexOverlaySelectionView;
  self->_indexOverlaySelectionView = 0;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = UITableView;
  [(UIView *)&v3 tintColorDidChange];
  [(UITableView *)self _resetDarkenedSeparatorColor];
}

- (void)_rebuildGeometryWithCompatibility
{
  v3 = dyld_program_sdk_at_least();

  [(UITableView *)self _rebuildGeometryForcingRowDataUpdate:1 skipContentOffsetAdjustment:v3 updateImmediatelyIfPossible:v3 ^ 1];
}

- (void)_configureBackgroundView
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView setAutoresizingMask:18];
    v4 = self->_backgroundView;
    [(UIView *)self bounds];
    [(UIView *)v4 setFrame:?];
    v5 = self->_backgroundView;

    [(UITableView *)self _addContentSubview:v5 atBack:1];
  }
}

- (double)_contentBottomForScrollObservation
{
  v8.receiver = self;
  v8.super_class = UITableView;
  [(UIScrollView *)&v8 _contentBottomForScrollObservation];
  v4 = v3;
  if ([(UITableView *)self _shouldDisplayExtraSeparatorsAtOffset:0])
  {
    [(UIView *)self bounds];
    v6 = floor(v5 * 1.5);
    if (v4 < v6)
    {
      return v6;
    }
  }

  return v4;
}

- (void)flashScrollIndicators
{
  [(UITableView *)self _updateShowScrollIndicatorsFlag];
  v3.receiver = self;
  v3.super_class = UITableView;
  [(UIScrollView *)&v3 flashScrollIndicators];
}

- (double)_defaultSectionHeaderHeight
{
  [(UITableConstants *)self->_constants defaultSectionHeaderHeightForTableView:self];
  v4 = v3;
  [(UIView *)self _currentScreenScale];

  return UIPixelBoundaryOffset(1, v4, v5);
}

- (double)_defaultSectionFooterHeight
{
  [(UITableConstants *)self->_constants defaultSectionFooterHeightForTableView:self];
  v4 = v3;
  [(UIView *)self _currentScreenScale];

  return UIPixelBoundaryOffset(0, v4, v5);
}

- (double)_paddingAboveSectionHeaders
{
  result = self->_sectionHeaderTopPadding;
  if (result == -1.0)
  {
    return [(UITableMetricsAdapter *)self->_metricsAdapter paddingAboveSectionHeaders];
  }

  return result;
}

- (double)_paddingAboveFirstSectionHeader
{
  result = self->_sectionHeaderTopPadding;
  if (result == -1.0)
  {
    return [(UITableMetricsAdapter *)self->_metricsAdapter paddingAboveFirstSectionHeader];
  }

  return result;
}

- (UIEdgeInsets)_rawSeparatorInset
{
  top = self->_separatorInset.top;
  left = self->_separatorInset.left;
  bottom = self->_separatorInset.bottom;
  right = self->_separatorInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_fullWidthHeaderWidth
{
  [(UITableView *)self _sectionHeaderContentInsets];
  v4 = v3;
  v6 = v5;
  v7 = [(UITableView *)self _scrollView];
  [v7 bounds];
  v9 = v8 - (v6 + v4);

  return fmax(v9, 0.0);
}

void __34__UITableView__reapTentativeViews__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(a1 + 40) _reuseHeaderFooterView:v5 isHeader:*(a1 + 48) forSection:{objc_msgSend(v6, "integerValue")}];
  }
}

- (void)beginUpdates
{
  v12 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", beginUpdates___s_category);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = self;
      v7 = v9;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "<%@ %p> beginUpdates", &v8, 0x16u);
    }
  }

  updateCount = self->_updateCount;
  if (!updateCount)
  {
    [(UITableView *)self _setupCellAnimations];
    updateCount = self->_updateCount;
  }

  self->_updateCount = updateCount + 1;
}

- (void)_setupCellAnimations
{
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 28) & 0x80) == 0)
  {
    [(UITableView *)self _updateVisibleCellsNow:0];
  }

  *(p_tableFlags + 1) = *(p_tableFlags + 1) & 0xFFDFFFFFFFFFFFFFLL | (((*(p_tableFlags + 1) >> 54) & 1) << 53);
  [(UITableView *)self _suspendReloads];
  prefetchContext = self->_prefetchContext;
  if (prefetchContext)
  {
    maxIndex = prefetchContext->_maxIndex;

    [(_UITableViewPrefetchContext *)prefetchContext cancelWithNewMaxIndex:?];
  }
}

- (id)_sortedDeduplicatedReloadItems
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = self->_reloadItems;
  v3 = v2;
  if (v2)
  {
    if ([(NSMutableArray *)v2 count]> 1)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](v3, "count")}];
      v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableArray count](v3, "count")}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = v3;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          v10 = 0;
          do
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * v10);
            if (v11)
            {
              v12 = *(v11 + 24);
            }

            else
            {
              v12 = 0;
            }

            v13 = v12;
            if (([v5 containsObject:{v13, v16}] & 1) == 0)
            {
              [v5 addObject:v13];
              [v4 insertObject:v11 atIndex:{objc_msgSend(v4, "indexOfObject:inSortedRange:options:usingComparator:", v11, 0, objc_msgSend(v4, "count"), 1024, &__block_literal_global_838)}];
            }

            ++v10;
          }

          while (v8 != v10);
          v14 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          v8 = v14;
        }

        while (v14);
      }
    }

    else
    {
      v4 = [(NSMutableArray *)v3 mutableCopy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_NSRange)_visibleGlobalRows
{
  p_visibleRows = &self->_visibleRows;
  location = self->_visibleRows.location;
  length = p_visibleRows->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id)_visibleViews
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:{-[NSMutableArray count](self->_visibleCells, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = self->_visibleCells;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v28 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(NSMutableDictionary *)self->_visibleHeaderViews objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 addObject:*(*(&v24 + 1) + 8 * j)];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [(NSMutableDictionary *)self->_visibleFooterViews objectEnumerator];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v3 addObject:*(*(&v20 + 1) + 8 * k)];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }

  return v3;
}

- (id)_reorderingCell
{
  reorderingSupport = self->_reorderingSupport;
  if (reorderingSupport)
  {
    return reorderingSupport->_reorderedCell;
  }

  else
  {
    return 0;
  }
}

- (void)_resetUpdateItemArrays
{
  insertItems = self->_insertItems;
  self->_insertItems = 0;

  deleteItems = self->_deleteItems;
  self->_deleteItems = 0;

  reloadItems = self->_reloadItems;
  self->_reloadItems = 0;

  moveItems = self->_moveItems;
  self->_moveItems = 0;
}

- (void)_endAnimatingCells
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(UITableView *)self _preparedCells];
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

        [*(*(&v8 + 1) + 8 * v7++) _setAnimating:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(UIView *)self->_clearBlendingView removeFromSuperview];
}

void __32__UITableView__purgeReuseQueues__block_invoke(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [v1 objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
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

              [*(*(&v13 + 1) + 8 * v12++) removeFromSuperview];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  [v1 removeAllObjects];
}

- (void)_purgeReuseQueues
{
  [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa removeAllPrefetchedCells];
  __32__UITableView__purgeReuseQueues__block_invoke(self->_reusableTableCells);
  __32__UITableView__purgeReuseQueues__block_invoke(self->_reusableHeaderFooterViews);
  prefetchContext = self->_prefetchContext;
  if (prefetchContext)
  {
    maxIndex = prefetchContext->_maxIndex;

    [(_UITableViewPrefetchContext *)prefetchContext cancelWithNewMaxIndex:?];
  }
}

- (void)_resetDragSwipeAndTouchSelectFlags
{
  p_tableFlags = &self->_tableFlags;
  *(&self->_tableFlags + 2) &= ~0x100uLL;
  if ([(UIScrollView *)self isDragging])
  {
    *(p_tableFlags + 2) |= 0x100uLL;
  }
}

- (id)_cellContainerView
{
  if ((*(&self->_tableFlags + 23) & 0x20) != 0)
  {
    self = self->_wrapperView;
  }

  return self;
}

- (void)_selectedIndexPathsDidChange
{
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"UITableViewSelectionDidChangeNotification" object:self userInfo:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotification:v4];

  [(_UITableViewMultiSelectController *)self->_multiSelectController selectedIndexPathsChanged:self->_selectedIndexPaths];
}

- (void)_updateSelectionGroupingForVisibleCells
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableArray *)self->_visibleCells copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(UITableView *)self _indexPathForCell:v8 usingPresentationValues:1];
        [(UITableView *)self _updateSelectionGroupingForCell:v8 atIndexPath:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)preferredFocusedView
{
  if ((*(&self->_tableFlags + 17) & 4) != 0 || (*(&self->_tableFlags + 28) & 0x80) != 0 || (*(&self->_tableFlags + 15) & 8) != 0 || ![(NSMutableArray *)self->_visibleCells count])
  {
    goto LABEL_42;
  }

  v3 = [(UITableView *)self indexPathsForSelectedRows];
  v4 = [v3 count];

  if (!v4 || (-[UITableView indexPathsForSelectedRows](self, "indexPathsForSelectedRows"), v5 = objc_claimAutoreleasedReturnValue(), [v5 firstObject], v6 = objc_claimAutoreleasedReturnValue(), v5, -[UITableView indexPathsForSelectedRows](self, "indexPathsForSelectedRows"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), -[UITableView cellForRowAtIndexPath:](self, "cellForRowAtIndexPath:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, !v9))
  {
    v10 = [(UITableView *)self _indexPathToFocus];

    if (v10)
    {
      v11 = [(UITableView *)self _indexPathToFocus];
      [(UITableView *)self _setIndexPathToFocus:0];
      focusedViewType = 1;
      goto LABEL_9;
    }

    if (dyld_program_sdk_at_least())
    {
      if ([(UITableView *)self remembersLastFocusedIndexPath])
      {
        v11 = [(UITableView *)self _focusedCellIndexPath];
        focusedViewType = self->_focusedViewType;
      }

      else
      {
        focusedViewType = 0;
        v11 = 0;
      }

      v14 = [(UITableView *)self indexPathsForSelectedRows];
      v13 = [v14 firstObject];

      if (v13)
      {
        if (!v11 || [(UITableView *)self _shouldSelectionFollowFocusForIndexPath:v13 initiatedBySelection:1])
        {
          goto LABEL_22;
        }
      }

      else if (v11)
      {
        v13 = 0;
      }

      else
      {
        v27 = [(UITableView *)self _delegatePreferredIndexPath];
        if (v27)
        {
          v11 = v27;
          v15 = 0;
LABEL_23:

          if ([v11 row] != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }

        v11 = [(UITableView *)self _focusedCellIndexPath];
        v13 = 0;
        focusedViewType = self->_focusedViewType;
      }
    }

    else
    {
      v11 = [(UITableView *)self _focusedCellIndexPath];
      focusedViewType = self->_focusedViewType;
      v13 = [(UITableView *)self _delegatePreferredIndexPath];
      if (v13)
      {
LABEL_22:
        v15 = v13;

        v11 = v15;
        goto LABEL_23;
      }
    }

    if (focusedViewType > 1)
    {
LABEL_41:

LABEL_42:
      v28.receiver = self;
      v28.super_class = UITableView;
      v9 = [(UIView *)&v28 preferredFocusedView];
      goto LABEL_43;
    }

LABEL_9:
    if (v11 && [v11 row] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!focusedViewType)
      {
        goto LABEL_41;
      }

LABEL_28:
      v21 = [(UITableView *)self _cellForRowAtIndexPath:v11 usingPresentationValues:1];
      v9 = v21;
      if (v21)
      {
        v22 = [v21 _isHiddenForReuse];
        if (!v11 || (v22 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (!v11)
      {
LABEL_36:
        v29.receiver = self;
        v29.super_class = UITableView;
        v9 = [(UIView *)&v29 preferredFocusedView];
LABEL_37:

        goto LABEL_43;
      }

      focusedCell = self->_focusedCell;
      if (focusedCell)
      {
        v24 = focusedCell;
        [(UITableView *)self _setFocusedCell:0];
        [(UITableView *)self _reusePreviouslyFocusedTableViewSubviewIfNeeded:v24 viewType:self->_focusedViewType indexPath:self->_focusedCellIndexPath];
      }

      v25 = [(UITableView *)self _createPreparedCellForRowAtIndexPath:v11 willDisplay:1];

      [(UITableView *)self _setFocusedCell:v25];
      [(UITableView *)self _setFocusedCellIndexPath:v11];
      self->_focusedViewType = 1;
      v9 = v25;
      if (v25)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_24:
    v16 = [(UITableView *)self _indexPathsForVisibleRowsUsingPresentationValues:1];
    v17 = [v16 firstObject];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [(UITableView *)self indexPathForRowAtGlobalRow:0];
    }

    v20 = v19;

    v11 = v20;
    goto LABEL_28;
  }

LABEL_43:

  return v9;
}

- (NSArray)indexPathsForSelectedRows
{
  v3 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _indexPathsForSelectedRowsUsingPresentationValues:v3];
}

- (id)_delegatePreferredIndexPath
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  v5 = *(&self->_tableFlags + 1);
  if ((v5 & 0x200000000) != 0)
  {
    v7 = [(UITableView *)self _delegateProxy];
    v8 = [v7 indexPathForPreferredFocusedViewInTableView:self];
  }

  else
  {
    if ((v5 & 0x80000000) == 0)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_10;
    }

    v7 = [(UITableView *)self _delegateProxy];
    v8 = [v7 indexPathForPreferredFocusedItemForTableView:self];
  }

  v6 = v8;

  if (v6 && ![(UITableView *)self _indexPathIsValid:v6])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:13732 description:{@"no cell for index path (%@) - the table view's delegate must return an index path for a valid UITableViewCell from -indexPathForPreferredFocusedViewInTableView:", v6}];
  }

LABEL_10:

  return v6;
}

- (BOOL)canBecomeFocused
{
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceIdiom] != 3 && -[UITableView remembersLastFocusedIndexPath](self, "remembersLastFocusedIndexPath") && (rowData = self->_rowData) != 0 && rowData->_numSections >= 1)
  {
    v5 = [(UITableViewRowData *)rowData numberOfRows];

    if (v5 < 1)
    {
      LOBYTE(v8) = 0;
      return v8;
    }

    v6 = [(UIView *)self _focusSystem];
    v3 = [v6 focusedItem];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    v8 = ![(UIView *)self containsView:v7];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_allowsEffectiveFocus
{
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
    goto LABEL_6;
  }

  if ([(UITableView *)self allowsFocus])
  {
    return 1;
  }

  if ((*(p_tableFlags + 14) & 0x40) == 0)
  {
    return 0;
  }

LABEL_6:

  return [(UITableView *)self allowsFocusDuringEditing];
}

- (BOOL)allowsFocus
{
  v2 = (*(&self->_tableFlags + 2) >> 20) & 3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__UITableView_allowsFocus__block_invoke;
  v4[3] = &unk_1E70F3CB0;
  v4[4] = self;
  return _UITriStateToBool_0(v2, v4);
}

- (BOOL)_defaultAllowsFocus
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 cellFocusability];

  v5 = [(UITableView *)self allowsSelection];
  result = 0;
  if (v5 && v4 != 3)
  {
    if (v4 == 2)
    {
      v7 = [(UIView *)self traitCollection];
      v8 = [v7 _hasSplitViewControllerContextSidebarColumn];

      return v8;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)_updateVisibleCellsImmediatelyIfNecessary
{
  if ((*(&self->_tableFlags + 15) & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);

    if (WeakRetained)
    {
      UITableViewAlertForForcedLayout(self);

      [(UITableView *)self _updateVisibleCellsNow:1];
    }
  }
}

- (NSInteger)numberOfSections
{
  v3 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _numberOfSectionsUsingPresentationValues:v3];
}

- (int64_t)_currentSectionIndexTitleIndex
{
  currentIndexTitleIndex = self->_currentIndexTitleIndex;
  if (currentIndexTitleIndex != -1)
  {
    v4 = [(UITableView *)self _dataSourceSectionIndexTitles];
    v5 = [v4 count];

    if (currentIndexTitleIndex < v5)
    {
      return self->_currentIndexTitleIndex;
    }
  }

  [(UITableView *)self _visibleBounds];
  v7 = [(UITableView *)self _visibleGlobalRowsInRect:?];
  if (!v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(UITableView *)self indexPathForRowAtGlobalRow:v7];
  v10 = [v9 section];

  v11 = [(UITableView *)self _dataSourceSectionIndexTitles];
  if (![v11 count])
  {
    goto LABEL_14;
  }

  v6 = 0;
  while (1)
  {
    v12 = [v11 objectAtIndex:v6];
    v13 = v6;
    if ((*(&self->_tableFlags + 1) & 2) != 0)
    {
      v14 = [(UITableView *)self _dataSourceProxy];
      v13 = [v14 tableView:self sectionForSectionIndexTitle:v12 atIndex:v6];
    }

    if (v13 == v10)
    {
      break;
    }

    if (++v6 >= [v11 count])
    {
      goto LABEL_14;
    }
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    if ([v11 count])
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (BOOL)_shouldHaveIndexOverlaySelectionView
{
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 3)
  {
    v4 = [(UIView *)self window];
    v5 = [v4 _screen];
    v6 = [v5 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    v7 = [v6 integerValue] != 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_configureIndexOverlaySelectionViewIfNecessary
{
  if ([(UITableView *)self _shouldHaveIndexOverlaySelectionView])
  {
    indexOverlaySelectionView = self->_indexOverlaySelectionView;
    if (!indexOverlaySelectionView)
    {
      v4 = [[_UICollectionTableIndexOverlaySelectionView alloc] initWithHost:self];
      v5 = self->_indexOverlaySelectionView;
      self->_indexOverlaySelectionView = v4;

      indexOverlaySelectionView = self->_indexOverlaySelectionView;
    }

    [(UITableView *)self _boundsForIndexOverlay];
    [(UIView *)indexOverlaySelectionView setFrame:?];
    [(UIView *)self->_indexOverlaySelectionView setAutoresizingMask:18];
    [(UIView *)self->_indexOverlaySelectionView setAlpha:0.0];
    v6 = [(UIView *)self window];
    [v6 addSubview:self->_indexOverlaySelectionView];
  }
}

- (CGRect)_boundsForIndexOverlay
{
  v2 = [(UIView *)self window];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_configureIndexOverlayIndicatorViewIfNecessary
{
  indexOverlayIndicatorView = self->_indexOverlayIndicatorView;
  if (!indexOverlayIndicatorView)
  {
    v4 = [[_UICollectionTableIndexOverlayIndicatorView alloc] initWithHost:self];
    v5 = self->_indexOverlayIndicatorView;
    self->_indexOverlayIndicatorView = v4;

    indexOverlayIndicatorView = self->_indexOverlayIndicatorView;
  }

  [(UITableView *)self _boundsForIndexOverlay];
  [(UIView *)indexOverlayIndicatorView setFrame:?];
  [(UIView *)self->_indexOverlayIndicatorView setAlpha:0.0];
  [(UIView *)self->_indexOverlayIndicatorView setAutoresizingMask:18];
  v6 = [(UIView *)self window];
  [v6 addSubview:self->_indexOverlayIndicatorView];
}

- (id)_expectedDiffableUpdateItem
{
  if (dyld_program_sdk_at_least())
  {
    expectedDiffableUpdateItem = self->_expectedDiffableUpdateItem;
  }

  else
  {
    expectedDiffableUpdateItem = 0;
  }

  return expectedDiffableUpdateItem;
}

- (void)_beginAnimatingCells
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(&self->_tableFlags + 23) & 0x20) != 0 && [(UITableView *)self _clearBlendingViewAllowed])
  {
    clearBlendingView = self->_clearBlendingView;
    if (!clearBlendingView)
    {
      v4 = [UIView alloc];
      [(UIView *)self bounds];
      v5 = [(UIView *)v4 initWithFrame:?];
      v6 = self->_clearBlendingView;
      self->_clearBlendingView = v5;

      [(UIView *)self->_clearBlendingView setAutoresizingMask:18];
      [(UITableView *)self _setClearBlendingViewCompositingFilter];
      clearBlendingView = self->_clearBlendingView;
    }

    v7 = [(UIView *)clearBlendingView superview];
    wrapperView = self->_wrapperView;

    if (v7 != wrapperView)
    {
      [(UITableViewWrapperView *)self->_wrapperView _stickViewToBack:self->_clearBlendingView];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_visibleCells;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

          [*(*(&v14 + 1) + 8 * v13++) _setAnimating:1 clippingAdjacentCells:{1, v14}];
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_setClearBlendingViewCompositingFilter
{
  if ((*(&self->_tableFlags + 3) & 0x20000000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *MEMORY[0x1E69798A8];
  }

  v3 = [(UIView *)self->_clearBlendingView layer];
  [v3 setCompositingFilter:v2];
}

void __29__UITableView__updateRowData__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 2160);
  v6 = *(v4 + 2256);
  v7 = a2;
  v8 = [(UITableViewRowData *)v5 indexPathForRowAtGlobalRow:?];
  [v7 _setIndexPath:v8];
}

- (void)_stopIndexOverlayTimer
{
  [(NSTimer *)self->_indexOverlayTimer invalidate];
  indexOverlayTimer = self->_indexOverlayTimer;
  self->_indexOverlayTimer = 0;
}

- (Class)_intelligenceBaseClass
{
  sub_189118554();

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectSubelementsIn:(CGRect)a3 using:(id)a4 transformToRoot:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = _Block_copy(a5);
  _Block_copy(v11);
  v12 = a4;
  v13 = self;
  sub_18911E7BC(v12, v13, v11, x, y, width, height);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)_registerForTraitChangesRequiringMetricsAdapterInvalidation
{
  v2 = qword_1EA931228;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  UIView.registerForTraitChanges(_:action:)(qword_1EA994F40, sel__updateConstants);
  swift_unknownObjectRelease();
}

- (id)_scrollTestExtraResults
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[UITableView _numberOfSectionsUsingPresentationValues:](self, "_numberOfSectionsUsingPresentationValues:", 1)}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:-[UITableViewRowData numberOfRows](self->_rowData)];
  v6 = [v3 arrayWithObjects:{v4, @"sections", v5, @"rows", 0}];

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"sections", @"sectionsUnits", @"rows", @"rowsUnits", 0}];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjects:v6 forKeys:v7];
  v11.receiver = self;
  v11.super_class = UITableView;
  v9 = [(UIScrollView *)&v11 _scrollTestExtraResults];
  [v8 addEntriesFromDictionary:v9];

  return v8;
}

- (void)_setRowCount:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    countLabel = self->_countLabel;
    v5 = [(UITableView *)self _countStringRowCount];

    [(UITableViewCountView *)countLabel setCount:v5];
  }
}

- (void)setCountStringInsignificantRowCount:(unint64_t)a3
{
  if (a3 <= 0xF)
  {
    v3 = *(&self->_tableFlags + 2);
    if (((v3 >> 2) & 0xF) != a3)
    {
      *(&self->_tableFlags + 2) = v3 & 0xFFFFFFFFFFFFFFC3 | (4 * a3);
      countLabel = self->_countLabel;
      if (countLabel)
      {
        v5 = [(UITableView *)self _countStringRowCount];

        [(UITableViewCountView *)countLabel setCount:v5];
      }
    }
  }
}

- (void)setCountString:(id)a3
{
  v14 = a3;
  v4 = [v14 length];
  countLabel = self->_countLabel;
  if (v4)
  {
    if (countLabel)
    {
      [(UITableViewCountView *)countLabel setCountString:v14 withCount:[(UITableView *)self _countStringRowCount]];
      goto LABEL_8;
    }

    [(UIView *)self bounds];
    v8 = v7;
    [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
    v10 = [[UITableViewCountView alloc] initWithFrame:v14 withCountString:[(UITableView *)self _countStringRowCount] withCount:0.0, 0.0, v8, v9];
    v11 = self->_countLabel;
    self->_countLabel = v10;

    v12 = self->_countLabel;
    v13 = [(UIView *)self backgroundColor];
    [(UIView *)v12 setBackgroundColor:v13];

    [(UIView *)self addSubview:self->_countLabel];
    [(UITableView *)self sendSubviewToBack:self->_countLabel];
  }

  else
  {
    if (!countLabel)
    {
      goto LABEL_8;
    }

    [(UIView *)self->_countLabel removeFromSuperview];
    v6 = self->_countLabel;
    self->_countLabel = 0;
  }

  [(UITableView *)self _updateContentSize];
LABEL_8:
}

- (void)setTableHeaderBackgroundColor:(id)a3
{
  v4 = a3;
  tableHeaderBackgroundView = self->_tableHeaderBackgroundView;
  v11 = v4;
  if (!v4 || tableHeaderBackgroundView)
  {
    if (v4)
    {
      goto LABEL_7;
    }

    [(UIView *)tableHeaderBackgroundView removeFromSuperview];
    v10 = self->_tableHeaderBackgroundView;
    self->_tableHeaderBackgroundView = 0;
  }

  else
  {
    [(UIView *)self bounds];
    v8 = [[UIView alloc] initWithFrame:0.0, 0.0 - v6, v7, v6];
    v9 = self->_tableHeaderBackgroundView;
    self->_tableHeaderBackgroundView = v8;

    [(UIView *)self->_tableHeaderBackgroundView setAutoresizingMask:2];
    [(UIView *)self insertSubview:self->_tableHeaderBackgroundView atIndex:0];
  }

  v4 = v11;
LABEL_7:
  [(UIView *)self->_tableHeaderBackgroundView setBackgroundColor:v4];
}

- (void)setMultiselectCheckmarkColor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_checkmarkColor, a3);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_visibleCells;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(*(&v11 + 1) + 8 * v10++) _multiselectColorChanged];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setSectionBorderColor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_sectionBorderColor != v5)
  {
    objc_storeStrong(&self->_sectionBorderColor, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_visibleCells;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          [*(*(&v11 + 1) + 8 * v10++) setSectionBorderColor:{self->_sectionBorderColor, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_setHeightForTableHeaderViewHiding:(double)a3
{
  [(UITableView *)self _ensureRowDataIsLoaded];
  rowData = self->_rowData;
  if (rowData)
  {
    rowData->_heightForTableHeaderViewHiding = a3;
  }
}

- (void)_updateContentSizeSkippingContentOffsetAdjustment:(BOOL)a3
{
  if (self->_rowData)
  {
    v3 = a3;
    if (objc_opt_respondsToSelector())
    {
      if ([(UIView *)self->_tableHeaderView _isSpecialInternalHeaderView])
      {
        [(UIView *)self->_tableHeaderView frame];
        v6 = v5;
        [(UIView *)self frame];
        [(UIView *)self->_tableHeaderView sizeToFit];
        [(UIView *)self->_tableHeaderView frame];
        if (v7 != v6)
        {
          [(UITableViewRowData *)self->_rowData tableHeaderHeightDidChangeToHeight:v7];
        }
      }
    }

    v8 = [(UITableViewRowData *)self->_rowData heightForTable];
    countLabel = self->_countLabel;
    if (countLabel && [(UITableViewCountView *)countLabel count]>= 20)
    {
      [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
      v8 = v8 + v10;
    }

    [(UIView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    *(&self->_tableFlags + 2) &= ~0x400000000uLL;
    [(UITableView *)self heightForTableHeaderViewHiding];
    if (v19 > 0.0)
    {
      v20 = v19;
      [(UITableView *)self _contentInset];
      v22 = v21;
      v24 = v23;
      v28.origin.x = v12;
      v28.origin.y = v14;
      v28.size.width = v16;
      v28.size.height = v18;
      v25 = v20 + CGRectGetHeight(v28) - v22 - v24;
      if (v8 < v25)
      {
        *(&self->_tableFlags + 2) |= 0x400000000uLL;
        v8 = v25;
      }
    }

    [(UITableView *)self _updateShowScrollIndicatorsFlag];
    self->_coalescedContentSizeDelta = 0.0;
    [(UITableView *)self setContentSize:v3 skipContentOffsetAdjustment:v16, v8];
    [(UITableView *)self _adjustTableHeaderAndFooterViews];
    [(UITableView *)self _scheduleAdjustExtraSeparators];
    [(UITableView *)self _adjustCountLabel];

    [(UITableView *)self _updateIndexFrame];
  }
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = UITableView;
  [(UIScrollView *)&v6 _boundingPathMayHaveChangedForView:a3 relativeToBoundsOriginOnly:?];
  if (!a4)
  {
    [(UITableView *)self _setNeedsIndexBarInsetsUpdate];
    [(UIScrollView *)self setNeedsLayout];
  }
}

- (unint64_t)_edgesApplyingBaseInsetsToIndexBarInsets
{
  v3 = [(UIScrollView *)self _edgesApplyingSafeAreaInsetsToScrollAccessoryInsets];
  v4 = [(UIView *)self _shouldReverseLayoutDirection];
  v5 = -3;
  if (v4)
  {
    v5 = -9;
  }

  return v5 & v3;
}

- (UIEdgeInsets)_insetsForIndexBar
{
  [(UITableView *)self _cachedSectionIndexBarInsets];
  if (v6 == 1.79769313e308 && v3 == 1.79769313e308 && v5 == 1.79769313e308 && v4 == 1.79769313e308)
  {
    v18 = [(UITableView *)self _edgesApplyingBaseInsetsToIndexBarInsets];
    [(UITableView *)self _contentInset];
    if ((v18 & 8) != 0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v22;
    }

    if ((v18 & 4) != 0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v21;
    }

    if ((v18 & 2) != 0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v20;
    }

    if (v18)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v19;
    }

    if (v18)
    {
      v23 = v19;
      v24 = v21;
      [(UIView *)self->_index frame];
      Width = CGRectGetWidth(v37);
      if (Width == 0.0)
      {
        Width = 1.0;
      }

      [(UIScrollView *)self _baseInsetsForAccessoryOnEdge:1 hasCustomClientInsets:0 accessorySize:Width additionalInsetFromEdge:0.0];
      if (v18)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v23;
      }

      v31 = fmax(v26, v23);
      v32 = fmax(v28, v24);
      if (v18)
      {
        v11 = v31;
      }

      else
      {
        v11 = v30;
      }

      if ((v18 & 2) != 0)
      {
        v13 = v27;
      }

      if ((v18 & 4) != 0)
      {
        v15 = v32;
      }

      if ((v18 & 8) != 0)
      {
        v17 = v29;
      }
    }

    [(UITableView *)self _setCachedSectionIndexBarInsets:v11, v13, v15, v17];
  }

  else
  {
    [(UITableView *)self _cachedSectionIndexBarInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  v33 = v11;
  v34 = v13;
  v35 = v15;
  v36 = v17;
  result.right = v36;
  result.bottom = v35;
  result.left = v34;
  result.top = v33;
  return result;
}

- (void)_updateIndexTitles:(id)a3
{
  objc_storeStrong(&self->_sectionIndexTitlesForTableView, a3);
  v5 = a3;
  [(_UICollectionTableIndexOverlaySelectionView *)self->_indexOverlaySelectionView reloadData];
  [(UIView *)self->_indexOverlaySelectionView setNeedsLayout];
}

- (void)_updateIndexDisplayedTitles
{
  v3 = [(UITableView *)self _dataSourceSectionIndexTitles];
  [(UITableViewIndex *)self->_index setTitles:v3];
}

- (void)_removeIndex
{
  [(UIView *)self->_indexContainerView removeFromSuperview];
  indexContainerView = self->_indexContainerView;
  self->_indexContainerView = 0;

  index = self->_index;
  self->_index = 0;

  v5 = [(UIScrollView *)self _staticScrollBar];
  [v5 setShouldInsetButtonsForIndex:0];
}

- (void)_updateIndexTitlesFromDataSource
{
  tableFlags = self->_tableFlags;
  if ((tableFlags & 0x100) != 0)
  {
    v4 = [(UITableView *)self _dataSourceProxy];
    v5 = [v4 _tableView:self sectionIndexTitlesTrimmedToCount:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    if ((tableFlags & 0x80) == 0)
    {
      v6 = MEMORY[0x1E695E0F0];
      [(UITableView *)self _updateIndexTitles:MEMORY[0x1E695E0F0]];
      goto LABEL_7;
    }

    v4 = [(UITableView *)self _dataSourceProxy];
    v5 = [v4 sectionIndexTitlesForTableView:self];
  }

  v6 = v5;

  [(UITableView *)self _updateIndexTitles:v6];
LABEL_7:
}

- (id)_indexBarEntries
{
  if ((*&self->_tableFlags & 0x80) != 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sectionIndexTitlesForTableView = self->_sectionIndexTitlesForTableView;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__UITableView__indexBarEntries__block_invoke;
    v10[3] = &unk_1E70FF4D0;
    v10[4] = self;
    v11 = v4;
    v6 = v4;
    [(NSArray *)sectionIndexTitlesForTableView enumerateObjectsUsingBlock:v10];
    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_576];
    v3 = [v7 valueForKey:@"entry"];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UITableView;
    v3 = [(UIScrollView *)&v9 _indexBarEntries];
  }

  return v3;
}

void __31__UITableView__indexBarEntries__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v6[396];
  if ((v7 & 0x10000) != 0)
  {
    v8 = [v6 _dataSourceProxy];
    v9 = [v8 tableView:*(a1 + 32) indexPathForSectionIndexTitle:v5 atIndex:a3];

    if (v9)
    {
      goto LABEL_3;
    }

    v6 = *(a1 + 32);
    v7 = v6[396];
  }

  if ((v7 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v16 = [v6 _dataSourceProxy];
  v17 = [v16 tableView:*(a1 + 32) sectionForSectionIndexTitle:v5 atIndex:a3];

  if (v17 < 0)
  {
    goto LABEL_14;
  }

  v18 = *(*(a1 + 32) + 2160);
  if (!v18)
  {
    goto LABEL_14;
  }

  if (v17 >= *(v18 + 64))
  {
    goto LABEL_14;
  }

  v19 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:v17];
  if (!v19)
  {
    goto LABEL_14;
  }

  v9 = v19;
LABEL_3:
  if ([v9 row] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v9, "section")}];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  v12 = [UIIndexBarEntry entryWithTitle:v5];
  [v12 setIndexPath:v11];
  v13 = *(a1 + 40);
  v21[0] = v12;
  v20[0] = @"entry";
  v20[1] = @"index";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v20[2] = @"indexPath";
  v21[1] = v14;
  v21[2] = v9;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v13 addObject:v15];

LABEL_14:
}

uint64_t __31__UITableView__indexBarEntries__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKey:@"indexPath"];
  v7 = [v5 objectForKey:@"indexPath"];
  v8 = [v6 compare:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 section];
    if (v10 == [v7 section])
    {
      if ([v6 row] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = -1;
      }

      else if ([v7 row] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v11 = [v4 objectForKey:@"index"];
    v12 = [v5 objectForKey:@"index"];
    v9 = [v11 compare:v12];
  }

  return v9;
}

- (id)_focusFastScrollingIndexBarEntries
{
  if ([(UITableView *)self _dataSourceHasSectionIndexTitlesForTableView])
  {
    v3 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sectionIndexTitlesForTableView = self->_sectionIndexTitlesForTableView;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__UITableView__focusFastScrollingIndexBarEntries__block_invoke;
    v11[3] = &unk_1E71148F8;
    v11[4] = self;
    v12 = v3;
    v13 = v4;
    v6 = v4;
    v7 = v3;
    [(NSArray *)sectionIndexTitlesForTableView enumerateObjectsUsingBlock:v11];
    v8 = [v6 sortedArrayUsingComparator:&__block_literal_global_168_0];
    v9 = [v8 valueForKey:@"entry"];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UITableView;
    v9 = [(UIScrollView *)&v14 _focusFastScrollingIndexBarEntries];
  }

  return v9;
}

void __49__UITableView__focusFastScrollingIndexBarEntries__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v6[396];
  if ((v7 & 0x10000) == 0)
  {
LABEL_8:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    v18 = [v6 _dataSourceProxy];
    v19 = [v18 tableView:*(a1 + 32) sectionForSectionIndexTitle:v5 atIndex:a3];

    if (v19 < 0)
    {
      goto LABEL_13;
    }

    v20 = *(*(a1 + 32) + 2160);
    if (!v20)
    {
      goto LABEL_13;
    }

    if (v19 >= *(v20 + 64))
    {
      goto LABEL_13;
    }

    v9 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:v19];
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  v8 = [v6 _dataSourceProxy];
  v9 = [v8 tableView:*(a1 + 32) indexPathForSectionIndexTitle:v5 atIndex:a3];

  if (!v9)
  {
    v6 = *(a1 + 32);
    v7 = v6[396];
    goto LABEL_8;
  }

LABEL_3:
  if ([v9 row] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v9, "section")}];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  objc_initWeak(&location, *(a1 + 32));
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __49__UITableView__focusFastScrollingIndexBarEntries__block_invoke_2;
  v24 = &unk_1E71234E0;
  objc_copyWeak(&v28, &location);
  v12 = v11;
  v25 = v12;
  v13 = v9;
  v26 = v13;
  v27 = *(a1 + 40);
  v14 = [_UIFocusFastScrollingIndexBarEntry entryWithTitle:v5 generator:&v21];
  [v14 setTargetFocusedIndexPath:{v12, v21, v22, v23, v24}];
  v15 = *(a1 + 48);
  v31[0] = v14;
  v30[0] = @"entry";
  v30[1] = @"index";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v30[2] = @"indexPath";
  v31[1] = v16;
  v31[2] = v13;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  [v15 addObject:v17];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

LABEL_13:
}

double __49__UITableView__focusFastScrollingIndexBarEntries__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained || ([WeakRetained contentSize], v4 == 0.0) || (objc_msgSend(v3, "contentSize"), v5 == 0.0))
  {
    v21 = INFINITY;
  }

  else
  {
    [v3 _rectForRowAtIndexPath:*(a1 + 32) usingPresentationValues:1];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v3 _contentOffsetForScrollingToRowAtIndexPath:*(a1 + 40) atScrollPosition:1];
    v15 = v14;
    v17 = v16;
    v18 = [*(a1 + 48) scrollManager];
    v19 = [v3 _focusTuple];
    [v18 contentOffsetForEnvironmentScrollableContainer:v19 toShowRect:v7 targetOffset:{v9, v11, v13, v15, v17}];
    v21 = v20;
  }

  return v21;
}

uint64_t __49__UITableView__focusFastScrollingIndexBarEntries__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKey:@"indexPath"];
  v7 = [v5 objectForKey:@"indexPath"];
  v8 = [v6 compare:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 section];
    if (v10 == [v7 section])
    {
      if ([v6 row] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = -1;
      }

      else if ([v7 row] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v11 = [v4 objectForKey:@"index"];
    v12 = [v5 objectForKey:@"index"];
    v9 = [v11 compare:v12];
  }

  return v9;
}

- (CGPoint)indexBarAccessoryView:(id)a3 contentOffsetForEntry:(id)a4 atIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (![(UITableView *)self _dataSourceHasSectionIndexTitlesForTableView])
  {
    v40.receiver = self;
    v40.super_class = UITableView;
    [(UIScrollView *)&v40 indexBarAccessoryView:v8 contentOffsetForEntry:v9 atIndex:a5];
    v19 = v36;
    v21 = v37;
    goto LABEL_19;
  }

  v10 = [v9 indexPath];
  v11 = [v9 title];
  if (!v10)
  {
    tableFlags = self->_tableFlags;
    if ((tableFlags & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    v13 = [(UITableView *)self _dataSourceProxy];
    v10 = [v13 tableView:self indexPathForSectionIndexTitle:v11 atIndex:a5];

    if (!v10)
    {
      tableFlags = self->_tableFlags;
LABEL_6:
      if ((tableFlags & 0x200) == 0 || (-[UITableView _dataSourceProxy](self, "_dataSourceProxy"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 tableView:self sectionForSectionIndexTitle:v11 atIndex:a5], v14, v15 < 0) || (rowData = self->_rowData) == 0 || v15 >= rowData->_numSections || (objc_msgSend(MEMORY[0x1E696AC88], "indexPathForRow:inSection:", 0x7FFFFFFFFFFFFFFFLL, v15), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v17 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:a5];
      }

      v10 = v17;
    }
  }

  [(UITableView *)self _contentOffsetForScrollingToRowAtIndexPath:v10 atScrollPosition:1 usingPresentationValues:1];
  v19 = v18;
  v21 = v20;
  v22 = [(UIView *)self _focusBehavior];
  if ([v22 refinesIndexBarTargetContentOffset])
  {
    v23 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
    v24 = [v23 scrollManager];
    if (v24)
    {
      [(UITableView *)self _rectForRowAtIndexPath:v10 usingPresentationValues:1];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = [(UIScrollView *)self _focusTuple];
      [v24 contentOffsetForEnvironmentScrollableContainer:v33 toShowRect:v26 targetOffset:{v28, v30, v32, v19, v21}];
      v19 = v34;
      v21 = v35;
    }
  }

LABEL_19:
  v38 = v19;
  v39 = v21;
  result.y = v39;
  result.x = v38;
  return result;
}

- (void)_endCellAnimationsWithContext:(id)a3
{
  v440 = *MEMORY[0x1E69E9840];
  v351 = a3;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableView", &_MergedGlobals_355);
  v5 = *(CategoryCachedImpl + 8);
  v6 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "BatchUpdates", "", buf, 2u);
    }
  }

  v350 = _UISetCurrentFallbackEnvironment(self);
  [(_UITableViewDragController *)self->_dragController forceReset];
  v352 = [(_UITableViewDropController *)self->_dropController beginIgnoringDrags];
  v349 = [(UITableView *)self _isScrolledToTop];
  v8 = [(UITableView *)self _indexPathsForVisibleRowsUsingPresentationValues:1];
  v9 = [v8 firstObject];

  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 25) & 2) == 0)
  {
    [(UITableView *)self _storePreReloadStateForRestoringContentOffsetWithFirstVisibleIndexPath:v9];
  }

  [(UITableView *)self _beginSuspendingUpdates];
  v11 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v13 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  v353 = &self->_tableFlags;
  if (!self->_rowData)
  {
    goto LABEL_486;
  }

  if ((*(&self->_tableFlags + 15) & 8) != 0 && (*(&self->_tableFlags + 28) & 0x10) != 0 && dyld_program_sdk_at_least())
  {
    [(UITableView *)self _resetUpdateItemArrays];
    v355 = 1;
    v356 = 0;
  }

  else
  {
    v355 = 0;
    v356 = 1;
  }

  v348 = v9;
  v15 = [(UIView *)self _focusSystem];
  v16 = [v15 focusedItem];

  v347 = v16;
  v17 = _UIFocusEnvironmentContainingView(v16);
  if ([v17 isDescendantOfView:self])
  {
    [v17 bounds];
    [v17 convertRect:self toView:?];
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
  }

  v346 = v17;
  v354 = [(UITableViewRowData *)self->_rowData copy];
  v22 = [(UITableView *)self _arrayForUpdateAction:1];
  v361 = [v22 sortedArrayUsingSelector:?];

  v23 = [(UITableView *)self _arrayForUpdateAction:0];
  v359 = [v23 sortedArrayUsingSelector:?];

  v24 = [(UITableView *)self _sortedDeduplicatedReloadItems];
  v25 = [(NSMutableArray *)self->_moveItems sortedArrayUsingSelector:sel_compareIndexPathsForMoves_];
  v26 = [v25 mutableCopy];

  [(UITableView *)self _sectionsWithSectionOperationsInUpdateItems:?];
  v382 = v381 = self;
  v383 = [(UITableView *)self _sectionsWithSectionOperationsInUpdateItems:?];
  v367 = dyld_program_sdk_at_least();
  v424 = 0u;
  v425 = 0u;
  v426 = 0u;
  v427 = 0u;
  obj = v24;
  v371 = [obj countByEnumeratingWithState:&v424 objects:v439 count:16];
  v374 = v26;
  if (v371)
  {
    v364 = *v425;
    do
    {
      v27 = 0;
      do
      {
        if (*v425 != v364)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v424 + 1) + 8 * v27);
        if (v28)
        {
          v29 = *(v28 + 24);
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v31 = [v30 section];
        v32 = [v30 row];
        if (v28)
        {
          if ((((*(v28 + 16) & 1) == 0) & v367) != 0)
          {
            goto LABEL_23;
          }
        }

        else if (v367)
        {
LABEL_23:
          v33 = [(UITableView *)v381 _existingCellForRowAtIndexPath:v30];

          if (!v33)
          {
            goto LABEL_97;
          }
        }

        v375 = v27;
        v422 = 0u;
        v423 = 0u;
        v420 = 0u;
        v421 = 0u;
        v34 = v361;
        v35 = [v34 countByEnumeratingWithState:&v420 objects:v438 count:16];
        v377 = v32;
        v379 = v31;
        v384 = v32;
        v36 = v31;
        if (!v35)
        {
          goto LABEL_54;
        }

        v37 = v35;
        v38 = *v421;
        v36 = v31;
        v384 = v377;
        do
        {
          v39 = 0;
          do
          {
            if (*v421 != v38)
            {
              objc_enumerationMutation(v34);
            }

            v40 = *(*(&v420 + 1) + 8 * v39);
            if (v40)
            {
              v41 = *(v40 + 24);
            }

            else
            {
              v41 = 0;
            }

            v42 = v41;
            if ([v42 isEqual:v30])
            {
              v45 = [MEMORY[0x1E696AAA8] currentHandler];
              [v45 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2045 description:{@"attempt to delete and reload the same index path (%@)", v42}];
            }

            v43 = [v42 section];
            if (v40 && (*(v40 + 16) & 1) != 0)
            {
              if (v43 == [v30 section])
              {
                goto LABEL_49;
              }

              LODWORD(v44) = *(v40 + 16) & 1;
            }

            else
            {
              LODWORD(v44) = 0;
            }

            if (v43 <= v36)
            {
              v44 = v44;
            }

            else
            {
              v44 = 0;
            }

            v36 -= v44;
            if ((!v28 || (*(v28 + 16) & 1) == 0) && (!v40 || (*(v40 + 16) & 1) == 0) && v43 == v36)
            {
              if (([v382 containsIndex:v43] & 1) == 0)
              {
                v384 -= [v42 row] <= v384;
              }

              v36 = v43;
            }

LABEL_49:

            ++v39;
          }

          while (v37 != v39);
          v46 = [v34 countByEnumeratingWithState:&v420 objects:v438 count:16];
          v37 = v46;
        }

        while (v46);
LABEL_54:

        v418 = 0u;
        v419 = 0u;
        v416 = 0u;
        v417 = 0u;
        v47 = v359;
        v48 = [v47 countByEnumeratingWithState:&v416 objects:v437 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v417;
          do
          {
            v51 = 0;
            do
            {
              if (*v417 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v416 + 1) + 8 * v51);
              if (v52)
              {
                v53 = *(v52 + 24);
              }

              else
              {
                v53 = 0;
              }

              v54 = v53;
              v55 = [v54 section];
              if (v52)
              {
                LODWORD(v56) = *(v52 + 16) & 1;
              }

              else
              {
                LODWORD(v56) = 0;
              }

              if (v55 <= v36)
              {
                v56 = v56;
              }

              else
              {
                v56 = 0;
              }

              v36 += v56;
              if ((!v28 || (*(v28 + 16) & 1) == 0) && (!v52 || (*(v52 + 16) & 1) == 0) && v55 == v36 && ([v383 containsIndex:v55] & 1) == 0)
              {
                v57 = [v54 row];
                v58 = v384;
                if (v57 <= v384)
                {
                  v58 = v384 + 1;
                }

                v384 = v58;
              }

              ++v51;
            }

            while (v49 != v51);
            v59 = [v47 countByEnumeratingWithState:&v416 objects:v437 count:16];
            v49 = v59;
          }

          while (v59);
        }

        v26 = v374;
        if (v28)
        {
          v60 = *(v28 + 32);
          if (v60 > 6)
          {
            v61 = *(v28 + 32);
          }

          else
          {
            v61 = qword_18A682AC0[v60];
          }
        }

        else
        {
          v60 = 0;
          v61 = 0;
        }

        v62 = [UIDecomposedReloadUpdateItem alloc];
        v63 = [MEMORY[0x1E696AC88] indexPathForRow:v377 inSection:v379];
        v64 = [(UIUpdateItem *)&v62->super.super.isa initWithAction:v63 forIndexPath:v60 animation:?];

        if (v28)
        {
          v65 = *(v28 + 16) & 2;
          if (v64)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v65 = 0;
          if (v64)
          {
LABEL_87:
            *(v64 + 16) = v64[2] & 0xFD | v65;
          }
        }

        v66 = [UIDecomposedReloadUpdateItem alloc];
        v67 = [MEMORY[0x1E696AC88] indexPathForRow:v384 inSection:v36];
        v68 = [(UIUpdateItem *)&v66->super.super.isa initWithAction:v67 forIndexPath:v61 animation:?];

        if (v28)
        {
          v69 = *(v28 + 16) & 2;
        }

        else
        {
          v69 = 0;
        }

        if (v68)
        {
          *(v68 + 16) = v68[2] & 0xFD | v69;
        }

        if (v64)
        {
          objc_storeWeak(v64 + 5, v68);
        }

        if (v68)
        {
          objc_storeWeak(v68 + 5, v64);
        }

        [(NSMutableArray *)v381->_deleteItems addObject:v64];
        [(NSMutableArray *)v381->_insertItems addObject:v68];

        v27 = v375;
LABEL_97:

        ++v27;
      }

      while (v27 != v371);
      v70 = [obj countByEnumeratingWithState:&v424 objects:v439 count:16];
      v371 = v70;
    }

    while (v70);
  }

  v71 = v381;
  v72 = [(NSMutableArray *)v381->_deleteItems sortedArrayUsingSelector:sel_inverseCompareIndexPaths_];
  v73 = [v72 mutableCopy];

  v74 = [(NSMutableArray *)v381->_insertItems sortedArrayUsingSelector:sel_compareIndexPaths_];
  v75 = [v74 mutableCopy];

  v376 = v73;
  v378 = v75;
  [(UITableView *)v381 _rebaseExistingShadowUpdatesIfNecessaryWithSortedInsertItems:v75 sortedDeleteItems:v73 sortedMoveItems:v26];
  [(UITableViewRowData *)v381->_rowData invalidateAllSections];
  [(UITableViewRowData *)v381->_rowData ensureAllSectionsAreValid];
  if ([v26 count])
  {
    v385 = [objc_alloc(MEMORY[0x1E696AB50]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v380 = [objc_alloc(MEMORY[0x1E696AB50]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v412 = 0u;
    v413 = 0u;
    v414 = 0u;
    v415 = 0u;
    v76 = v26;
    v77 = [v76 countByEnumeratingWithState:&v412 objects:v436 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v413;
      do
      {
        v80 = 0;
        do
        {
          if (*v413 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v81 = *(*(&v412 + 1) + 8 * v80);
          if (v81)
          {
            v82 = *(v81 + 24);
          }

          else
          {
            v82 = 0;
          }

          v83 = v82;
          [v385 addObject:v83];

          v84 = [(UIRowMoveUpdateItem *)v81 newIndexPath];
          [v380 addObject:v84];

          ++v80;
        }

        while (v78 != v80);
        v85 = [v76 countByEnumeratingWithState:&v412 objects:v436 count:16];
        v78 = v85;
      }

      while (v85);
    }
  }

  else
  {
    v380 = 0;
    v385 = 0;
  }

  if (![v376 count])
  {
    v89 = v374;
    goto LABEL_216;
  }

  v86 = 0;
  v87 = 0;
  v89 = v374;
  v88 = v376;
  do
  {
    v90 = [v88 objectAtIndexedSubscript:v86];
    v91 = v90;
    if (v90)
    {
      v92 = *(v90 + 24);
    }

    else
    {
      v92 = 0;
    }

    v93 = v92;
    v94 = [v93 section];
    if (v385 && (v91 && (v91[16] & 1) != 0 || ([v385 containsObject:v93] & 1) != 0))
    {
      v95 = 0;
    }

    else
    {
      v95 = [v89 count];
    }

    while ([v89 count] > v95)
    {
      v96 = [v89 objectAtIndexedSubscript:v95];
      v97 = v96;
      if (v96)
      {
        v98 = *(v96 + 24);
      }

      else
      {
        v98 = 0;
      }

      v99 = v98;
      v100 = [v99 isEqual:v93];

      if (v100)
      {
        if (v97)
        {
          v101 = *(v97 + 16) & 1;
        }

        else
        {
          v101 = 0;
        }

        v102 = [MEMORY[0x1E696AAA8] currentHandler];
        v103 = v102;
        if (v101)
        {
          [v102 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2143 description:{@"attempt to perform a delete and a move from the same section (%ld)", v94}];
        }

        else
        {
          [v102 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2146 description:{@"attempt to perform a delete and a move from the same index path (%@)", v93}];
        }

LABEL_146:
        v89 = v374;
        goto LABEL_147;
      }

      if (v91 && (v91[16] & 1) != 0)
      {
        if (v97)
        {
          v104 = *(v97 + 24);
        }

        else
        {
          v104 = 0;
        }

        v105 = v104;
        v106 = [v105 section];
        v107 = v94 != v106;
        v108 = v94 == v106;

        v355 |= v108;
        v356 &= v107;
        v71 = v381;
        goto LABEL_146;
      }

LABEL_147:
      ++v95;
    }

    if (v91 && (v91[16] & 1) != 0)
    {
      if ((v91[16] & 2) != 0)
      {
        goto LABEL_206;
      }

      v129 = v354;
      if (v354)
      {
        v129 = v354[8];
      }

      if (v94 >= v129)
      {
        v147 = [MEMORY[0x1E696AAA8] currentHandler];
        v148 = v147;
        v149 = v354;
        if (v354)
        {
          v149 = v354[8];
        }

        [v147 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2160 description:{@"attempt to delete section %ld, but there are only %ld sections before the update", v94, v149}];
      }

      if (![v376 count])
      {
LABEL_202:
        v141 = [(UITableView *)v71 _swipeActionController];
        [v141 deleteSectionAtIndex:v94];

        swipedIndexPath = v71->_swipedIndexPath;
        if (swipedIndexPath)
        {
          v89 = v374;
          if ([(NSIndexPath *)swipedIndexPath section]!= v94)
          {
            goto LABEL_206;
          }

LABEL_204:
          *(v353 + 2) |= 0x80000000000000uLL;
          goto LABEL_206;
        }

LABEL_205:
        v89 = v374;
        goto LABEL_206;
      }

      v130 = 0;
      v131 = 0;
      v132 = v376;
      while (1)
      {
        v133 = [v132 objectAtIndexedSubscript:v130];
        v134 = v133;
        if (v133)
        {
          if (*(v133 + 16))
          {
            if (v131 > v87)
            {
              goto LABEL_193;
            }

            goto LABEL_196;
          }

          v135 = *(v133 + 24);
        }

        else
        {
          v135 = 0;
        }

        v136 = v135;
        v137 = [v136 section];

        if (v137 != v94)
        {
          if (v131 > v87)
          {
            if (v134)
            {
LABEL_193:
              v138 = v134[3];
            }

            else
            {
              v138 = 0;
            }

            v139 = v138;
            v140 = [v139 isEqual:v93];

            if (v140)
            {
              [v376 removeObjectAtIndex:v130];
            }
          }

LABEL_196:
          ++v131;
          goto LABEL_197;
        }

        [v376 removeObjectAtIndex:v130];
        v87 -= v131 < v87;
LABEL_197:

        v130 = v131;
        v132 = v376;
        if ([v376 count] <= v131)
        {
          goto LABEL_202;
        }
      }
    }

    v109 = [v93 row];
    v110 = [v93 section];
    v111 = v110;
    v112 = v354;
    if (v354)
    {
      v112 = v354[8];
    }

    if (v110 >= v112)
    {
      v143 = [MEMORY[0x1E696AAA8] currentHandler];
      v144 = v143;
      v145 = v354;
      if (v354)
      {
        v145 = v354[8];
      }

      [v143 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2190 description:{@"attempt to delete row %ld from section %ld, but there are only %ld sections before the update", v109, v111, v145}];
    }

    if (v109 >= -[UITableViewRowData numberOfRowsInSection:](v354, [v93 section]))
    {
      v146 = [MEMORY[0x1E696AAA8] currentHandler];
      [v146 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2191 description:{@"attempt to delete row %ld from section %ld which only contains %ld rows before the update", v109, v111, -[UITableViewRowData numberOfRowsInSection:](v354, objc_msgSend(v93, "section"))}];
    }

    for (i = v87 + 1; [v376 count] > i; objc_msgSend(v376, "removeObjectAtIndex:", i))
    {
      v114 = [v376 objectAtIndex:i];
      v115 = v114;
      if (v114)
      {
        v116 = *(v114 + 24);
      }

      else
      {
        v116 = 0;
      }

      v117 = v116;
      v118 = [v117 isEqual:v93];

      if (!v118)
      {
        break;
      }
    }

    v410 = 0u;
    v411 = 0u;
    v408 = 0u;
    v409 = 0u;
    v119 = v378;
    v120 = [v119 countByEnumeratingWithState:&v408 objects:v435 count:16];
    if (v120)
    {
      v121 = v120;
      v122 = *v409;
      while (2)
      {
        for (j = 0; j != v121; ++j)
        {
          if (*v409 != v122)
          {
            objc_enumerationMutation(v119);
          }

          v124 = *(*(&v408 + 1) + 8 * j);
          if (v124)
          {
            v124 = v124[3];
          }

          v125 = v124;
          v126 = [v125 isEqual:v93];

          if (v126)
          {

            v71 = v381;
            goto LABEL_205;
          }
        }

        v121 = [v119 countByEnumeratingWithState:&v408 objects:v435 count:16];
        if (v121)
        {
          continue;
        }

        break;
      }
    }

    v71 = v381;
    v127 = [(UITableView *)v381 _swipeActionController];
    [v127 deleteRowAtIndexPath:v93];

    v128 = v381->_swipedIndexPath;
    if (!v128)
    {
      goto LABEL_205;
    }

    v89 = v374;
    if ([(NSIndexPath *)v128 isEqual:v93])
    {
      goto LABEL_204;
    }

LABEL_206:
    ++v87;

    v86 = v87;
    v88 = v376;
  }

  while ([v376 count] > v87);
LABEL_216:
  if (![v378 count])
  {
    goto LABEL_301;
  }

  v150 = 0;
  v151 = 0;
  v152 = v378;
  while (2)
  {
    v153 = [v152 objectAtIndexedSubscript:v150];
    v154 = v153;
    if (v153)
    {
      v155 = *(v153 + 24);
    }

    else
    {
      v155 = 0;
    }

    v156 = v155;
    v157 = [v156 section];
    if (v380 && (v154 && (v154[16] & 1) != 0 || ([v380 containsObject:v156] & 1) != 0))
    {
      v158 = 0;
    }

    else
    {
      v158 = [v89 count];
    }

    while (2)
    {
      if ([v89 count] > v158)
      {
        v159 = [v89 objectAtIndexedSubscript:v158];
        v160 = [(UIRowMoveUpdateItem *)v159 newIndexPath];
        v161 = [v160 isEqual:v156];

        if (v161)
        {
          if (v159)
          {
            v162 = *(v159 + 16) & 1;
          }

          else
          {
            v162 = 0;
          }

          v163 = [MEMORY[0x1E696AAA8] currentHandler];
          v164 = v163;
          if (v162)
          {
            [v163 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2239 description:{@"attempt to perform an insert and a move to the same section (%ld)", v157}];
          }

          else
          {
            [v163 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2242 description:{@"attempt to perform an insert and a move to the same index path (%@)", v156}];
          }

LABEL_237:
          v89 = v374;
        }

        else if (v154 && (v154[16] & 1) != 0)
        {
          v165 = [(UIRowMoveUpdateItem *)v159 newIndexPath];
          v166 = [v165 section];
          v167 = v157 != v166;
          v168 = v157 == v166;

          v355 |= v168;
          v71 = v381;
          v356 &= v167;
          goto LABEL_237;
        }

        ++v158;

        continue;
      }

      break;
    }

    if (v154 && (v154[16] & 1) != 0)
    {
      if ((v154[16] & 2) != 0)
      {
        goto LABEL_291;
      }

      rowData = v71->_rowData;
      if (rowData)
      {
        rowData = *(rowData + 64);
      }

      if (v157 >= rowData)
      {
        v203 = [MEMORY[0x1E696AAA8] currentHandler];
        v204 = v203;
        v205 = v71->_rowData;
        if (v205)
        {
          v205 = v205->_numSections;
        }

        [v203 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2256 description:{@"attempt to insert section %ld but there are only %ld sections after the update", v157, v205}];
      }

      if (![v378 count])
      {
LABEL_289:
        v179 = [(UITableView *)v71 _swipeActionController];
        [v179 insertSectionAtIndex:v157];
        goto LABEL_290;
      }

      v188 = 0;
      v189 = 0;
      v190 = v378;
      while (1)
      {
        v191 = [v190 objectAtIndexedSubscript:v188];
        v192 = v191;
        if (v191)
        {
          if (*(v191 + 16))
          {
            if (v189 > v151)
            {
              goto LABEL_280;
            }

            goto LABEL_283;
          }

          v193 = *(v191 + 24);
        }

        else
        {
          v193 = 0;
        }

        v194 = v193;
        v195 = [v194 section];

        if (v195 != v157)
        {
          if (v189 > v151)
          {
            if (v192)
            {
LABEL_280:
              v196 = v192[3];
            }

            else
            {
              v196 = 0;
            }

            v197 = v196;
            v198 = [v197 isEqual:v156];

            if (v198)
            {
              [v378 removeObjectAtIndex:v188];
            }
          }

LABEL_283:
          ++v189;
          goto LABEL_284;
        }

        [v378 removeObjectAtIndex:v188];
        v151 -= v189 < v151;
LABEL_284:

        v188 = v189;
        v190 = v378;
        if ([v378 count] <= v189)
        {
          goto LABEL_289;
        }
      }
    }

    v169 = [v156 section];
    v170 = [v156 row];
    v171 = v71->_rowData;
    if (v171)
    {
      v172 = *(v171 + 64);
    }

    else
    {
      v172 = 0;
    }

    if (v169 >= v172)
    {
      v199 = [MEMORY[0x1E696AAA8] currentHandler];
      v200 = v199;
      v201 = v71->_rowData;
      if (v201)
      {
        v201 = v201->_numSections;
      }

      [v199 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2283 description:{@"attempt to insert row %ld into section %ld, but there are only %ld sections after the update", v170, v169, v201}];

      v171 = v71->_rowData;
    }

    if (v170 >= -[UITableViewRowData numberOfRowsInSection:](v171, [v156 section]))
    {
      v202 = [MEMORY[0x1E696AAA8] currentHandler];
      [v202 handleFailureInMethod:a2 object:v71 file:@"UITableView.m" lineNumber:2284 description:{@"attempt to insert row %ld into section %ld, but there are only %ld rows in section %ld after the update", v170, v169, -[UITableViewRowData numberOfRowsInSection:](v71->_rowData, objc_msgSend(v156, "section")), v169}];
    }

    for (k = v151 + 1; [v378 count] > k; objc_msgSend(v378, "removeObjectAtIndex:", k))
    {
      v174 = [v378 objectAtIndex:k];
      v175 = v174;
      if (v174)
      {
        v176 = *(v174 + 24);
      }

      else
      {
        v176 = 0;
      }

      v177 = v176;
      v178 = [v177 isEqual:v156];

      if (!v178)
      {
        break;
      }
    }

    v406 = 0u;
    v407 = 0u;
    v404 = 0u;
    v405 = 0u;
    v179 = v376;
    v180 = [v179 countByEnumeratingWithState:&v404 objects:v434 count:16];
    if (v180)
    {
      v181 = v180;
      v182 = *v405;
      while (2)
      {
        for (m = 0; m != v181; ++m)
        {
          if (*v405 != v182)
          {
            objc_enumerationMutation(v179);
          }

          v184 = *(*(&v404 + 1) + 8 * m);
          if (v184)
          {
            v184 = v184[3];
          }

          v185 = v184;
          v186 = [v185 isEqual:v156];

          if (v186)
          {
            v71 = v381;
            goto LABEL_290;
          }
        }

        v181 = [v179 countByEnumeratingWithState:&v404 objects:v434 count:16];
        if (v181)
        {
          continue;
        }

        break;
      }
    }

    v71 = v381;
    v179 = [(UITableView *)v381 _swipeActionController];
    [v179 insertRowAtIndexPath:v156];
LABEL_290:

    v89 = v374;
LABEL_291:
    ++v151;

    v150 = v151;
    v152 = v378;
    if ([v378 count] > v151)
    {
      continue;
    }

    break;
  }

LABEL_301:
  if ([v89 count])
  {
    v206 = 0;
    do
    {
      v207 = [v89 objectAtIndexedSubscript:v206];
      v208 = v207;
      if (v207)
      {
        v209 = *(v207 + 24);
      }

      else
      {
        v209 = 0;
      }

      v210 = v209;
      v211 = [(UIRowMoveUpdateItem *)v208 newIndexPath];
      v212 = [v210 section];
      v213 = [v210 row];
      v372 = [v211 section];
      v214 = [v211 row];
      if (v208)
      {
        v215 = *(v208 + 16) & 1;
      }

      else
      {
        v215 = 0;
      }

      v216 = v354;
      if (v354)
      {
        v217 = v354[8];
      }

      else
      {
        v217 = 0;
      }

      v368 = v212;
      v362 = v208;
      if (v215)
      {
        if (v212 >= v217)
        {
          v240 = [MEMORY[0x1E696AAA8] currentHandler];
          v241 = v240;
          v242 = v354;
          if (v354)
          {
            v242 = v354[8];
          }

          [v240 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2328 description:{@"attempt to move section %ld, but there are only %ld sections before the update", v212, v242}];
        }

        v218 = v381->_rowData;
        if (v218)
        {
          v218 = v218->_numSections;
        }

        if (v372 >= v218)
        {
          v219 = [MEMORY[0x1E696AAA8] currentHandler];
          v220 = v219;
          v221 = v381->_rowData;
          if (v221)
          {
            v221 = v221->_numSections;
          }

          [v219 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2329 description:{@"attempt to to move section %ld to section %ld, but there are only %ld sections after the update", v212, v372, v221, v345}];
          goto LABEL_363;
        }
      }

      else
      {
        if (v212 >= v217)
        {
          v243 = [MEMORY[0x1E696AAA8] currentHandler];
          v244 = v243;
          v245 = v354;
          if (v354)
          {
            v245 = v354[8];
          }

          [v243 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2332 description:{@"attempt to move index path (%@) from a section that does not exist - there are only %ld sections before the update", v210, v245}];

          v216 = v354;
          v212 = v368;
        }

        if (v213 >= [(UITableViewRowData *)v216 numberOfRowsInSection:v212])
        {
          v246 = [MEMORY[0x1E696AAA8] currentHandler];
          [v246 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2333 description:{@"attempt to move index path (%@) that does not exist - there are only %ld rows in section %ld before the update", v210, -[UITableViewRowData numberOfRowsInSection:](v354, v212), v212}];
        }

        v222 = v381->_rowData;
        if (v222)
        {
          v223 = *(v222 + 64);
        }

        else
        {
          v223 = 0;
        }

        if (v372 >= v223)
        {
          v247 = [MEMORY[0x1E696AAA8] currentHandler];
          v248 = v247;
          v249 = v381->_rowData;
          if (v249)
          {
            v249 = v249->_numSections;
          }

          [v247 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2334 description:{@"attempt to move index path (%@) to index path (%@) in section that does not exist - there are only %ld sections after the update", v210, v211, v249}];

          v222 = v381->_rowData;
        }

        if (v214 >= [(UITableViewRowData *)v222 numberOfRowsInSection:v372])
        {
          v220 = [MEMORY[0x1E696AAA8] currentHandler];
          [v220 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2335 description:{@"attempt to move index path (%@) to index path (%@) that does not exist - there are only %ld rows in section %ld after the update", v210, v211, -[UITableViewRowData numberOfRowsInSection:](v381->_rowData, v372), v372}];
LABEL_363:
        }
      }

      v224 = v206 + 1;
      v225 = v224;
      if ([v385 countForObject:v210] == 1)
      {
        v225 = v224;
        if ([v380 countForObject:v211] == 1)
        {
          v225 = [v89 count];
        }
      }

      v365 = v224;
      if ([v89 count] > v225)
      {
        v226 = v225;
        v227 = v225;
        while (1)
        {
          v228 = [v89 objectAtIndex:v226];
          v229 = v228;
          v230 = v228 ? *(v228 + 24) : 0;
          v231 = v230;
          v232 = [(UIRowMoveUpdateItem *)v229 newIndexPath];
          v233 = [v210 isEqual:v231];
          v234 = [v211 isEqual:v232];
          if (!v233)
          {
            break;
          }

          if (!v234)
          {
            v237 = [MEMORY[0x1E696AAA8] currentHandler];
            v236 = v237;
            if (v215)
            {
              [v237 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2353 description:{@"attempt to move section %ld to both section %ld and section %ld", v368, v372, objc_msgSend(v232, "section")}];
            }

            else
            {
              [v237 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2356 description:{@"attempt to move row at index path %@ to both %@ and %@", v210, v211, v232}];
            }

            goto LABEL_343;
          }

          [v89 removeObjectAtIndex:v226];
LABEL_345:

          v226 = v227;
          if ([v89 count] <= v227)
          {
            goto LABEL_348;
          }
        }

        if (v234)
        {
          v235 = [MEMORY[0x1E696AAA8] currentHandler];
          v236 = v235;
          if (v215)
          {
            [v235 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2362 description:{@"attempt to move both section %ld and section %ld to section %ld", objc_msgSend(v210, "section"), objc_msgSend(v231, "section"), v372}];
          }

          else
          {
            [v235 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2365 description:{@"attempt to move both row at index path %@ and %@ to %@", v210, v231, v211}];
          }

LABEL_343:
        }

        ++v227;
        goto LABEL_345;
      }

LABEL_348:
      v238 = [(UITableView *)v381 _swipeActionController];
      v239 = v238;
      if (v215)
      {
        [v238 moveSectionAtIndex:v368 toIndex:v372];
      }

      else
      {
        [v238 moveRowAtIndexPath:v210 toIndexPath:v211];
      }

      v206 = v365;

      v71 = v381;
    }

    while ([v89 count] > v365);
  }

  if (v71->_swipedIndexPath)
  {
    v250 = [(UITableView *)v71 _swipeActionController];
    v251 = [v250 swipedIndexPath];

    if (v251)
    {
      objc_storeStrong(&v71->_swipedIndexPath, v251);
    }
  }

  if (v354)
  {
    v252 = v354[8];
    v253 = malloc_type_malloc(8 * v252, 0x100004000313F17uLL);
    if (v252 >= 1)
    {
      for (n = 0; n != v252; ++n)
      {
        v253[n] = [(UITableViewRowData *)v354 numberOfRowsInSection:?];
      }
    }
  }

  else
  {
    v253 = malloc_type_malloc(0, 0x100004000313F17uLL);
    v252 = 0;
  }

  v255 = v71->_rowData;
  if (v255)
  {
    numSections = v255->_numSections;
  }

  else
  {
    numSections = 0;
  }

  v373 = v252;
  v360 = v253;
  if (v356)
  {
    v402 = 0u;
    v403 = 0u;
    v400 = 0u;
    v401 = 0u;
    v257 = v376;
    v258 = [v257 countByEnumeratingWithState:&v400 objects:v433 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = 0;
      v261 = *v401;
      do
      {
        for (ii = 0; ii != v259; ++ii)
        {
          if (*v401 != v261)
          {
            objc_enumerationMutation(v257);
          }

          v263 = *(*(&v400 + 1) + 8 * ii);
          if (v263 && (*(v263 + 16) & 3) == 1)
          {
            ++v260;
            --v252;
          }
        }

        v259 = [v257 countByEnumeratingWithState:&v400 objects:v433 count:16];
      }

      while (v259);
    }

    else
    {
      v260 = 0;
    }

    v398 = 0u;
    v399 = 0u;
    v396 = 0u;
    v397 = 0u;
    v265 = v378;
    v266 = [v265 countByEnumeratingWithState:&v396 objects:v432 count:16];
    if (v266)
    {
      v267 = v266;
      v268 = 0;
      v269 = *v397;
      do
      {
        for (jj = 0; jj != v267; ++jj)
        {
          if (*v397 != v269)
          {
            objc_enumerationMutation(v265);
          }

          v271 = *(*(&v396 + 1) + 8 * jj);
          if (v271 && (*(v271 + 16) & 3) == 1)
          {
            ++v268;
            ++v252;
          }
        }

        v267 = [v265 countByEnumeratingWithState:&v396 objects:v432 count:16];
      }

      while (v267);
    }

    else
    {
      v268 = 0;
    }

    if (v252 == numSections)
    {
      v272 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v374, "count") + objc_msgSend(v257, "count") + objc_msgSend(v265, "count")}];
      [v272 addObjectsFromArray:v257];
      [v272 addObjectsFromArray:v374];
      [v272 addObjectsFromArray:v265];
      v273 = v272;
      v274 = [_UITableViewUpdateSupport alloc];
      v275 = v381->_rowData;
      v276 = [(UITableViewRowData *)v354 numberOfRows];
      v277 = [(UITableViewRowData *)v381->_rowData numberOfRows];
      v279 = [(_UITableViewUpdateSupport *)v274 initWithTableView:v381 updateItems:v273 oldRowData:v354 newRowData:v275 oldRowRange:0 newRowRange:v276 context:v278, 0, v277, v351];
      currentUpdate = v381->_currentUpdate;
      v381->_currentUpdate = v279;

      v281 = v381->_currentUpdate;
      if (v281 && v281->_updateMaps.updatesAreInvalid)
      {
        v282 = MEMORY[0x1E696AEC0];
        v283 = v281->_invalidUpdatesErrorMessage;
        v284 = [v282 stringWithFormat:@"%@\nTable view: %@", v283, v381];

        if ((*(v353 + 28) & 0x10) == 0)
        {
          [(UITableView *)v381 _Bug_Detected_In_Client_Of_UITableView_Invalid_Batch_Updates:v284];
          goto LABEL_409;
        }

        if (os_variant_has_internal_diagnostics())
        {
          v344 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v344, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v431 = v284;
            _os_log_fault_impl(&dword_188A29000, v344, OS_LOG_TYPE_FAULT, "Performing reloadData as a fallback — %@", buf, 0xCu);
          }

          v355 = 1;
LABEL_409:
          v252 = v373;
          v89 = v374;
        }

        else
        {
          v289 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA967520) + 8);
          v252 = v373;
          v89 = v374;
          if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v431 = v284;
            _os_log_impl(&dword_188A29000, v289, OS_LOG_TYPE_ERROR, "Performing reloadData as a fallback — %@", buf, 0xCu);
          }

          v355 = 1;
        }

        v358 = 0;
        v264 = v273;
      }

      else
      {
        v358 = 1;
        v264 = v273;
        v252 = v373;
        v89 = v374;
      }
    }

    else
    {
      v252 = v373;
      v273 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid update: invalid number of sections. The number of sections contained in the table view after the update (%lu) must be equal to the number of sections contained in the table view before the update (%lu), plus or minus the number of sections inserted or deleted (%lu inserted, %lu deleted). Table view: %@", numSections, v373, v268, v260, v381];
      if ((*(v353 + 28) & 0x10) != 0)
      {
        v285 = [(UITableView *)v381 _diffableDataSourceImpl];
        v286 = [v285 currentTransaction];
        v287 = v286;
        if (v285)
        {
          v89 = v374;
          if (v286)
          {
            v288 = [v273 stringByAppendingFormat:@" Diffable transaction: %@", v286];;

            v273 = v288;
          }
        }

        else
        {
          v89 = v374;
        }

        v290 = *(__UILogGetCategoryCachedImpl("TableView", &qword_1EA967518) + 8);
        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v431 = v273;
          _os_log_impl(&dword_188A29000, v290, OS_LOG_TYPE_ERROR, "Performing reloadData as a fallback — %@", buf, 0xCu);
        }

        v264 = 0;
        v358 = 0;
        v355 = 1;
      }

      else
      {
        [(UITableView *)v381 _Bug_Detected_In_Client_Of_UITableView_Invalid_Number_Of_Sections:v273];
        v264 = 0;
        v358 = 0;
        v89 = v374;
      }
    }
  }

  else
  {
    v264 = 0;
    v358 = 0;
  }

  v369 = malloc_type_calloc(8uLL, numSections, 0x100004000313F17uLL);
  v366 = malloc_type_calloc(8uLL, v252, 0x100004000313F17uLL);
  v291 = numSections;
  v363 = malloc_type_calloc(8uLL, numSections, 0x100004000313F17uLL);
  v292 = malloc_type_calloc(8uLL, v252, 0x100004000313F17uLL);
  v392 = 0u;
  v393 = 0u;
  v394 = 0u;
  v395 = 0u;
  v293 = v264;
  v294 = [v293 countByEnumeratingWithState:&v392 objects:v429 count:16];
  if (v294)
  {
    v295 = v294;
    v296 = *v393;
    do
    {
      v297 = 0;
      do
      {
        if (*v393 != v296)
        {
          objc_enumerationMutation(v293);
        }

        v298 = *(*(&v392 + 1) + 8 * v297);
        if (v298)
        {
          if (*(v298 + 16))
          {
            goto LABEL_446;
          }

          v299 = *(v298 + 24);
        }

        else
        {
          v299 = 0;
        }

        v300 = v299;
        v301 = [v300 section];

        if (!v298)
        {
          goto LABEL_438;
        }

        v302 = *(v298 + 20);
        if (v302 != 3)
        {
          if (v302 == 1)
          {
            if (v301 >= v373)
            {
              v308 = [MEMORY[0x1E696AAA8] currentHandler];
              [v308 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2481 description:{@"UITableView internal inconsistency: encountered out of bounds section index while validating delete updates (section=%ld, oldSectionCount=%ld)", v301, v373}];
            }

            v303 = v366;
          }

          else
          {
            if (v302)
            {
              goto LABEL_446;
            }

LABEL_438:
            if (v301 >= v291)
            {
              v307 = [MEMORY[0x1E696AAA8] currentHandler];
              [v307 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2477 description:{@"UITableView internal inconsistency: encountered out of bounds section index while validating insert updates (section=%ld, newSectionCount=%ld)", v301, v291}];
            }

            v303 = v369;
          }

          v304 = &v303[v301];
LABEL_445:
          ++*v304;
          goto LABEL_446;
        }

        v305 = [(UIRowMoveUpdateItem *)v298 newIndexPath];
        v306 = [v305 section];

        if ([(_UITableViewUpdateSupport *)v381->_currentUpdate finalSectionIndexForInitialSectionIndex:v301]!= v306)
        {
          if (v301 >= v373)
          {
            v309 = [MEMORY[0x1E696AAA8] currentHandler];
            [v309 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2487 description:{@"UITableView internal inconsistency: encountered out of bounds section index while validating move updates (section=%ld, oldSectionCount=%ld)", v301, v373}];
          }

          if (v306 >= v291)
          {
            v310 = [MEMORY[0x1E696AAA8] currentHandler];
            [v310 handleFailureInMethod:a2 object:v381 file:@"UITableView.m" lineNumber:2488 description:{@"UITableView internal inconsistency: encountered out of bounds section index while validating move updates (newSection=%ld, newSectionCount=%ld)", v306, v291}];
          }

          ++v292[v301];
          v304 = &v363[v306];
          goto LABEL_445;
        }

LABEL_446:
        ++v297;
      }

      while (v295 != v297);
      v311 = [v293 countByEnumeratingWithState:&v392 objects:v429 count:16];
      v295 = v311;
    }

    while (v311);
  }

  v312 = v358;
  if (v291 > 0)
  {
    v313 = v358;
  }

  else
  {
    v313 = 0;
  }

  if (v313 != 1)
  {
    self = v381;
    v9 = v348;
    v315 = v360;
    goto LABEL_479;
  }

  v314 = 0;
  self = v381;
  v315 = v360;
  while (2)
  {
    v316 = [(_UITableViewUpdateSupport *)self->_currentUpdate initialSectionIndexForFinalSectionIndex:v314];
    if (v316 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_464:
      ++v314;
      self = v381;
      if (v291 == v314)
      {
        v312 = 1;
        v9 = v348;
        v89 = v374;
        goto LABEL_479;
      }

      continue;
    }

    break;
  }

  v317 = v316;
  v318 = *(v360 + v316);
  v319 = [(UITableViewRowData *)v381->_rowData numberOfRowsInSection:v314];
  if ((v319 & 0x8000000000000000) == 0)
  {
    v320 = v363[v314];
    v321 = v366[v317];
    v322 = v369[v314];
    if (v319 != v318 + v320 - (v292[v317] + v321) + v322)
    {
      v323 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid update: invalid number of rows in section %lu. The number of rows contained in an existing section after the update (%lu) must be equal to the number of rows contained in that section before the update (%lu), plus or minus the number of rows inserted or deleted from that section (%lu inserted, %lu deleted) and plus or minus the number of rows moved into or out of that section (%lu moved in, %lu moved out). Table view: %@", v314, v319, v318, v322, v321, v320, v292[v317], v381];
      if ((*(v353 + 28) & 0x10) == 0)
      {
        [(UITableView *)v381 _Bug_Detected_In_Client_Of_UITableView_Invalid_Number_Of_Rows_In_Section:v323];
        self = v381;
        goto LABEL_471;
      }

      v325 = *(__UILogGetCategoryCachedImpl("TableView", &qword_1EA967530) + 8);
      v89 = v374;
      if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v431 = v323;
        _os_log_impl(&dword_188A29000, v325, OS_LOG_TYPE_ERROR, "Performing reloadData as a fallback — %@", buf, 0xCu);
      }

      v355 = 1;
      self = v381;
      v9 = v348;
      goto LABEL_478;
    }

    goto LABEL_464;
  }

  self = v381;
  v323 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid update: invalid number of rows in section %lu. Attempt to delete more rows than exist in section. Table view: %@", v317, v381];
  if ((*(v353 + 28) & 0x10) == 0)
  {
    [(UITableView *)v381 _Bug_Detected_In_Client_Of_UITableView_Invalid_Number_Of_Rows_In_Section:v323];
LABEL_471:
    v9 = v348;
    v89 = v374;
    goto LABEL_478;
  }

  v324 = *(__UILogGetCategoryCachedImpl("TableView", &qword_1EA967528) + 8);
  v9 = v348;
  v89 = v374;
  if (os_log_type_enabled(v324, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v431 = v323;
    _os_log_impl(&dword_188A29000, v324, OS_LOG_TYPE_ERROR, "Performing reloadData as a fallback — %@", buf, 0xCu);
  }

  v355 = 1;
LABEL_478:

  v312 = 0;
LABEL_479:
  free(v315);
  free(v369);
  free(v366);
  free(v363);
  free(v292);
  if (v312)
  {
    objc_storeStrong(&self->_currentUpdate->_ignoringDragsToken, v352);
    [(UITableView *)self _updateWithItems:v293 updateSupport:self->_currentUpdate];
  }

  else if (v355)
  {
    v326 = _Block_copy(self->_updateCompletionHandler);
    updateCompletionHandler = self->_updateCompletionHandler;
    self->_updateCompletionHandler = 0;

    [(UITableView *)self reloadData];
    if (v326)
    {
      v328 = MEMORY[0x1E69E96A0];
      v329 = MEMORY[0x1E69E96A0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__UITableView__endCellAnimationsWithContext___block_invoke;
      block[3] = &unk_1E70F0F78;
      v391 = v326;
      dispatch_async(v328, block);
    }
  }

  v330 = self->_currentUpdate;
  self->_currentUpdate = 0;

  [(UITableView *)self _numberOfRowsDidChange];
  p_tableFlags = v353;
LABEL_486:
  [(UITableView *)self _endSuspendingUpdates];
  [(UITableView *)self _resetUpdateItemArrays];
  v331 = [(UITableView *)self _shouldRestorePreReloadScrollPositionWithFirstVisibleIndexPath:v9 scrolledToTop:v349];
  v332 = *(p_tableFlags + 3);
  if (v331)
  {
    v332 |= 0x200uLL;
    *(p_tableFlags + 3) = v332;
  }

  if ((v332 & 0x8000000000) == 0)
  {
    [(UITableView *)self _reapTentativeViews];
  }

  v333 = v9;
  [(UITableView *)self _adjustExtraSeparators];
  [(UITableView *)self _resumeReloads];
  [(_UITableViewPrefetchContext *)self->_prefetchContext cancelWithNewMaxIndex:?];
  if (*(v353 + 26))
  {
    [(UITableView *)self _updateFocusedCellIndexPathIfNecessaryWithLastFocusedRect:v11, v12, v13, v14];
    [(UITableView *)self _updateVisibleCellsImmediatelyIfNecessary];
    [(UITableView *)self _updateContentSize];
    [(UIView *)self setNeedsFocusUpdate];
    [(UIView *)self updateFocusIfNeeded];
    *(v353 + 3) &= ~0x10000uLL;
  }

  v388 = 0u;
  v389 = 0u;
  v386 = 0u;
  v387 = 0u;
  v334 = [(NSMutableArray *)self->_selectedIndexPaths copy];
  v335 = [v334 countByEnumeratingWithState:&v386 objects:v428 count:16];
  if (v335)
  {
    v336 = v335;
    v337 = *v387;
    do
    {
      for (kk = 0; kk != v336; ++kk)
      {
        if (*v387 != v337)
        {
          objc_enumerationMutation(v334);
        }

        v339 = [(UITableView *)self _existingCellForRowAtIndexPath:*(*(&v386 + 1) + 8 * kk)];
        [v339 _updateShowingSelectedBackground];
      }

      v336 = [v334 countByEnumeratingWithState:&v386 objects:v428 count:16];
    }

    while (v336);
  }

  _UIRestorePreviousFallbackEnvironment(v350);
  v340 = __UILogGetCategoryCachedImpl("TableView", &qword_1EA967538);
  v341 = *(v340 + 8);
  v342 = os_signpost_id_make_with_pointer(*(v340 + 8), self);
  if (v342 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v343 = v342;
    if (os_signpost_enabled(v341))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v341, OS_SIGNPOST_INTERVAL_END, v343, "BatchUpdates", "", buf, 2u);
    }
  }
}

- (id)_sectionsWithSectionOperationsInUpdateItems:(void *)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      a1 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (v9 && (*(v9 + 16) & 1) != 0)
          {
            v10 = *(v9 + 24);
            v11 = [v10 section];

            if (a1)
            {
              [a1 addIndex:v11];
            }

            else
            {
              a1 = [MEMORY[0x1E696AD50] indexSetWithIndex:v11];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_Bug_Detected_In_Client_Of_UITableView_Invalid_Batch_Updates:(id)a3
{
  v5 = MEMORY[0x1E696AAA8];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:2614 description:{@"%@", v6}];
}

- (void)_Bug_Detected_In_Client_Of_UITableView_Invalid_Number_Of_Sections:(id)a3
{
  v5 = MEMORY[0x1E696AAA8];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:2619 description:{@"%@", v6}];
}

- (void)_Bug_Detected_In_Client_Of_UITableView_Invalid_Number_Of_Rows_In_Section:(id)a3
{
  v5 = MEMORY[0x1E696AAA8];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:2624 description:{@"%@", v6}];
}

- (void)_rebaseExistingShadowUpdatesIfNecessaryWithSortedInsertItems:(id)a3 sortedDeleteItems:(id)a4 sortedMoveItems:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController hasShadowUpdates]&& ![(UITableView *)self _isPerformingShadowUpdates]&& ![(UITableView *)self _isPerformingRevertingShadowUpdates])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v11 addObjectsFromArray:v9];
    [v11 addObjectsFromArray:v10];
    v19 = v8;
    [v11 addObjectsFromArray:v8];
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v20 + 1) + 8 * v17) collectionViewUpdateItem];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    [(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController rebaseExistingShadowUpdatesForUpdates:v12];
    v8 = v19;
  }
}

- (void)_updateFocusedCellIndexPathIfNecessaryWithLastFocusedRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  focusedCellIndexPath = self->_focusedCellIndexPath;
  if (!focusedCellIndexPath)
  {
    goto LABEL_17;
  }

  v9 = [(NSIndexPath *)focusedCellIndexPath row];
  v10 = [(NSIndexPath *)self->_focusedCellIndexPath section];
  v11 = [(UITableView *)self _numberOfSectionsUsingPresentationValues:1];
  v12 = v10 < v11 ? [(UITableView *)self _numberOfRowsInSection:[(NSIndexPath *)self->_focusedCellIndexPath section] usingPresentationValues:1]: 0;
  v13 = v9 == 0x7FFFFFFFFFFFFFFFLL || [(NSIndexPath *)self->_focusedCellIndexPath row]< v12;
  if (v10 >= v11 || !v13)
  {
    if (v10 < v11 && !v13 && v12)
    {
      v15 = [MEMORY[0x1E696AC88] indexPathForRow:v12 - 1 inSection:{-[NSIndexPath section](self->_focusedCellIndexPath, "section")}];
      [(UITableView *)self _setFocusedCellIndexPath:v15];

      self->_focusedViewType = 1;
    }

    if (!self->_focusedCellIndexPath)
    {
LABEL_17:
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      if (!CGRectIsNull(v20))
      {
        v16 = _UIFocusClosestFocusableViewToRectInView(self, x, y, width, height);
        if (v16)
        {
          v19 = 0;
          v18 = 0;
          v17 = [(UITableView *)self _managedSubviewForView:v16 viewType:&v19 indexPath:&v18];
          [(UITableView *)self _setFocusedCellIndexPath:v18];
          self->_focusedViewType = v19;
        }
      }
    }
  }
}

- (void)_setNeedsVisibleCellsUpdate:(BOOL)a3 withFrames:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = dyld_program_sdk_at_least() ^ 1;

  [(UITableView *)self _setNeedsVisibleCellsUpdate:v5 withFrames:v4 updateImmediatelyIfPossible:v7];
}

- (void)_setNeedsVisibleCellsUpdate:(BOOL)a3 withFrames:(BOOL)a4 updateImmediatelyIfPossible:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    *(&self->_tableFlags + 2) |= 1uLL;
  }

  p_tableFlags = &self->_tableFlags;
  v8 = *(&self->_tableFlags + 1);
  if (v8 & 0x8000000000000000) == 0 && ((((v8 & 0x4000000000000000) == 0) ^ a3))
  {
    if (!a3)
    {
      return;
    }

    goto LABEL_15;
  }

  v9 = 0x4000000000000000;
  if (!a3)
  {
    v9 = 0;
  }

  *(&self->_tableFlags + 1) = v9 & 0xC000000000000000 | v8 & 0x3FFFFFFFFFFFFFFFLL;
  if (a3)
  {
    [(UIScrollView *)self setNeedsLayout];
    if (v5)
    {
      if ([(UITableView *)self _shouldUnionVisibleBounds])
      {
        if (!self->_tableReloadingSuspendedCount)
        {
          v10 = [(UIView *)self window];

          if (v10)
          {
            [(UITableView *)self _updateVisibleCellsNow:1];
          }
        }
      }
    }

LABEL_15:
    v11 = *(p_tableFlags + 2);
    if ((v11 & 0x400) != 0)
    {
      *(p_tableFlags + 2) = v11 | 0x800000000;
    }
  }
}

- (void)_updateTableHeadersAndFootersNow:(BOOL)a3
{
  v3 = a3;
  if ([(UITableView *)self _shouldUseNewHeaderFooterBehavior])
  {
    [(UITableView *)self _visibleBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(UITableViewRowData *)self->_rowData rectForTableHeaderView];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(UITableViewRowData *)self->_rowData rectForTableFooterView];
    v32 = v21;
    v33 = v20;
    v30 = v23;
    v31 = v22;
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    v37.origin.x = v13;
    v37.origin.y = v15;
    v37.size.width = v17;
    v37.size.height = v19;
    if (CGRectIntersectsRect(v35, v37))
    {
      v24 = [(UITableView *)self _tableHeaderView:v3];
    }

    else
    {
      tableHeaderView = self->_tableHeaderView;
      if (tableHeaderView && tableHeaderView != self->_firstResponderView)
      {
        [(UIView *)tableHeaderView removeFromSuperview];
        v26 = self->_tableHeaderView;
        self->_tableHeaderView = 0;
      }
    }

    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v10;
    v36.size.height = v12;
    v38.origin.y = v32;
    v38.origin.x = v33;
    v38.size.height = v30;
    v38.size.width = v31;
    if (CGRectIntersectsRect(v36, v38))
    {
      v27 = [(UITableView *)self _tableFooterView:v3];
    }

    else
    {
      tableFooterView = self->_tableFooterView;
      if (tableFooterView && tableFooterView != self->_firstResponderView)
      {
        [(UIView *)tableFooterView removeFromSuperview];
        v29 = self->_tableFooterView;
        self->_tableFooterView = 0;
      }
    }
  }
}

- (void)_updateVisibleHeadersAndFootersNow:(BOOL)a3
{
  v3 = a3;
  if ([(UITableView *)self _shouldShowHeadersAndFooters])
  {
    [(UITableView *)self _visibleBounds];
    v86 = v6;
    v87 = v5;
    v84 = v8;
    v85 = v7;
    v9 = [(UITableViewRowData *)self->_rowData sectionsInRect:v5, v6, v7, v8];
    v11 = v10;
    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = __Block_byref_object_copy__194;
    v106 = __Block_byref_object_dispose__194;
    v107 = 0;
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __50__UITableView__updateVisibleHeadersAndFootersNow___block_invoke;
    v101[3] = &unk_1E7123508;
    v101[5] = v9;
    v101[6] = v10;
    v101[4] = &v102;
    [(NSMutableDictionary *)self->_visibleHeaderViews enumerateKeysAndObjectsUsingBlock:v101];
    v12 = v103[5];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __50__UITableView__updateVisibleHeadersAndFootersNow___block_invoke_2;
    v100[3] = &unk_1E70FEDB8;
    v100[4] = self;
    [v12 enumerateKeysAndObjectsUsingBlock:v100];
    [v103[5] removeAllObjects];
    [(NSMutableDictionary *)self->_visibleFooterViews enumerateKeysAndObjectsUsingBlock:v101];
    v13 = v103[5];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __50__UITableView__updateVisibleHeadersAndFootersNow___block_invoke_3;
    v99[3] = &unk_1E70FEDB8;
    v99[4] = self;
    [v13 enumerateKeysAndObjectsUsingBlock:v99];
    if (v9 < v9 + v11)
    {
      v82 = 0;
      v83 = v3;
      do
      {
        visibleHeaderViews = self->_visibleHeaderViews;
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
        v16 = [(NSMutableDictionary *)visibleHeaderViews objectForKey:v15];

        visibleFooterViews = self->_visibleFooterViews;
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
        v19 = [(NSMutableDictionary *)visibleFooterViews objectForKey:v18];

        rect2_8 = [(UITableViewRowData *)self->_rowData rectForHeaderInSection:v9 heightCanBeGuessed:0];
        v93 = v21;
        v94 = v20;
        rect = v22;
        rect2 = [(UITableViewRowData *)self->_rowData rectForFooterInSection:v9 heightCanBeGuessed:0];
        rect2_16 = v24;
        rect2_24 = v23;
        v92 = v25;
        v108.origin.x = rect2_8;
        v108.size.width = v93;
        v108.origin.y = v94;
        v108.size.height = rect;
        IsEmpty = CGRectIsEmpty(v108);
        v109.origin.x = rect2;
        v109.size.width = rect2_16;
        v109.origin.y = rect2_24;
        v109.size.height = v92;
        v27 = CGRectIsEmpty(v109);
        v28 = [(UITableView *)self _headerFooterPinningBehavior]- 1;
        if (IsEmpty)
        {
          goto LABEL_16;
        }

        v98 = 0;
        v97 = 0.0;
        [(UIView *)self bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [(UITableView *)self _contentInset];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;
        if ([(UITableView *)self allowsHeaderViewsToFloat])
        {
          v45 = [(UITableViewRowData *)self->_rowData floatingRectForHeaderInSection:v9 visibleRect:0 heightCanBeGuessed:&v98 outIsFloating:&v97 outVisibleRectDisplacement:v30 + v40, v32 + v38, v34 - (v40 + v44), v36 - (v38 + v42)];
          if (v98 == 1)
          {
            rect2_8 = v45;
            v93 = v47;
            v94 = v46;
            rect = v48;
          }
        }

        v110.origin.x = rect2_8;
        v110.size.width = v93;
        v110.origin.y = v94;
        v110.size.height = rect;
        if (CGRectIsEmpty(v110) || (v111.origin.y = v86, v111.origin.x = v87, v111.size.height = v84, v111.size.width = v85, v114.origin.x = rect2_8, v114.size.width = v93, v114.origin.y = v94, v114.size.height = rect, !CGRectIntersectsRect(v111, v114)))
        {
LABEL_16:
          v50 = 0;
        }

        else if (v16)
        {
          if (v28 <= 1 && (v98 & 1) != 0)
          {
            [(UITableView *)self _addContentSubview:v16 atBack:0];
          }

          IsKindOfUITableViewHeaderFooterView = _IsKindOfUITableViewHeaderFooterView(v16);
          if (IsKindOfUITableViewHeaderFooterView)
          {
            [v16 setFrame:{rect2_8, v94, v93, rect}];
            [v16 setMaxTitleWidth:{-[UITableViewRowData maxHeaderTitleWidthForSection:](self->_rowData, v9)}];
          }

          else
          {
            [(UITableView *)self _sectionContentInset];
            [v16 setFrame:{v79, v94, v93 - (v79 + v78), rect}];
          }

          v50 = 1;
          [(UITableView *)self _updateIsFloating:v98 withVisibleRectDisplacement:v16 forHeaderFooterView:IsKindOfUITableViewHeaderFooterView isStandardHeaderFooter:1 isHeader:v97];
        }

        else
        {
          if (v83)
          {
            v72 = [(UITableView *)self _sectionHeaderViewWithFrame:v9 forSection:v98 floating:1 visibleRectDisplacement:1 reuseViewIfPossible:rect2_8 willDisplay:v94, v93, rect, v97];
            if (v72)
            {
              [(UITableView *)self _addContentSubview:v72 atBack:0];
              v73 = v82;
              if (!v98)
              {
                v73 = (v28 < 2) | v82;
              }

              v82 = v73;
              recta = self->_visibleHeaderViews;
              v74 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
              [(NSMutableDictionary *)recta setObject:v72 forKey:v74];
            }
          }

          v50 = 1;
        }

        if (v16 && (v50 & 1) == 0)
        {
          [(UITableView *)self _reuseHeaderFooterView:v16 isHeader:1 forSection:v9];
        }

        if (v27)
        {
          goto LABEL_32;
        }

        v98 = 0;
        v97 = 0.0;
        [(UIView *)self bounds];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        [(UITableView *)self _contentInset];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;
        if ([(UITableView *)self allowsFooterViewsToFloat])
        {
          v67 = [(UITableViewRowData *)self->_rowData floatingRectForFooterInSection:v9 visibleRect:0 heightCanBeGuessed:&v98 outIsFloating:&v97 outVisibleRectDisplacement:v52 + v62, v54 + v60, v56 - (v62 + v66), v58 - (v60 + v64)];
          if (v98 == 1)
          {
            rect2 = v67;
            rect2_16 = v69;
            rect2_24 = v68;
            v92 = v70;
          }
        }

        v112.origin.x = rect2;
        v112.size.width = rect2_16;
        v112.origin.y = rect2_24;
        v112.size.height = v92;
        if (CGRectIsEmpty(v112) || (v113.origin.y = v86, v113.origin.x = v87, v113.size.height = v84, v113.size.width = v85, v115.origin.x = rect2, v115.size.width = rect2_16, v115.origin.y = rect2_24, v115.size.height = v92, !CGRectIntersectsRect(v113, v115)))
        {
LABEL_32:
          if (v19)
          {
            [(UITableView *)self _reuseHeaderFooterView:v19 isHeader:0 forSection:v9];
          }
        }

        else if (v19)
        {
          if (v28 <= 1 && (v98 & 1) != 0)
          {
            [(UITableView *)self _addContentSubview:v19 atBack:0];
          }

          v71 = _IsKindOfUITableViewHeaderFooterView(v19);
          if (v71)
          {
            [v19 setFrame:{rect2, rect2_24, rect2_16, v92}];
            [v19 setMaxTitleWidth:{-[UITableViewRowData maxFooterTitleWidthForSection:](self->_rowData, v9)}];
          }

          else
          {
            [(UITableView *)self _sectionContentInset];
            [v19 setFrame:{v81, rect2_24, rect2_16 - (v81 + v80), v92}];
          }

          [(UITableView *)self _updateIsFloating:v98 withVisibleRectDisplacement:v19 forHeaderFooterView:v71 isStandardHeaderFooter:0 isHeader:v97];
        }

        else if (v83)
        {
          v19 = [(UITableView *)self _sectionFooterViewWithFrame:v9 forSection:v98 floating:1 visibleRectDisplacement:1 reuseViewIfPossible:rect2 willDisplay:rect2_24, rect2_16, v92, v97];
          if (v19)
          {
            [(UITableView *)self _addContentSubview:v19 atBack:0];
            v75 = v82;
            if (!v98)
            {
              v75 = (v28 < 2) | v82;
            }

            v82 = v75;
            v76 = self->_visibleFooterViews;
            v77 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
            [(NSMutableDictionary *)v76 setObject:v19 forKey:v77];
          }
        }

        else
        {
          v19 = 0;
        }

        ++v9;
        --v11;
      }

      while (v11);
      if (v82)
      {
        [(UITableView *)self _updateVisibleHeadersAndFootersNow:0];
      }
    }

    [(UITableView *)self _updatePinnedTableHeader];
    _Block_object_dispose(&v102, 8);
  }
}

void __50__UITableView__updateVisibleHeadersAndFootersNow___block_invoke(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v14 integerValue];
  v7 = a1[5];
  v9 = v6 >= v7;
  v8 = v6 - v7;
  v9 = !v9 || v8 >= a1[6];
  if (v9)
  {
    v10 = *(*(a1[4] + 8) + 40);
    if (v10)
    {
      [v10 setObject:v5 forKey:v14];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v5, v14, 0}];
      v12 = *(a1[4] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

void __50__UITableView__updateVisibleHeadersAndFootersNow___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _reuseHeaderFooterView:v5 isHeader:1 forSection:{objc_msgSend(a2, "integerValue")}];
}

void __50__UITableView__updateVisibleHeadersAndFootersNow___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _reuseHeaderFooterView:v5 isHeader:0 forSection:{objc_msgSend(a2, "integerValue")}];
}

- (_UITableViewVisibleCellsUpdateRanges)_calculateVisibleCellsUpdateRangesForGlobalRowRange:(SEL)a3 createIfNecessary:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  *&retstr->var5 = 0;
  retstr->var3 = 0u;
  retstr->var1 = 0u;
  retstr->var2 = 0u;
  p_var2 = &retstr->var2;
  retstr->var4 = 0u;
  p_var4 = &retstr->var4;
  retstr->var0 = a4;
  p_length = &self[25].var3.length;
  v11 = self[25].var4.location;
  if (!v11)
  {
    if (a5)
    {
      v17 = 0;
      v14 = 0;
      *p_var4 = retstr->var0;
      v18 = retstr->var4.length;
    }

    else
    {
      length = 0;
      v17 = 0;
      v18 = 0;
      v14 = 0;
      retstr->var0.length = 0;
    }

    goto LABEL_38;
  }

  if (!a4.length)
  {
    v17 = 0;
    v18 = 0;
    v14 = 0;
    *p_var2 = *p_length;
    goto LABEL_38;
  }

  v12 = p_length->location;
  v13 = a4.location - v12;
  if (a4.location >= v12)
  {
    if (a4.location > v12)
    {
      if (v11 < v13)
      {
        v13 = self[25].var4.location;
      }

      retstr->var1.location = v12;
      retstr->var1.length = v13;
    }

    v15 = a4.location + a4.length;
    v16 = v12 + v11;
    if (a4.location + a4.length > v12 + v11)
    {
      if (a5)
      {
        v17 = 0;
        v14 = 0;
        goto LABEL_20;
      }

LABEL_30:
      v17 = 0;
      v18 = 0;
      v14 = 0;
      length = (v16 - location) & ~((v16 - location) >> 63);
      retstr->var0.length = length;
      goto LABEL_38;
    }

    v17 = 0;
    v14 = 0;
  }

  else
  {
    if (a5)
    {
      if (a4.length >= v12 - a4.location)
      {
        v14 = v12 - a4.location;
      }

      else
      {
        v14 = a4.length;
      }

      retstr->var3.location = a4.location;
      retstr->var3.length = v14;
      v15 = a4.location + a4.length;
      v16 = v12 + v11;
      v17 = a4.location;
      if (a4.location + a4.length <= v12 + v11)
      {
        v17 = a4.location;
        goto LABEL_33;
      }

LABEL_20:
      if (a4.location <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = a4.location;
      }

      v20 = v15 - v16;
      if (a4.length >= v20)
      {
        v18 = v20;
      }

      else
      {
        v18 = a4.length;
      }

      retstr->var4.location = v19;
      retstr->var4.length = v18;
      goto LABEL_38;
    }

    retstr->var0.location = v12;
    v15 = v12 + a4.length;
    v16 = v12 + v11;
    if (v12 + a4.length > v12 + v11)
    {
      location = v12;
      goto LABEL_30;
    }

    v17 = 0;
    v14 = 0;
    location = v12;
  }

LABEL_33:
  v18 = 0;
  v21 = v16 > v15;
  v22 = v16 - v15;
  if (v21)
  {
    if (v22 < v11)
    {
      v11 = v22;
    }

    retstr->var2.location = v15;
    retstr->var2.length = v11;
  }

LABEL_38:
  v23 = v14 - 1;
  if (v14 > 1 || v18 >= 2)
  {
    self = [(_UITableViewVisibleCellsUpdateRanges *)self _estimatesRowHeights];
    if (self)
    {
      self = dyld_program_sdk_at_least();
      if (self)
      {
        if (v14 >= 2)
        {
          retstr->var3.location = v23 + v17;
          retstr->var3.length = 1;
          length -= v23;
          retstr->var0.location = v23 + location;
          retstr->var0.length = length;
        }

        if (v18 >= 2)
        {
          retstr->var4.length = 1;
          retstr->var0.length = length - v18 + 1;
        }

        retstr->var5 = 1;
      }
    }
  }

  return self;
}

- (void)_updateVisibleCellsForRanges:(_UITableViewVisibleCellsUpdateRanges *)a3 createIfNecessary:(BOOL)a4
{
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 15) & 2) == 0)
  {
    v5 = a4;
    if ((a3->var2.length || a3->var1.length) && [(NSMutableArray *)self->_visibleCells count])
    {
      v8 = [(UITableView *)self _reorderingSupport];
      v9 = v8;
      if (v8)
      {
        v8 = v8[1];
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v24 = __62__UITableView__updateVisibleCellsForRanges_createIfNecessary___block_invoke;
      v25 = &unk_1E7123580;
      v26 = self;
      v10 = v8;
      v27 = v10;
      length = a3->var2.length;
      if (length)
      {
        __62__UITableView__updateVisibleCellsForRanges_createIfNecessary___block_invoke(v23, self->_visibleRows.length - length, length);
      }

      if (a3->var1.length)
      {
        (v24)(v23, 0);
      }
    }

    if (a3->var4.length)
    {
      if (!v5)
      {
        return;
      }
    }

    else if (!a3->var3.length || !v5)
    {
      return;
    }

    if (dyld_program_sdk_at_least())
    {
      [(UITableView *)self _beginSuspendingUpdates];
    }

    v12 = a3->var3.length;
    if (v12 && (*(p_tableFlags + 15) & 2) == 0)
    {
      v13 = a3->var3.location + v12 - 1;
      while (v13 >= a3->var3.location)
      {
        v14 = [(UITableView *)self indexPathForRowAtGlobalRow:v13];
        v15 = [(UITableView *)self _createPreparedCellForGlobalRow:v13 withIndexPath:v14 willDisplay:1];
        v16 = v15;
        if ((*(p_tableFlags + 15) & 2) != 0)
        {

          break;
        }

        [v15 _setIndexPath:v14];
        [(NSMutableArray *)self->_visibleCells insertObject:v16 atIndex:0];

        if (--v13 == -1)
        {
          break;
        }
      }
    }

    v17 = a3->var4.length;
    if (v17 && (*(p_tableFlags + 15) & 2) == 0)
    {
      location = a3->var4.location;
      for (i = location + v17; location < i; i = a3->var4.length + a3->var4.location)
      {
        v20 = [(UITableView *)self indexPathForRowAtGlobalRow:location];
        v21 = [(UITableView *)self _createPreparedCellForGlobalRow:location withIndexPath:v20 willDisplay:1];
        v22 = v21;
        if ((*(p_tableFlags + 15) & 2) != 0)
        {

          break;
        }

        [v21 _setIndexPath:v20];
        [(NSMutableArray *)self->_visibleCells addObject:v22];

        ++location;
      }
    }

    if (dyld_program_sdk_at_least())
    {
      [(UITableView *)self _endSuspendingUpdates];
    }
  }
}

uint64_t __62__UITableView__updateVisibleCellsForRanges_createIfNecessary___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a2 < a2 + a3)
  {
    v6 = a3;
    v7 = a2;
    do
    {
      v8 = [*(*(a1 + 32) + 2272) objectAtIndexedSubscript:{v7, v3}];
      if (v8 != *(a1 + 40))
      {
        v9 = v8;
        v10 = *(a1 + 32);
        if (*(v10 + 3190))
        {
          [(UITableViewRowData *)*(v10 + 2160) indexPathForRowAtGlobalRow:?];
        }

        else
        {
          [v8 _indexPath];
        }
        v11 = ;
        [v10 _reuseTableViewCell:v9 withIndexPath:v11 didEndDisplaying:1];
      }

      ++v7;
      --v6;
    }

    while (v6);
    v3 = a3;
  }

  v12 = *(*(a1 + 32) + 2272);

  return [v12 removeObjectsInRange:{a2, v3}];
}

- (void)_updateVisibleCellsNow:(BOOL)a3
{
  v3 = a3;
  v99 = *MEMORY[0x1E69E9840];
  p_tableFlags = &self->_tableFlags;
  v7 = *(&self->_tableFlags + 3);
  v8 = v7;
  if ((v7 & 0x8000000000) == 0)
  {
    if ([(UITableView *)self _isUpdating]|| self->_tableReloadingSuspendedCount > 0 || !self->_rowData)
    {
      return;
    }

    v8 = *(p_tableFlags + 3);
  }

  v81 = a2;
  *(p_tableFlags + 3) = v8 | 0x8000000000;
  [(UIScrollView *)self contentOffset];
  v86 = v10;
  v87 = v9;
  [(UIScrollView *)self contentSize];
  v12 = v11;
  if ((v7 & 0x8000000000) == 0)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &_updateVisibleCellsNow____s_category);
    if (*CategoryCachedImpl)
    {
      v74 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = v74;
        LODWORD(slice.origin.x) = 138412802;
        *(&slice.origin.x + 4) = objc_opt_class();
        WORD2(slice.origin.y) = 2048;
        *(&slice.origin.y + 6) = self;
        HIWORD(slice.size.width) = 2048;
        *&slice.size.height = v3;
        v76 = *(&slice.origin.x + 4);
        _os_log_impl(&dword_188A29000, v75, OS_LOG_TYPE_ERROR, "<%@ %p> _updateVisibleCellsNow:%ld starting", &slice, 0x20u);
      }
    }

    v14 = [(UIView *)self window];

    if (!v14)
    {
      UITableViewAlertForLayoutOutsideViewHierarchy(self);
    }

    [(UITableView *)self _updateShowScrollIndicatorsFlag];
    [(UITableView *)self _reapTentativeViews];
  }

  v85 = [(UIView *)self _focusSystem];
  [v85 _lockEnvironment:self];
  [(UITableView *)self _suspendReloads];
  v15 = (*(p_tableFlags + 15) & 2) == 0 && v3;
  v84 = v15;
  if (v15)
  {
    [(UITableView *)self _setNeedsVisibleCellsUpdate:0 withFrames:0];
  }

  [(UITableView *)self _applyCoalescedContentSizeUpdates];
  v16 = [(UITableViewRowData *)self->_rowData numberOfRows];
  [(UITableView *)self _contentInset];
  v18 = v17;
  [(UITableView *)self _visibleBounds];
  MinY = CGRectGetMinY(v103);
  p_visibleBounds = &self->_visibleBounds;
  v21 = CGRectGetMinY(self->_visibleBounds);
  if ((v7 & 0x8000000000) != 0)
  {
    [(UITableView *)self _visibleBounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
LABEL_27:
    location = [(UITableView *)self _visibleGlobalRowsInRect:v23, v25, v27, v29];
    goto LABEL_28;
  }

  v30 = v21;
  if ((*(p_tableFlags + 25) & 2) != 0)
  {
    [(UITableView *)self _ensurePreReloadVisibleRowRangeIsValidWithPostReloadRowCount:v16];
    [(UIScrollView *)self contentOffset];
    v32 = v31;
    [(UITableView *)self _contentOffsetYForRestoringScrollPositionOfFirstVisibleRowWithContentInsetTop:0 canGuessHeights:v18];
    [(UITableView *)self setContentOffset:v32, v33];
  }

  [(UITableView *)self _visibleBounds];
  v23 = v34;
  v25 = v35;
  v27 = v36;
  v29 = v37;
  if (MinY >= v30 || ![(UITableView *)self _estimatesHeights])
  {
    goto LABEL_27;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v104.origin.x = p_visibleBounds->origin.x;
  v104.origin.y = self->_visibleBounds.origin.y;
  v104.size.width = self->_visibleBounds.size.width;
  v104.size.height = self->_visibleBounds.size.height;
  v38 = CGRectGetMinY(v104);
  v105.origin.x = v23;
  v105.origin.y = v25;
  v105.size.width = v27;
  v105.size.height = v29;
  v39 = v38 - CGRectGetMinY(v105);
  v106.origin.x = v23;
  v106.origin.y = v25;
  v106.size.width = v27;
  v106.size.height = v29;
  CGRectDivide(v106, &slice, &remainder, v39, CGRectMinYEdge);
  [(UIScrollView *)self contentSize];
  v41 = v40;
  v42 = [(UITableView *)self _visibleGlobalRowsInRect:0 canGuess:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  v44 = v43;
  [(UITableView *)self _applyCoalescedContentSizeUpdates];
  [(UIScrollView *)self contentSize];
  if (v45 - v41 != 0.0)
  {
    [(UIScrollView *)self contentOffset];
    [(UITableView *)self setContentOffset:?];
  }

  v47 = [(UITableView *)self _visibleGlobalRowsInRect:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
  v48 = v46;
  if (!v44)
  {
    goto LABEL_29;
  }

  if (!v46)
  {
    v48 = v44;
    v47 = v42;
    goto LABEL_29;
  }

  v100.location = v42;
  v100.length = v44;
  v102.location = v47;
  v102.length = v48;
  v51 = NSUnionRange(v100, v102);
  length = v51.length;
  location = v51.location;
LABEL_28:
  v47 = location;
  v48 = length;
LABEL_29:
  focusedViewType = self->_focusedViewType;
  v88 = v7;
  if ((*(p_tableFlags + 26) & 2) != 0)
  {
    v82 = self->_focusedCell;
    focusedCell = self->_focusedCell;
    self->_focusedCell = 0;

    if (![(UITableView *)self remembersLastFocusedIndexPath]|| !self->_focusedCellIndexPath || self->_focusedViewType != 1)
    {
      self->_focusedViewType = 0;
    }
  }

  else
  {
    v82 = 0;
  }

  do
  {
    [(UITableView *)self _calculateVisibleCellsUpdateRangesForGlobalRowRange:v47 createIfNecessary:v48, v3];
    x = slice.origin.x;
    y = slice.origin.y;
    remainder.origin = slice.size;
    remainder.size = size;
    v91 = v95;
    v92 = v96;
    *v89 = v98[0];
    *&v89[3] = *(v98 + 3);
    v55 = v97;
    if (*&slice.origin.y + *&slice.origin.x > v16)
    {
      v80 = [MEMORY[0x1E696AAA8] currentHandler];
      *&v101.location = x;
      *&v101.length = y;
      v79 = NSStringFromRange(v101);
      [v80 handleFailureInMethod:v81 object:self file:@"UITableView.m" lineNumber:3265 description:{@"UITableView is trying to layout cells with a global row range of %@ when there are only %ld rows - this is a UIKit bug", v79, v16}];
    }

    slice.origin.x = x;
    slice.origin.y = y;
    slice.size = remainder.origin;
    size = remainder.size;
    v95 = v91;
    v96 = v92;
    v97 = v55;
    v98[0] = *v89;
    *(v98 + 3) = *&v89[3];
    [(UITableView *)self _updateVisibleCellsForRanges:&slice createIfNecessary:v3];
    if ((*(p_tableFlags + 15) & 2) != 0)
    {
      break;
    }

    *&self->_visibleRows.location = x;
    *&self->_visibleRows.length = y;
    [(UITableView *)self _visibleBounds];
    p_visibleBounds->origin.x = v56;
    self->_visibleBounds.origin.y = v57;
    self->_visibleBounds.size.width = v58;
    self->_visibleBounds.size.height = v59;
    if ((v55 & 1) == 0)
    {
      break;
    }

    [(UITableView *)self _visibleBounds];
    v29 = v60;
    v47 = [(UITableView *)self _visibleGlobalRowsInRect:?];
    v48 = v61;
  }

  while ((*(p_tableFlags + 15) & 2) == 0);
  [(UITableView *)self _updateTableHeadersAndFootersNow:v3];
  [(UITableView *)self _updateVisibleHeadersAndFootersNow:v3];
  [(UITableView *)self _updateIndex];
  v62 = *(p_tableFlags + 1);
  if ((v62 & 0x200000000000000) != 0)
  {
    [(UITableView *)self performSelector:sel__resumeReloads withObject:0 afterDelay:0.0];
    self->_visibleRows.location = 0;
    self->_visibleRows.length = 0;
    v64 = v88;
  }

  else
  {
    v63 = *(p_tableFlags + 2);
    v64 = v88;
    if (v63)
    {
      *(p_tableFlags + 2) = v63 & 0xFFFFFFFFFFFFFFFELL;
      if (dyld_program_sdk_at_least())
      {
        v65 = self->_visibleRows.length;
        if (v65 != [(NSMutableArray *)self->_visibleCells count])
        {
          v77 = [MEMORY[0x1E696AAA8] currentHandler];
          v78 = NSStringFromRange(self->_visibleRows);
          [v77 handleFailureInMethod:v81 object:self file:@"UITableView.m" lineNumber:3294 description:{@"UITableView internal inconsistency: _visibleRows and _visibleCells must be of same length. _visibleRows: %@; _visibleCells.count: %ld, _visibleCells: %@", v78, -[NSMutableArray count](self->_visibleCells, "count"), self->_visibleCells}];
        }

        [(UITableView *)self _beginSuspendingUpdates];
      }

      if (self->_visibleRows.length)
      {
        v66 = 0;
        do
        {
          v67 = [(NSMutableArray *)self->_visibleCells objectAtIndexedSubscript:v66];
          v68 = v67;
          reorderingSupport = self->_reorderingSupport;
          if (!reorderingSupport || v67 != reorderingSupport->_reorderedCell)
          {
            [(UITableViewCell *)v67 setFrame:[(UITableViewRowData *)&self->_rowData->super.isa rectForGlobalRow:0 heightCanBeGuessed:?]];
            [(UITableViewCell *)v68 _setNeedsHeightCalculation:0];
          }

          if ((*(p_tableFlags + 15) & 2) != 0)
          {
            break;
          }

          ++v66;
        }

        while (v66 < self->_visibleRows.length);
      }

      if (dyld_program_sdk_at_least())
      {
        [(UITableView *)self _endSuspendingUpdates];
      }

      [(UISwipeActionController *)self->_swipeActionController updateLayout];
      v62 = *(p_tableFlags + 1);
      v64 = v88;
    }

    if ((v62 & 0x7000000000000) != 0)
    {
      [(UIScrollView *)self contentSize];
      if (v16)
      {
        if (v70 < v29)
        {
          v71 = self->_visibleRows.length;
          if (v71)
          {
            if ((self->_visibleRows.location + v71) == v16)
            {
              v72 = [(NSMutableArray *)self->_visibleCells objectAtIndexedSubscript:v71 - 1];
              [v72 setSeparatorStyle:*(p_tableFlags + 7) & 7];
            }
          }
        }
      }
    }

    [(UITableView *)self _resumeReloads];
  }

  [(UITableView *)self _applyCoalescedContentSizeUpdates];
  [(UITableView *)self _restoreOrAdjustContentOffsetWithRowCount:v16 initialContentInsetTop:v18];
  v73 = !v84;
  if ((*(p_tableFlags + 15) & 0x40) == 0)
  {
    v73 = 1;
  }

  if ((v73 & 1) == 0)
  {
    [(UITableView *)self _updateVisibleCellsNow:1];
  }

  [v85 _unlockEnvironment:self];
  [(UITableView *)self _endUpdatingVisibleCells:(v64 >> 39) & 1 originalContentOffset:v82 originalContentHeight:focusedViewType focusedView:v87 focusedViewType:v86, v12];
}

- (void)_endUpdatingVisibleCells:(BOOL)a3 originalContentOffset:(CGPoint)a4 originalContentHeight:(double)a5 focusedView:(id)a6 focusedViewType:(int)a7
{
  v7 = *&a7;
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v51 = *MEMORY[0x1E69E9840];
  v13 = a6;
  p_tableFlags = &self->_tableFlags;
  v15 = 0x8000000000;
  if (!v11)
  {
    v15 = 0;
  }

  v16 = *(&self->_tableFlags + 3) & 0xFFFFFF7FFFFFFFFFLL | v15;
  *(&self->_tableFlags + 3) = v16;
  if (!v11)
  {
    *(&self->_tableFlags + 3) = v16 & 0xFFFFFFFFFFFFF9FFLL;
    [(UITableView *)self _updateFocusAfterLoadingCellsWithFocusedView:v13 viewType:v7];
    [(UITableView *)self _reapTentativeViews];
    if ((*(&self->_tableFlags + 22) & 1) == 0)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v17 = self->_visibleCells;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v41;
        do
        {
          v21 = 0;
          do
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v40 + 1) + 8 * v21++) _setIndexPath:{0, v40}];
          }

          while (v19 != v21);
          v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v40 objects:v50 count:16];
        }

        while (v19);
      }

      *(&self->_tableFlags + 2) |= 0x1000000000000uLL;
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v23 = *(&self->_tableFlags + 1);
    if (has_internal_diagnostics)
    {
      if ((v23 & 0x200000000000000) != 0)
      {
        goto LABEL_16;
      }

      length = self->_visibleRows.length;
      if (length == [(NSMutableArray *)self->_visibleCells count])
      {
        goto LABEL_16;
      }

      v31 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v32 = NSStringFromRange(self->_visibleRows);
      v33 = [(NSMutableArray *)self->_visibleCells count];
      visibleCells = self->_visibleCells;
      *buf = 138412802;
      v45 = v32;
      v46 = 2048;
      v47 = v33;
      v48 = 2112;
      v49 = visibleCells;
      _os_log_fault_impl(&dword_188A29000, v31, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: _visibleRows and _visibleCells must be of same length. _visibleRows: %@; _visibleCells.count: %ld, _visibleCells: %@", buf, 0x20u);
    }

    else
    {
      if ((v23 & 0x200000000000000) != 0)
      {
        goto LABEL_16;
      }

      v24 = self->_visibleRows.length;
      if (v24 == [(NSMutableArray *)self->_visibleCells count])
      {
        goto LABEL_16;
      }

      v35 = *(__UILogGetCategoryCachedImpl("Assert", &_endUpdatingVisibleCells_originalContentOffset_originalContentHeight_focusedView_focusedViewType____s_category) + 8);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      location = self->_visibleRows.location;
      v37 = self->_visibleRows.length;
      v31 = v35;
      v52.location = location;
      v52.length = v37;
      p_tableFlags = &self->_tableFlags;
      v32 = NSStringFromRange(v52);
      v38 = [(NSMutableArray *)self->_visibleCells count];
      v39 = self->_visibleCells;
      *buf = 138412802;
      v45 = v32;
      v46 = 2048;
      v47 = v38;
      v48 = 2112;
      v49 = v39;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: _visibleRows and _visibleCells must be of same length. _visibleRows: %@; _visibleCells.count: %ld, _visibleCells: %@", buf, 0x20u);
    }

LABEL_34:
LABEL_16:
    [(UIScrollView *)self contentOffset];
    if (x == v26 && y == v25)
    {
      [(UIScrollView *)self contentSize];
      if (v27 != a5)
      {
        [(UITableView *)self _sendGeometryAffectingContentBottomChangedToScrollObservers];
      }
    }

    else
    {
      [(UITableView *)self _notifyDidScroll];
    }

    v28 = *(p_tableFlags + 3);
    if ((v28 & 0x10000000000) != 0)
    {
      *(p_tableFlags + 3) = v28 & 0xFFFFFEFFFFFFFFFFLL;
      [(UITableView *)self _scrollFirstResponderCellToVisible:1];
    }

    if ((*(p_tableFlags + 20) & 8) != 0 && (*(p_tableFlags + 7) & 0x20) != 0)
    {
      v29 = [(UITableView *)self _delegateProxy];
      [v29 tableViewDidFinishReload:self];

      *(p_tableFlags + 2) &= ~0x800000000uLL;
    }
  }
}

- (void)_updateFocusAfterLoadingCellsWithFocusedView:(id)a3 viewType:(int)a4
{
  v6 = a3;
  v7 = v6;
  v8 = *(&self->_tableFlags + 3);
  if ((v8 & 0x20000) != 0)
  {
    *(&self->_tableFlags + 3) = v8 & 0xFFFFFFFFFFFDFFFFLL;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__UITableView__updateFocusAfterLoadingCellsWithFocusedView_viewType___block_invoke;
    v9[3] = &unk_1E70F79E8;
    v9[4] = self;
    v10 = v6;
    v11 = a4;
    [UIView performWithoutAnimation:v9];
  }
}

void __69__UITableView__updateFocusAfterLoadingCellsWithFocusedView_viewType___block_invoke(uint64_t a1)
{
  v7 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:*(a1 + 32)];
  [(_UIFocusUpdateRequest *)v7 setAllowsFocusingCurrentItem:1];
  [(_UIFocusUpdateRequest *)v7 setScrollIfNecessary:(*(*(a1 + 32) + 3192) >> 18) & 1];
  v2 = [*(a1 + 32) _focusSystem];
  [v2 _requestFocusUpdate:v7];
  [v2 updateFocusIfNeeded];
  v3 = *(a1 + 40);
  if (v3 && [*(a1 + 32) _shouldReusePreviouslyFocusedTableViewSubview:v3 viewType:*(a1 + 48)])
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v4 == 1)
    {
      [v5 _reuseTableViewCell:v6 withIndexPath:0 didEndDisplaying:0];
    }

    else
    {
      [v5 _reuseHeaderFooterView:v6 isHeader:v4 == 2 forSection:0x7FFFFFFFFFFFFFFFLL];
    }
  }
}

- (_NSRange)_sectionsInRect:(CGRect)a3
{
  v3 = [(UITableViewRowData *)self->_rowData sectionsInRect:a3.origin.y, a3.size.width, a3.size.height];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_visibleGlobalRowsInRect:(CGRect)a3
{
  v3 = [(UITableView *)self _visibleGlobalRowsInRect:1 canGuess:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_visibleGlobalRowsInRect:(CGRect)a3 canGuess:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UITableView *)self _visibleBounds];
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v12;
  v20.size.height = v13;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = CGRectIntersection(v18, v20);
  p_isa = &self->_rowData->super.isa;
  if (p_isa)
  {

    p_isa = [(UITableViewRowData *)p_isa globalRowsInRect:a4 canGuess:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
  }

  else
  {
    v15 = 0;
  }

  result.length = v15;
  result.location = p_isa;
  return result;
}

- (BOOL)_shouldDisplayExtraSeparatorsAtOffset:(double *)a3
{
  v13 = *(&self->_tableFlags + 1);
  v14 = v13 & 0x7000000000000;
  v15 = v13 & 0x600000000000;
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    return 0;
  }

  v28 = v11;
  v29 = v6;
  v30 = v5;
  v31 = v4;
  v32 = v3;
  v20 = [(UITableViewRowData *)self->_rowData heightForTable];
  [(UIView *)self bounds];
  if (v20 >= v21 || self->_tableFooterView)
  {
    return 0;
  }

  v22 = [(UITableViewRowData *)self->_rowData numberOfRows];
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:?];
    v24 = [v23 section];
  }

  rowData = self->_rowData;
  if (rowData)
  {
    numSections = rowData->_numSections;
  }

  else
  {
    numSections = 0;
  }

  if (v24 < numSections)
  {
    do
    {
      v33.origin.x = [(UITableViewRowData *)self->_rowData rectForFooterInSection:v24 heightCanBeGuessed:1];
      if (CGRectGetHeight(v33) > 0.0)
      {
        return 0;
      }
    }

    while (numSections != ++v24);
  }

  [(UITableView *)self _clientRequestedFillerRowHeight:v12];
  result = v27 != 0.0;
  if (a3)
  {
    if (v27 != 0.0)
    {
      v34.origin.x = [(UITableViewRowData *)self->_rowData rectForTableFooterView];
      *a3 = CGRectGetMaxY(v34);
      return 1;
    }
  }

  return result;
}

- (void)_addContentSubview:(id)a3 atBack:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    IsKindOfUITableViewCell = _IsKindOfUITableViewCell(v7);
    v10 = IsKindOfUITableViewCell;
    if (!IsKindOfUITableViewCell || ([(UITableViewWrapperView *)v8 _containerView], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v12 = self->_viewBeingPreparedToDisplay;
      objc_storeStrong(&self->_viewBeingPreparedToDisplay, a3);
      reorderingSupport = self->_reorderingSupport;
      if (reorderingSupport)
      {
        reorderingSupport = reorderingSupport->_reorderedCell;
      }

      v14 = reorderingSupport;
      if (*(&self->_tableFlags + 23) & 0x20) != 0 && ((v10 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
      {
        if (v4)
        {
          wrapperView = self->_wrapperView;
          v16 = [(UITableViewWrapperView *)wrapperView stuckToBackViews];
          -[UIView insertSubview:atIndex:](wrapperView, "insertSubview:atIndex:", v8, [v16 count]);
        }

        else
        {
          v17 = self->_wrapperView;
          if (v14)
          {
            [(UIView *)v17 insertSubview:v8 belowSubview:v14];
          }

          else
          {
            [(UIView *)v17 addSubview:v8];
          }
        }
      }

      else
      {
        v21.receiver = self;
        v21.super_class = UITableView;
        [(UIScrollView *)&v21 _addContentSubview:v8 atBack:v4];
        if (v14)
        {
          if ((*(&self->_tableFlags + 23) & 0x20) != 0)
          {
            [(UITableViewWrapperView *)self->_wrapperView bringSubviewToFront:v14];
          }

          else
          {
            v20.receiver = self;
            v20.super_class = UITableView;
            [(UIScrollView *)&v20 _addContentSubview:v14 atBack:0];
          }
        }
      }

      if (self->_wrapperView != v8)
      {
        *(&self->_tableFlags + 2) |= 0x4000000000000000uLL;
      }

      viewBeingPreparedToDisplay = self->_viewBeingPreparedToDisplay;
      self->_viewBeingPreparedToDisplay = v12;
      v19 = v12;
    }
  }
}

- (void)bringSubviewToFront:(id)a3
{
  v4 = _UITableViewSubviewToMoveForView(a3);
  v5.receiver = self;
  v5.super_class = UITableView;
  [(UIView *)&v5 bringSubviewToFront:v4];
}

- (void)sendSubviewToBack:(id)a3
{
  v4 = _UITableViewSubviewToMoveForView(a3);
  v5.receiver = self;
  v5.super_class = UITableView;
  [(UIView *)&v5 sendSubviewToBack:v4];
}

- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5
{
  v8 = a5;
  v9 = _UITableViewSubviewToMoveForView(a3);
  v10.receiver = self;
  v10.super_class = UITableView;
  [(UIView *)&v10 _addSubview:v9 positioned:a4 relativeTo:v8];
}

- (BOOL)_shouldIncludeRowInMultipleSelectionGroupWithCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7 && ((-[NSMutableArray containsObject:](self->_selectedIndexPaths, "containsObject:", v7) & 1) != 0 || -[NSMutableArray containsObject:](self->_highlightedIndexPaths, "containsObject:", v7)) && (!v6 || [v6 _usingBackgroundViewConfiguration] && (objc_msgSend(v6, "_backgroundIsVerticallyInset") & 1) == 0 && objc_msgSend(v6, "_backgroundFillIsCustomized"));

  return v8;
}

- (void)_updateSelectionGroupingForCell:(id)a3 atIndexPath:(id)a4
{
  v44 = a3;
  v6 = a4;
  if ([(UITableView *)self _allowsEffectiveMultipleSelection]&& [(UITableView *)self _shouldIncludeRowInMultipleSelectionGroupWithCell:v44 atIndexPath:v6])
  {
    v7 = [(UITableView *)self globalRowForRowAtIndexPath:v6];
    v8 = v7;
    v9 = (*(&self->_tableFlags + 28) & 0x80) == 0 && self->_indexPathBeingCreated == 0;
    v10 = [(UITableView *)self indexPathForRowAtGlobalRow:v7 + 1];
    v11 = v10;
    v12 = 0;
    if (v9 && v10)
    {
      v12 = [(UITableView *)self _cellForRowAtIndexPath:v10 usingPresentationValues:1];
    }

    v13 = [(UITableView *)self _shouldIncludeRowInMultipleSelectionGroupWithCell:v12 atIndexPath:v11];
    v14 = [(UITableView *)self indexPathForRowAtGlobalRow:v8 - 1];
    if (v14)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = [(UITableView *)self _cellForRowAtIndexPath:v14 usingPresentationValues:1];
    }

    else
    {
      v16 = 0;
    }

    v17 = [(UITableView *)self _shouldIncludeRowInMultipleSelectionGroupWithCell:v16 atIndexPath:v14];
    if (v13 || v17)
    {
      v18 = v17;
      [(UITableView *)self _rectForRowAtIndexPath:v6 canGuess:1];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(UIView *)self _currentScreenScale];
      v28 = 1.0 / v27;
      if (v13)
      {
        [(UITableView *)self _rectForRowAtIndexPath:v11 canGuess:1];
        MinY = CGRectGetMinY(v46);
        v47.origin.x = v20;
        v47.origin.y = v22;
        v47.size.width = v24;
        v47.size.height = v26;
        v13 = MinY - CGRectGetMaxY(v47) < v28;
      }

      if (v18)
      {
        [(UITableView *)self _rectForRowAtIndexPath:v14 canGuess:1];
        v31 = v30;
        v32 = v22;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v48.origin.x = v20;
        v48.origin.y = v32;
        v48.size.width = v24;
        v48.size.height = v26;
        v39 = CGRectGetMinY(v48);
        v49.origin.x = v31;
        v49.origin.y = v34;
        v49.size.width = v36;
        v49.size.height = v38;
        v40 = v39 - CGRectGetMaxY(v49);
        if (v13 && v40 < v28)
        {
          v41 = 1;
        }

        else
        {
          v41 = 3;
        }

        if (v13)
        {
          v42 = 2;
        }

        else
        {
          v42 = 4;
        }

        if (v40 >= v28)
        {
          v43 = v42;
        }

        else
        {
          v43 = v41;
        }
      }

      else if (v13)
      {
        v43 = 2;
      }

      else
      {
        v43 = 4;
      }
    }

    else
    {
      v43 = 4;
    }

    [v44 _setSelectionGrouping:v43];
  }

  else
  {
    [v44 _setSelectionGrouping:4];
  }
}

- (void)_cellDidShowSelectedBackground:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITableView *)self _cellContainerView];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_visibleCells containsObject:v12])
        {
          v13 = v12;

          v9 = v13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);

    if (v9 && v9 != v4)
    {
      [v5 insertSubview:v4 aboveSubview:v9];
    }
  }

  else
  {

    v9 = 0;
  }

  if (([v4 _isMultiselecting] & 1) == 0 && objc_msgSend(v4, "selectionStyle"))
  {
    v14 = [(UITableView *)self _indexPathForCell:v4 usingPresentationValues:1];
    if (v14)
    {
      v15 = [(UITableViewRowData *)self->_rowData globalRowForRowAtIndexPath:v14];
      v16 = v15 - 1;
      if (v15 >= 1)
      {
        v30.origin.x = [(UITableViewRowData *)&self->_rowData->super.isa rectForGlobalRow:v16 heightCanBeGuessed:1];
        CGRectGetMaxY(v30);
        v17 = [(UIView *)self _screen];
        UIRoundToScreenScale(v17);
        v19 = v18;
        [v4 frame];
        CGRectGetMinY(v31);
        v20 = [(UIView *)self _screen];
        UIRoundToScreenScale(v20);
        v22 = v21;

        if (v19 == v22)
        {
          v23 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:v16];
          [(UITableView *)self _hideSeparatorForRowAtIndexPath:v23];
        }
      }
    }
  }

  [(UITableView *)self _updateSelectionGroupingForVisibleCells];
}

- (void)_cellDidHideSelectedBackground:(id)a3
{
  v4 = [(UITableView *)self _indexPathForCell:a3 usingPresentationValues:1];
  [(UITableView *)self _showSeparatorForRowBeforeIndexPath:v4];

  [(UITableView *)self _updateSelectionGroupingForVisibleCells];
}

- (void)_hideSeparatorForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    hiddenSeparatorIndexPaths = self->_hiddenSeparatorIndexPaths;
    v9 = v4;
    if (!hiddenSeparatorIndexPaths)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_hiddenSeparatorIndexPaths;
      self->_hiddenSeparatorIndexPaths = v6;

      v4 = v9;
      hiddenSeparatorIndexPaths = self->_hiddenSeparatorIndexPaths;
    }

    if (([(NSMutableSet *)hiddenSeparatorIndexPaths containsObject:v4]& 1) == 0)
    {
      [(NSMutableSet *)self->_hiddenSeparatorIndexPaths addObject:v9];
    }

    v8 = [(UITableView *)self _existingCellForRowAtIndexPath:v9];
    [v8 _setSeparatorHidden:1];

    v4 = v9;
  }
}

- (void)_showSeparatorForRowBeforeIndexPath:(id)a3
{
  v4 = [(UITableViewRowData *)self->_rowData globalRowForRowAtIndexPath:a3];
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = v4;
    v15.origin.x = [(UITableViewRowData *)&self->_rowData->super.isa rectForGlobalRow:v5 heightCanBeGuessed:1];
    CGRectGetMaxY(v15);
    v7 = [(UIView *)self _screen];
    UIRoundToScreenScale(v7);
    v9 = v8;
    v16.origin.x = [(UITableViewRowData *)&self->_rowData->super.isa rectForGlobalRow:v6 heightCanBeGuessed:1];
    CGRectGetMinY(v16);
    v10 = [(UIView *)self _screen];
    UIRoundToScreenScale(v10);
    v12 = v11;

    if (v9 == v12)
    {
      v13 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:v5];
      [(UITableView *)self _showSeparatorForRowAtIndexPath:v13];
    }
  }
}

- (void)_showSeparatorForRowAtIndexPath:(id)a3
{
  if (a3)
  {
    hiddenSeparatorIndexPaths = self->_hiddenSeparatorIndexPaths;
    v5 = a3;
    [(NSMutableSet *)hiddenSeparatorIndexPaths removeObject:v5];
    v6 = [(UITableView *)self _existingCellForRowAtIndexPath:v5];

    [v6 _setSeparatorHidden:0];
  }
}

- (id)_tableViewCellForContentView:(id)a3
{
  v3 = a3;
  if (v3)
  {
    do
    {
      if (_IsKindOfUITableViewCell(v3))
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
    }

    while (v4);
  }

  return v3;
}

- (int64_t)_editingStyleForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && ((v5 = *(&self->_tableFlags + 2), (v5 & 0x8000) == 0) || (v5 & 0x8000000000000) != 0 || (*(&self->_tableFlags + 1) & 0x40000000000000) == 0))
  {
    if ((*(&self->_tableFlags + 2) & 4) != 0)
    {
      v7 = [(UITableView *)self _delegateProxy];
      v6 = [v7 tableView:self editingStyleForRowAtIndexPath:v4];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ((*(&self->_tableFlags + 2) & 8) != 0)
    {
      v6 = [(UITableView *)self _delegateProxy];
      v5 = [v6 tableView:self titleForDeleteConfirmationButtonForRowAtIndexPath:v4];
    }

    else
    {
      v5 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_titleForSwipeAccessoryButtonForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && (*(&self->_tableFlags + 9) & 0x40) != 0)
  {
    v6 = [(UITableView *)self _delegateProxy];
    v5 = [v6 tableView:self titleForSwipeAccessoryButtonForRowAtIndexPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_backgroundColorForDeleteConfirmationButtonForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ((*(&self->_tableFlags + 9) & 0x80) == 0 || (-[UITableView _delegateProxy](self, "_delegateProxy"), v5 = objc_claimAutoreleasedReturnValue(), [v5 tableView:self backgroundColorForDeleteConfirmationButtonForRowAtIndexPath:v4], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
    {
      v6 = +[UIColor systemRedColor];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_backgroundColorForSwipeAccessoryButtonForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ((*(&self->_tableFlags + 10) & 1) == 0 || (-[UITableView _delegateProxy](self, "_delegateProxy"), v5 = objc_claimAutoreleasedReturnValue(), [v5 tableView:self backgroundColorForSwipeAccessoryButtonForRowAtIndexPath:v4], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
    {
      v6 = [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldIndentWhileEditingForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ((*(&self->_tableFlags + 3) & 2) != 0)
    {
      v6 = [(UITableView *)self _delegateProxy];
      v5 = [v6 tableView:self shouldIndentWhileEditingRowAtIndexPath:v4];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_accessoryTypeForCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ((*(&self->_tableFlags + 5) & 0x10) != 0)
    {
      v9 = [(UITableView *)self _delegateProxy];
      v8 = [v9 tableView:self accessoryTypeForRowWithIndexPath:v7];
    }

    else
    {
      v8 = [v6 accessoryType];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_canMoveRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && (tableFlags = self->_tableFlags, (tableFlags & 0x4000000) != 0))
  {
    if ((tableFlags & 0x800) != 0)
    {
      v8 = [(UITableView *)self _dataSourceProxy];
      v6 = [v8 tableView:self canMoveRowAtIndexPath:v4];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setupSectionView:(id)a3 isHeader:(BOOL)a4 forSection:(int64_t)a5
{
  v6 = a4;
  v12 = a3;
  [v12 setTableViewStyle:{-[UITableView _tableStyle](self, "_tableStyle")}];
  v8 = [(UITableView *)self _constants];
  [v12 _setConstants:v8];

  v9 = [(UITableView *)self _metricsAdapter];
  [v12 _setMetricsAdapter:v9];

  [v12 setTableView:self];
  [v12 setSectionHeader:v6];
  [(UITableView *)self _headerFooterLeadingMarginWidthIsHeader:v6 isFirstSection:a5 == 0];
  [v12 _setMarginWidth:?];
  [(UITableView *)self _headerFooterTrailingMarginWidth];
  [v12 _setRightMarginWidth:?];
  [v12 _setInsetsContentViewsToSafeArea:{-[UITableView insetsContentViewsToSafeArea](self, "insetsContentViewsToSafeArea")}];
  [v12 _setAutomaticIntrinsicContentSizeInvalidationEnabled:(*(&self->_tableFlags + 3) & 0xC00000000000) == 0x800000000000];
  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    rowData = self->_rowData;
    if (v6)
    {
      [v12 setMaxTitleWidth:{-[UITableViewRowData maxHeaderTitleWidthForSection:](rowData, a5)}];
      v11 = [(UITableViewRowData *)self->_rowData headerAlignmentForSection:a5];
    }

    else
    {
      [v12 setMaxTitleWidth:{-[UITableViewRowData maxFooterTitleWidthForSection:](rowData, a5)}];
      v11 = [(UITableViewRowData *)self->_rowData footerAlignmentForSection:a5];
    }

    [v12 setTextAlignment:v11];
  }

  [v12 _setupLabelAppearance];
}

- (id)_newSectionViewWithFrame:(CGRect)a3 forSection:(int64_t)a4 isHeader:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = @"__UITableViewFooterDefaultReuseIdentifier";
  if (a5)
  {
    v12 = @"__UITableViewHeaderDefaultReuseIdentifier";
  }

  v13 = v12;
  v14 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:v13];

  [(UITableViewHeaderFooterView *)v14 setFrame:x, y, width, height];
  [(UIView *)v14 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
  [(UITableView *)self _setupSectionView:v14 isHeader:v5 forSection:a4];
  return v14;
}

- (void)_reuseTableViewSubview:(id)a3 viewType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = v6;
  if (self->_firstResponderView != v6 && self->_focusedCell != v6)
  {
    v19 = v6;
    if (v4 == 1 && ([(_UITableViewSubviewManager *)&self->_subviewManager->super.isa indexPathForPrefetchedCell:v6], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 = v19, v8))
    {
      [(UIView *)v19 _setHiddenForReuse:1];
    }

    else
    {
      v9 = [(UIView *)v7 reuseIdentifier];
      if (v9)
      {
        v10 = [(UITableView *)self _cellReuseMapForType:v4];
        v11 = [v10 objectForKey:v9];
        v12 = v11;
        if (!v11 || ([v11 containsObject:v19] & 1) == 0)
        {
          [(UIView *)self bounds];
          rowData = self->_rowData;
          if (rowData)
          {
            minimumRowHeight = rowData->_minimumRowHeight;
          }

          else
          {
            minimumRowHeight = 0.0;
          }

          v16 = (ceil(v13 / fmax(fmin(minimumRowHeight, v13), 10.0)) + 1.0);
          if (!v12)
          {
            v12 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v16];
            [v10 setObject:v12 forKey:v9];
          }

          if ([v12 count] < v16)
          {
            [v12 addObject:v19];
          }
        }

        v17 = [v12 containsObject:v19];
      }

      else
      {
        v17 = 0;
      }

      if (v4 == 1)
      {
        v18 = v19;
        [(UIView *)v18 _setIndexPath:0];
        [(UIView *)v18 _willEnterReusePool];
      }

      if (v17)
      {
        [(UIView *)v19 _setHiddenForReuse:1];
      }

      else
      {
        [(UIView *)v19 removeFromSuperview];
      }

      [(UITableViewWrapperView *)self->_wrapperView _unstickView:v19];
    }

    v7 = v19;
  }
}

- (void)_reusePrefetchedCell:(id)a3 withIndexPath:(id)a4
{
  if (([(NSMutableArray *)self->_visibleCells containsObject:?]& 1) == 0)
  {

    [(UITableView *)self _reuseTableViewCell:a3 withIndexPath:a4 didEndDisplaying:0];
  }
}

- (void)_reuseTableViewCell:(id)a3 withIndexPath:(id)a4 didEndDisplaying:(BOOL)a5
{
  if (self->_firstResponderView != a3 && self->_focusedCell != a3)
  {
    v6 = a5;
    v8 = a3;
    v11 = v8;
    if (a4)
    {
      v9 = [(NSMutableDictionary *)self->_tentativeCells objectForKey:a4];

      v8 = v11;
      if (v9 == v11)
      {
        [(NSMutableDictionary *)self->_tentativeCells removeObjectForKey:a4];
        v8 = v11;
      }
    }

    if ([(_UITableViewSubviewManager *)self->_subviewManager shouldDeferReuseOfCell:v8])
    {
      [(_UITableViewSubviewManager *)self->_subviewManager cellReadyForReuse:v11 withIndexPath:a4 didEndDisplaying:v6];
    }

    else
    {
      [(UITableView *)self _reuseTableViewSubview:v11 viewType:1];
      v10 = v11;
      if (a4 && v11 && v6)
      {
        [(UITableView *)self _notifyDidEndDisplayingCell:v11 forIndexPath:a4];
        v10 = v11;
      }

      [v10 _setNeedsSetup:1];
    }
  }
}

- (void)_reuseHeaderFooterView:(id)a3 isHeader:(BOOL)a4 forSection:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  if (v8 && self->_firstResponderView != v8 && self->_focusedCell != v8)
  {
    v16 = v8;
    v9 = v8;
    IsKindOfUITableViewHeaderFooterView = _IsKindOfUITableViewHeaderFooterView(v9);
    [(UITableView *)self _updateIsFloating:0 withVisibleRectDisplacement:v9 forHeaderFooterView:IsKindOfUITableViewHeaderFooterView isStandardHeaderFooter:v6 isHeader:0.0];
    if (IsKindOfUITableViewHeaderFooterView && ([(UIView *)v9 reuseIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      if (v6)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }

      [(UITableView *)self _reuseTableViewSubview:v9 viewType:v12];
    }

    else
    {
      [(UIView *)v9 removeFromSuperview];
    }

    if (a5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 46;
      if (v6)
      {
        v13 = 45;
      }

      v14 = *(&self->super.super.super.super.isa + OBJC_IVAR___UITableView__rowData[v13]);
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
      [v14 removeObjectForKey:v15];

      [(UITableView *)self _notifyDidEndDisplayingHeaderFooterView:v9 forSection:a5 isHeader:v6];
    }

    v8 = v16;
  }
}

- (void)_setGestureRecognizerRequiresTableGestureRecognizersToFail:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  clientGesturesRequiringTableGesturesToFail = self->_clientGesturesRequiringTableGesturesToFail;
  if (!clientGesturesRequiringTableGesturesToFail)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_clientGesturesRequiringTableGesturesToFail;
    self->_clientGesturesRequiringTableGesturesToFail = v6;

    clientGesturesRequiringTableGesturesToFail = self->_clientGesturesRequiringTableGesturesToFail;
  }

  [(NSMutableSet *)clientGesturesRequiringTableGesturesToFail addObject:v4];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  wrapperView = self->_wrapperView;
  if (wrapperView)
  {
    v10 = [(UIScrollView *)wrapperView panGestureRecognizer];
    [v8 addObject:v10];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
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

        [v4 requireGestureRecognizerToFail:{*(*(&v16 + 1) + 8 * i), v16}];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_setIgnoreCopyFilterForTableAnimations:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFDFFFFFFFFFFLL | v3;
  [(UITableView *)self _setClearBlendingViewCompositingFilter];
}

- (void)_updateWithItems:(id)a3 updateSupport:(id)a4
{
  v164 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  *(&self->_tableFlags + 2) |= 0x1000000000uLL;
  if (!dyld_program_sdk_at_least() || +[UIView areAnimationsEnabled])
  {
    [(UITableView *)self _adjustPreReloadStateForRestoringContentOffsetWithUpdateItems:v6 updateSupport:v7];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__UITableView__updateWithItems_updateSupport___block_invoke;
  aBlock[3] = &unk_1E71235A8;
  v8 = v7;
  v160 = v8;
  v161 = self;
  v9 = _Block_copy(aBlock);
  [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa rebasePrefetchedCellIndexPathsWithMapping:v9];
  [(UITableView *)self _resignOrRebaseFirstResponderViewWithUpdateSupport:v8 indexPathMapping:v9];
  [(UITableView *)self _resetOrRebaseFocusedViewWithUpdateSupport:v8 indexPathMapping:v9];
  [(UITableView *)self _updateIdentityTrackerWithUpdateSupport:v8];
  v10 = v9[2](v9, self->_pendingSelectionIndexPath);
  pendingSelectionIndexPath = self->_pendingSelectionIndexPath;
  self->_pendingSelectionIndexPath = v10;

  v157[0] = MEMORY[0x1E69E9820];
  v157[1] = 3221225472;
  v157[2] = __46__UITableView__updateWithItems_updateSupport___block_invoke_2;
  v157[3] = &unk_1E71235D0;
  v12 = v9;
  v158 = v12;
  v13 = _Block_copy(v157);
  v14 = self->_selectedIndexPaths;
  v15 = v13[2](v13, self->_selectedIndexPaths);
  selectedIndexPaths = self->_selectedIndexPaths;
  self->_selectedIndexPaths = v15;

  v17 = v13[2](v13, self->_highlightedIndexPaths);
  highlightedIndexPaths = self->_highlightedIndexPaths;
  self->_highlightedIndexPaths = v17;

  if (([(NSMutableArray *)v14 isEqualToArray:self->_selectedIndexPaths]& 1) == 0)
  {
    [(_UITableViewMultiSelectController *)self->_multiSelectController clearSelectionState];
  }

  if (self->_deselectionTransitionIndexPaths)
  {
    v19 = (v13[2])(v13);
    deselectionTransitionIndexPaths = self->_deselectionTransitionIndexPaths;
    self->_deselectionTransitionIndexPaths = v19;
  }

  v115 = v14;
  if (self->_pendingDeselectionIndexPaths)
  {
    v21 = (v13[2])(v13);
    pendingDeselectionIndexPaths = self->_pendingDeselectionIndexPaths;
    self->_pendingDeselectionIndexPaths = v21;
  }

  v116 = v13;
  [(NSMutableSet *)self->_hiddenSeparatorIndexPaths removeAllObjects];
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v23 = self->_visibleCells;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v153 objects:v163 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v154;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v154 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v153 + 1) + 8 * i);
        [v28 _setSeparatorHidden:0];
        [v28 _setNeedsSetup:1];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v153 objects:v163 count:16];
    }

    while (v25);
  }

  [(UITableView *)self _clearNeedsRecomputeHeightsForInvalidatedElements];
  [(UITableView *)self _updateContentSize];
  [(_UITableViewUpdateSupport *)v8 _setupAnimations];
  v29 = [[UIViewAnimationContext alloc] initWithCompletionHandler:?];
  updateCompletionHandler = self->_updateCompletionHandler;
  self->_updateCompletionHandler = 0;

  [(UIViewAnimationContext *)v29 setViewAnimations:?];
  self->_visibleRows.location = [(UITableViewRowData *)&self->_rowData->super.isa globalRowsInRect:*(v8 + 20) canGuess:*(v8 + 21), *(v8 + 22), *(v8 + 23)];
  self->_visibleRows.length = v31;
  [(UITableView *)self _visibleBounds];
  self->_visibleBounds.origin.x = v32;
  self->_visibleBounds.origin.y = v33;
  self->_visibleBounds.size.width = v34;
  self->_visibleBounds.size.height = v35;
  ++self->_updateAnimationCount;
  v117 = v12;
  v118 = v6;
  if (!+[UIView areAnimationsEnabled]|| ![(UITableView *)self _clearBlendingViewAllowed]|| (*(&self->_tableFlags + 23) & 0x20) == 0)
  {
    goto LABEL_22;
  }

  v36 = [(UIView *)self->_clearBlendingView superview];
  wrapperView = self->_wrapperView;

  if (v36 == wrapperView)
  {
    v38 = v6;
    p_tableFlags = &self->_tableFlags;
    v40 = 1;
  }

  else
  {
    if ((*(&self->_tableFlags + 23) & 0x20) == 0)
    {
LABEL_22:
      v38 = v6;
      p_tableFlags = &self->_tableFlags;
      v40 = 0;
      goto LABEL_23;
    }

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v101 = *(v8 + 40);
    v102 = [v101 countByEnumeratingWithState:&v149 objects:v162 count:16];
    if (v102)
    {
      v103 = v102;
      v104 = *v150;
      while (2)
      {
        for (j = 0; j != v103; ++j)
        {
          if (*v150 != v104)
          {
            objc_enumerationMutation(v101);
          }

          v106 = *(*(&v149 + 1) + 8 * j);
          if (v106)
          {
            v106 = v106[3];
          }

          v107 = v106;
          if (_IsKindOfUITableViewCell(v107))
          {
            v108 = [v107 backgroundColor];
            [v108 alphaComponent];
            v110 = v109;

            if (v110 < 1.0)
            {
              p_tableFlags = &self->_tableFlags;
              [(UITableView *)self _beginAnimatingCells];

              v40 = 1;
              goto LABEL_41;
            }
          }
        }

        v103 = [v101 countByEnumeratingWithState:&v149 objects:v162 count:16];
        if (v103)
        {
          continue;
        }

        break;
      }

      p_tableFlags = &self->_tableFlags;
      v40 = 0;
LABEL_41:
      v38 = v118;
    }

    else
    {
      v38 = v6;
      p_tableFlags = &self->_tableFlags;
      v40 = 0;
    }
  }

LABEL_23:
  v41 = [(UITableView *)self _visibleViews];
  v42 = [(UITableView *)self _swipeActionController];
  v43 = [v42 _existingSwipeOccurrenceForIndexPath:self->_swipedIndexPath];

  LODWORD(v42) = _tableViewIsAnimatingSwipeToDelete(v43, v38);
  v142[0] = MEMORY[0x1E69E9820];
  v142[1] = 3221225472;
  v142[2] = __46__UITableView__updateWithItems_updateSupport___block_invoke_3;
  v142[3] = &unk_1E7101950;
  v142[4] = self;
  v44 = v8;
  v143 = v44;
  v45 = v29;
  v144 = v45;
  v147 = v42;
  v46 = v43;
  v145 = v46;
  v47 = v41;
  v146 = v47;
  v148 = v40;
  v48 = _Block_copy(v142);
  v49 = *(p_tableFlags + 2);
  v50 = (v49 >> 55) & 1;
  *(p_tableFlags + 2) = v49 & 0xFF7FFFFFFFFFFFFFLL;
  v114 = v44;
  v51 = v44[38];
  v137[0] = MEMORY[0x1E69E9820];
  v137[1] = 3221225472;
  v137[2] = __46__UITableView__updateWithItems_updateSupport___block_invoke_4;
  v137[3] = &unk_1E7103358;
  v137[4] = self;
  v113 = v47;
  v138 = v113;
  v112 = v45;
  v139 = v112;
  v141 = v50;
  v52 = v51;
  v140 = v52;
  v53 = _Block_copy(v137);
  if (v42)
  {
    *(p_tableFlags + 3) |= 0x20uLL;
    v54 = v46;
    v55 = [_UISwipeAnimationFactory animatorForTentativeWithOccurrence:v46];
    v56 = +[_UISwipeAnimationFactory animatorForCollapse];
    v111 = v48;
    [v56 addAnimations:v48];
    v57 = self->_swipeToDeleteCell;
    [(UITableViewCell *)v57 _setSkipsLayout:1];
    v58 = [(UIView *)v57 layer];
    v59 = [v58 presentationLayer];
    [v59 frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v68 = [(UIView *)v57 layer];
    [v68 removeAllAnimations];

    v69 = [(UIView *)v57 layer];
    [v69 setFrame:{v61, v63, v65, v67}];

    v70 = [v54 lockActionViewForAnimation];
    [(UITableViewCell *)v57 frame];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = [(UIView *)v57 superview];
    v78 = [v70 superview];
    [v77 convertRect:v78 toView:{0.0, v72, v74, v76}];
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;

    [v70 frame];
    v88 = v87;
    v90 = v89;
    v165.origin.x = v80;
    v165.origin.y = v82;
    v165.size.width = v84;
    v165.size.height = v86;
    Width = CGRectGetWidth(v165);
    v166.origin.x = v80;
    v166.origin.y = v82;
    v166.size.width = v84;
    v166.size.height = v86;
    MinX = CGRectGetMinX(v166);
    v131[0] = MEMORY[0x1E69E9820];
    v131[1] = 3221225472;
    v131[2] = __46__UITableView__updateWithItems_updateSupport___block_invoke_5;
    v131[3] = &unk_1E70F3B20;
    v93 = v70;
    v132 = v93;
    v133 = MinX;
    v134 = v88;
    v135 = Width;
    v136 = v90;
    [v55 addAnimations:v131];
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __46__UITableView__updateWithItems_updateSupport___block_invoke_6;
    v125[3] = &unk_1E70F3B20;
    v94 = v93;
    v126 = v94;
    v127 = MinX;
    v128 = v88;
    v129 = Width;
    v130 = 0;
    [v56 addAnimations:v125];
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __46__UITableView__updateWithItems_updateSupport___block_invoke_7;
    v119[3] = &unk_1E71235F8;
    v124 = v53;
    v95 = v54;
    v120 = v95;
    v121 = v94;
    v122 = v57;
    v123 = self;
    v96 = v57;
    v97 = v94;
    [v56 addCompletion:v119];
    [v55 startAnimation];
    [v56 startAnimation];
    [(UITableView *)self _animateScanlineViewForCell:v96 occurrence:v95 actionsView:v97];

    v48 = v111;
    v99 = v116;
    v98 = v117;
    v100 = v115;
    v46 = v54;
  }

  else
  {
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:1028 options:v48 animations:v53 completion:?];
    v99 = v116;
    v98 = v117;
    v100 = v115;
  }
}

id __46__UITableView__updateWithItems_updateSupport___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [(UITableViewRowData *)*(*(a1 + 32) + 72) globalRowForRowAtIndexPath:a2];
    v5 = [(_UITableViewUpdateSupport *)*(a1 + 32) finalGlobalIndexForInitialGlobalIndex:v4];
    v6 = [(UITableViewRowData *)*(*(a1 + 40) + 2160) indexPathForRowAtGlobalRow:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __46__UITableView__updateWithItems_updateSupport___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (v10)
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

uint64_t __46__UITableView__updateWithItems_updateSupport___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 72) == 1)
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = 0;
  }

  return [v2 _startViewAnimationsForUpdate:*(a1 + 40) withContext:*(a1 + 48) swipeOccurrenceAnimatingDelete:v3 oldVisibleViews:*(a1 + 64) useCopyBlendingForAnimations:*(a1 + 73)];
}

uint64_t __46__UITableView__updateWithItems_updateSupport___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateAnimationDidStopWithOldVisibleViews:*(a1 + 40) finished:a2 context:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    v3 = [*(a1 + 32) _swipeActionController];
    v4 = [v3 currentSwipeOccurrence];
    [v4 resetAnimated:0 completion:0];
  }

  v5 = *(a1 + 56);

  return [v5 endIgnoringDrags];
}

uint64_t __46__UITableView__updateWithItems_updateSupport___block_invoke_7(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 64) + 16))(*(a1 + 64), a2 == 0);
  [*(a1 + 32) unlockActionViewForAnimation:*(a1 + 40)];
  result = [*(a1 + 48) _setSkipsLayout:0];
  *(*(a1 + 56) + 3192) &= ~0x20uLL;
  return result;
}

- (void)_startViewAnimationsForUpdate:(id)a3 withContext:(id)a4 swipeOccurrenceAnimatingDelete:(id)a5 oldVisibleViews:(id)a6 useCopyBlendingForAnimations:(BOOL)a7
{
  v146 = *MEMORY[0x1E69E9840];
  v105 = a3;
  v12 = a4;
  v13 = a5;
  v107 = a6;
  v112 = v13;
  v109 = v13 != 0;
  if (v12)
  {
    ++v12[2];
  }

  v106 = v12;
  [(NSMutableArray *)self->_visibleCells removeAllObjects];
  v113 = self;
  location = self->_visibleRows.location;
  if (location < self->_visibleRows.length + location)
  {
    do
    {
      v15 = *(*(v105 + 33) + 8 * location);
      if (os_variant_has_internal_diagnostics())
      {
        if (!v15)
        {
          v16 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = location;
            _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Missing animatedCell for newly visible row %ld", &buf, 0xCu);
          }

          goto LABEL_14;
        }
      }

      else if (!v15)
      {
        v17 = *(__UILogGetCategoryCachedImpl("Assert", &_startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations____s_category) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = location;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Missing animatedCell for newly visible row %ld", &buf, 0xCu);
        }

LABEL_14:
        v15 = [(UITableView *)self _createPreparedCellForGlobalRow:location willDisplay:1];
        if (!v15)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:4537 description:{@"Missing animatedCell for newly visible row %ld, and failed to create a new cell", location}];

          v15 = 0;
        }
      }

      [(NSMutableArray *)self->_visibleCells addObject:v15];

      ++location;
    }

    while (location < self->_visibleRows.length + self->_visibleRows.location);
  }

  p_visibleHeaderViews = &self->_visibleHeaderViews;
  [(NSMutableDictionary *)self->_visibleHeaderViews removeAllObjects];
  p_visibleFooterViews = &self->_visibleFooterViews;
  [(NSMutableDictionary *)v113->_visibleFooterViews removeAllObjects];
  v21 = v113;
  firstResponderView = v113->_firstResponderView;
  if (firstResponderView)
  {
    firstResponderViewType = v113->_firstResponderViewType;
    v24 = p_visibleHeaderViews;
    if (firstResponderViewType != 2)
    {
      if (firstResponderViewType != 3)
      {
        goto LABEL_21;
      }

      v24 = p_visibleFooterViews;
    }

    v25 = *v24;
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](v113->_firstResponderIndexPath, "section")}];
    [v25 setObject:firstResponderView forKey:v26];

    v21 = v113;
  }

LABEL_21:
  if (*(v105 + 30) >= 1)
  {
    v27 = 0;
    do
    {
      [(UITableView *)v21 _contentInset];
      v29 = *(v105 + 20) + v28;
      v31 = v30 + *(v105 + 21);
      v33 = *(v105 + 22) - (v28 + v32);
      v35 = *(v105 + 23) - (v30 + v34);
      v36 = *(*(v105 + 34) + 8 * v27);
      if (v36)
      {
        v37 = [MEMORY[0x1E695DFB0] null];
        v38 = v36 == v37;

        if (!v38)
        {
          v147.origin.x = [(UITableViewRowData *)v113->_rowData floatingRectForHeaderInSection:v27 visibleRect:0 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v29, v31, v33, v35];
          if (CGRectIntersectsRect(v147, *(v105 + 5)))
          {
            v39 = *p_visibleHeaderViews;
            v40 = *(*(v105 + 34) + 8 * v27);
            v41 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
            [(NSMutableDictionary *)v39 setObject:v40 forKey:v41];
          }
        }
      }

      v42 = *(*(v105 + 35) + 8 * v27);
      if (v42)
      {
        v43 = [MEMORY[0x1E695DFB0] null];
        v44 = v42 == v43;

        if (!v44)
        {
          v148.origin.x = [(UITableViewRowData *)v113->_rowData floatingRectForFooterInSection:v27 visibleRect:0 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v29, v31, v33, v35];
          if (CGRectIntersectsRect(v148, *(v105 + 5)))
          {
            v45 = *p_visibleFooterViews;
            v46 = *(*(v105 + 35) + 8 * v27);
            v47 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
            [(NSMutableDictionary *)v45 setObject:v46 forKey:v47];
          }
        }
      }

      ++v27;
      v21 = v113;
    }

    while (v27 < *(v105 + 30));
  }

  if ([(UITableView *)v21 _shouldUseNewHeaderFooterBehavior])
  {
    v150.origin.x = [(UITableViewRowData *)v113->_rowData rectForTableHeaderView];
    v150.origin.y = v48;
    v150.size.width = v49;
    v150.size.height = v50;
    if (!CGRectIntersectsRect(*(v105 + 5), v150))
    {
      tableHeaderView = v113->_tableHeaderView;
      v113->_tableHeaderView = 0;
    }

    v151.origin.x = [(UITableViewRowData *)v113->_rowData rectForTableFooterView];
    v151.origin.y = v52;
    v151.size.width = v53;
    v151.size.height = v54;
    if (!CGRectIntersectsRect(*(v105 + 5), v151))
    {
      tableFooterView = v113->_tableFooterView;
      v113->_tableFooterView = 0;
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v144 = 0x2020000000;
  v145 = 1;
  v56 = [(UIView *)v113->_wrapperView layer];
  v111 = [v56 animationForKey:@"bounds"];

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = *(v105 + 40);
  v57 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
  if (v57)
  {
    v58 = *v138;
    do
    {
      v59 = 0;
      do
      {
        if (*v138 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v137 + 1) + 8 * v59);
        if (v60)
        {
          v61 = *(v60 + 24);
          v62 = *(v60 + 48);
          v63 = *(v60 + 56);
        }

        else
        {
          v61 = 0;
          v62 = 0.0;
          v63 = 0.0;
        }

        v64 = v63 < 1.0 || v62 > 0.0;
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke;
        v135[3] = &unk_1E70F3590;
        v65 = v61;
        v136 = v65;
        [UIView performWithoutAnimation:v135];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke_2;
        aBlock[3] = &unk_1E7123620;
        v66 = v65;
        v127 = v66;
        v128 = v60;
        v129 = v113;
        p_buf = &buf;
        v133 = a7;
        v130 = v111;
        v134 = v109;
        v131 = v112;
        v67 = _Block_copy(aBlock);
        v68 = v67;
        if (v112)
        {
          (*(v67 + 2))(v67);
        }

        else
        {
          v69 = +[UIView _currentAnimationAttributes];
          [v69 _duration];
          v71 = v70;

          v72 = v63 - v62;
          if (v60)
          {
            v73 = v72 * v71;
            if (v64)
            {
              v71 = v73;
            }

            v74 = *(v60 + 20);
            v75 = 64;
            if (*(v60 + 8))
            {
              v75 = 68;
            }

            v76 = v75 | 0x40000;
            v77 = v75 | 0x50000;
            v78 = v75 | 0x70000;
            if (v74 != 7)
            {
              v78 = v75;
            }

            if (v74 != 5)
            {
              v77 = v78;
            }

            if (v74 != 4)
            {
              v76 = v77;
            }

            v79 = v75 | 0x10000;
            v80 = v75 | 0x20000;
            if (v74 == 3)
            {
              v75 |= 0x30000uLL;
            }

            if (v74 == 2)
            {
              v75 = v80;
            }

            if (v74 == 1)
            {
              v75 = v79;
            }

            if (v74 <= 3)
            {
              v81 = v75;
            }

            else
            {
              v81 = v76;
            }
          }

          else
          {
            v83 = v72 * v71;
            if (v64)
            {
              v71 = v83;
            }

            v81 = 64;
          }

          v123[0] = MEMORY[0x1E69E9820];
          v123[1] = 3221225472;
          v123[2] = __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke_4;
          v123[3] = &unk_1E70F37C0;
          v82 = v106;
          v124 = v82;
          v125 = v68;
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 3221225472;
          v120[2] = __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke_5;
          v120[3] = &unk_1E70F4638;
          v120[4] = v113;
          v121 = v107;
          v122 = v82;
          [(UIView *)v71 _animateCollectionTableAnimationWithDuration:UIView delay:v81 options:v123 animations:v120 completion:?];
        }

        ++v59;
      }

      while (v57 != v59);
      v84 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
      v57 = v84;
    }

    while (v84);
  }

  v85 = v113;
  if ([(UIScrollView *)v113 _showsBackgroundShadow])
  {
    v86 = +[UIView areAnimationsEnabled];
    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      [UIView setAnimationsEnabled:0];
    }

    v87 = [(UITableViewRowData *)v113->_rowData heightForTable];
    if (v87 - [(UITableViewRowData *)*(v105 + 9) heightForTable]!= 0.0)
    {
      [(UIScrollView *)v113 _adjustShadowsIfNecessaryForOffset:?];
    }

    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      [UIView setAnimationsEnabled:v86];
    }
  }

  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke_6;
  v118[3] = &unk_1E70F35B8;
  v118[4] = v113;
  v88 = v105;
  v119 = v88;
  [UIView performWithoutAnimation:v118];
  [(UIScrollView *)v113 _skipNextStartOffsetAdjustment];
  [(UITableView *)v113 setBounds:v88[20], v88[21], v88[22], v88[23]];
  if ([(UIScrollView *)v113 isScrollAnimating])
  {
    [(UIScrollView *)v113 _animatedTargetOffset];
    v90 = v89;
    v92 = v91;
    [(UIView *)v113 bounds];
    Height = CGRectGetHeight(v149);
    [(UIScrollView *)v113 contentSize];
    v95 = v94;
    [(UIScrollView *)v113 _effectiveContentInset];
    v97 = v92 + Height - (v95 + v96);
    if (v97 > 0.0)
    {
      [(UITableView *)v113 _contentInset];
      v99 = -v98;
      v100 = v92 - v97;
      if (v92 - v97 <= v99)
      {
        v100 = v99;
      }

      [(UIScrollView *)v113 setContentOffset:0 animated:v90, v100];
    }
  }

  [(UITableView *)v113 _updateBackgroundView];
  [(UIScrollView *)v113 _updateAccessories];
  if ((*(&v113->_tableFlags + 16) & 0x40) != 0)
  {
    [(UITableView *)v113 _adjustExtraSeparators];
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v101 = v113->_visibleCells;
    v102 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v114 objects:v141 count:16];
    if (v102)
    {
      v103 = *v115;
      do
      {
        for (i = 0; i != v102; ++i)
        {
          if (*v115 != v103)
          {
            objc_enumerationMutation(v101);
          }

          [*(*(&v114 + 1) + 8 * i) layoutBelowIfNeeded];
        }

        v102 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v114 objects:v141 count:16];
      }

      while (v102);
    }

    v85 = v113;
  }

  [(UISwipeActionController *)v85->_swipeActionController updateLayout];

  _Block_object_dispose(&buf, 8);
}

void __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) alpha];
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v2 == *(v3 + 40))
    {
      goto LABEL_17;
    }
  }

  else if (v2 == 0.0)
  {
    goto LABEL_18;
  }

  [*(a1 + 32) setAlpha:?];
  v4 = [*(a1 + 32) layer];
  v5 = [v4 allowsGroupOpacity];
  v6 = *(a1 + 40);
  if (v6)
  {
    *(v6 + 13) = v5;
    v7 = *(a1 + 40);
    if (v7)
    {
      *(v7 + 12) = 1;
    }
  }

  v8 = *(*(a1 + 48) + 3192);
  v9 = [*(a1 + 32) traitCollection];
  v10 = [v9 _userInterfaceRenderingMode];
  v12 = (v8 & 0x20000000000) == 0 && v10 != 2;

  [v4 setAllowsGroupOpacity:v12];
  if ((_IsKindOfUITableViewCell(*(a1 + 32)) & 1) == 0)
  {
    v13 = [v4 masksToBounds];
    v14 = *(a1 + 40);
    if (v14)
    {
      *(v14 + 14) = v13;
    }

    [v4 setMasksToBounds:1];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
LABEL_17:
    if (*(v3 + 11))
    {
      goto LABEL_19;
    }
  }

LABEL_18:
  *(*(*(a1 + 72) + 8) + 24) = 0;
LABEL_19:
  if (_IsKindOfUITableViewCell(*(a1 + 32)))
  {
    [*(a1 + 32) _setAnimating:1 clippingAdjacentCells:*(a1 + 80)];
    v15 = *(a1 + 40);
    if (v15 && *(v15 + 9) == 1)
    {
      [*(a1 + 48) _addContentSubview:*(a1 + 32) atBack:1];
    }

    v16 = *(a1 + 56);
    if (!v16 || ([v16 fromValue], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "CGRectValue"), MinX = CGRectGetMinX(v80), objc_msgSend(*(*(a1 + 48) + 2496), "bounds"), v19 = CGRectGetMinX(v81), v17, MinX == v19))
    {
      v43 = *(a1 + 40);
      if (v43)
      {
        v44 = v43[8];
        v45 = v43[9];
        v46 = v43[10];
        v47 = v43[11];
      }

      else
      {
        v45 = 0.0;
        v46 = 0.0;
        v47 = 0.0;
        v44 = 0.0;
      }

      [*(a1 + 32) setFrame:{v44, v45, v46, v47}];
    }

    else
    {
      v20 = [*(a1 + 32) layer];
      v21 = [UIView _defaultUIViewAnimationForLayer:v20 forKey:@"position"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke_3;
        v76[3] = &unk_1E70F35B8;
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        v77 = v22;
        v78 = v23;
        [UIView performWithoutAnimation:v76];
        v24 = [v21 copy];
        [v24 setKeyPath:@"position.y"];
        v25 = MEMORY[0x1E696AD98];
        v26 = [v21 fromValue];
        [v26 CGPointValue];
        v28 = [v25 numberWithDouble:v27];
        [v24 setFromValue:v28];

        [v20 removeAnimationForKey:@"position"];
        v29 = [v21 delegate];
        [v24 setDelegate:v29];

        [v20 addAnimation:v24 forKey:@"position.y"];
        v30 = [*(a1 + 56) copy];
        [v30 setKeyPath:@"position.x"];
        v31 = MEMORY[0x1E696AD98];
        [*(a1 + 32) frame];
        MidX = CGRectGetMidX(v82);
        v33 = [*(a1 + 56) fromValue];
        [v33 CGRectValue];
        v34 = [v31 numberWithDouble:MidX + CGRectGetMinX(v83)];
        [v30 setFromValue:v34];

        [v30 setDelegate:0];
        [v20 addAnimation:v30 forKey:@"position.x"];
      }

      else
      {
        v54 = *(a1 + 40);
        if (v54)
        {
          v55 = v54[8];
          v56 = v54[9];
          v57 = v54[10];
          v58 = v54[11];
        }

        else
        {
          v56 = 0.0;
          v57 = 0.0;
          v58 = 0.0;
          v55 = 0.0;
        }

        [*(a1 + 32) setFrame:{v55, v56, v57, v58}];
      }
    }

    v59 = *(a1 + 32);
    v60 = *(a1 + 48);
    if (v59 == v60[343] && (*(a1 + 81) & 1) == 0)
    {
      [v60 _animateSwipeOccurrenceAction:*(a1 + 64) alongsideCell:? animation:?];
      v59 = *(a1 + 32);
    }

    [v59 layoutIfNeeded];
    v61 = *(a1 + 32);
    v62 = *(a1 + 40);
    if (!v62 || (v63 = *(v62 + 32)) == 0)
    {
      v69 = *(a1 + 48);
      v70 = *(v69 + 3176);
      if ((v70 & 0x40000000000000) != 0)
      {
        v71 = [*(a1 + 48) _editingStyleForRowAtIndexPath:0];
        v72 = [*(a1 + 48) _shouldIndentWhileEditingForRowAtIndexPath:0];
        LOBYTE(v73) = [*(a1 + 48) _canReorderRowAtIndexPath:0];
        v69 = *(a1 + 48);
      }

      else
      {
        v72 = 0;
        v71 = 0;
        v73 = *(v69 + 3192) >> 7;
      }

      LOWORD(v75) = 257;
      LOBYTE(v74) = v73;
      [v69 _setupCell:v61 forEditing:(v70 >> 54) & 1 atIndexPath:0 canEdit:objc_msgSend(v61 editingStyle:"isEditing") shouldIndentWhileEditing:v71 showsReorderControl:v72 accessoryType:v74 animated:objc_msgSend(v61 updateSeparators:{"accessoryType"), v75}];
      v64 = 0;
      goto LABEL_70;
    }

    v64 = v63;
    v65 = *(a1 + 40);
    if (!v65 || (*(v65 + 9) & 1) == 0)
    {
      if ([v61 _needsSetup])
      {
LABEL_61:
        v68 = *(a1 + 40);
        if (v68)
        {
          LOBYTE(v68) = *(v68 + 10);
        }

        [*(a1 + 48) _setupCell:v61 forEditing:v68 & 1 atIndexPath:v64 animated:1 updateSeparators:1];
        goto LABEL_70;
      }

      v66 = *(a1 + 40);
      if (v66)
      {
        v67 = *(v66 + 10);
        if ([v61 isEditing] != v67)
        {
          goto LABEL_61;
        }
      }

      else if ([v61 isEditing])
      {
        goto LABEL_61;
      }
    }

LABEL_70:
    [v61 _setNeedsHeightCalculation:0];

    return;
  }

  [*(a1 + 48) _sectionContentInset];
  v37 = v36;
  v38 = v35;
  if (v36 <= 0.0 && v35 <= 0.0 || ((v48 = *(a1 + 40)) == 0 ? (v49 = 0) : (v49 = (*(v48 + 16) & 0xFFFFFFFE) == 4), (_IsKindOfUITableViewHeaderFooterView(*(a1 + 32)) & 1) != 0 || v49))
  {
    v39 = *(a1 + 40);
    if (v39)
    {
      v37 = v39[8];
      v40 = v39[9];
      v41 = v39[10];
      v42 = v39[11];
    }

    else
    {
      v37 = 0.0;
      v40 = 0.0;
      v41 = 0.0;
      v42 = 0.0;
    }
  }

  else
  {
    v50 = *(a1 + 40);
    if (v50)
    {
      v40 = v50[9];
      v51 = v50[10];
      v42 = v50[11];
    }

    else
    {
      v40 = 0.0;
      v51 = 0.0;
      v42 = 0.0;
    }

    v41 = v51 - (v37 + v38);
  }

  [*(a1 + 32) setFrame:{v37, v40, v41, v42}];
  [*(a1 + 32) layoutIfNeeded];
  if (objc_opt_respondsToSelector())
  {
    v52 = *(a1 + 32);
    v53 = *(a1 + 40);
    if (v53)
    {
      LOBYTE(v53) = *(v53 + 10);
    }

    [v52 setEditing:v53 & 1 animated:1];
  }
}

uint64_t __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = v1[8];
    v3 = v1[9];
    v4 = v1[10];
    v5 = v1[11];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v2 = 0.0;
  }

  return [*(a1 + 32) setFrame:{v2, v3, v4, v5}];
}

uint64_t __133__UITableView__startViewAnimationsForUpdate_withContext_swipeOccurrenceAnimatingDelete_oldVisibleViews_useCopyBlendingForAnimations___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    ++*(v1 + 16);
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)_isFirstResponderInDeletedSectionOrRow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_firstResponderView)
  {
    goto LABEL_9;
  }

  v6 = 0;
  if (v4)
  {
    firstResponderIndexPath = self->_firstResponderIndexPath;
    if (firstResponderIndexPath)
    {
      firstResponderViewType = self->_firstResponderViewType;
      if ((firstResponderViewType - 2) < 2)
      {
        v9 = [(_UITableViewUpdateSupport *)v4 finalSectionIndexForInitialSectionIndex:?];
LABEL_8:
        v6 = v9 == 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_10;
      }

      if (firstResponderViewType == 1)
      {
        v10 = [(UITableViewRowData *)v4[9] globalRowForRowAtIndexPath:?];
        v9 = [(_UITableViewUpdateSupport *)v5 finalGlobalIndexForInitialGlobalIndex:v10];
        goto LABEL_8;
      }

LABEL_9:
      v6 = 0;
    }
  }

LABEL_10:

  return v6;
}

- (void)_resignOrRebaseFirstResponderViewWithUpdateSupport:(id)a3 indexPathMapping:(id)a4
{
  v25 = a3;
  v24 = a4;
  if ([(UITableView *)self _isFirstResponderInDeletedSectionOrRow:v25])
  {
    v7 = 0;
    do
    {
      v8 = [(UIView *)self window];
      v9 = [v8 firstResponder];

      v10 = self->_firstResponderView;
      v11 = self->_firstResponderIndexPath;
      v12 = [v9 resignFirstResponder];
      v13 = [(UIView *)self window];
      v14 = [v13 firstResponder];

      if (!v12 || v9 == v14)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = v18;
        v20 = @"NO";
        if (v12)
        {
          v20 = @"YES";
        }

        [v18 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:4873 description:{@"The first responder contained inside of a deleted section or row refused to resign.\nFirst responder that was asked to resign (returned %@ from -resignFirstResponder): %@ inside containing view: %@ at index path: %@\nCurrent first responder: %@ inside containing view: %@ at index path: %@", v20, v9, v10, v11, v14, self->_firstResponderView, self->_firstResponderIndexPath}];
      }

      if (v7 >= 0x64)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = v15;
        v17 = @"NO";
        if (v12)
        {
          v17 = @"YES";
        }

        [v15 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:4874 description:{@"Attempted to delete a section or row containing the first responder, but after repeatedly telling the first responder to resign, the first responder remained inside a deleted section or row. This may be caused by a cycle where the first responder is moving back and forth between the same views.\nFirst responder that was asked to resign (returned %@ from -resignFirstResponder): %@ inside containing view: %@ at index path: %@\nCurrent first responder: %@ inside containing view: %@ at index path: %@", v17, v9, v10, v11, v14, self->_firstResponderView, self->_firstResponderIndexPath}];
      }

      ++v7;
    }

    while ([(UITableView *)self _isFirstResponderInDeletedSectionOrRow:v25]);
  }

  if (self->_firstResponderView)
  {
    firstResponderViewType = self->_firstResponderViewType;
    if ((firstResponderViewType - 2) >= 2)
    {
      if (firstResponderViewType != 1)
      {
        firstResponderIndexPath = self->_firstResponderIndexPath;
        self->_firstResponderIndexPath = 0;
        goto LABEL_21;
      }

      v22 = v24[2](v24, self->_firstResponderIndexPath);
    }

    else
    {
      v22 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:{-[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](v25, -[NSIndexPath section](self->_firstResponderIndexPath, "section"))}];
    }

    firstResponderIndexPath = self->_firstResponderIndexPath;
    self->_firstResponderIndexPath = v22;
LABEL_21:
  }
}

- (BOOL)_isFocusedViewInDeletedSectionOrRow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_focusedCell)
  {
    goto LABEL_9;
  }

  v6 = 0;
  if (v4)
  {
    focusedCellIndexPath = self->_focusedCellIndexPath;
    if (focusedCellIndexPath)
    {
      focusedViewType = self->_focusedViewType;
      if ((focusedViewType - 2) < 2)
      {
        v9 = [(_UITableViewUpdateSupport *)v4 finalSectionIndexForInitialSectionIndex:?];
LABEL_8:
        v6 = v9 == 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_10;
      }

      if (focusedViewType == 1)
      {
        v10 = [(UITableViewRowData *)v4[9] globalRowForRowAtIndexPath:?];
        v9 = [(_UITableViewUpdateSupport *)v5 finalGlobalIndexForInitialGlobalIndex:v10];
        goto LABEL_8;
      }

LABEL_9:
      v6 = 0;
    }
  }

LABEL_10:

  return v6;
}

- (void)_resetOrRebaseFocusedViewWithUpdateSupport:(id)a3 indexPathMapping:(id)a4
{
  v16 = a3;
  v6 = a4;
  *(&self->_tableFlags + 3) &= ~0x10000uLL;
  if (!self->_focusedCellIndexPath)
  {
    goto LABEL_16;
  }

  v7 = self->_focusedCell;
  focusedViewType = self->_focusedViewType;
  v9 = self->_focusedCellIndexPath;
  if ([(UITableView *)self _isFocusedViewInDeletedSectionOrRow:v16])
  {
    *(&self->_tableFlags + 3) |= 0x10000uLL;
    focusedCell = self->_focusedCell;
    self->_focusedCell = 0;

    self->_focusedViewType = 0;
    focusedCellIndexPath = self->_focusedCellIndexPath;
    self->_focusedCellIndexPath = 0;
  }

  if (v7 && !self->_focusedCell)
  {
    [(UITableView *)self _reusePreviouslyFocusedTableViewSubviewIfNeeded:v7 viewType:focusedViewType indexPath:v9];
  }

  if ((*(&self->_tableFlags + 26) & 1) == 0)
  {
    v12 = self->_focusedViewType;
    if ((v12 - 2) < 2)
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:{-[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](v16, -[NSIndexPath section](self->_focusedCellIndexPath, "section"))}];
LABEL_12:
      v14 = v13;
      [(UITableView *)self _setFocusedCellIndexPath:v13];

      goto LABEL_13;
    }

    if (v12 == 1)
    {
      v13 = v6[2](v6, self->_focusedCellIndexPath);
      goto LABEL_12;
    }
  }

LABEL_13:
  if (![(UITableView *)self _indexPathIsValid:self->_focusedCellIndexPath])
  {
    v15 = self->_focusedCellIndexPath;
    self->_focusedCellIndexPath = 0;

    self->_focusedViewType = 0;
  }

LABEL_16:
}

- (void)_updateIdentityTrackerWithUpdateSupport:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITableView *)self _identityTracker:0];
  if (v5)
  {
    v23 = v4;
    v6 = [(UITableView *)self contextMenuInteraction];
    v7 = [v6 _internalIdentifiersForDismissingMenu];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [(_UIIndexPathIdentityTracker *)v5 currentIndexPathForIdentifier:v12];
          if (v13)
          {
            v14 = [(UITableViewRowData *)self->_currentUpdate->oldRowData globalRowForRowAtIndexPath:v13];
            if (v14 != 0x7FFFFFFFFFFFFFFFLL && [(_UITableViewUpdateSupport *)self->_currentUpdate finalGlobalIndexForInitialGlobalIndex:v14]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = [(UITableView *)self contextMenuInteraction];
              [v15 _retargetDismissingMenuWithInternalIdentifier:v12 toPreview:0 force:0];

              goto LABEL_14;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v4 = v23;
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23[8], "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v23[8];
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * j) collectionViewUpdateItem];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [(_UIIndexPathIdentityTracker *)v5 updateWithUpdateItems:v16];
  }
}

- (void)_animateSwipeOccurrenceAction:(id)a3 alongsideCell:(id)a4 animation:(id)a5
{
  v43 = a3;
  v7 = a5;
  v8 = [v43 actionView];
  v9 = v8;
  if (v8)
  {
    [v8 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(UITableView *)self _cellContainerView];
    if (v7)
    {
      x = v7[2].origin.x;
      y = v7[2].origin.y;
      width = v7[2].size.width;
      height = v7[2].size.height;
    }

    else
    {
      y = 0.0;
      width = 0.0;
      height = 0.0;
      x = 0.0;
    }

    v23 = [v9 superview];
    [v18 convertRect:v23 toView:{x, y, width, height}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [v43 direction];
    v33 = v25;
    v34 = v27;
    v35 = v29;
    v36 = v31;
    if (v32 == 1)
    {
      MinX = CGRectGetMinX(*&v33);
      v38 = v11;
      v39 = MinX;
      v45.origin.x = v38;
      v45.origin.y = v13;
      v45.size.width = v15;
      v45.size.height = v17;
      MaxX = v39 - CGRectGetWidth(v45);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v33);
    }

    v46.origin.x = v25;
    v46.origin.y = v27;
    v46.size.width = v29;
    v46.size.height = v31;
    MinY = CGRectGetMinY(v46);
    if (v7)
    {
      [v9 setFrame:{MaxX, MinY, v15, CGRectGetHeight(v7[2])}];
      v42 = v7[1].origin.y;
    }

    else
    {
      v42 = 0.0;
      v47.origin.x = 0.0;
      v47.origin.y = 0.0;
      v47.size.width = 0.0;
      v47.size.height = 0.0;
      [v9 setFrame:{MaxX, MinY, v15, CGRectGetHeight(v47)}];
    }

    [v9 setAlpha:v42];
  }
}

- (void)_animateScanlineViewForCell:(id)a3 occurrence:(id)a4 actionsView:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(UITableView *)self _cellContainerView];
  [v8 bounds];
  [v8 convertRect:v9 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  +[UISwipeActionDeleteScanlineView lineHeight];
  v19 = v18;
  v41.origin.x = v11;
  v41.origin.y = v13;
  v41.size.width = v15;
  v41.size.height = v17;
  v20 = CGRectGetMinY(v41) - v19;
  v42.origin.x = v11;
  v42.origin.y = v13;
  v42.size.width = v15;
  v42.size.height = v17;
  Width = CGRectGetWidth(v42);
  [v8 separatorInset];
  v23 = v22;

  v24 = [[UISwipeActionDeleteScanlineView alloc] initWithFrame:v23 + 0.0, v20 + 0.0, Width - (v23 + 0.0), v19];
  v25 = [v7 currentAction];

  v26 = [v25 backgroundColor];
  [(UISwipeActionDeleteScanlineView *)v24 setDeleteLineColor:v26];

  [(UIView *)v24 setAlpha:0.0];
  _UITableInsertSubviewInContainerAboveAllCells(v9, v24);
  v27 = +[_UISwipeAnimationFactory animatorForScanlineCollapse];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __66__UITableView__animateScanlineViewForCell_occurrence_actionsView___block_invoke;
  v35[3] = &unk_1E70F3B20;
  v28 = v24;
  v36 = v28;
  v37 = 0;
  v38 = v20;
  v39 = Width;
  v40 = v19;
  [v27 addAnimations:v35];
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __66__UITableView__animateScanlineViewForCell_occurrence_actionsView___block_invoke_2;
  v33 = &unk_1E70F5DB8;
  v34 = v28;
  v29 = v28;
  [v27 addCompletion:&v30];
  [v27 startAnimation];
}

uint64_t __66__UITableView__animateScanlineViewForCell_occurrence_actionsView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

void __66__UITableView__animateScanlineViewForCell_occurrence_actionsView___block_invoke_2(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UITableView__animateScanlineViewForCell_occurrence_actionsView___block_invoke_3;
  aBlock[3] = &unk_1E70F5AC0;
  v9 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (a2)
  {
    (*(v4 + 2))(v4, 0);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__UITableView__animateScanlineViewForCell_occurrence_actionsView___block_invoke_4;
    v6[3] = &unk_1E70F3590;
    v7 = *(a1 + 32);
    [UIView animateWithDuration:2 delay:v6 usingSpringWithDamping:v5 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  }
}

- (void)_updateAnimationDidStopWithOldVisibleViews:(id)a3 finished:(BOOL)a4 context:(id)a5
{
  v6 = a4;
  v84 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = v9[2] - 1;
    v9[2] = v11;
    if (v11)
    {
      goto LABEL_88;
    }
  }

  v71 = v6;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v13 = *(&self->_tableFlags + 1);

    if ((v13 & 0x800000000000000) == 0)
    {
      [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:0 updateImmediatelyIfPossible:0];
      [(UITableView *)self _updateVisibleCellsNow:1];
    }
  }

  v14 = v8;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v72 = v8;
  v73 = v10;
  if (v10)
  {
    v15 = v10[1];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v79;
    do
    {
      v20 = 0;
      do
      {
        if (*v79 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v78 + 1) + 8 * v20);
        if (v21)
        {
          v22 = *(v21 + 24);
          v23 = v22;
          if (*(v21 + 12) == 1)
          {
            v24 = [(UIView *)v22 layer];
            [v24 setAllowsGroupOpacity:*(v21 + 13)];
            if ((_IsKindOfUITableViewCell(v23) & 1) == 0)
            {
              [v24 setMasksToBounds:*(v21 + 14)];
            }
          }

          if (v23)
          {
            if (_IsKindOfUITableViewCell(v23))
            {
              v25 = v23;
              if (([(NSMutableArray *)self->_visibleCells containsObject:v25]& 1) == 0)
              {
                [(UITableView *)v25 _setAnimating:0];
                v26 = *(v21 + 32);
                [(UITableView *)self _reuseTableViewCell:v25 withIndexPath:v26 didEndDisplaying:1];
              }

              [(UITableView *)v25 _removeFloatingSeparator];
              [(UITableView *)v25 _removeInnerShadow];
LABEL_37:

              goto LABEL_41;
            }

            if (![(UITableView *)self _visibleHeaderViewsContainsView:v23]&& ![(UITableView *)self _visibleFooterViewsContainsView:v23])
            {
              if (v23 != self->_tableHeaderView && v23 != self->_tableFooterView || ([(UITableView *)self _visibleBounds], v28 = v27, v30 = v29, v32 = v31, v34 = v33, [(UITableView *)self _shouldUseNewHeaderFooterBehavior]) && ([(UIView *)v23 frame], v86.origin.x = v35, v86.origin.y = v36, v86.size.width = v37, v86.size.height = v38, v85.origin.x = v28, v85.origin.y = v30, v85.size.width = v32, v85.size.height = v34, !CGRectIntersectsRect(v85, v86)))
              {
                v39 = [(UIView *)v23 superview];
                v40 = v39;
                if (v39 == self)
                {
                }

                else
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    goto LABEL_34;
                  }
                }

                [(UIView *)v23 removeFromSuperview];
              }
            }

LABEL_34:
            v42 = [(UIView *)v23 superview];
            v25 = v42;
            if (v42 == self)
            {
            }

            else
            {
              v43 = [(UIView *)v23 superview];
              if (v43 != self->_wrapperView)
              {

                goto LABEL_37;
              }

              v44 = *(&self->_tableFlags + 2);

              if ((v44 & 0x2000000000000000) == 0)
              {
LABEL_41:
                [v14 removeObject:v23];
                goto LABEL_42;
              }
            }

            [(UITableView *)self _addContentSubview:v23 atBack:0];
            goto LABEL_41;
          }
        }

        else
        {
          v23 = 0;
        }

LABEL_42:

        ++v20;
      }

      while (v18 != v20);
      v45 = [v16 countByEnumeratingWithState:&v78 objects:v83 count:16];
      v18 = v45;
    }

    while (v45);
  }

  if (self->_swipedIndexPath)
  {
    swipeToDeleteCell = self->_swipeToDeleteCell;
    if (swipeToDeleteCell)
    {
      if (!v73)
      {
        v46 = 0;
        goto LABEL_50;
      }

      v46 = v73[4];
      if (swipeToDeleteCell != v46)
      {
LABEL_50:
        p_tableFlags = &self->_tableFlags;
        v49 = &self->_tableFlags + 24;
LABEL_53:

        goto LABEL_54;
      }
    }

    p_tableFlags = &self->_tableFlags;
    v49 = &self->_tableFlags + 24;
    *(&self->_tableFlags + 3) |= ~(16 * *(&self->_tableFlags + 3)) & 0x100;
    if (swipeToDeleteCell)
    {
      goto LABEL_53;
    }
  }

  else
  {
    p_tableFlags = &self->_tableFlags;
    v49 = &self->_tableFlags + 24;
  }

LABEL_54:
  v50 = self->_updateAnimationCount - 1;
  self->_updateAnimationCount = v50;
  if (!v50)
  {
    [(UITableView *)self _endAnimatingCells];
    [(UITableView *)self _updateSeparatorStateForVisibleCells];
    if (v49[1])
    {
      [(UITableView *)self _cleanupStateFromDeleteConfirmation];
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    if (v73)
    {
      v51 = v73[1];
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;
    v53 = [v52 countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v75;
      do
      {
        v56 = 0;
        do
        {
          if (*v75 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v74 + 1) + 8 * v56);
          if (v57)
          {
            v58 = *(v57 + 24);
            v59 = v58;
            if (v58)
            {
              if (_IsKindOfUITableViewCell(v58) && ([(NSMutableArray *)self->_visibleCells containsObject:v59]& 1) == 0)
              {
                v60 = *(v57 + 32);
                [(UITableView *)self _reuseTableViewCell:v59 withIndexPath:v60 didEndDisplaying:1];
              }

              [v14 removeObject:v59];
            }
          }

          else
          {
            v59 = 0;
          }

          ++v56;
        }

        while (v54 != v56);
        v61 = [v52 countByEnumeratingWithState:&v74 objects:v82 count:16];
        v54 = v61;
      }

      while (v61);
    }

    [(UITableView *)self _removeOrphanedViews:v14];
  }

  v62 = [(UIView *)self traitCollection];
  v63 = [v62 userInterfaceIdiom];

  if (v63 == 3)
  {
    [(UITableView *)self _highlightFirstVisibleRowIfAppropriate];
  }

  if (self->_focusedCell)
  {
    if (self->_focusedCellIndexPath && self->_focusedViewType == 1 && ([(NSMutableArray *)self->_visibleCells containsObject:?]& 1) == 0)
    {
      [(UITableView *)self _configureCellForDisplay:self->_focusedCell forIndexPath:self->_focusedCellIndexPath];
    }

    v64 = [(UIView *)self traitCollection];
    v65 = [v64 userInterfaceIdiom];

    if (v65 == 3)
    {
      v66 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
      v67 = [v66 scrollManager];
      v68 = [(UIScrollView *)self _focusTuple];
      [v67 animateOffsetOfEnvironmentScrollableContainer:v68 toShowFocusItem:self->_focusedCell];
    }
  }

  v10 = v73;
  if (v73)
  {
    v69 = v73[3];
    v70 = v69;
    if (v69)
    {
      (*(v69 + 2))(v69, v71);
    }
  }

  else
  {
    v70 = 0;
  }

  *(p_tableFlags + 2) &= ~0x1000000000uLL;
  [(UITableView *)self _updateContentSize];

  v8 = v72;
LABEL_88:
}

- (void)_removeOrphanedViews:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(UITableView *)self _visibleViews];
    [v4 minusHashTable:v5];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
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

        [*(*(&v11 + 1) + 8 * v10++) removeFromSuperview];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)_canEditRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ((*(&self->_tableFlags + 1) & 4) != 0)
    {
      v6 = [(UITableView *)self _dataSourceProxy];
      v5 = [v6 tableView:self canEditRowAtIndexPath:v4];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_accessoryButtonAction:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITableView *)self _tableViewCellForContentView:v4];
  if (v5)
  {
    v6 = [(UITableView *)self _indexPathForCell:v5 usingPresentationValues:1];
    if (v6)
    {
      v7 = [v5 accessoryActionSegueTemplate];
      v8 = [v7 perform:v5];

      [v5 _toggleExpansionButton];
      if ((*(&self->_tableFlags + 5) & 0x20) != 0)
      {
        v9 = [(UITableView *)self _delegateProxy];
        [v9 tableView:self accessoryButtonTappedForRowWithIndexPath:v6];
      }
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v5;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Unable to obtain index path for accessory: %@ in cell: %@", &v13, 0x16u);
      }
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA967548) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unable to obtain index path for accessory: %@ in cell: %@", &v13, 0x16u);
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unable to find containing cell for accessory: %@", &v13, 0xCu);
    }

    goto LABEL_11;
  }

  v10 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA967540) + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unable to find containing cell for accessory: %@", &v13, 0xCu);
  }

LABEL_12:
}

- (BOOL)_shouldChangeIndexBasedOnValueChanged
{
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 3)
  {
    v4 = [(UIView *)self window];
    v5 = [v4 _screen];
    v6 = [v5 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    v7 = [v6 integerValue] == 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_sectionIndexChanged:(id)a3
{
  if ([(UITableView *)self _shouldChangeIndexBasedOnValueChanged])
  {

    [(UITableView *)self _updateSectionIndex];
  }
}

- (void)_updateSectionIndex
{
  v3 = [(UITableViewIndex *)self->_index selectedSection];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(UITableViewIndex *)self->_index pastTop])
    {
      v4 = *MEMORY[0x1E695F058];
      v5 = *(MEMORY[0x1E695F058] + 8);
      v6 = *(MEMORY[0x1E695F058] + 16);
      v7 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      if (![(UITableViewIndex *)self->_index pastBottom])
      {
        goto LABEL_12;
      }

      [(UITableViewRowData *)self->_rowData rectForTable];
      v5 = v17 + -1.0;
      v4 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
    }

    [(UIScrollView *)self scrollRectToVisible:0 animated:v4, v5, v6, v7];
  }

  else
  {
    [(UIScrollView *)self contentOffset];
    v9 = v8;
    v10 = [(UITableViewIndex *)self->_index selectedSectionTitle];
    [(UITableView *)self _sectionIndexChangedToIndex:v3 title:v10];

    [(UIScrollView *)self contentOffset];
    v12 = v9 - v11;
    v13 = -(v9 - v11);
    if (v12 >= 0.0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    [(UITableView *)self _defaultSectionHeaderHeight];
    if (v14 > v15)
    {
      indexRetargetFeedbackGenerator = self->_indexRetargetFeedbackGenerator;
      [(UIView *)self->_index center];
      [(UISelectionFeedbackGenerator *)indexRetargetFeedbackGenerator selectionChangedAtLocation:?];
    }
  }

LABEL_12:
  if ([(UITableView *)self _shouldShowIndexOverlays])
  {
    [(UITableView *)self _transitionIndexOverlayToVisible:1 shouldFadeBackToInvisible:0];

    [(UITableView *)self _moveSectionIndexTitleIndexToIndex:v3 highlight:0];
  }
}

- (int64_t)_sectionIndexChangedToIndex:(int64_t)a3 title:(id)a4
{
  v6 = a4;
  tableFlags = self->_tableFlags;
  v8 = a3;
  if ((tableFlags & 0x10000) != 0)
  {
    v9 = [(UITableView *)self _dataSourceProxy];
    v10 = [v9 tableView:self indexPathForSectionIndexTitle:v6 atIndex:a3];

    v8 = [v10 section];
    if (v10)
    {
      [(UITableView *)self _scrollToRowAtIndexPath:v10 atScrollPosition:1 animated:0 usingPresentationValues:1];
LABEL_12:
      v13 = [(UIView *)self traitCollection];
      v14 = [v13 interactionModel];

      if ((v14 & 2) != 0)
      {
        [(UITableView *)self _updateFocusedItemToIndexPath:v10];
      }

      goto LABEL_15;
    }

    tableFlags = self->_tableFlags;
  }

  if ((tableFlags & 0x200) != 0)
  {
    v11 = [(UITableView *)self _dataSourceProxy];
    v8 = [v11 tableView:self sectionForSectionIndexTitle:v6 atIndex:a3];
  }

  if (v8 < 0)
  {
    goto LABEL_14;
  }

  rowData = self->_rowData;
  if (rowData)
  {
    rowData = rowData->_numSections;
  }

  if (v8 >= rowData)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v10 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:v8];
  [(UITableView *)self _scrollToRowAtIndexPath:v10 atScrollPosition:1 animated:0 usingPresentationValues:1];
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_15:

  return v8;
}

- (void)_sectionIndexTouchesBegan:(id)a3
{
  indexRetargetFeedbackGenerator = self->_indexRetargetFeedbackGenerator;
  [(UIView *)self->_index center];
  [(UISelectionFeedbackGenerator *)indexRetargetFeedbackGenerator userInteractionStartedAtLocation:?];
  if ([(UITableView *)self _shouldChangeIndexBasedOnValueChanged])
  {

    [(UITableView *)self _updateSectionIndex];
  }
}

- (void)_sectionIndexTouchesEnded:(id)a3
{
  if ((*(&self->_tableFlags + 2) & 0x8000000000000000) != 0)
  {
    [(UITableView *)self _startIndexOverlayTimerWithDelay:a3, 0.75];
  }

  else if (![(UITableView *)self _shouldChangeIndexBasedOnValueChanged]&& [(UITableView *)self _shouldShowIndexOverlays])
  {
    [(UITableView *)self _transitionIndexOverlaySelectionViewToVisible:1];
  }

  indexRetargetFeedbackGenerator = self->_indexRetargetFeedbackGenerator;
  [(UIView *)self->_index center];

  [(UISelectionFeedbackGenerator *)indexRetargetFeedbackGenerator userInteractionEndedAtLocation:?];
}

- (void)_languageChanged
{
  defaultSectionIndexTitles = self->_defaultSectionIndexTitles;
  self->_defaultSectionIndexTitles = 0;

  *(&self->_tableFlags + 2) &= ~0x20000000uLL;
}

- (void)_sendWillBeginEditingForIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && (*(&self->_tableFlags + 6) & 0x10) != 0)
  {
    v6 = v4;
    v5 = [(UITableView *)self _delegateProxy];
    [v5 tableView:self willBeginEditingRowAtIndexPath:v6];

    v4 = v6;
  }
}

- (void)_sendDidEndEditingForIndexPath:(id)a3
{
  if ((*(&self->_tableFlags + 6) & 0x20) != 0)
  {
    v5 = a3;
    v6 = [(UITableView *)self _delegateProxy];
    [v6 tableView:self didEndEditingRowAtIndexPath:v5];
  }
}

- (id)deleteConfirmationIndexPath
{
  v3 = self->_swipedIndexPath;
  if (![(UITableView *)self _isUsingPresentationValues])
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v5 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathBeforeShadowUpdates:v3];

      v3 = v5;
    }
  }

  return v3;
}

- (void)setDeleteConfirmationIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (![(UITableView *)self _isUsingPresentationValues])
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v7 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v8];

      v8 = v7;
    }
  }

  [(UISwipeActionController *)self->_swipeActionController swipeItemAtIndexPath:v8 configuration:0 direction:0 animated:v4 completion:0];
}

- (void)_scrollToTopHidingTableHeader:(BOOL)a3
{
  v3 = a3;
  [(UITableView *)self _contentInset];
  v6 = v5;
  v8 = v7;
  [(UITableView *)self heightForAutohidingTableHeaderView];

  [(UIScrollView *)self setContentOffset:v3 animated:v8, v9 - v6];
}

- (int64_t)_sectionForHeaderView:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  visibleHeaderViews = self->_visibleHeaderViews;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__UITableView__sectionForHeaderView___block_invoke;
  v9[3] = &unk_1E7123648;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)visibleHeaderViews enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __37__UITableView__sectionForHeaderView___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    v5 = result;
    result = [a2 integerValue];
    *(*(*(v5 + 40) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

- (int64_t)_sectionForFooterView:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  visibleFooterViews = self->_visibleFooterViews;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__UITableView__sectionForFooterView___block_invoke;
  v9[3] = &unk_1E7123648;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)visibleFooterViews enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __37__UITableView__sectionForFooterView___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    v5 = result;
    result = [a2 integerValue];
    *(*(*(v5 + 40) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

- (void)_setHeaderAndFooterViewsFloat:(BOOL)a3
{
  v3 = 0x4000000000;
  if (a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFBFFFFFFFFFLL | v3;
  [(UITableView *)self _updateVisibleHeadersAndFootersNow:1];
}

- (id)_cellReuseMapForType:(int)a3
{
  if ((a3 - 2) < 2)
  {
    reusableHeaderFooterViews = self->_reusableHeaderFooterViews;
    if (!reusableHeaderFooterViews)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = self->_reusableHeaderFooterViews;
      self->_reusableHeaderFooterViews = v5;

      reusableHeaderFooterViews = self->_reusableHeaderFooterViews;
    }

    goto LABEL_6;
  }

  if (a3 == 1)
  {
    reusableHeaderFooterViews = self->_reusableTableCells;
LABEL_6:
    v8 = reusableHeaderFooterViews;
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:5479 description:{@"attempt to access view reuse map for unknown view type %ld", a3}];

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_nibMapForType:(int)a3
{
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    v4 = 2368;
  }

  else
  {
    if (a3 != 1)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:5493 description:{@"attempt to access nib map for unknown view type %ld", a3}];
    }

    v4 = 2352;
  }

  v6 = (&self->super.super.super.super.isa + v4);
  v7 = *v6;
  if (!*v6)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = *v6;
    *v6 = v8;

    v7 = *v6;
  }

  return v7;
}

- (id)_nibExternalObjectsTablesForType:(int)a3
{
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    v4 = 2376;
  }

  else
  {
    if (a3 != 1)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:5508 description:{@"attempt to access nib external objects tables for unknown view type %ld", a3}];
    }

    v4 = 2360;
  }

  v6 = (&self->super.super.super.super.isa + v4);
  v7 = *v6;
  if (!*v6)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = *v6;
    *v6 = v8;

    v7 = *v6;
  }

  return v7;
}

- (id)_classMapForType:(int)a3
{
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    v4 = 2880;
  }

  else
  {
    if (a3 != 1)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:5523 description:{@"attempt to access cell class map for unknown view type %ld", a3}];
    }

    v4 = 2872;
  }

  v6 = (&self->super.super.super.super.isa + v4);
  v7 = *v6;
  if (!*v6)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = *v6;
    *v6 = v8;

    v7 = *v6;
  }

  return v7;
}

- (void)_handleUserInterfaceIdiomChange
{
  [(UITableView *)self _updateConstants];
  [(UITableView *)self _updateWrapperView];

  [(UITableView *)self _updateVerticalScrollIndicatorVisibility];
}

- (void)_updateConstantsForVisibleCellsAndHeaderFooterViews
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = [(UITableView *)self _preparedCells];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        [v8 _setConstants:self->_constants];
        [v8 _setMetricsAdapter:self->_metricsAdapter];
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [(NSMutableDictionary *)self->_visibleHeaderViews objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * j);
        if (_IsKindOfUITableViewHeaderFooterView(v14))
        {
          constants = self->_constants;
          v16 = v14;
          [v16 _setConstants:constants];
          [v16 _setMetricsAdapter:self->_metricsAdapter];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [(NSMutableDictionary *)self->_visibleFooterViews objectEnumerator];
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * k);
        if (_IsKindOfUITableViewHeaderFooterView(v22))
        {
          v23 = self->_constants;
          v24 = v22;
          [v24 _setConstants:v23];
          [v24 _setMetricsAdapter:self->_metricsAdapter];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v19);
  }
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v23.receiver = self;
  v23.super_class = UITableView;
  [(UIScrollView *)&v23 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  [(UITableView *)self _updateConstants];
  v6 = [(UIView *)self _screen];
  v7 = [v6 _userInterfaceIdiom];

  if (v7 == 3)
  {
    v8 = [(UIView *)self window];
    v9 = [v8 _screen];
    v10 = [v9 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFFFFFFFFFBLL | (4 * ([v10 integerValue] != 2));

    self->_currentIndexTitleIndex = [(UITableView *)self _currentSectionIndexTitleIndex];
    [(UITableView *)self _configureIndexOverlayIndicatorViewIfNecessary];
    [(UITableView *)self _configureIndexOverlaySelectionViewIfNecessary];
    v11 = [(UIView *)self window];
    v12 = [v11 _screen];
    v13 = [v12 _capabilityForKey:@"UIScreenCapabilityInteractionModelsKey"];
    v14 = [v13 integerValue];

    if ((v14 & 2) != 0)
    {
      if (!self->_upArrowLongPressGestureRecognizer)
      {
        v15 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__upArrowLongPress_];
        upArrowLongPressGestureRecognizer = self->_upArrowLongPressGestureRecognizer;
        self->_upArrowLongPressGestureRecognizer = v15;

        [(UIGestureRecognizer *)self->_upArrowLongPressGestureRecognizer setAllowedPressTypes:&unk_1EFE2D990];
        [(UIView *)self addGestureRecognizer:self->_upArrowLongPressGestureRecognizer];
      }

      if (!self->_downArrowLongPressGestureRecognizer)
      {
        v17 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__downArrowLongPress_];
        downArrowLongPressGestureRecognizer = self->_downArrowLongPressGestureRecognizer;
        self->_downArrowLongPressGestureRecognizer = v17;

        [(UIGestureRecognizer *)self->_downArrowLongPressGestureRecognizer setAllowedPressTypes:&unk_1EFE2D9A8];
        [(UIView *)self addGestureRecognizer:self->_downArrowLongPressGestureRecognizer];
      }

      if (!self->_upArrowTapGestureRecognizer)
      {
        v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__upArrowTap_];
        upArrowTapGestureRecognizer = self->_upArrowTapGestureRecognizer;
        self->_upArrowTapGestureRecognizer = v19;

        [(UITapGestureRecognizer *)self->_upArrowTapGestureRecognizer setAllowedPressTypes:&unk_1EFE2D9C0];
        [(UIView *)self addGestureRecognizer:self->_upArrowTapGestureRecognizer];
      }

      if (!self->_downArrowTapGestureRecognizer)
      {
        v21 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__downArrowTap_];
        downArrowTapGestureRecognizer = self->_downArrowTapGestureRecognizer;
        self->_downArrowTapGestureRecognizer = v21;

        [(UITapGestureRecognizer *)self->_downArrowTapGestureRecognizer setAllowedPressTypes:&unk_1EFE2D9D8];
        [(UIView *)self addGestureRecognizer:self->_downArrowTapGestureRecognizer];
      }
    }
  }

  else
  {
    [(UITableView *)self _tearDownIndexOverlayViews];
  }
}

- (void)_setUsesStaticScrollBar:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIScrollView *)self _staticScrollBar];
  v6 = v5;
  if (!v5 || v3)
  {
    v7 = [(UIScrollView *)self _staticScrollBar];

    v10.receiver = self;
    v10.super_class = UITableView;
    [(UIScrollView *)&v10 _setUsesStaticScrollBar:v3];
    if (v7 || !v3)
    {
      [(UITableView *)self _addIndexToAppropriateContainer];
      return;
    }
  }

  else
  {

    v10.receiver = self;
    v10.super_class = UITableView;
    [(UIScrollView *)&v10 _setUsesStaticScrollBar:0];
  }

  [(UITableView *)self _updateWrapperView];
  [(UITableView *)self _addIndexToAppropriateContainer];
  [(UITableView *)self _updateWrapperFrame];
  rowData = self->_rowData;
  [(UIView *)self bounds];
  [(UITableView *)self _widthForContentInRect:?];
  if (rowData)
  {
    rowData->_tableViewWidth = v9;
  }

  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
}

- (void)_updateListEnvironmentTraitOverrideWithSectionContentInsets:(UIEdgeInsets)a3
{
  if (fmax(a3.left, a3.right) <= 0.0 || ((*(&self->_tableFlags + 1) >> 45) & 3uLL) - 1 >= 2)
  {
    v5 = (*(&self->_tableFlags + 1) >> 45) & 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = _UIListEnvironmentFromTableViewStyle(v5);
  v7 = [(UIView *)self _internalTraitOverrides];
  [v7 setListEnvironment:v6];
}

- (UITableView)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
  *(&self->_tableFlags + 2) |= 0x8000000000uLL;
  v10.receiver = self;
  v10.super_class = UITableView;
  v5 = [(UIScrollView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    [objc_opt_class() _ensureInitializeSystemAppearanceModifications];
    *(&v5->_tableFlags + 1) = *(&v5->_tableFlags + 1) & 0xFFFF9FFFFFFFFFFFLL | (([(UITableView *)v5 _mappedStyle:style]& 3) << 45);
    [(UITableView *)v5 _setupTableViewCommon];
    if (((*(&v5->_tableFlags + 1) >> 45) & 3uLL) - 1 <= 1)
    {
      v6 = [(UITableView *)v5 _defaultBackgroundView];
      backgroundView = v5->_backgroundView;
      v5->_backgroundView = v6;
    }

    [(UITableView *)v5 setAllowsSelection:1];
    [(UIView *)v5 setMultipleTouchEnabled:0];
    [(UIScrollView *)v5 _setAlwaysBounceVertical:1];
    [(UITableView *)v5 _setupDefaultHeights];
    [(UITableView *)v5 _scheduleAdjustExtraSeparators];
    *(&v5->_tableFlags + 2) &= ~0x8000000000uLL;
    v8 = v5;
  }

  return v5;
}

void __61__UITableView__ensureInitializeSystemAppearanceModifications__block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) appearance];
  [v2 _setSeparatorsDrawInVibrantLightModeUIAppearance:MEMORY[0x1E695E110]];

  v3 = *(a1 + 32);
  v7[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 appearanceMatchingProperties:&unk_1EFE34A68 whenContainedInInstancesOfClasses:v4];

  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];

  [v5 _setSeparatorsDrawInVibrantLightModeUIAppearance:MEMORY[0x1E695E118]];
}

- (void)_applyAppearanceDefaults
{
  p_tableFlags = &self->_tableFlags;
  v3 = *(&self->_tableFlags + 2);
  *(&self->_tableFlags + 2) = v3 | 0x20000000000;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__UITableView__applyAppearanceDefaults__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView _performSystemAppearanceModifications:v4];
  *(p_tableFlags + 2) = *(p_tableFlags + 2) & 0xFFFFFDFFFFFFFFFFLL | (((v3 >> 41) & 1) << 41);
}

void __39__UITableView__applyAppearanceDefaults__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 3088);
  v3 = *(a1 + 32);
  v4 = v3[398];
  v9 = v2;
  if ((v4 & 0x40000000000) != 0)
  {
    if ((v4 & 0x100000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [(UITableMetricsAdapter *)v2 tableBackgroundColor];
    [*(a1 + 32) setBackgroundColor:v6];

    v2 = v9;
    v3 = *(a1 + 32);
    v4 = v3[398];
    if ((v4 & 0x100000000000) != 0)
    {
LABEL_3:
      if ((v4 & 0x400000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v7 = [(UITableMetricsAdapter *)v2 tableSeparatorColor];
  [*(a1 + 32) setSeparatorColor:v7];

  v2 = v9;
  v3 = *(a1 + 32);
  v4 = v3[398];
  if ((v4 & 0x400000000000) != 0)
  {
LABEL_4:
    if ((v4 & 0x200000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  if (v2)
  {
    if ((v2[19] & 2) == 0)
    {
      [(UITableMetricsAdapter *)v2 _updateSharedSeparatorMetrics];
      v2 = v9;
      v3 = *(a1 + 32);
    }

    v8 = v2[29];
  }

  else
  {
    v8 = 0;
  }

  [v3 setSeparatorStyle:v8];
  v2 = v9;
  if ((*(*(a1 + 32) + 3184) & 0x200000000000) == 0)
  {
LABEL_5:
    v5 = [(UITableMetricsAdapter *)v2 tableSeparatorVisualEffect];
    [*(a1 + 32) setSeparatorEffect:v5];

    v2 = v9;
  }

LABEL_6:
}

- (void)_populateArchivedSubviews:(id)a3
{
  v44[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = UITableView;
  [(UIScrollView *)&v38 _populateArchivedSubviews:v4];
  v44[0] = self->_topSeparator;
  v44[1] = self->_index;
  v44[2] = self->_countLabel;
  v44[3] = self->_backgroundView;
  v5 = 0;
  v44[4] = self->_wrapperView;
  do
  {
    if (v44[v5])
    {
      [v4 removeObject:?];
    }

    ++v5;
  }

  while (v5 != 5);
  v6 = &v42;
  v42 = self->_visibleCells;
  v43 = self->_extraSeparators;
  v7 = 1;
  do
  {
    v8 = v7;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = *v6;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v4 removeObject:*(*(&v34 + 1) + 8 * i)];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v11);
    }

    v7 = 0;
    v6 = &v43;
  }

  while ((v8 & 1) != 0);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [(NSMutableDictionary *)self->_visibleHeaderViews objectEnumerator];
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v4 removeObject:*(*(&v30 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v16);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = [(NSMutableDictionary *)self->_visibleFooterViews objectEnumerator];
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [v4 removeObject:*(*(&v26 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v21);
  }

  for (m = 1; m != -1; --m)
  {
  }

  for (n = 4; n != -1; --n)
  {
  }
}

- (UITableView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  *(&self->_tableFlags + 2) |= 0x8000000000uLL;
  v71.receiver = self;
  v71.super_class = UITableView;
  v5 = [(UIScrollView *)&v71 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_84;
  }

  [objc_opt_class() _ensureInitializeSystemAppearanceModifications];
  v6 = @"UITableViewStyle";
  if ([(NSCoder *)v4 containsValueForKey:@"UITableViewStyle"]|| (v6 = @"UIStyle", [(NSCoder *)v4 containsValueForKey:@"UIStyle"]))
  {
    v7 = [(NSCoder *)v4 decodeIntegerForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 397) = *(v5 + 397) & 0xFFFF9FFFFFFFFFFFLL | (([v5 _mappedStyle:v7] & 3) << 45);
  [v5 _setupTableViewCommon];
  if ([(NSCoder *)v4 decodeBoolForKey:@"UIUseCustomBackgroundView"])
  {
    v8 = [(NSCoder *)v4 decodeObjectForKey:@"UIBackgroundView"];
    v9 = *(v5 + 310);
    *(v5 + 310) = v8;

    *(v5 + 398) |= 0x80000000000uLL;
  }

  else if (((*(v5 + 397) >> 45) & 3uLL) - 1 <= 1)
  {
    v10 = [v5 _defaultBackgroundView];
    v11 = *(v5 + 310);
    *(v5 + 310) = v10;
  }

  [v5 _configureBackgroundView];
  if (!dyld_program_sdk_at_least())
  {
    *(v5 + 397) &= 0xFFF8FFFFFFFFFFFFLL;
    if ([(NSCoder *)v4 containsValueForKey:@"UISeparatorStyleIOS5AndLater"])
    {
      v12 = @"UISeparatorStyleIOS5AndLater";
    }

    else
    {
      if (![(NSCoder *)v4 containsValueForKey:@"UISeparatorStyle"])
      {
        goto LABEL_23;
      }

      v12 = @"UISeparatorStyle";
    }

    goto LABEL_22;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISeparatorStyleIOS9AndLater"])
  {
    v12 = @"UISeparatorStyleIOS9AndLater";
LABEL_22:
    v15 = [(NSCoder *)v4 decodeIntegerForKey:v12];
    v16 = *(v5 + 398) | 0x400000000000;
    *(v5 + 397) = *(v5 + 397) & 0xFFF8FFFFFFFFFFFFLL | ((v15 & 7) << 48);
    *(v5 + 398) = v16;
    goto LABEL_23;
  }

  v13 = *(v5 + 386);
  if (v13)
  {
    if ((*(v13 + 152) & 2) == 0)
    {
      [(UITableMetricsAdapter *)*(v5 + 386) _updateSharedSeparatorMetrics];
    }

    v14 = (*(v13 + 232) & 7) << 48;
  }

  else
  {
    v14 = 0;
  }

  *(v5 + 397) = *(v5 + 397) & 0xFFF8FFFFFFFFFFFFLL | v14;
LABEL_23:
  _tagObjectForSelector(v5, sel_setSeparatorStyle_);
  v17 = *(v5 + 397);
  if ((v17 & 0x7000000000000uLL) >= 0x2000000000001)
  {
    *(v5 + 397) = v17 & 0xFFF8FFFFFFFFFFFFLL | 0x1000000000000;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIPrefetchingEnabled"])
  {
    v18 = [(NSCoder *)v4 decodeBoolForKey:@"UIPrefetchingEnabled"];
    v19 = 0x1000000;
    if (!v18)
    {
      v19 = 0;
    }

    *(v5 + 399) = *(v5 + 399) & 0xFFFFFFFFFEFFFFFFLL | v19;
  }

  [v5 _setupDefaultHeights];
  if ([(NSCoder *)v4 containsValueForKey:@"UIRowHeight"])
  {
    [(NSCoder *)v4 decodeFloatForKey:@"UIRowHeight"];
    *(v5 + 271) = v20;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISectionHeaderHeight"])
  {
    [(NSCoder *)v4 decodeFloatForKey:@"UISectionHeaderHeight"];
    *(v5 + 272) = v21;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISectionFooterHeight"])
  {
    [(NSCoder *)v4 decodeFloatForKey:@"UISectionFooterHeight"];
    *(v5 + 273) = v22;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIEstimatedRowHeight"])
  {
    [(NSCoder *)v4 decodeFloatForKey:@"UIEstimatedRowHeight"];
    *(v5 + 274) = v23;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIEstimatedSectionHeaderHeight"])
  {
    [(NSCoder *)v4 decodeFloatForKey:@"UIEstimatedSectionHeaderHeight"];
    *(v5 + 275) = v24;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIEstimatedSectionFooterHeight"])
  {
    [(NSCoder *)v4 decodeFloatForKey:@"UIEstimatedSectionFooterHeight"];
    *(v5 + 276) = v25;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIFillerRowHeight"])
  {
    [(NSCoder *)v4 decodeDoubleForKey:@"UIFillerRowHeight"];
    *(v5 + 402) = v26;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISectionHeaderTopPadding"])
  {
    [(NSCoder *)v4 decodeDoubleForKey:@"UISectionHeaderTopPadding"];
    *(v5 + 403) = v27;
  }

  *(v5 + 398) |= 0x1000uLL;
  if ([(NSCoder *)v4 containsValueForKey:@"UIAllowsSelection"])
  {
    v28 = [(NSCoder *)v4 decodeBoolForKey:@"UIAllowsSelection"];
    v29 = 4096;
    if (!v28)
    {
      v29 = 0;
    }

    v30 = *(v5 + 398) & 0xFFFFFFFFFFFFEFFFLL | v29;
    *(v5 + 398) = v30;
    if ((v30 & 0x1000) != 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v30 = *(v5 + 398);
    if ((v30 & 0x1000) != 0)
    {
LABEL_49:
      if ([(NSCoder *)v4 decodeBoolForKey:@"UIAllowsMultipleSelection"])
      {
        v31 = 0x4000;
      }

      else
      {
        v31 = 0;
      }

      v30 = *(v5 + 398);
      goto LABEL_55;
    }
  }

  v31 = 0;
LABEL_55:
  *(v5 + 398) = v30 & 0xFFFFFFFFFFFFBFFFLL | v31;
  v32 = [(NSCoder *)v4 decodeBoolForKey:@"UIAllowsSelectionDuringEditing"];
  v33 = 0x2000;
  if (!v32)
  {
    v33 = 0;
  }

  v34 = *(v5 + 398) & 0xFFFFFFFFFFFFDFFFLL | v33;
  *(v5 + 398) = v34;
  if (v32)
  {
    if ([(NSCoder *)v4 decodeBoolForKey:@"UIAllowsMultipleSelectionDuringEditing"])
    {
      v35 = 0x8000;
    }

    else
    {
      v35 = 0;
    }

    v34 = *(v5 + 398);
  }

  else
  {
    v35 = 0;
  }

  *(v5 + 398) = v34 & 0xFFFFFFFFFFFF7FFFLL | v35;
  [v5 _updateMultiSelectControllerIfNeeded];
  v36 = [(NSCoder *)v4 decodeBoolForKey:@"UICellLayoutMarginsFollowReadableWidth"];
  v37 = 0x100000;
  if (!v36)
  {
    v37 = 0;
  }

  *(v5 + 399) = *(v5 + 399) & 0xFFFFFFFFFFEFFFFFLL | v37;
  if ([(NSCoder *)v4 containsValueForKey:@"UIInsetsContentViewsToSafeArea"])
  {
    v38 = [(NSCoder *)v4 decodeBoolForKey:@"UIInsetsContentViewsToSafeArea"];
    v39 = 0x100000000;
    if (!v38)
    {
      v39 = 0;
    }

    *(v5 + 399) = *(v5 + 399) & 0xFFFFFFFEFFFFFFFFLL | v39;
  }

  v40 = [(NSCoder *)v4 decodeObjectForKey:@"UITableHeaderView"];
  v41 = *(v5 + 316);
  *(v5 + 316) = v40;

  v42 = [(NSCoder *)v4 decodeObjectForKey:@"UITableFooterView"];
  v43 = *(v5 + 317);
  *(v5 + 317) = v42;

  v44 = [(NSCoder *)v4 decodeObjectForKey:@"UISeparatorColor"];
  v45 = *(v5 + 332);
  *(v5 + 332) = v44;

  if (*(v5 + 332))
  {
    *(v5 + 398) |= 0x100000000000uLL;
    v46 = *(v5 + 332);
    v47 = [(UITableMetricsAdapter *)*(v5 + 386) tableSeparatorColor];
    LOBYTE(v46) = [v46 isEqual:v47];

    if ((v46 & 1) == 0)
    {
      _tagObjectForSelector(v5, sel_setSeparatorColor_);
    }
  }

  else
  {
    v48 = [(UITableMetricsAdapter *)*(v5 + 386) tableSeparatorColor];
    v49 = *(v5 + 332);
    *(v5 + 332) = v48;
  }

  [v5 _resetDarkenedSeparatorColor];
  v50 = [(NSCoder *)v4 decodeObjectForKey:@"UITableViewCellPrototypeNibs"];
  v51 = *(v5 + 294);
  *(v5 + 294) = v50;

  v52 = [(NSCoder *)v4 decodeObjectForKey:@"UITableViewCellPrototypeNibExternalObjects"];
  v53 = mutableDictionaryByTransformingLeafDictionariesToWeakValued(v52);
  v54 = *(v5 + 295);
  *(v5 + 295) = v53;

  v55 = [(NSCoder *)v4 decodeObjectForKey:@"UITableViewHeaderFooterPrototypeNibs"];
  v56 = *(v5 + 296);
  *(v5 + 296) = v55;

  v57 = [(NSCoder *)v4 decodeObjectForKey:@"UITableViewHeaderFooterPrototypeNibExternalObjects"];
  v58 = mutableDictionaryByTransformingLeafDictionariesToWeakValued(v57);
  v59 = *(v5 + 297);
  *(v5 + 297) = v58;

  v60 = [(NSCoder *)v4 decodeObjectForKey:@"UISectionIndexColor"];
  v61 = *(v5 + 338);
  *(v5 + 338) = v60;

  v62 = [(NSCoder *)v4 decodeObjectForKey:@"UISectionIndexBackgroundColor"];
  v63 = *(v5 + 339);
  *(v5 + 339) = v62;

  v64 = [(NSCoder *)v4 decodeObjectForKey:@"UISectionIndexTrackingBackgroundColor"];
  v65 = *(v5 + 340);
  *(v5 + 340) = v64;

  if ([(NSCoder *)v4 containsValueForKey:@"UISectionIndexMinimumDisplayRowCount"])
  {
    *(v5 + 326) = [(NSCoder *)v4 decodeIntegerForKey:@"UISectionIndexMinimumDisplayRowCount"];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISeparatorInset"])
  {
    [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UISeparatorInset"];
    *(v5 + 363) = v66;
    *(v5 + 364) = v67;
    *(v5 + 365) = v68;
    *(v5 + 366) = v69;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISeparatorInsetReference"])
  {
    [v5 setSeparatorInsetReference:{-[NSCoder decodeIntegerForKey:](v4, "decodeIntegerForKey:", @"UISeparatorInsetReference"}];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISpringLoaded"])
  {
    [v5 setSpringLoaded:{-[NSCoder decodeBoolForKey:](v4, "decodeBoolForKey:", @"UISpringLoaded"}];
  }

  if ([(NSCoder *)v4 decodeBoolForKey:@"UIUsingCustomLayoutMargins"])
  {
    *(v5 + 399) |= 0x1000uLL;
  }

  *(v5 + 398) &= ~0x8000000000uLL;
  _tagObjectForBackgroundColorIfNecessary(v5);
LABEL_84:

  return v5;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = UITableView;
  [&v3 awakeFromNib];
  _tagObjectForBackgroundColorIfNecessary(self);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(UIScrollView *)self _setShowsVerticalScrollIndicatorFlag:(*(&self->_tableFlags + 2) >> 28) & 1];
  [(UIScrollView *)self _setShowsHorizontalScrollIndicatorFlag:(*(&self->_tableFlags + 2) >> 27) & 1];
  v30.receiver = self;
  v30.super_class = UITableView;
  [(UIScrollView *)&v30 encodeWithCoder:v4];
  [(UITableView *)self _updateShowScrollIndicatorsFlag];
  [v4 encodeInteger:(*(&self->_tableFlags + 1) >> 45) & 3 forKey:@"UITableViewStyle"];
  [v4 encodeInteger:(*(&self->_tableFlags + 1) & 0x600000000000) != 0 forKey:@"UIStyle"];
  v5 = *(&self->_tableFlags + 7) & 7;
  if (v5)
  {
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1 && v5 == 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5;
    }

    [v4 encodeInteger:v9 forKey:@"UISeparatorStyle"];
    [v4 encodeInteger:*(&self->_tableFlags + 7) & 7 forKey:@"UISeparatorStyleIOS5AndLater"];
    v10 = *(&self->_tableFlags + 7) & 7;
  }

  else
  {
    v10 = 0;
  }

  metricsAdapter = self->_metricsAdapter;
  if (metricsAdapter)
  {
    if ((*&metricsAdapter->_adapterFlags & 2) == 0)
    {
      [(UITableMetricsAdapter *)self->_metricsAdapter _updateSharedSeparatorMetrics];
    }

    tableSeparatorStyle = metricsAdapter->_tableSeparatorStyle;
  }

  else
  {
    tableSeparatorStyle = 0;
  }

  if (v10 != tableSeparatorStyle)
  {
    [v4 encodeInteger:*(&self->_tableFlags + 7) & 7 forKey:@"UISeparatorStyleIOS9AndLater"];
  }

  [v4 encodeBool:(*(&self->_tableFlags + 3) >> 24) & 1 forKey:@"UIPrefetchingEnabled"];
  rowHeight = self->_rowHeight;
  *&rowHeight = rowHeight;
  [v4 encodeFloat:@"UIRowHeight" forKey:rowHeight];
  sectionHeaderHeight = self->_sectionHeaderHeight;
  *&sectionHeaderHeight = sectionHeaderHeight;
  [v4 encodeFloat:@"UISectionHeaderHeight" forKey:sectionHeaderHeight];
  sectionFooterHeight = self->_sectionFooterHeight;
  *&sectionFooterHeight = sectionFooterHeight;
  [v4 encodeFloat:@"UISectionFooterHeight" forKey:sectionFooterHeight];
  estimatedRowHeight = self->_estimatedRowHeight;
  *&estimatedRowHeight = estimatedRowHeight;
  [v4 encodeFloat:@"UIEstimatedRowHeight" forKey:estimatedRowHeight];
  estimatedSectionHeaderHeight = self->_estimatedSectionHeaderHeight;
  *&estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
  [v4 encodeFloat:@"UIEstimatedSectionHeaderHeight" forKey:estimatedSectionHeaderHeight];
  estimatedSectionFooterHeight = self->_estimatedSectionFooterHeight;
  *&estimatedSectionFooterHeight = estimatedSectionFooterHeight;
  [v4 encodeFloat:@"UIEstimatedSectionFooterHeight" forKey:estimatedSectionFooterHeight];
  [v4 encodeDouble:@"UIFillerRowHeight" forKey:self->_fillerRowHeight];
  [v4 encodeDouble:@"UISectionHeaderTopPadding" forKey:self->_sectionHeaderTopPadding];
  v19 = *(&self->_tableFlags + 2);
  if ((v19 & 0x1000) != 0)
  {
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [v4 encodeBool:0 forKey:@"UIAllowsSelection"];
    v19 = *(&self->_tableFlags + 2);
    if ((v19 & 0x2000) == 0)
    {
LABEL_18:
      if ((v19 & 0x4000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  [v4 encodeBool:1 forKey:@"UIAllowsSelectionDuringEditing"];
  v19 = *(&self->_tableFlags + 2);
  if ((v19 & 0x4000) == 0)
  {
LABEL_19:
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_31:
  [v4 encodeBool:1 forKey:@"UIAllowsMultipleSelection"];
  if ((*(&self->_tableFlags + 2) & 0x8000) != 0)
  {
LABEL_20:
    [v4 encodeBool:1 forKey:@"UIAllowsMultipleSelectionDuringEditing"];
  }

LABEL_21:
  v20 = *(&self->_tableFlags + 3);
  if ((v20 & 0x100000) != 0)
  {
    [v4 encodeBool:1 forKey:@"UICellLayoutMarginsFollowReadableWidth"];
    v20 = *(&self->_tableFlags + 3);
  }

  [v4 encodeBool:HIDWORD(v20) & 1 forKey:@"UIInsetsContentViewsToSafeArea"];
  tableHeaderView = self->_tableHeaderView;
  if (tableHeaderView)
  {
    [v4 encodeObject:tableHeaderView forKey:@"UITableHeaderView"];
  }

  tableFooterView = self->_tableFooterView;
  if (tableFooterView)
  {
    [v4 encodeObject:tableFooterView forKey:@"UITableFooterView"];
  }

  if ((*(&self->_tableFlags + 13) & 0x60) != 0)
  {
    +[UIColor tableSeparatorDarkColor];
  }

  else
  {
    +[UIColor tableSeparatorLightColor];
  }
  v23 = ;
  separatorColor = self->_separatorColor;
  if (separatorColor != v23)
  {
    [v4 encodeObject:separatorColor forKey:@"UISeparatorColor"];
  }

  if ([(NSMutableDictionary *)self->_nibMap count])
  {
    [v4 encodeObject:self->_nibMap forKey:@"UITableViewCellPrototypeNibs"];
  }

  if ([(NSMutableDictionary *)self->_nibExternalObjectsTables count])
  {
    [v4 encodeObject:self->_nibExternalObjectsTables forKey:@"UITableViewCellPrototypeNibExternalObjects"];
  }

  if ([(NSMutableDictionary *)self->_headerFooterNibMap count])
  {
    [v4 encodeObject:self->_headerFooterNibMap forKey:@"UITableViewHeaderFooterPrototypeNibs"];
  }

  if ([(NSMutableDictionary *)self->_headerFooterNibExternalObjectsTables count])
  {
    [v4 encodeObject:self->_headerFooterNibExternalObjectsTables forKey:@"UITableViewHeaderFooterPrototypeNibExternalObjects"];
  }

  if ((*(&self->_tableFlags + 21) & 8) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIUseCustomBackgroundView"];
    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [v4 encodeObject:backgroundView forKey:@"UIBackgroundView"];
    }
  }

  indexColor = self->_indexColor;
  if (indexColor)
  {
    [v4 encodeObject:indexColor forKey:@"UISectionIndexColor"];
  }

  indexBackgroundColor = self->_indexBackgroundColor;
  if (indexBackgroundColor)
  {
    [v4 encodeObject:indexBackgroundColor forKey:@"UISectionIndexBackgroundColor"];
  }

  indexTrackingBackgroundColor = self->_indexTrackingBackgroundColor;
  if (indexTrackingBackgroundColor)
  {
    [v4 encodeObject:indexTrackingBackgroundColor forKey:@"UISectionIndexTrackingBackgroundColor"];
  }

  sectionIndexMinimumDisplayRowCount = self->_sectionIndexMinimumDisplayRowCount;
  if (sectionIndexMinimumDisplayRowCount)
  {
    [v4 encodeInteger:sectionIndexMinimumDisplayRowCount forKey:@"UISectionIndexMinimumDisplayRowCount"];
  }

  if (self->_separatorInset.left != -1.0 || self->_separatorInset.right != -1.0)
  {
    [v4 encodeUIEdgeInsets:@"UISeparatorInset" forKey:self->_separatorInset.top];
  }

  [v4 encodeInteger:-[UITableView separatorInsetReference](self forKey:{"separatorInsetReference"), @"UISeparatorInsetReference"}];
  if ([(UITableView *)self isSpringLoaded])
  {
    [v4 encodeBool:1 forKey:@"UISpringLoaded"];
  }

  if ((*(&self->_tableFlags + 25) & 0x10) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIUsingCustomLayoutMargins"];
  }
}

- (void)dealloc
{
  v10[4] = *MEMORY[0x1E69E9840];
  swipeActionController = self->_swipeActionController;
  self->_swipeActionController = 0;

  *(&self->_tableFlags + 3) |= 0x8000uLL;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_setAssociatedObject(WeakRetained, &self->super.super.super.super.isa + 2, 0, 1);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v10[0] = @"UIContentSizeCategoryDidChangeNotification";
  v10[1] = 0x1EFB8EEB0;
  v10[2] = @"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification";
  v10[3] = @"UIApplicationDidReceiveMemoryWarningNotification";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  [(NSNotificationCenter *)v6 _uiRemoveObserver:v7 names:?];

  if (self->_reorderingSupport)
  {
    [(UITableView *)self _stopAutoscrollTimer];
  }

  tableHeaderBackgroundView = self->_tableHeaderBackgroundView;
  self->_tableHeaderBackgroundView = 0;

  if (self->_indexOverlayTimer)
  {
    [(UITableView *)self _stopIndexOverlayTimer];
  }

  if (self->_indexOverlayIndicatorEventIgnoreTimer)
  {
    [(UITableView *)self _stopIgnoringWheelEventsOnIndexOverlayIndicator:0];
  }

  [(UITableView *)self _tearDownIndexOverlayViews];
  v9.receiver = self;
  v9.super_class = UITableView;
  [(UIScrollView *)&v9 dealloc];
}

- (void)setDelaysContentTouches:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UITableView;
  [(UIScrollView *)&v5 setDelaysContentTouches:?];
  if (dyld_program_sdk_at_least())
  {
    [(UIScrollView *)self->_wrapperView setDelaysContentTouches:v3];
  }
}

- (int64_t)_popoverControllerStyle
{
  v2 = [(UIView *)self _viewControllerForAncestor];
  v3 = [v2 _popoverController];
  v4 = [v3 _popoverControllerStyle];

  return v4;
}

- (BOOL)_isInModalViewController
{
  v2 = [(UIView *)self _viewControllerForAncestor];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  do
  {
    v4 = v3[14];
    v5 = v4 != 0;
    if (v4)
    {
      break;
    }

    v6 = [v3 parentViewController];

    v3 = v6;
  }

  while (v6);

  return v5;
}

- (void)setDataSource:(id)dataSource
{
  v4 = dataSource;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = dyld_program_sdk_at_least();
  v6 = v4;
  if ((v5 & 1) == 0)
  {
    v7 = [v4 allowsWeakReference];
    v6 = v4;
    if ((v7 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__UITableView_setDataSource___block_invoke;
      block[3] = &unk_1E70F35B8;
      v77 = v4;
      v78 = self;
      if (setDataSource__once_1 != -1)
      {
        dispatch_once(&setDataSource__once_1, block);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v10 = WeakRetained;
  if (WeakRetained != v8 || !v8 && (*(&self->_tableFlags + 2) & 2) != 0)
  {
    if (WeakRetained)
    {
      objc_setAssociatedObject(WeakRetained, &self->super.super.super.super.isa + 2, 0, 1);
    }

    objc_storeWeak(&self->_dataSource, v8);
    v11 = v8;
    v12 = [(UITableView *)self dataSource];
    v13 = v12;
    if (v11 == v12)
    {
      v15 = [(UITableView *)self allowsWeakReference];

      v14 = (v11 != 0) << 17;
      if (v11 && v15)
      {
        objc_initWeak(&location, self);
        v16 = [_UIWeakHelper alloc];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __29__UITableView_setDataSource___block_invoke_581;
        v73[3] = &unk_1E70F5A28;
        objc_copyWeak(&v74, &location);
        v17 = [(_UIWeakHelper *)v16 initWithDeallocationBlock:v73];
        objc_setAssociatedObject(v11, &self->super.super.super.super.isa + 2, v17, 1);

        objc_destroyWeak(&v74);
        objc_destroyWeak(&location);
        v14 = 0x20000;
      }
    }

    else
    {

      v14 = (v11 != 0) << 17;
    }

    p_tableFlags = &self->_tableFlags;
    *&self->_tableFlags = *&self->_tableFlags & 0xFFFFFFFFFFFDFFFFLL | v14;
    *&self->_tableFlags = *&self->_tableFlags & 0xFFFFFFFFFFFFFFFELL | objc_opt_respondsToSelector() & 1;
    v19 = objc_opt_respondsToSelector();
    v20 = 2;
    if ((v19 & 1) == 0)
    {
      v20 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFFFDLL | v20;
    v21 = objc_opt_respondsToSelector();
    v22 = 4;
    if ((v21 & 1) == 0)
    {
      v22 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFFFBLL | v22;
    v23 = objc_opt_respondsToSelector();
    v24 = 8;
    if ((v23 & 1) == 0)
    {
      v24 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFFF7 | v24;
    v25 = objc_opt_respondsToSelector();
    v26 = 16;
    if ((v25 & 1) == 0)
    {
      v26 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFFEFLL | v26;
    v27 = objc_opt_respondsToSelector();
    v28 = 64;
    if ((v27 & 1) == 0)
    {
      v28 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFFBFLL | v28;
    v29 = objc_opt_respondsToSelector();
    v30 = 128;
    if ((v29 & 1) == 0)
    {
      v30 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFF7FLL | v30;
    v31 = objc_opt_respondsToSelector();
    v32 = 256;
    if ((v31 & 1) == 0)
    {
      v32 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFEFFLL | v32;
    v33 = objc_opt_respondsToSelector();
    v34 = 512;
    if ((v33 & 1) == 0)
    {
      v34 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFDFFLL | v34;
    v35 = objc_opt_respondsToSelector();
    v36 = 0x4000000;
    if ((v35 & 1) == 0)
    {
      v36 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFBFFFFFFLL | v36;
    v37 = objc_opt_respondsToSelector();
    v38 = 1024;
    if ((v37 & 1) == 0)
    {
      v38 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFBFFLL | v38;
    v39 = objc_opt_respondsToSelector();
    v40 = 2048;
    if ((v39 & 1) == 0)
    {
      v40 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFF7FFLL | v40;
    v41 = objc_opt_respondsToSelector();
    v42 = 4096;
    if ((v41 & 1) == 0)
    {
      v42 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFEFFFLL | v42;
    v43 = objc_opt_respondsToSelector();
    v44 = 0x2000;
    if ((v43 & 1) == 0)
    {
      v44 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFDFFFLL | v44;
    v45 = objc_opt_respondsToSelector();
    v46 = 0x4000;
    if ((v45 & 1) == 0)
    {
      v46 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFBFFFLL | v46;
    v47 = objc_opt_respondsToSelector();
    v48 = 0x8000;
    if ((v47 & 1) == 0)
    {
      v48 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFF7FFFLL | v48;
    v49 = objc_opt_respondsToSelector();
    v50 = 0x10000;
    if ((v49 & 1) == 0)
    {
      v50 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFEFFFFLL | v50;
    v51 = objc_opt_respondsToSelector();
    v52 = 32;
    if ((v51 & 1) == 0)
    {
      v52 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFFFFDFLL | v52;
    v53 = objc_opt_respondsToSelector();
    v54 = 0x1000000000;
    if ((v53 & 1) == 0)
    {
      v54 = 0;
    }

    *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFEFFFFFFFFFLL | v54;
    if (dyld_program_sdk_at_least() && (*(&self->_tableFlags + 28) & 0x10) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v55 = v11;
      v56 = [v55 _subclassOverridesMethodWithSelector:sel_tableView_titleForHeaderInSection_];
      v57 = *p_tableFlags & 8;
      if (!v56)
      {
        v57 = 0;
      }

      *p_tableFlags = v57 | *p_tableFlags & 0xFFFFFFFFFFFFFFF7;
      v58 = [v55 _subclassOverridesMethodWithSelector:sel_tableView_titleForFooterInSection_];
      v59 = *p_tableFlags & 0x10;
      if (!v58)
      {
        v59 = 0;
      }

      *p_tableFlags = v59 | *p_tableFlags & 0xFFFFFFFFFFFFFFEFLL;
      v60 = [v55 _subclassOverridesMethodWithSelector:sel_tableView_moveRowAtIndexPath_toIndexPath_];
      v61 = *p_tableFlags & 0x4000000;
      if (!v60)
      {
        v61 = 0;
      }

      *p_tableFlags = v61 | *p_tableFlags & 0xFFFFFFFFFBFFFFFFLL;
      v62 = [v55 _subclassOverridesMethodWithSelector:sel_tableView_canMoveRowAtIndexPath_];
      v63 = *p_tableFlags & 0x800;
      if (!v62)
      {
        v63 = 0;
      }

      *p_tableFlags = v63 | *p_tableFlags & 0xFFFFFFFFFFFFF7FFLL;
      v64 = [v55 _subclassOverridesMethodWithSelector:sel_tableView_canEditRowAtIndexPath_];
      v65 = *p_tableFlags & 0x400;
      if (!v64)
      {
        v65 = 0;
      }

      *p_tableFlags = v65 | *p_tableFlags & 0xFFFFFFFFFFFFFBFFLL;
      v66 = [v55 _subclassOverridesMethodWithSelector:sel_tableView_commitEditingStyle_forRowAtIndexPath_];
      v67 = *p_tableFlags & 0x40;
      if (!v66)
      {
        v67 = 0;
      }

      *p_tableFlags = v67 | *p_tableFlags & 0xFFFFFFFFFFFFFFBFLL;
      v68 = [v55 _subclassOverridesMethodWithSelector:sel_sectionIndexTitlesForTableView_];
      v69 = *p_tableFlags & 0x80;
      if (!v68)
      {
        v69 = 0;
      }

      *p_tableFlags = v69 | *p_tableFlags & 0xFFFFFFFFFFFFFF7FLL;
      v70 = [v55 _subclassOverridesMethodWithSelector:sel_tableView_sectionForSectionIndexTitle_atIndex_];

      v71 = *p_tableFlags & 0x200;
      if (!v70)
      {
        v71 = 0;
      }

      *p_tableFlags = v71 | *p_tableFlags & 0xFFFFFFFFFFFFFDFFLL;
    }

    *(&self->_tableFlags + 1) |= 0x800000000000000uLL;
    [(UITableView *)self _setRowCount:0x7FFFFFFFFFFFFFFFLL];
    [(UITableView *)self _createOrUninstallDragAndDropControllersIfNeeded];
    v72 = [(UITableView *)self _identityTracker:0];
    [(_UIIndexPathIdentityTracker *)v72 reset];

    [(UIContextMenuInteraction *)self->_contextMenuInteraction _retargetDismissingMenuWithInternalIdentifier:0 toPreview:0 force:1];
  }
}

void __29__UITableView_setDataSource___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UITableViewCodingKey_style_Yukon_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as dataSource. This will be a hard crash in the future. Offending object: %@ hosting object: %@", &v5, 0x16u);
  }
}

void __29__UITableView_setDataSource___block_invoke_581(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained dataSource];
    if (!v2)
    {
      [v3 setDataSource:0];
    }

    WeakRetained = v3;
  }
}

- (id)_dataSourceActual
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)setPrefetchDataSource:(id)prefetchDataSource
{
  v4 = prefetchDataSource;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = dyld_program_sdk_at_least();
  v6 = v4;
  if ((v5 & 1) == 0)
  {
    v7 = [v4 allowsWeakReference];
    v6 = v4;
    if ((v7 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__UITableView_setPrefetchDataSource___block_invoke;
      block[3] = &unk_1E70F35B8;
      v27 = v4;
      v28 = self;
      if (setPrefetchDataSource__once_0 != -1)
      {
        dispatch_once(&setPrefetchDataSource__once_0, block);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_prefetchDataSource);
  v10 = WeakRetained;
  if (WeakRetained != v8 || !v8 && (*(&self->_tableFlags + 27) & 2) != 0)
  {
    if (WeakRetained)
    {
      objc_setAssociatedObject(WeakRetained, &self->super.super.super.super.isa + 3, 0, 1);
    }

    objc_storeWeak(&self->_prefetchDataSource, v8);
    v11 = v8;
    v12 = [(UITableView *)self prefetchDataSource];
    v13 = v12;
    if (v11 == v12)
    {
      v15 = [(UITableView *)self allowsWeakReference];

      v14 = (v11 != 0) << 25;
      if (v11 && v15)
      {
        objc_initWeak(&location, self);
        v16 = [_UIWeakHelper alloc];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __37__UITableView_setPrefetchDataSource___block_invoke_622;
        v23[3] = &unk_1E70F5A28;
        objc_copyWeak(&v24, &location);
        v17 = [(_UIWeakHelper *)v16 initWithDeallocationBlock:v23];
        objc_setAssociatedObject(v11, &self->super.super.super.super.isa + 3, v17, 1);

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
        v14 = 0x2000000;
      }
    }

    else
    {

      v14 = (v11 != 0) << 25;
    }

    p_tableFlags = &self->_tableFlags;
    *(p_tableFlags + 3) = *(p_tableFlags + 3) & 0xFFFFFFFFFDFFFFFFLL | v14;
    v19 = objc_opt_respondsToSelector();
    v20 = 0x4000000;
    if ((v19 & 1) == 0)
    {
      v20 = 0;
    }

    *(p_tableFlags + 3) = *(p_tableFlags + 3) & 0xFFFFFFFFFBFFFFFFLL | v20;
    v21 = objc_opt_respondsToSelector();
    v22 = 0x8000000;
    if ((v21 & 1) == 0)
    {
      v22 = 0;
    }

    *(p_tableFlags + 3) = *(p_tableFlags + 3) & 0xFFFFFFFFF7FFFFFFLL | v22;
  }
}

void __37__UITableView_setPrefetchDataSource___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UITableViewCodingKey_style_Yukon_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as prefetchDataSource. This will be a hard crash in the future. Offending object: %@ hosting object: %@", &v5, 0x16u);
  }
}

void __37__UITableView_setPrefetchDataSource___block_invoke_622(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained prefetchDataSource];
    if (!v2)
    {
      [v3 setPrefetchDataSource:0];
    }

    WeakRetained = v3;
  }
}

- (id)prefetchDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_prefetchDataSource);

  return WeakRetained;
}

- (id)_prefetchDataSourceActual
{
  WeakRetained = objc_loadWeakRetained(&self->_prefetchDataSource);

  return WeakRetained;
}

- (id)_prefetchDataSourceProxy
{
  if ([(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController hasShadowUpdates])
  {
    WeakRetained = self->_shadowUpdatesController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_prefetchDataSource);
  }

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  v5 = [(UITableView *)self delegate];
  if (v4)
  {
    if (dyld_program_sdk_at_least() & 1) != 0 || ([v4 allowsWeakReference])
    {
      if (v5 == v4 && (*(&self->_tableFlags + 13) & 0x10) == 0)
      {
        goto LABEL_208;
      }

      goto LABEL_11;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__UITableView_setDelegate___block_invoke;
    block[3] = &unk_1E70F35B8;
    v181 = v4;
    v182 = self;
    v6 = setDelegate__once_2;
    v7 = v4;
    if (v6 != -1)
    {
      dispatch_once(&setDelegate__once_2, block);
    }

    v4 = 0;
  }

  if (!v5)
  {
    goto LABEL_208;
  }

LABEL_11:
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 25) & 0x80) == 0)
  {
    v178 = [(UITableView *)self _estimatesHeights];
    v179.receiver = self;
    v179.super_class = UITableView;
    [(UIScrollView *)&v179 setDelegate:v4];
    v9 = [(UITableView *)self delegate];
    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFEFFFFFFFFFFFLL | ((v9 != 0) << 44);
    v10 = objc_opt_respondsToSelector();
    v11 = 0x8000000;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFF7FFFFFFLL | v11;
    v12 = objc_opt_respondsToSelector();
    v13 = 0x10000000;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFEFFFFFFFLL | v13;
    v14 = objc_opt_respondsToSelector();
    v15 = 0x20000000;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFDFFFFFFFLL | v15;
    v16 = objc_opt_respondsToSelector();
    v17 = 0x40000000;
    if ((v16 & 1) == 0)
    {
      v17 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFBFFFFFFFLL | v17;
    v18 = objc_opt_respondsToSelector();
    v19 = 0x80000000;
    if ((v18 & 1) == 0)
    {
      v19 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFF7FFFFFFFLL | v19;
    v20 = objc_opt_respondsToSelector();
    v21 = 0x100000000;
    if ((v20 & 1) == 0)
    {
      v21 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFEFFFFFFFFLL | v21;
    v22 = objc_opt_respondsToSelector();
    v23 = 0x200000000;
    if ((v22 & 1) == 0)
    {
      v23 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFDFFFFFFFFLL | v23;
    v24 = objc_opt_respondsToSelector();
    v25 = 0x400000000;
    if ((v24 & 1) == 0)
    {
      v25 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFBFFFFFFFFLL | v25;
    v26 = objc_opt_respondsToSelector();
    v27 = 0x800000000;
    if ((v26 & 1) == 0)
    {
      v27 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFF7FFFFFFFFLL | v27;
    v28 = objc_opt_respondsToSelector();
    v29 = 0x1000000000;
    if ((v28 & 1) == 0)
    {
      v29 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFEFFFFFFFFFLL | v29;
    v30 = objc_opt_respondsToSelector();
    v31 = 0x2000000000;
    if ((v30 & 1) == 0)
    {
      v31 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFDFFFFFFFFFLL | v31;
    v32 = objc_opt_respondsToSelector();
    v33 = 0x4000000000;
    if ((v32 & 1) == 0)
    {
      v33 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFBFFFFFFFFFLL | v33;
    v34 = objc_opt_respondsToSelector();
    v35 = 0x8000000000;
    if ((v34 & 1) == 0)
    {
      v35 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFF7FFFFFFFFFLL | v35;
    v36 = objc_opt_respondsToSelector();
    v37 = 0x10000000000;
    if ((v36 & 1) == 0)
    {
      v37 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFEFFFFFFFFFFLL | v37;
    v38 = objc_opt_respondsToSelector();
    v39 = 0x20000000000;
    if ((v38 & 1) == 0)
    {
      v39 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFDFFFFFFFFFFLL | v39;
    v40 = objc_opt_respondsToSelector();
    v41 = 0x40000000000;
    if ((v40 & 1) == 0)
    {
      v41 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFBFFFFFFFFFFLL | v41;
    v42 = objc_opt_respondsToSelector();
    v43 = 0x80000000000;
    if ((v42 & 1) == 0)
    {
      v43 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFF7FFFFFFFFFFLL | v43;
    v44 = objc_opt_respondsToSelector();
    v45 = 0x100000000000;
    if ((v44 & 1) == 0)
    {
      v45 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFEFFFFFFFFFFFLL | v45;
    if (v44)
    {
      NSLog(&cfstr_WarningUsingLe.isa, v9);
    }

    v46 = objc_opt_respondsToSelector();
    v47 = 0x200000000000;
    if ((v46 & 1) == 0)
    {
      v47 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFDFFFFFFFFFFFLL | v47;
    v48 = objc_opt_respondsToSelector();
    v49 = 0x400000000000;
    if ((v48 & 1) == 0)
    {
      v49 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFBFFFFFFFFFFFLL | v49;
    v50 = objc_opt_respondsToSelector();
    v51 = 0x800000000000;
    if ((v50 & 1) == 0)
    {
      v51 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFF7FFFFFFFFFFFLL | v51;
    v52 = objc_opt_respondsToSelector();
    v53 = 0x1000000000000;
    if ((v52 & 1) == 0)
    {
      v53 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFEFFFFFFFFFFFFLL | v53;
    v54 = objc_opt_respondsToSelector();
    v55 = 0x2000000000000;
    if ((v54 & 1) == 0)
    {
      v55 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFDFFFFFFFFFFFFLL | v55;
    v56 = objc_opt_respondsToSelector();
    v57 = 0x4000000000000;
    if ((v56 & 1) == 0)
    {
      v57 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFBFFFFFFFFFFFFLL | v57;
    v58 = objc_opt_respondsToSelector();
    v59 = 0x8000000000000;
    if ((v58 & 1) == 0)
    {
      v59 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFF7FFFFFFFFFFFFLL | v59;
    v60 = objc_opt_respondsToSelector();
    v61 = 0x10000000000000;
    if ((v60 & 1) == 0)
    {
      v61 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFEFFFFFFFFFFFFFLL | v61;
    v62 = objc_opt_respondsToSelector();
    v63 = 0x20000000000000;
    if ((v62 & 1) == 0)
    {
      v63 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFDFFFFFFFFFFFFFLL | v63;
    v64 = objc_opt_respondsToSelector();
    v65 = 0x40000000000000;
    if ((v64 & 1) == 0)
    {
      v65 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFBFFFFFFFFFFFFFLL | v65;
    v66 = objc_opt_respondsToSelector();
    v67 = 0x40000;
    if ((v66 & 1) == 0)
    {
      v67 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFFBFFFFLL | v67;
    v68 = objc_opt_respondsToSelector();
    v69 = 0x80000;
    if ((v68 & 1) == 0)
    {
      v69 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFF7FFFFLL | v69;
    v70 = objc_opt_respondsToSelector();
    v71 = 0x100000;
    if ((v70 & 1) == 0)
    {
      v71 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFEFFFFFLL | v71;
    if (objc_opt_respondsToSelector())
    {
      v72 = 0x200000;
    }

    else
    {
      v72 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFDFFFFFLL | v72;
    if (objc_opt_respondsToSelector())
    {
      v73 = 0x400000;
    }

    else
    {
      v73 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFFBFFFFFLL | v73;
    if (objc_opt_respondsToSelector())
    {
      v74 = 0x800000;
    }

    else
    {
      v74 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFF7FFFFFLL | v74;
    if (objc_opt_respondsToSelector())
    {
      v75 = 0x1000000;
    }

    else
    {
      v75 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFEFFFFFFLL | v75;
    if (objc_opt_respondsToSelector())
    {
      v76 = 0x2000000;
    }

    else
    {
      v76 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFFFFFFFFFDFFFFFFLL | v76;
    v77 = objc_opt_respondsToSelector();
    v78 = 0x80000000000000;
    if ((v77 & 1) == 0)
    {
      v78 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFF7FFFFFFFFFFFFFLL | v78;
    v79 = objc_opt_respondsToSelector();
    v80 = 0x100000000000000;
    if ((v79 & 1) == 0)
    {
      v80 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFEFFFFFFFFFFFFFFLL | v80;
    v81 = objc_opt_respondsToSelector();
    v82 = 0x200000000000000;
    if ((v81 & 1) == 0)
    {
      v82 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFDFFFFFFFFFFFFFFLL | v82;
    v83 = objc_opt_respondsToSelector();
    v84 = 0x400000000000000;
    if ((v83 & 1) == 0)
    {
      v84 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xFBFFFFFFFFFFFFFFLL | v84;
    v85 = objc_opt_respondsToSelector();
    v86 = 0x800000000000000;
    if ((v85 & 1) == 0)
    {
      v86 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xF7FFFFFFFFFFFFFFLL | v86;
    v87 = objc_opt_respondsToSelector();
    v88 = 0x1000000000000000;
    if ((v87 & 1) == 0)
    {
      v88 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xEFFFFFFFFFFFFFFFLL | v88;
    v89 = objc_opt_respondsToSelector();
    v90 = 0x2000000000000000;
    if ((v89 & 1) == 0)
    {
      v90 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xDFFFFFFFFFFFFFFFLL | v90;
    v91 = objc_opt_respondsToSelector();
    v92 = 0x4000000000000000;
    if ((v91 & 1) == 0)
    {
      v92 = 0;
    }

    *p_tableFlags = *p_tableFlags & 0xBFFFFFFFFFFFFFFFLL | v92;
    v93 = objc_opt_respondsToSelector();
    v94 = 0x8000000000000000;
    if ((v93 & 1) == 0)
    {
      v94 = 0;
    }

    *p_tableFlags = v94 & 0x8000000000000000 | *p_tableFlags & 0x7FFFFFFFFFFFFFFFLL;
    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFFFELL | objc_opt_respondsToSelector() & 1;
    v95 = objc_opt_respondsToSelector();
    v96 = 2;
    if ((v95 & 1) == 0)
    {
      v96 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFFFDLL | v96;
    v97 = objc_opt_respondsToSelector();
    v98 = 4;
    if ((v97 & 1) == 0)
    {
      v98 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFFFBLL | v98;
    v99 = objc_opt_respondsToSelector();
    v100 = 8;
    if ((v99 & 1) == 0)
    {
      v100 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFFF7 | v100;
    v101 = objc_opt_respondsToSelector();
    v102 = 16;
    if ((v101 & 1) == 0)
    {
      v102 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFFEFLL | v102;
    v103 = objc_opt_respondsToSelector();
    v104 = 32;
    if ((v103 & 1) == 0)
    {
      v104 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFFDFLL | v104;
    v105 = objc_opt_respondsToSelector();
    v106 = 64;
    if ((v105 & 1) == 0)
    {
      v106 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFFBFLL | v106;
    v107 = objc_opt_respondsToSelector();
    v108 = 128;
    if ((v107 & 1) == 0)
    {
      v108 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFF7FLL | v108;
    v109 = objc_opt_respondsToSelector();
    v110 = 256;
    if ((v109 & 1) == 0)
    {
      v110 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFEFFLL | v110;
    v111 = objc_opt_respondsToSelector();
    v112 = 512;
    if ((v111 & 1) == 0)
    {
      v112 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFDFFLL | v112;
    v113 = objc_opt_respondsToSelector();
    v114 = 1024;
    if ((v113 & 1) == 0)
    {
      v114 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFFBFFLL | v114;
    v115 = objc_opt_respondsToSelector();
    v116 = 2048;
    if ((v115 & 1) == 0)
    {
      v116 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFF7FFLL | v116;
    v117 = objc_opt_respondsToSelector();
    v118 = 4096;
    if ((v117 & 1) == 0)
    {
      v118 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFEFFFLL | v118;
    v119 = objc_opt_respondsToSelector();
    v120 = 0x2000;
    if ((v119 & 1) == 0)
    {
      v120 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFDFFFLL | v120;
    v121 = objc_opt_respondsToSelector();
    v122 = 0x4000;
    if ((v121 & 1) == 0)
    {
      v122 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFFBFFFLL | v122;
    v123 = objc_opt_respondsToSelector();
    v124 = 0x8000;
    if ((v123 & 1) == 0)
    {
      v124 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFF7FFFLL | v124;
    v125 = objc_opt_respondsToSelector();
    v126 = 0x10000;
    if ((v125 & 1) == 0)
    {
      v126 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFEFFFFLL | v126;
    v127 = objc_opt_respondsToSelector();
    v128 = 0x20000;
    if ((v127 & 1) == 0)
    {
      v128 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFDFFFFLL | v128;
    v129 = objc_opt_respondsToSelector();
    v130 = 0x40000;
    if ((v129 & 1) == 0)
    {
      v130 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFFBFFFFLL | v130;
    v131 = objc_opt_respondsToSelector();
    v132 = 0x80000;
    if ((v131 & 1) == 0)
    {
      v132 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFF7FFFFLL | v132;
    v133 = objc_opt_respondsToSelector();
    v134 = 0x100000;
    if ((v133 & 1) == 0)
    {
      v134 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFEFFFFFLL | v134;
    if (objc_opt_respondsToSelector())
    {
      v135 = 0x200000;
    }

    else
    {
      v135 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFDFFFFFLL | v135;
    if (objc_opt_respondsToSelector())
    {
      v136 = 0x400000;
    }

    else
    {
      v136 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFFBFFFFFLL | v136;
    if (objc_opt_respondsToSelector())
    {
      v137 = 0x800000;
    }

    else
    {
      v137 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFF7FFFFFLL | v137;
    if (objc_opt_respondsToSelector())
    {
      v138 = 0x1000000;
    }

    else
    {
      v138 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFEFFFFFFLL | v138;
    if (objc_opt_respondsToSelector())
    {
      v139 = 0x2000000;
    }

    else
    {
      v139 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFDFFFFFFLL | v139;
    v140 = objc_opt_respondsToSelector();
    v141 = 0x4000000;
    if ((v140 & 1) == 0)
    {
      v141 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFFBFFFFFFLL | v141;
    v142 = objc_opt_respondsToSelector();
    v143 = 0x8000000;
    if ((v142 & 1) == 0)
    {
      v143 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFF7FFFFFFLL | v143;
    v144 = objc_opt_respondsToSelector();
    v145 = 0x10000000;
    if ((v144 & 1) == 0)
    {
      v145 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFEFFFFFFFLL | v145;
    v146 = objc_opt_respondsToSelector();
    v147 = 0x20000000;
    if ((v146 & 1) == 0)
    {
      v147 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFDFFFFFFFLL | v147;
    v148 = objc_opt_respondsToSelector();
    v149 = 0x40000000;
    if ((v148 & 1) == 0)
    {
      v149 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFFBFFFFFFFLL | v149;
    v150 = objc_opt_respondsToSelector();
    v151 = 0x80000000;
    if ((v150 & 1) == 0)
    {
      v151 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFF7FFFFFFFLL | v151;
    v152 = objc_opt_respondsToSelector();
    v153 = 0x100000000;
    if ((v152 & 1) == 0)
    {
      v153 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFEFFFFFFFFLL | v153;
    v154 = objc_opt_respondsToSelector();
    v155 = 0x200000000;
    if ((v154 & 1) == 0)
    {
      v155 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFDFFFFFFFFLL | v155;
    v156 = objc_opt_respondsToSelector();
    v157 = 0x400000000;
    if ((v156 & 1) == 0)
    {
      v157 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFFBFFFFFFFFLL | v157;
    v158 = objc_opt_respondsToSelector();
    v159 = 0x800000000;
    if ((v158 & 1) == 0)
    {
      v159 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFF7FFFFFFFFLL | v159;
    v160 = objc_opt_respondsToSelector();
    v161 = 0x1000000000;
    if ((v160 & 1) == 0)
    {
      v161 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFEFFFFFFFFFLL | v161;
    v162 = objc_opt_respondsToSelector();
    v163 = 0x2000000000;
    if ((v162 & 1) == 0)
    {
      v163 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFDFFFFFFFFFLL | v163;
    v164 = objc_opt_respondsToSelector();
    v165 = 0x4000000000;
    if ((v164 & 1) == 0)
    {
      v165 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFFBFFFFFFFFFLL | v165;
    v166 = objc_opt_respondsToSelector();
    v167 = 0x80000000000;
    if ((v166 & 1) == 0)
    {
      v167 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFF7FFFFFFFFFFLL | v167;
    if (_UIIsPrivateMainBundle())
    {
      v168 = objc_opt_respondsToSelector();
      v169 = 0x8000000000;
      if ((v168 & 1) == 0)
      {
        v169 = 0;
      }

      *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFF7FFFFFFFFFLL | v169;
    }

    v170 = objc_opt_respondsToSelector();
    v171 = 0x10000000000;
    if ((v170 & 1) == 0)
    {
      v171 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFEFFFFFFFFFFLL | v171;
    v172 = objc_opt_respondsToSelector();
    v173 = 0x20000000000;
    if ((v172 & 1) == 0)
    {
      v173 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFDFFFFFFFFFFLL | v173;
    v174 = objc_opt_respondsToSelector();
    v175 = 0x40000000000;
    if ((v174 & 1) == 0)
    {
      v175 = 0;
    }

    *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFFFFFBFFFFFFFFFFLL | v175;
    if ((*(&self->_tableFlags + 20) & 2) == 0)
    {
      v176 = [(UITableView *)self _tableHeaderView:1];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(UITableView *)self setTableHeaderViewShouldAutoHide:1];
      }
    }

    if (v178 != [(UITableView *)self _estimatesHeights])
    {
      [(UITableView *)self _updateRowDataIfNeeded];
    }

    [(UITableView *)self _configureContextMenuInteractionIfNeeded];
  }

LABEL_208:
}

void __27__UITableView_setDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UITableViewCodingKey_style_Yukon_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as a delegate. This will be a hard crash in the future. Offending object: %@ hostObject: %@", &v5, 0x16u);
  }
}

- (id)_delegateActual
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);

  return WeakRetained;
}

- (void)setEstimatedRowHeight:(CGFloat)estimatedRowHeight
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = dyld_program_sdk_at_least();
  v7 = estimatedRowHeight != -1.0 && estimatedRowHeight < 0.0;
  if (v6)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:6747 description:{@"Invalid estimated row height set (%g). Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedRowHeight}];
    }
  }

  else if (v7)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &setEstimatedRowHeight____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = estimatedRowHeight;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Invalid estimated row height set (%g). Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
    }
  }

  v9 = [(UITableView *)self _estimatesRowHeights];
  v10 = estimatedRowHeight > 1.0 || estimatedRowHeight <= 0.0;
  v11 = 2.0;
  if (v10)
  {
    v11 = estimatedRowHeight;
  }

  self->_estimatedRowHeight = v11;
  if (v9 != [(UITableView *)self _estimatesRowHeights])
  {
    [(UITableView *)self _updateRowDataIfNeeded];
  }
}

- (void)setEstimatedSectionHeaderHeight:(CGFloat)estimatedSectionHeaderHeight
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = dyld_program_sdk_at_least();
  v7 = estimatedSectionHeaderHeight != -1.0 && estimatedSectionHeaderHeight < 0.0;
  if (v6)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:6757 description:{@"Invalid estimated section header height set (%g). Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedSectionHeaderHeight}];
    }
  }

  else if (v7)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &setEstimatedSectionHeaderHeight____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = estimatedSectionHeaderHeight;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Invalid estimated section header height set (%g). Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
    }
  }

  v9 = [(UITableView *)self _estimatesSectionHeaderHeights];
  v10 = estimatedSectionHeaderHeight > 1.0 || estimatedSectionHeaderHeight <= 0.0;
  v11 = 2.0;
  if (v10)
  {
    v11 = estimatedSectionHeaderHeight;
  }

  self->_estimatedSectionHeaderHeight = v11;
  if (v9 != [(UITableView *)self _estimatesSectionHeaderHeights])
  {
    [(UITableView *)self _updateRowDataIfNeeded];
  }
}

- (void)setEstimatedSectionFooterHeight:(CGFloat)estimatedSectionFooterHeight
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = dyld_program_sdk_at_least();
  v7 = estimatedSectionFooterHeight != -1.0 && estimatedSectionFooterHeight < 0.0;
  if (v6)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:6767 description:{@"Invalid estimated section footer height set (%g). Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedSectionFooterHeight}];
    }
  }

  else if (v7)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &setEstimatedSectionFooterHeight____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = estimatedSectionFooterHeight;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Invalid estimated section footer height set (%g). Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
    }
  }

  v9 = [(UITableView *)self _estimatesSectionFooterHeights];
  v10 = estimatedSectionFooterHeight > 1.0 || estimatedSectionFooterHeight <= 0.0;
  v11 = 2.0;
  if (v10)
  {
    v11 = estimatedSectionFooterHeight;
  }

  self->_estimatedSectionFooterHeight = v11;
  if (v9 != [(UITableView *)self _estimatesSectionFooterHeights])
  {
    [(UITableView *)self _updateRowDataIfNeeded];
  }
}

- (void)setSectionIndexColor:(UIColor *)sectionIndexColor
{
  v6 = sectionIndexColor;
  if (self->_indexColor != v6)
  {
    objc_storeStrong(&self->_indexColor, sectionIndexColor);
    index = self->_index;
    if (index)
    {
      [(UITableViewIndex *)index setIndexColor:self->_indexColor];
    }
  }
}

- (void)setSectionIndexBackgroundColor:(UIColor *)sectionIndexBackgroundColor
{
  v5 = sectionIndexBackgroundColor;
  if (self->_indexBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_indexBackgroundColor, sectionIndexBackgroundColor);
    [(UITableViewIndex *)self->_index setIndexBackgroundColor:self->_indexBackgroundColor];
    v5 = v6;
  }
}

- (void)setSectionIndexTrackingBackgroundColor:(UIColor *)sectionIndexTrackingBackgroundColor
{
  v5 = sectionIndexTrackingBackgroundColor;
  if (self->_indexTrackingBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_indexTrackingBackgroundColor, sectionIndexTrackingBackgroundColor);
    [(UITableViewIndex *)self->_index setIndexTrackingBackgroundColor:self->_indexTrackingBackgroundColor];
    v5 = v6;
  }
}

- (void)setRowHeight:(CGFloat)rowHeight
{
  self->_rowHeight = rowHeight;
  if ((*(&self->_tableFlags + 14) & 7) != 0)
  {
    [(UITableView *)self _scheduleAdjustExtraSeparators];
  }
}

- (void)setSectionHeaderHeight:(CGFloat)sectionHeaderHeight
{
  self->_sectionHeaderHeight = sectionHeaderHeight;
  if ((*(&self->_tableFlags + 14) & 7) != 0)
  {
    [(UITableView *)self _scheduleAdjustExtraSeparators];
  }
}

- (void)setSectionFooterHeight:(CGFloat)sectionFooterHeight
{
  self->_sectionFooterHeight = sectionFooterHeight;
  if ((*(&self->_tableFlags + 14) & 7) != 0)
  {
    [(UITableView *)self _scheduleAdjustExtraSeparators];
  }
}

- (void)_performInternalReloadData
{
  p_tableFlags = &self->_tableFlags;
  v3 = *(&self->_tableFlags + 3);
  *(&self->_tableFlags + 3) = v3 | 0x200000000000;
  [(UITableView *)self reloadData];
  *(p_tableFlags + 3) = *(p_tableFlags + 3) & 0xFFFFDFFFFFFFFFFFLL | (((v3 >> 45) & 1) << 45);
}

void __37__UITableView__removeAllVisibleCells__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _reuseHeaderFooterView:v5 isHeader:1 forSection:{objc_msgSend(a2, "integerValue")}];
}

void __37__UITableView__removeAllVisibleCells__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _reuseHeaderFooterView:v5 isHeader:0 forSection:{objc_msgSend(a2, "integerValue")}];
}

- (void)_removeAndResetAllVisibleCells
{
  [(UITableView *)self _resetSwipeActionController];

  [(UITableView *)self _removeAllVisibleCells];
}

- (CGPoint)_validContentOffsetForProposedOffset:(CGPoint)a3
{
  y = a3.y;
  [(UIScrollView *)self _effectiveContentInset];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self contentSize];
  v10 = v8 + v9;
  [(UIView *)self bounds];
  v11 = fmax(fmin(y, v10 - CGRectGetHeight(v14)), -v6);
  v12 = 0.0;
  result.y = v11;
  result.x = v12;
  return result;
}

- (BOOL)_shouldRestorePreReloadScrollPositionWithFirstVisibleIndexPath:(id)a3 scrolledToTop:(BOOL)a4
{
  v7 = [(UITableView *)self _estimatesHeights];
  result = 0;
  if (a3 && v7 && !a4)
  {
    return self->_preReloadVisibleRowRange.length != 0;
  }

  return result;
}

- (void)_storePreReloadStateForRestoringContentOffsetWithFirstVisibleIndexPath:(id)a3
{
  [(UITableView *)self _computeOffsetOfFirstVisibleCellWithIndexPath:a3];
  self->_preReloadFirstCellOffset = v4;
  self->_preReloadVisibleRowRange = self->_visibleRows;
  v5 = [(UIScrollView *)self isScrollAnimating];
  v6 = 0.0;
  if (v5)
  {
    [(UIScrollView *)self contentOffset];
    v8 = v7;
    [(UIScrollView *)self _animatedTargetOffset];
    v6 = v9 - v8;
  }

  self->_preReloadAnimationTargetOffsetDelta = v6;
}

- (id)_generateDeletedOrMovedRowsIndexSetFromUpdateItems:(id)a3 updateSupport:(id)a4 preReloadFirstVisibleRowIndexPath:(id)a5 outReloadedRowNewIndexPath:(id *)a6
{
  v59 = a6;
  v68 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v62 = a5;
  v60 = [MEMORY[0x1E696AD50] indexSet];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (!v11)
  {
    v61 = 0;
    goto LABEL_41;
  }

  v12 = v11;
  v61 = 0;
  v13 = *v64;
  do
  {
    v14 = 0;
    do
    {
      if (*v64 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v63 + 1) + 8 * v14);
      if (v15)
      {
        v16 = *(v15 + 20);
        if ([*(*(&v63 + 1) + 8 * v14) isDecomposedFromReload])
        {
          if (v16 != 1)
          {
            goto LABEL_33;
          }

          v17 = *(v15 + 16);
          v18 = *(v15 + 24);
          v19 = v18;
          if ((v17 & 1) == 0)
          {
            v20 = [v18 isEqual:v62];

            if (!v20)
            {
              goto LABEL_33;
            }

            v21 = [(UIDecomposedReloadUpdateItem *)v15 pairedItem];
            v22 = v21;
            if (v21)
            {
              v23 = *(v21 + 24);
            }

            else
            {
              v23 = 0;
            }

            v24 = v23;

            goto LABEL_26;
          }

          v28 = [v18 section];
          v29 = [v62 section];

          if (v28 != v29)
          {
            goto LABEL_33;
          }

          v30 = [(UIDecomposedReloadUpdateItem *)v15 pairedItem];
          v31 = v30;
          if (v30)
          {
            v32 = *(v30 + 24);
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;
          v34 = [v33 section];

          v35 = [v62 row];
          v36 = [(UITableViewRowData *)v9[10] numberOfRowsInSection:v34];
          if (v35 >= v36 - 1)
          {
            v37 = v36 - 1;
          }

          else
          {
            v37 = v35;
          }

          if ((v37 & 0x8000000000000000) == 0)
          {
            v24 = [MEMORY[0x1E696AC88] indexPathForRow:? inSection:?];

LABEL_26:
            v61 = v24;
            goto LABEL_33;
          }

          v48 = v9[9];
          v49 = *(v15 + 24);
          v50 = -[UITableViewRowData numberOfRowsInSection:](v48, [v49 section]);

          v51 = v9[9];
          v52 = MEMORY[0x1E696AC88];
          v53 = *(v15 + 24);
          v54 = [v52 indexPathForRow:0 inSection:{objc_msgSend(v53, "section")}];
          v55 = [(UITableViewRowData *)v51 globalRowForRowAtIndexPath:v54];

          if (v55 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = v60;
            v46 = v55;
            v47 = v50;
            goto LABEL_32;
          }
        }

        else
        {
          if ((v16 & 0xFFFFFFFD) != 1)
          {
            goto LABEL_33;
          }

          if (*(v15 + 16))
          {
            v38 = *(v15 + 24);
            v39 = [v38 section];

            v40 = [(UITableViewRowData *)v9[9] numberOfRowsInSection:v39];
            if (v40 >= 1)
            {
              v41 = v40;
              v42 = v9[9];
              v43 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v39];
              v44 = [(UITableViewRowData *)v42 globalRowForRowAtIndexPath:v43];

              if (v44 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v45 = v60;
                v46 = v44;
                v47 = v41;
LABEL_32:
                [v45 addIndexesInRange:{v46, v47, v59}];
              }
            }
          }

          else
          {
            v25 = v9[9];
            v26 = *(v15 + 24);
            v27 = [(UITableViewRowData *)v25 globalRowForRowAtIndexPath:v26];

            if (v27 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v60 addIndex:v27];
            }
          }
        }
      }

      else
      {
        [0 isDecomposedFromReload];
      }

LABEL_33:
      ++v14;
    }

    while (v12 != v14);
    v56 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
    v12 = v56;
  }

  while (v56);
LABEL_41:

  v57 = v61;
  if (v59)
  {
    v57 = v61;
    *v59 = v57;
  }

  return v60;
}

- (void)_adjustPreReloadStateForRestoringContentOffsetWithUpdateItems:(id)a3 updateSupport:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  p_preReloadVisibleRowRange = &self->_preReloadVisibleRowRange;
  if (self->_preReloadVisibleRowRange.length)
  {
    location = p_preReloadVisibleRowRange->location;
    if (p_preReloadVisibleRowRange->location < v7[31])
    {
      v11 = [(UITableViewRowData *)v7[9] indexPathForRowAtGlobalRow:?];
      v18 = 0;
      v12 = [(UITableView *)self _generateDeletedOrMovedRowsIndexSetFromUpdateItems:v6 updateSupport:v8 preReloadFirstVisibleRowIndexPath:v11 outReloadedRowNewIndexPath:&v18];
      v13 = v18;
      if ((location & 0x8000000000000000) == 0)
      {
        if ([v12 containsIndex:location])
        {
          do
          {

            if (location <= 0)
            {
              v13 = 0;
              goto LABEL_17;
            }

            --location;
            v13 = 0;
          }

          while ([v12 containsIndex:location]);
          v14 = [(_UITableViewUpdateSupport *)v8 finalGlobalIndexForInitialGlobalIndex:?];
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = 0;
            goto LABEL_14;
          }

          v13 = 0;
          v15 = v14 + 1;
          goto LABEL_18;
        }

        if (v13)
        {
          v15 = [(UITableViewRowData *)v8[10] globalRowForRowAtIndexPath:v13];
        }

        else
        {
          v15 = [(_UITableViewUpdateSupport *)v8 finalGlobalIndexForInitialGlobalIndex:?];
        }

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_19;
        }

LABEL_14:
        if (os_variant_has_internal_diagnostics())
        {
          v17 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v20 = location;
            _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Unable to determine new global row index for preReloadFirstVisibleRow (%ld)", buf, 0xCu);
          }
        }

        else
        {
          v16 = *(__UILogGetCategoryCachedImpl("Assert", &_adjustPreReloadStateForRestoringContentOffsetWithUpdateItems_updateSupport____s_category) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v20 = location;
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unable to determine new global row index for preReloadFirstVisibleRow (%ld)", buf, 0xCu);
          }
        }
      }

LABEL_17:
      v15 = 0;
LABEL_18:
      self->_preReloadFirstCellOffset = 0.0;
LABEL_19:
      p_preReloadVisibleRowRange->location = v15;
    }
  }
}

- (double)_computeOffsetOfFirstVisibleCellWithIndexPath:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v4 = [(UITableViewRowData *)self->_rowData globalRowForRowAtIndexPath:a3];
  v5 = [(UITableViewRowData *)&self->_rowData->super.isa rectForGlobalRow:v4 heightCanBeGuessed:1];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UITableView *)self _contentInset];
  v13 = v12;
  [(UIScrollView *)self contentOffset];
  v15 = v14;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  return v13 + v15 - CGRectGetMinY(v17);
}

- (void)_ensurePreReloadVisibleRowRangeIsValidWithPostReloadRowCount:(int64_t)a3
{
  location = self->_preReloadVisibleRowRange.location;
  length = self->_preReloadVisibleRowRange.length;
  if (length + location > a3)
  {
    length = a3 - location;
    self->_preReloadVisibleRowRange.length = a3 - location;
  }

  if (a3 >= 1 && !length)
  {
    self->_preReloadVisibleRowRange.location = a3 - 1;
    self->_preReloadVisibleRowRange.length = 1;
    self->_preReloadFirstCellOffset = 0.0;
  }
}

- (double)_contentOffsetYForRestoringScrollPositionOfFirstVisibleRowWithContentInsetTop:(double)a3 canGuessHeights:(BOOL)a4
{
  if (!self->_preReloadVisibleRowRange.length)
  {
    return -a3;
  }

  v7.origin.x = [(UITableViewRowData *)&self->_rowData->super.isa rectForGlobalRow:a4 heightCanBeGuessed:?];
  return CGRectGetMinY(v7) + self->_preReloadFirstCellOffset - a3;
}

- (void)_restoreOrAdjustContentOffsetWithRowCount:(int64_t)a3 initialContentInsetTop:(double)a4
{
  v5 = *(&self->_tableFlags + 3);
  if ((v5 & 0x200) == 0)
  {
    if ((v5 & 0x400) == 0 || [(UIScrollView *)self isDragging:a3])
    {

      [(UITableView *)self _retargetScrollAnimation:a3];
      return;
    }

    if ([(UIScrollView *)self isDecelerating])
    {
      [(UIScrollView *)self contentOffset];
      v11 = self;
      goto LABEL_9;
    }

    [(UIScrollView *)self _adjustContentOffsetIfNecessary];
    if ([(UITableView *)self _retargetScrollAnimation]|| ![(UIScrollView *)self isScrollAnimating]|| [(UIScrollView *)self _isScrollingToTop])
    {
      return;
    }

    [(UIScrollView *)self _animatedTargetOffset];
    v18 = self;
    goto LABEL_29;
  }

  [(UITableView *)self _ensurePreReloadVisibleRowRangeIsValidWithPostReloadRowCount:a3];
  [(UIScrollView *)self contentOffset];
  v8 = v7;
  [(UITableView *)self _contentOffsetYForRestoringScrollPositionOfFirstVisibleRowWithContentInsetTop:1 canGuessHeights:a4];
  v10 = v9;
  if ([(UIScrollView *)self isDecelerating])
  {
    [(UITableView *)self setContentOffset:v8, v10];
    v11 = self;
    v12 = v8;
    v13 = v10;
LABEL_9:

    [(UIScrollView *)v11 _updateDecelerationLastOffset:v12, v13];
    return;
  }

  if ([(UIScrollView *)self isDragging])
  {
    v14 = self;
    v15 = v8;
    v16 = v10;
  }

  else
  {
    if ([(UIScrollView *)self isScrollAnimating])
    {
      [(UITableView *)self setContentOffset:v8, v10];
      if ([(UITableView *)self _retargetScrollAnimation]|| [(UIScrollView *)self _isScrollingToTop])
      {
        return;
      }

      v17 = v10 + self->_preReloadAnimationTargetOffsetDelta;
      v18 = self;
      v19 = v8;
LABEL_29:
      [(UITableView *)v18 _validContentOffsetForProposedOffset:v19, v17];

      [(UIScrollView *)self _updateScrollAnimationForChangedTargetOffset:?];
      return;
    }

    [(UITableView *)self _validContentOffsetForProposedOffset:v8, v10];
    v14 = self;
  }

  [(UITableView *)v14 setContentOffset:v15, v16];
}

- (void)setIndexHiddenForSearch:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (((((*(&self->_tableFlags + 2) & 0x2000000) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    v5 = 100663296;
    if (!a3)
    {
      v5 = 0;
    }

    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFF9FFFFFFLL | v5;
    if (self->_index)
    {
      [(UIScrollView *)self setNeedsLayout];
      v6 = 1.0;
      if (v3)
      {
        v6 = 0.0;
      }

      [(UIView *)self->_index setAlpha:v6];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = self->_visibleCells;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            if ([v12 drawingEnabled])
            {
              [v12 setNeedsDisplay];
            }
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      index = self->_index;
    }

    else
    {
      index = 0;
    }

    [(UIView *)index setUserInteractionEnabled:!v3, v14];
  }
}

- (void)setIndexHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (((((*(&self->_tableFlags + 2) & 0x2000000) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    v6 = 0x2000000;
    if (!a3)
    {
      v6 = 0;
    }

    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFF9FFFFFFLL | v6;
    index = self->_index;
    if (index)
    {
      v8 = a4;
      [(UIView *)index setAlpha:1.0];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __39__UITableView_setIndexHidden_animated___block_invoke_2;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIView conditionallyAnimate:v8 withAnimation:&__block_literal_global_817 layout:v9 completion:0];
      index = self->_index;
    }

    [(UIView *)index setUserInteractionEnabled:!v4, a4];
  }
}

void __39__UITableView_setIndexHidden_animated___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _updateIndexFrame];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 2272);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setNeedsLayout];
        [v7 layoutSubviews];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (CGRect)_indexFrame
{
  index = self->_index;
  if (index)
  {
    [(UIView *)index frame];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setTableHeaderViewShouldAutoHide:(BOOL)a3
{
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 2);
  if (((((v4 & 0x40000000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      *(&self->_tableFlags + 2) = v4 & 0xFFFFFFFDFFFFFFFFLL;
      [(UITableView *)self _updatePinnedTableHeader];
      v4 = *(p_tableFlags + 2);
      v6 = 0x100000000;
      v7 = 0x40000000;
      v8 = 0x80000000;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v7 = 0;
    }

    *(p_tableFlags + 2) = v4 & 0xFFFFFFFE3FFFFFFFLL | v6 | v8 | v7;
    [(UIScrollView *)self contentOffset];

    [(UITableView *)self setContentOffset:?];
  }
}

- (void)setOverlapsSectionHeaderViews:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFFFFF7FLL | v3;
  if ((*(&self->_tableFlags + 14) & 7) != 0)
  {
    [(UITableView *)self _scheduleAdjustExtraSeparators];
  }
}

- (int64_t)_numberOfSectionsUsingPresentationValues:(BOOL)a3
{
  if (!a3 && (shadowUpdatesController = self->_shadowUpdatesController) != 0 && ([(_UITableViewShadowUpdatesController *)shadowUpdatesController dataSourceBeforeShadowUpdates], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 numberOfSections];

    return v7;
  }

  else
  {
    [(UITableView *)self _ensureRowDataIsLoaded];
    rowData = self->_rowData;
    if (rowData)
    {
      return rowData->_numSections;
    }

    else
    {
      return 0;
    }
  }
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section
{
  v5 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _numberOfRowsInSection:section usingPresentationValues:v5];
}

- (int64_t)_numberOfRowsInSection:(int64_t)a3 usingPresentationValues:(BOOL)a4
{
  if (!a4 && (shadowUpdatesController = self->_shadowUpdatesController) != 0 && ([(_UITableViewShadowUpdatesController *)shadowUpdatesController dataSourceBeforeShadowUpdates], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v7 numberOfItemsInSection:a3];

    return v9;
  }

  else
  {
    [(UITableView *)self _ensureRowDataIsLoaded];
    rowData = self->_rowData;

    return [(UITableViewRowData *)rowData numberOfRowsInSection:a3];
  }
}

- (CGRect)rectForSection:(NSInteger)section
{
  v5 = [(UITableView *)self _isUsingPresentationValues];

  [(UITableView *)self _rectForSection:section usingPresentationValues:v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_rectForSection:(int64_t)a3 usingPresentationValues:(BOOL)a4
{
  v4 = a3;
  if (!a4 && (shadowUpdatesController = self->_shadowUpdatesController) != 0 && (v4 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionAfterShadowUpdates:a3], v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(UITableView *)self _ensureRowDataIsLoaded];
    v7 = [(UITableViewRowData *)self->_rowData rectForSection:v4];
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)rectForHeaderInSection:(NSInteger)section
{
  v5 = [(UITableView *)self _isUsingPresentationValues];

  [(UITableView *)self _rectForHeaderInSection:section usingPresentationValues:v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_rectForHeaderInSection:(int64_t)a3 usingPresentationValues:(BOOL)a4
{
  v4 = a3;
  if (!a4 && (shadowUpdatesController = self->_shadowUpdatesController) != 0 && (v4 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionAfterShadowUpdates:a3], v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(UITableView *)self _ensureRowDataIsLoaded];
    v7 = [(UITableViewRowData *)self->_rowData rectForHeaderInSection:v4 heightCanBeGuessed:0];
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_floatingRectForHeaderInSection:(int64_t)a3 heightCanBeGuessed:(BOOL)a4
{
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UITableView *)self _contentInset];
  rowData = self->_rowData;

  v20 = [(UITableViewRowData *)rowData floatingRectForHeaderInSection:a3 visibleRect:a4 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v8 + v16, v10 + v15, v12 - (v16 + v18), v14 - (v15 + v17)];
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)rectForFooterInSection:(NSInteger)section
{
  v5 = [(UITableView *)self _isUsingPresentationValues];

  [(UITableView *)self _rectForFooterInSection:section usingPresentationValues:v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_rectForFooterInSection:(int64_t)a3 usingPresentationValues:(BOOL)a4
{
  v4 = a3;
  if (!a4 && (shadowUpdatesController = self->_shadowUpdatesController) != 0 && (v4 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionAfterShadowUpdates:a3], v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(UITableView *)self _ensureRowDataIsLoaded];
    v7 = [(UITableViewRowData *)self->_rowData rectForFooterInSection:v4 heightCanBeGuessed:0];
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_floatingRectForFooterInSection:(int64_t)a3 heightCanBeGuessed:(BOOL)a4
{
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UITableView *)self _contentInset];
  rowData = self->_rowData;

  v20 = [(UITableViewRowData *)rowData floatingRectForFooterInSection:a3 visibleRect:a4 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v8 + v16, v10 + v15, v12 - (v16 + v18), v14 - (v15 + v17)];
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)rectForRowAtIndexPath:(NSIndexPath *)indexPath
{
  v4 = indexPath;
  [(UITableView *)self _rectForRowAtIndexPath:v4 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_rectForRowAtIndexPath:(id)a3 usingPresentationValues:(BOOL)a4
{
  v6 = a3;
  if (a4 || (shadowUpdatesController = self->_shadowUpdatesController) == 0 || ([(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v6], v8 = objc_claimAutoreleasedReturnValue(), v6, (v6 = v8) != 0))
  {
    [(UITableView *)self _tableViewRectForRowAtIndexPath:v6 canGuess:0];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_tableViewRectForRowAtIndexPath:(id)a3 canGuess:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 section];
  v8 = v7;
  rowData = self->_rowData;
  if (rowData)
  {
    rowData = rowData->_numSections;
  }

  if (v7 >= rowData || (v10 = [v6 row], v10 >= -[UITableViewRowData numberOfRowsInSection:](self->_rowData, v8)))
  {
    v12 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v18 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(UITableView *)self _rectForRowAtIndexPath:v6 canGuess:v4];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if ((*(&self->_tableFlags + 23) & 0x20) != 0 && self->_wrapperView && dyld_program_sdk_at_least())
    {
      [(UIView *)self->_wrapperView convertRect:self toView:v12, v14, v16, v18];
      v12 = v19;
      v14 = v20;
      v16 = v21;
      v18 = v22;
    }
  }

  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)_rectForRowAtIndexPath:(id)a3 canGuess:(BOOL)a4
{
  v6 = a3;
  [(UITableView *)self _ensureRowDataIsLoaded];
  rowData = self->_rowData;
  v8 = [v6 row];
  v9 = [v6 section];

  v10 = [(UITableViewRowData *)rowData rectForRow:v8 inSection:v9 heightCanBeGuessed:a4];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_rectForTableHeaderView
{
  v2 = [(UITableViewRowData *)self->_rowData rectForTableHeaderView];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_rectForTableFooterView
{
  v2 = [(UITableViewRowData *)self->_rowData rectForTableFooterView];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSIndexPath)indexPathForRowAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _indexPathForRowAtPoint:v6 usingPresentationValues:x, y];
}

- (id)_indexPathForRowAtPoint:(CGPoint)a3 usingPresentationValues:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  rowData = self->_rowData;
  if (rowData && (v9 = rowData->_draggedIndexPath) != 0)
  {
  }

  else
  {
    v10 = self->_rowData;
    if (v10)
    {
      v10 = v10->_gapIndexPath;
    }

    v11 = v10;

    if (!v11)
    {
      v12 = [(UITableViewRowData *)self->_rowData indexPathsForRowsInRect:y extraHitSpaceBetweenRows:0.0, 0.0, 0.0];
      v15 = [v12 firstObject];
      goto LABEL_14;
    }
  }

  v12 = [(UITableViewRowData *)self->_rowData targetIndexPathForPoint:x adjustedForGap:y];
  if (v12)
  {
    v13 = self->_rowData;
    if (v13)
    {
      v13 = v13->_gapIndexPath;
    }

    v14 = v13;

    if (v14)
    {
      if ([(UITableViewRowData *)self->_rowData dropLocationForPoint:v12 atIndexPath:x withInsets:y, 0.0, 0.0, 0.0, 0.0])
      {
        v15 = 0;
LABEL_14:

        v12 = v15;
      }
    }
  }

  if (!a4)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v17 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathBeforeShadowUpdates:v12];

      v12 = v17;
    }
  }

  return v12;
}

- (NSIndexPath)indexPathForCell:(UITableViewCell *)cell
{
  v4 = cell;
  v5 = [(UITableView *)self _indexPathForCell:v4 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];

  return v5;
}

- (id)_indexPathForCell:(id)a3 usingPresentationValues:(BOOL)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_visibleCells indexOfObject:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  if (*(&self->_tableFlags + 22))
  {
    [(UITableView *)self indexPathForRowAtGlobalRow:self->_visibleRows.location + v7];
  }

  else
  {
    [(UIView *)v6 _indexPath];
  }
  v8 = ;
  if (!v8)
  {
LABEL_6:
    v9 = [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa indexPathForPrefetchedCell:v6];
    if (!v9)
    {
      v9 = [(UITableView *)self _indexPathForTentativeCell:v6];
      if (!v9)
      {
        if (self->_focusedViewType != 1 || ([(UITableView *)self _focusedCell], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 != v6) || ([(UITableView *)self _focusedCellIndexPath], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          if (self->_firstResponderViewType != 1 || self->_firstResponderView != v6)
          {
            v8 = 0;
            if (a4)
            {
              goto LABEL_12;
            }

            goto LABEL_10;
          }

          v9 = self->_firstResponderIndexPath;
        }
      }
    }

    v8 = v9;
  }

  if (a4)
  {
    goto LABEL_12;
  }

LABEL_10:
  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    v11 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathBeforeShadowUpdates:v8];

    v8 = v11;
  }

LABEL_12:

  return v8;
}

- (id)_indexPathForTentativeCell:(id)a3
{
  v4 = a3;
  tentativeCells = self->_tentativeCells;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__UITableView__indexPathForTentativeCell___block_invoke;
  v10[3] = &unk_1E7123670;
  v11 = v4;
  v6 = v4;
  v7 = [(NSMutableDictionary *)tentativeCells keysOfEntriesPassingTest:v10];
  v8 = [v7 anyObject];

  return v8;
}

BOOL __42__UITableView__indexPathForTentativeCell___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(a1 + 32);
  if (v4 == a3)
  {
    *a4 = 1;
  }

  return v4 == a3;
}

- (NSArray)indexPathsForRowsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _indexPathsForRowsInRect:v8 usingPresentationValues:x, y, width, height];
}

- (id)_indexPathsForRowsInRect:(CGRect)a3 usingPresentationValues:(BOOL)a4
{
  v6 = [(UITableViewRowData *)self->_rowData indexPathsForRowsInRect:a3.origin.y, a3.size.width, a3.size.height];
  if (!a4)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v8 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathsBeforeShadowUpdates:v6];

      v6 = v8;
    }
  }

  return v6;
}

- (UITableViewCell)cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  v4 = indexPath;
  v5 = [(UITableView *)self _cellForRowAtIndexPath:v4 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];

  return v5;
}

- (id)_cellForRowAtIndexPath:(id)a3 usingPresentationValues:(BOOL)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a4)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v9 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v7];

      v7 = v9;
    }
  }

  if (!v7)
  {
    goto LABEL_38;
  }

  if ((*(&self->_tableFlags + 28) & 0x80) == 0)
  {
    [(UITableView *)self _visibleBounds];
    v10 = [(UITableView *)self _visibleGlobalRowsInRect:?];
    v12 = v11;
    v13 = [(UITableView *)self globalRowForRowAtIndexPath:v7];
    if (v13 >= v10 && v13 - v10 < v12)
    {
      [(UITableView *)self _updateVisibleCellsImmediatelyIfNecessary];
    }

    if ([(UITableView *)self _hasFocusedCellForIndexPath:v7])
    {
      v14 = [(UITableView *)self _focusedCell];
LABEL_37:
      v23 = v14;
      goto LABEL_39;
    }

    if (self->_firstResponderIndexPath && self->_firstResponderViewType == 1 && [v7 isEqual:?] && dyld_program_sdk_at_least())
    {
      v14 = self->_firstResponderView;
      goto LABEL_37;
    }

    p_visibleRows = &self->_visibleRows;
    location = self->_visibleRows.location;
    v18 = v13 >= location;
    v21 = v13 - location;
    if (!v18 || v21 >= self->_visibleRows.length)
    {
      goto LABEL_35;
    }

    if (v21 < [(NSMutableArray *)self->_visibleCells count])
    {
      v23 = [(NSMutableArray *)self->_visibleCells objectAtIndex:v21];
      if (v23)
      {
        goto LABEL_39;
      }

LABEL_35:
      if (dyld_program_sdk_at_least())
      {
        v14 = [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa prefetchedCellAtIndexPath:v7];
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v25 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v26 = NSStringFromSelector(a2);
      v44.location = p_visibleRows->location;
      v44.length = self->_visibleRows.length;
      v27 = NSStringFromRange(v44);
      visibleCells = self->_visibleCells;
      v31 = 138413314;
      v32 = v26;
      v33 = 2112;
      v34 = v7;
      v35 = 2048;
      v36 = v21;
      v37 = 2112;
      v38 = v27;
      v39 = 2112;
      v40 = visibleCells;
      _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: out-of-bounds index into _visibleCells array in call to %@. indexPath: %@; index into _visibleCells: %ld; _visibleRows: %@; _visibleCells: %@", &v31, 0x34u);
    }

    else
    {
      v24 = *(__UILogGetCategoryCachedImpl("Assert", &_cellForRowAtIndexPath_usingPresentationValues____s_category) + 8);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v25 = v24;
      v26 = NSStringFromSelector(a2);
      v43.location = p_visibleRows->location;
      v43.length = self->_visibleRows.length;
      v27 = NSStringFromRange(v43);
      v28 = self->_visibleCells;
      v31 = 138413314;
      v32 = v26;
      v33 = 2112;
      v34 = v7;
      v35 = 2048;
      v36 = v21;
      v37 = 2112;
      v38 = v27;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: out-of-bounds index into _visibleCells array in call to %@. indexPath: %@; index into _visibleCells: %ld; _visibleRows: %@; _visibleCells: %@", &v31, 0x34u);
    }

LABEL_34:
    goto LABEL_35;
  }

  UITableViewAlertForCellForRowAtIndexPathAccessDuringUpdate(self);
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v15 = [(UITableView *)self globalRowForRowAtIndexPath:v7];
    v16 = self->_visibleRows.location;
    v17 = v15 - v16;
    v18 = v15 < v16 || v17 >= self->_visibleRows.length;
    if (!v18 && v17 < [(NSMutableArray *)self->_visibleCells count])
    {
      v14 = [(NSMutableArray *)self->_visibleCells objectAtIndex:v17];
      goto LABEL_37;
    }
  }

LABEL_38:
  v23 = 0;
LABEL_39:

  return v23;
}

- (id)_existingCellForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(UITableView *)self _hasFocusedCellForIndexPath:v4])
    {
      v5 = [(UITableView *)self _focusedCell];
LABEL_4:
      v6 = v5;
      goto LABEL_17;
    }

    if (self->_firstResponderIndexPath && self->_firstResponderViewType == 1 && [v4 isEqual:?])
    {
      v5 = self->_firstResponderView;
      goto LABEL_4;
    }

    v7 = [(UITableView *)self _visibleGlobalRowForRowAtIndexPathAdjustedForCurrentUpdate:v4];
    location = self->_visibleRows.location;
    v9 = v7 - location;
    v10 = v7 < location || v9 >= self->_visibleRows.length;
    if (!v10 && v9 < [(NSMutableArray *)self->_visibleCells count])
    {
      v5 = [(NSMutableArray *)self->_visibleCells objectAtIndex:v9];
      goto LABEL_4;
    }

    v6 = [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa prefetchedCellAtIndexPath:v4];
    if (!v6)
    {
      v5 = [(NSMutableDictionary *)self->_tentativeCells objectForKeyedSubscript:v4];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_17:

  return v6;
}

- (int64_t)_visibleGlobalRowForRowAtIndexPathAdjustedForCurrentUpdate:(id)a3
{
  v4 = [(UITableView *)self globalRowForRowAtIndexPath:a3];
  currentUpdate = self->_currentUpdate;
  if (!currentUpdate)
  {
    return v4;
  }

  return [(_UITableViewUpdateSupport *)currentUpdate initialGlobalIndexForFinalGlobalIndex:v4];
}

- (int64_t)_visibleSectionForSectionAdjustedForCurrentUpdate:(int64_t)a3
{
  currentUpdate = self->_currentUpdate;
  if (currentUpdate)
  {
    return [(_UITableViewUpdateSupport *)currentUpdate initialSectionIndexForFinalSectionIndex:a3];
  }

  else
  {
    return a3;
  }
}

- (UITableViewHeaderFooterView)headerViewForSection:(NSInteger)section
{
  v5 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _headerViewForSection:section usingPresentationValues:v5];
}

- (id)_headerViewForSection:(int64_t)a3 usingPresentationValues:(BOOL)a4
{
  if (!a4 && (shadowUpdatesController = self->_shadowUpdatesController) != 0 && (a3 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionAfterShadowUpdates:a3], a3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(UITableView *)self _visibleHeaderViewForSection:a3];
    if (_IsKindOfUITableViewHeaderFooterView(v7))
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (UITableViewHeaderFooterView)footerViewForSection:(NSInteger)section
{
  v5 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _footerViewForSection:section usingPresentationValues:v5];
}

- (id)_footerViewForSection:(int64_t)a3 usingPresentationValues:(BOOL)a4
{
  if (!a4 && (shadowUpdatesController = self->_shadowUpdatesController) != 0 && (a3 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionAfterShadowUpdates:a3], a3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(UITableView *)self _visibleFooterViewForSection:a3];
    if (_IsKindOfUITableViewHeaderFooterView(v7))
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSArray)visibleCells
{
  v3 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _visibleCellsUsingPresentationValues:v3];
}

- (id)_visibleCellsUsingPresentationValues:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a3 && (shadowUpdatesController = self->_shadowUpdatesController) != 0 && [(_UITableViewShadowUpdatesController *)shadowUpdatesController hasShadowUpdates])
  {
    v5 = [(UITableView *)self _indexPathsForVisibleRowsUsingPresentationValues:0];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(UITableView *)self _cellForRowAtIndexPath:*(*(&v14 + 1) + 8 * i) usingPresentationValues:0, v14];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    if ((*(&self->_tableFlags + 28) & 0x80) != 0)
    {
      UITableViewAlertForVisibleCellsAccessDuringUpdate(self);
      if (dyld_program_sdk_at_least())
      {
        v6 = MEMORY[0x1E695E0F0];
        goto LABEL_19;
      }
    }

    else
    {
      [(UITableView *)self _updateVisibleCellsImmediatelyIfNecessary];
    }

    v6 = [(NSMutableArray *)self->_visibleCells copy];
  }

LABEL_19:

  return v6;
}

- (id)_indexPathsForVisibleRowsUsingPresentationValues:(BOOL)a3
{
  v3 = a3;
  [(UITableView *)self _visibleBounds];

  return [(UITableView *)self _indexPathsForRowsInRect:v3 usingPresentationValues:?];
}

- (CGPoint)_contentOffsetForScrollingToRowAtIndexPath:(id)a3 atScrollPosition:(int64_t)a4
{
  v6 = a3;
  [(UITableView *)self _contentOffsetForScrollingToRowAtIndexPath:v6 atScrollPosition:a4 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)_contentOffsetForScrollingToRowAtIndexPath:(id)a3 atScrollPosition:(int64_t)a4 usingPresentationValues:(BOOL)a5
{
  v8 = a3;
  if (!a5)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v10 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v8];

      v8 = v10;
    }
  }

  [(UITableView *)self _ensureRowDataIsLoaded];
  if (!v8)
  {
    goto LABEL_15;
  }

  v11 = [v8 section];
  rowData = self->_rowData;
  if (rowData)
  {
    rowData = rowData->_numSections;
  }

  if (v11 >= rowData)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695DA20];
    v21 = [v8 section];
    v22 = self->_rowData;
    if (v22)
    {
      v22 = v22->_numSections;
    }

    [v19 raise:v20 format:{@"Attempted to scroll the table view to an out-of-bounds section (%ld) when there are only %ld sections. Table view: %@", v21, v22, self, v133}];
    goto LABEL_15;
  }

  if ([v8 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v8 row];
    if (v13 >= -[UITableViewRowData numberOfRowsInSection:](self->_rowData, [v8 section]))
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"Attempted to scroll the table view to an out-of-bounds row (%ld) when there are only %ld rows in section %ld. Table view: %@", objc_msgSend(v8, "row"), -[UITableViewRowData numberOfRowsInSection:](self->_rowData, objc_msgSend(v8, "section")), objc_msgSend(v8, "section"), self}];
      goto LABEL_15;
    }
  }

  v154 = [(UITableViewRowData *)self->_rowData heightForTable];
  v14 = [v8 row];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = -[UITableViewRowData rectForHeaderInSection:heightCanBeGuessed:](self->_rowData, [v8 section], 0);
  }

  else
  {
    [(UITableView *)self _rectForRowAtIndexPath:v8 usingPresentationValues:1];
  }

  v156 = v16;
  v157.origin.x = v15;
  r1 = v17;
  v29 = v18;
  [(UIView *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [(UITableView *)self _contentInset];
  v39 = v38;
  v41 = v38 + v40;
  v150 = v42;
  v157.origin.y = v43;
  v44 = v43 + v42;
  v45 = [v8 row];
  v46 = [v8 section];
  [(UIView *)self bounds];
  Height = CGRectGetHeight(v167);
  if ([(UITableViewRowData *)self->_rowData ensureHeightsFaultedInForScrollToIndexPath:v8 boundsHeight:Height])
  {
    v154 = [(UITableViewRowData *)self->_rowData heightForTable];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = -[UITableViewRowData rectForHeaderInSection:heightCanBeGuessed:](self->_rowData, [v8 section], 0);
    }

    else
    {
      [(UITableView *)self _rectForRowAtIndexPath:v8 usingPresentationValues:1];
    }

    v156 = v49;
    v157.origin.x = v48;
    r1 = v50;
    v29 = v51;
  }

  rect = v31 + v39;
  v52 = v33 + v157.origin.y;
  v53 = v35 - v41;
  v54 = v37 - v44;
  if (a4)
  {
    v55 = 1;
    v56 = rect;
    v57 = v29;
  }

  else
  {
    v57 = v29;
    if (-[UITableView allowsHeaderViewsToFloat](self, "allowsHeaderViewsToFloat") || (v58 = 0.0, ![v8 row]))
    {
      v58 = -[UITableViewRowData heightForHeaderInSection:canGuess:](self->_rowData, [v8 section], 0);
    }

    v56 = rect;
    if ([(UITableView *)self allowsFooterViewsToFloat]|| (v59 = [(UITableViewRowData *)self->_rowData numberOfRowsInSection:v46]- 1, v60 = 0.0, v45 == v59))
    {
      v60 = -[UITableViewRowData heightForFooterInSection:canGuess:](self->_rowData, [v8 section], 0);
    }

    *&v157.size.width = MEMORY[0x1E69E9820];
    *&v157.size.height = 3221225472;
    v158 = __99__UITableView__contentOffsetForScrollingToRowAtIndexPath_atScrollPosition_usingPresentationValues___block_invoke;
    v159 = &__block_descriptor_80_e39_q40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    v160 = rect;
    v161 = v52;
    v162 = v53;
    v163 = v54;
    v164 = v58;
    v165 = v60;
    v61 = __99__UITableView__contentOffsetForScrollingToRowAtIndexPath_atScrollPosition_usingPresentationValues___block_invoke(&v157.size, v157.origin.x, v156, r1, v29);
    if (!v61)
    {
      goto LABEL_15;
    }

    a4 = v61;
    if (v29 > v54 && dyld_program_sdk_at_least())
    {
      v62 = [(UIView *)self window];
      v63 = [v62 _firstResponder];
      v64 = v63;
      if (v63)
      {
        v145 = v63;
        v146 = v62;
        v65 = [(UITableView *)self _existingCellForRowAtIndexPath:v8];
        v66 = [v65 _isAncestorOfFirstResponder];

        if (v66)
        {
          v148 = v53;
          v64 = v145;
          v62 = v146;
          [v145 _rectToScrollToVisibleInCellInWindow:v146];
          x = v168.origin.x;
          y = v168.origin.y;
          width = v168.size.width;
          v143 = v168.size.height;
          if (CGRectIsNull(v168) || ([v146 convertRect:self toView:{x, y, width, v143}], v189.origin.x = v70, v189.origin.y = v71, v189.size.width = v72, v189.size.height = v73, v169.origin.y = v156, v169.origin.x = v157.origin.x, v169.size.width = r1, v169.size.height = v29, v170 = CGRectIntersection(v169, v189), v74 = v170.origin.x, v75 = v170.size.height, v142 = v170.size.width, v144 = v170.origin.y, CGRectIsNull(v170)))
          {
            v55 = 1;
            v53 = v148;
          }

          else
          {
            v122 = v54 - v75;
            v53 = v148;
            if (v54 - v75 <= 0.0)
            {
              v57 = v75;
              v77.n128_f64[0] = v142;
              v76.n128_f64[0] = v144;
              r1 = v142;
              v156 = v144;
              v157.origin.x = v74;
            }

            else
            {
              v181.origin.x = v74;
              v181.size.width = v142;
              v181.origin.y = v144;
              v181.size.height = v75;
              MinY = CGRectGetMinY(v181);
              v141 = v74;
              v182.origin.y = v156;
              v182.origin.x = v157.origin.x;
              v134 = v75;
              v182.size.width = r1;
              v182.size.height = v29;
              v123 = MinY - CGRectGetMinY(v182);
              v183.origin.x = v157.origin.x;
              v183.origin.y = v156;
              v183.size.width = r1;
              v183.size.height = v29;
              MaxY = CGRectGetMaxY(v183);
              v184.origin.x = v74;
              v184.size.width = v142;
              v184.origin.y = v144;
              v184.size.height = v134;
              v124 = MaxY - CGRectGetMaxY(v184);
              if (v122 >= v124)
              {
                v125 = v124;
              }

              else
              {
                v125 = v122;
              }

              v126 = fmax(v122 - v125, 0.0);
              if (v122 >= v123)
              {
                v127 = v123;
              }

              else
              {
                v127 = v122;
              }

              v128 = fmax(v122 - v127, 0.0);
              v129 = v123 <= v124;
              if (v123 > v124)
              {
                v130 = v127;
              }

              else
              {
                v130 = v126;
              }

              v135 = v130;
              if (v129)
              {
                v131 = v125;
              }

              else
              {
                v131 = v128;
              }

              v140 = v131;
              v185.origin.x = v157.origin.x;
              v185.origin.y = v156;
              v185.size.width = r1;
              v185.size.height = v29;
              MinX = CGRectGetMinX(v185);
              v186.origin.x = v74;
              v186.origin.y = v144;
              v186.size.width = v142;
              v186.size.height = v134;
              v136 = CGRectGetMinY(v186) - v135;
              v187.origin.y = v156;
              v187.origin.x = v157.origin.x;
              v187.size.width = r1;
              v187.size.height = v29;
              v132 = CGRectGetWidth(v187);
              v188.origin.x = v141;
              v188.origin.y = v144;
              v188.size.width = v142;
              v188.size.height = v134;
              v75 = v140 + CGRectGetHeight(v188);
              v56 = rect;
              v76.n128_f64[0] = v136;
              r1 = v132;
              v156 = v136;
              v77.n128_f64[0] = v132;
              v74 = MinX;
              v57 = v75;
              v157.origin.x = MinX;
            }

            a4 = (v158)(&v157.size, v74, v76, v77, v75);
            v55 = 0;
          }
        }

        else
        {
          v55 = 1;
          v64 = v145;
          v62 = v146;
        }
      }

      else
      {
        v55 = 1;
      }
    }

    else
    {
      v55 = 1;
    }
  }

  if (a4 == 3)
  {
    recta = v52;
    v175.origin.y = v156;
    v175.origin.x = v157.origin.x;
    v175.size.width = r1;
    v175.size.height = v57;
    v93 = CGRectGetMaxY(v175);
    [(UIView *)self bounds];
    v94 = v93 - CGRectGetHeight(v176);
    if (v55)
    {
      if ([(UITableView *)self allowsFooterViewsToFloat])
      {
        [(UITableView *)self _visibleBounds];
        v96 = v95;
        v147 = v97;
        v149 = v53;
        v99 = v98;
        v101 = v100;
        [(UITableView *)self _contentInset];
        v103 = v96 + v102;
        v105 = v99 + v104;
        v107 = v101 - (v102 + v106);
        v109 = v147 - (v104 + v108);
        v177.origin.y = v156;
        v177.origin.x = v157.origin.x;
        v177.size.width = r1;
        v177.size.height = v57;
        v110 = CGRectGetMaxY(v177);
        v178.origin.x = v103;
        v178.origin.y = v105;
        v178.size.width = v107;
        v178.size.height = v109;
        v111 = v110 - CGRectGetHeight(v178);
        v112 = self->_rowData;
        v113 = [v8 section];
        v114 = v109;
        v53 = v149;
        [(UITableViewRowData *)v112 floatingRectForFooterInSection:v113 visibleRect:0 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v103, v111, v107, v114];
        v116 = v115;
        v118 = v117;
        v179.origin.x = v56;
        v179.origin.y = recta;
        v179.size.width = v149;
        v179.size.height = v54;
        if (v94 + CGRectGetHeight(v179) > v116)
        {
          v94 = v94 + v118;
        }
      }

      else if (v45 == [(UITableViewRowData *)self->_rowData numberOfRowsInSection:v46]- 1)
      {
        v94 = v94 + [(UITableViewRowData *)self->_rowData heightForFooterInSection:v46 canGuess:0];
      }
    }

    v92 = v150 + v94;
    v52 = recta;
    goto LABEL_65;
  }

  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v171.origin.y = v156;
      v171.origin.x = v157.origin.x;
      v171.size.width = r1;
      v171.size.height = v57;
      v78 = CGRectGetMinY(v171);
      if (v55)
      {
        if ([(UITableView *)self allowsHeaderViewsToFloat])
        {
          v79 = v53;
          [(UITableView *)self _visibleBounds];
          v81 = v80;
          v83 = v82;
          v85 = v84;
          [(UITableView *)self _contentInset];
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v56 = rect;
            v53 = v79;
          }

          else
          {
            -[UITableViewRowData floatingRectForHeaderInSection:visibleRect:heightCanBeGuessed:outIsFloating:outVisibleRectDisplacement:](self->_rowData, [v8 section], 0, 0, 0, v81 + v87, v78, v83 - (v87 + v89), v85 - (v86 + v88));
            v56 = rect;
            v53 = v79;
            if (v78 < v120 + v119)
            {
              v78 = v78 - v119;
            }
          }
        }

        else if (!v45)
        {
          v78 = v78 - -[UITableViewRowData heightForHeaderInSection:canGuess:](self->_rowData, [v8 section], 0);
        }
      }

      v92 = v78 - v157.origin.y;
      if ((*(&self->_tableFlags + 20) & 2) != 0)
      {
        v92 = v92 - [(UITableViewRowData *)self->_rowData heightForTableHeaderView];
      }

      goto LABEL_65;
    }

LABEL_15:
    [(UIScrollView *)self contentOffset];
    v24 = v23;
    v26 = v25;
    goto LABEL_16;
  }

  v172.origin.x = v157.origin.x;
  v172.origin.y = v156;
  v172.size.width = r1;
  v172.size.height = v57;
  rectb = CGRectGetMinY(v172);
  v173.origin.x = v56;
  v173.origin.y = v52;
  v173.size.width = v53;
  v173.size.height = v54;
  v90 = CGRectGetHeight(v173);
  v174.size.height = v57;
  v91 = rectb - v90 * 0.5;
  v174.origin.x = v157.origin.x;
  v174.origin.y = v156;
  v174.size.width = r1;
  v92 = v91 + CGRectGetHeight(v174) * 0.5 - v157.origin.y;
LABEL_65:
  v180.origin.x = v56;
  v180.origin.y = v52;
  v180.size.width = v53;
  v180.size.height = v54;
  if (v157.origin.y + v92 + CGRectGetHeight(v180) <= v154)
  {
    v121 = v92;
  }

  else
  {
    v121 = v154 - (v157.origin.y + v54);
  }

  if (v121 >= -v157.origin.y)
  {
    v26 = v121;
  }

  else
  {
    v26 = -v157.origin.y;
  }

  v24 = 0.0;
LABEL_16:

  v27 = v24;
  v28 = v26;
  result.y = v28;
  result.x = v27;
  return result;
}

uint64_t __99__UITableView__contentOffsetForScrollingToRowAtIndexPath_atScrollPosition_usingPresentationValues___block_invoke(CGRect *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = CGRectGetMinY(a1[1]) + a1[2].origin.x;
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  v11 = v10 > CGRectGetMinY(v14);
  v12 = CGRectGetMaxY(a1[1]) - a1[2].origin.y;
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  if (v12 >= CGRectGetMaxY(v15))
  {
    return v11;
  }

  else
  {
    return 3;
  }
}

- (void)scrollToRowAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated
{
  v5 = animated;
  v16 = *MEMORY[0x1E69E9840];
  v8 = indexPath;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &scrollToRowAtIndexPath_atScrollPosition_animated____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *v13 = 138413314;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2048;
      *&v13[14] = self;
      *&v13[22] = 2112;
      v14 = v8;
      *v15 = 2048;
      *&v15[2] = scrollPosition;
      *&v15[10] = 2048;
      *&v15[12] = v5;
      v12 = *&v13[4];
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "<%@ %p> scrollToRowAtIndexPath:%@ atScrollPosition:%ld animated:%ld", v13, 0x34u);
    }
  }

  [(UITableView *)self _scrollToRowAtIndexPath:v8 atScrollPosition:scrollPosition animated:v5 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues:*v13]];
}

- (void)_scrollToRowAtIndexPath:(id)a3 atScrollPosition:(int64_t)a4 animated:(BOOL)a5 usingPresentationValues:(BOOL)a6
{
  v7 = a5;
  v10 = a3;
  if (!a6)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v29 = v10;
      v12 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v10];

      v10 = v12;
      if (!v12)
      {
        return;
      }
    }
  }

  v30 = v10;
  [(UITableView *)self _contentOffsetForScrollingToRowAtIndexPath:v10 atScrollPosition:a4 usingPresentationValues:1];
  v14 = v13;
  v16 = v15;
  v18 = *MEMORY[0x1E695EFF8];
  v17 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(UITableView *)self _estimatesHeights])
  {
    if (!v7)
    {
      v23 = 0;
      v27 = 1;
      goto LABEL_12;
    }

    [(UIView *)self bounds];
    v21 = [(UITableViewRowData *)self->_rowData indexPathsForRowsInRect:v14, v16, v19, v20];
    v22 = [v21 firstObject];
    v23 = v22;
    if (v22)
    {
      [(UITableViewRowData *)self->_rowData rectForRow:[(NSIndexPath *)v22 section] inSection:0 heightCanBeGuessed:?];
      v25 = v24;
      v26 = v23;
      v17 = v16 - v25;
      v18 = 0.0;
    }
  }

  else
  {
    v23 = 0;
  }

  v27 = 0;
LABEL_12:
  [(UIScrollView *)self setContentOffset:v7 animated:v14, v16];
  targetIndexPathForScrolling = self->_targetIndexPathForScrolling;
  self->_targetIndexPathForScrolling = v23;

  self->_targetOffsetToIndexPathForScrolling.x = v18;
  self->_targetOffsetToIndexPathForScrolling.y = v17;
  if (v27)
  {
    *(&self->_tableFlags + 3) &= ~0x200uLL;
  }
}

- (void)scrollToNearestSelectedRowAtScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated
{
  v4 = animated;
  v7 = [(UITableView *)self _indexPathForSelectedRowUsingPresentationValues:1];
  [(UITableView *)self _scrollToRowAtIndexPath:v7 atScrollPosition:scrollPosition animated:v4 usingPresentationValues:1];
}

- (void)endUpdatesWithContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &endUpdatesWithContext____s_category);
  if (*CategoryCachedImpl)
  {
    v7 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v10 = 138412546;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = self;
      v9 = v11;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "<%@ %p> endUpdatesWithContext", &v10, 0x16u);
    }
  }

  v6 = self->_updateCount - 1;
  self->_updateCount = v6;
  if (!v6)
  {
    [(UITableView *)self _endCellAnimationsWithContext:v4];
  }
}

- (void)_performBatchUpdates:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_updateCompletionHandler;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __59__UITableView__performBatchUpdates_withContext_completion___block_invoke;
  v19 = &unk_1E70FE248;
  v12 = v11;
  v20 = v12;
  v13 = v10;
  v21 = v13;
  v14 = [&v16 copy];
  updateCompletionHandler = self->_updateCompletionHandler;
  self->_updateCompletionHandler = v14;

  if ((*(&self->_tableFlags + 28) & 0x10) == 0 || (dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UIView *)self layoutBelowIfNeeded:v16];
  }

  [(UITableView *)self beginUpdates:v16];
  if (v8)
  {
    v8[2](v8);
  }

  [(UITableView *)self endUpdatesWithContext:v9];
}

uint64_t __59__UITableView__performBatchUpdates_withContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)_arrayForUpdateAction:(int)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = 2640;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_13;
      }

      v4 = 2648;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_13;
    }

    v4 = 2632;
  }

  else
  {
    v4 = 2624;
  }

  v5 = (&self->super.super.super.super.isa + v4);
  v6 = *(&self->super.super.super.super.isa + v4);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *v5;
    *v5 = v7;

    v6 = *v5;
  }

  v3 = v6;
LABEL_13:

  return v3;
}

- (id)_updateSections:(id)a3 withUpdateAction:(int)a4 rowAnimation:(int64_t)a5 headerFooterOnly:(BOOL)a6 usingPresentationValues:(BOOL)a7
{
  v10 = *&a4;
  v13 = a3;
  if (!a7)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v15 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionsAfterShadowUpdates:v13 allowAppendingInsert:v10 == 0];

      v13 = v15;
    }
  }

  if ((*(&self->_tableFlags + 22) & 0x40) != 0)
  {
    swipedIndexPath = self->_swipedIndexPath;
    if (!swipedIndexPath)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = NSStringFromSelector(a2);
      [v26 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8523 description:{@"UITableView internal inconsistency: the _swipedIndexPath cannot be nil if the swipe to delete row is being deleted in %@", v27}];

      swipedIndexPath = self->_swipedIndexPath;
    }

    v17 = [v13 containsIndex:{-[NSIndexPath section](swipedIndexPath, "section")}];
    if (v10 == 2 && v17)
    {
      [(UISwipeActionController *)self->_swipeActionController resetSwipedItemAnimated:0 completion:0];
    }
  }

  if ([(UITableView *)self _isPerformingShadowUpdates])
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(UITableView *)self _isUpdating];
  if (!v19)
  {
    [(UITableView *)self _setupCellAnimations];
  }

  v20 = [(UITableView *)self _arrayForUpdateAction:v10];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __102__UITableView__updateSections_withUpdateAction_rowAnimation_headerFooterOnly_usingPresentationValues___block_invoke;
  v28[3] = &unk_1E71236D8;
  v32 = v10;
  v33 = a6;
  v31 = a5;
  v28[4] = self;
  v21 = v18;
  v29 = v21;
  v30 = v20;
  v22 = v20;
  [v13 enumerateIndexesUsingBlock:v28];
  if (!v19)
  {
    [(UITableView *)self _endCellAnimationsWithContext:0];
  }

  v23 = v30;
  v24 = v21;

  return v21;
}

void __102__UITableView__updateSections_withUpdateAction_rowAnimation_headerFooterOnly_usingPresentationValues___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [UIUpdateItem alloc];
  v5 = *(a1 + 64);
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:a2];
  v9 = [(UIUpdateItem *)&v4->super.isa initWithAction:v5 forIndexPath:v6 animation:*(a1 + 56)];

  if (v9)
  {
    if (*(a1 + 68))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(v9 + 16) = v9[2] & 0xFD | v7;
  }

  v8 = [*(a1 + 32) _addToShadowUpdatesControllerIfNeeded:?];
  if (v8)
  {
    [*(a1 + 40) addObject:v8];
  }

  [*(a1 + 48) addObject:v9];
  *(*(a1 + 32) + 3184) &= ~0x20000000uLL;
}

- (void)insertSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = sections;
  if ((*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8558 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &insertSections_withRowAnimation____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 138413058;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = animation;
      v12 = v15;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "<%@ %p> insertSections:%@ withRowAnimation:%ld", buf, 0x2Au);
    }
  }

  v9 = [(UITableView *)self _updateSections:v7 withUpdateAction:0 rowAnimation:animation headerFooterOnly:0 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (void)deleteSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = sections;
  if ((*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8565 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &deleteSections_withRowAnimation____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 138413058;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = animation;
      v12 = v15;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "<%@ %p> deleteSections:%@ withRowAnimation:%ld", buf, 0x2Au);
    }
  }

  v9 = [(UITableView *)self _updateSections:v7 withUpdateAction:1 rowAnimation:animation headerFooterOnly:0 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (void)reloadSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = sections;
  if ((*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8572 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &reloadSections_withRowAnimation____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 138413058;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = animation;
      v12 = v15;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "<%@ %p> reloadSections:%@ withRowAnimation:%ld", buf, 0x2Au);
    }
  }

  if (animation == UITableViewRowAnimationAutomatic)
  {
    animation = UITableViewRowAnimationFade;
  }

  v9 = [(UITableView *)self _updateSections:v7 withUpdateAction:2 rowAnimation:animation headerFooterOnly:0 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (void)_reloadSectionHeaderFooters:(id)a3 withRowAnimation:(int64_t)a4
{
  v7 = a3;
  if (a4 == 100)
  {
    a4 = 0;
  }

  v6 = [(UITableView *)self _updateSections:v7 withUpdateAction:2 rowAnimation:a4 headerFooterOnly:1 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (id)_moveSection:(int64_t)a3 toSection:(int64_t)a4 usingPresentationValues:(BOOL)a5
{
  v6 = a3;
  if (!a5)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v6 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionAfterShadowUpdates:a3];
      a4 = [(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController sectionAfterShadowUpdates:a4];
    }
  }

  v9 = [(UITableView *)self _arrayForUpdateAction:3];
  v10 = [UIRowMoveUpdateItem alloc];
  v11 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:v6];
  v12 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:a4];
  v13 = [(UIRowMoveUpdateItem *)&v10->super.super.isa initWithOldIndexPath:v11 newIndexPath:v12];

  v14 = [(UITableView *)self _addToShadowUpdatesControllerIfNeeded:v13];
  [v9 addObject:v13];
  if (![(UITableView *)self _isUpdating])
  {
    [(UITableView *)self _setupCellAnimations];
    [(UITableView *)self _endCellAnimationsWithContext:0];
  }

  return v14;
}

- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection
{
  v22 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least() && (*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8605 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &moveSection_toSection____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 138413058;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v18 = 2048;
      v19 = section;
      v20 = 2048;
      v21 = newSection;
      v12 = v15;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "<%@ %p> moveSection:%ld toSection:%ld", buf, 0x2Au);
    }
  }

  v9 = [(UITableView *)self _moveSection:section toSection:newSection usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (id)_updateRowsAtIndexPaths:(id)a3 withUpdateAction:(int)a4 rowAnimation:(int64_t)a5 usingPresentationValues:(BOOL)a6
{
  v8 = *&a4;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!a6)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v12 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathsAfterShadowUpdates:v10 allowAppendingInsert:v8 == 0];

      v10 = v12;
    }
  }

  if ([(UITableView *)self _isPerformingShadowUpdates])
  {
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  }

  else
  {
    v23 = 0;
  }

  v21 = [(UITableView *)self _isUpdating];
  if (!v21)
  {
    [(UITableView *)self _setupCellAnimations];
  }

  v13 = [(UITableView *)self _arrayForUpdateAction:v8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [[UIUpdateItem alloc] initWithAction:v8 forIndexPath:*(*(&v24 + 1) + 8 * i) animation:a5];
        v19 = [(UITableView *)self _addToShadowUpdatesControllerIfNeeded:v18];
        if (v19)
        {
          [v23 addObject:v19];
        }

        [v13 addObject:v18];
      }

      v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  if (!v21)
  {
    [(UITableView *)self _endCellAnimationsWithContext:0];
  }

  return v23;
}

- (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = indexPaths;
  if ((*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8639 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &insertRowsAtIndexPaths_withRowAnimation____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 138413058;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = animation;
      v12 = v15;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "<%@ %p> insertRowsAtIndexPaths:%@ withRowAnimation:%ld", buf, 0x2Au);
    }
  }

  v9 = [(UITableView *)self _updateRowsAtIndexPaths:v7 withUpdateAction:0 rowAnimation:animation usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (void)deleteRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = indexPaths;
  if ((*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8646 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &deleteRowsAtIndexPaths_withRowAnimation____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 138413058;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = animation;
      v12 = v15;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "<%@ %p> deleteRowsAtIndexPaths:%@ withRowAnimation:%ld", buf, 0x2Au);
    }
  }

  v9 = [(UITableView *)self _updateRowsAtIndexPaths:v7 withUpdateAction:1 rowAnimation:animation usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (void)reloadRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = indexPaths;
  if ((*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8653 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &reloadRowsAtIndexPaths_withRowAnimation____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 138413058;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = animation;
      v12 = v15;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "<%@ %p> reloadRowsAtIndexPaths:%@ withRowAnimation:%ld", buf, 0x2Au);
    }
  }

  if (animation == UITableViewRowAnimationAutomatic)
  {
    animation = UITableViewRowAnimationFade;
  }

  v9 = [(UITableView *)self _updateRowsAtIndexPaths:v7 withUpdateAction:2 rowAnimation:animation usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (void)reconfigureRowsAtIndexPaths:(NSArray *)indexPaths
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = indexPaths;
  if ((*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8659 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &reconfigureRowsAtIndexPaths____s_category);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      *buf = 138412802;
      v20 = objc_opt_class();
      v21 = 2048;
      v22 = self;
      v23 = 2112;
      v24 = v5;
      v13 = v20;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "<%@ %p> reconfigureRowsAtIndexPaths:%@", buf, 0x20u);
    }
  }

  [(UITableView *)self _reloadDataIfNeeded];
  v7 = [(UITableView *)self _isUpdating];
  if (!v7)
  {
    [(UITableView *)self _setupCellAnimations];
  }

  v8 = [(UITableView *)self _isUsingPresentationValues];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__UITableView_reconfigureRowsAtIndexPaths___block_invoke;
  aBlock[3] = &unk_1E70F5AF0;
  v9 = v5;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v10 = _Block_copy(aBlock);
  if (+[UIView areAnimationsEnabled])
  {
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:1028 options:v10 animations:0 completion:?];
    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10[2](v10);
  if (!v7)
  {
LABEL_10:
    [(UITableView *)self _endCellAnimationsWithContext:0];
  }

LABEL_11:
}

void __43__UITableView_reconfigureRowsAtIndexPaths___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _reconfigureRowAtIndexPath:*(*(&v7 + 1) + 8 * v6++) usingPresentationValues:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_reconfigureRowAtIndexPath:(id)a3 usingPresentationValues:(BOOL)a4
{
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8688 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

    v7 = 0;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    v12 = v7;
    v9 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v7];

    v7 = v9;
  }

LABEL_5:
  v13 = v7;
  v10 = [(UITableView *)self _cellForRowAtIndexPath:v7 usingPresentationValues:1];
  if (v10)
  {
    [(UITableView *)self _reconfigureCell:v10 forRowAtIndexPath:v13];
  }
}

- (void)_reconfigureCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8702 description:{@"Invalid parameter not satisfying: %@", @"cell != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8703 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

LABEL_3:
  if (self->_cellBeingReconfigured)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [(UITableView *)self dataSourceIndexPathForPresentationIndexPath:v10];
    cellBeingReconfigured = self->_cellBeingReconfigured;
    v24 = [(UITableView *)self dataSourceIndexPathForPresentationIndexPath:self->_indexPathBeingReconfigured];
    [v31 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8706 description:{@"Attempted to reconfigure a cell while already in the process of reconfiguring a cell. Check the backtrace to see what's causing this. (Attempted to reconfigure cell %@ for index path %@ while already reconfiguring cell %@ for index path %@)", v8, v23, cellBeingReconfigured, v24}];
  }

  objc_storeStrong(&self->_cellBeingReconfigured, a3);
  objc_storeStrong(&self->_indexPathBeingReconfigured, a4);
  v11 = _UISetCurrentFallbackEnvironment(self);
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableView", &qword_1EA967568);
  v13 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    [v10 section];
    [v10 row];
    _os_signpost_emit_unreliably_with_name_impl();
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (!WeakRetained)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8713 description:{@"UITableView dataSource is not set: %@", self}];
  }

  if ((*&self->_tableFlags & 2) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_loadWeakRetained(&self->_dataSource);
    [v26 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8714 description:{@"UITableView dataSource does not implement required method -tableView:cellForRowAtIndexPath: %@", v27}];
  }

  v15 = [(UITableView *)self _dataSourceProxy];
  v16 = [v15 tableView:self cellForRowAtIndexPath:v10];

  if (v16 != v8)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [(UITableView *)self dataSourceIndexPathForPresentationIndexPath:v10];
    [v28 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8716 description:{@"UITableView dataSource returned a different cell from -tableView:cellForRowAtIndexPath: than the cell being reconfigured, which is not allowed. When reconfiguring a row, you must obtain the existing cell by dequeuing a cell for the index path specified, using the same reuse identifier that was used to dequeue the cell originally, and return the same cell. Index path: %@; Existing cell: %@; Returned cell: %@", v29, v8, v16}];
  }

  v17 = __UILogGetCategoryCachedImpl("TableView", &qword_1EA967570);
  v18 = *(v17 + 8);
  if (os_signpost_id_make_with_pointer(*(v17 + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

  _UIRestorePreviousFallbackEnvironment(v11);
  v19 = self->_cellBeingReconfigured;
  self->_cellBeingReconfigured = 0;

  indexPathBeingReconfigured = self->_indexPathBeingReconfigured;
  self->_indexPathBeingReconfigured = 0;
}

- (id)_moveRowAtIndexPath:(id)a3 toIndexPath:(id)a4 usingPresentationValues:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 || (shadowUpdatesController = self->_shadowUpdatesController) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v8];

    v12 = 0;
    if (v9 && v11)
    {
      v13 = [v9 section];
      v12 = v13 != [v11 section];
    }

    v14 = [(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController indexPathAfterShadowUpdates:v9 allowAppendingInsert:v12];

    v9 = v14;
  }

  v15 = [(UITableView *)self _arrayForUpdateAction:3];
  v16 = [[UIRowMoveUpdateItem alloc] initWithOldIndexPath:v11 newIndexPath:v9];
  v17 = [(UITableView *)self _addToShadowUpdatesControllerIfNeeded:v16];
  [v15 addObject:v16];
  if (![(UITableView *)self _isUpdating])
  {
    [(UITableView *)self _setupCellAnimations];
    [(UITableView *)self _endCellAnimationsWithContext:0];
  }

  return v17;
}

- (void)moveRowAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = indexPath;
  v8 = newIndexPath;
  if ((*(&self->_tableFlags + 3) & 0x3000000000) == 0x1000000000)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:8747 description:{@"UITableView must be updated via the UITableViewDiffableDataSource APIs when acting as the UITableView's dataSource: please do not call mutation APIs directly on UITableView. %@", self}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &moveRowAtIndexPath_toIndexPath____s_category);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      *buf = 138413058;
      v16 = objc_opt_class();
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v13 = v16;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "<%@ %p> moveRowAtIndexPath:%@ toIndexPath:%@", buf, 0x2Au);
    }
  }

  v10 = [(UITableView *)self _moveRowAtIndexPath:v7 toIndexPath:v8 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
}

- (void)setAllowsSelection:(BOOL)allowsSelection
{
  v3 = 4096;
  if (!allowsSelection)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFFFEFFFLL | v3;
  if (!allowsSelection)
  {
    [(UITableView *)self setAllowsMultipleSelection:0];
  }
}

- (void)setAllowsSelectionDuringEditing:(BOOL)allowsSelectionDuringEditing
{
  v3 = 0x2000;
  if (!allowsSelectionDuringEditing)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFFFDFFFLL | v3;
  if (!allowsSelectionDuringEditing)
  {
    [(UITableView *)self setAllowsMultipleSelectionDuringEditing:0];
  }
}

- (BOOL)_allowsEffectiveSelectionOrCustomActionAtIndexPath:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
    if (-[UITableView allowsSelectionDuringEditing](self, "allowsSelectionDuringEditing") || -[UITableView _isRowMultiSelect:](self, "_isRowMultiSelect:", v4) || [v4 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v4, "section") == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }
  }

  else if ([(UITableView *)self allowsSelection])
  {
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  v5 = [(UITableView *)self _cellForRowAtIndexPath:v4 usingPresentationValues:1];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 _hasCustomSelectionAction];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  v8 = [(UITableView *)self _canPerformPrimaryActionForRowAtIndexPath:v4];
LABEL_11:

  return v8;
}

- (BOOL)_allowsEffectiveSelection
{
  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
    v2 = 0x2000;
  }

  else
  {
    v2 = 4096;
  }

  return (v2 & *(&self->_tableFlags + 4)) != 0;
}

- (void)setSelectionFollowsFocus:(BOOL)selectionFollowsFocus
{
  v3 = 0x10000;
  if (selectionFollowsFocus)
  {
    v3 = 0x20000;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFFCFFFFLL | v3;
  [(UITableView *)self _updateSelectionIsKey];
}

- (void)_setShouldBecomeFocusedOnSelection:(BOOL)a3
{
  v3 = 0x40000;
  if (a3)
  {
    v3 = 0x80000;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFF3FFFFLL | v3;
}

- (BOOL)_shouldBecomeFocusedOnSelection
{
  v2 = (*(&self->_tableFlags + 2) >> 18) & 3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__UITableView__shouldBecomeFocusedOnSelection__block_invoke;
  v4[3] = &unk_1E70F3CB0;
  v4[4] = self;
  return _UITriStateToBool_0(v2, v4);
}

uint64_t __46__UITableView__shouldBecomeFocusedOnSelection__block_invoke(uint64_t a1)
{
  if (dyld_program_sdk_at_least())
  {
    return 1;
  }

  v3 = [*(a1 + 32) traitCollection];
  v2 = [v3 _splitViewControllerContext] == 3;

  return v2;
}

- (void)setAllowsFocus:(BOOL)allowsFocus
{
  v3 = 0x100000;
  if (allowsFocus)
  {
    v3 = 0x200000;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFCFFFFFLL | v3;
}

- (void)setAllowsFocusDuringEditing:(BOOL)allowsFocusDuringEditing
{
  v3 = 0x400000;
  if (allowsFocusDuringEditing)
  {
    v3 = 0x800000;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFF3FFFFFLL | v3;
}

- (BOOL)_defaultAllowsFocusDuringEditing
{
  if (dyld_program_sdk_at_least())
  {
    if (![(UITableView *)self allowsSelectionDuringEditing])
    {
      return 0;
    }
  }

  else if (![(UITableView *)self allowsSelection])
  {
    return 0;
  }

  v4 = [(UIView *)self _focusBehavior];
  if ([v4 cellFocusability] == 2)
  {
    v5 = [(UIView *)self traitCollection];
    v3 = [v5 _hasSplitViewControllerContextSidebarColumn];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)allowsFocusDuringEditing
{
  v2 = (*(&self->_tableFlags + 2) >> 22) & 3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__UITableView_allowsFocusDuringEditing__block_invoke;
  v4[3] = &unk_1E70F3CB0;
  v4[4] = self;
  return _UITriStateToBool_0(v2, v4);
}

- (BOOL)_effectiveDefaultAllowsFocus
{
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
    goto LABEL_6;
  }

  if ([(UITableView *)self _defaultAllowsFocus])
  {
    return 1;
  }

  if ((*(p_tableFlags + 14) & 0x40) == 0)
  {
    return 0;
  }

LABEL_6:

  return [(UITableView *)self _defaultAllowsFocusDuringEditing];
}

- (id)_indexPathForSelectedRowUsingPresentationValues:(BOOL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_selectedIndexPaths;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        if (!v8 || (v12 = [*(*(&v20 + 1) + 8 * v10) section], v12 < objc_msgSend(v8, "section")) || (v14 = objc_msgSend(v11, "section"), v14 == objc_msgSend(v8, "section")) && (v15 = objc_msgSend(v11, "row"), v15 < objc_msgSend(v8, "row")))
        {
          v13 = v11;

          v8 = v13;
        }

        ++v10;
      }

      while (v7 != v10);
      v16 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v7 = v16;
    }

    while (v16);
  }

  else
  {
    v8 = 0;
  }

  if (!a3)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v18 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathBeforeShadowUpdates:v8];

      v8 = v18;
    }
  }

  return v8;
}

- (id)_indexPathsForSelectedRowsUsingPresentationValues:(BOOL)a3
{
  if ([(NSMutableArray *)self->_selectedIndexPaths count])
  {
    v5 = [(NSMutableArray *)self->_selectedIndexPaths copy];
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    v7 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathsBeforeShadowUpdates:v5];

    v5 = v7;
  }

LABEL_7:

  return v5;
}

- (id)_indexPathsForHighlightedRows
{
  v3 = [(UITableView *)self _isUsingPresentationValues];

  return [(UITableView *)self _indexPathsForHighlightedRowsUsingPresentationValues:v3];
}

- (id)_indexPathsForHighlightedRowsUsingPresentationValues:(BOOL)a3
{
  if ([(NSMutableArray *)self->_highlightedIndexPaths count])
  {
    v5 = [(NSMutableArray *)self->_highlightedIndexPaths copy];
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    v7 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathsBeforeShadowUpdates:v5];

    v5 = v7;
  }

LABEL_7:

  return v5;
}

- (BOOL)_canRowBeIncludedInMultipleSelection:(id)a3
{
  v4 = a3;
  if ([v4 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v4, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_3;
  }

  if ([(UITableView *)self _allowsEffectiveMultipleSelection])
  {
    v5 = 1;
    goto LABEL_4;
  }

  if ((*(&self->_tableFlags + 14) & 0x40) == 0)
  {
LABEL_3:
    v5 = 0;
  }

  else
  {
    v7 = [(UITableView *)self _existingCellForRowAtIndexPath:v4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 editingStyle];
    }

    else
    {
      v9 = [(UITableView *)self _editingStyleForRowAtIndexPath:v4];
    }

    v5 = v9 == 3;
  }

LABEL_4:

  return v5;
}

- (void)_forciblyCancelPendingSelection
{
  pendingSelectionIndexPath = self->_pendingSelectionIndexPath;
  self->_pendingSelectionIndexPath = 0;

  *(&self->_tableFlags + 2) |= 0x100uLL;

  [(UITableView *)self setCurrentTouch:0];
}

- (BOOL)_shouldSpringLoadRowAtIndexPath:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UITableViewDragController *)self->_dragController indexPaths];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 containsObject:v6] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(UITableView *)self _delegateProxy];
    v14 = [v13 tableView:self shouldSpringLoadRowAtIndexPath:v6 withContext:v7];
LABEL_8:
    LOBYTE(v10) = v14;

    goto LABEL_9;
  }

  v15 = objc_loadWeakRetained(&self->super._delegate);
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v13 = [(UITableView *)self _delegateProxy];
    v14 = [v13 _tableView:self shouldSpringLoadRowAtIndexPath:v6 withContext:v7];
    goto LABEL_8;
  }

LABEL_9:

  return v10;
}

- (void)_unhighlightSpringLoadedRow
{
  [(UITableView *)self unhighlightRowAtIndexPath:self->_highlightedSpringLoadedIndexPath animated:0];
  highlightedSpringLoadedIndexPath = self->_highlightedSpringLoadedIndexPath;
  self->_highlightedSpringLoadedIndexPath = 0;
}

- (void)_highlightSpringLoadedRowAtIndexPath:(id)a3
{
  objc_storeStrong(&self->_highlightedSpringLoadedIndexPath, a3);
  v5 = a3;
  [(UITableView *)self _highlightRowAtIndexPath:v5 animated:0 scrollPosition:0 usingPresentationValues:1];
}

- (BOOL)highlightRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  LOBYTE(a5) = [(UITableView *)self _highlightRowAtIndexPath:v8 animated:v6 scrollPosition:a5 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];

  return a5;
}

- (BOOL)_highlightRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 usingPresentationValues:(BOOL)a6 playFeedback:(BOOL)a7
{
  v9 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (!a6)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v13 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v11];

      v11 = v13;
    }
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  if (([(NSMutableArray *)self->_highlightedIndexPaths containsObject:v11]& 1) != 0)
  {
LABEL_6:
    v14 = 1;
    goto LABEL_21;
  }

  if (![(UITableView *)self _allowsEffectiveSelectionOrCustomActionAtIndexPath:v11])
  {
LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  if ([v11 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = 2400;
    v31 = v11;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = self->_highlightedIndexPaths;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = [(UITableView *)self _existingCellForRowAtIndexPath:v20, v30];
          [v21 setHighlighted:0 animated:v9];

          if ((*(&self->_tableFlags + 9) & 0x20) != 0)
          {
            v22 = [(UITableView *)self _delegateProxy];
            [v22 tableView:self didUnhighlightRowAtIndexPath:v20];
          }
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    [*(&self->super.super.super.super.isa + v30) removeAllObjects];
    v14 = 0;
    v11 = v31;
  }

  else
  {
    if ((*(&self->_tableFlags + 9) & 8) == 0 || -[_UISelectionInteraction isHinting](self->_selectionInteraction, "isHinting") || (-[UITableView _delegateProxy](self, "_delegateProxy"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 tableView:self shouldHighlightRowAtIndexPath:v11], v24, v25))
    {
      [(NSMutableArray *)self->_highlightedIndexPaths addObject:v11];
      v26 = [(UITableView *)self _existingCellForRowAtIndexPath:v11];
      [v26 setHighlighted:1 animated:v9];
      if ((*(&self->_tableFlags + 9) & 0x10) != 0)
      {
        v27 = [(UITableView *)self _delegateProxy];
        [v27 tableView:self didHighlightRowAtIndexPath:v11];
      }

      if (a5)
      {
        [(UITableView *)self _scrollToRowAtIndexPath:v11 atScrollPosition:a5 animated:v9 usingPresentationValues:1];
      }

      goto LABEL_6;
    }

    v28 = [(UITableView *)self _existingCellForRowAtIndexPath:v11];
    v29 = v28;
    if (v28)
    {
      v14 = [v28 _hasCustomSelectionAction];
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_21:

  return v14;
}

- (void)unhighlightRowAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([(NSMutableArray *)self->_highlightedIndexPaths containsObject:?])
  {
    [(NSMutableArray *)self->_highlightedIndexPaths removeObject:v8];
    v6 = [(UITableView *)self _existingCellForRowAtIndexPath:v8];
    [v6 setHighlighted:0 animated:v4];

    if ((*(&self->_tableFlags + 9) & 0x20) != 0)
    {
      v7 = [(UITableView *)self _delegateProxy];
      [v7 tableView:self didUnhighlightRowAtIndexPath:v8];
    }
  }
}

- (void)_highlightCell:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 highlight:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = [(UITableView *)self _indexPathForCell:a3 usingPresentationValues:1];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    if (v6)
    {
      [(UITableView *)self _highlightRowAtIndexPath:v10 animated:v8 scrollPosition:a5 usingPresentationValues:1];
    }

    else
    {
      [(UITableView *)self unhighlightRowAtIndexPath:v10 animated:v8];
    }

    v11 = v12;
  }
}

- (BOOL)_inferFocusabilityForCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(NSMutableArray *)self->_selectedIndexPaths containsObject:v7]& 1) == 0)
  {
    v9 = [v6 _existingContentView];
    if (!v9 || !dyld_program_sdk_at_least() || (_UIViewContainsFocusableSubviews(v9) & 1) == 0)
    {
      if ([v6 _hasCustomSelectionAction])
      {
        v8 = 1;
LABEL_15:

        goto LABEL_16;
      }

      if ([(UITableView *)self _allowsEffectiveSelectionOrCustomActionAtIndexPath:v7])
      {
        v10 = [(UITableView *)self _delegateProxy];
        v11 = v10;
        v8 = !v10 || (*(&self->_tableFlags + 9) & 8) == 0 || [v10 tableView:self shouldHighlightRowAtIndexPath:v7];

        goto LABEL_15;
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_16:

  return v8;
}

- (void)_selectRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 notifyDelegate:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v11 = a3;
  LOBYTE(v10) = 0;
  [(UITableView *)self _selectRowAtIndexPath:v11 animated:v8 scrollPosition:a5 notifyDelegate:v6 isCellMultiSelect:[(UITableView *)self _isRowMultiSelect:v11] deselectPrevious:0 performCustomSelectionAction:v10];
}

- (void)_selectRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 notifyDelegate:(BOOL)a6 isCellMultiSelect:(BOOL)a7 deselectPrevious:(BOOL)a8 performCustomSelectionAction:(BOOL)a9
{
  v9 = a8;
  v59 = a7;
  v60 = a6;
  v11 = a4;
  v78 = *MEMORY[0x1E69E9840];
  v13 = a3;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &_selectRowAtIndexPath_animated_scrollPosition_notifyDelegate_isCellMultiSelect_deselectPrevious_performCustomSelectionAction____s_category);
  if (*CategoryCachedImpl)
  {
    v52 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = v52;
      *buf = 138413570;
      v67 = objc_opt_class();
      v68 = 2048;
      v69 = self;
      v70 = 2112;
      v71 = v13;
      v72 = 2048;
      v73 = v11;
      v74 = 2048;
      v75 = a5;
      v76 = 2048;
      v77 = v60;
      v54 = v67;
      _os_log_impl(&dword_188A29000, v53, OS_LOG_TYPE_ERROR, "<%@ %p> _selectRowAtIndexPath:%@ animated:%ld scrollPosition:%ld notifyDelegate:%ld", buf, 0x3Eu);
    }
  }

  v58 = a5;
  [(UITableView *)self _reloadDataIfNeeded];
  v15 = [v13 row];
  v16 = [v13 section];
  if (v13)
  {
    v17 = v16;
    v18 = 0;
    v19 = v16 != 0x7FFFFFFFFFFFFFFFLL;
    v20 = v15 != 0x7FFFFFFFFFFFFFFFLL;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v57 = 0;
    }

    else
    {
      v21 = [(UITableView *)self _existingCellForRowAtIndexPath:v13];
      v18 = v21;
      v22 = v21 != 0;
      v20 = 1;
      if (a9 && v21)
      {
        if ([v21 _hasCustomSelectionAction])
        {
          [v18 _performCustomSelectionAction];
          goto LABEL_69;
        }

        v22 = 1;
      }

      v57 = v22;
      v19 = 1;
    }
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
    v57 = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
    goto LABEL_17;
  }

  if (![(UITableView *)self allowsSelection])
  {
LABEL_18:
    v23 = 0;
LABEL_22:
    v24 = 0;
    if (v60 && a9)
    {
      v24 = [(UITableView *)self _canPerformPrimaryActionForRowAtIndexPath:v13];
    }

    if (v23)
    {
      if (!v60 || (*(&self->_tableFlags + 5) & 0x40) == 0)
      {
        v25 = v13;
        goto LABEL_29;
      }

      v48 = v24;
      v49 = [(UITableView *)self _delegateProxy];
      v25 = [v49 tableView:self willSelectRowAtIndexPath:v13];

      v15 = [v25 row];
      v50 = [v25 section];
      if (v25)
      {
        v17 = v50;
        v24 = v48;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL && v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_29:
          v26 = *(&self->_tableFlags + 3);
          *(&self->_tableFlags + 3) = v26 | 0x80000000000000;
          v56 = v24;
          v55 = v26;
          if (v9)
          {
            [(UITableView *)self _deselectAllRowsAnimated:v11 notifyDelegate:v60 excludingMultiSelectRows:0];
          }

          else if (!v59)
          {
            v34 = [(UITableView *)self _indexPathForSelectedRowUsingPresentationValues:1];
            v35 = [v34 isEqual:v25];

            if ((v35 & 1) == 0)
            {
              [(UITableView *)self _deselectAllNonMultiSelectRowsAnimated:v11 notifyDelegate:v60];
            }
          }

          v36 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:v17];
          if (([(NSMutableArray *)self->_selectedIndexPaths containsObject:v36]& 1) == 0)
          {
            [(NSMutableArray *)self->_selectedIndexPaths addObject:v36];
          }

          [v18 setSelected:1 animated:v11];
          if (v58)
          {
            [(UITableView *)self _scrollToRowAtIndexPath:v25 atScrollPosition:v58 animated:v11 usingPresentationValues:1];
          }

          v37 = [(UIView *)self _focusSystem];
          v38 = [v37 focusedItem];
          v39 = v18;
          v40 = [(UITableView *)self _shouldSelectionFollowFocusForIndexPath:v25 initiatedBySelection:1];
          v41 = v38 != v39 && v57;
          if (v41 && dyld_program_sdk_at_least())
          {
            if (v40)
            {
              if ((!v60 | [v37 _focusedItemIsContainedInEnvironment:self includeSelf:1]))
              {
                if (!v38)
                {
LABEL_57:
                  if (([v37 _focusedItemIsContainedInEnvironment:self includeSelf:1] & 1) == 0)
                  {
                    [(UIView *)self setNeedsFocusUpdate];
                  }

                  goto LABEL_59;
                }
              }

              else
              {
                v51 = [(UITableView *)self _shouldBecomeFocusedOnSelection];
                if (v51 || !v38)
                {
                  if (!v51)
                  {
                    goto LABEL_57;
                  }

                  goto LABEL_80;
                }
              }

              if (([v37 _focusedItemIsContainedInEnvironment:self includeSelf:1] & 1) == 0)
              {
                goto LABEL_57;
              }

LABEL_80:
              [v37 _updateFocusImmediatelyToEnvironment:v39];
            }
          }

          else if (v40)
          {
            goto LABEL_57;
          }

LABEL_59:
          if (v60)
          {
            v42 = [v39 selectionSegueTemplate];
            v43 = [v42 perform:v39];

            if (*(&self->_tableFlags + 6))
            {
              [UIViewController _sendPrepareForTapGesture:v39];
              v44 = [(UITableView *)self _delegateProxy];
              [v44 tableView:self didSelectRowAtIndexPath:v25];
            }

            [(UITableView *)self _selectedIndexPathsDidChange];
          }

          *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFF7FFFFFFFFFFFFFLL | (((v55 >> 55) & 1) << 55);

          v24 = v56;
        }
      }

      else
      {
        v24 = v48;
      }
    }

    else
    {
      v25 = v13;
    }

    if (v24)
    {
      v45 = [(UITableView *)self _delegateProxy];
      [v45 tableView:self performPrimaryActionForRowAtIndexPath:v25];
    }

    v46 = [(UITableView *)self _focusedCellIndexPath];
    v47 = [v46 isEqual:v25];

    if (v47)
    {
      [(UITableView *)self _updateSelectionIsKey];
    }

    v13 = v25;
    goto LABEL_69;
  }

  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
LABEL_17:
    if (![(UITableView *)self allowsSelectionDuringEditing]&& v20 && !v59 && v19)
    {
      goto LABEL_18;
    }
  }

  if (v15 != 0x7FFFFFFFFFFFFFFFLL && v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 1;
    goto LABEL_22;
  }

  v27 = [(NSMutableArray *)self->_selectedIndexPaths copy];
  [(NSMutableArray *)self->_selectedIndexPaths removeAllObjects];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v62;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [(UITableView *)self _existingCellForRowAtIndexPath:*(*(&v61 + 1) + 8 * i)];
        [v33 setSelected:0 animated:v11];
      }

      v30 = [v28 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v30);
  }

LABEL_69:
}

- (void)_userSelectRowAtPendingSelectionIndexPath:(id)a3 animatedSelection:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = self;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    while ([v8 isUserInteractionEnabled])
    {
      v9 = [v8 superview];

      v8 = v9;
      if (!v9)
      {

        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    [(UITableView *)v7 unhighlightRowAtIndexPath:v15 animated:0];
    v10 = [(UITableView *)v7 _existingCellForRowAtIndexPath:v15];
    v11 = [v10 isSelected];

    v12 = [(UITableView *)v7 _canPerformPrimaryActionForRowAtIndexPath:v15];
    v13 = [(UITableView *)v7 _isRowMultiSelect:v15];
    if ((v12 & 1) == 0 && v13 && v11)
    {
      [(UITableView *)v7 _deselectRowAtIndexPath:v15 animated:v4 notifyDelegate:1];
    }

    else
    {
      LOBYTE(v14) = 1;
      [(UITableView *)v7 _selectRowAtIndexPath:v15 animated:v4 scrollPosition:0 notifyDelegate:1 isCellMultiSelect:v13 deselectPrevious:v12 performCustomSelectionAction:v14];
    }
  }
}

- (void)_userSelectRowAtPendingSelectionIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self traitCollection];
  v6 = _UIShouldAnimateDefaultCellHighlightAndSelection(v5);

  if (v6)
  {
    v7 = [(UITableView *)self _cellForRowAtIndexPath:v4 usingPresentationValues:1];
    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__UITableView__userSelectRowAtPendingSelectionIndexPath___block_invoke;
      v8[3] = &unk_1E70F35B8;
      v8[4] = self;
      v9 = v4;
      [v7 _performConfigurationStateModifications:v8];
    }

    else
    {
      [(UITableView *)self _userSelectRowAtPendingSelectionIndexPath:v4 animatedSelection:0];
    }
  }

  else
  {
    [(UITableView *)self _userSelectRowAtPendingSelectionIndexPath:v4 animatedSelection:0];
  }
}

- (void)_userSelectCell:(id)a3
{
  v4 = [(UITableView *)self _indexPathForCell:a3 usingPresentationValues:1];
  [(UITableView *)self _userSelectRowAtPendingSelectionIndexPath:v4];
}

- (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UITableViewScrollPosition)scrollPosition
{
  v6 = animated;
  if ((~*(&self->_tableFlags + 6) & 0x60000) == 0)
  {
    *(&self->_tableFlags + 3) &= ~0x40000uLL;
  }

  v9 = indexPath;
  LOBYTE(v8) = 0;
  [(UITableView *)self _selectRowAtIndexPath:v9 animated:v6 scrollPosition:scrollPosition notifyDelegate:0 isCellMultiSelect:[(UITableView *)self _isRowMultiSelect:v9 followingMacBehavior:0] deselectPrevious:0 performCustomSelectionAction:v8];
}

- (void)_selectAllSelectedRows
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableArray *)self->_selectedIndexPaths copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (![(UITableView *)self _isRowMultiSelect:v8])
        {
          v9 = [(UITableView *)self _existingCellForRowAtIndexPath:v8];
          [v9 setSelected:1 animated:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)_canPerformPrimaryActionForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && [(UITableView *)self _delegateSupportsPrimaryAction])
  {
    if ((*(&self->_tableFlags + 6) & 4) != 0)
    {
      v7 = [(UITableView *)self _delegateProxy];
      v5 = [v7 tableView:self canPerformPrimaryActionForRowAtIndexPath:v4];
    }

    else
    {
      v5 = (*(&self->_tableFlags + 14) & 0x40) == 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)maximumNumberOfSectionIndexTitlesWithoutTruncation
{
  [(UITableView *)self _contentInset];
  v4 = v3;
  v6 = v5;
  [(UIView *)self bounds];
  index = self->_index;

  return [(UITableViewIndex *)index maximumNumberOfTitlesWithoutTruncationForHeight:v7 - v4 - v6];
}

- (void)setSeparatorStyle:(UITableViewCellSeparatorStyle)separatorStyle
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(&self->_tableFlags + 1);
  *(&self->_tableFlags + 2) = (*(&self->_tableFlags + 2) & 0xFFFFBFFFFFFFFFFFLL | (((*(&self->_tableFlags + 2) >> 41) & 1) << 46)) ^ 0x400000000000;
  if ((HIWORD(v3) & 7) != separatorStyle)
  {
    *(&self->_tableFlags + 1) = v3 & 0xFFF8FFFFFFFFFFFFLL | ((separatorStyle & 7) << 48);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(NSMutableArray *)self->_visibleCells copy];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [(UITableView *)self _indexPathForCell:v10 usingPresentationValues:1];
          [(UITableView *)self _updateSeparatorStyleForCell:v10 atIndexPath:v11];
          [(UITableView *)self _backgroundContentInset];
          [v10 _setBackgroundInset:?];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(UITableView *)self _scheduleAdjustExtraSeparators];
  }
}

- (void)_updateSeparatorStyleForCell:(id)a3 atIndexPath:(id)a4
{
  if (a4)
  {
    v6 = *(&self->_tableFlags + 7);
    v7 = a4;
    v9 = a3;
    [v9 setSeparatorStyle:v6 & 7];
    v8 = [(NSMutableSet *)self->_hiddenSeparatorIndexPaths containsObject:v7];

    [v9 _setSeparatorHidden:v8];
  }
}

- (void)_darkenedSystemColorsChanged
{
  v3 = [(UITableView *)self separatorColor];
  [(UITableView *)self _distributeSeparatorColor:v3];
}

- (void)_distributeSeparatorColor:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_visibleCells;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9++) setSeparatorColor:v4];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_extraSeparators;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) setBackgroundColor:{v4, v15}];
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }

  [(UIView *)self->_topSeparator setNeedsDisplay];
}

- (void)setSeparatorColor:(UIColor *)separatorColor
{
  v5 = separatorColor;
  *(&self->_tableFlags + 2) = (*(&self->_tableFlags + 2) & 0xFFFFEFFFFFFFFFFFLL | (((*(&self->_tableFlags + 2) >> 41) & 1) << 44)) ^ 0x100000000000;
  p_separatorColor = &self->_separatorColor;
  if (self->_separatorColor != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->_separatorColor, separatorColor);
    if (!*p_separatorColor)
    {
      v7 = [(UITableMetricsAdapter *)&self->_metricsAdapter->super.isa tableSeparatorColor];
      v8 = *p_separatorColor;
      *p_separatorColor = v7;
    }

    [(UITableView *)self _resetDarkenedSeparatorColor];
    v9 = [(UITableView *)self _shouldDrawDarkSeparators];
    p_darkenedSeparatorColor = &self->_separatorColor;
    if (v9)
    {
      p_darkenedSeparatorColor = &self->_darkenedSeparatorColor;
    }

    v11 = *p_darkenedSeparatorColor;
    [(UITableView *)self _distributeSeparatorColor:v11];
    v12 = *p_separatorColor;
    v13 = +[UIColor tableSeparatorDarkColor];
    if ([(UIColor *)v12 isEqual:v13])
    {
    }

    else
    {
      v14 = *p_separatorColor;
      v15 = +[UIColor tableSeparatorLightColor];
      LOBYTE(v14) = [(UIColor *)v14 isEqual:v15];

      if ((v14 & 1) == 0)
      {
        [(UITableView *)self _setSeparatorsDrawInVibrantLightModeUIAppearance:MEMORY[0x1E695E110]];
      }
    }

    v5 = v16;
  }
}

- (void)_updateSeparatorStateForCell:(id)a3 atIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v8 = a3;
    [(UITableView *)self _updateSeparatorStyleForCell:v8 atIndexPath:v6];
    [v8 _setDrawsSeparatorAtTopOfSection:{-[UITableView _shouldDrawSeparatorAtTopOfSectionForCellAtIndexPath:](self, "_shouldDrawSeparatorAtTopOfSectionForCellAtIndexPath:", v6)}];
    [v8 _setDrawsSeparatorAtBottomOfSection:{-[UITableView _shouldDrawSeparatorAtBottomOfSectionForCellAtIndexPath:](self, "_shouldDrawSeparatorAtBottomOfSectionForCellAtIndexPath:", v6)}];
    [v8 _setShouldHaveFullLengthBottomSeparator:{-[UITableView _bottomSeparatorInsetBehaviorForCellAtIndexPath:](self, "_bottomSeparatorInsetBehaviorForCellAtIndexPath:", v6) == 2}];
    v7 = [(UITableView *)self _topSeparatorInsetBehaviorForCellAtIndexPath:v6];

    [v8 _setShouldHaveFullLengthTopSeparator:v7 == 2];
    [v8 _setTopSeparatorFollowsLayoutMargins:v7 == 1];
  }
}

- (BOOL)_shouldDrawTopSeparatorDueToMergedBarForCellAtIndexPath:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableFlags + 13) & 0x60) != 0 || ![(UIScrollView *)self _shouldAdjustLayoutToDrawTopSeparator]|| self->_tableHeaderView || self->_tableHeaderBackgroundView || ![(UITableViewRowData *)self->_rowData numberOfRows])
  {
    v5 = 0;
  }

  else
  {
    v7 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:?];
    v8 = v7;
    if (v7 && (v9 = [v7 section], v9 == objc_msgSend(v4, "section")) && (v10 = objc_msgSend(v8, "row"), v10 == objc_msgSend(v4, "row")))
    {
      if ([v4 section] < 0)
      {
        v5 = 1;
      }

      else
      {
        v11 = 0;
        do
        {
          v12 = [(UITableView *)self _delegateWantsHeaderForSection:v11];
          if (v12)
          {
            break;
          }
        }

        while (v11++ < [v4 section]);
        v5 = !v12;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)_topSeparatorInsetBehaviorForCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 section], v6 < -[UITableView _numberOfSectionsUsingPresentationValues:](self, "_numberOfSectionsUsingPresentationValues:", 1)) && !objc_msgSend(v5, "row"))
  {
    v9 = *(&self->_tableFlags + 1);
    if ((v9 & 0x400000) != 0)
    {
      v10 = [(UITableView *)self _delegateProxy];
      v11 = [v10 tableView:self shouldHaveFullLengthTopSeparatorForSection:{objc_msgSend(v5, "section")}];

      if (v11)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }

    else if (((v9 >> 45) & 3) - 1 >= 2)
    {
      v7 = [(UITableView *)self _shouldDrawTopSeparatorDueToMergedBarForCellAtIndexPath:v5]^ 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_bottomSeparatorInsetBehaviorForCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v6 = [v4 section], v6 >= -[UITableView _numberOfSectionsUsingPresentationValues:](self, "_numberOfSectionsUsingPresentationValues:", 1)) || (v7 = objc_msgSend(v5, "row"), v7 != -[UITableView _numberOfRowsInSection:usingPresentationValues:](self, "_numberOfRowsInSection:usingPresentationValues:", objc_msgSend(v5, "section"), 1) - 1))
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if ((*(&self->_tableFlags + 10) & 0x80) == 0)
  {
    if ([(UITableView *)self _hasHeaderFooterBelowRowAtIndexPath:v5]&& ([(UITableView *)self _headerFooterPinningBehavior]- 1) >= 2)
    {
      v8 = 2;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = [(UITableView *)self _delegateProxy];
  v11 = [v10 tableView:self shouldHaveFullLengthBottomSeparatorForSection:{objc_msgSend(v5, "section")}];

  if (v11)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (BOOL)_shouldDrawSeparatorAtTopOfSectionForCellAtIndexPath:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableFlags + 10) & 0x10) != 0)
  {
    v6 = [(UITableView *)self _delegateProxy];
    v5 = [v6 tableView:self shouldDrawTopSeparatorForSection:{objc_msgSend(v4, "section")}];

    goto LABEL_7;
  }

  if ([(UITableView *)self _shouldDrawTopSeparatorDueToMergedBarForCellAtIndexPath:v4])
  {
    goto LABEL_3;
  }

  if ((*(&self->_tableFlags + 23) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (((*(&self->_tableFlags + 1) >> 45) & 3uLL) - 1 < 2)
  {
LABEL_3:
    v5 = 1;
    goto LABEL_7;
  }

  if (-[UITableView _headerFooterPinningBehavior](self, "_headerFooterPinningBehavior") != 1 || (v5 = 1, -[UITableView _rectForHeaderInSection:usingPresentationValues:](self, "_rectForHeaderInSection:usingPresentationValues:", [v4 section], 1), CGRectGetHeight(v8) <= 0.0))
  {
LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (BOOL)_shouldDrawSeparatorAtBottomOfSectionForCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(&self->_tableFlags + 1);
  if ((v6 & 0x200000) != 0)
  {
    v8 = [(UITableView *)self _delegateProxy];
    v7 = [v8 tableView:self shouldDrawBottomSeparatorForSection:{objc_msgSend(v5, "section")}];
LABEL_11:

    goto LABEL_12;
  }

  if (((v6 >> 45) & 3) - 1 >= 2)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:-[UITableView _numberOfRowsInSection:usingPresentationValues:](self inSection:{"_numberOfRowsInSection:usingPresentationValues:", objc_msgSend(v4, "section"), 1) - 1, objc_msgSend(v4, "section")}];
    v9 = [(UITableView *)self _hasHeaderFooterBelowRowAtIndexPath:v8];
    if (v9 && [(UITableView *)self _headerFooterPinningBehavior]== 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(UITableView *)self _headerFooterPinningBehavior]!= 2 && !v9;
    }

    goto LABEL_11;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (void)_setDrawsSeparatorAtTopOfSections:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = 0x100000000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFEFFFFFFFFFFFFFFLL | v4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(UITableView *)self visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(UITableView *)self _indexPathForCell:v10 usingPresentationValues:1];
        [v10 _setDrawsSeparatorAtTopOfSection:{-[UITableView _shouldDrawSeparatorAtTopOfSectionForCellAtIndexPath:](self, "_shouldDrawSeparatorAtTopOfSectionForCellAtIndexPath:", v11)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)usesVariableMargins
{
  rowData = self->_rowData;
  if (!rowData)
  {
    return 0;
  }

  rowDataFlags = rowData->_rowDataFlags;
  if ((rowDataFlags & 4) != 0)
  {
    return rowData->_tableSidePadding > 9.0;
  }

  result = 0;
  rowData->_tableSidePadding = 0.0;
  *&rowData->_rowDataFlags = rowDataFlags | 4;
  return result;
}

- (void)_setTopPadding:(double)a3
{
  if (self->_topPadding != a3)
  {
    self->_topPadding = a3;
    [(UITableView *)self _invalidateForTopOrBottomPaddingChange:1];
  }
}

- (void)_setBottomPadding:(double)a3
{
  if (self->_bottomPadding != a3)
  {
    self->_bottomPadding = a3;
    [(UITableView *)self _invalidateForTopOrBottomPaddingChange:0];
  }
}

- (void)_invalidateForTopOrBottomPaddingChange:(BOOL)a3
{
  rowData = self->_rowData;
  if (rowData)
  {
    v5 = a3;
    [(UITableViewRowData *)rowData invalidateAllSectionOffsetsAndUpdatePadding];
    [(UITableView *)self _updateContentSize];
    if (v5)
    {

      [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
    }
  }
}

- (void)setBackgroundView:(UIView *)backgroundView
{
  v5 = backgroundView;
  v6 = self->_backgroundView;
  if (v6 != v5)
  {
    v7 = v5;
    [(UIView *)v6 removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, backgroundView);
    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFF77FFFFFFFFFFLL | 0x80000000000;
    [(UITableView *)self _configureBackgroundView];
    v5 = v7;
  }
}

- (id)_backgroundEffects
{
  if ((*(&self->_tableFlags + 21) & 0x80) != 0)
  {
    v4 = [(UIView *)self->_backgroundView backgroundEffects];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setBackgroundEffects:(id)a3
{
  v8 = a3;
  if (v8)
  {
    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      if ((*(&self->_tableFlags + 21) & 0x80) != 0)
      {
        v5 = backgroundView;
        goto LABEL_9;
      }

      [(UIView *)backgroundView removeFromSuperview];
    }

    v5 = objc_alloc_init(UIVisualEffectView);
    v6 = self->_backgroundView;
    self->_backgroundView = &v5->super;

    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFF77FFFFFFFFFFLL | 0x800000000000;
LABEL_9:
    [(UIVisualEffectView *)v5 setBackgroundEffects:v8];

    goto LABEL_10;
  }

  if ((*(&self->_tableFlags + 21) & 0x80) != 0)
  {
    [(UIView *)self->_backgroundView removeFromSuperview];
    v7 = self->_backgroundView;
    self->_backgroundView = 0;

    *(&self->_tableFlags + 2) &= ~0x800000000000uLL;
  }

LABEL_10:
  [(UITableView *)self _configureBackgroundView];
}

- (void)_setBackgroundColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  *(&self->_tableFlags + 2) = (*(&self->_tableFlags + 2) & 0xFFFFFBFFFFFFFFFFLL | (((*(&self->_tableFlags + 2) >> 41) & 1) << 42)) ^ 0x40000000000;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __44__UITableView__setBackgroundColor_animated___block_invoke_2;
  v11 = &unk_1E70F35B8;
  v7 = v6;
  v12 = v7;
  v13 = self;
  [UIView conditionallyAnimate:v4 withAnimation:&__block_literal_global_883 layout:&v8 completion:0];
  if ([(UITableView *)self _shouldSetIndexBackgroundColorToTableBackgroundColor:v8]&& !self->_indexBackgroundColor)
  {
    [(UIView *)self->_index setBackgroundColor:v7];
  }
}

id __44__UITableView__setBackgroundColor_animated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = UITableView;
  return objc_msgSendSuper2(&v3, sel_setBackgroundColor_, v1);
}

- (void)setBackgroundColor:(id)a3
{
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 2);
  if ((v4 & 0x10000000000) == 0)
  {
    *(&self->_tableFlags + 2) = v4 | 0x10000000000;
    [(UITableView *)self _setBackgroundColor:a3 animated:0];
    *(p_tableFlags + 2) &= ~0x10000000000uLL;
  }
}

- (void)setTableHeaderView:(UIView *)tableHeaderView
{
  v13 = tableHeaderView;
  if ([(UITableView *)self _shouldUseNewHeaderFooterBehavior])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:9941 description:@"Cannot explicitliy set header when using new heightForHeaderInTableView: or heightForFooterInTableView: methods.  Use viewForHeaderInTableView: instead."];
  }

  v6 = self->_tableHeaderView;
  if (v6 != v13)
  {
    [(UIView *)v6 removeFromSuperview];
    objc_storeStrong(&self->_tableHeaderView, tableHeaderView);
    v7 = self->_tableHeaderView;
    if (v7 && [(UIView *)v7 translatesAutoresizingMaskIntoConstraints]&& dyld_program_sdk_at_least())
    {
      [(UIView *)self->_tableHeaderView _setHostsLayoutEngine:1];
    }

    [(UITableView *)self _addContentSubview:self->_tableHeaderView atBack:0];
  }

  [(UITableView *)self _updateTableHeaderFooterViewInsetsContentViewsToSafeArea];
  [(UITableView *)self _ensureRowDataIsLoaded];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UIView *)self->_tableHeaderView _isSpecialInternalHeaderView])
  {
    [(UIView *)self->_tableHeaderView sizeToFit];
  }

  rowData = self->_rowData;
  v9 = self->_tableHeaderView;
  if (v9)
  {
    [(UIView *)v9 frame];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  [(UITableViewRowData *)rowData tableHeaderHeightDidChangeToHeight:v11];
  [(UIView *)self->_tableHeaderView setFrame:[(UITableViewRowData *)self->_rowData rectForTableHeaderView]];
  [(UITableView *)self _updateContentSize];
  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
  [(UITableView *)self _updateSeparatorStateForVisibleCells];
  if (![(UITableView *)self _pinsTableHeaderView])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UITableView *)self setTableHeaderViewShouldAutoHide:1];
    }
  }
}

- (void)setTableFooterView:(UIView *)tableFooterView
{
  v12 = tableFooterView;
  if ([(UITableView *)self _shouldUseNewHeaderFooterBehavior])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:9973 description:@"Cannot explicitliy set footer when using new heightForHeaderInTableView: or heightForFooterInTableView: methods.  Use viewForFooterInTableView: instead."];
  }

  v6 = self->_tableFooterView;
  if (v6 != v12)
  {
    [(UIView *)v6 removeFromSuperview];
    objc_storeStrong(&self->_tableFooterView, tableFooterView);
    v7 = self->_tableFooterView;
    if (v7 && [(UIView *)v7 translatesAutoresizingMaskIntoConstraints]&& dyld_program_sdk_at_least())
    {
      [(UIView *)self->_tableFooterView _setHostsLayoutEngine:1];
    }

    [(UITableView *)self _addContentSubview:self->_tableFooterView atBack:0];
  }

  [(UITableView *)self _updateTableHeaderFooterViewInsetsContentViewsToSafeArea];
  [(UITableView *)self _ensureRowDataIsLoaded];
  rowData = self->_rowData;
  v9 = self->_tableFooterView;
  if (v9)
  {
    [(UIView *)v9 frame];
    if (!rowData)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0.0;
  if (rowData)
  {
LABEL_11:
    rowData->_tableFooterHeight = v10;
  }

LABEL_12:
  [(UIView *)self->_tableFooterView setFrame:[(UITableViewRowData *)self->_rowData rectForTableFooterView]];
  [(UITableView *)self _updateContentSize];
}

- (void)_ensureReturnedView:(id)a3 isNotContainedInReusePoolForViewType:(int)a4
{
  v4 = *&a4;
  v9 = a3;
  v6 = [v9 reuseIdentifier];
  if (v6)
  {
    v7 = [(UITableView *)self _cellReuseMapForType:v4];
    v8 = [v7 objectForKey:v6];

    if (v8 && [v8 containsObject:v9])
    {
      [v8 removeObject:v9];
    }
  }
}

- (id)_dequeueReusableViewOfType:(int)a3 withIdentifier:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  v8 = [(UITableView *)self _cellReuseMapForType:v4];
  v9 = [v8 objectForKey:v7];

  v10 = [v9 lastObject];
  if (v10)
  {
    [v9 removeObject:v10];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __57__UITableView__dequeueReusableViewOfType_withIdentifier___block_invoke;
    v29[3] = &unk_1E70F3590;
    v11 = v10;
    v30 = v11;
    [UIView performWithoutAnimation:v29];
    v12 = v11;
  }

  else
  {
    v13 = [(UITableView *)self _nibMapForType:v4];
    v14 = [v13 valueForKey:v7];

    if (v14)
    {
      v15 = [(UITableView *)self _nibExternalObjectsTablesForType:v4];
      v16 = [v15 objectForKey:v7];

      if (v16)
      {
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v16 forKey:@"UINibExternalObjects"];
      }

      else
      {
        v17 = 0;
      }

      v28 = v17;
      v21 = [v14 instantiateWithOwner:0 options:v17];
      v12 = 0;
      if ([v21 count] == 1)
      {
        v12 = [v21 objectAtIndexedSubscript:0];
      }

      v22 = objc_opt_class();
      if (!v12 || (objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x1E696AAA8] currentHandler];
        v25 = v26 = v22;
        [v25 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:10046 description:{@"invalid nib registered for identifier (%@) - nib must contain exactly one top level object which must be a %@ instance", v7, v26}];
      }

      v23 = [v12 reuseIdentifier];
      if ([v23 length] && (objc_msgSend(v23, "isEqualToString:", v7) & 1) == 0)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:10048 description:{@"cell reuse indentifier in nib (%@) does not match the identifier used to register the nib (%@)", v23, v7}];
      }

      [v12 setReuseIdentifier:v7];
    }

    else
    {
      v18 = [(UITableView *)self _classMapForType:v4];
      v19 = [v18 valueForKey:v7];

      v20 = [v19 alloc];
      if (v4 == 1)
      {
        v12 = [v20 initWithStyle:0 reuseIdentifier:v7];
        [v12 setReuseIdentifier:v7];
      }

      else
      {
        v12 = [v20 initWithReuseIdentifier:v7];
      }
    }
  }

  return v12;
}

- (UITableViewCell)dequeueReusableCellWithIdentifier:(NSString *)identifier
{
  v5 = identifier;
  cellBeingReconfigured = self->_cellBeingReconfigured;
  if (!cellBeingReconfigured)
  {
    v11 = [(UITableView *)self _dequeueReusableViewOfType:1 withIdentifier:v5];
    goto LABEL_11;
  }

  v7 = [(UITableViewCell *)cellBeingReconfigured reuseIdentifier];
  v8 = v5;
  v9 = v8;
  if (v7 == v8)
  {

    v12 = v7;
LABEL_9:

    goto LABEL_10;
  }

  if (!v8 || !v7)
  {

LABEL_15:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [(UITableViewCell *)self->_cellBeingReconfigured reuseIdentifier];
    [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:10068 description:{@"Attempted to dequeue a cell for a different reuse identifier than the existing cell when reconfiguring a row, which is not allowed. You must dequeue a cell using the same reuse identifier that was used to dequeue the cell originally to obtain the existing cell. Dequeued reuse identifier: %@; Original reuse identifier: %@; Existing cell: %@", v9, v7, self->_cellBeingReconfigured}];
    goto LABEL_9;
  }

  v10 = [(NSString *)v7 isEqual:v8];

  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v11 = self->_cellBeingReconfigured;
LABEL_11:
  v13 = v11;

  return v13;
}

- (UITableViewCell)dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath
{
  v6 = indexPath;
  v7 = identifier;
  v8 = [(UITableView *)self _dequeueReusableCellWithIdentifier:v7 forIndexPath:v6 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];

  return v8;
}

- (id)_dequeueReusableCellWithIdentifier:(id)a3 forIndexPath:(id)a4 usingPresentationValues:(BOOL)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (dyld_program_sdk_at_least())
  {
    if (!v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:10082 description:@"Attempted to dequeue a cell for a nil index path"];
    }
  }

  else if (!v10)
  {
    v26 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA967578) + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Attempted to dequeue a cell for a nil index path", buf, 2u);
    }
  }

  if (!a5)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v13 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v10];

      v10 = v13;
    }
  }

  v14 = [(UITableView *)self dequeueReusableCellWithIdentifier:v9];
  if (!v14)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:10088 description:{@"unable to dequeue a cell with identifier %@ - must register a nib or a class for the identifier or connect a prototype cell in a storyboard", v9}];
  }

  indexPathBeingReconfigured = self->_indexPathBeingReconfigured;
  if (indexPathBeingReconfigured)
  {
    if (([(NSIndexPath *)indexPathBeingReconfigured isEqual:v10]& 1) == 0)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [(UITableView *)self dataSourceIndexPathForPresentationIndexPath:v10];
      v18 = [(UITableView *)self dataSourceIndexPathForPresentationIndexPath:self->_indexPathBeingReconfigured];
      [v16 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:10090 description:{@"Attempted to dequeue a cell for a different index path than the index path being reconfigured, which is not allowed. You must dequeue a cell for the same index path that is being reconfigured to obtain the existing cell. Dequeued index path: %@; Reconfigured index path: %@; Existing cell: %@", v17, v18, self->_cellBeingReconfigured}];
    }
  }

  else if ([(UITableView *)self _shouldConfigureCellForDisplayDuringDequeueForIndexPath:v10])
  {
    v19 = dyld_program_sdk_at_least();
    v20 = [(NSMutableDictionary *)self->_tentativeCells objectForKeyedSubscript:v10];

    if (v19)
    {
      if (v20)
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:10096 description:{@"Attempted to dequeue multiple cells for the same index path, which is not allowed. If you really need to dequeue more cells than the table view is requesting, use the -dequeueReusableCellWithIdentifier: method (without an index path). Cell identifier: %@, index path: %@", v9, v10}];
      }
    }

    else if (v20)
    {
      v27 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA967580) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Attempted to dequeue multiple cells for the same index path, which is not allowed. If you really need to dequeue more cells than the table view is requesting, use the -dequeueReusableCellWithIdentifier: method (without an index path). Cell identifier: %@, index path: %@", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_tentativeCells setObject:v14 forKeyedSubscript:v10];
    [(UITableView *)self _configureCellForDisplay:v14 forIndexPath:v10];
  }

  else
  {
    [v14 _setTableView:self];
    v22 = [(UITableView *)self _constants];
    [v14 _setConstants:v22];

    v23 = [(UITableView *)self _metricsAdapter];
    [v14 _setMetricsAdapter:v23];

    [v14 setTableViewStyle:{-[UITableView _tableStyle](self, "_tableStyle")}];
  }

  return v14;
}

- (BOOL)_shouldConfigureCellForDisplayDuringDequeueForIndexPath:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableFlags + 25) & 8) != 0 && [(UITableView *)self _estimatesRowHeights])
  {
    if (*(&self->_tableFlags + 4))
    {
      v7 = [(UITableView *)self _delegateProxy];
      [v7 tableView:self heightForRowAtIndexPath:v4];
      v5 = v8 != -1.0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (UITableViewHeaderFooterView)dequeueReusableHeaderFooterViewWithIdentifier:(NSString *)identifier
{
  v4 = [(UITableView *)self _dequeueReusableViewOfType:2 withIdentifier:identifier];
  if (_IsKindOfUITableViewHeaderFooterView(v4))
  {
    [(UITableView *)self _setupSectionView:v4 isHeader:(*(&self->_tableFlags + 2) & 0x800) == 0 forSection:0x7FFFFFFFFFFFFFFFLL];
  }

  return v4;
}

- (BOOL)_canSelectRowContainingHitView:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  while (1)
  {
    if (_IsKindOfUITableViewCell(v4) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
LABEL_8:
      IsKindOfUITableViewCell = _IsKindOfUITableViewCell(v4);
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 isTracking])
    {
      break;
    }

    v5 = [v4 superview];

    v4 = v5;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  IsKindOfUITableViewCell = 0;
LABEL_9:

  return IsKindOfUITableViewCell;
}

- (BOOL)_beginTrackingWithEvent:(id)a3
{
  v4 = a3;
  [(UITableView *)self _resetDragSwipeAndTouchSelectFlags];
  v6.receiver = self;
  v6.super_class = UITableView;
  LOBYTE(self) = [(UIScrollView *)&v6 _beginTrackingWithEvent:v4];

  return self;
}

- (void)_setUseUnifiedSelectionBehavior:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (BOOL)_allowsSelectionOfPendingSelectionIndexPath:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
    if (![(UITableView *)self allowsSelectionDuringEditing]&& ![(UITableView *)self allowsMultipleSelectionDuringEditing]&& ![(UITableView *)self _isRowMultiSelect:v4])
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  if ([(UITableView *)self allowsSelection])
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = 0;
LABEL_8:

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_UITouchesContainsTouchFromExternalTouchpad(v6))
  {
    goto LABEL_4;
  }

  v8 = v7;
  if (![v8 _buttonMask])
  {

LABEL_7:
    v10 = [(UITableView *)self currentTouch];
    if (v10)
    {
      v11 = v10;
      v12 = [(UITableView *)self currentTouch];
      if ([v12 phase] == 3)
      {
        swipeToDeleteCell = self->_swipeToDeleteCell;

        if (swipeToDeleteCell)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = [(UITableView *)self currentTouch];
        if ([v14 phase] != 4)
        {

LABEL_58:
          goto LABEL_5;
        }

        v15 = self->_swipeToDeleteCell;

        if (v15)
        {
          goto LABEL_5;
        }
      }
    }

    else if (self->_swipeToDeleteCell)
    {
      goto LABEL_5;
    }

    v11 = [v6 anyObject];
    [(UITableView *)self setCurrentTouch:v11];
    if ([v11 _isPointerTouch])
    {
      [(UITableView *)self _resetDragSwipeAndTouchSelectFlags];
    }

    if (v11 && !self->_pendingSelectionIndexPath)
    {
      [v11 locationInView:self];
      v17 = v16;
      v19 = v18;
      v61.receiver = self;
      v61.super_class = UITableView;
      v20 = [(UIScrollView *)&v61 hitTest:v8 withEvent:?];
      v21 = [(UIView *)self traitCollection];
      v49 = _UIShouldAnimateDefaultCellHighlightAndSelection(v21);

      if (v20 == self)
      {
        v22 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
        [(UITableView *)self _highlightRowAtIndexPath:v22 animated:v49 scrollPosition:0 usingPresentationValues:1];
      }

      if ([(UITableView *)self _canSelectRowContainingHitView:v20])
      {
        v23 = [(UITableView *)self _indexPathForRowAtPoint:1 usingPresentationValues:v17, v19];
        if (v23 && [(UITableView *)self _allowsSelectionOfPendingSelectionIndexPath:v23])
        {
          objc_storeStrong(&self->_pendingSelectionIndexPath, v23);
          if ([(UIScrollView *)self isDragging]|| ![(UITableView *)self _highlightRowAtIndexPath:self->_pendingSelectionIndexPath animated:v49 scrollPosition:0 usingPresentationValues:1 playFeedback:1])
          {
            pendingSelectionIndexPath = self->_pendingSelectionIndexPath;
            self->_pendingSelectionIndexPath = 0;

            *(&self->_tableFlags + 2) |= 0x100uLL;
          }

          else
          {
            v45 = v8;
            v46 = v23;
            v47 = v20;
            v48 = v11;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __38__UITableView_touchesBegan_withEvent___block_invoke;
            aBlock[3] = &unk_1E711BD98;
            aBlock[4] = self;
            v24 = _Block_copy(aBlock);
            if ([(UITableView *)self _shouldDeselectRowsOnTouchesBegan])
            {
              pendingDeselectionIndexPaths = self->_pendingDeselectionIndexPaths;
              if (pendingDeselectionIndexPaths)
              {
                [(NSMutableArray *)pendingDeselectionIndexPaths removeAllObjects];
              }

              else
              {
                v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v28 = self->_pendingDeselectionIndexPaths;
                self->_pendingDeselectionIndexPaths = v27;
              }

              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              obj = [(NSMutableArray *)self->_selectedIndexPaths copy];
              v29 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v57;
                v32 = v24 + 16;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v57 != v31)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v34 = *(*(&v56 + 1) + 8 * i);
                    if ((*(v24 + 2))(v24, v34))
                    {
                      v35 = v32;
                      v36 = v31;
                      v37 = [(UITableView *)self _existingCellForRowAtIndexPath:v34];
                      v38 = v37;
                      if (v37)
                      {
                        [v37 setSelected:0 animated:v49];
                      }

                      else
                      {
                        [(UITableView *)self _showSeparatorForRowBeforeIndexPath:v34];
                      }

                      [(NSMutableArray *)self->_pendingDeselectionIndexPaths addObject:v34];

                      v31 = v36;
                      v32 = v35;
                    }
                  }

                  v30 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
                }

                while (v30);
              }
            }

            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v39 = [(NSMutableArray *)self->_highlightedIndexPaths copy];
            v40 = [v39 countByEnumeratingWithState:&v52 objects:v63 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v53;
              do
              {
                for (j = 0; j != v41; ++j)
                {
                  if (*v53 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v52 + 1) + 8 * j);
                  if ((*(v24 + 2))(v24, v44))
                  {
                    [(UITableView *)self unhighlightRowAtIndexPath:v44 animated:0];
                  }
                }

                v41 = [v39 countByEnumeratingWithState:&v52 objects:v63 count:16];
              }

              while (v41);
            }

            v20 = v47;
            v11 = v48;
            v8 = v45;
            v23 = v46;
          }
        }
      }
    }

    v51.receiver = self;
    v51.super_class = UITableView;
    [(UIScrollView *)&v51 touchesBegan:v6 withEvent:v8];
    goto LABEL_58;
  }

  v9 = [v8 _buttonMask];

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v62.receiver = self;
  v62.super_class = UITableView;
  [(UIScrollView *)&v62 touchesBegan:v6 withEvent:v7];
LABEL_5:
}

uint64_t __38__UITableView_touchesBegan_withEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isRowMultiSelect:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqual:*(*(a1 + 32) + 2440)] ^ 1;
  }

  return v4;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITableView *)self currentTouch];
  if ([v6 containsObject:v8])
  {
    if (!v8)
    {
LABEL_10:
      v26.receiver = self;
      v26.super_class = UITableView;
      [(UIScrollView *)&v26 touchesMoved:v6 withEvent:v7];
      goto LABEL_11;
    }

    v9 = self->_pendingSelectionIndexPath;
    v10 = [(UITableView *)self _existingCellForRowAtIndexPath:v9];
    if (v10)
    {
      v11 = [(UIView *)self traitCollection];
      v12 = _UIShouldAnimateDefaultCellHighlightAndSelection(v11);

      [v10 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [v8 locationInView:v10];
      v27.x = v21;
      v27.y = v22;
      v28.origin.x = v14;
      v28.origin.y = v16;
      v28.size.width = v18;
      v28.size.height = v20;
      if (CGRectContainsPoint(v28, v27) && !self->_swipeToDeleteCell)
      {
        if ([v10 isHighlighted])
        {
          goto LABEL_9;
        }

        [(UITableView *)self _highlightRowAtIndexPath:self->_pendingSelectionIndexPath animated:v12 scrollPosition:0 usingPresentationValues:1];
        p_tableFlags = &self->_tableFlags;
        v25 = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFFFFEFFLL;
        goto LABEL_8;
      }

      if ([v10 isHighlighted])
      {
        v23 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
        [(UITableView *)self _highlightRowAtIndexPath:v23 animated:v12 scrollPosition:0 usingPresentationValues:1];

        p_tableFlags = &self->_tableFlags;
        v25 = *(&self->_tableFlags + 2) | 0x100;
LABEL_8:
        *(p_tableFlags + 2) = v25;
      }
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_updateTableHeaderViewForAutoHideWithVelocity:(double)a3 targetOffset:(CGPoint *)a4
{
  [(UIScrollView *)self contentOffset];
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self _effectiveContentInset];
  if (a4)
  {
    v12 = v11;
    if (self->_tableHeaderView)
    {
      goto LABEL_3;
    }

    if ([(UITableView *)self _shouldUseNewHeaderFooterBehavior])
    {
      rowData = self->_rowData;
      if (rowData)
      {
        heightForTableHeaderViewHiding = rowData->_heightForTableHeaderViewHiding;
        if (heightForTableHeaderViewHiding < 0.0)
        {
          heightForTableHeaderViewHiding = [(UITableViewRowData *)rowData heightForTableHeaderView];
        }

        if (heightForTableHeaderViewHiding > 0.0)
        {
LABEL_3:
          if ((*(&self->_tableFlags + 19) & 0x40) != 0)
          {
            v13 = -v12;
            if (a4->y > -v12)
            {
              [(UITableView *)self heightForAutohidingTableHeaderView];
              if (v10 > v13)
              {
                v15 = v10 + v12;
                if (v10 + v12 < v14)
                {
                  if (a3 <= 0.0)
                  {
                    if (a3 < 0.0)
                    {
                      v16 = *(&self->_tableFlags + 2) & 0xFFFFFFFF7FFFFFFFLL;
LABEL_31:
                      *(&self->_tableFlags + 2) = v16;
                      if (a4->y <= v14 - v12)
                      {
                        a4->x = v8;
                        a4->y = v13;
                      }

                      goto LABEL_33;
                    }

                    if (v15 <= v14 * 0.8)
                    {
                      v21 = *(&self->_tableFlags + 2);
                      v22 = v14 - v12;
                      v23 = v21 & 0xFFFFFFFF7FFFFFFFLL;
                      v24 = (v21 & 0x100000000) == 0;
                      if ((v21 & 0x100000000) != 0)
                      {
                        v16 = v21 & 0xFFFFFFFF7FFFFFFFLL;
                      }

                      else
                      {
                        v16 = v21 | 0x80000000;
                      }

                      if (!v24)
                      {
                        v22 = -v12;
                      }

                      if (v15 >= v14 * 0.2)
                      {
                        v13 = v22;
                      }

                      else
                      {
                        v16 = v23;
                      }

                      goto LABEL_31;
                    }
                  }

                  v13 = v14 - v12;
                  v16 = *(&self->_tableFlags + 2) | 0x80000000;
                  goto LABEL_31;
                }
              }

              y = a4->y;
              if (y < v14 - v12)
              {
                if (v12 + y <= v14 * 0.5)
                {
                  a4->y = v13;
                  v20 = *(&self->_tableFlags + 2) & 0xFFFFFFFF7FFFFFFFLL;
                }

                else
                {
                  a4->y = v14 - v12;
                  v20 = *(&self->_tableFlags + 2) | 0x80000000;
                }

                *(&self->_tableFlags + 2) = v20;
              }
            }
          }
        }
      }
    }
  }

LABEL_33:
  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFEFFFFFFFFLL | (((*(&self->_tableFlags + 2) >> 31) & 1) << 32);
}

- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UITableView;
  [(UIScrollView *)&v5 _scrollViewDidEndDraggingWithDeceleration:a3];
  if ([(UITableView *)self _shouldDeselectRowsOnTouchesBegan])
  {
    [(UITableView *)self _selectAllSelectedRows];
    pendingDeselectionIndexPaths = self->_pendingDeselectionIndexPaths;
    self->_pendingDeselectionIndexPaths = 0;
  }
}

- (BOOL)_visibleHeaderViewsContainsView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMutableDictionary *)self->_visibleHeaderViews objectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqual:v4])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_visibleFooterViewsContainsView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMutableDictionary *)self->_visibleFooterViews objectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqual:v4])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

void __40__UITableView__visibleHeaderFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__UITableView__visibleHeaderFooterViews__block_invoke_2;
  v3[3] = &unk_1E7123700;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [a2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __40__UITableView__visibleHeaderFooterViews__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 integerValue];
  v6 = *(a1 + 40);
  v8 = v5 >= v6;
  v7 = v5 - v6;
  v8 = !v8 || v7 >= *(a1 + 48);
  if (!v8)
  {
    [*(a1 + 32) addObject:v9];
  }
}

- (id)_contentSubviews
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 addObjectsFromArray:self->_visibleCells];
  v4 = [(UITableView *)self _visibleHeaderFooterViews];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (id)_nearestCellToPoint:(CGPoint)a3 expandingVisibleCells:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v34 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    [(UITableView *)self _visibleBounds];
    v10 = (v9 - y) * -0.75;
    if (v9 - y <= 0.0)
    {
      v10 = 0.0;
    }

    [(UITableView *)self _ensureViewsAreLoadedInRect:v8 + 0.0, v9 + v10];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = self->_visibleCells;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v30;
    v16 = 1.79769313e308;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if (v4)
        {
          [v18 frame];
          v21 = sqrt((v19 - x) * (v19 - x) + (v20 - y) * (v20 - y));
        }

        else
        {
          [v18 bounds];
          [(UIView *)self convertRect:v18 fromView:?];
          UIDistanceBetweenPointAndRect(x, y, v22, v23, v24, v25);
          v21 = v26;
        }

        if (v21 < v16)
        {
          v27 = v18;

          v16 = v21;
          v14 = v27;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGPoint)_contentOffsetForLowFidelityScrollInDirection:(CGPoint)a3 duration:(double *)a4
{
  y = a3.y;
  v81 = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = UITableView;
  [(UIScrollView *)&v79 _contentOffsetForLowFidelityScrollInDirection:a4 duration:a3.x];
  v7 = v6;
  v73 = v8;
  [(UIView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (y == 0.0 || ([(UIScrollView *)self contentSize], v17 > v16))
  {
    [(UITableView *)self _contentInset];
    v19 = v10 + v18;
    v21 = v12 + v20;
    v23 = v14 - (v18 + v22);
    v25 = v16 - (v20 + v24);
    if ([(UITableView *)self allowsHeaderViewsToFloat]|| (v26 = 0.0, Height = 0.0, [(UITableView *)self allowsFooterViewsToFloat]))
    {
      v28 = [(UITableViewRowData *)self->_rowData sectionsInRect:v19, v21, v23, v25];
      v78 = 0;
      v26 = 0.0;
      Height = 0.0;
      if (v28 < v28 + v29)
      {
        v30 = v28;
        v31 = v29;
        do
        {
          if ((v78 & 0x100) == 0)
          {
            if ([(UITableView *)self allowsHeaderViewsToFloat])
            {
              v32 = [(UITableViewRowData *)self->_rowData floatingRectForHeaderInSection:v30 visibleRect:0 heightCanBeGuessed:&v78 + 1 outIsFloating:0 outVisibleRectDisplacement:v19, v21, v23, v25];
              if (HIBYTE(v78) == 1)
              {
                Height = CGRectGetHeight(*&v32);
              }
            }
          }

          if ((v78 & 1) == 0)
          {
            if ([(UITableView *)self allowsFooterViewsToFloat])
            {
              v36 = [(UITableViewRowData *)self->_rowData floatingRectForFooterInSection:v30 visibleRect:0 heightCanBeGuessed:&v78 outIsFloating:0 outVisibleRectDisplacement:v19, v21, v23, v25];
              if (v78 == 1)
              {
                v26 = CGRectGetHeight(*&v36);
              }
            }
          }

          ++v30;
          --v31;
        }

        while (v31);
      }
    }

    v40 = [(UITableView *)self _visibleCellsUsingPresentationValues:1];
    v41 = v40;
    if (y < 0.0)
    {
      [v40 objectEnumerator];
    }

    else
    {
      [v40 reverseObjectEnumerator];
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v42 = v75 = 0u;
    v43 = [v42 countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = v19 + 0.0;
      v46 = v21 + Height;
      v47 = v25 - (v26 + Height);
      v48 = *v75;
LABEL_21:
      v49 = 0;
      while (1)
      {
        if (*v75 != v48)
        {
          objc_enumerationMutation(v42);
        }

        v50 = *(*(&v74 + 1) + 8 * v49);
        [v50 bounds];
        [(UIView *)self convertRect:v50 fromView:?];
        v86.origin.x = v45;
        v86.origin.y = v46;
        v86.size.width = v23;
        v86.size.height = v47;
        if (CGRectIntersectsRect(v83, v86))
        {
          break;
        }

        if (v44 == ++v49)
        {
          v44 = [v42 countByEnumeratingWithState:&v74 objects:v80 count:16];
          if (v44)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }
      }

      v51 = v50;

      if (!v51)
      {
        goto LABEL_42;
      }

      v52 = [(UITableView *)self _indexPathForCell:v51 usingPresentationValues:1];
      if (v52)
      {
        v71 = v7;
        if (y >= 0.0)
        {
          v53 = 1;
        }

        else
        {
          v53 = 3;
        }

        [v51 bounds];
        [(UIView *)self convertRect:v51 fromView:?];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        rect2 = v60;
        v84.origin.x = v45;
        v84.origin.y = v46;
        v84.size.width = v23;
        v84.size.height = v47;
        v85 = CGRectInset(v84, -0.1, -0.1);
        v87.origin.x = v55;
        v87.origin.y = v57;
        v87.size.width = v59;
        v87.size.height = rect2;
        if (CGRectContainsRect(v85, v87))
        {
          v61 = [(UITableView *)self globalRowForRowAtIndexPath:v52];
          if (y >= 0.0)
          {
            v62 = v61 + 1;
          }

          else
          {
            v62 = v61 - 1;
          }

          v63 = v73;
          if (v62 < 0)
          {
            v7 = v71;
          }

          else
          {
            v7 = v71;
            if (v62 < [(UITableView *)self _rowDataNumberOfRows])
            {
              v64 = [(UITableView *)self indexPathForRowAtGlobalRow:v62];
              if (v64)
              {
                [(UITableView *)self _contentOffsetForScrollingToRowAtIndexPath:v64 atScrollPosition:v53 usingPresentationValues:1];
                v7 = v65;
                v63 = v66;
              }
            }
          }
        }

        else
        {
          [(UITableView *)self _contentOffsetForScrollingToRowAtIndexPath:v52 atScrollPosition:v53 usingPresentationValues:1];
          v7 = v69;
          v63 = v70;
        }

        goto LABEL_44;
      }
    }

    else
    {
LABEL_27:

      v51 = 0;
LABEL_42:
      v52 = 0;
    }

    v63 = v73;
LABEL_44:
  }

  else
  {
    v63 = v73;
  }

  v67 = v7;
  v68 = v63;
  result.y = v68;
  result.x = v67;
  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(UITableView *)self currentTouch];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    [(UITableView *)self setCurrentTouch:0];
    v8 = 0;
    if (![(UIScrollView *)self isDragging]&& v6 && (*(&self->_tableFlags + 2) & 0x100) == 0)
    {
      v9 = self->_pendingSelectionIndexPath;
      if (v9 && !self->_swipeToDeleteCell)
      {
        v10 = [(UITableView *)self _allowsSelectionOfPendingSelectionIndexPath:v9];
        v8 = v10;
        if (v10)
        {
          v11 = UIApp;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __38__UITableView_touchesEnded_withEvent___block_invoke;
          v22[3] = &unk_1E70F35B8;
          v22[4] = self;
          v23 = v9;
          [v11 _performBlockAfterCATransactionCommits:v22];
          pendingSelectionIndexPath = self->_pendingSelectionIndexPath;
          self->_pendingSelectionIndexPath = 0;
        }

        v13 = [(UITableView *)self _existingCellForRowAtIndexPath:v9];
        v14 = v13;
        if ((*(&self->_tableFlags + 1) & 0x10) != 0)
        {
          v15 = [v13 layoutManager];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v14 _startToEditTextField];
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }

    if (!v8 && self->_pendingSelectionIndexPath)
    {
      v17 = [(UIView *)self traitCollection];
      v18 = _UIShouldAnimateDefaultCellHighlightAndSelection(v17);

      [(UITableView *)self unhighlightRowAtIndexPath:self->_pendingSelectionIndexPath animated:v18];
      v19 = self->_pendingSelectionIndexPath;
      self->_pendingSelectionIndexPath = 0;
    }

    if ([(UITableView *)self _shouldDeselectRowsOnTouchesBegan])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __38__UITableView_touchesEnded_withEvent___block_invoke_2;
      v21[3] = &unk_1E70F3590;
      v21[4] = self;
      [UIApp _performBlockAfterCATransactionCommits:v21];
      pendingDeselectionIndexPaths = self->_pendingDeselectionIndexPaths;
      self->_pendingDeselectionIndexPaths = 0;
    }

    [(UITableView *)self _resetDragSwipeAndTouchSelectFlags];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITableView *)self currentTouch];
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    [(UITableView *)self setCurrentTouch:0];
    pendingSelectionIndexPath = self->_pendingSelectionIndexPath;
    self->_pendingSelectionIndexPath = 0;

    v11 = [(UIView *)self traitCollection];
    v12 = _UIShouldAnimateDefaultCellHighlightAndSelection(v11);

    v13 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
    [(UITableView *)self _highlightRowAtIndexPath:v13 animated:v12 scrollPosition:0 usingPresentationValues:1];

    if ([(UIScrollView *)self isScrollEnabled])
    {
      *(&self->_tableFlags + 2) |= 0x100uLL;
    }

    v15.receiver = self;
    v15.super_class = UITableView;
    [(UIScrollView *)&v15 touchesCancelled:v6 withEvent:v7];
    if ([(UITableView *)self _shouldDeselectRowsOnTouchesBegan]&& ![(UIScrollView *)self isTracking])
    {
      [(UITableView *)self _selectAllSelectedRows];
      pendingDeselectionIndexPaths = self->_pendingDeselectionIndexPaths;
      self->_pendingDeselectionIndexPaths = 0;
    }
  }
}

- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4
{
  y = a3.y;
  x = a3.x;
  indexContainerView = self->_indexContainerView;
  [(UIView *)indexContainerView convertPoint:self fromView:?];
  v9 = [(UIView *)indexContainerView hitTest:a4 forEvent:?];
  v10 = v9;
  if (v9 && (v9 == self->_index || v9 == self->_indexContainerView))
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UITableView;
    v11 = [(UIView *)&v14 hitTest:a4 forEvent:x, y];
  }

  v12 = v11;

  return v12;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  indexContainerView = self->_indexContainerView;
  [(UIView *)indexContainerView convertPoint:self fromView:x, y];
  v9 = [(UIView *)indexContainerView hitTest:v7 withEvent:?];
  v10 = v9;
  if (v9 && (v9 == self->_index || v9 == self->_indexContainerView))
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UITableView;
    v11 = [(UIScrollView *)&v14 hitTest:v7 withEvent:x, y];
  }

  v12 = v11;

  return v12;
}

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITableView;
  v5 = [(UIScrollView *)&v9 touchesShouldCancelInContentView:v4];
  if (v5)
  {
    v6 = [(UITableView *)self _tableViewCellForContentView:v4];
    if (v6)
    {
      v7 = [(UITableView *)self _indexPathForCell:v6 usingPresentationValues:1];
      [(UITableView *)self unhighlightRowAtIndexPath:v7 animated:0];
    }
  }

  return v5;
}

void __54__UITableView__configureDataSourcePrefetchingHandlers__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 3195) & 4) != 0)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

          v12 = [v5 indexPathForRowAtGlobalRow:{objc_msgSend(*(*(&v14 + 1) + 8 * v11), "integerValue", v14)}];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v13 = [v5 _prefetchDataSourceProxy];
      [v13 tableView:v5 prefetchRowsAtIndexPaths:v6];
    }
  }
}

void __54__UITableView__configureDataSourcePrefetchingHandlers__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 3195) & 8) != 0)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

          v12 = [v5 indexPathForRowAtGlobalRow:{objc_msgSend(*(*(&v14 + 1) + 8 * v11), "integerValue", v14)}];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v13 = [v5 _prefetchDataSourceProxy];
      [v13 tableView:v5 cancelPrefetchingForRowsAtIndexPaths:v6];
    }
  }
}

void __48__UITableView__configureCellPrefetchingHandlers__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prefetchCellAtGlobalRow:a2 aboveVisibleRange:a3];
}

- (void)_prefetchCellAtGlobalRow:(int64_t)a3 aboveVisibleRange:(BOOL)a4
{
  v4 = a4;
  if ([(UITableView *)self _cellPrefetchingAllowed])
  {
    v7 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:a3];
    v8 = v7;
    if (v7)
    {
      v15 = v7;
      if (!self->_focusedCell || self->_focusedViewType != 1 || (v9 = [v7 isEqual:self->_focusedCellIndexPath], v8 = v15, (v9 & 1) == 0))
      {
        if (!self->_firstResponderView || self->_firstResponderViewType != 1 || (v10 = [v8 isEqual:self->_firstResponderIndexPath], v8 = v15, (v10 & 1) == 0))
        {
          [(UIScrollView *)self contentSize];
          v12 = v11;
          v13 = [(UITableView *)self _createPreparedCellForGlobalRow:a3 withIndexPath:v15 willDisplay:0, [(UITableViewRowData *)&self->_rowData->super.isa rectForGlobalRow:a3 heightCanBeGuessed:0]];
          [v13 _setHiddenForReuse:1];
          [(NSMutableDictionary *)self->_tentativeCells removeObjectForKey:v15];
          if (v4)
          {
            if ([(UITableView *)self _estimatesHeights])
            {
              [(UITableView *)self _applyCoalescedContentSizeUpdates];
              [(UIScrollView *)self contentSize];
              if (v14 - v12 != 0.0)
              {
                [(UIScrollView *)self contentOffset];
                [(UITableView *)self setContentOffset:?];
              }
            }
          }

          v8 = v15;
        }
      }
    }
  }
}

- (void)setPrefetchingEnabled:(BOOL)prefetchingEnabled
{
  if (((((*(&self->_tableFlags + 3) & 0x1000000) == 0) ^ prefetchingEnabled) & 1) == 0)
  {
    v3 = 0x1000000;
    if (!prefetchingEnabled)
    {
      v3 = 0;
    }

    *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFFFEFFFFFFLL | v3;
    [(UITableView *)self _preparePrefetchContext];
  }
}

- (void)_updateCycleIdleUntil:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    rowData = self->_rowData;

    if (rowData)
    {
      if (*(&self->_tableFlags + 27))
      {
        v6 = _UISetCurrentFallbackEnvironment(self);
        [(UITableView *)self _preparePrefetchContext];
        prefetchContext = self->_prefetchContext;
        [(UIScrollView *)self contentOffset];
        [(_UITableViewPrefetchContext *)prefetchContext updateVisibleIndexRange:self->_visibleRows.length withContentOffset:v8];

        _UIRestorePreviousFallbackEnvironment(v6);
      }
    }
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = UITableView;
  [(UIView *)&v23 setSemanticContentAttribute:?];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_visibleCells;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9++) setSemanticContentAttribute:a3];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(UITableView *)self _visibleHeaderFooterViews];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) setSemanticContentAttribute:a3];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(UIView *)self layoutMargins];
  if (left != v9 || right != v8)
  {
    [(UITableView *)self _setNeedsRebuildGeometry];
  }

  v11.receiver = self;
  v11.super_class = UITableView;
  [(UIView *)&v11 _layoutMarginsDidChangeFromOldMargins:top, left, bottom, right];
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(UIView *)self safeAreaInsets];
  if (left != v9 || right != v8)
  {
    [(UITableView *)self _rebuildGeometry];
    [(UISwipeActionController *)self->_swipeActionController updateLayout];
  }

  [(UITableView *)self _setNeedsIndexBarInsetsUpdate];
  v11.receiver = self;
  v11.super_class = UITableView;
  [(UIView *)&v11 _safeAreaInsetsDidChangeFromOldInsets:top, left, bottom, right];
}

- (void)_updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:(UIEdgeInsets)a3 oldEdgesPropagatingSafeAreaInsets:(unint64_t)a4 adjustContentOffsetIfNecessary:(BOOL)a5
{
  v5 = a4;
  v7.receiver = self;
  v7.super_class = UITableView;
  [(UIScrollView *)&v7 _updateForChangedEdgesConvertingSafeAreaToContentInsetWithOldSystemContentInset:a4 oldEdgesPropagatingSafeAreaInsets:a5 adjustContentOffsetIfNecessary:a3.top, a3.left, a3.bottom, a3.right];
  if ((([(UIScrollView *)self _edgesPropagatingSafeAreaInsetsToSubviews]^ v5) & 5) != 0)
  {
    if (dyld_program_sdk_at_least())
    {
      [(UITableView *)self _setNeedsRebuildGeometry];
    }
  }
}

- (void)accessoryInsetsDidChange:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v15.receiver = self;
  v15.super_class = UITableView;
  [(UIScrollView *)&v15 accessoryInsetsDidChange:?];
  [(UIScrollView *)self accessoryInsets];
  if (v9 != left || v8 != top || v11 != right || v10 != bottom)
  {
    if (v9 == left && v11 == right)
    {
      [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
    }

    else
    {
      [(UITableView *)self _setNeedsRebuildGeometry];
    }

    [(UIView *)self layoutIfNeeded];
  }
}

- (void)_getGradientMaskBounds:(CGRect *)a3 startInsets:(UIEdgeInsets *)a4 endInsets:(UIEdgeInsets *)a5 intensities:(UIEdgeInsets *)a6
{
  v17.receiver = self;
  v17.super_class = UITableView;
  [(UIScrollView *)&v17 _getGradientMaskBounds:a3 startInsets:a4 endInsets:a5 intensities:a6];
  [(UITableConstants *)self->_constants defaultFocusedShadowRadiusForTableView:self];
  v11 = v10;
  v12 = dyld_program_sdk_at_least();
  v13 = 0.0;
  v14 = 0.0;
  if ((v12 & 1) == 0)
  {
    [(UITableView *)self _contentInset];
  }

  v15 = v11 + v11;
  v16 = v11 * 4.0;
  if (a3)
  {
    a3->origin.y = a3->origin.y - v15;
    a3->size.height = v15 + v16 + a3->size.height;
  }

  if (a4)
  {
    a4->top = v14 + v15 + a4->top;
    a4->bottom = v16 + v13 + a4->bottom;
  }

  if (a5)
  {
    a5->top = v14 + v15 + a5->top;
    a5->bottom = v16 + v13 + a5->bottom;
  }
}

- (void)_rectChangedWithNewSize:(CGSize)a3 oldSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  if (a3.width != a4.width)
  {
    [(UIView *)self setNeedsDisplay];
    [(UIView *)self->_tableHeaderView setNeedsDisplay];
    [(UIView *)self->_tableFooterView setNeedsDisplay];
    v9 = [(UIView *)self window];
    v10 = [v9 screen];
    v11 = [v10 _wantsWideContentMargins];

    if (v11)
    {
      [(UIView *)self _rawLayoutMargins];
      v12 = *(&self->_tableFlags + 1);
      *(&self->_tableFlags + 1) = v12 | 0x2000000000000000;
      [(UITableView *)self _setDefaultLayoutMargins:?];
      *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xDFFFFFFFFFFFFFFFLL | (((v12 >> 61) & 1) << 61);
    }

    if (dyld_program_sdk_at_least())
    {
      [(UITableView *)self _storeStateForRestoringContentOffsetIfNeeded];
    }

    [(UITableView *)self _rebuildGeometry];
  }

  if (v7 != width || v6 != height)
  {
    [(UITableView *)self _updateContentSize];
    [(UITableView *)self _updateWrapperFrame];
    [(UITableView *)self _scheduleAdjustExtraSeparators];
  }

  if (v6 != height)
  {
    [(UIScrollView *)self contentOffset];
    v15 = v14;
    [(UITableView *)self heightForTableHeaderViewHiding];
    if (v15 > 0.0 && v15 <= v16)
    {
      [(UITableView *)self _scrollToTopHidingTableHeader:0];
    }

    if ((*(&self->_tableFlags + 20) & 0x20) != 0)
    {
      [(UITableView *)self _scrollFirstResponderCellToVisible:+[UIView _isInAnimationBlock]^ 1];
    }
  }

  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:v7 != width];

  [(UITableView *)self _updateIndexFrame];
}

- (CGSize)_contentSize
{
  if (self->_rowData)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([(UIView *)self->_tableHeaderView _isSpecialInternalHeaderView])
      {
        [(UIView *)self->_tableHeaderView frame];
        v4 = v3;
        [(UIView *)self frame];
        [(UIView *)self->_tableHeaderView sizeToFit];
        [(UIView *)self->_tableHeaderView frame];
        if (v5 != v4)
        {
          [(UITableViewRowData *)self->_rowData tableHeaderHeightDidChangeToHeight:v5];
        }
      }
    }

    v6 = [(UITableViewRowData *)self->_rowData heightForTable];
    countLabel = self->_countLabel;
    if (countLabel && [(UITableViewCountView *)countLabel count]>= 20)
    {
      [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
      v6 = v6 + v8;
    }

    [(UIView *)self bounds];
    v10 = v9;
    [(UITableView *)self heightForTableHeaderViewHiding];
    if (v11 > 0.0)
    {
      v12 = v11;
      [(UITableView *)self _contentInset];
      v14 = v13;
      v16 = v15;
      [(UIView *)self bounds];
      if (v6 < v12 + v17 - v14 - v16)
      {
        v6 = v12 + v17 - v14 - v16;
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  v18 = v10;
  v19 = v6;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)resizeSubviewsWithOldSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UITableView *)self _updateIndexFrame];
  v6.receiver = self;
  v6.super_class = UITableView;
  [(UIView *)&v6 resizeSubviewsWithOldSize:width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v18.origin.x = v8;
  v18.origin.y = v9;
  v11 = v10;
  v13 = v12;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.size.width = v11;
  v18.size.height = v13;
  if (!CGRectEqualToRect(v17, v18))
  {
    if (width != v11)
    {
      rowData = self->_rowData;
      [(UITableView *)self _widthForContentInRect:x, y, width, height];
      if (rowData)
      {
        rowData->_tableViewWidth = v15;
      }
    }

    v16.receiver = self;
    v16.super_class = UITableView;
    [(UIScrollView *)&v16 setFrame:x, y, width, height];
    [(UITableView *)self _rectChangedWithNewSize:width oldSize:height, v11, v13];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v18.origin.x = v8;
  v18.origin.y = v9;
  v11 = v10;
  v13 = v12;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.size.width = v11;
  v18.size.height = v13;
  if (!CGRectEqualToRect(v17, v18))
  {
    if (width != v11)
    {
      rowData = self->_rowData;
      [(UITableView *)self _widthForContentInRect:x, y, width, height];
      if (rowData)
      {
        rowData->_tableViewWidth = v15;
      }
    }

    v16.receiver = self;
    v16.super_class = UITableView;
    [(UIScrollView *)&v16 setBounds:x, y, width, height];
    [(UITableView *)self _rectChangedWithNewSize:width oldSize:height, v11, v13];
    [(UITableView *)self _updatePinnedTableHeader];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UITableView *)self _ensureRowDataIsLoaded];
  v6 = [(UITableViewRowData *)self->_rowData heightForTable];
  if (v6 >= height)
  {
    v7 = height;
  }

  else
  {
    v7 = v6;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)_setDefaultLayoutMargins:(UIEdgeInsets)a3
{
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 3);
  if ((v4 & 0x1000) == 0)
  {
    *(&self->_tableFlags + 3) = v4 | 0x2000;
    [(UITableView *)self setLayoutMargins:a3.top, a3.left, a3.bottom, a3.right];
    *(p_tableFlags + 3) = *(p_tableFlags + 3) & 0xFFFFFFFFFFFFDFFFLL | (((v4 >> 13) & 1) << 13);
  }
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(UIView *)self _rawLayoutMargins];
  if (left != v11 || top != v8 || right != v10 || bottom != v9)
  {
    [(UIView *)self layoutMargins];
    v16 = v15;
    v18 = v17;
    *(&self->_tableFlags + 3) |= ~(*(&self->_tableFlags + 3) >> 1) & 0x1000;
    v21.receiver = self;
    v21.super_class = UITableView;
    [(UIView *)&v21 setLayoutMargins:top, left, bottom, right];
    [(UIView *)self layoutMargins];
    if (v16 != v20 || v18 != v19)
    {
      [(UITableView *)self _rebuildGeometryWithCompatibility];
    }
  }
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  [(UIView *)self _rawLayoutMargins];
  v12 = *(&self->super.super._viewFlags + 2);
  if ((v12 & 0x400000) != 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if ((v12 & 0x400000) == 0)
  {
    v9 = v11;
  }

  if (leading != v13 || top != v8 || trailing != v9 || bottom != v10)
  {
    [(UIView *)self layoutMargins];
    v18 = v17;
    v20 = v19;
    *(&self->_tableFlags + 3) |= ~(*(&self->_tableFlags + 3) >> 1) & 0x1000;
    v23.receiver = self;
    v23.super_class = UITableView;
    [(UIView *)&v23 setDirectionalLayoutMargins:top, leading, bottom, trailing];
    [(UIView *)self layoutMargins];
    if (v18 != v22 || v20 != v21)
    {
      [(UITableView *)self _rebuildGeometryWithCompatibility];
    }
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITableView;
  [(UIView *)&v4 willMoveToSuperview:a3];
  if ([(UITableView *)self _hasSwipeToDeleteRow]&& (*(&self->_tableFlags + 24) & 0x40) == 0 && (*(&self->_tableFlags + 22) & 8) != 0)
  {
    [(UITableView *)self _setEditing:0 animated:0 forced:0];
  }
}

- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4 forced:(BOOL)a5
{
  v5 = a5;
  v32 = a4;
  v6 = a3;
  v48 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableViewOperations", &_setEditing_animated_forced____s_category);
  if (*CategoryCachedImpl)
  {
    v29 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
      *buf = 138413314;
      v39 = objc_opt_class();
      v40 = 2048;
      v41 = self;
      v42 = 2048;
      v43 = v6;
      v44 = 2048;
      v45 = v32;
      v46 = 2048;
      v47 = v5;
      v31 = v39;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "<%@ %p> setEditing:%ld animated:%ld forced:%ld", buf, 0x34u);
    }
  }

  if (((*(&self->_tableFlags + 14) & 0x40) == 0) == v6 && ((*(&self->_tableFlags + 22) & 2) == 0 || v5) && (*(&self->_tableFlags + 27) & 0x10) == 0)
  {
    if (!dyld_program_sdk_at_least() || !v6 || (~*(&self->_tableFlags + 4) & 0xC000) != 0 || (-[UITableView indexPathsForSelectedRows](self, "indexPathsForSelectedRows"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10 <= 1))
    {
      v11 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
      [(UITableView *)self selectRowAtIndexPath:v11 animated:0 scrollPosition:0];
    }

    if (v6)
    {
      *(&self->_tableFlags + 1) |= 0x40000000000000uLL;
    }

    else
    {
      [(_UITableViewMultiSelectController *)self->_multiSelectController clearSelectionState];
      *(&self->_tableFlags + 1) &= ~0x40000000000000uLL;
      if (![(UITableView *)self _allowsReorderingWhenNotEditing])
      {
        [(UITableView *)self _cancelCellReorder:v32];
      }
    }

    v12 = *(&self->_tableFlags + 2);
    if ((v12 & 0x8000000000000) != 0 && (swipedIndexPath = self->_swipedIndexPath) != 0 && (*(&self->_tableFlags + 24) & 0x40) == 0)
    {
      v14 = [(NSIndexPath *)swipedIndexPath section];
      v15 = [(NSIndexPath *)self->_swipedIndexPath row];
      if (!v6)
      {
        [(UITableView *)self _endSwipeToDeleteRowDidDelete:0];
        *(&self->_tableFlags + 2) &= ~0x8000000000000uLL;
        if (![(UITableView *)self _isUpdating]|| (*(&self->_tableFlags + 22) & 0x40) != 0)
        {
          [(UITableView *)self _cleanupStateFromDeleteConfirmation];
        }
      }

      v16 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:v14];
      v17 = [(UITableView *)self globalRowForRowAtIndexPath:v16];
      if (![(UITableView *)self _isUpdating]&& (*(&self->_tableFlags + 17) & 4) == 0)
      {
        location = self->_visibleRows.location;
        if (v17 >= location && v17 - location < self->_visibleRows.length)
        {
          v19 = [(NSMutableArray *)self->_visibleCells objectAtIndex:?];
          [(UITableView *)self _setupCell:v19 forEditing:v6 atIndexPath:v16 animated:v32 updateSeparators:1];
        }
      }
    }

    else
    {
      if (!v6)
      {
        [(UITableView *)self _endSwipeToDeleteRowDidDelete:0];
        v12 = *(&self->_tableFlags + 2);
      }

      if ((v12 & 0x8000000000000) != 0)
      {
        *(&self->_tableFlags + 2) = v12 & 0xFFF7FFFFFFFFFFFFLL;
        [(UITableView *)self _cleanupStateFromDeleteConfirmation];
      }

      v20 = 0x80000000000000;
      if (!v6)
      {
        v20 = 0;
      }

      *(&self->_tableFlags + 1) = *(&self->_tableFlags + 1) & 0xFF7FFFFFFFFFFFFFLL | v20;
      if (![(UITableView *)self _isUpdating])
      {
        [(UITableView *)self _suspendReloads];
        v21 = [(NSMutableArray *)self->_visibleCells count];
        v22 = v21 - 1;
        if (v21 >= 1)
        {
          v23 = 0;
          do
          {
            v24 = self->_visibleRows.location;
            v25 = [(NSMutableArray *)self->_visibleCells objectAtIndexedSubscript:v23];
            v26 = [(UITableView *)self indexPathForRowAtGlobalRow:v23 + v24];
            [(UITableView *)self _setupCell:v25 forEditing:v6 atIndexPath:v26 animated:v32 updateSeparators:1];
            v27 = *(&self->_tableFlags + 1);

            if ((v27 & 0x200000000000000) != 0)
            {
              break;
            }
          }

          while (v22 != v23++);
        }

        [(UITableView *)self _resumeReloads];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v34 = __43__UITableView__setEditing_animated_forced___block_invoke;
        v35 = &__block_descriptor_34_e29_v16__0__NSMutableDictionary_8l;
        v36 = v6;
        v37 = v32;
        __43__UITableView__setEditing_animated_forced___block_invoke(v33, self->_visibleFooterViews);
        v34(v33, self->_visibleHeaderViews);
      }

      if (self->_tableHeaderView && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(UIView *)self->_tableHeaderView setEditing:v6 animated:v32];
      }

      if (self->_tableFooterView && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(UIView *)self->_tableFooterView setEditing:v6 animated:v32];
      }
    }

    [(UIView *)self setNeedsFocusUpdate];
    [(UITableView *)self _updateSelectionIsKey];
  }
}

void __43__UITableView__setEditing_animated_forced___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a2 objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 setEditing:*(a1 + 32) animated:*(a1 + 33)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if ((*(&self->_tableFlags + 22) & 0x42) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__UITableView_setEditing_animated___block_invoke;
    v8[3] = &unk_1E70F8A10;
    v8[4] = self;
    v9 = editing;
    v10 = animated;
    v5 = _Block_copy(v8);
    v6 = [v5 copy];
    deferredEditingHandler = self->_deferredEditingHandler;
    self->_deferredEditingHandler = v6;
  }

  else
  {

    [(UITableView *)self _setEditing:editing animated:animated forced:0];
  }
}

- (void)_updateCell:(id)a3 withValue:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([(UITableView *)self _dataSourceImplementsCanUpdateRowAtIndexPath])
  {
    v7 = [(UITableView *)self _indexPathForCell:v13 usingPresentationValues:1];
    if (v7)
    {
      v8 = [(UITableView *)self _delegateProxy];
      [v8 tableView:self didUpdateTextFieldForRowAtIndexPath:v7 withValue:v6];

      if ([v13 returnAction])
      {
        v9 = [v13 _target];

        if (v9)
        {
          v10 = UIApp;
          v11 = [v13 returnAction];
          v12 = [v13 _target];
          [v10 sendAction:v11 toTarget:v12 fromSender:v13 forEvent:0];
        }
      }
    }
  }
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFF7FFFFFFLL | v3;
  [(UITableView *)self _updateShowScrollIndicatorsFlag];
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIScrollView *)self contentOffset];
  v7 = v6;
  v9 = v8;
  [(UITableView *)self _contentInset];
  v11 = v10;
  [(UITableView *)self heightForAutohidingTableHeaderView];
  v13 = v11 + v12;
  if ([(UIScrollView *)self isTracking])
  {
    [(UIScrollView *)self contentOffset];
    if (v14 >= v13 && y < v13)
    {
      v18 = 0x100000000;
      goto LABEL_12;
    }
  }

  [(UIScrollView *)self contentOffset];
  if (v16 < v13 && y >= v13)
  {
    v18 = 0x80000000;
LABEL_12:
    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFE7FFFFFFFLL | v18;
  }

  v23.receiver = self;
  v23.super_class = UITableView;
  [(UIScrollView *)&v23 setContentOffset:x, y];
  v19 = [(UIView *)self traitCollection];
  if ([v19 userInterfaceIdiom] != 3)
  {
LABEL_19:

    goto LABEL_20;
  }

  v20 = [(UIView *)self window];
  v21 = [v20 _screen];
  v22 = [v21 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
  if ([v22 integerValue] != 2)
  {

    goto LABEL_19;
  }

  if (x != v7 || y != v9)
  {
    [(UIScrollView *)self _flashScrollIndicatorsPersistingPreviousFlashes];
  }

LABEL_20:
  [(UITableView *)self _updateBackgroundView];
}

- (void)setContentSize:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = UITableView;
  [(UIScrollView *)&v4 setContentSize:a3.width, a3.height];
  [(UITableView *)self _updateWrapperFrame];
}

- (void)setContentSize:(CGSize)a3 skipContentOffsetAdjustment:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(UIScrollView *)self _isAutomaticContentOffsetAdjustmentEnabled];
  v9 = !v4;
  [(UIScrollView *)self _setAutomaticContentOffsetAdjustmentEnabled:v9];
  [(UIScrollView *)self _hideScrollIndicatorsIfNeededForNewContentSize:0 animated:width, height];
  [(UITableView *)self setContentSize:width, height];
  [(UIScrollView *)self _setAutomaticContentOffsetAdjustmentEnabled:v8];
  if (!v9)
  {
    *(&self->_tableFlags + 3) |= 0x400uLL;
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(UIScrollView *)self contentInset];
  if (left == v11 && top == v8 && right == v10)
  {
    v14 = v9;
    v15.receiver = self;
    v15.super_class = UITableView;
    [(UIScrollView *)&v15 setContentInset:top, left, bottom, right];
    if (bottom == v14)
    {
      return;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UITableView;
    [(UIScrollView *)&v15 setContentInset:top, left, bottom, right];
  }

  [(UITableView *)self _updateForChangeInEffectiveContentInset];
}

- (void)_scrollFirstResponderCellToVisible:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 3);
  if ((v4 & 0x8000000000) != 0)
  {
    goto LABEL_4;
  }

  v5 = a3;
  if ([(UITableView *)self _isUpdating])
  {
    v4 = *(p_tableFlags + 3);
LABEL_4:
    *(p_tableFlags + 3) = v4 | 0x10000000000;
    return;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_visibleCells;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_7:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if ([v12 _isAncestorOfFirstResponder])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v13 = v12;

    if (!v13)
    {
      return;
    }

    v14 = [(UITableView *)self _indexPathForCell:v13 usingPresentationValues:1];
    if (v14)
    {
      if ([(UITableView *)self _indexPathIsValid:v14])
      {
        [(UITableView *)self _scrollToRowAtIndexPath:v14 atScrollPosition:0 animated:v5 usingPresentationValues:1];
      }
    }
  }

  else
  {
LABEL_13:
    v13 = v7;
  }
}

- (void)registerNib:(UINib *)nib forCellReuseIdentifier:(NSString *)identifier
{
  v11 = nib;
  v7 = identifier;
  if (![(NSString *)v7 length])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"must pass a valid reuse identifier to -[UITableView %@]", v10}];
  }

  [(UITableView *)self _registerThing:v11 asNib:1 forViewType:1 withReuseIdentifer:v7];
}

- (void)registerNib:(UINib *)nib forHeaderFooterViewReuseIdentifier:(NSString *)identifier
{
  v11 = nib;
  v7 = identifier;
  if (![(NSString *)v7 length])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"must pass a valid reuse identifier to -[UITableView %@]", v10}];
  }

  [(UITableView *)self _registerThing:v11 asNib:1 forViewType:2 withReuseIdentifer:v7];
}

- (void)registerClass:(Class)cellClass forCellReuseIdentifier:(NSString *)identifier
{
  v10 = identifier;
  if ([(NSString *)v10 length])
  {
    if (!cellClass)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"must pass a valid reuse identifier to -[UITableView %@]", v9}];

    if (!cellClass)
    {
      goto LABEL_6;
    }
  }

  if (([(objc_class *)cellClass isSubclassOfClass:objc_opt_class()]& 1) == 0 && objc_opt_class() != cellClass)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"must pass a class of kind %@", objc_opt_class()}];
  }

LABEL_6:
  [(UITableView *)self _registerThing:cellClass asNib:0 forViewType:1 withReuseIdentifer:v10];
}

- (void)registerClass:(Class)aClass forHeaderFooterViewReuseIdentifier:(NSString *)identifier
{
  v10 = identifier;
  if ([(NSString *)v10 length])
  {
    if (!aClass)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"must pass a valid reuse identifier to -[UITableView %@]", v9}];

    if (!aClass)
    {
      goto LABEL_6;
    }
  }

  if (([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) == 0 && objc_opt_class() != aClass)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"must pass a class of kind %@", objc_opt_class()}];
  }

LABEL_6:
  [(UITableView *)self _registerThing:aClass asNib:0 forViewType:2 withReuseIdentifer:v10];
}

- (void)_registerThing:(id)a3 asNib:(BOOL)a4 forViewType:(int)a5 withReuseIdentifer:(id)a6
{
  v7 = *&a5;
  v8 = a4;
  v15 = a3;
  v10 = a6;
  v11 = [(UITableView *)self _classMapForType:v7];
  v12 = [(UITableView *)self _nibMapForType:v7];
  if (v8)
  {
    v13 = [(UITableView *)self _nibMapForType:v7];

    v14 = [(UITableView *)self _classMapForType:v7];

    v11 = v13;
    v12 = v14;
  }

  [v12 removeObjectForKey:v10];
  if (v15)
  {
    [v11 setObject:v15 forKey:v10];
  }

  else
  {
    [v11 removeObjectForKey:v10];
  }
}

- (void)_setExternalObjectTable:(id)a3 forNibLoadingOfCellWithReuseIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  nibExternalObjectsTables = self->_nibExternalObjectsTables;
  if (!nibExternalObjectsTables)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_nibExternalObjectsTables;
    self->_nibExternalObjectsTables = v8;

    nibExternalObjectsTables = self->_nibExternalObjectsTables;
  }

  [(NSMutableDictionary *)nibExternalObjectsTables setObject:v10 forKey:v6];
}

- (void)_setExternalObjectTable:(id)a3 forNibLoadingOfHeaderFooterWithReuseIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  headerFooterNibExternalObjectsTables = self->_headerFooterNibExternalObjectsTables;
  if (!headerFooterNibExternalObjectsTables)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_headerFooterNibExternalObjectsTables;
    self->_headerFooterNibExternalObjectsTables = v8;

    headerFooterNibExternalObjectsTables = self->_headerFooterNibExternalObjectsTables;
  }

  [(NSMutableDictionary *)headerFooterNibExternalObjectsTables setObject:v10 forKey:v6];
}

- (double)_contentWidthForCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UITableView *)self _contentWidthForCell:v7 forRowAtIndexPath:v6 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];
  v9 = v8;

  return v9;
}

- (double)_contentWidthForCell:(id)a3 forRowAtIndexPath:(id)a4 usingPresentationValues:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v11 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v9];

      v9 = v11;
    }
  }

  [v8 _setTableView:self];
  [v8 setTableViewStyle:{-[UITableView _tableStyle](self, "_tableStyle")}];
  [v8 setAutoresizingMask:2];
  [v8 _setNeedsSetup:1];
  [v8 frame];
  v13 = v12;
  v15 = v14;
  [(UIView *)self bounds];
  [v8 setFrame:{v13, v15}];
  [v8 setSeparatorStyle:*(&self->_tableFlags + 7) & 7];
  if ((*(&self->_tableFlags + 6) & 0x80) != 0)
  {
    v16 = [(UITableView *)self _delegateProxy];
    [v8 setIndentationLevel:{objc_msgSend(v16, "tableView:indentationLevelForRowAtIndexPath:", self, v9)}];
  }

  [(UITableView *)self _setupCell:v8 forEditing:[(UITableView *)self isEditing] atIndexPath:v9 animated:0 updateSeparators:0];
  v17 = [v8 layoutManager];
  [v17 contentRectForCell:v8 forState:{objc_msgSend(v8, "currentStateMask")}];
  v19 = v18;

  [v8 _setTableView:0];
  return v19;
}

- (void)setAllowsMultipleSelection:(BOOL)allowsMultipleSelection
{
  v17 = *MEMORY[0x1E69E9840];
  p_tableFlags = &self->_tableFlags;
  if (((((*(&self->_tableFlags + 2) & 0x4000) == 0) ^ allowsMultipleSelection) & 1) == 0)
  {
    v5 = 0x4000;
    if (!allowsMultipleSelection)
    {
      v5 = 0;
    }

    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFFFBFFFLL | v5;
    if ((*(&self->_tableFlags + 14) & 0x40) == 0)
    {
      if (!allowsMultipleSelection)
      {
        v6 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
        [(UITableView *)self _selectRowAtIndexPath:v6 animated:0 scrollPosition:0 notifyDelegate:0];
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = self->_visibleCells;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * i) _setMultiselecting:{(*(p_tableFlags + 2) >> 14) & 1, v12}];
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }

    [(UITableView *)self _updateMultiSelectControllerIfNeeded];
  }
}

- (void)setAllowsMultipleSelectionDuringEditing:(BOOL)allowsMultipleSelectionDuringEditing
{
  v17 = *MEMORY[0x1E69E9840];
  p_tableFlags = &self->_tableFlags;
  if (((((*(&self->_tableFlags + 2) & 0x8000) == 0) ^ allowsMultipleSelectionDuringEditing) & 1) == 0)
  {
    v5 = 0x8000;
    if (!allowsMultipleSelectionDuringEditing)
    {
      v5 = 0;
    }

    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFFFF7FFFLL | v5;
    if ((*(&self->_tableFlags + 14) & 0x40) != 0)
    {
      if (!allowsMultipleSelectionDuringEditing)
      {
        v6 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
        [(UITableView *)self _selectRowAtIndexPath:v6 animated:0 scrollPosition:0 notifyDelegate:0];
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = self->_visibleCells;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * i) _setMultiselecting:{(*(p_tableFlags + 2) >> 15) & 1, v12}];
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }

    [(UITableView *)self _updateMultiSelectControllerIfNeeded];
  }
}

- (void)_updateMultiSelectControllerIfNeeded
{
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 2);
  if (dyld_program_sdk_at_least())
  {
    if ((((*(p_tableFlags + 4) >> 14) | (v4 >> 15)) & 1) == 0)
    {
LABEL_3:
      [(_UITableViewMultiSelectController *)self->_multiSelectController uninstallFromTableView];
      multiSelectController = self->_multiSelectController;
      self->_multiSelectController = 0;
      goto LABEL_7;
    }
  }

  else if ((v4 & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  if (self->_multiSelectController)
  {
    return;
  }

  v6 = [[_UITableViewMultiSelectController alloc] initWithTableView:self];
  multiSelectController = self->_multiSelectController;
  self->_multiSelectController = v6;
LABEL_7:
}

- (void)_rebuildGeometryForcingRowDataUpdate:(BOOL)a3 skipContentOffsetAdjustment:(BOOL)a4 updateImmediatelyIfPossible:(BOOL)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(&self->_tableFlags + 1);
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = a5;
    v7 = a4;
    v8 = a3;
    *(&self->_tableFlags + 1) = v5 & 0xCFFFFFFFFFFFFFFFLL;
    [(UITableView *)self _clearNeedsRecomputeHeightsForInvalidatedElements];
    [(UITableView *)self _updateWrapperView];
    [(UITableView *)self _updateWrapperFrame];
    if (v8)
    {
      [(UITableView *)self _updateRowData];
    }

    else
    {
      [(UITableView *)self _updateRowDataIfNeeded];
    }

    [(UITableView *)self _updateContentSizeSkippingContentOffsetAdjustment:v7];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(UITableView *)self _preparedCells];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          [v15 _setNeedsHeightCalculation:1];
          [(UITableView *)self _sectionContentInset];
          [v15 _setBackgroundInset:?];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [(UITableView *)self _updateMarginWidthForVisibleViewsForceLayout:0];
    [(UITableView *)self _sectionContentInset];
    [(UITableView *)self _updateListEnvironmentTraitOverrideWithSectionContentInsets:?];
    [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1 updateImmediatelyIfPossible:v6];
  }
}

- (void)_updateMarginWidthForVisibleViewsForceLayout:(BOOL)a3
{
  v3 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_visibleCells copy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        [(UITableView *)self _defaultLeadingCellMarginWidth];
        [v11 _setDefaultLeadingMarginWidth:?];
        [(UITableView *)self _defaultTrailingCellMarginWidth];
        [v11 _setDefaultTrailingCellMarginWidth:?];
      }

      v8 = [v6 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v8);
  }

  v12 = [(UITableView *)self _visibleHeaderFooterViews];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v38 + 1) + 8 * j);
        if (_IsKindOfUITableViewHeaderFooterView(v17))
        {
          v18 = v17;
          -[UITableView _headerFooterLeadingMarginWidthIsHeader:isFirstSection:](self, "_headerFooterLeadingMarginWidthIsHeader:isFirstSection:", [v18 sectionHeader], objc_msgSend(v18, "_isTopHeader"));
          [v18 _setMarginWidth:?];
          [(UITableView *)self _headerFooterTrailingMarginWidth];
          [v18 _setRightMarginWidth:?];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v14);
  }

  if (v3)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = v6;
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v34 + 1) + 8 * k) _tableViewDidUpdateMarginWidth];
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v21);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = v12;
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v30 + 1) + 8 * m);
          if (_IsKindOfUITableViewHeaderFooterView(v29))
          {
            [v29 _tableViewDidUpdateMarginWidth];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
      }

      while (v26);
    }
  }
}

- (void)_setSectionContentInset:(UIEdgeInsets)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_sectionContentInset.top), vceqq_f64(v4, *&self->_sectionContentInset.bottom)))) & 1) == 0)
  {
    self->_sectionContentInset = a3;
    [(UITableView *)self _sectionContentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(UITableView *)self _preparedCells];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * i) _setBackgroundInset:{v7, v9, v11, v13}];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }

    [(UITableView *)self _rebuildGeometryWithCompatibility];
  }
}

- (void)_setSectionContentInsetFollowsLayoutMargins:(BOOL)a3
{
  v3 = *(&self->_tableFlags + 3);
  if (((((v3 & 0x200000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x200000;
    if (!a3)
    {
      v4 = 0;
    }

    *(&self->_tableFlags + 3) = v3 & 0xFFFFFFFFFFDFFFFFLL | v4;
    [(UITableView *)self _rebuildGeometryWithCompatibility];
  }
}

- (void)setSectionHeaderTopPadding:(CGFloat)sectionHeaderTopPadding
{
  if (sectionHeaderTopPadding < 0.0)
  {
    sectionHeaderTopPadding = -1.0;
  }

  if (self->_sectionHeaderTopPadding != sectionHeaderTopPadding)
  {
    self->_sectionHeaderTopPadding = sectionHeaderTopPadding;
    [(UITableView *)self _updateHeaderFooterPinningBehavior];

    [(UITableView *)self _setNeedsRebuildGeometry];
  }
}

- (void)_setSectionHeaderFooterPadding:(double)a3
{
  if (self->_sectionHeaderFooterPadding != a3)
  {
    self->_sectionHeaderFooterPadding = a3;
    [(UITableView *)self _setNeedsRebuildGeometry];
  }
}

- (void)_setUseLegacySectionHeaderFooterPinningBehavior:(BOOL)a3
{
  v7 = *(&self->_tableFlags + 3);
  if (((((v7 & 0x10000000000000) == 0) ^ a3) & 1) == 0)
  {
    v10 = v3;
    v9 = 0x10000000000000;
    if (!a3)
    {
      v9 = 0;
    }

    *(&self->_tableFlags + 3) = v7 & 0xFFEFFFFFFFFFFFFFLL | v9;
    [(UITableView *)self _updateHeaderFooterPinningBehavior:v4];

    [(UITableView *)self _setNeedsRebuildGeometry];
  }
}

- (void)_willChangeToIdiom:(int64_t)a3 onScreen:(id)a4
{
  v6.receiver = self;
  v6.super_class = UITableView;
  [(UIView *)&v6 _willChangeToIdiom:a3 onScreen:a4];
  if (a3 == 3)
  {
    [(UIScrollView *)self->_wrapperView setScrollEnabled:0];
  }
}

- (void)_configureCellForDisplay:(id)a3 forIndexPath:(id)a4
{
  if (([a3 _needsSetup] & 1) != 0 || (objc_msgSend(a3, "needsUpdateConstraints") & 1) != 0 || a3 && objc_msgSend(*(a3 + 21), "needsLayout"))
  {
    v7 = self->_viewBeingPreparedToDisplay;
    objc_storeStrong(&self->_viewBeingPreparedToDisplay, a3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__UITableView__configureCellForDisplay_forIndexPath___block_invoke;
    v10[3] = &unk_1E71237E8;
    v10[4] = self;
    v10[5] = a3;
    v10[6] = a4;
    [UIView performWithoutAnimation:v10];
    viewBeingPreparedToDisplay = self->_viewBeingPreparedToDisplay;
    self->_viewBeingPreparedToDisplay = v7;
    v9 = v7;
  }
}

void __53__UITableView__configureCellForDisplay_forIndexPath___block_invoke(id *a1)
{
  [a1[5] _setTableView:a1[4]];
  v2 = [a1[4] _constants];
  [a1[5] _setConstants:v2];

  v3 = [a1[4] _metricsAdapter];
  [a1[5] _setMetricsAdapter:v3];

  v4 = a1[4];
  v5 = *(v4 + 397);
  if ((v5 & 0x40000000000000) != 0)
  {
    v7 = *(v4 + 398);
    v8 = v5 & 0x200000000000000 | *(v4 + 303) | v7 & 0x2000000000000;
    v9 = v7 & 0x8000000000000;
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v6 = 1;
    }

    else
    {
      v6 = [*(v4 + 303) isEqual:a1[6]];
      v4 = a1[4];
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = [v4 _tableStyle];
  [a1[5] setTableViewStyle:v11];
  [a1[5] setAutoresizingMask:2];
  [a1[5] _setNeedsSetup:1];
  [a1[4] _sectionContentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ((_UIMaterialPresentationsEnabled() & 1) == 0)
  {
    v21 = v11 == 16 || (v11 - 1) < 2;
    if (v15 <= 0.0)
    {
      v21 = 0;
    }

    v22 = v19 > 0.0 && v21;
    [a1[5] _setOverrideUserInterfaceRenderingMode:v22];
  }

  [a1[5] setSemanticContentAttribute:{objc_msgSend(a1[4], "semanticContentAttribute")}];
  v23 = a1[4];
  if ((v23[3173] & 0x10) != 0)
  {
    v24 = [a1[5] _target];

    v23 = a1[4];
    if (!v24)
    {
      [a1[5] _setTarget:a1[4]];
      [a1[5] _setAccessoryAction:sel__accessoryButtonAction_];
      v23 = a1[4];
    }
  }

  [v23 _updateDragStateForCell:a1[5] atIndexPath:a1[6]];
  [a1[4] _updateSeparatorStyleForCell:a1[5] atIndexPath:a1[6]];
  [a1[4] _updateTopSeparatorForCell:a1[5] atIndexPath:a1[6]];
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v25 = a1[4];
  v26 = v25[385];
  v27 = [v25 _tableStyle];
  v28 = [UICellConfigurationState _readonlyCellState:?];
  v29 = [a1[5] traitCollection];
  if (v26)
  {
    [v26 defaultCellBackgroundPropertiesForTableViewStyle:v27 state:v28 traitCollection:v29];
  }

  else
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
  }

  [a1[5] _setDefaultBackgroundColor:*(&v75 + 1)];
  v30 = [a1[4] separatorColor];
  [a1[5] setSeparatorColor:v30];

  v31 = [a1[4] sectionBorderColor];
  [a1[5] setSectionBorderColor:v31];

  [a1[4] _cellIndexBarExtentFromEdge];
  [a1[5] _setIndexBarExtentFromEdge:?];
  [a1[4] _defaultLeadingCellMarginWidth];
  [a1[5] _setDefaultLeadingMarginWidth:?];
  [a1[4] _defaultTrailingCellMarginWidth];
  [a1[5] _setDefaultTrailingCellMarginWidth:?];
  v32 = [a1[5] _separatorBackdropOverlayBlendMode];
  v33 = a1[4];
  if (v32 != ((v33[398] >> 57) & 7))
  {
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __53__UITableView__configureCellForDisplay_forIndexPath___block_invoke_2;
    v74[3] = &unk_1E71194A0;
    v34 = a1[5];
    v74[4] = v33;
    v74[5] = v34;
    [UIView _performSystemAppearanceModifications:v74];
    v33 = a1[4];
  }

  [a1[5] _setSeparatorEffect:v33[334]];
  [a1[5] _setBackgroundInset:{v13, v15, v17, v19}];
  [a1[5] _setAllowsReorderingWhenNotEditing:(*(a1[4] + 399) >> 7) & 1];
  v35 = a1[4];
  v36 = a1[5];
  v37 = *(v35 + 327);
  v38 = [*(v35 + 311) superview];
  v39 = a1[4];
  if (v38 == v39[312])
  {
    v40 = (*(v39 + 3191) >> 5) & 1;
  }

  else
  {
    v40 = 0;
  }

  [v36 _setAnimating:v37 > 0 clippingAdjacentCells:v40];

  [a1[5] _setHiddenForReuse:0];
  v41 = a1[4];
  if ((*(v41 + 3174) & 0x80) != 0)
  {
    v42 = [v41 _delegateProxy];
    [a1[5] setIndentationLevel:{objc_msgSend(v42, "tableView:indentationLevelForRowAtIndexPath:", a1[4], a1[6])}];

    v41 = a1[4];
  }

  [a1[5] setSectionLocation:-[UITableViewRowData sectionLocationForRow:inSection:](v41[270] animated:{objc_msgSend(a1[6], "row"), objc_msgSend(a1[6], "section")), 0}];
  v43 = dyld_program_sdk_at_least();
  if (v43)
  {
    [a1[5] _prepareToSetDefaultLayoutMargins];
    [*(a1[4] + 385) defaultLayoutMarginsForCell:a1[5] inTableView:?];
    [a1[5] setLayoutMargins:?];
    [a1[5] setLayoutMarginsFollowReadableWidth:{objc_msgSend(a1[4], "cellLayoutMarginsFollowReadableWidth")}];
  }

  [a1[5] _setInsetsContentViewsToSafeArea:{objc_msgSend(a1[4], "insetsContentViewsToSafeArea")}];
  [a1[5] _setSeparatorInsetIsRelativeToCellEdges:{objc_msgSend(a1[4], "_separatorInsetIsRelativeToCellEdges")}];
  [a1[5] _setAutomaticIntrinsicContentSizeInvalidationEnabled:(*(a1[4] + 399) & 0xC00000000000) == 0x800000000000];
  if (v43)
  {
    v44 = [a1[5] superview];
    v45 = a1[4];
    if (v44 != v45 || v44 != v45[312])
    {
      [v45 _addContentSubview:a1[5] atBack:1];
    }
  }

  v46 = dyld_program_sdk_at_least();
  v47 = v46;
  if (v46 && (*(a1[4] + 3183) & 2) == 0)
  {
    [a1[5] setNeedsLayout];
    [a1[4] _setupCell:a1[5] forEditing:v6 atIndexPath:a1[6] animated:0 updateSeparators:1];
  }

  v48 = dyld_program_sdk_at_least();
  v49 = v48;
  if (v48)
  {
    [a1[4] _updateSelectedAndHighlightedStateForCell:a1[5] atIndexPath:a1[6]];
    [a1[4] _updateSelectionGroupingForCell:a1[5] atIndexPath:a1[6]];
  }

  [a1[4] _rectForRowAtIndexPath:a1[6] canGuess:(*(a1[4] + 399) >> 11) & 1];
  v54 = v50;
  v55 = v51;
  v56 = v52;
  v57 = v53;
  if ((*(a1[4] + 3193) & 8) != 0)
  {
    if (v43)
    {
      Width = CGRectGetWidth(*&v50);
      [a1[5] frame];
      if (Width != CGRectGetWidth(v84))
      {
        [a1[5] _setFrame:1 skipLayout:{v54, v55, v56, v57}];
      }
    }

    [a1[4] _heightForCell:a1[5] atIndexPath:a1[6]];
    v57 = v59;
    v60 = *(a1[4] + 270);
    v85.origin.x = v54;
    v85.origin.y = v55;
    v85.size.width = v56;
    v85.size.height = v57;
    Height = CGRectGetHeight(v85);
    [(UITableViewRowData *)v60 setHeight:Height forRowAtIndexPath:?];
  }

  [a1[5] setFrame:{v54, v55, v56, v57}];
  [a1[5] _setNeedsHeightCalculation:0];
  v62 = [a1[5] layoutManager];
  [v62 contentRectForCell:a1[5] forState:{objc_msgSend(a1[5], "currentStateMask")}];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = [a1[5] contentView];
  [v71 setFrame:{v64, v66, v68, v70}];

  [a1[5] _setTableView:0];
  if ((*(a1[4] + 3183) & 2) == 0)
  {
    if ((v43 & 1) == 0)
    {
      v72 = [a1[5] superview];
      v73 = a1[4];
      if (v72 != v73 || v72 != v73[312])
      {
        [v73 _addContentSubview:a1[5] atBack:1];
      }
    }

    if ((v47 & 1) == 0)
    {
      [a1[5] setNeedsLayout];
      [a1[4] _setupCell:a1[5] forEditing:v6 atIndexPath:a1[6] animated:0 updateSeparators:1];
    }
  }

  if ((v49 & 1) == 0)
  {
    [a1[4] _updateSelectedAndHighlightedStateForCell:a1[5] atIndexPath:a1[6]];
  }

  __destructor_8_s8_s16_s24_s80(&v75);
}

- (void)_updateSelectedAndHighlightedStateForCell:(id)a3 atIndexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (![(UITableView *)self _shouldDeselectRowsOnTouchesBegan]|| ([(NSMutableArray *)self->_pendingDeselectionIndexPaths containsObject:v6]& 1) == 0)
  {
    [v7 setSelected:{-[NSMutableArray containsObject:](self->_selectedIndexPaths, "containsObject:", v6)}];
    [v7 setHighlighted:{-[NSMutableArray containsObject:](self->_highlightedIndexPaths, "containsObject:", v6)}];
  }
}

- (void)_updateDragStateForCell:(id)a3 atIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(_UITableViewDragController *)self->_dragController indexPaths];
  v8 = v7;
  if (!v7 || ![v7 containsObject:v6])
  {
    [v12 _setDragState:0];
    [v12 setAlpha:1.0];
    goto LABEL_11;
  }

  rowData = self->_rowData;
  if (!rowData)
  {
    v11 = 0;
LABEL_9:
    [v12 _setDragState:2];
    goto LABEL_10;
  }

  v10 = rowData->_draggedIndexPath;
  v11 = v10;
  if (!v10 || ![(NSIndexPath *)v10 isEqual:v6])
  {
    goto LABEL_9;
  }

  [v12 _setDragState:0];
  [v12 setAlpha:0.0];
LABEL_10:

LABEL_11:
}

- (void)_updateDropStateForVisibleCellsForActiveDrop:(BOOL)a3 dropTargetIndexPath:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(NSMutableArray *)self->_highlightedIndexPaths copy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (!self->_highlightedSpringLoadedIndexPath || ([*(*(&v19 + 1) + 8 * i) isEqual:?] & 1) == 0)
        {
          [(UITableView *)self unhighlightRowAtIndexPath:v13 animated:0];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (dyld_program_sdk_at_least())
  {
    v14 = dyld_program_sdk_at_least();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__UITableView__updateDropStateForVisibleCellsForActiveDrop_dropTargetIndexPath___block_invoke;
    v16[3] = &unk_1E70F5AF0;
    if (v14)
    {
      v15 = 6;
    }

    else
    {
      v15 = 4;
    }

    v16[4] = self;
    v18 = v4;
    v17 = v6;
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:v15 options:v16 animations:0 completion:?];
  }

  else if (v6 && v4)
  {
    [(UITableView *)self _highlightRowAtIndexPath:v6 animated:0 scrollPosition:0 usingPresentationValues:1];
  }
}

void __80__UITableView__updateDropStateForVisibleCellsForActiveDrop_dropTargetIndexPath___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 2272);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (*(a1 + 48) == 1)
        {
          v8 = [*(a1 + 32) _indexPathForCell:*(*(&v11 + 1) + 8 * v6) usingPresentationValues:1];
          v9 = v8;
          if (*(a1 + 40) && ([v8 isEqual:?] & 1) != 0)
          {
            v10 = 2;
          }

          else
          {
            v10 = 1;
          }

          [v7 _setDropState:{v10, v11}];
        }

        else
        {
          [*(*(&v11 + 1) + 8 * v6) _setDropState:{0, v11}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_setPinsTableHeaderView:(BOOL)a3
{
  v3 = *(&self->_tableFlags + 2);
  v4 = v3 & 0xFFFFFFFDFFFFFFFFLL;
  v5 = v3 & 0xFFFFFFFC3FFFFFFFLL | 0x200000000;
  if (!a3)
  {
    v5 = v4;
  }

  *(&self->_tableFlags + 2) = v5;
  [(UITableView *)self _updatePinnedTableHeader];
}

- (double)_marginWidth
{
  result = self->_separatorInset.left;
  if (result == -1.0)
  {
    [(UITableView *)self _defaultMarginWidth];
  }

  return result;
}

- (void)_selectRowsAtIndexPaths:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5 notifyDelegate:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(UITableView *)self _selectRowAtIndexPath:*(*(&v15 + 1) + 8 * v14++) animated:v8 scrollPosition:a5 notifyDelegate:v6];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_deselectRowsAtIndexPaths:(id)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
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

        [(UITableView *)self _deselectRowAtIndexPath:*(*(&v13 + 1) + 8 * v12++) animated:v6 notifyDelegate:v5];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_deselectRowsAtIndexPaths:(id)a3 animated:(BOOL)a4 transitionCoordinator:(id)a5
{
  v6 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v20 = v6;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          if ([(NSMutableArray *)self->_selectedIndexPaths containsObject:v16])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    if (v9)
    {
      deselectionTransitionIndexPaths = self->_deselectionTransitionIndexPaths;
      if (deselectionTransitionIndexPaths)
      {
        [(NSMutableArray *)deselectionTransitionIndexPaths addObjectsFromArray:v10];
      }

      else
      {
        v18 = [v10 mutableCopy];
        v19 = self->_deselectionTransitionIndexPaths;
        self->_deselectionTransitionIndexPaths = v18;
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __72__UITableView__deselectRowsAtIndexPaths_animated_transitionCoordinator___block_invoke;
      v22[3] = &unk_1E71018A8;
      v22[4] = self;
      v23 = v20;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __72__UITableView__deselectRowsAtIndexPaths_animated_transitionCoordinator___block_invoke_2;
      v21[3] = &unk_1E70F3B98;
      v21[4] = self;
      [v9 animateAlongsideTransition:v22 completion:v21];
    }

    else
    {
      [(UITableView *)self _deselectRowsAtIndexPaths:v10 animated:v20 notifyDelegate:0];
    }
  }
}

void __72__UITableView__deselectRowsAtIndexPaths_animated_transitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[302] copy];
  [v2 _deselectRowsAtIndexPaths:v3 animated:*(a1 + 40) notifyDelegate:0];
}

void __72__UITableView__deselectRowsAtIndexPaths_animated_transitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v3 = *(a1 + 32);
    v4 = [v3[302] copy];
    [v3 _selectRowsAtIndexPaths:v4 animated:0 scrollPosition:0 notifyDelegate:0];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 2416);
  *(v5 + 2416) = 0;
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  [v4 _wheelVelocity];
  v6 = v5;
  if (![(UITableView *)self _shouldShowIndexOverlays]|| ((v7 = [(UIView *)self _isFocusedOrAncestorOfFocusedView], fabs(v6) >= 20.0) ? (v8 = !v7) : (v8 = 1), v8 || (*(&self->_tableFlags + 2) & 0x8000000000000000) != 0))
  {
    if ((*(&self->_tableFlags + 2) & 0x8000000000000000) != 0)
    {
      if ([(UITableView *)self _shouldShowIndexOverlays])
      {
        [(UITableView *)self _prolongIndexOverlayTimer];
      }

      else
      {
        [(UITableView *)self _hideIndexOverlay];
      }
    }

    v9.receiver = self;
    v9.super_class = UITableView;
    [(UIResponder *)&v9 _wheelChangedWithEvent:v4];
  }

  else
  {
    [(UITableView *)self _recomputeSectionIndexTitleIndex];
    [(UITableView *)self _transitionIndexOverlayToVisible:1 shouldFadeBackToInvisible:1];
    [(UITableView *)self _startIndexOverlayIndicatorIgnoreTimer];
  }
}

- (void)_moveWithEvent:(id)a3
{
  v4 = a3;
  if ([(UITableView *)self _rowDataNumberOfRows]>= 1 && (*(&self->_tableFlags + 2) & 0x8000000000000000) != 0)
  {
    if ((*(&self->_tableFlags + 24) & 8) == 0)
    {
      if ([v4 _moveDirection] == 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = -1;
      }

      if ([v4 _focusHeading] == 32 || objc_msgSend(v4, "_focusHeading") == 16)
      {
        *(&self->_tableFlags + 3) |= 0x800000uLL;
      }

      [(UITableView *)self _shiftSectionIndexTitleIndexByAmount:v5];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITableView;
    [(UIResponder *)&v6 _moveWithEvent:v4];
  }
}

- (void)_unhighlightAllRowsAndHighlightGlobalRow:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
  [(UITableView *)self _highlightRowAtIndexPath:v5 animated:0 scrollPosition:0 usingPresentationValues:1];

  v6 = [(UITableView *)self indexPathForRowAtGlobalRow:a3];
  [(UITableView *)self _highlightRowAtIndexPath:v6 animated:0 scrollPosition:0 usingPresentationValues:1];
  [(UITableView *)self _updateFocusedItemToIndexPath:v6];
}

- (void)_requestAppropriateFocusUpdate
{
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 26) & 0x80) != 0)
  {
    [(UIView *)self _setNeedsNonDeferredFocusUpdate];
    *(p_tableFlags + 3) &= ~0x800000uLL;
  }

  else
  {

    [(UIView *)self setNeedsFocusUpdate];
  }
}

- (void)_updateFocusedItemToIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19 = v4;
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 userInterfaceIdiom];

    v4 = v19;
    if (v6 == 3)
    {
      v7 = v19;
      if ([v7 row] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v7, "section")}];

        v7 = v8;
      }

      v9 = [(UITableView *)self _focusedCellIndexPath];
      v10 = [v9 isEqual:v7];

      if (v10)
      {
        v11 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
        v12 = [v11 scrollManager];
        v13 = [(UIScrollView *)self _focusTuple];
        v14 = [(UITableView *)self _focusedCell];
        [(UIScrollView *)self contentOffset];
        [v12 contentOffsetForEnvironmentScrollableContainer:v13 toShowFocusItem:v14 targetOffset:?];
        v16 = v15;
        v18 = v17;

        [(UIScrollView *)self setContentOffset:0 animated:v16, v18];
      }

      else
      {
        [(UITableView *)self _setIndexPathToFocus:v7];
        [(UITableView *)self _requestAppropriateFocusUpdate];
      }

      v4 = v19;
    }
  }
}

- (id)_updateIndexOverlayToShowTitleAtIndex:(int64_t)a3
{
  v5 = [(UITableView *)self _dataSourceSectionIndexTitles];
  v6 = v5;
  if (a3 < 0 || [v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndex:a3];
    [(_UICollectionTableIndexOverlayIndicatorView *)self->_indexOverlayIndicatorView setCurrentText:v7];
  }

  return v7;
}

- (void)_moveSectionIndexTitleIndexToIndex:(int64_t)a3 highlight:(BOOL)a4
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = a4;
    v7 = [(UITableView *)self _updateIndexOverlayToShowTitleAtIndex:?];
    if (v7)
    {
      v11 = v7;
      v8 = [(UITableView *)self _sectionIndexChangedToIndex:a3 title:v7];
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v8];
      self->_currentIndexTitleIndex = a3;
      if (v4)
      {
        v10 = [(UITableView *)self globalRowForRowAtIndexPath:v9];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(UITableView *)self _unhighlightAllRowsAndHighlightGlobalRow:v10];
        }
      }

      v7 = v11;
    }
  }
}

- (void)_shiftSectionIndexTitleIndexByAmount:(int64_t)a3
{
  [(UITableView *)self _moveSectionIndexTitleIndexToIndex:[(UITableView *)self _currentSectionIndexTitleIndex]+ a3 highlight:1];

  [(UITableView *)self _prolongIndexOverlayTimer];
}

- (BOOL)_shouldConsumePressEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self traitCollection];
  if ([v5 userInterfaceIdiom] != 3)
  {

    goto LABEL_6;
  }

  upArrowLongPressGestureRecognizer = self->_upArrowLongPressGestureRecognizer;

  if (!upArrowLongPressGestureRecognizer)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_12;
  }

  if (_UIPressesContainsPressType(v4, 0))
  {
    v7 = [(UITableView *)self _visibleCellsUsingPresentationValues:1];
    v8 = [(UITableView *)self indexPathForRowAtGlobalRow:0];
    v9 = [(UITableView *)self _cellForRowAtIndexPath:v8 usingPresentationValues:1];
    v10 = [v7 containsObject:v9] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  if (_UIPressesContainsPressType(v4, 1))
  {
    v12 = [(UITableView *)self _visibleCellsUsingPresentationValues:1];
    v13 = [(UITableView *)self indexPathForRowAtGlobalRow:[(UITableView *)self _lastGlobalRowIndex]];
    v14 = [(UITableView *)self _cellForRowAtIndexPath:v13 usingPresentationValues:1];
    v15 = [v12 containsObject:v14] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  v11 = v10 | v15;
LABEL_12:

  return v11 & 1;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UITableView *)self _shouldConsumePressEvent:v6])
  {
    v8.receiver = self;
    v8.super_class = UITableView;
    [(UIScrollView *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UITableView *)self _shouldConsumePressEvent:v6])
  {
    v8.receiver = self;
    v8.super_class = UITableView;
    [(UIScrollView *)&v8 pressesChanged:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UITableView *)self _shouldConsumePressEvent:v6])
  {
    v8.receiver = self;
    v8.super_class = UITableView;
    [(UIScrollView *)&v8 pressesEnded:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(UITableView *)self _shouldConsumePressEvent:v6])
  {
    v8.receiver = self;
    v8.super_class = UITableView;
    [(UIScrollView *)&v8 pressesCancelled:v6 withEvent:v7];
  }
}

- (BOOL)_selectionInteractionShouldBegin:(id)a3
{
  v4 = _focusedCellForSelectionInteraction(self);
  if (v4)
  {
    v5 = [(UITableView *)self _indexPathForCell:v4 usingPresentationValues:1];
    if ([(UITableView *)self _allowsEffectiveSelectionOrCustomActionAtIndexPath:v5])
    {
      v6 = [(UITableView *)self _delegateAllowsHighlightingItemAtIndexPath:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_selectionInteractionDidBeginHinting:(id)a3
{
  v4 = _focusedCellForSelectionInteraction(self);
  if (v4)
  {
    v5 = v4;
    [(UITableView *)self _highlightCell:v4 animated:0 scrollPosition:0 highlight:1];
    v4 = v5;
  }
}

- (void)_selectionInteractionDidCancelHinting:(id)a3
{
  v4 = _focusedCellForSelectionInteraction(self);
  if (v4)
  {
    v5 = v4;
    [(UITableView *)self _highlightCell:v4 animated:0 scrollPosition:0 highlight:0];
    v4 = v5;
  }
}

- (void)_selectionInteractionDidSelect:(id)a3
{
  v4 = [(UITableView *)self highlightedGlobalRow];
  if (v4 < 0)
  {
    v5 = _focusedCellForSelectionInteraction(self);
    if (v5)
    {
      v7 = v5;
      [(UITableView *)self _userSelectCell:v5];
      v5 = v7;
    }
  }

  else if ((*(&self->_tableFlags + 2) & 0x8000000000000000) != 0)
  {

    [(UITableView *)self _transitionIndexOverlayToVisible:0 shouldFadeBackToInvisible:1];
  }

  else
  {
    v6 = [(UITableView *)self indexPathForRowAtGlobalRow:v4];
    [(UITableView *)self _userSelectRowAtPendingSelectionIndexPath:v6];
  }
}

- (int64_t)highlightedGlobalRow
{
  if (![(NSMutableArray *)self->_highlightedIndexPaths count])
  {
    return -1;
  }

  v3 = [(NSMutableArray *)self->_highlightedIndexPaths objectAtIndex:0];
  v4 = [(UITableView *)self globalRowForRowAtIndexPath:v3];

  return v4;
}

- (int64_t)_rowDataNumberOfSections
{
  rowData = self->_rowData;
  if (rowData)
  {
    return rowData->_numSections;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldShowIndexOverlays
{
  if ([(UITableView *)self _dataSourceHasSectionIndexTitlesForTableView])
  {
    v3 = [(UITableView *)self _dataSourceSectionIndexTitles];
    v4 = [v3 count] == 0;
  }

  else
  {
    v4 = 1;
  }

  tableFlags = self->_tableFlags;
  v6 = [(UIView *)self traitCollection];
  v7 = 0;
  if ([v6 userInterfaceIdiom] == 3 && (tableFlags & 0x10200) != 0 && !v4)
  {
    if ([(UIView *)self isUserInteractionEnabled])
    {
      v7 = [(UITableViewRowData *)self->_rowData numberOfRows]>= self->_sectionIndexMinimumDisplayRowCount;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_recomputeSectionIndexTitleIndex
{
  self->_currentIndexTitleIndex = -1;
  v3 = [(UITableView *)self _currentSectionIndexTitleIndex];
  self->_currentIndexTitleIndex = v3;
  v4 = [(UITableView *)self _updateIndexOverlayToShowTitleAtIndex:v3];
}

- (void)_transitionIndexOverlayToVisible:(BOOL)a3 shouldFadeBackToInvisible:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  p_tableFlags = &self->_tableFlags;
  if ((((*(&self->_tableFlags + 2) >= 0) ^ a3) & 1) == 0)
  {
    v8 = 0.15;
    if (!a3)
    {
      v8 = 0.25;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__UITableView__transitionIndexOverlayToVisible_shouldFadeBackToInvisible___block_invoke;
    v11[3] = &unk_1E70F35E0;
    v11[4] = self;
    v12 = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__UITableView__transitionIndexOverlayToVisible_shouldFadeBackToInvisible___block_invoke_2;
    v9[3] = &unk_1E70FA0F0;
    v10 = a3;
    v9[4] = self;
    [(UIView *)v8 _animateCollectionTableAnimationWithDuration:UIView delay:2 options:v11 animations:v9 completion:?];
    if (v5)
    {
      *(p_tableFlags + 2) |= 0x8000000000000000;
    }
  }

  [(UITableView *)self _stopIndexOverlayTimer];
  if (v5 && v4)
  {
    [(UITableView *)self _startIndexOverlayTimerWithDelay:2.0];
  }
}

uint64_t __74__UITableView__transitionIndexOverlayToVisible_shouldFadeBackToInvisible___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 2560) setAlpha:v1];
}

uint64_t __74__UITableView__transitionIndexOverlayToVisible_shouldFadeBackToInvisible___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    *(*(result + 32) + 3184) &= ~0x8000000000000000;
  }

  return result;
}

- (void)_hideIndexOverlay:(id)a3
{
  [(UITableView *)self _stopIndexOverlayTimer];

  [(UITableView *)self _transitionIndexOverlayToVisible:0 shouldFadeBackToInvisible:1];
}

- (void)_startIndexOverlayTimerWithDelay:(double)a3
{
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__hideIndexOverlay_ selector:0 userInfo:0 repeats:a3];
  indexOverlayTimer = self->_indexOverlayTimer;
  self->_indexOverlayTimer = v4;
}

- (void)_prolongIndexOverlayTimer
{
  if (self->_indexOverlayTimer)
  {
    [(UITableView *)self _stopIndexOverlayTimer];

    [(UITableView *)self _startIndexOverlayTimerWithDelay:2.0];
  }
}

- (void)_startIndexOverlayIndicatorIgnoreTimer
{
  [(UITableView *)self _stopIgnoringWheelEventsOnIndexOverlayIndicator:0];
  *(&self->_tableFlags + 3) |= 8uLL;
  v3 = MEMORY[0x1E695DFF0];
  [(UITableView *)self _timeToIgnoreWheelEventsOnIndexOverlayIndicator];
  v4 = [v3 scheduledTimerWithTimeInterval:self target:sel__stopIgnoringWheelEventsOnIndexOverlayIndicator_ selector:0 userInfo:0 repeats:?];
  indexOverlayIndicatorEventIgnoreTimer = self->_indexOverlayIndicatorEventIgnoreTimer;
  self->_indexOverlayIndicatorEventIgnoreTimer = v4;
}

- (void)_stopIgnoringWheelEventsOnIndexOverlayIndicator:(id)a3
{
  *(&self->_tableFlags + 3) &= ~8uLL;
  [(NSTimer *)self->_indexOverlayIndicatorEventIgnoreTimer invalidate];
  indexOverlayIndicatorEventIgnoreTimer = self->_indexOverlayIndicatorEventIgnoreTimer;
  self->_indexOverlayIndicatorEventIgnoreTimer = 0;
}

- (void)_transitionIndexOverlaySelectionViewToVisible:(BOOL)a3
{
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 6) & 1) != a3)
  {
    v4 = a3;
    v6 = 0.15;
    if (!a3)
    {
      v6 = 0.25;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__UITableView__transitionIndexOverlaySelectionViewToVisible___block_invoke;
    v10[3] = &unk_1E70F35E0;
    v10[4] = self;
    v11 = a3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__UITableView__transitionIndexOverlaySelectionViewToVisible___block_invoke_2;
    v8[3] = &unk_1E70FA0F0;
    v9 = a3;
    v8[4] = self;
    [(UIView *)v6 _animateCollectionTableAnimationWithDuration:UIView delay:2 options:v10 animations:v8 completion:?];
    if (v4)
    {
      *(p_tableFlags + 3) |= 1uLL;
      indexOverlaySelectionView = self->_indexOverlaySelectionView;
    }

    else
    {
      indexOverlaySelectionView = 0;
    }

    if (__UIAccessibilityBroadcastCallback)
    {
      __UIAccessibilityBroadcastCallback(1000, indexOverlaySelectionView);
    }
  }
}

uint64_t __61__UITableView__transitionIndexOverlaySelectionViewToVisible___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 2592) setAlpha:v1];
}

uint64_t __61__UITableView__transitionIndexOverlaySelectionViewToVisible___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    *(*(result + 32) + 3192) &= ~1uLL;
  }

  return result;
}

- (void)_upArrowLongPress:(id)a3
{
  if ([a3 state] == 1)
  {

    [(UITableView *)self _longPressNudgeScrollToRow:0 position:1];
  }
}

- (void)_downArrowLongPress:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = [(UITableView *)self _lastGlobalRowIndex];

    [(UITableView *)self _longPressNudgeScrollToRow:v4 position:3];
  }
}

- (void)_longPressNudgeScrollToRow:(int64_t)a3 position:(int64_t)a4
{
  v7 = [(UITableView *)self _focusedCell];

  if (v7)
  {
    v8 = [(UITableView *)self indexPathForRowAtGlobalRow:a3];
    [(UITableView *)self _scrollToRowAtIndexPath:v8 atScrollPosition:a4 animated:0 usingPresentationValues:1];
    [(UITableView *)self _setIndexPathToFocus:v8];
  }

  [(UIView *)self _setNeedsNonDeferredFocusUpdate];
}

- (void)_upArrowTap:(id)a3
{
  [(UITableView *)self _updateVisibleCellsImmediatelyIfNecessary];
  if (self->_visibleRows.location)
  {
    v4 = 1;
  }

  else
  {
    v4 = self->_visibleRows.length == 0;
  }

  if (v4)
  {

    [(UITableView *)self _handleNudgeInDirection:1];
  }
}

- (void)_downArrowTap:(id)a3
{
  [(UITableView *)self _updateVisibleCellsImmediatelyIfNecessary];
  v4 = [(UITableView *)self _lastGlobalRowIndex];
  location = self->_visibleRows.location;
  v7 = v4 >= location;
  v6 = v4 - location;
  v7 = !v7 || v6 >= self->_visibleRows.length;
  if (v7)
  {

    [(UITableView *)self _handleNudgeInDirection:2];
  }
}

- (void)_handleNudgeInDirection:(int64_t)a3
{
  v5 = [(UITableView *)self _focusedCell];

  if (v5)
  {

    [(UITableView *)self _nudgeScroll:a3];
  }

  else
  {

    [(UIView *)self _setNeedsNonDeferredFocusUpdate];
  }
}

- (void)_nudgeScroll:(int64_t)a3
{
  v5 = [(UITableView *)self _indexPathToFocus];

  if (!v5)
  {
    if (a3 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    v7 = [(UITableView *)self _focusedCell];
    focusedViewType = self->_focusedViewType;
    v29 = v7;
    [v7 frame];
    v10 = v9;
    v12 = v11;
    [(UIView *)self bounds];
    v14 = [(UITableView *)self _nearestCellToPoint:1 expandingVisibleCells:v10, v12 + v13 * v6];
    [v14 frame];
    v16 = v15;
    [v14 frame];
    v18 = v17;
    [(UIScrollView *)self contentOffset];
    v20 = v18 - (v12 - v19);
    v21 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:self];
    v22 = [v21 scrollManager];
    v23 = [(UIScrollView *)self _focusTuple];
    [v22 contentOffsetForEnvironmentScrollableContainer:v23 toShowFocusItem:v14 targetOffset:{v16, v20}];
    v25 = v24;
    v27 = v26;

    v28 = [(UITableView *)self _indexPathForCell:v14 usingPresentationValues:1];
    [(UITableView *)self _setIndexPathToFocus:v28];

    if (focusedViewType == 1)
    {
      [v29 setHighlighted:0 animated:1];
    }

    [(UIScrollView *)self setContentOffset:1 animated:v25, v27];
  }
}

- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = UITableView;
  [(UIScrollView *)&v11 _scrollViewAnimationEnded:a3 finished:?];
  targetIndexPathForScrolling = self->_targetIndexPathForScrolling;
  self->_targetIndexPathForScrolling = 0;

  if (v4)
  {
    v7 = [(UITableView *)self _indexPathToFocus];

    if (v7)
    {
      v8 = [(UIView *)self _focusSystem];
      v9 = [v8 focusedItem];
      v10 = _UIFocusEnvironmentContainingView(v9);

      if ([v10 isDescendantOfView:self])
      {
        [(UIView *)self _setNeedsNonDeferredFocusUpdate];
      }
    }
  }
}

- (void)_stopScrollingNotify:(BOOL)a3 pin:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = UITableView;
  [(UIScrollView *)&v6 _stopScrollingNotify:a3 pin:a4];
  targetIndexPathForScrolling = self->_targetIndexPathForScrolling;
  self->_targetIndexPathForScrolling = 0;
}

- (void)setRemembersLastFocusedIndexPath:(BOOL)remembersLastFocusedIndexPath
{
  v3 = 0x80000;
  if (!remembersLastFocusedIndexPath)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)_setDefaultGradientMaskInsets
{
  [(UITableConstants *)self->_constants defaultMaskGradientHeightForTableView:self];
  v4 = v3;
  [(UITableConstants *)self->_constants defaultFocusedShadowRadiusForTableView:self];

  [(UIScrollView *)self _setGradientMaskLengths:v4];
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(_UITableViewMultiSelectController *)self->_multiSelectController targetForKeyCommands];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(_UITableViewMultiSelectController *)self->_multiSelectController targetForKeyCommands];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UITableView;
    v9 = [(UIResponder *)&v12 targetForAction:a3 withSender:v6];
  }

  v10 = v9;

  return v10;
}

- (BOOL)_canFocusCell:(id)a3
{
  v4 = a3;
  v5 = [(UITableView *)self _indexPathForCell:v4 usingPresentationValues:1];
  v6 = v5;
  if (v5 && [v5 length] == 2 && objc_msgSend(v6, "row") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "section") != 0x7FFFFFFFFFFFFFFFLL && (*(&self->_tableFlags + 30) & 0x40) == 0)
  {
    v7 = [(UITableView *)self _allowsEffectiveFocus];
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    if (!WeakRetained)
    {
      goto LABEL_9;
    }

    v9 = *(&self->_tableFlags + 1);
    if ((v9 & 0x8000000) != 0)
    {
      v14 = [(UITableView *)self _delegateProxy];
      v15 = [v14 _tableView:self canFocusRowAtIndexPath:v6];
    }

    else
    {
      if ((v9 & 0x10000000) == 0)
      {
LABEL_9:
        if (v7)
        {
          v10 = [(UIView *)self _focusBehavior];
          v11 = [v10 cellFocusability];

          v12 = v11 != 1 || [(UITableView *)self _inferFocusabilityForCell:v4 atIndexPath:v6];
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_19;
      }

      v14 = [(UITableView *)self _delegateProxy];
      v15 = [v14 tableView:self canFocusRowAtIndexPath:v6];
    }

    v12 = v15;

LABEL_19:
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (void)_cellDidBecomeFocused:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (WeakRetained)
  {
    v5 = *(&self->_tableFlags + 1);

    if ((v5 & 0x20000000) != 0)
    {
      v6 = [(UITableView *)self _indexPathForCell:v8 usingPresentationValues:1];
      v7 = [(UITableView *)self _delegateProxy];
      [v7 tableView:self didFocusRowAtIndexPath:v6];
    }
  }
}

- (void)_cellDidBecomeUnfocused:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (WeakRetained)
  {
    v5 = *(&self->_tableFlags + 1);

    if ((v5 & 0x40000000) != 0)
    {
      v6 = [(UITableView *)self _indexPathForCell:v8 usingPresentationValues:1];
      v7 = [(UITableView *)self _delegateProxy];
      [v7 tableView:self didUnfocusRowAtIndexPath:v6];
    }
  }
}

- (int64_t)_cellFocusItemDeferral:(id)a3
{
  v4 = a3;
  if (-[UITableView _shouldBecomeFocusedOnSelection](self, "_shouldBecomeFocusedOnSelection") && -[UITableView selectionFollowsFocus](self, "selectionFollowsFocus") && (-[UITableView _indexPathForCell:usingPresentationValues:](self, "_indexPathForCell:usingPresentationValues:", v4, 1), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, -[UITableView indexPathsForSelectedRows](self, "indexPathsForSelectedRows"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v6], v7, v6, (v8 & 1) != 0))
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UITableView;
  v5 = [(UIScrollView *)&v14 _shouldUpdateFocusInContext:v4];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v7 = [(UITableView *)self _reorderingIndexPath];

  if (v7)
  {
    v5 = 0;
  }

  else if (WeakRetained)
  {
    v8 = *(&self->_tableFlags + 1);
    if ((v8 & 0x400000000) != 0)
    {
      v9 = [UITableViewFocusUpdateContext _contextWithContext:v4 tableView:self];
      v10 = [(UITableView *)self _delegateProxy];
      v5 = [v10 tableView:self shouldUpdateFocusInContext:v9];
    }

    else
    {
      if ((v8 & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      v9 = [UITableViewFocusUpdateContext _contextWithContext:v4 tableView:self];
      v10 = [(UITableView *)self _delegateProxy];
      v11 = [v9 previouslyFocusedIndexPath];
      v12 = [v9 nextFocusedView];
      v5 = [v10 tableView:self shouldUpdateFocusFromRowAtIndexPath:v11 toView:v12 heading:{objc_msgSend(v9, "focusHeading")}];
    }
  }

LABEL_9:

  return v5;
}

- (id)_managedSubviewForView:(id)a3 viewType:(int *)a4 indexPath:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (self == v8 || ![(UIView *)v8 isDescendantOfView:self])
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
    if (v10)
    {
      while (1)
      {
        v11 = [(UIView *)v10 superview];
        v12 = v11;
        if (v11 == self)
        {
          break;
        }

        v13 = [(UIView *)v10 superview];
        wrapperView = self->_wrapperView;

        if (v13 == wrapperView)
        {
          goto LABEL_16;
        }

        v15 = [(UIView *)v10 superview];

        v10 = v15;
        if (!v15)
        {
          goto LABEL_10;
        }
      }

LABEL_16:
      if (v10 == self->_tableHeaderView)
      {
        v17 = 0;
        v16 = 4;
        goto LABEL_28;
      }

      if (v10 == self->_tableFooterView)
      {
        v17 = 0;
        v16 = 5;
        goto LABEL_28;
      }

      if ((*(&self->_tableFlags + 28) & 0x80) == 0)
      {
        [(UITableView *)self _updateVisibleCellsImmediatelyIfNecessary];
      }

      if ([(UITableView *)self _visibleHeaderViewsContainsView:v10])
      {
        v17 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:{-[UITableView _sectionForHeaderView:](self, "_sectionForHeaderView:", v10)}];
        v16 = 2;
        goto LABEL_28;
      }

      if ([(UITableView *)self _visibleFooterViewsContainsView:v10])
      {
        v17 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:{-[UITableView _sectionForFooterView:](self, "_sectionForFooterView:", v10)}];
        v16 = 3;
        goto LABEL_28;
      }

      if (_IsKindOfUITableViewCell(v10))
      {
        v16 = 1;
        v17 = [(UITableView *)self _indexPathForCell:v10 usingPresentationValues:1];
LABEL_28:
        v15 = v10;
        if (!a4)
        {
          goto LABEL_12;
        }

LABEL_11:
        *a4 = v16;
        goto LABEL_12;
      }
    }
  }

  v15 = 0;
LABEL_10:
  v16 = 0;
  v17 = 0;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (a5)
  {
    *a5 = [v17 copy];
  }

  v18 = v15;

  return v15;
}

- (BOOL)_shouldSelectionFollowFocusForIndexPath:(id)a3 initiatedBySelection:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:13409 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  if (_AXSFullKeyboardAccessEnabled())
  {
    goto LABEL_4;
  }

  if (dyld_program_sdk_at_least())
  {
    if (v4)
    {
      if ([(_UITableViewMultiSelectController *)self->_multiSelectController isInMultiselectInteraction])
      {
        v10 = [(UITableView *)self _focusedCellIndexPath];
        if (v10)
        {
          v11 = v10;
          v12 = [(UITableView *)self indexPathsForSelectedRows];
          v13 = [v12 containsObject:v11];

          if (v13)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  if (v4)
  {
    v8 = [(UITableView *)self selectionFollowsFocus];
    goto LABEL_5;
  }

  v14 = [(UITableView *)self _cellForRowAtIndexPath:v7 usingPresentationValues:1];
  v15 = v14;
  if (v14 && [v14 _hasCustomSelectionAction])
  {

LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  v16 = [(UITableView *)self selectionFollowsFocus];
  v8 = v16;
  if (v7 && v16)
  {
    if ((*(&self->_tableFlags + 13) & 8) != 0)
    {
      v17 = [(UITableView *)self _delegateProxy];
      v8 = [v17 tableView:self selectionFollowsFocusForRowAtIndexPath:v7];
    }

    else
    {
      v8 = 1;
    }
  }

LABEL_5:

  return v8;
}

- (void)_willUpdateFocusInContext:(id)a3
{
  v4 = [a3 nextFocusedItem];
  v5 = _UIFocusEnvironmentFirstCommonAncestor(v4, self);
  v6 = v5 == self;

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFFFFEFFFFFFLL | (v6 << 24);

  [(UITableView *)self _updateSelectionIsKey];
}

- (void)_didUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = UITableView;
  [(UIScrollView *)&v45 _didUpdateFocusInContext:v4];
  v5 = [(UITableView *)self _focusedCell];
  v6 = [(UITableView *)self _focusedCellIndexPath];
  v7 = [v6 copy];

  focusedViewType = self->_focusedViewType;
  v44 = 0;
  v9 = [v4 previouslyFocusedView];
  v43 = 0;
  v10 = [(UITableView *)self _managedSubviewForView:v9 viewType:&v44 indexPath:&v43];
  v41 = v43;

  if (v5 && focusedViewType == 1)
  {
    [(UITableView *)self _highlightCell:v5 animated:0 scrollPosition:0 highlight:0];
  }

  v11 = [v4 nextFocusedView];
  v12 = v11;
  if (v11 == self)
  {
  }

  else
  {
    v13 = [v4 nextFocusedView];
    v14 = [v13 isDescendantOfView:self];

    if (v14)
    {
      v15 = [v4 nextFocusedView];
      v42 = 0;
      v16 = [(UITableView *)self _managedSubviewForView:v15 viewType:&self->_focusedViewType indexPath:&v42];
      v17 = v42;
      [(UITableView *)self _setFocusedCell:v16];

      if (!self->_focusedViewType)
      {
        [(UITableView *)self _setFocusedCellIndexPath:0];
      }

      if (v17)
      {
        [(UITableView *)self _setFocusedCellIndexPath:v17];
      }

      goto LABEL_15;
    }
  }

  [(UITableView *)self _setFocusedCell:0];
  if (![(UITableView *)self remembersLastFocusedIndexPath])
  {
    self->_focusedViewType = 0;
    [(UITableView *)self _setFocusedCellIndexPath:0];
  }

  [(UITableView *)self _hideIndexOverlay];
LABEL_15:
  v18 = [(UITableView *)self _focusedCellIndexPath];
  [(_UISelectionInteraction *)self->_selectionInteraction setEnabled:v18 != 0];

  [(UITableView *)self _reusePreviouslyFocusedTableViewSubviewIfNeeded:v5 viewType:focusedViewType indexPath:v7];
  if (v10 && v10 != v5)
  {
    [(UITableView *)self _reusePreviouslyFocusedTableViewSubviewIfNeeded:v10 viewType:v44 indexPath:v41];
  }

  if ((*(&self->_tableFlags + 12) & 8) != 0)
  {
    v19 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v4];
    if (!v19)
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      [v38 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:13544 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
    }

    v20 = [UITableViewFocusUpdateContext _contextWithContext:v4 tableView:self];
    v21 = [(UITableView *)self _delegateProxy];
    [v21 tableView:self didUpdateFocusInContext:v20 withAnimationCoordinator:v19];
  }

  if (self->_focusedViewType == 1)
  {
    v22 = [(UITableView *)self _focusedCell];
    if (v22)
    {
      v23 = v22;
      v24 = [(UITableView *)self _focusedCell];
      v25 = [v4 nextFocusedItem];
      v26 = v25;
      if (v24 != v25)
      {

LABEL_26:
        goto LABEL_27;
      }

      v27 = [(UITableView *)self _focusedCellIndexPath];

      if (v27)
      {
        if (dyld_program_sdk_at_least() && (*(&self->_tableFlags + 30) & 0x80) == 0 && ([v4 _focusMovement], (v28 = objc_claimAutoreleasedReturnValue()) != 0) && (v29 = v28, v30 = -[UITableView _delegateSupportsPrimaryAction](self, "_delegateSupportsPrimaryAction"), v29, v30) || (-[UITableView indexPathsForSelectedRows](self, "indexPathsForSelectedRows"), v31 = objc_claimAutoreleasedReturnValue(), -[UITableView _focusedCellIndexPath](self, "_focusedCellIndexPath"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "containsObject:", v32), v32, v31, (v33 & 1) == 0))
        {
          v34 = [(UITableView *)self _focusedCellIndexPath];
          v35 = [(UITableView *)self _shouldSelectionFollowFocusForIndexPath:v34 initiatedBySelection:0];

          if (v35)
          {
            v36 = [(UITableView *)self _focusedCellIndexPath];
            v37 = [(UITableView *)self _isRowMultiSelect:v36];

            v23 = [(UITableView *)self _focusedCellIndexPath];
            LOBYTE(v39) = 0;
            [(UITableView *)self _selectRowAtIndexPath:v23 animated:0 scrollPosition:0 notifyDelegate:1 isCellMultiSelect:v37 deselectPrevious:1 performCustomSelectionAction:v39];
            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_27:
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x40) != 0)
  {
    v6 = _UIFocusGroupIdentifierOfAssociatedSearchTextFieldForView(self);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UITableView;
      v8 = [(UIView *)&v11 _systemDefaultFocusGroupIdentifier];
    }

    v5 = v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UITableView;
    v5 = [(UIView *)&v10 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (void)_reusePreviouslyFocusedTableViewSubviewIfNeeded:(id)a3 viewType:(int)a4 indexPath:(id)a5
{
  v6 = *&a4;
  v11 = a3;
  v8 = a5;
  if (v11)
  {
    v9 = [(UITableView *)self _focusedCell];
    if (v9 == v11)
    {
    }

    else
    {
      v10 = [v11 _isHiddenForReuse];

      if ((v10 & 1) == 0 && [(UITableView *)self _shouldReusePreviouslyFocusedTableViewSubview:v11 viewType:v6])
      {
        if (v6 == 1)
        {
          [(UITableView *)self _reuseTableViewCell:v11 withIndexPath:v8 didEndDisplaying:v8 != 0];
        }

        else
        {
          [(UITableView *)self _reuseHeaderFooterView:v11 isHeader:v6 == 2 forSection:0x7FFFFFFFFFFFFFFFLL];
        }
      }
    }
  }
}

- (BOOL)_shouldReusePreviouslyFocusedTableViewSubview:(id)a3 viewType:(int)a4
{
  v6 = a3;
  switch(a4)
  {
    case 3:
      v7 = [(UITableView *)self _visibleFooterViewsContainsView:v6];
      break;
    case 2:
      v7 = [(UITableView *)self _visibleHeaderViewsContainsView:v6];
      break;
    case 1:
      v7 = [(NSMutableArray *)self->_visibleCells containsObject:v6];
      break;
    default:
      v8 = 0;
      goto LABEL_9;
  }

  v8 = v7 ^ 1;
LABEL_9:

  return v8;
}

- (id)_existingFocusItemsInRect:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UITableView;
  v3 = [(UIView *)&v6 focusItemsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [v3 bs_filter:&__block_literal_global_1031];

  return v4;
}

uint64_t __41__UITableView__existingFocusItemsInRect___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (_IsKindOfUIView(v2))
  {
    v3 = [v2 _isHiddenForReuse] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UITableView *)self _existingFocusItemsInRect:?];
  v9 = [(UITableView *)self _focusPromiseItemsInRect:x, y, width, height];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  return v10;
}

- (id)_focusPromiseItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DF70] array];
  [(UITableView *)self _indexPathsForRowsInRect:1 usingPresentationValues:x, y, width, height];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [(UITableView *)self _cellForRowAtIndexPath:v12 usingPresentationValues:1];
        v14 = v13;
        if (!v13 || [v13 _isHiddenForReuse])
        {
          objc_initWeak(&location, self);
          [(UITableView *)self _tableViewRectForRowAtIndexPath:v12 canGuess:1];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = [_UIFocusPromiseItem alloc];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __40__UITableView__focusPromiseItemsInRect___block_invoke;
          v27[3] = &unk_1E7123810;
          objc_copyWeak(&v28, &location);
          v27[4] = v12;
          v24 = [(_UIFocusPromiseItem *)v23 initWithParentEnvironment:self frame:v27 fullfillmentHandler:v16, v18, v20, v22];
          [v8 addObject:v24];

          objc_destroyWeak(&v28);
          objc_destroyWeak(&location);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  return v8;
}

id __40__UITableView__focusPromiseItemsInRect___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _fulfillPromisedFocusRegionForIndexPath:*(a1 + 32)];

  return v3;
}

- (id)_fulfillPromisedFocusRegionForIndexPath:(id)a3
{
  v4 = a3;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UITableView *)self _rectForRowAtIndexPath:v4 usingPresentationValues:1];
  v22.origin.x = v13;
  v22.origin.y = v14;
  v22.size.width = v15;
  v22.size.height = v16;
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v21 = CGRectUnion(v20, v22);
  [(UITableView *)self _ensureViewsAreLoadedInRect:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
  v17 = [(UITableView *)self _cellForRowAtIndexPath:v4 usingPresentationValues:1];

  return v17;
}

- (id)_focusScrollBoundaryMetricsForItem:(id)a3
{
  v4 = a3;
  v5 = [[_UIFocusScrollBoundaryMetrics alloc] initWithFocusItem:v4 scrollView:self];
  if ([(_UIFocusScrollBoundaryMetrics *)v5 hasDisprovedAllRelevantAssumptions])
  {
    v6 = v5;
  }

  else
  {
    v7 = _UIFocusEnvironmentContainingView(v4);
    v8 = v7;
    v9 = 0;
    if (!v7 || v7 == self)
    {
      v10 = v7;
LABEL_11:
      v11 = 0;
    }

    else
    {
      while ((_IsKindOfUITableViewCell(v8) & 1) == 0)
      {
        if (_IsKindOfUITableViewHeaderFooterView(v8))
        {
          v10 = v8;
          v15 = [(UITableView *)self _sectionForHeaderView:v10];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL || (v15 = [(UITableView *)self _sectionForFooterView:v10], v15 != 0x7FFFFFFFFFFFFFFFLL))
          {
            v16 = v15;
            v17 = [(UITableView *)self numberOfSections]- 1;
            if (v16 >= 1)
            {
              [(_UIFocusScrollBoundaryMetrics *)v5 setIsMinY:0];
            }

            if (v16 < v17)
            {
              [(_UIFocusScrollBoundaryMetrics *)v5 setIsMaxY:0];
            }
          }

          v9 = 0;
          v11 = v10;
          goto LABEL_25;
        }

        v10 = [(UIView *)v8 superview];

        v9 = 0;
        if (!v10)
        {
          goto LABEL_11;
        }

        v8 = v10;
        v11 = 0;
        if (v10 == self)
        {
          goto LABEL_25;
        }
      }

      v10 = v8;
      v12 = [(UITableView *)self _indexPathForCell:v10 usingPresentationValues:1];
      if (v12)
      {
        v13 = [(UITableView *)self globalRowForRowAtIndexPath:v12];
        v14 = [(UITableView *)self _rowDataNumberOfRows];
        if (v13 >= 1)
        {
          [(_UIFocusScrollBoundaryMetrics *)v5 setIsMinY:0];
        }

        if (v13 < v14)
        {
          [(_UIFocusScrollBoundaryMetrics *)v5 setIsMaxY:0];
        }
      }

      v11 = 0;
      v9 = v10;
    }

LABEL_25:
    if ([(_UIFocusScrollBoundaryMetrics *)v5 hasDisprovedAllRelevantAssumptions])
    {
      v18 = v5;
    }

    else
    {
      v22.receiver = self;
      v22.super_class = UITableView;
      v19 = [(UIScrollView *)&v22 _focusScrollBoundaryMetricsForItem:v4];
      [(_UIFocusScrollBoundaryMetrics *)v5 consumeOtherMetrics:v19];
      v20 = v5;
    }
  }

  return v5;
}

- (CGPoint)_adjustFocusContentOffset:(CGPoint)a3 toShowFocusItemWithInfo:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [a4 item];
  v8 = _UIFocusEnvironmentContainingView(v7);

  if (v8 && v8 != self)
  {
    while ((_IsKindOfUITableViewCell(v8) & 1) == 0)
    {
      v9 = [(UIView *)v8 superview];

      if (v9)
      {
        v8 = v9;
        if (v9 != self)
        {
          continue;
        }
      }

      v8 = v9;
      goto LABEL_21;
    }

    v8 = v8;
    v10 = [(UITableView *)self _indexPathForCell:v8 usingPresentationValues:1];
    if (v10)
    {
      if (-[UITableView allowsHeaderViewsToFloat](self, "allowsHeaderViewsToFloat") || (v11 = 0.0, ![v10 row]))
      {
        v11 = -[UITableViewRowData heightForHeaderInSection:canGuess:](self->_rowData, [v10 section], 0);
      }

      [(UIView *)v8 frame];
      v12 = CGRectGetMinY(v21) - v11;
      if (y >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = y;
      }

      if (-[UITableView allowsFooterViewsToFloat](self, "allowsFooterViewsToFloat") || (v14 = [v10 row], v15 = 0.0, v14 == -[UITableViewRowData numberOfRowsInSection:](self->_rowData, objc_msgSend(v10, "section")) - 1))
      {
        v15 = -[UITableViewRowData heightForFooterInSection:canGuess:](self->_rowData, [v10 section], 0);
      }

      [(UIView *)v8 frame];
      v16 = v15 + CGRectGetMaxY(v22);
      [(UIView *)self bounds];
      if (v13 >= v16 - v17)
      {
        y = v13;
      }

      else
      {
        y = v16 - v17;
      }
    }
  }

LABEL_21:

  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)setRefreshControl:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITableView;
  [(UIScrollView *)&v6 setRefreshControl:a3];
  tableHeaderBackgroundView = self->_tableHeaderBackgroundView;
  if (tableHeaderBackgroundView)
  {
    v5 = [(UIScrollView *)self _refreshControl];
    [(UIView *)self insertSubview:tableHeaderBackgroundView belowSubview:v5];
  }
}

- (id)_delegateViewForHeaderInSection:(int64_t)a3
{
  p_tableFlags = &self->_tableFlags;
  v6 = *(&self->_tableFlags + 2);
  *(&self->_tableFlags + 2) = v6 & 0xFFFFFFFFFFFFF7FFLL;
  v7 = [(UITableView *)self _delegateProxy];
  v8 = [v7 tableView:self viewForHeaderInSection:a3];

  *(p_tableFlags + 2) = *(p_tableFlags + 2) & 0xFFFFFFFFFFFFF7FFLL | (((v6 >> 11) & 1) << 11);
  if (v8 && dyld_program_sdk_at_least() && [v8 translatesAutoresizingMaskIntoConstraints])
  {
    [v8 _setHostsLayoutEngine:1];
  }

  return v8;
}

- (id)_delegateViewForFooterInSection:(int64_t)a3
{
  p_tableFlags = &self->_tableFlags;
  v6 = *(&self->_tableFlags + 2);
  *(&self->_tableFlags + 2) = v6 | 0x800;
  v7 = [(UITableView *)self _delegateProxy];
  v8 = [v7 tableView:self viewForFooterInSection:a3];

  *(p_tableFlags + 2) = *(p_tableFlags + 2) & 0xFFFFFFFFFFFFF7FFLL | (((v6 >> 11) & 1) << 11);
  if (v8 && dyld_program_sdk_at_least() && [v8 translatesAutoresizingMaskIntoConstraints])
  {
    [v8 _setHostsLayoutEngine:1];
  }

  return v8;
}

- (BOOL)_delegateWantsHeaderForSection:(int64_t)a3
{
  sectionHeaderHeight = self->_sectionHeaderHeight;
  v6 = [(UITableView *)self _shouldShowHeadersAndFooters];
  if (!v6)
  {
    return v6;
  }

  if (*(&self->_tableFlags + 7))
  {
    v14 = [(UITableView *)self _delegateProxy];
    v15 = [v14 tableView:self wantsHeaderForSection:a3];

    LOBYTE(v6) = v15;
    return v6;
  }

  v7 = [(UITableView *)self _estimatesSectionHeaderHeights];
  if (sectionHeaderHeight != -1.0 || !v7)
  {
    if ((*(&self->_tableFlags + 4) & 2) == 0)
    {
      goto LABEL_19;
    }

    v9 = v7;
    v10 = [(UITableView *)self _delegateProxy];
    [v10 tableView:self heightForHeaderInSection:a3];
    sectionHeaderHeight = v11;

    if (sectionHeaderHeight != -1.0 || !v9)
    {
      goto LABEL_15;
    }
  }

  [(UITableView *)self _estimatedHeightForHeaderInSection:a3];
  v13 = v12;
  if (v12 != -1.0 || (sectionHeaderHeight = 2.0, (*(&self->_tableFlags + 4) & 0x40) != 0) && (dyld_program_sdk_at_least() & 1) == 0)
  {
    sectionHeaderHeight = v13;
  }

  if (self->_estimatedSectionHeaderHeight != -1.0)
  {
LABEL_15:
    if (sectionHeaderHeight != -1.0)
    {
      LOBYTE(v6) = sectionHeaderHeight > 0.0;
      return v6;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (sectionHeaderHeight > 0.0 && (*(&self->_tableFlags + 5) & 1) != 0)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

LABEL_21:

  LOBYTE(v6) = [(UITableView *)self _delegateWantsHeaderTitleForSection:a3];
  return v6;
}

- (BOOL)_delegateWantsHeaderTitleForSection:(int64_t)a3
{
  if ((*&self->_tableFlags & 8) == 0)
  {
    v3 = 0;
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = [(UITableView *)self _dataSourceProxy];
  v3 = [v6 tableView:self titleForHeaderInSection:a3];

  if (!v3 || ![v3 length])
  {
    goto LABEL_6;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (BOOL)_delegateWantsFooterForSection:(int64_t)a3
{
  sectionFooterHeight = self->_sectionFooterHeight;
  v6 = [(UITableView *)self _estimatesSectionFooterHeights];
  if (sectionFooterHeight != -1.0 || !v6)
  {
    if ((*(&self->_tableFlags + 4) & 8) == 0)
    {
      goto LABEL_18;
    }

    v8 = v6;
    v9 = [(UITableView *)self _delegateProxy];
    [v9 tableView:self heightForFooterInSection:a3];
    sectionFooterHeight = v10;

    if (sectionFooterHeight != -1.0 || !v8)
    {
      goto LABEL_16;
    }

    [(UITableView *)self _estimatedHeightForFooterInSection:a3];
    v12 = v11;
    if (v11 != -1.0)
    {
      goto LABEL_14;
    }

    p_tableFlags = &self->_tableFlags;
  }

  else
  {
    [(UITableView *)self _estimatedHeightForFooterInSection:a3];
    v12 = v14;
    if (v14 != -1.0)
    {
      goto LABEL_14;
    }

    p_tableFlags = &self->_tableFlags;
  }

  sectionFooterHeight = 2.0;
  if ((*(p_tableFlags + 4) & 0x80) != 0 && (dyld_program_sdk_at_least() & 1) == 0)
  {
LABEL_14:
    sectionFooterHeight = v12;
  }

  if (self->_estimatedSectionFooterHeight != -1.0)
  {
LABEL_16:
    if (sectionFooterHeight != -1.0)
    {
      return sectionFooterHeight > 0.0;
    }

    goto LABEL_20;
  }

LABEL_18:
  if (sectionFooterHeight > 0.0 && (*(&self->_tableFlags + 5) & 2) != 0)
  {
    return 1;
  }

LABEL_20:

  return [(UITableView *)self _delegateWantsFooterTitleForSection:a3];
}

- (BOOL)_delegateWantsFooterTitleForSection:(int64_t)a3
{
  if ((*&self->_tableFlags & 0x10) == 0)
  {
    v3 = 0;
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = [(UITableView *)self _dataSourceProxy];
  v3 = [v6 tableView:self titleForFooterInSection:a3];

  if (!v3 || ![v3 length])
  {
    goto LABEL_6;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (void)_deselectAllRowsAnimated:(BOOL)a3 notifyDelegate:(BOOL)a4 excludingMultiSelectRows:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(NSMutableArray *)self->_selectedIndexPaths copy];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v20 = v5;
  v21 = 0;
  v12 = *v23;
  do
  {
    v13 = 0;
    do
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v22 + 1) + 8 * v13);
      if (v5 && [(UITableView *)self _isRowMultiSelect:v14])
      {
        v15 = v14;
        goto LABEL_13;
      }

      if (!v6 || (*(&self->_tableFlags + 5) & 0x80) == 0)
      {
        v15 = v14;
LABEL_12:
        [(UITableView *)self _deselectRowAtIndexPath:v15 animated:v7 notifyDelegate:v6];
        v21 = 1;
        goto LABEL_13;
      }

      v16 = v9;
      v17 = v7;
      v18 = [(UITableView *)self _delegateProxy];
      v15 = [v18 tableView:self willDeselectRowAtIndexPath:v14];

      if (!v15)
      {
        v7 = v17;
LABEL_20:
        v9 = v16;
        v5 = v20;
        goto LABEL_13;
      }

      v7 = v17;
      if ([v15 row] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v9 = v16;
      v5 = v20;
      if ([v15 section] != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }

LABEL_13:

      ++v13;
    }

    while (v11 != v13);
    v19 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v11 = v19;
  }

  while (v19);

  if (v6 & v21)
  {
    [(UITableView *)self _selectedIndexPathsDidChange];
  }
}

- (void)_deselectRowAtIndexPath:(id)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (![(NSMutableArray *)self->_selectedIndexPaths containsObject:v8])
  {
    v17 = v8;
    goto LABEL_14;
  }

  if (!v5 || (*(&self->_tableFlags + 5) & 0x80) == 0)
  {
    v17 = v8;
LABEL_5:
    v9 = [(UITableView *)self _existingCellForRowAtIndexPath:v17];
    v10 = v9;
    if (v9)
    {
      [v9 setSelected:0 animated:v6];
    }

    else
    {
      [(UITableView *)self _showSeparatorForRowBeforeIndexPath:v17];
    }

    [(NSMutableArray *)self->_selectedIndexPaths removeObject:v17];
    if (v5)
    {
      if ((*(&self->_tableFlags + 6) & 2) != 0)
      {
        v11 = [(UITableView *)self _delegateProxy];
        [v11 tableView:self didDeselectRowAtIndexPath:v17];
      }

      [(UITableView *)self _selectedIndexPathsDidChange];
    }

    goto LABEL_14;
  }

  v16 = [(UITableView *)self _delegateProxy];
  v17 = [v16 tableView:self willDeselectRowAtIndexPath:v8];

  if (!v17)
  {
    v17 = 0;
    goto LABEL_14;
  }

  if ([v17 row] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v17, "section") != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

LABEL_14:
  v12 = [(UIView *)self traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 3)
  {
    [(UIView *)self setNeedsFocusUpdate];
  }

  v14 = [(UITableView *)self _focusedCellIndexPath];
  v15 = [v14 isEqual:v17];

  if (v15)
  {
    [(UITableView *)self _updateSelectionIsKey];
  }
}

- (void)_stopAutoscrollTimer
{
  reorderingSupport = self->_reorderingSupport;
  if (reorderingSupport)
  {
    [(NSTimer *)reorderingSupport->_autoscrollTimer invalidate];
    v4 = self->_reorderingSupport;
    autoscrollTimer = v4->_autoscrollTimer;
    v4->_autoscrollTimer = 0;
  }
}

- (void)_animateTableViewContentToNewLayoutWithDuration:(double)a3 reorderingCell:(id)a4 additionalAnimations:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(UITableView *)self _applyCoalescedContentSizeUpdates];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__UITableView__animateTableViewContentToNewLayoutWithDuration_reorderingCell_additionalAnimations___block_invoke;
  v12[3] = &unk_1E70FCE28;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(UIView *)a3 _animateCollectionTableAnimationWithDuration:UIView delay:4 options:v12 animations:0 completion:?];
}

uint64_t __99__UITableView__animateTableViewContentToNewLayoutWithDuration_reorderingCell_additionalAnimations___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 2256);
  if (v3 < *(v2 + 2264) + v3)
  {
    v4 = 0;
    do
    {
      v5 = [(UITableViewRowData *)*(v2 + 2160) indexPathForRowAtGlobalRow:v3];
      v6 = [*(a1 + 32) _existingCellForRowAtIndexPath:v5];
      if (v6)
      {
        v7 = v4 + 1;
      }

      else
      {
        v7 = v4;
      }

      if (v6)
      {
        v8 = v6;
        if (v6 != *(a1 + 40))
        {
          v9 = -[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](*(*(a1 + 32) + 2160), [v5 row], objc_msgSend(v5, "section"), 0);
          v11 = v10;
          v13 = v12;
          v15 = v14;
          [v8 frame];
          v26.origin.x = v16;
          v26.origin.y = v17;
          v26.size.width = v18;
          v26.size.height = v19;
          v25.origin.x = v9;
          v25.origin.y = v11;
          v25.size.width = v13;
          v25.size.height = v15;
          if (!CGRectEqualToRect(v25, v26) && v8 != *(a1 + 40))
          {
            [v8 setFrame:{v9, v11, v13, v15}];
            [v8 _setNeedsHeightCalculation:0];
          }

          [v8 setSectionLocation:-[UITableViewRowData sectionLocationForRow:inSection:](*(*(a1 + 32) + 2160) animated:{objc_msgSend(v5, "row"), objc_msgSend(v5, "section")), 1}];
          [*(a1 + 32) _updateDragStateForCell:v8 atIndexPath:v5];
        }
      }

      else
      {
        v8 = [*(a1 + 32) _createPreparedCellForGlobalRow:v3 willDisplay:1];
        v20 = [*(*(a1 + 32) + 2272) count];
        v21 = *(*(a1 + 32) + 2272);
        if (v4 >= v20)
        {
          [v21 addObject:v8];
        }

        else
        {
          [v21 insertObject:v8 atIndex:v4];
        }
      }

      ++v3;
      v2 = *(a1 + 32);
      v4 = v7;
    }

    while (v3 < *(v2 + 2264) + *(v2 + 2256));
  }

  [v2 _updateTableHeadersAndFootersNow:1];
  [*(a1 + 32) _updateVisibleHeadersAndFootersNow:1];
  result = *(a1 + 48);
  if (result)
  {
    v23 = *(result + 16);

    return v23();
  }

  return result;
}

- (id)_gapIndexPath
{
  rowData = self->_rowData;
  if (rowData)
  {
    return rowData->_gapIndexPath;
  }

  else
  {
    return 0;
  }
}

- (id)_draggedIndexPath
{
  rowData = self->_rowData;
  if (rowData)
  {
    return rowData->_draggedIndexPath;
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasUncommittedUpdates
{
  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    v4 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController hasShadowUpdates];
  }

  else
  {
    v4 = 0;
  }

  rowData = self->_rowData;
  if (rowData && (v6 = rowData->_draggedIndexPath) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = self->_rowData;
    if (v8)
    {
      v8 = v8->_reorderedIndexPath;
    }

    v9 = v8;
    v7 = v9 != 0;

    v6 = 0;
  }

  v10 = self->_rowData;
  if (v10)
  {
    v10 = v10->_gapIndexPath;
  }

  v11 = v10;

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v7;
  }

  return v4 || v12;
}

- (void)setDragInteractionEnabled:(BOOL)dragInteractionEnabled
{
  v3 = 0x40000000;
  if (dragInteractionEnabled)
  {
    v3 = 3221225472;
  }

  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFF3FFFFFFFLL | v3;
  [(UITableView *)self _updateDragControllerEnabledState];
}

- (BOOL)dragInteractionEnabled
{
  v2 = *(&self->_tableFlags + 3);
  if ((v2 & 0x40000000) != 0)
  {
    return (v2 >> 31) & 1;
  }

  else
  {
    LOBYTE(v3) = +[_UITableViewDragController isEnabledByDefault];
  }

  return v3;
}

- (void)_updateDragControllerEnabledState
{
  [(_UITableViewDragController *)self->_dragController setForceEnabledForReordering:[(UITableView *)self _dragAndDropUsedForReordering]];
  v3 = *(&self->_tableFlags + 3);
  v4 = v3 << 33;
  v5 = v3 < 0;
  v6 = 1;
  if (!v5)
  {
    v6 = 2;
  }

  dragController = self->_dragController;

  [(_UITableViewDragController *)dragController setClientEnabledState:v6 & (v4 >> 63)];
}

- (BOOL)hasActiveDrag
{
  dragController = self->_dragController;
  if (dragController)
  {
    LOBYTE(dragController) = [(_UITableViewDragController *)dragController isActive];
  }

  return dragController;
}

- (BOOL)hasActiveDrop
{
  dropController = self->_dropController;
  if (dropController)
  {
    LOBYTE(dropController) = [(_UITableViewDropController *)dropController isActive];
  }

  return dropController;
}

- (BOOL)_isReordering
{
  if ([(UITableView *)self hasActiveDrag])
  {
    v3 = [(UITableView *)self hasActiveDrop];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(UITableView *)self _reorderingIndexPath];

  return v4 || v3;
}

- (void)setDragDelegate:(id)dragDelegate
{
  obj = dragDelegate;
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dragDelegate, obj);
    _UIValidateAccountBasedDelegateRespondsToSelector(obj, sel__tableView_dataOwnerForDragSession_atIndexPath_);
    [(UITableView *)self _createOrUninstallDragAndDropControllersIfNeeded];
  }
}

- (id)_dragDelegateActual
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);

  return WeakRetained;
}

- (id)_dragDelegateProxy
{
  if ([(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController hasShadowUpdates])
  {
    WeakRetained = self->_shadowUpdatesController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  }

  return WeakRetained;
}

- (void)setDragSourceDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragSourceDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dragSourceDelegate, obj);
    _UIValidateAccountBasedDelegateRespondsToSelector(obj, sel___tableView_dataOwnerForDragSession_atIndexPath_);
    [(UITableView *)self _createOrUninstallDragAndDropControllersIfNeeded];
  }
}

- (id)_dragSourceDelegateActual
{
  WeakRetained = objc_loadWeakRetained(&self->_dragSourceDelegate);

  return WeakRetained;
}

- (id)_dragSourceDelegateProxy
{
  if ([(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController hasShadowUpdates])
  {
    WeakRetained = self->_shadowUpdatesController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dragSourceDelegate);
  }

  return WeakRetained;
}

- (BOOL)_canBeginDragAtPoint:(CGPoint)a3 indexPath:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  if (WeakRetained)
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_dragSourceDelegate);
    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(UITableView *)self _dragAndDropUsedForReordering];
    }
  }

  return v6;
}

- (int64_t)_dataOwnerForDragSession:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!_UIShouldEnforceOpenInRulesInAccountBasedApp())
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained(&self->_dragDelegate), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) == 0))
  {
    v14 = objc_loadWeakRetained(&self->_dragSourceDelegate);
    if (v14)
    {
      v15 = v14;
      v16 = objc_loadWeakRetained(&self->_dragSourceDelegate);
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v12 = [(UITableView *)self _dragSourceDelegateProxy];
        v13 = [v12 __tableView:self dataOwnerForDragSession:v6 atIndexPath:v7];
        goto LABEL_8;
      }
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v12 = [(UITableView *)self _dragDelegateProxy];
  v13 = [v12 _tableView:self dataOwnerForDragSession:v6 atIndexPath:v7];
LABEL_8:
  v18 = v13;

LABEL_10:
  return v18;
}

- (id)_rowsToIncludeInDragSession:(id)a3 atIndexPath:(id)a4 withDataOwner:(int64_t)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DFA0] orderedSet];
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = [(NSMutableArray *)self->_selectedIndexPaths containsObject:v9];

    if (!v13)
    {
LABEL_17:
      [v10 addObject:v9];
      goto LABEL_20;
    }
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_dragSourceDelegate);
    if (!v14)
    {
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(NSMutableArray *)self->_selectedIndexPaths containsObject:v9];

    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v17 = [(NSMutableArray *)self->_selectedIndexPaths sortedArrayUsingSelector:sel_compare_];
  if (_UIShouldEnforceOpenInRulesInAccountBasedApp())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v17;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          if ([(UITableView *)self _dataOwnerForDragSession:v8 atIndexPath:v23]== a5)
          {
            [v10 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    v17 = v25;
  }

  else
  {
    [v10 addObjectsFromArray:v17];
  }

LABEL_20:

  return v10;
}

- (id)_dragPreviewParametersForIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[UITableView _dragDelegateProxy](self, "_dragDelegateProxy"), v7 = objc_claimAutoreleasedReturnValue(), [v7 tableView:self dragPreviewParametersForRowAtIndexPath:v4], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = [(UITableView *)self _cellForRowAtIndexPath:v4 usingPresentationValues:1];
    v10 = [v9 _visiblePathForBackgroundConfiguration];
    if (v10)
    {
      v8 = objc_alloc_init(UIDragPreviewParameters);
      [(UIPreviewParameters *)v8 setVisiblePath:v10];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_prepareToLiftRowsAtIndexPaths:(id)a3
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
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(UITableView *)self unhighlightRowAtIndexPath:v9 animated:0];
        v10 = [(UITableView *)self _existingCellForRowAtIndexPath:v9];
        [v10 layoutIfNeeded];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_animateLiftOfRowsAtIndexPaths:(id)a3
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
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(UITableView *)self _cellForRowAtIndexPath:*(*(&v11 + 1) + 8 * v8) usingPresentationValues:1];
        v10 = v9;
        if (v9)
        {
          [v9 _setSeparatorHidden:1];
          [v10 _setDragState:1];
          [v10 layoutIfNeeded];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_animateDragCancelForCell:(id)a3
{
  v3 = a3;
  [v3 _setDragState:0];
  [v3 setAlpha:1.0];
}

- (id)_itemsForBeginningDragSession:(id)a3 atIndexPath:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);

  if (WeakRetained)
  {
    v9 = [(UITableView *)self _dragDelegateProxy];
    v10 = [v9 tableView:self itemsForBeginningDragSession:v6 atIndexPath:v7];
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_dragSourceDelegate);
    if (!v12 || (v13 = v12, v14 = objc_loadWeakRetained(&self->_dragSourceDelegate), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) == 0))
    {
      v11 = MEMORY[0x1E695E0F0];
      goto LABEL_8;
    }

    v9 = [(UITableView *)self _dragSourceDelegateProxy];
    v10 = [v9 _tableView:self itemsForBeginningDragSession:v6 atIndexPath:v7];
  }

  v11 = v10;

LABEL_8:
  if (![v11 count] && -[UITableView _canMoveRowAtIndexPath:](self, "_canMoveRowAtIndexPath:", v7))
  {
    v16 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v17 = [[UIDragItem alloc] initWithItemProvider:v16];
    v20[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

    v11 = v18;
  }

  return v11;
}

- (id)_itemsForAddingToDragSession:(id)a3 atIndexPath:(id)a4 point:(CGPoint)a5 withDataOwner:(int64_t)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a3;
  v12 = a4;
  if (+[_UITableViewDragController isEnabledByDefault]|| [(_UITableViewDragController *)self->_dragController clientEnabledState]== 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
    if (WeakRetained && (v14 = WeakRetained, v15 = objc_loadWeakRetained(&self->_dragDelegate), v16 = objc_opt_respondsToSelector(), v15, v14, (v16 & 1) != 0))
    {
      if (!_UIShouldEnforceOpenInRulesInAccountBasedApp() || (v17 = objc_loadWeakRetained(&self->_dragDelegate), v18 = objc_opt_respondsToSelector(), v17, (v18 & 1) == 0) || (-[UITableView _dragDelegateProxy](self, "_dragDelegateProxy"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 _tableView:self dataOwnerForDragSession:v11 atIndexPath:v12], v19, v20 == a6))
      {
        v21 = [(UITableView *)self _dragDelegateProxy];
        v22 = [v21 tableView:self itemsForAddingToDragSession:v11 atIndexPath:v12 point:{x, y}];
LABEL_15:
        v31 = v22;

        goto LABEL_17;
      }
    }

    else
    {
      v23 = objc_loadWeakRetained(&self->_dragSourceDelegate);
      if (v23)
      {
        v24 = v23;
        v25 = objc_loadWeakRetained(&self->_dragSourceDelegate);
        v26 = objc_opt_respondsToSelector();

        if (v26)
        {
          if (!_UIShouldEnforceOpenInRulesInAccountBasedApp() || (v27 = objc_loadWeakRetained(&self->_dragSourceDelegate), v28 = objc_opt_respondsToSelector(), v27, (v28 & 1) == 0) || (-[UITableView _dragSourceDelegateProxy](self, "_dragSourceDelegateProxy"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 __tableView:self dataOwnerForDragSession:v11 atIndexPath:v12], v29, v30 == a6))
          {
            v21 = [(UITableView *)self _dragSourceDelegateProxy];
            v22 = [v21 _tableView:self itemsForAddingToDragSession:v11 atIndexPath:v12 point:{x, y}];
            goto LABEL_15;
          }
        }
      }
    }
  }

  v31 = MEMORY[0x1E695E0F0];
LABEL_17:

  return v31;
}

- (void)_dragSessionWillBegin:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_dragDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(UITableView *)self _dragDelegateProxy];
      [v8 tableView:self dragSessionWillBegin:v13];
LABEL_7:

      goto LABEL_8;
    }
  }

  v9 = objc_loadWeakRetained(&self->_dragSourceDelegate);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_dragSourceDelegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v8 = [(UITableView *)self _dragSourceDelegateProxy];
      [v8 _tableView:self dragSessionWillBegin:v13];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_updateAppearanceOfVisibleRowsForDragState
{
  v15 = *MEMORY[0x1E69E9840];
  [(UITableView *)self _updateTopSeparatorForVisibleCells];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(UITableView *)self _visibleCellsUsingPresentationValues:1, 0];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(UITableView *)self _indexPathForCell:v8 usingPresentationValues:1];
        [(UITableView *)self _updateDragStateForCell:v8 atIndexPath:v9];
        [(UITableView *)self _updateSeparatorStateForCell:v8 atIndexPath:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_dragSessionDidEnd:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_dragDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(UITableView *)self _dragDelegateProxy];
      [v8 tableView:self dragSessionDidEnd:v13];
LABEL_7:

      goto LABEL_8;
    }
  }

  v9 = objc_loadWeakRetained(&self->_dragSourceDelegate);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_dragSourceDelegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v8 = [(UITableView *)self _dragSourceDelegateProxy];
      [v8 _tableView:self dragSessionDidEnd:v13];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (BOOL)_dragSessionAllowsMoveOperation:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UITableView *)self _dragDelegateProxy];
    v8 = [v7 tableView:self dragSessionAllowsMoveOperation:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_dragSessionIsRestrictedToDraggingApplication:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UITableView *)self _dragDelegateProxy];
    v8 = [v7 tableView:self dragSessionIsRestrictedToDraggingApplication:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_dragSessionPropertiesForSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[UITableView _dragDelegateProxy](self, "_dragDelegateProxy"), v7 = objc_claimAutoreleasedReturnValue(), [v7 _tableView:self dragSessionPropertiesForSession:v4], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = objc_loadWeakRetained(&self->_dragDelegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v8 = objc_opt_new();
      v11 = [(UITableView *)self _dragDelegateProxy];
      [v8 set_supportsSystemDrag:{objc_msgSend(v11, "_tableView:dragSessionSupportsSystemDrag:", self, v4)}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)setDropDelegate:(id)dropDelegate
{
  obj = dropDelegate;
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dropDelegate, obj);
    _UIValidateAccountBasedDelegateRespondsToSelector(obj, sel__tableView_dataOwnerForDropSession_withDestinationIndexPath_);
    [(UITableView *)self _createOrUninstallDragAndDropControllersIfNeeded];
  }
}

- (id)_dropDelegateActual
{
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);

  return WeakRetained;
}

- (id)_dropDelegateProxy
{
  if ([(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController hasShadowUpdates])
  {
    WeakRetained = self->_shadowUpdatesController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);
  }

  return WeakRetained;
}

- (void)setDragDestinationDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragDestinationDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dragDestinationDelegate, obj);
    _UIValidateAccountBasedDelegateRespondsToSelector(obj, sel___tableView_dataOwnerForDropSession_withDestinationIndexPath_);
    [(UITableView *)self _createOrUninstallDragAndDropControllersIfNeeded];
  }
}

- (id)_dragDestinationDelegateActual
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDestinationDelegate);

  return WeakRetained;
}

- (id)_dragDestinationDelegateProxy
{
  if ([(_UITableViewShadowUpdatesController *)self->_shadowUpdatesController hasShadowUpdates])
  {
    WeakRetained = self->_shadowUpdatesController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dragDestinationDelegate);
  }

  return WeakRetained;
}

- (BOOL)_shouldAllowInternalDrop
{
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);

  if (WeakRetained)
  {
    return 1;
  }

  v5 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
  if (v5)
  {
    v6 = v5;
    v7 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      return 1;
    }
  }

  v9 = [(_UITableViewDragController *)self->_dragController draggedIndexPath];
  if (v9)
  {
    v4 = [(UITableView *)self _canMoveRowAtIndexPath:v9];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_canHandleDropSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);
  if (WeakRetained)
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
      v6 = objc_opt_respondsToSelector();
    }

    else
    {
      v6 = 0;
    }
  }

  [(_UITableViewDropController *)self->_dropController setCanOnlyHandleReordering:0];
  if (v6)
  {
    v9 = objc_loadWeakRetained(&self->_dropDelegate);
    if (v9 && (v10 = v9, v11 = objc_loadWeakRetained(&self->_dropDelegate), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
    {
      v13 = [(UITableView *)self _dropDelegateProxy];
      v14 = [v13 tableView:self canHandleDropSession:v4];
    }

    else
    {
      v15 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
      if (!v15)
      {
        goto LABEL_15;
      }

      v16 = v15;
      v17 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      v13 = [(UITableView *)self _dragDestinationDelegateProxy];
      v14 = [v13 _tableView:self canHandleDropSession:v4];
    }

    v19 = v14;

    if (v19)
    {
LABEL_15:
      LOBYTE(v20) = 1;
      goto LABEL_19;
    }
  }

  v21 = [(_UITableViewDragController *)self->_dragController draggedIndexPath];
  v20 = [(UITableView *)self _canMoveRowAtIndexPath:v21];
  if (v20)
  {
    [(_UITableViewDropController *)self->_dropController setCanOnlyHandleReordering:1];
  }

LABEL_19:
  return v20;
}

- (void)_dropEntered:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_dropDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(UITableView *)self _dropDelegateProxy];
      [v8 tableView:self dropSessionDidEnter:v13];
LABEL_7:

      goto LABEL_8;
    }
  }

  v9 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v8 = [(UITableView *)self _dragDestinationDelegateProxy];
      [v8 _tableView:self dropSessionDidEnter:v13];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)_targetIndexPathForDrop:(id)a3
{
  [a3 locationInView:self];
  rowData = self->_rowData;

  return [(UITableViewRowData *)rowData targetIndexPathForPoint:v4 adjustedForGap:v5];
}

- (int64_t)_dataOwnerForDropSession:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!_UIShouldEnforceOpenInRulesInAccountBasedApp())
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);
  if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained(&self->_dropDelegate), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) == 0))
  {
    v14 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
    if (v14)
    {
      v15 = v14;
      v16 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v12 = [(UITableView *)self _dragDestinationDelegateProxy];
        v13 = [v12 __tableView:self dataOwnerForDropSession:v6 withDestinationIndexPath:v7];
        goto LABEL_8;
      }
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v12 = [(UITableView *)self _dropDelegateProxy];
  v13 = [v12 _tableView:self dataOwnerForDropSession:v6 withDestinationIndexPath:v7];
LABEL_8:
  v18 = v13;

LABEL_10:
  return v18;
}

- (id)_updatedDropProposalForIndexPath:(id)a3 dropSession:(id)a4 withDefaultProposal:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 operation];
  v12 = [v10 intent];
  v13 = [(_UITableViewDragController *)self->_dragController indexPaths];
  v14 = v13;
  if (v8 && [v13 count])
  {
    v15 = [v14 containsObject:v8];
  }

  else
  {
    v15 = 0;
  }

  if ([v14 count] == 1)
  {
    v16 = *(&self->_tableFlags + 3);
    if ((v15 & ((v16 & 4) >> 2)) == 1 && v11 == 3)
    {
      rowData = self->_rowData;
      if (rowData)
      {
        rowData = rowData->_draggedIndexPath;
      }

      v21 = rowData;
      v18 = v21 == 0;

      v19 = 1;
    }

    else
    {
      v18 = 0;
      v19 = (v16 >> 2) & 1;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v67 = v10;
  if (!v15 || v18)
  {
    v64 = v19;
    WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);
    if (WeakRetained)
    {
      v26 = 1;
    }

    else
    {
      v27 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
      if (v27)
      {
        v62 = v18;
        v28 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
        if (objc_opt_respondsToSelector())
        {
          v26 = 1;
        }

        else
        {
          v61 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
          v26 = objc_opt_respondsToSelector();
        }

        v18 = v62;
      }

      else
      {
        v26 = 0;
      }

      v10 = v67;
    }

    if ([v14 count] >= 2 && (v26 & 1) == 0)
    {
      v11 = 1;
LABEL_63:
      if (v12 == 1 && [v14 count] > 1)
      {
        v11 = 1;
      }

      goto LABEL_66;
    }

    v29 = v8;
    if (v8)
    {
      v30 = v11 >= 2;
    }

    else
    {
      v30 = 0;
    }

    v31 = !v30;
    v63 = v18;
    if (!(v31 & 1 | ((v64 & 1) == 0) | v18))
    {
      v32 = [(UITableView *)self _resolvedDropProposalAfterAdditionalHitTestingForIndexPath:v29 dropSession:v9 dropOperation:v11 dropIntent:1 dropProposal:v10];
      v33 = [v32 _adjustedTargetIndexPath];

      v29 = v33;
    }

    v34 = objc_loadWeakRetained(&self->_dropDelegate);
    if (v34 && (v35 = v34, v36 = objc_loadWeakRetained(&self->_dropDelegate), v37 = objc_opt_respondsToSelector(), v36, v35, (v37 & 1) != 0))
    {
      v38 = [(UITableView *)self _dropDelegateProxy];
      v39 = [v38 tableView:self dropSessionDidUpdate:v9 withDestinationIndexPath:v29];
    }

    else
    {
      v40 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
      if (!v40 || (v41 = v40, v42 = objc_loadWeakRetained(&self->_dragDestinationDelegate), v43 = objc_opt_respondsToSelector(), v42, v41, (v43 & 1) == 0))
      {
        v45 = [v14 count];
        if (v64)
        {
          v46 = 1;
        }

        else
        {
          v46 = v12;
        }

        if (v64)
        {
          v47 = v11;
        }

        else
        {
          v47 = 0;
        }

        if (v45)
        {
          v12 = v46;
          v11 = v47;
        }

        v10 = v67;
LABEL_62:

        v18 = v63;
        if (!v11)
        {
          goto LABEL_66;
        }

        goto LABEL_63;
      }

      v38 = [(UITableView *)self _dragDestinationDelegateProxy];
      v39 = [v38 _tableView:self dropSessionDidUpdate:v9 withDestinationIndexPath:v29];
    }

    v44 = v39;

    v10 = v67;
    if (v44)
    {
      v10 = v44;

      v11 = [v10 operation];
      v12 = [v10 intent];
    }

    goto LABEL_62;
  }

  v22 = self->_rowData;
  v23 = v18;
  if (v22)
  {
    v22 = v22->_draggedIndexPath;
  }

  v24 = v22;

  if (v24)
  {
    v12 = 1;
  }

  else
  {
    v11 = 1;
  }

  v18 = v23;
  if (v11)
  {
    goto LABEL_63;
  }

LABEL_66:
  v48 = v8;
  v49 = v48;
  if (v8)
  {
    v50 = v11 == 3;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50 && v18;
  if (v51 && v12 == 1)
  {
    v11 = 3;
    v52 = 1;
LABEL_75:
    v53 = v48;
    goto LABEL_79;
  }

  v52 = 0;
  if (!v8 || v11 < 2)
  {
    goto LABEL_75;
  }

  v54 = [(UITableView *)self _resolvedDropProposalAfterAdditionalHitTestingForIndexPath:v48 dropSession:v9 dropOperation:v11 dropIntent:v12 dropProposal:v10];
  v11 = [v54 operation];
  v52 = [v54 intent];
  v53 = [v54 _adjustedTargetIndexPath];

LABEL_79:
  v55 = [(_UITableViewDragController *)self->_dragController draggedIndexPath];
  v56 = v55;
  if (v55)
  {
    if (!v53)
    {
      v53 = v55;
      v52 = 1;
      goto LABEL_85;
    }

    v57 = [(UITableView *)self _retargetedReorderIndexPathForInitialIndexPath:v55 proposedIndexPath:v53];

    v53 = v57;
  }

  if (v52 == 3)
  {
    v58 = [MEMORY[0x1E696AAA8] currentHandler];
    v66 = _UITableViewStringFromDropIntent(3uLL);
    [v58 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:14949 description:{@"UITableView internal inconsistency: %@ must be resolved to a concrete value", v66}];
  }

LABEL_85:
  v59 = [v10 _updatedDropProposalWithDropOperation:v11 dropIntent:v52 adjustedTargetIndexPath:v53];

  return v59;
}

- (id)_resolvedDropProposalAfterAdditionalHitTestingForIndexPath:(id)a3 dropSession:(id)a4 dropOperation:(unint64_t)a5 dropIntent:(int64_t)a6 dropProposal:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = v13;
  v17 = [v16 row];
  if (v17 >= -[UITableViewRowData numberOfRowsInSection:](self->_rowData, [v16 section]))
  {
    if (a6 == 3)
    {
      a6 = 1;
    }

    goto LABEL_13;
  }

  v18 = 0.2;
  if (a6 != 3)
  {
    v18 = 0.0;
  }

  if (a6 == 1)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= 0.0)
  {
    v23 = v16;
    if (a6 != 3)
    {
      goto LABEL_32;
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = _UITableViewStringFromDropIntent(3uLL);
    [v24 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15015 description:{@"UITableView internal inconsistency: %@ must be resolved to a concrete value", v25}];

LABEL_13:
    v23 = v16;
    goto LABEL_32;
  }

  v20 = [(_UITableViewDragController *)self->_dragController draggedIndexPath];
  if (v20 && (v21 = [v16 section], v21 == objc_msgSend(v20, "section")))
  {
    v22 = [v16 row];
    v43 = v22 > [v20 row];
  }

  else
  {
    v43 = 0;
  }

  rowData = self->_rowData;
  v27 = [v16 row];
  v28 = [v16 section];
  if (rowData)
  {
    v29 = [(UITableViewRowData *)rowData heightForRow:v27 inSection:v28 canGuess:1 adjustForReorderedRow:1];
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v19 * v29;
  [v14 locationInView:self];
  v33 = [(UITableViewRowData *)self->_rowData dropLocationForPoint:v16 atIndexPath:v31 withInsets:v32, v30, 0.0, v30, 0.0];
  if (v33 != 1)
  {
    if (!v33)
    {
      if (a6 == 3)
      {
        a6 = 2;
      }

      goto LABEL_30;
    }

    if (v43)
    {
      v39 = MEMORY[0x1E696AC88];
      v40 = [v16 row] - 1;
      v36 = [v16 section];
      v38 = v39;
      v37 = v40;
      goto LABEL_28;
    }

LABEL_29:
    a6 = 1;
LABEL_30:
    v23 = v16;
    goto LABEL_31;
  }

  if (v43)
  {
    goto LABEL_29;
  }

  v34 = MEMORY[0x1E696AC88];
  v35 = [v16 row];
  v36 = [v16 section];
  v37 = v35 + 1;
  v38 = v34;
LABEL_28:
  v23 = [v38 indexPathForRow:v37 inSection:v36];

  a6 = 1;
LABEL_31:

LABEL_32:
  v41 = [v15 _updatedDropProposalWithDropOperation:a5 dropIntent:a6 adjustedTargetIndexPath:v23];

  return v41;
}

- (void)_updateDropTargetAppearanceWithTargetIndexPath:(id)a3 dropProposal:(id)a4 dropSession:(id)a5
{
  v22 = a3;
  v7 = [a4 _dropAction];
  v8 = [(_UITableViewDragController *)self->_dragController draggedCell];
  rowData = self->_rowData;
  if (rowData)
  {
    rowData = rowData->_gapIndexPath;
  }

  v10 = rowData;
  v11 = v10 != 0;

  v12 = [(_UITableViewDragController *)self->_dragController indexPaths];
  v13 = [v12 count];

  if (v13 > 1)
  {
    v14 = self->_rowData;
    if (v14)
    {
      [(UITableViewRowData *)self->_rowData removeGap];
      v14->_gapRowHeight = 0.0;
    }

    [(UITableView *)self _endDragAndDropReordering];
    if (v7 == 3)
    {
      goto LABEL_7;
    }

    v11 = 0;
    v15 = 0;
    goto LABEL_21;
  }

  if (v22 && !v7)
  {
    v15 = 1;
LABEL_21:
    v17 = [(_UITableViewDragController *)self->_dragController draggedIndexPath];
    if (v17)
    {
      v18 = v15 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      [(UITableView *)self _beginDragAndDropReorderingOfIndexPath:v17 cell:v8];
    }

    if ((v11 | v15 ^ 1))
    {
      if (v15 & 1 | !v11)
      {
        if ((v11 & v15) == 1 && v7 != 1)
        {
          [(UITableViewRowData *)self->_rowData moveDropTargetGapToIndexPath:v22];
        }
      }

      else
      {
        v19 = self->_rowData;
        if (v19)
        {
          [(UITableViewRowData *)self->_rowData removeGap];
          v19->_gapRowHeight = 0.0;
        }
      }
    }

    else
    {
      [(UITableViewRowData *)self->_rowData addDropTargetGapAtIndexPath:v22];
    }

    goto LABEL_35;
  }

  if (v10)
  {
    v16 = v7 == 1;
  }

  else
  {
    v16 = 0;
  }

  v15 = v16;
  if (v7 != 3)
  {
    goto LABEL_21;
  }

  if (!v10)
  {
LABEL_7:
    [(UITableView *)self _endDragAndDropReordering];
  }

LABEL_35:
  [(UITableView *)self _updateTopSeparatorForVisibleCells];
  if (v7 != 1 || v22 == 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = v22;
  }

  [(UITableView *)self _updateDropStateForVisibleCellsForActiveDrop:v7 != 3 dropTargetIndexPath:v21];
  [(UITableView *)self _animateTableViewContentToNewLayoutWithDuration:v8 reorderingCell:0 additionalAnimations:0.3];
}

- (void)_removeDropTargetAndResetAppearance
{
  rowData = self->_rowData;
  if (rowData)
  {
    [(UITableViewRowData *)self->_rowData removeGap];
    rowData->_gapRowHeight = 0.0;
  }

  [(UITableView *)self _endDragAndDropReordering];
  [(UITableView *)self _updateTopSeparatorForVisibleCells];
  [(UITableView *)self _updateDropStateForVisibleCellsForActiveDrop:0 dropTargetIndexPath:0];

  [(UITableView *)self _animateTableViewContentToNewLayout];
}

- (void)_beginDragAndDropReorderingOfIndexPath:(id)a3 cell:(id)a4
{
  rowData = self->_rowData;
  v8 = a4;
  v7 = a3;
  [(UITableViewRowData *)rowData setDraggedIndexPath:v7];
  [(UITableView *)self _updateDragStateForCell:v8 atIndexPath:v7];

  [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa setReorderingCell:v8];
}

- (void)_endDragAndDropReordering
{
  [(UITableViewRowData *)self->_rowData setDraggedIndexPath:?];
  subviewManager = self->_subviewManager;

  [(_UITableViewSubviewManager *)&subviewManager->super.isa setReorderingCell:?];
}

- (void)_dropExited:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_dropDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(UITableView *)self _dropDelegateProxy];
      [v8 tableView:self dropSessionDidExit:v13];
LABEL_7:

      goto LABEL_8;
    }
  }

  v9 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v8 = [(UITableView *)self _dragDestinationDelegateProxy];
      [v8 _tableView:self dropSessionDidExit:v13];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_dropEnded:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_dropDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(UITableView *)self _dropDelegateProxy];
      [v8 tableView:self dropSessionDidEnd:v13];
LABEL_7:

      goto LABEL_8;
    }
  }

  v9 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v8 = [(UITableView *)self _dragDestinationDelegateProxy];
      [v8 _tableView:self dropSessionDidEnd:v13];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_performDrop:(id)a3 withDropCoordinator:(id)a4 forceHandleAsReorder:(BOOL)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 proposal];
  v10 = [v9 operation];

  if (v10 <= 1)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    v41 = NSStringFromSelector(a2);
    [v40 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15160 description:{@"UITableView internal inconsistency: the drop action should never be Cancel or Forbidden in %@", v41}];
  }

  v11 = [v8 proposal];
  v12 = [v11 intent];

  if (v12 == 3)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = _UITableViewStringFromDropIntent(3uLL);
    v44 = NSStringFromSelector(a2);
    [v42 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15162 description:{@"UITableView internal inconsistency: the drop action should never be %@ in %@", v43, v44}];
  }

  v13 = [(_UITableViewDragController *)self->_dragController draggedIndexPath];
  if (v13)
  {
    v14 = v10 == 3;
  }

  else
  {
    v14 = 0;
  }

  if (v14 && v12 == 1)
  {
    v16 = [v8 items];
    v17 = [v16 count];

    if (v17 == 1)
    {
      if (dyld_program_sdk_at_least())
      {
        if (![(UITableView *)self _canMoveRowAtIndexPath:v13])
        {
          goto LABEL_16;
        }

LABEL_24:
        v24 = [v8 destinationIndexPath];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __69__UITableView__performDrop_withDropCoordinator_forceHandleAsReorder___block_invoke;
        v53[3] = &unk_1E70F6228;
        v53[4] = self;
        v25 = v13;
        v54 = v25;
        v26 = v24;
        v55 = v26;
        [(UITableView *)self _performInternalBatchUpdates:v53];
        v48 = v26;
        v47 = [(UITableView *)self _cellForRowAtIndexPath:v26 usingPresentationValues:1];
        if (v47)
        {
          v45 = v13;
          v46 = self;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v27 = v8;
          v28 = [v8 items];
          v29 = [v28 countByEnumeratingWithState:&v49 objects:v56 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v50;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v50 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v49 + 1) + 8 * i);
                v34 = [v33 sourceIndexPath];
                if (v34)
                {
                  v35 = v34;
                  v36 = [v33 sourceIndexPath];
                  v37 = [v25 isEqual:v36];

                  if (v37)
                  {
                    v38 = [(UITableView *)v46 _dropPreviewParametersForIndexPath:v48];
                    v39 = [v33 dragItem];
                    [v27 _dropItem:v39 toCell:v47 withPreviewParameters:v38];
                  }
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v49 objects:v56 count:16];
            }

            while (v30);
          }

          v8 = v27;
          v13 = v45;
        }

        goto LABEL_37;
      }

      if ((*(&self->_tableFlags + 3) & 4) != 0)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_16:
  if (!a5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);

    if (WeakRetained)
    {
      v19 = [(UITableView *)self _dropDelegateProxy];
      [v19 tableView:self performDropWithCoordinator:v8];
LABEL_19:

      goto LABEL_37;
    }

    v20 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
    if (v20)
    {
      v21 = v20;
      v22 = objc_loadWeakRetained(&self->_dragDestinationDelegate);
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v19 = [(UITableView *)self _dragDestinationDelegateProxy];
        [v19 _tableView:self performDropWithCoordinator:v8];
        goto LABEL_19;
      }
    }
  }

LABEL_37:
}

void __69__UITableView__performDrop_withDropCoordinator_forceHandleAsReorder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__UITableView__performDrop_withDropCoordinator_forceHandleAsReorder___block_invoke_2;
  v3[3] = &unk_1E70F6228;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performBatchUpdates:v3 completion:0];
}

- (id)_dropPreviewParametersForIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UITableView *)self _dropDelegateProxy];
    v8 = [v7 tableView:self dropPreviewParametersForRowAtIndexPath:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_beginAnimatingDropOfCell:(id)a3 isCanceling:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(_UITableViewSubviewManager *)self->_subviewManager preventReuseOfCell:v6];
  v7 = [v6 _dropAnimationContainerView];
  if (!v7)
  {
    v7 = objc_alloc_init(_UITableViewDropAnimationContainerView);
    [v6 _setDropAnimationContainerView:v7];
    v8 = 0.0;
    if (v4)
    {
      v8 = 1.0;
    }

    [(UIView *)v7 setAlpha:v8];
  }

  [(_UITableViewDropAnimationContainerView *)v7 beginDropAnimation];

  return v7;
}

- (void)_endAnimatingDropOfCell:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 _dropAnimationContainerView];
  if (!v6)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = NSStringFromSelector(a2);
    [v17 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15248 description:{@"UITableView internal inconsistency: there should always be a drop animation container view for the cell in %@. Cell: %@", v18, v5}];
  }

  [v6 endDropAnimation];
  if ([v6 hasCompletedAllDropAnimations])
  {
    v7 = [v6 cells];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v23 + 1) + 8 * i) _setDropAnimationContainerView:0];
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    [v6 removeFromSuperview];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa resumeReuseOfCell:?];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }
}

- (NSMutableArray)_placeholderContexts
{
  placeholderContexts = self->_placeholderContexts;
  if (!placeholderContexts)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_placeholderContexts;
    self->_placeholderContexts = v4;

    placeholderContexts = self->_placeholderContexts;
  }

  return placeholderContexts;
}

- (id)_placeholderContextForIndexPath:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15327 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(UITableView *)self _placeholderContexts];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(UITableView *)self _currentIndexPathForPlaceholder:v11];
        if ([v12 isEqual:v5])
        {
          v13 = v11;

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)_shadowUpdateForPlaceholder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = [(UITableView *)self _placeholderContexts];
  v8 = [v7 containsObject:v5];

  if (has_internal_diagnostics)
  {
    if (v8)
    {
      goto LABEL_3;
    }

    v13 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v14 = NSStringFromSelector(a2);
    v18 = 138412290;
    v19 = v14;
    _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "%@ should never be called with a placeholder context that isn't contained in the placeholderContexts array", &v18, 0xCu);
LABEL_15:

LABEL_16:
    goto LABEL_3;
  }

  if ((v8 & 1) == 0)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &_shadowUpdateForPlaceholder____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v13 = v17;
      v14 = NSStringFromSelector(a2);
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%@ should never be called with a placeholder context that isn't contained in the placeholderContexts array", &v18, 0xCu);
      goto LABEL_15;
    }
  }

LABEL_3:
  v9 = [v5 _shadowUpdateIdentifier];
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15344 description:@"UITableView internal inconsistency: cannot get the shadow update for a placeholder that was not inserted (missing shadow update identifier)"];
  }

  v10 = [(UITableView *)self _shadowUpdatesController];
  v11 = [v10 shadowUpdateWithIdentifier:v9];
  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15348 description:@"UITableView internal inconsistency: cannot get the shadow update for a placeholder that was not inserted (missing shadow update)"];
  }

  return v11;
}

- (id)_currentIndexPathForPlaceholder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = [(UITableView *)self _placeholderContexts];
  v8 = [v7 containsObject:v5];

  if (has_internal_diagnostics)
  {
    if (v8)
    {
      goto LABEL_3;
    }

    v12 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v13 = NSStringFromSelector(a2);
    v15 = 138412290;
    v16 = v13;
    _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "%@ should never be called with a placeholder context that isn't contained in the placeholderContexts array", &v15, 0xCu);
LABEL_11:

LABEL_12:
    goto LABEL_3;
  }

  if ((v8 & 1) == 0)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &_currentIndexPathForPlaceholder____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v12 = v14;
      v13 = NSStringFromSelector(a2);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@ should never be called with a placeholder context that isn't contained in the placeholderContexts array", &v15, 0xCu);
      goto LABEL_11;
    }
  }

LABEL_3:
  v9 = [(UITableView *)self _shadowUpdateForPlaceholder:v5];
  v10 = [(UITableView *)self _currentIndexPathForExistingShadowInsertUpdate:v9];

  return v10;
}

- (id)_insertPlaceholderAtIndexPath:(id)a3 withContext:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(UITableView *)self _shadowUpdatesController];
  v10 = [v9 indexPathAfterShadowUpdates:v8 allowAppendingInsert:1];

  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15369 description:@"UITableView internal inconsistency: the insertion index path for a placeholder cannot be nil"];
  }

  v11 = [(UITableView *)self _placeholderContexts];
  [v11 addObject:v7];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__UITableView__insertPlaceholderAtIndexPath_withContext___block_invoke;
  v19[3] = &unk_1E7107CE8;
  v19[4] = self;
  v12 = v10;
  v21 = v7;
  v22 = a2;
  v20 = v12;
  v13 = v7;
  v14 = [(UITableView *)self _performShadowUpdates:v19];
  v15 = v21;
  v16 = v12;

  return v12;
}

void __57__UITableView__insertPlaceholderAtIndexPath_withContext___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 _updateRowsAtIndexPaths:v3 withUpdateAction:0 rowAnimation:0 usingPresentationValues:1];

  v5 = [v4 firstObject];
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UITableView.m" lineNumber:15376 description:@"UITableView internal inconsistency: missing identifier for placeholder insertion update"];
  }

  [*(a1 + 48) _setShadowUpdateIdentifier:v5];
}

- (id)_deletePlaceholderForContext:(id)a3
{
  v4 = a3;
  v5 = [(UITableView *)self _placeholderContexts];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(UITableView *)self _shadowUpdateForPlaceholder:v4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__UITableView__deletePlaceholderForContext___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v4;
    v8 = [(UITableView *)self _revertExistingShadowInsertUpdate:v7 withAlongsideUpdates:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __44__UITableView__deletePlaceholderForContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _placeholderContexts];
  [v2 removeObject:*(a1 + 40)];
}

- (void)_deleteAllPlaceholderCells
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(UITableView *)self _placeholderContexts];
  v4 = [v3 copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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

        v10 = [(UITableView *)self _deletePlaceholderForContext:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)_commitPlaceholderInsertionWithContext:(id)a3 dataSourceUpdates:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(UITableView *)self _placeholderContexts];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    v11 = [(UITableView *)self _shadowUpdateForPlaceholder:v7];
    v12 = [(UITableView *)self _shadowUpdatesController];
    v13 = [(UICollectionViewUpdateItem *)v11 _indexPath];
    v35 = v12;
    v14 = [v12 indexPathBeforeShadowUpdates:v13 startingBeforeUpdate:v11];

    if (!v14)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15421 description:@"UITableView internal inconsistency: the data source index path of a placeholder that exists should never be nil"];
    }

    v15 = [(UITableView *)self _currentIndexPathForExistingShadowInsertUpdate:v11];
    v16 = [(UITableView *)self _cellForRowAtIndexPath:v15 usingPresentationValues:1];
    v17 = v16;
    if (v16)
    {
      v36 = [v16 _dropAnimationContainerView];
    }

    else
    {
      v36 = 0;
    }

    v18 = [(UITableView *)self _deletePlaceholderForContext:v7];
    if (!v18)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = a2;
      v30 = v17;
      v31 = v11;
      v32 = v8;
      v33 = v15;
      v34 = v28;
      [v28 handleFailureInMethod:v29 object:self file:@"UITableView.m" lineNumber:15432 description:@"UITableView internal inconsistency: the presentation index path of a placeholder that exists should never be nil"];

      v15 = v33;
      v8 = v32;
      v11 = v31;
      v17 = v30;
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __72__UITableView__commitPlaceholderInsertionWithContext_dataSourceUpdates___block_invoke;
    v37[3] = &unk_1E7100388;
    v37[4] = self;
    v19 = v14;
    v38 = v19;
    v40 = v8;
    v20 = v18;
    v39 = v20;
    [(UITableView *)self _performInternalBatchUpdates:v37];
    if (v36)
    {
      v21 = v17;
      v22 = v11;
      v23 = v8;
      v24 = v15;
      v25 = [(UITableView *)self _cellForRowAtIndexPath:v20 usingPresentationValues:1];
      if (v25)
      {
        [(_UITableViewSubviewManager *)self->_subviewManager preventReuseOfCell:v25];
        [v25 _setDropAnimationContainerView:v36];
      }

      v15 = v24;
      v8 = v23;
      v11 = v22;
      v17 = v21;
    }
  }

  return v10;
}

void __72__UITableView__commitPlaceholderInsertionWithContext_dataSourceUpdates___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__UITableView__commitPlaceholderInsertionWithContext_dataSourceUpdates___block_invoke_2;
  v6[3] = &unk_1E7100388;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v7 = v5;
  v8 = v4;
  [v5 performBatchUpdates:v6 completion:0];
}

void __72__UITableView__commitPlaceholderInsertionWithContext_dataSourceUpdates___block_invoke_2(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ((*(a1[4] + 3196) & 0x10) != 0)
  {
    v2 = [[UICollectionViewUpdateItem alloc] initWithAction:0 forIndexPath:a1[5]];
    v3 = a1[4];
    v4 = *(v3 + 2472);
    *(v3 + 2472) = v2;

    (*(a1[7] + 16))();
    v5 = a1[4];
    v6 = *(v5 + 2472);
    *(v5 + 2472) = 0;
  }

  else
  {
    (*(a1[7] + 16))();
  }

  v7 = a1[4];
  v10[0] = a1[6];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v9 = [v7 _updateRowsAtIndexPaths:v8 withUpdateAction:0 rowAnimation:0 usingPresentationValues:1];
}

- (id)_identityTracker:(BOOL)a3
{
  identityTracker = self->_identityTracker;
  if (identityTracker)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = [[_UIIndexPathIdentityTracker alloc] initWithTableView:?];
    v7 = self->_identityTracker;
    self->_identityTracker = v6;

    identityTracker = self->_identityTracker;
  }

  return identityTracker;
}

- (double)_heightForShadowRowAtIndexPath:(id)a3
{
  v5 = a3;
  rowHeight = -1.0;
  if ((*(&self->_tableFlags + 27) & 0x20) == 0)
  {
    v7 = [(UITableView *)self _placeholderContextForIndexPath:v5];
    if (!v7)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15490 description:{@"UITableView internal inconsistency: missing placeholder context for this index path: %@", v5}];
    }

    [v7 rowHeight];
    rowHeight = v8;
    if (v8 == -1.0)
    {
      if ((*(&self->_tableFlags + 25) & 8) != 0 && [(UITableView *)self _estimatesRowHeights])
      {
        *(&self->_tableFlags + 3) |= 0x20000000uLL;
        [(UITableView *)self _heightForRowAtIndexPath:v5];
        rowHeight = v9;
        *(&self->_tableFlags + 3) &= ~0x20000000uLL;
      }

      else
      {
        rowHeight = self->_rowHeight;
        if (rowHeight == -1.0)
        {
          [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
          rowHeight = v10;
        }
      }
    }
  }

  return rowHeight;
}

- (id)_cellForShadowRowAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(UITableView *)self _placeholderContextForIndexPath:v5];
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15523 description:{@"UITableView internal inconsistency: missing placeholder context for this index path: %@", v5}];
  }

  v7 = [v6 reuseIdentifier];
  v8 = [(UITableView *)self dequeueReusableCellWithIdentifier:v7];
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15527 description:{@"Unable to dequeue a placeholder cell with identifier %@ - must register a nib or a class for the identifier or connect a prototype cell in a storyboard", v7}];
  }

  v9 = [v6 cellUpdateHandler];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }

  return v8;
}

- (id)_shadowUpdatesController
{
  shadowUpdatesController = self->_shadowUpdatesController;
  if (!shadowUpdatesController)
  {
    v4 = [[_UITableViewShadowUpdatesController alloc] initWithTableView:self];
    v5 = self->_shadowUpdatesController;
    self->_shadowUpdatesController = v4;

    shadowUpdatesController = self->_shadowUpdatesController;
  }

  return shadowUpdatesController;
}

- (id)_performShadowUpdates:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15556 description:{@"Invalid parameter not satisfying: %@", @"shadowUpdates != nil"}];
  }

  v6 = [(UITableView *)self _shadowUpdatesController];
  v7 = [v6 shadowUpdates];
  v8 = [v7 count];

  v9 = *(&self->_tableFlags + 3);
  *(&self->_tableFlags + 3) = v9 | 0x400000000;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __37__UITableView__performShadowUpdates___block_invoke;
  v20[3] = &unk_1E70F37C0;
  v20[4] = self;
  v10 = v5;
  v21 = v10;
  [(UITableView *)self _performInternalBatchUpdates:v20];
  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFBFFFFFFFFLL | (((v9 >> 34) & 1) << 34);
  v11 = [v6 shadowUpdates];
  v12 = [v11 count];

  v13 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, v12}];
  [v13 removeIndexesInRange:{0, v8}];
  if ([v13 firstIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v15 = [v13 firstIndex];
    v16 = [v13 count];
    v17 = [v6 shadowUpdates];
    v14 = [v17 subarrayWithRange:{v15, v16}];
  }

  return v14;
}

- (void)_performRevertingShadowUpdates:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15587 description:{@"Invalid parameter not satisfying: %@", @"revertingShadowUpdates != nil"}];
  }

  v6 = *(&self->_tableFlags + 3);
  *(&self->_tableFlags + 3) = v6 | 0x800000000;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__UITableView__performRevertingShadowUpdates___block_invoke;
  v9[3] = &unk_1E70F37C0;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  [(UITableView *)self _performInternalBatchUpdates:v9];
  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFF7FFFFFFFFLL | (((v6 >> 35) & 1) << 35);
}

- (id)_currentIndexPathForExistingShadowInsertUpdate:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15600 description:{@"Invalid parameter not satisfying: %@", @"shadowInsertUpdate != nil"}];
  }

  v6 = [(UITableView *)self _shadowUpdatesController];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v8 = [v6 shadowUpdates];
  v9 = [v8 containsObject:v5];

  if (has_internal_diagnostics)
  {
    if ((v9 & 1) == 0)
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *v18 = 0;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Attempted to request the index path of an update that isn't actually an existing shadow update", v18, 2u);
      }
    }
  }

  else if ((v9 & 1) == 0)
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &_currentIndexPathForExistingShadowInsertUpdate____s_category) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Attempted to request the index path of an update that isn't actually an existing shadow update", buf, 2u);
    }
  }

  v10 = [(UICollectionViewUpdateItem *)v5 _indexPath];
  v11 = [v6 indexPathAfterShadowUpdates:v10 startingAtUpdate:v5];

  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15607 description:@"UITableView internal inconsistency: the current index path of an inserted shadow update should never be nil"];
  }

  return v11;
}

- (id)_revertExistingShadowInsertUpdate:(id)a3 withAlongsideUpdates:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15616 description:{@"Invalid parameter not satisfying: %@", @"shadowInsertUpdate != nil"}];
  }

  if ([v7 updateAction])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:15617 description:@"This method only supports reverting insertion shadow updates"];
  }

  v9 = [(UITableView *)self _currentIndexPathForExistingShadowInsertUpdate:v7];
  v10 = [(UITableView *)self _shadowUpdatesController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__UITableView__revertExistingShadowInsertUpdate_withAlongsideUpdates___block_invoke;
  v20[3] = &unk_1E7123838;
  v21 = v10;
  v22 = v7;
  v25 = v8;
  v23 = self;
  v11 = v9;
  v24 = v11;
  v12 = v7;
  v13 = v10;
  v14 = v8;
  [(UITableView *)self _performRevertingShadowUpdates:v20];
  v15 = v24;
  v16 = v11;

  return v11;
}

void __70__UITableView__revertExistingShadowInsertUpdate_withAlongsideUpdates___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) removeShadowUpdate:*(a1 + 40)];
  v3 = *(a1 + 48);
  v6[0] = *(a1 + 56);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v5 = [v3 _updateRowsAtIndexPaths:v4 withUpdateAction:1 rowAnimation:0 usingPresentationValues:1];
}

- (id)_addToShadowUpdatesControllerIfNeeded:(id)a3
{
  v4 = a3;
  if ([(UITableView *)self _isPerformingShadowUpdates])
  {
    v5 = [(UITableView *)self _shadowUpdatesController];
    v6 = [v4 collectionViewUpdateItem];
    [v5 appendShadowUpdate:v6];
    if (v6)
    {
      v7 = v6[11];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_beginReorderingForCell:(id)a3 touch:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v11 = [(UITableView *)self _isReorderControlActiveForCell:v8];
  if (has_internal_diagnostics)
  {
    if (v11)
    {
      goto LABEL_3;
    }

    v39 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_39;
    }

    v40 = NSStringFromSelector(a2);
    *buf = 138412546;
    v52 = v40;
    v53 = 2112;
    v54 = v8;
    _os_log_fault_impl(&dword_188A29000, v39, OS_LOG_TYPE_FAULT, "It should not be possible for %@ to be called if the reorder control is not active for the cell: %@", buf, 0x16u);
LABEL_38:

LABEL_39:
    goto LABEL_3;
  }

  if (!v11)
  {
    v41 = *(__UILogGetCategoryCachedImpl("Assert", &_beginReorderingForCell_touch____s_category) + 8);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v39 = v41;
      v40 = NSStringFromSelector(a2);
      *buf = 138412546;
      v52 = v40;
      v53 = 2112;
      v54 = v8;
      _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "It should not be possible for %@ to be called if the reorder control is not active for the cell: %@", buf, 0x16u);
      goto LABEL_38;
    }
  }

LABEL_3:
  if ([(UITableView *)self _dragAndDropUsedForReordering])
  {
    [(_UITableViewDragController *)self->_dragController immediatelyBeginDragWithTouch:v9];
    v12 = 0;
  }

  else
  {
    obj = a3;
    v43 = v9;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v13 = [v9 gestureRecognizers];
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          if (_UISheetInteractionGestureIsForInteractiveDismiss(v18))
          {
            v19 = UIApp;
            v49 = v18;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
            [v19 _cancelGestureRecognizers:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v15);
    }

    [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa removeAllPrefetchedCells];
    [(UITableView *)self _beginAnimatingCells];
    if ([v8 _usingBackgroundViewConfiguration])
    {
      [v8 _setAnimating:0];
    }

    else
    {
      [v8 _setAnimating:1 clippingAdjacentCells:(*(&self->_tableFlags + 2) >> 61) & 1];
    }

    v21 = [(UITableView *)self _reorderingSupport];
    v22 = *(v21 + 8);
    *(v21 + 8) = 0;

    v23 = *(v21 + 16);
    *(v21 + 16) = 0;

    v24 = [(NSMutableArray *)self->_visibleCells indexOfObject:v8];
    v12 = v24 != 0x7FFFFFFFFFFFFFFFLL;
    v9 = v43;
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v24;
      location = self->_visibleRows.location;
      objc_storeStrong((v21 + 8), obj);
      v27 = [(UITableView *)self indexPathForRowAtGlobalRow:location + v25];
      v28 = *(v21 + 16);
      *(v21 + 16) = v27;

      *(v21 + 32) &= 0xF3u;
      if ((*(&self->_tableFlags + 8) & 0x40) != 0)
      {
        v29 = [(UITableView *)self _delegateProxy];
        [v29 tableView:self willBeginReorderingRowAtIndexPath:*(v21 + 16)];
      }

      objc_storeStrong((v21 + 24), *(v21 + 16));
      [(UITableViewRowData *)self->_rowData setReorderedIndexPath:?];
      [(UITableViewRowData *)self->_rowData addGapAtIndexPath:?];
      [(UITableView *)self _updateTopSeparatorForVisibleCells];
      v30 = [(UITableView *)self _cellContainerView];
      [v30 bringSubviewToFront:v8];

      if (([v8 isSelected] & 1) == 0 && (objc_msgSend(v8, "isHighlighted") & 1) == 0)
      {
        [v8 _saveOpaqueViewState:v8];
        [v8 _setOpaque:0 forSubview:v8];
      }

      if (([v8 _usingBackgroundViewConfiguration] & 1) == 0)
      {
        [(UITableConstants *)self->_constants defaultAlphaForReorderingCell];
        [v8 setAlpha:?];
      }

      [v8 setSeparatorStyle:0];
      [v8 _setReordering:1];
      v31 = [(UIScrollView *)self isScrollEnabled];
      *(v21 + 64) = v31;
      if (v31)
      {
        *(v21 + 65) = [(UIScrollView *)self _adjustsContentInsetWhenScrollDisabled];
        [(UIScrollView *)self _setAdjustsContentInsetWhenScrollDisabled:1];
        [(UIScrollView *)self setScrollEnabled:0];
      }

      v32 = [(UIView *)self window];
      [v32 beginDisablingInterfaceAutorotation];

      *(v21 + 32) = *(v21 + 32) & 0xFE | [(UIScrollView *)self showsHorizontalScrollIndicator];
      if ([(UIScrollView *)self showsVerticalScrollIndicator])
      {
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }

      *(v21 + 32) = *(v21 + 32) & 0xFD | v33;
      [(UITableView *)self setShowsHorizontalScrollIndicator:0];
      [(UIScrollView *)self setShowsVerticalScrollIndicator:0];
      [v43 locationInView:self];
      v35 = v34;
      v37 = v36;
      [(_UIDragFeedbackGenerator *)self->_reorderFeedbackGenerator userInteractionStartedAtLocation:?];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __45__UITableView__beginReorderingForCell_touch___block_invoke;
      v44[3] = &unk_1E70F6848;
      v44[4] = self;
      v44[5] = v35;
      v44[6] = v37;
      [UIApp _performBlockAfterCATransactionCommits:v44];
      [(UITableView *)self _reorderPositionChangedForCell:v8];
    }
  }

  return v12;
}

uint64_t __45__UITableView__beginReorderingForCell_touch___block_invoke(double *a1)
{
  result = [*(*(a1 + 4) + 3128) isActive];
  if (result)
  {
    v3 = *(*(a1 + 4) + 3128);
    v4 = a1[5];
    v5 = a1[6];

    return [v3 draggedObjectLiftedAtLocation:{v4, v5}];
  }

  return result;
}

- (void)_draggingReorderingCell:(id)a3 yDelta:(double)a4 touch:(id)a5
{
  v7 = a5;
  v8 = a3;
  [v8 frame];
  v39 = v10;
  v40 = v9;
  v38 = v11;
  v13 = v12;
  v14 = [(UITableView *)self _scrollView];
  [v14 contentSize];
  v16 = v15;

  v17 = [(UITableView *)self _scrollView];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = round(v13 * 0.5);
  v43.origin.x = v19;
  v43.origin.y = v21;
  v43.size.width = v23;
  v43.size.height = v25;
  v27 = CGRectGetMinY(v43) - v26;
  if (0.0 - v26 >= v27)
  {
    v27 = 0.0 - v26;
  }

  v28 = round(v27);
  v29 = v16 - v26;
  v44.origin.x = v19;
  v44.origin.y = v21;
  v44.size.width = v23;
  v44.size.height = v25;
  v30 = CGRectGetMaxY(v44) - v26;
  if (v29 < v30)
  {
    v30 = v29;
  }

  v31 = round(v30);
  v32 = v38 + a4;
  if (v28 >= v38 + a4)
  {
    v32 = v28;
  }

  if (v32 >= v31)
  {
    v32 = v31;
  }

  [v8 setFrame:{v40, v32, v39, v13}];
  [(UITableView *)self _reorderPositionChangedForCell:v8];

  reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
  [v7 locationInView:self];
  v35 = v34;
  v37 = v36;

  [(_UIDragFeedbackGenerator *)reorderFeedbackGenerator positionUpdatedAtLocation:v35, v37];
}

- (id)_adjustedIndexPath:(id)a3 forMoveOfIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isEqual:v8])
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
    v11 = [v10 section];
    if (v11 == [v8 section])
    {
      v12 = [v10 row];
      if (v12 > [v8 row])
      {
        v13 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v10 inSection:{"row") - 1, objc_msgSend(v10, "section")}];

        v10 = v13;
      }
    }

    v14 = [v10 section];
    if (v14 == [v9 section])
    {
      v15 = [v10 row];
      if (v15 >= [v9 row])
      {
        v16 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v10 inSection:{"row") + 1, objc_msgSend(v10, "section")}];

        v10 = v16;
      }
    }
  }

  return v10;
}

- (void)adjustIndexPaths:(id)a3 forMoveOfIndexPath:(id)a4 toIndexPath:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 copy];
  [v8 removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(UITableView *)self _adjustedIndexPath:*(*(&v18 + 1) + 8 * v16) forMoveOfIndexPath:v9 toIndexPath:v10, v18];
        [v8 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)_endReorderingForCell:(id)a3 wasCancelled:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v97 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(UITableView *)self _reorderingSupport];
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_61;
  }

  v11 = v10;
  v72 = [(UITableViewRowData *)self->_rowData globalRowForRowAtIndexPath:v11];
  v12 = *(v9 + 16);
  *(v9 + 16) = 0;

  [(UITableView *)self _stopAutoscrollTimer];
  reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
  [v8 frame];
  v16 = v15 + v14 * 0.5;
  v19 = v18 + v17 * 0.5;
  if (v6)
  {
    [(_UIDragFeedbackGenerator *)reorderFeedbackGenerator userInteractionCancelledAtLocation:v16, v19];
  }

  else
  {
    [(_UIDragFeedbackGenerator *)reorderFeedbackGenerator userInteractionEndedAtLocation:v16, v19];
  }

  [v8 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if ((*(v9 + 32) & 4) == 0)
  {
    [(UITableViewRowData *)self->_rowData removeGap];
    [(UITableViewRowData *)self->_rowData setReorderedIndexPath:?];
    if (v6)
    {
      objc_storeStrong((v9 + 24), v10);
    }

    [(UITableViewRowData *)self->_rowData moveRowAtIndexPathFrom:v11 toIndexPath:*(v9 + 24)];
    [(UITableView *)self adjustIndexPaths:self->_selectedIndexPaths forMoveOfIndexPath:v11 toIndexPath:*(v9 + 24)];
    [(UITableView *)self adjustIndexPaths:self->_highlightedIndexPaths forMoveOfIndexPath:v11 toIndexPath:*(v9 + 24)];
    deselectionTransitionIndexPaths = self->_deselectionTransitionIndexPaths;
    if (deselectionTransitionIndexPaths)
    {
      [(UITableView *)self adjustIndexPaths:deselectionTransitionIndexPaths forMoveOfIndexPath:v11 toIndexPath:*(v9 + 24)];
    }

    focusedCellIndexPath = self->_focusedCellIndexPath;
    if (focusedCellIndexPath)
    {
      v30 = [(UITableView *)self _adjustedIndexPath:focusedCellIndexPath forMoveOfIndexPath:v11 toIndexPath:*(v9 + 24)];
      v31 = self->_focusedCellIndexPath;
      self->_focusedCellIndexPath = v30;
    }
  }

  v74 = v5;
  v32 = *(v9 + 32);
  if (!v6 && (*(v9 + 32) & 4) == 0)
  {
    [(UITableView *)self _notifyDataSourceForMoveOfRowFromIndexPath:v11 toIndexPath:*(v9 + 24)];
    v32 = *(v9 + 32);
  }

  if ((v32 & 4) == 0)
  {
    p_visibleRows = &self->_visibleRows;
    rowData = self->_rowData;
    [(UIView *)self bounds];
    self->_visibleRows.location = [(UITableViewRowData *)rowData globalRowsInRect:v35 canGuess:v36, v37, v38];
    self->_visibleRows.length = v39;
    [(UITableView *)self _visibleBounds];
    self->_visibleBounds.origin.x = v40;
    self->_visibleBounds.origin.y = v41;
    self->_visibleBounds.size.width = v42;
    self->_visibleBounds.size.height = v43;
    v44 = [(NSMutableArray *)self->_visibleCells indexOfObject:v8];
    if (v44 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_visibleCells removeObjectAtIndex:v44];
    }

    v45 = [(UITableView *)self globalRowForRowAtIndexPath:*(v9 + 24)];
    location = p_visibleRows->location;
    length = self->_visibleRows.length;
    v48 = v45 - p_visibleRows->location;
    if (v45 < p_visibleRows->location || v48 >= length)
    {
      if (v44 != 0x7FFFFFFFFFFFFFFFLL)
      {
        self->_visibleRows.length = --length;
        if (v73 == location && v45 > v73 + length - 1)
        {
          p_visibleRows->location = v73 + 1;
        }
      }
    }

    else
    {
      v49 = [(NSMutableArray *)self->_visibleCells count];
      if (v48 <= v49)
      {
        [(NSMutableArray *)self->_visibleCells insertObject:v8 atIndex:v48];
      }

      if (v44 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = self->_visibleRows.length;
        if (v50 < [(NSMutableArray *)self->_visibleCells count])
        {
          ++self->_visibleRows.length;
        }
      }

      if (v48 > v49)
      {
LABEL_32:
        if (os_variant_has_internal_diagnostics())
        {
          v54 = __UIFaultDebugAssertLog();
          if (!os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_36;
          }

          v99.location = p_visibleRows->location;
          v99.length = self->_visibleRows.length;
          v55 = NSStringFromRange(v99);
          v70 = [(NSMutableArray *)self->_visibleCells count];
          visibleCells = self->_visibleCells;
          *buf = 138412802;
          v92 = v55;
          v93 = 2048;
          v94 = v70;
          v95 = 2112;
          v96 = visibleCells;
          _os_log_fault_impl(&dword_188A29000, v54, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: _visibleRows and _visibleCells mismatch when ending reordering, sacrificing the animation and performing reloadData as a fallback. _visibleRows: %@; _visibleCells.count: %ld, _visibleCells: %@", buf, 0x20u);
        }

        else
        {
          v51 = *(__UILogGetCategoryCachedImpl("Assert", &_endReorderingForCell_wasCancelled_animated____s_category) + 8);
          if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
LABEL_37:
            [(UITableView *)self _performInternalReloadData];
            goto LABEL_38;
          }

          v52 = p_visibleRows->location;
          v53 = self->_visibleRows.length;
          v54 = v51;
          v98.location = v52;
          v98.length = v53;
          v55 = NSStringFromRange(v98);
          v56 = [(NSMutableArray *)self->_visibleCells count];
          v57 = self->_visibleCells;
          *buf = 138412802;
          v92 = v55;
          v93 = 2048;
          v94 = v56;
          v95 = 2112;
          v96 = v57;
          _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: _visibleRows and _visibleCells mismatch when ending reordering, sacrificing the animation and performing reloadData as a fallback. _visibleRows: %@; _visibleCells.count: %ld, _visibleCells: %@", buf, 0x20u);
        }

LABEL_36:
        goto LABEL_37;
      }

      length = self->_visibleRows.length;
    }

    if (length != [(NSMutableArray *)self->_visibleCells count])
    {
      goto LABEL_32;
    }
  }

LABEL_38:
  if ((*(v9 + 32) & 4) != 0)
  {
    [v8 removeFromSuperview];
    [(UITableView *)self _endCellReorderAnimation:0 wasCancelled:v6];
    [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
    [(UIView *)self layoutIfNeeded];
  }

  else
  {
    [(UITableView *)self _updateVisibleCellsNow:1];
    [(UITableView *)self _rectForRowAtIndexPath:*(v9 + 24) usingPresentationValues:1];
    v59 = v58;
    if (v74)
    {
      [UIApp setIgnoresInteractionEvents:1];
    }

    if (v59 == v23)
    {
      [(UITableView *)self _endCellReorderAnimation:v74 wasCancelled:v6];
    }

    else
    {
      v100.origin.x = v21;
      v100.origin.y = v23;
      v100.size.width = v25;
      v100.size.height = v27;
      if (CGRectGetHeight(v100) <= 0.0)
      {
        v62 = 0.3;
      }

      else
      {
        if (v59 - v23 >= 0.0)
        {
          v60 = v59 - v23;
        }

        else
        {
          v60 = -(v59 - v23);
        }

        v101.origin.x = v21;
        v101.origin.y = v23;
        v101.size.width = v25;
        v101.size.height = v27;
        v61 = v60 / (CGRectGetHeight(v101) * 0.5);
        if (v61 > 1.0)
        {
          v61 = 1.0;
        }

        v62 = v61 * 0.3;
      }

      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __59__UITableView__endReorderingForCell_wasCancelled_animated___block_invoke;
      v89[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
      *&v89[4] = v62;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __59__UITableView__endReorderingForCell_wasCancelled_animated___block_invoke_2;
      v82[3] = &unk_1E7100760;
      v83 = v8;
      v85 = v21;
      v86 = v59;
      v87 = v25;
      v88 = v27;
      v84 = v9;
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __59__UITableView__endReorderingForCell_wasCancelled_animated___block_invoke_3;
      v79[3] = &unk_1E7123860;
      v79[4] = self;
      v80 = v74;
      v81 = v6;
      [UIView conditionallyAnimate:v74 withAnimation:v89 layout:v82 completion:v79];
    }
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v63 = [(UITableView *)self _visibleCellsUsingPresentationValues:1];
  v64 = [v63 countByEnumeratingWithState:&v75 objects:v90 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v76;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v76 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v75 + 1) + 8 * i);
        v69 = [(UITableView *)self _indexPathForCell:v68 usingPresentationValues:1];
        [(UITableView *)self _updateSeparatorStateForCell:v68 atIndexPath:v69];
      }

      v65 = [v63 countByEnumeratingWithState:&v75 objects:v90 count:16];
    }

    while (v65);
  }

LABEL_61:
}

uint64_t __59__UITableView__endReorderingForCell_wasCancelled_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) _setReordering:0];
  [*(*(a1 + 40) + 48) frame];
  [*(*(a1 + 40) + 48) setFrame:?];
  [*(*(a1 + 40) + 48) setAlpha:0.0];
  [*(*(a1 + 40) + 56) frame];
  [*(*(a1 + 40) + 56) setFrame:?];
  v2 = *(*(a1 + 40) + 56);

  return [v2 setAlpha:0.0];
}

- (void)_cancelCellReorder:(BOOL)a3
{
  v4 = [(UITableView *)self _reorderingIndexPath];

  if (v4)
  {
    v7 = self->_reorderingSupport;
    [(UITableViewRowData *)self->_rowData removeGap];
    [(UITableViewRowData *)self->_rowData addGapAtIndexPath:?];
    *(v7 + 32) |= 8u;
    v5 = v7->_initialIndexPath;
    [(UITableView *)self _endReorderingForCell:v7->_reorderedCell wasCancelled:1 animated:0];
    if (*(&self->_tableFlags + 9))
    {
      v6 = [(UITableView *)self _delegateProxy];
      [v6 tableView:self didCancelReorderingRowAtIndexPath:v5];
    }
  }
}

- (void)_endCellReorderAnimation:(BOOL)a3 wasCancelled:(BOOL)a4
{
  v5 = a3;
  v22 = [(UITableView *)self _reorderingSupport];
  v7 = v22[1];
  v8 = v7;
  if (!a4)
  {
    reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
    [v7 frame];
    [(_UIDragSnappingFeedbackGenerator *)reorderFeedbackGenerator draggedObjectLandedAtLocation:v11 + v10 * 0.5, v13 + v12 * 0.5];
  }

  [v8 setOpaque:1];
  [v8 setSeparatorStyle:*(&self->_tableFlags + 7) & 7];
  [v8 setAlpha:1.0];
  if (([v8 isSelected] & 1) == 0 && (objc_msgSend(v8, "isHighlighted") & 1) == 0)
  {
    [v8 _updateHighlightColors];
  }

  [v8 _setReordering:0];
  if (*(v22 + 64) == 1)
  {
    [(UIScrollView *)self setScrollEnabled:1];
    [(UIScrollView *)self _setAdjustsContentInsetWhenScrollDisabled:*(v22 + 65)];
  }

  v14 = [(UIView *)self window];
  [v14 endDisablingInterfaceAutorotation];

  [(UITableView *)self setShowsHorizontalScrollIndicator:v22[4] & 1];
  [(UIScrollView *)self setShowsVerticalScrollIndicator:(*(v22 + 32) >> 1) & 1];
  [(UITableView *)self _updateTopSeparatorForVisibleCells];
  if (v5)
  {
    [UIApp setIgnoresInteractionEvents:0];
  }

  if ((v22[4] & 8) != 0)
  {
    v15 = v22[2];
  }

  else
  {
    v15 = v22[3];
    if ((*(&self->_tableFlags + 8) & 0x80) != 0)
    {
      v16 = [(UITableView *)self _delegateProxy];
      [v16 tableView:self didEndReorderingRowAtIndexPath:v15];
    }
  }

  [(UIScrollView *)self _adjustShadowsIfNecessary];
  v17 = v22[1];
  v22[1] = 0;

  if ([(NSMutableArray *)self->_visibleCells containsObject:v8])
  {
    [(UIScrollView *)self _moveContentSubview:v8 toBack:1];
  }

  else if (_IsKindOfUITableViewCell(v8))
  {
    [(UITableView *)self _reuseTableViewCell:v8 withIndexPath:v15 didEndDisplaying:1];
  }

  v18 = v22[2];
  v22[2] = 0;

  v19 = v22[3];
  v22[3] = 0;

  [v22[7] removeFromSuperview];
  v20 = v22[7];
  v22[7] = 0;

  [v22[6] removeFromSuperview];
  v21 = v22[6];
  v22[6] = 0;

  *(v22 + 32) &= ~4u;
  [(UITableView *)self _endAnimatingCells];
  [v8 _setAnimating:0];
}

- (void)_autoscrollForReordering:(id)a3
{
  v4 = a3;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UITableView *)self _contentInset];
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 - (v13 + v17);
  v20 = v12 - (v15 + v19);
  rect_8 = [v4 userInfo];

  [rect_8 frame];
  y = v63.origin.y;
  width = v63.size.width;
  height = v63.size.height;
  rect = v63.origin.x;
  MaxY = CGRectGetMaxY(v63);
  v64.origin.x = v14;
  v64.origin.y = v16;
  v64.size.width = v18;
  v64.size.height = v20;
  if (MaxY > CGRectGetMaxY(v64) + -5.0)
  {
    v65.origin.x = v14;
    v65.origin.y = v16;
    v65.size.width = v18;
    v65.size.height = v20;
    v25 = CGRectGetMaxY(v65);
    [(UIScrollView *)self contentSize];
    if (v25 < v26)
    {
      v66.origin.x = rect;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      v27 = CGRectGetMaxY(v66);
      v67.origin.x = v14;
      v67.origin.y = v16;
      v67.size.width = v18;
      v67.size.height = v20;
      v28 = v27 - CGRectGetMaxY(v67);
      v29 = 2.0;
      if (v28 <= 0.0)
      {
        goto LABEL_11;
      }

      v30 = v28;
      v68.origin.x = rect;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      v31 = v30 / (CGRectGetHeight(v68) * 0.5);
      v29 = floorf(((v31 * 8.0) * v31) + 2.0);
      goto LABEL_9;
    }
  }

  v69.origin.x = rect;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  MinY = CGRectGetMinY(v69);
  v70.origin.x = v14;
  v70.origin.y = v16;
  v70.size.width = v18;
  v70.size.height = v20;
  if (MinY >= CGRectGetMinY(v70) + 5.0)
  {
    goto LABEL_10;
  }

  v71.origin.x = v14;
  v71.origin.y = v16;
  v71.size.width = v18;
  v71.size.height = v20;
  if (CGRectGetMinY(v71) <= 0.0)
  {
    goto LABEL_10;
  }

  v72.origin.x = rect;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v33 = CGRectGetMinY(v72);
  v73.origin.x = v14;
  v73.origin.y = v16;
  v73.size.width = v18;
  v73.size.height = v20;
  v34 = v33 - CGRectGetMinY(v73);
  v29 = -2.0;
  if (v34 < 0.0)
  {
    v35 = v34;
    v74.origin.x = rect;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    v36 = v35 / (CGRectGetHeight(v74) * 0.5);
    v29 = -floorf(((v36 * 8.0) * v36) + 2.0);
LABEL_9:
    if (v29 == 0.0)
    {
LABEL_10:
      [(UITableView *)self _stopAutoscrollTimer];
      goto LABEL_23;
    }
  }

LABEL_11:
  [(UIScrollView *)self contentOffset];
  v58 = v37;
  v39 = v38;
  [(UITableView *)self _contentInset];
  v41 = v40;
  v43 = v42;
  v59 = v29;
  v44 = v29;
  v45 = v39 + v44;
  v46 = -v40;
  [(UIScrollView *)self contentSize];
  v48 = v41 + v43 + v47;
  [(UIView *)self bounds];
  v50 = v48 - v49;
  if (v45 <= v48 - v49)
  {
    v50 = v45;
  }

  if (v45 >= v46)
  {
    v51 = v50;
  }

  else
  {
    v51 = v46;
  }

  [(UITableView *)self setContentOffset:v58, v51];
  v52 = round(height * 0.5);
  v53 = (0.0 - v52);
  if (y + v44 > v53)
  {
    v53 = y + v44;
  }

  v54 = round(v53);
  [(UIScrollView *)self contentSize];
  v56 = v55 - v52;
  if (v54 < v56)
  {
    v56 = v54;
  }

  [rect_8 setFrame:{rect, round(v56), width, height}];
  *&v57 = v59 / 10.0;
  if ((v59 / 10.0) < 0.0)
  {
    *&v57 = -(v59 / 10.0);
  }

  *&v57 = 1.0 - *&v57;
  [(UITableView *)self _reorderPositionChangedForCell:rect_8 withScrollFactorPercentage:v57];
LABEL_23:
}

- (void)_notifyDataSourceForMoveOfRowFromIndexPath:(id)a3 toIndexPath:(id)a4
{
  if ((*(&self->_tableFlags + 28) & 0x10) != 0)
  {
    v9 = a4;
    v10 = a3;
    v11 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v10 finalIndexPath:v9 updateAction:3];
    expectedDiffableUpdateItem = self->_expectedDiffableUpdateItem;
    self->_expectedDiffableUpdateItem = v11;

    v13 = [(UITableView *)self _dataSourceProxy];
    [v13 tableView:self moveRowAtIndexPath:v10 toIndexPath:v9];

    v8 = self->_expectedDiffableUpdateItem;
    self->_expectedDiffableUpdateItem = 0;
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v14 = [(UITableView *)self _dataSourceProxy];
    [(UICollectionViewUpdateItem *)v14 tableView:self moveRowAtIndexPath:v7 toIndexPath:v6];

    v8 = v14;
  }
}

- (id)_targetIndexPathAtPoint:(CGPoint)a3 withLastTargetIndexPath:(id)a4 adjustedForGap:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [(UITableViewRowData *)self->_rowData targetIndexPathForPoint:a5 adjustedForGap:x, y];
  if (!v10)
  {
    v10 = v9;
  }

  return v10;
}

- (BOOL)shouldDisplayTopSeparatorForRowAtIndexPath:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 section];
    v7 = [v5 row];
    rowData = self->_rowData;
    if (rowData)
    {
      v9 = rowData->_reorderedIndexPath;
      v10 = v9;
      if (v9 && v6 == [(NSIndexPath *)v9 section]&& v7 <= [(NSIndexPath *)v10 row])
      {
        ++v7;
      }
    }

    else
    {
      v10 = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = __58__UITableView_shouldDisplayTopSeparatorForRowAtIndexPath___block_invoke;
    v24 = &unk_1E7123888;
    v26 = v6;
    v27 = v7;
    v25 = self;
    v11 = self->_rowData;
    if (v11)
    {
      v11 = v11->_gapIndexPath;
    }

    v12 = v11;
    if (v23(v22, v12))
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      [(_UITableViewDragController *)self->_dragController indexPaths];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = v21 = 0u;
      v13 = [v14 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v13)
      {
        v15 = *v19;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v14);
            }

            if (v23(v22, *(*(&v18 + 1) + 8 * i)))
            {
              LOBYTE(v13) = 1;
              goto LABEL_22;
            }
          }

          v13 = [v14 countByEnumeratingWithState:&v18 objects:v28 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

uint64_t __58__UITableView_shouldDisplayTopSeparatorForRowAtIndexPath___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v5 = [v3 section];
  v6 = [v4 row];
  v7 = a1[5];
  if (v7 != v5 || a1[6] != v6 + 1)
  {
    if (v7 == v5 + 1 && !a1[6])
    {
      v8 = [(UITableViewRowData *)*(a1[4] + 2160) hasHeaderForSection:v7]^ 1;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 1;
LABEL_8:

  return v8;
}

- (void)_updateTopSeparatorForCell:(id)a3 atIndexPath:(id)a4
{
  v7 = a3;
  if ([(UITableView *)self shouldDisplayTopSeparatorForRowAtIndexPath:a4])
  {
    v6 = [v7 _drawsTopSeparatorDuringReordering];
  }

  else
  {
    v6 = 0;
  }

  [v7 _setDrawsTopSeparator:v6];
}

- (void)_updateTopSeparatorForVisibleCells
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_visibleCells;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(UITableView *)self _indexPathForCell:v8 usingPresentationValues:1, v10];
        [(UITableView *)self _updateTopSeparatorForCell:v8 atIndexPath:v9];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_ensureViewsAreLoadedInRect:(CGRect)a3
{
  p_tableFlags = &self->_tableFlags;
  *(&self->_tableFlags + 3) |= 2uLL;
  self->_visibleBounds = a3;
  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:0];
  [(UIView *)self layoutBelowIfNeeded];
  *(p_tableFlags + 3) &= ~2uLL;
}

- (id)_visibleCellForGlobalRow:(int64_t)a3
{
  v3 = a3 - self->_visibleRows.location;
  if (v3 < 0 || v3 >= [(NSMutableArray *)self->_visibleCells count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_visibleCells objectAtIndex:v3];
  }

  return v5;
}

- (BOOL)_wasEditingRowAtIndexPath:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableFlags + 14) & 0x20) != 0)
  {
    swipedIndexPath = self->_swipedIndexPath;
    if ((*(&self->_tableFlags + 22) & 8) == 0 && !swipedIndexPath)
    {
      v5 = 1;
      goto LABEL_8;
    }

    if ([(NSIndexPath *)swipedIndexPath isEqual:v4])
    {
      v5 = (*(&self->_tableFlags + 22) & 0x40) == 0;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (BOOL)_isEditingRowAtIndexPath:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableFlags + 14) & 0x40) != 0)
  {
    v6 = *(&self->_tableFlags + 2);
    if ((v6 & 0x8000000000000) == 0)
    {
      v5 = 1;
      goto LABEL_10;
    }

    swipedIndexPath = self->_swipedIndexPath;
    if (!swipedIndexPath || [(NSIndexPath *)swipedIndexPath isEqual:v4]&& (*(&self->_tableFlags + 15) & 2) == 0 && (v6 = *(&self->_tableFlags + 2), (v6 & 0x2000000000000) == 0))
    {
      v5 = (v6 & 0x40000000000000) == 0;
      goto LABEL_10;
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (int64_t)_globalReorderingRow
{
  reorderingSupport = self->_reorderingSupport;
  if (reorderingSupport && reorderingSupport->_initialIndexPath)
  {
    return [(UITableView *)self globalRowForRowAtIndexPath:?];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)_popReusableHeaderView:(BOOL)a3
{
  v3 = !a3;
  if (a3)
  {
    v4 = @"__UITableViewHeaderDefaultReuseIdentifier";
  }

  else
  {
    v4 = @"__UITableViewFooterDefaultReuseIdentifier";
  }

  p_tableFlags = &self->_tableFlags;
  v6 = *(&self->_tableFlags + 2);
  v7 = 2048;
  if (!v3)
  {
    v7 = 0;
  }

  *(&self->_tableFlags + 2) = v6 & 0xFFFFFFFFFFFFF7FFLL | v7;
  result = [(UITableView *)self dequeueReusableHeaderFooterViewWithIdentifier:v4];
  *(p_tableFlags + 2) = *(p_tableFlags + 2) & 0xFFFFFFFFFFFFF7FFLL | (((v6 >> 11) & 1) << 11);
  return result;
}

- (id)_sectionHeaderView:(BOOL)a3 withFrame:(CGRect)a4 forSection:(int64_t)a5 floating:(BOOL)a6 visibleRectDisplacement:(double)a7 reuseViewIfPossible:(BOOL)a8 willDisplay:(BOOL)a9
{
  v9 = a9;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3;
  context = objc_autoreleasePoolPush();
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v49 = __120__UITableView__sectionHeaderView_withFrame_forSection_floating_visibleRectDisplacement_reuseViewIfPossible_willDisplay___block_invoke;
  v50 = &unk_1E71238B0;
  v52 = x;
  v53 = y;
  v54 = width;
  v55 = height;
  v51 = self;
  v57 = a6;
  v56 = a7;
  v58 = v18;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__194;
  v46 = __Block_byref_object_dispose__194;
  v47 = 0;
  if ((*(&self->_tableFlags + 25) & 8) != 0)
  {
    if (v18)
    {
      tentativeHeaderViews = self->_tentativeHeaderViews;
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
      v25 = [(NSMutableDictionary *)tentativeHeaderViews objectForKey:v24];
      v26 = v43[5];
      v43[5] = v25;

      v27 = v43[5];
      if (v27)
      {
        IsKindOfUITableViewHeaderFooterView = _IsKindOfUITableViewHeaderFooterView(v43[5]);
        v49(v48, v27, IsKindOfUITableViewHeaderFooterView);
        if (v9)
        {
          [(UITableView *)self _notifyWillDisplayHeaderFooterView:v43[5] forSection:a5 isHeader:1];
        }

        goto LABEL_14;
      }
    }

    else
    {
      tentativeFooterViews = self->_tentativeFooterViews;
      v30 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
      v31 = [(NSMutableDictionary *)tentativeFooterViews objectForKey:v30];
      v32 = v43[5];
      v43[5] = v31;

      v33 = v43[5];
      if (v33)
      {
        v34 = _IsKindOfUITableViewHeaderFooterView(v43[5]);
        v49(v48, v33, v34);
        if (v9)
        {
          [(UITableView *)self _notifyWillDisplayHeaderFooterView:v43[5] forSection:a5 isHeader:0];
        }

        goto LABEL_14;
      }
    }
  }

  if ((*(&self->_tableFlags + 30) & 0x20) == 0)
  {
    _UIQOSExpectComplexCommit("UITVHFV");
  }

  v20 = _UISetCurrentFallbackEnvironment(self);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __120__UITableView__sectionHeaderView_withFrame_forSection_floating_visibleRectDisplacement_reuseViewIfPossible_willDisplay___block_invoke_2;
  v38[3] = &unk_1E71238D8;
  v39 = v18;
  v38[4] = self;
  v38[5] = &v42;
  v38[6] = a5;
  v38[7] = v48;
  v40 = a8;
  *&v38[8] = x;
  *&v38[9] = y;
  *&v38[10] = width;
  *&v38[11] = height;
  v41 = a6;
  *&v38[12] = a7;
  [UIView performWithoutAnimation:v38];
  _UIRestorePreviousFallbackEnvironment(v20);
  v21 = v43;
  if (v9)
  {
    v22 = v43[5];
    if (v22)
    {
      [(UITableView *)self _notifyWillDisplayHeaderFooterView:v22 forSection:a5 isHeader:v18];
LABEL_14:
      v21 = v43;
    }
  }

  v35 = v21[5];
  _Block_object_dispose(&v42, 8);

  objc_autoreleasePoolPop(context);

  return v35;
}

void __120__UITableView__sectionHeaderView_withFrame_forSection_floating_visibleRectDisplacement_reuseViewIfPossible_willDisplay___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = *(a1 + 56);
    v7 = *(a1 + 64);
    v9 = a2;
  }

  else
  {
    v5 = *(a1 + 48);
    v10 = *(a1 + 56);
    v7 = *(a1 + 64);
    v11 = *(a1 + 32);
    v12 = a2;
    [v11 _sectionContentInset];
    v6 = v13;
    v8 = v10 - (v13 + v14);
  }

  [a2 setFrame:{v6, v5, v8, v7}];
  [*(a1 + 32) _updateIsFloating:*(a1 + 80) withVisibleRectDisplacement:a2 forHeaderFooterView:a3 isStandardHeaderFooter:*(a1 + 81) isHeader:*(a1 + 72)];
}

uint64_t __120__UITableView__sectionHeaderView_withFrame_forSection_floating_visibleRectDisplacement_reuseViewIfPossible_willDisplay___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 3168);
  if (*(a1 + 104) == 1)
  {
    if ((v2 & 0x10000000000) == 0)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_22;
    }
  }

  else if ((v2 & 0x20000000000) == 0)
  {
    goto LABEL_3;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableView", &qword_1EA967588);
  v5 = *(CategoryCachedImpl + 8);
  if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), *(a1 + 32)) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    _os_signpost_emit_unreliably_with_name_impl();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if (*(a1 + 104) == 1)
  {
    [v6 _delegateViewForHeaderInSection:v7];
  }

  else
  {
    [v6 _delegateViewForFooterInSection:v7];
  }
  v8 = ;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);

  v9 = __UILogGetCategoryCachedImpl("TableView", &qword_1EA967590);
  v10 = *(v9 + 8);
  if (os_signpost_id_make_with_pointer(*(v9 + 8), *(a1 + 32)) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v44) = 0;
    _os_signpost_emit_unreliably_with_name_impl();
  }

  v11 = *(*(*(a1 + 40) + 8) + 40);
  if (v11)
  {
    IsKindOfUITableViewHeaderFooterView = _IsKindOfUITableViewHeaderFooterView(v11);
    (*(*(a1 + 56) + 16))();
    if (IsKindOfUITableViewHeaderFooterView)
    {
      v13 = *(a1 + 32);
      if (*(a1 + 104))
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      v15 = *(*(*(a1 + 40) + 8) + 40);
      [v13 _ensureReturnedView:v15 isNotContainedInReusePoolForViewType:v14];
      [*(a1 + 32) _setupSectionView:v15 isHeader:*(a1 + 104) forSection:*(a1 + 48)];
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *(*(a1 + 32) + 3192) |= 0x20000000000000uLL;
  }

LABEL_22:
  v16 = *(*(*(a1 + 40) + 8) + 40);
  if (!v16 || _IsKindOfUITableViewHeaderFooterView(v16))
  {
    v17 = *(a1 + 32);
    v18 = v17[396];
    if (*(a1 + 104) == 1)
    {
      if ((v18 & 8) == 0)
      {
        goto LABEL_32;
      }

      v19 = [v17 _dataSourceProxy];
      v20 = [v19 tableView:*(a1 + 32) titleForHeaderInSection:*(a1 + 48)];
    }

    else
    {
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      v19 = [v17 _dataSourceProxy];
      v20 = [v19 tableView:*(a1 + 32) titleForFooterInSection:*(a1 + 48)];
    }

    v21 = v20;

    if (v21)
    {
      v22 = *(a1 + 40);
      goto LABEL_36;
    }

    *(*(a1 + 32) + 3192) |= 0x20000000000000uLL;
    v17 = *(a1 + 32);
LABEL_32:
    v22 = *(a1 + 40);
    if (((v17[397] >> 45) & 3uLL) - 1 > 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v23 = 0;
      if (!*(*(v22 + 8) + 40))
      {
LABEL_51:
        [v23 setAlpha:1.0];

        goto LABEL_52;
      }
    }

LABEL_36:
    v24 = *(*(v22 + 8) + 40);
    if (v24 || *(a1 + 105) == 1 && ([*(a1 + 32) _popReusableHeaderView:*(a1 + 104)], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v24;
      [v24 setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
      v26 = *(*(a1 + 32) + 2160);
      v27 = *(a1 + 48);
      if (*(a1 + 104) == 1)
      {
        v28 = [(UITableViewRowData *)v26 maxHeaderTitleWidthForSection:v27];
      }

      else
      {
        v28 = [(UITableViewRowData *)v26 maxFooterTitleWidthForSection:v27];
      }

      [v25 setMaxTitleWidth:v28];
    }

    else
    {
      v25 = [*(a1 + 32) _newSectionViewWithFrame:*(a1 + 48) forSection:*(a1 + 104) isHeader:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
    }

    v29 = *(a1 + 32);
    if ((*(v29 + 3168) & 0x20) != 0)
    {
      v31 = [v29 _dataSourceProxy];
      v30 = [v31 tableView:*(a1 + 32) detailTextForHeaderInSection:*(a1 + 48)];

      v29 = *(a1 + 32);
    }

    else
    {
      v30 = 0;
    }

    v32 = *(v29 + 2160);
    v33 = *(a1 + 48);
    if (*(a1 + 104) == 1)
    {
      v34 = [(UITableViewRowData *)v32 headerAlignmentForSection:v33];
    }

    else
    {
      v34 = [(UITableViewRowData *)v32 footerAlignmentForSection:v33];
    }

    LOBYTE(v43) = v3;
    [*(a1 + 32) _configureTableHeaderFooterView:v25 forHeader:*(a1 + 104) section:*(a1 + 48) floating:*(a1 + 106) visibleRectDisplacement:v21 withTitle:v30 detailText:*(a1 + 96) textAlignment:v34 fromClient:{v43, v44}];
    v35 = *(*(a1 + 40) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v25;

    v23 = *(*(*(a1 + 40) + 8) + 40);
    goto LABEL_51;
  }

LABEL_52:
  [*(*(*(a1 + 40) + 8) + 40) setAutoresizingMask:2];
  [*(*(*(a1 + 40) + 8) + 40) setNeedsDisplayOnBoundsChange:1];
  [*(*(*(a1 + 40) + 8) + 40) _setHiddenForReuse:0];
  v37 = *(*(*(a1 + 40) + 8) + 40);
  if (v37)
  {
    v38 = *(a1 + 32);
    if ((*(v38 + 3193) & 8) != 0)
    {
      v39 = 49;
      if (*(a1 + 104))
      {
        v39 = 48;
      }

      v40 = *(v38 + OBJC_IVAR___UITableView__rowData[v39]);
      v41 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
      [v40 setObject:v37 forKey:v41];
    }
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(*(*(a1 + 40) + 8) + 40) setEditing:objc_msgSend(*(a1 + 32) animated:{"isEditing"), 0}];
  }

  return result;
}

- (void)_updateIsFloating:(BOOL)a3 withVisibleRectDisplacement:(double)a4 forHeaderFooterView:(id)a5 isStandardHeaderFooter:(BOOL)a6 isHeader:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v10 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = v12;
  if (v8)
  {
    [v12 setFloating:v10];
  }

  if (_UIFloatingBarEnabled())
  {
    v14 = 1.0;
    if (v10)
    {
      +[_UIScrollPocketContainerInteraction _pinnedElementFadeDistance];
      if (v15 > 0.0)
      {
        v16 = a4 / v15;
        if (v16 > 1.0)
        {
          v16 = 1.0;
        }

        v14 = 1.0 - v16 + v16 * 0.0;
      }
    }

    [v13 setAlpha:v14];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = [v13 interactions];
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = *v30;
      while (2)
      {
        for (i = 0; i != v18; i = (i + 1))
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v21;
            goto LABEL_19;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v22 = [(UITableView *)self _headerAndFooterViewsFloat];
    if (!v22 || v18)
    {
      if (v18)
      {
        v25 = v22;
      }

      else
      {
        v25 = 1;
      }

      if ((v25 & 1) == 0)
      {
        [v13 removeInteraction:v18];
      }
    }

    else
    {
      v23 = [_UIScrollPocketContainerInteraction alloc];
      if (v7)
      {
        v24 = 1;
      }

      else
      {
        v24 = 4;
      }

      v18 = [(_UIScrollPocketContainerInteraction *)v23 initWithEdge:v24];
      [v13 addInteraction:v18];
    }

    if (v10)
    {
      v26 = [v13 traitOverrides];
      v27 = objc_opt_self();
      [v26 setNSIntegerValue:1 forTrait:v27];
    }

    else
    {
      v26 = [(UIView *)v13 _traitOverridesIfExist];
      v27 = objc_opt_self();
      [v26 removeTrait:v27];
    }

    if (v18)
    {
      if (v7)
      {
        v28 = 1;
      }

      else
      {
        v28 = 4;
      }

      [(_UIScrollPocketContainerInteraction *)v18 _setEdge:v28];
      [(_UIScrollPocketContainerInteraction *)v18 _setActive:v10];
    }
  }
}

- (void)_configureTableHeaderFooterView:(id)a3 forHeader:(BOOL)a4 section:(int64_t)a5 floating:(BOOL)a6 visibleRectDisplacement:(double)a7 withTitle:(id)a8 detailText:(id)a9 textAlignment:(int64_t)a10 fromClient:(BOOL)a11
{
  v14 = a6;
  v16 = a4;
  v30 = a3;
  v18 = a8;
  v19 = a9;
  [(UITableView *)self _updateIsFloating:v14 withVisibleRectDisplacement:v30 forHeaderFooterView:1 isStandardHeaderFooter:v16 isHeader:a7];
  [v30 setSectionHeader:v16];
  if (v16)
  {
    [v30 _setTopHeader:{-[UITableView _isTopHeaderForSection:](self, "_isTopHeaderForSection:", a5)}];
    -[UITableView _headerFooterLeadingMarginWidthIsHeader:isFirstSection:](self, "_headerFooterLeadingMarginWidthIsHeader:isFirstSection:", 1, [v30 _isTopHeader]);
    [v30 _setMarginWidth:?];
    [(UITableView *)self _headerFooterTrailingMarginWidth];
    [v30 _setRightMarginWidth:?];
    [v30 _setInsetsContentViewsToSafeArea:{-[UITableView insetsContentViewsToSafeArea](self, "insetsContentViewsToSafeArea")}];
    v20 = [(UITableView *)self _shouldStripHeaderTopPaddingForSection:a5];
  }

  else
  {
    [v30 _setTopHeader:0];
    -[UITableView _headerFooterLeadingMarginWidthIsHeader:isFirstSection:](self, "_headerFooterLeadingMarginWidthIsHeader:isFirstSection:", 0, [v30 _isTopHeader]);
    [v30 _setMarginWidth:?];
    [(UITableView *)self _headerFooterTrailingMarginWidth];
    [v30 _setRightMarginWidth:?];
    [v30 _setInsetsContentViewsToSafeArea:{-[UITableView insetsContentViewsToSafeArea](self, "insetsContentViewsToSafeArea")}];
    v20 = 0;
  }

  [v30 _setStripPadding:v20];
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_TableViewHeadersFootersUseModernConfiguration, @"TableViewHeadersFootersUseModernConfiguration", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1EA95E72C || a11)
  {
    if (v18)
    {
      v25 = [(UITableView *)self _constants];
      v26 = [v25 shouldUppercaseHeaderFooterTextForTableStyle:(*(&self->_tableFlags + 1) >> 45) & 3 isHeader:v16];

      if (v26)
      {
        v27 = [v18 localizedUppercaseString];

        v18 = v27;
      }

      v28 = [v30 textLabel];
      [v28 setText:v18];
    }

    if (v19)
    {
      v29 = [v30 detailTextLabel];
      [v29 setText:v19];
    }

    [v30 setTextAlignment:a10];
  }

  else
  {
    v21 = [v30 defaultContentConfiguration];
    [v21 setText:v18];
    [v21 setSecondaryText:v19];
    if (a10 == 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2 * (a10 == 3);
    }

    v23 = [v21 textProperties];
    [v23 setAlignment:v22];

    v24 = [v21 secondaryTextProperties];
    [v24 setAlignment:v22];

    [v30 setContentConfiguration:v21];
  }

  [v30 setNeedsLayout];
}

- (void)_setupCell:(id)a3 forEditing:(BOOL)a4 atIndexPath:(id)a5 canEdit:(BOOL)a6 editingStyle:(int64_t)a7 shouldIndentWhileEditing:(BOOL)a8 showsReorderControl:(BOOL)a9 accessoryType:(int64_t)a10 animated:(BOOL)a11 updateSeparators:(BOOL)a12
{
  v12 = a8;
  v14 = a6;
  v16 = a4;
  v24 = a3;
  v18 = a5;
  if ((*(&self->_tableFlags + 5) & 0x10) == 0 || ([v24 setAccessoryType:a10], objc_msgSend(v24, "_target"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_10:
    v20 = v24;
    goto LABEL_11;
  }

  [v24 _setTarget:self];
  [v24 _setAccessoryAction:sel__accessoryButtonAction_];
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_4:
  v20 = v24;
  if (!v16)
  {
LABEL_11:
    [v20 _setShowsReorderControl:a9];
    [v24 setEditing:0 animated:a11];
    [v24 _setEditingStyle:0];
    [v24 _setShouldIndentWhileEditing:0];
    [v24 setWasSwiped:0];
    [v24 _setShowingDeleteConfirmation:0];
    v22 = &self->_tableFlags + 2;
    v23 = 0x4000;
    goto LABEL_12;
  }

  v21 = 0;
  v22 = &self->_tableFlags + 2;
  if (v18 && (*(&self->_tableFlags + 2) & 0x8000000000000) != 0)
  {
    v21 = [(NSIndexPath *)self->_swipedIndexPath isEqual:v18];
    v20 = v24;
  }

  [v20 _setShowsReorderControl:a9];
  [v24 _setEditingStyle:a7];
  [v24 _setShouldIndentWhileEditing:v12];
  [v24 setWasSwiped:v21];
  [v24 _setShowingDeleteConfirmation:v21];
  [v24 setEditing:1 animated:a11];
  v23 = 0x8000;
LABEL_12:
  [v24 _setMultiselecting:(*v22 & v23) != 0];
  if (v18 && a12)
  {
    [(UITableView *)self _updateSeparatorStateForCell:v24 atIndexPath:v18];
    [v24 _setNeedsSetup:0];
  }
}

- (void)_setupCell:(id)a3 forEditing:(BOOL)a4 atIndexPath:(id)a5 animated:(BOOL)a6 updateSeparators:(BOOL)a7
{
  v10 = a4;
  v27 = a3;
  v13 = a5;
  if (!v13)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = NSStringFromSelector(a2);
    [v23 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:16727 description:{@"UITableView internal inconsistency: indexPath cannot be nil in %@", v24}];
  }

  if ((*(&self->_tableFlags + 5) & 0x10) != 0)
  {
    v14 = [(UITableView *)self _accessoryTypeForCell:v27 forRowAtIndexPath:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(UITableView *)self _canEditRowAtIndexPath:v13];
  v16 = v15;
  v17 = *(&self->_tableFlags + 3);
  if (!v10)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    LOBYTE(v22) = 0;
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v15)
  {
    v18 = [(UITableView *)self _editingStyleForRowAtIndexPath:v13];
    v19 = [(UITableView *)self _shouldIndentWhileEditingForRowAtIndexPath:v13];
LABEL_10:
    LOBYTE(v22) = [(UITableView *)self _canReorderRowAtIndexPath:v13];
    v20 = v18;
    v21 = v19;
    goto LABEL_12;
  }

  v20 = 0;
  v21 = 0;
  v22 = (v17 >> 7) & 1;
LABEL_12:
  BYTE1(v26) = a7;
  LOBYTE(v26) = a6;
  LOBYTE(v25) = v22;
  [(UITableView *)self _setupCell:v27 forEditing:v10 atIndexPath:v13 canEdit:v16 editingStyle:v20 shouldIndentWhileEditing:v21 showsReorderControl:v25 accessoryType:v14 animated:v26 updateSeparators:?];
}

- (BOOL)_hasFocusedCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_focusedCell && self->_focusedCellIndexPath && self->_focusedViewType == 1)
  {
    v6 = [v4 isEqual:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_configureCachedCellForDisplay:(id)a3 forIndexPath:(id)a4
{
  if ((dyld_program_sdk_at_least() & 1) != 0 || [(UITableView *)self _supportsCellPrefetching])
  {
    [a3 _setNeedsSetup:1];

    [(UITableView *)self _configureCellForDisplay:a3 forIndexPath:a4];
  }

  else
  {
    [(UITableView *)self _rectForRowAtIndexPath:a4 canGuess:(*(&self->_tableFlags + 3) >> 11) & 1];

    [a3 setFrame:?];
  }
}

- (id)_prefetchedCellForRowAtIndexPath:(id)a3 willDisplay:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa prefetchedCellAtIndexPath:a3];
  if (v7)
  {
    v8 = !v4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableView", &_prefetchedCellForRowAtIndexPath_willDisplay____s_category);
    v10 = *(CategoryCachedImpl + 8);
    if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      [a3 section];
      [a3 row];
      _os_signpost_emit_unreliably_with_name_impl();
    }

    [(UITableView *)self _configureCachedCellForDisplay:v7 forIndexPath:a3];
  }

  return v7;
}

- (id)_createPreparedCellForGlobalRow:(int64_t)a3 withIndexPath:(id)a4 willDisplay:(BOOL)a5
{
  v5 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  if (!v10)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:16812 description:{@"UITableView internal inconsistency: cannot create a cell with a nil index path for global row %ld.", a3}];
  }

  v12 = [(NSMutableDictionary *)self->_tentativeCells objectForKeyedSubscript:v10];
  if (!v12)
  {
    v12 = [(UITableView *)self _prefetchedCellForRowAtIndexPath:v10 willDisplay:v5];
    if (!v12)
    {
      v17 = [(UITableView *)self _reorderingSupport];
      v18 = v17;
      if (v17 && *(v17 + 8) && [*(v17 + 16) isEqual:v10])
      {
        v15 = v18[1];
LABEL_20:
        v14 = 0;
LABEL_57:

        goto LABEL_8;
      }

      if (self->_firstResponderIndexPath && self->_firstResponderViewType == 1 && [v10 isEqual:?])
      {
        v19 = 2320;
LABEL_19:
        v15 = *(&self->super.super.super.super.isa + v19);
        [(UITableView *)self _configureCachedCellForDisplay:v15 forIndexPath:v10];
        goto LABEL_20;
      }

      if ([(UITableView *)self _hasFocusedCellForIndexPath:v10])
      {
        v19 = 3248;
        goto LABEL_19;
      }

      _UIQOSExpectComplexCommit("UITVCell");
      if (self->_cellBeingReconfigured)
      {
        v39 = [MEMORY[0x1E696AAA8] currentHandler];
        [v39 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:16848 description:{@"Performing side effects on UITableView that cause a new cell to be requested while an existing row is being reconfigured is not allowed. Check the backtrace to see what's causing this. Table view: %@", self}];
      }

      v20 = _UISetCurrentFallbackEnvironment(self);
      objc_storeStrong(&self->_indexPathBeingCreated, a4);
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);

      if (!WeakRetained)
      {
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        [v40 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:16854 description:@"UITableView dataSource is not set"];
      }

      tableFlags = self->_tableFlags;
      if ((tableFlags & 2) == 0)
      {
        if ((tableFlags & 0x8000000) == 0)
        {
LABEL_27:
          v23 = [MEMORY[0x1E696AAA8] currentHandler];
          v24 = objc_loadWeakRetained(&self->_dataSource);
          [v23 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:16875 description:{@"UITableView dataSource returned a nil cell for row at index path: %@. Table view: %@, dataSource: %@", v10, self, v24}];

          v25 = 0;
LABEL_46:
          [(UITableView *)self _ensureReturnedView:v25 isNotContainedInReusePoolForViewType:1];
          [(NSMutableDictionary *)self->_tentativeCells setObject:v25 forKeyedSubscript:v10];
          [(UITableView *)self _configureCellForDisplay:v25 forIndexPath:v10];
          indexPathBeingCreated = self->_indexPathBeingCreated;
          self->_indexPathBeingCreated = 0;

          _UIRestorePreviousFallbackEnvironment(v20);
          if ((*(&self->_tableFlags + 15) & 2) != 0)
          {
            [v25 removeFromSuperview];
          }

          if (v5)
          {
            [(UITableView *)self _notifyWillDisplayCell:v25 forIndexPath:v10];
          }

          if (dyld_program_sdk_at_least())
          {
            if ((*(&self->_tableFlags + 15) & 2) == 0)
            {
              v36 = [(UIView *)self window];

              if (v36)
              {
                v37 = _UISetCurrentFallbackEnvironment(self);
                v42[0] = MEMORY[0x1E69E9820];
                v42[1] = 3221225472;
                v42[2] = __73__UITableView__createPreparedCellForGlobalRow_withIndexPath_willDisplay___block_invoke_1188;
                v42[3] = &unk_1E70F3590;
                v43 = v25;
                [UIView performWithoutAnimation:v42];
                _UIRestorePreviousFallbackEnvironment(v37);
              }
            }
          }

          if ([(UITableView *)self _cellPrefetchingAllowed])
          {
            [(_UITableViewSubviewManager *)self->_subviewManager storePrefetchedCell:v25 forIndexPath:v10];
          }

          v14 = v25;
          v15 = v14;
          goto LABEL_57;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __73__UITableView__createPreparedCellForGlobalRow_withIndexPath_willDisplay___block_invoke;
        block[3] = &unk_1E70F3590;
        block[4] = self;
        if (qword_1EA9675B8 != -1)
        {
          dispatch_once(&qword_1EA9675B8, block);
        }

        v30 = objc_loadWeakRetained(&self->super._delegate);
        v25 = [v30 tableView:self cellForRowAtIndexPath:v10];
LABEL_45:

        if (v25)
        {
          goto LABEL_46;
        }

        goto LABEL_27;
      }

      v41 = v20;
      if (_isNotifyingIdleObservers == 1)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("TableView", &qword_1EA967598);
        v27 = *(CategoryCachedImpl + 8);
        if (os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          v45 = 134218240;
          v46 = [v10 section];
          v47 = 2048;
          v48 = [v10 row];
          _os_signpost_emit_unreliably_with_name_impl();
        }

        v28 = [(UITableView *)self _dataSourceProxy];
        v25 = [v28 tableView:self cellForRowAtIndexPath:v10];

        v29 = __UILogGetCategoryCachedImpl("TableView", &qword_1EA9675A0);
        v30 = *(v29 + 8);
        if (os_signpost_id_make_with_pointer(*(v29 + 8), self) - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v31 = __UILogGetCategoryCachedImpl("TableView", &qword_1EA9675A8);
        v32 = *(v31 + 8);
        if (os_signpost_id_make_with_pointer(*(v31 + 8), self) - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          v45 = 134218240;
          v46 = [v10 section];
          v47 = 2048;
          v48 = [v10 row];
          _os_signpost_emit_unreliably_with_name_impl();
        }

        v33 = [(UITableView *)self _dataSourceProxy];
        v25 = [v33 tableView:self cellForRowAtIndexPath:v10];

        v34 = __UILogGetCategoryCachedImpl("TableView", &qword_1EA9675B0);
        v30 = *(v34 + 8);
        if (os_signpost_id_make_with_pointer(*(v34 + 8), self) - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
        {
          goto LABEL_44;
        }
      }

      v45 = 67109120;
      LODWORD(v46) = [v25 _hasBeenReused];
      _os_signpost_emit_unreliably_with_name_impl();
LABEL_44:
      v20 = v41;
      goto LABEL_45;
    }
  }

  v13 = v12;
  if (v5)
  {
    [(UITableView *)self _notifyWillDisplayCell:v12 forIndexPath:v10];
  }

  v14 = v13;
  v15 = v14;
LABEL_8:

  objc_autoreleasePoolPop(v11);
  return v15;
}

void __73__UITableView__createPreparedCellForGlobalRow_withIndexPath_willDisplay___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("TableView", &_UIInternalPreference_TableViewHeadersFootersUseModernConfiguration_block_invoke_5___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((v3 + 408));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "The -tableView:cellForRowAtIndexPath: method must be implemented by the UITableViewDataSource, not the UITableViewDelegate. This error will cause undefined behavior. Please move the implementation of this method to the data source of this table view, instead of the delegate: %@", &v6, 0xCu);
  }
}

- (id)_createPreparedCellForGlobalRow:(int64_t)a3 willDisplay:(BOOL)a4
{
  v4 = a4;
  v7 = [(UITableView *)self indexPathForRowAtGlobalRow:?];
  v8 = [(UITableView *)self _createPreparedCellForGlobalRow:a3 withIndexPath:v7 willDisplay:v4];

  return v8;
}

- (id)_createPreparedCellForRowAtIndexPath:(id)a3 willDisplay:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITableView *)self _createPreparedCellForGlobalRow:[(UITableView *)self globalRowForRowAtIndexPath:v6] withIndexPath:v6 willDisplay:v4];

  return v7;
}

- (void)_notifyWillDisplayCell:(id)a3 forIndexPath:(id)a4
{
  v8 = a3;
  if ((*(&self->_tableFlags + 3) & 0x10) != 0)
  {
    v6 = a4;
    v7 = [(UITableView *)self _delegateProxy];
    [v7 tableView:self willDisplayCell:v8 forRowAtIndexPath:v6];
  }

  [v8 _notifyIsDisplaying:1];
}

- (void)_notifyDidEndDisplayingCell:(id)a3 forIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  [v8 _notifyIsDisplaying:0];
  if ((*(&self->_tableFlags + 3) & 0x20) != 0)
  {
    v7 = [(UITableView *)self _delegateProxy];
    [v7 tableView:self didEndDisplayingCell:v8 forRowAtIndexPath:v6];
  }
}

- (void)_notifyWillDisplayHeaderFooterView:(id)a3 forSection:(int64_t)a4 isHeader:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = *(&self->_tableFlags + 1);
  v11 = v8;
  if (v5)
  {
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    v10 = [(UITableView *)self _delegateProxy];
    [v10 tableView:self willDisplayHeaderView:v11 forSection:a4];
  }

  else
  {
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    v10 = [(UITableView *)self _delegateProxy];
    [v10 tableView:self willDisplayFooterView:v11 forSection:a4];
  }

  v8 = v11;
LABEL_7:
  if (_IsKindOfUITableViewHeaderFooterView(v8))
  {
    [v11 _notifyIsDisplaying:1];
  }
}

- (void)_notifyDidEndDisplayingHeaderFooterView:(id)a3 forSection:(int64_t)a4 isHeader:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  if (_IsKindOfUITableViewHeaderFooterView(v10))
  {
    [v10 _notifyIsDisplaying:0];
  }

  tableFlags = self->_tableFlags;
  if (v5)
  {
    if ((tableFlags & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    v9 = [(UITableView *)self _delegateProxy];
    [v9 tableView:self didEndDisplayingHeaderView:v10 forSection:a4];
  }

  else
  {
    if ((tableFlags & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    v9 = [(UITableView *)self _delegateProxy];
    [v9 tableView:self didEndDisplayingFooterView:v10 forSection:a4];
  }

LABEL_9:
}

- (id)_visibleHeaderViewForSection:(int64_t)a3
{
  visibleHeaderViews = self->_visibleHeaderViews;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)visibleHeaderViews objectForKey:v4];

  return v5;
}

- (id)_existingHeaderViewForSection:(int64_t)a3
{
  v5 = [(UITableView *)self _visibleSectionForSectionAdjustedForCurrentUpdate:?];
  visibleHeaderViews = self->_visibleHeaderViews;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v8 = [(NSMutableDictionary *)visibleHeaderViews objectForKey:v7];

  if (!v8 && (*(&self->_tableFlags + 25) & 8) != 0)
  {
    tentativeHeaderViews = self->_tentativeHeaderViews;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(NSMutableDictionary *)tentativeHeaderViews objectForKey:v12];
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (id)_visibleFooterViewForSection:(int64_t)a3
{
  visibleFooterViews = self->_visibleFooterViews;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)visibleFooterViews objectForKey:v4];

  return v5;
}

- (id)_existingFooterViewForSection:(int64_t)a3
{
  v5 = [(UITableView *)self _visibleSectionForSectionAdjustedForCurrentUpdate:?];
  visibleFooterViews = self->_visibleFooterViews;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v8 = [(NSMutableDictionary *)visibleFooterViews objectForKey:v7];

  if (!v8 && (*(&self->_tableFlags + 25) & 8) != 0)
  {
    tentativeFooterViews = self->_tentativeFooterViews;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(NSMutableDictionary *)tentativeFooterViews objectForKey:v12];
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)_tableHeaderHeightDidChangeToHeight:(double)a3
{
  [(UITableView *)self _ensureRowDataIsLoaded];
  [(UITableViewRowData *)self->_rowData tableHeaderHeightDidChangeToHeight:a3];
  [(UITableView *)self _updateContentSize];

  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
}

- (void)_tableFooterHeightDidChangeToHeight:(double)a3
{
  [(UITableView *)self _ensureRowDataIsLoaded];
  rowData = self->_rowData;
  if (rowData)
  {
    rowData->_tableFooterHeight = a3;
  }

  [(UITableView *)self _updateContentSize];

  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
}

- (void)_drawExtraSeparator:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = *(&self->_tableFlags + 7) & 7;
  v8 = [(UITableView *)self separatorColor];
  if ((v7 - 1) <= 1)
  {
    v9 = v8;
    [v8 set];
    UIRectFillUsingOperation(1, x, y, width, height);
    v8 = v9;
  }
}

- (BOOL)_isCellReorderable:(id)a3
{
  v3 = self;
  v4 = [(UITableView *)self _indexPathForCell:a3 usingPresentationValues:1];
  LOBYTE(v3) = [(UITableView *)v3 _canReorderRowAtIndexPath:v4];

  return v3;
}

- (id)_titleForDeleteConfirmationButton:(id)a3
{
  v4 = [(UITableView *)self _indexPathForCell:a3 usingPresentationValues:1];
  v5 = [(UITableView *)self _titleForDeleteConfirmationButtonForRowAtIndexPath:v4];

  return v5;
}

- (BOOL)_isLastRowForIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 section], v6 == -[UITableView _numberOfSectionsUsingPresentationValues:](self, "_numberOfSectionsUsingPresentationValues:", 1) - 1))
  {
    v7 = [v5 row];
    v8 = v7 == -[UITableView _numberOfRowsInSection:usingPresentationValues:](self, "_numberOfRowsInSection:usingPresentationValues:", [v5 section], 1) - 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)_shadowHeightOffset
{
  v3 = [(UITableView *)self _reorderingSupport];
  v4 = v3;
  v5 = 0.0;
  if (v3 && [(UITableView *)self _isLastRowForIndexPath:*(v3 + 24)])
  {
    [v4[1] frame];
    v5 = -v6;
  }

  return v5;
}

- (id)_retargetedReorderIndexPathForInitialIndexPath:(id)a3 proposedIndexPath:(id)a4
{
  v7 = a4;
  v8 = v7;
  if ((*(&self->_tableFlags + 6) & 0x40) != 0)
  {
    v10 = a3;
    if (os_variant_has_internal_diagnostics())
    {
      if (!v10)
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *v30 = 0;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Cannot pass a nil initialTargetIndexPath to the delegate callback per API contract!", v30, 2u);
        }
      }
    }

    else if (!v10)
    {
      v25 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA9675C0) + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Cannot pass a nil initialTargetIndexPath to the delegate callback per API contract!", buf, 2u);
      }
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (!v8)
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *v28 = 0;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Cannot pass a nil newTargetIndexPath to the delegate callback per API contract!", v28, 2u);
        }
      }
    }

    else if (!v8)
    {
      v26 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA9675C8) + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Cannot pass a nil newTargetIndexPath to the delegate callback per API contract!", v27, 2u);
      }
    }

    v11 = [(UITableView *)self _delegateProxy];
    v9 = [v11 tableView:self targetIndexPathForMoveFromRowAtIndexPath:v10 toProposedIndexPath:v8];

    v12 = NSStringFromSelector(sel_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_);
    if (!v9)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:17085 description:{@"UITableView delegate method %@ needs to return a non-nil value", v12}];
    }

    v13 = [v9 section];
    rowData = self->_rowData;
    if (rowData)
    {
      rowData = rowData->_numSections;
    }

    if (v13 >= rowData)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [v9 section];
      v22 = [v9 row];
      v23 = self->_rowData;
      if (v23)
      {
        v23 = v23->_numSections;
      }

      [v20 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:17086 description:{@"UITableView delegate method %@ returned an invalid target index path (section: %ld, row: %ld) because there are only %ld sections in the table view.", v12, v21, v22, v23}];
    }

    v15 = [v9 row];
    if (v15 > -[UITableViewRowData numberOfRowsInSection:](self->_rowData, [v9 section]))
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:17087 description:{@"UITableView delegate method %@ returned an invalid target index path (section: %ld, row: %ld) because there are only %ld rows in this section of the table view.", v12, objc_msgSend(v9, "section"), objc_msgSend(v9, "row"), -[UITableViewRowData numberOfRowsInSection:](self->_rowData, objc_msgSend(v9, "section"))}];
    }
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (void)_reorderPositionChangedForCell:(id)a3 withScrollFactorPercentage:(float)a4
{
  v5 = a3;
  v6 = [(UITableView *)self _reorderingSupport];
  [v5 frame];
  rect.origin.x = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(UITableView *)self _contentInset];
  v23 = v15 + v22;
  v25 = v17 + v24;
  v27 = v19 - (v22 + v26);
  v29 = v21 - (v24 + v28);
  v30 = *(v6 + 16);
  if (-[UITableConstants reorderingCellWantsShadows](self->_constants, "reorderingCellWantsShadows") && ([v5 _usingBackgroundViewConfiguration] & 1) == 0)
  {
    v31 = *(v6 + 48);
    if (!v31)
    {
      v32 = [(UITableView *)self _cellContainerView];
      v33 = -[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](self->_rowData, [v30 row], objc_msgSend(v30, "section"), 0);
      v55 = v34;
      v56 = v33;
      v53 = v36;
      v54 = v35;
      v37 = [[UIShadowView alloc] initWithFrame:v33, v35, v36, v34];
      v38 = *(v6 + 48);
      *(v6 + 48) = v37;

      v39 = *(v6 + 48);
      v40 = +[UIShadowView topShadowImage];
      [v39 setShadowImage:v40 forEdge:1 inside:0];

      [v32 insertSubview:*(v6 + 48) aboveSubview:v5];
      v41 = [[UIShadowView alloc] initWithFrame:v56, v54, v53, v55];
      v42 = *(v6 + 56);
      *(v6 + 56) = v41;

      v43 = *(v6 + 56);
      v44 = +[UIShadowView bottomShadowImage];
      [v43 setShadowImage:v44 forEdge:4 inside:0];

      [v32 insertSubview:*(v6 + 56) belowSubview:v5];
      v31 = *(v6 + 48);
    }

    [v31 frame];
    [*(v6 + 48) setFrame:?];
    [*(v6 + 56) frame];
    [*(v6 + 56) setFrame:?];
  }

  v64.origin.x = v23;
  v64.origin.y = v25;
  v64.size.width = v27;
  v64.size.height = v29;
  v45 = CGRectGetMinY(v64) + 5.0;
  v65.origin.x = rect.origin.x;
  v65.origin.y = v9;
  v65.size.width = v11;
  v65.size.height = v13;
  if (v45 <= CGRectGetMinY(v65) && (v66.origin.x = v23, v66.origin.y = v25, v66.size.width = v27, v66.size.height = v29, v46 = CGRectGetMaxY(v66) + -5.0, v67.origin.x = rect.origin.x, v67.origin.y = v9, v67.size.width = v11, v67.size.height = v13, v46 >= CGRectGetMaxY(v67)))
  {
    if (*(v6 + 40))
    {
      [(UITableView *)self _stopAutoscrollTimer];
    }
  }

  else if (!*(v6 + 40))
  {
    v47 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__autoscrollForReordering_ selector:v5 userInfo:1 repeats:0.02];
    v48 = *(v6 + 40);
    *(v6 + 40) = v47;
  }

  v68.origin.x = rect.origin.x;
  v68.origin.y = v9;
  v68.size.width = v11;
  v68.size.height = v13;
  MidY = CGRectGetMidY(v68);
  v50 = [(UITableView *)self _targetIndexPathAtPoint:*(v6 + 24) withLastTargetIndexPath:0 adjustedForGap:0.0, MidY];
  if (([*(v6 + 24) isEqual:v50] & 1) == 0)
  {
    v51 = [(UITableView *)self _retargetedReorderIndexPathForInitialIndexPath:v30 proposedIndexPath:v50];

    if ([*(v6 + 24) isEqual:v51])
    {
      v50 = v51;
    }

    else
    {
      [(UITableViewRowData *)self->_rowData removeGap];
      [(UITableViewRowData *)self->_rowData addGapAtIndexPath:v51];
      [(UITableView *)self _updateTopSeparatorForVisibleCells];
      reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __73__UITableView__reorderPositionChangedForCell_withScrollFactorPercentage___block_invoke;
      v63[3] = &unk_1E7116870;
      v63[4] = self;
      v63[5] = *&rect.origin.x;
      *&v63[6] = v9;
      *&v63[7] = v11;
      *&v63[8] = v13;
      *&v63[9] = MidY;
      [(UIFeedbackGenerator *)reorderFeedbackGenerator performFeedbackWithDelay:v63 insideBlock:0.05];
      *&rect.origin.y = MEMORY[0x1E69E9820];
      *&rect.size.width = 3221225472;
      *&rect.size.height = __73__UITableView__reorderPositionChangedForCell_withScrollFactorPercentage___block_invoke_2;
      v59 = &unk_1E70F6228;
      v60 = v6;
      v50 = v51;
      v61 = v50;
      v62 = self;
      [(UITableView *)self _animateTableViewContentToNewLayoutWithDuration:v5 reorderingCell:&rect.origin.y additionalAnimations:a4 * 0.3];
      [v5 setSectionLocation:-[UITableViewRowData sectionLocationForReorderedRow:inSection:](self->_rowData animated:{objc_msgSend(*(v6 + 24), "row"), objc_msgSend(*(v6 + 24), "section")), 1}];
    }
  }
}

uint64_t __73__UITableView__reorderPositionChangedForCell_withScrollFactorPercentage___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 3128);
  MidX = CGRectGetMidX(*(a1 + 40));
  v4 = *(a1 + 72);

  return [v2 objectSnappedAtLocation:{MidX, v4}];
}

uint64_t __73__UITableView__reorderPositionChangedForCell_withScrollFactorPercentage___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = *(a1 + 48);

  return [v2 _adjustShadowsIfNecessary];
}

- (void)_endSwipeToDeleteRowDidDelete:(BOOL)a3
{
  v3 = a3;
  if ([(UITableView *)self _hasSwipeToDeleteRow]&& (*(&self->_tableFlags + 24) & 0x40) == 0)
  {
    v6 = self->_swipedIndexPath;
    if (!v3 || (*(&self->_tableFlags + 22) & 8) != 0 && ![(UITableViewCell *)self->_swipeToDeleteCell _isAnimating])
    {
      [(UITableView *)self _animateSwipeCancelation];
    }

    if ((*(&self->_tableFlags + 2) & 0x8000000000000) != 0)
    {
      [(UITableView *)self _setEditing:0 animated:(*(&self->_tableFlags + 2) & 0x400) == 0 forced:0];
      if (v3)
      {
        v5 = 0;
      }

      else
      {
        v5 = v6;
      }

      [(UITableView *)self _sendDidEndEditingForIndexPath:v5];
    }
  }
}

- (void)_animateSwipeCancelation
{
  v2 = *(&self->_tableFlags + 3);
  if ((v2 & 0x40) == 0)
  {
    *(&self->_tableFlags + 3) = v2 | 0x10;
    swipeActionController = self->_swipeActionController;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __39__UITableView__animateSwipeCancelation__block_invoke;
    v4[3] = &unk_1E70F5AC0;
    v4[4] = self;
    [(UISwipeActionController *)swipeActionController resetSwipedItemAnimated:1 completion:v4];
  }
}

- (void)_didInsertRowForTableCell:(id)a3
{
  if ((*&self->_tableFlags & 0x40) != 0)
  {
    v6 = [(UITableView *)self _indexPathForCell:a3 usingPresentationValues:1];
    v5 = [(UITableView *)self _dataSourceProxy];
    [v5 tableView:self commitEditingStyle:2 forRowAtIndexPath:v6];
  }
}

- (void)_animateDeletionOfRowAtIndexPath:(id)a3
{
  v5 = a3;
  p_tableFlags = &self->_tableFlags;
  if ((*(&self->_tableFlags + 24) & 0x40) == 0 && (*p_tableFlags & 0x40) != 0)
  {
    *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFF9FFFFFFFFFFFFLL | 0x2000000000000;
    v10 = v5;
    if (!v5)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:17238 description:@"UITableView internal inconsistency: no index path for deletion."];

      p_tableFlags = &self->_tableFlags;
    }

    v7 = [(UITableView *)self _dataSourceProxy];
    [v7 tableView:self commitEditingStyle:1 forRowAtIndexPath:v10];

    v8 = *(p_tableFlags + 2);
    *(p_tableFlags + 2) = v8 & 0xFFFDFFFFFFFFFFFFLL;
    v5 = v10;
    if ((v8 & 0x40000000000000) == 0)
    {
      *(p_tableFlags + 2) = v8 & 0xFFB9FFFFFFFFFFFFLL;
    }
  }
}

- (void)_animateDeletionOfRowWithCell:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:17251 description:@"UITableView internal inconsistency: no cell for deletion."];

    v5 = 0;
  }

  v6 = [(UITableView *)self _indexPathForCell:v5 usingPresentationValues:1];
  [(UITableView *)self _animateDeletionOfRowAtIndexPath:v6];
}

- (void)_setIsAncestorOfFirstResponder:(BOOL)a3
{
  v3 = a3;
  v25.receiver = self;
  v25.super_class = UITableView;
  [(UIView *)&v25 _setIsAncestorOfFirstResponder:?];
  v5 = [(UIView *)self window];
  v6 = [v5 firstResponder];

  if (v6)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      p_super = [(UIView *)v6 nextResponder];

      v6 = p_super;
      if (!p_super)
      {
        goto LABEL_12;
      }
    }

    v6 = v6;
    p_super = v6;
    while (1)
    {
      v8 = [(UIView *)p_super superview];
      v9 = v8;
      if (v8 == self || v8 == self->_wrapperView)
      {
        break;
      }

      p_super = &v9->super.super;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    p_super = 0;
  }

LABEL_12:
  IsKindOfUITableViewCell = _IsKindOfUITableViewCell(p_super);
  if (v3)
  {
    if ((*(&self->_tableFlags + 17) & 4) == 0)
    {
      v11 = IsKindOfUITableViewCell;
      objc_storeStrong(&self->_firstResponderView, p_super);
      if (v11)
      {
        self->_firstResponderViewType = 1;
        v12 = [(UITableView *)self _indexPathForCell:p_super usingPresentationValues:1];
        firstResponderIndexPath = self->_firstResponderIndexPath;
        self->_firstResponderIndexPath = v12;
LABEL_37:

        goto LABEL_38;
      }

      if (p_super == self->_tableHeaderView)
      {
        v22 = 4;
      }

      else
      {
        if (p_super != self->_tableFooterView)
        {
          if ([(UITableView *)self _visibleHeaderViewsContainsView:p_super])
          {
            v19 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:{-[UITableView _sectionForHeaderView:](self, "_sectionForHeaderView:", p_super)}];
            v20 = self->_firstResponderIndexPath;
            self->_firstResponderIndexPath = v19;

            v21 = 2;
LABEL_41:
            self->_firstResponderViewType = v21;
            goto LABEL_38;
          }

          if ([(UITableView *)self _visibleFooterViewsContainsView:p_super])
          {
            v23 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:{-[UITableView _sectionForFooterView:](self, "_sectionForFooterView:", p_super)}];
            v24 = self->_firstResponderIndexPath;
            self->_firstResponderIndexPath = v23;

            v21 = 3;
            goto LABEL_41;
          }

          objc_opt_class();
          objc_opt_isKindOfClass();
          goto LABEL_24;
        }

        v22 = 5;
      }

      self->_firstResponderViewType = v22;
      goto LABEL_36;
    }

    firstResponderView = self->_firstResponderView;
    self->_firstResponderView = 0;

LABEL_24:
    self->_firstResponderViewType = 0;
LABEL_36:
    firstResponderIndexPath = self->_firstResponderIndexPath;
    self->_firstResponderIndexPath = 0;
    goto LABEL_37;
  }

  v14 = self->_firstResponderView;
  v15 = self->_firstResponderView;
  self->_firstResponderView = 0;

  objc_opt_self();
  if ((__addingResponderToTree & 1) == 0 && v14)
  {
    firstResponderViewType = self->_firstResponderViewType;
    if ((firstResponderViewType - 2) >= 2)
    {
      if ((firstResponderViewType - 4) >= 2)
      {
        if (firstResponderViewType == 1 && ([(NSMutableArray *)self->_visibleCells containsObject:v14]& 1) == 0 && v14 != self->_viewBeingPreparedToDisplay)
        {
          [(UITableView *)self _reuseTableViewCell:v14 withIndexPath:self->_firstResponderIndexPath didEndDisplaying:1];
        }

        goto LABEL_22;
      }

      [(UITableView *)self _updateTableHeadersAndFootersNow:0];
    }

    [(UITableView *)self _updateVisibleHeadersAndFootersNow:0];
  }

LABEL_22:
  v17 = self->_firstResponderIndexPath;
  self->_firstResponderIndexPath = 0;

  self->_firstResponderViewType = 0;
LABEL_38:
}

- (BOOL)_wantsSwipes
{
  if ((*(&self->_tableFlags + 14) & 0x40) != 0 && (*(&self->_tableFlags + 22) & 8) == 0)
  {
    return 0;
  }

  [(UIScrollView *)self contentSize];
  v5 = v4;
  [(UIView *)self bounds];
  return v5 == v6;
}

- (id)_tableHeaderView:(BOOL)a3
{
  if (self->_tableHeaderView)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (!v4 && (*(&self->_tableFlags + 8) & 1) != 0)
  {
    v15.origin.x = [(UITableViewRowData *)self->_rowData rectForTableHeaderView];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    if (!CGRectIsEmpty(v15))
    {
      v9 = [(UITableView *)self _delegateProxy];
      v10 = [v9 viewForHeaderInTableView:self];
      tableHeaderView = self->_tableHeaderView;
      self->_tableHeaderView = v10;

      [(UIView *)self->_tableHeaderView setFrame:x, y, width, height];
      [(UITableView *)self _addContentSubview:self->_tableHeaderView atBack:0];
    }
  }

  v12 = self->_tableHeaderView;

  return v12;
}

- (id)_tableFooterView:(BOOL)a3
{
  if (self->_tableFooterView)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (!v4 && (*(&self->_tableFlags + 8) & 2) != 0)
  {
    v15.origin.x = [(UITableViewRowData *)self->_rowData rectForTableFooterView];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    if (!CGRectIsEmpty(v15))
    {
      v9 = [(UITableView *)self _delegateProxy];
      v10 = [v9 viewForFooterInTableView:self];
      tableFooterView = self->_tableFooterView;
      self->_tableFooterView = v10;

      [(UIView *)self->_tableFooterView setFrame:x, y, width, height];
      [(UITableView *)self _addContentSubview:self->_tableFooterView atBack:0];
    }
  }

  v12 = self->_tableFooterView;

  return v12;
}

- (void)setFillerRowHeight:(CGFloat)fillerRowHeight
{
  if (fillerRowHeight < 0.0)
  {
    fillerRowHeight = -1.0;
  }

  if ((*(&self->_tableFlags + 13) & 0x60) != 0)
  {
    fillerRowHeight = 0.0;
  }

  if (self->_fillerRowHeight != fillerRowHeight)
  {
    self->_fillerRowHeight = fillerRowHeight;
    if ((*(&self->_tableFlags + 14) & 7) != 0)
    {
      [(UITableView *)self _scheduleAdjustExtraSeparators];
    }
  }
}

- (double)_clientRequestedFillerRowHeight
{
  if (*(&self->_tableFlags + 11))
  {
    v4 = [(UITableView *)self _delegateProxy];
    [v4 tableViewSpacingForExtraSeparators:self];
    fillerRowHeight = v5;
  }

  else
  {
    fillerRowHeight = self->_fillerRowHeight;
  }

  result = -1.0;
  if (fillerRowHeight >= 0.0)
  {
    return fillerRowHeight;
  }

  return result;
}

- (double)_spacingForExtraSeparators
{
  [(UITableView *)self _clientRequestedFillerRowHeight];
  rowData = self->_rowData;

  return _UITableRowHeightForExtraSeparators(self, rowData, v3);
}

- (BOOL)_shouldShowMenuForCell:(id)a3
{
  v4 = [(UITableView *)self _indexPathForCell:a3 usingPresentationValues:1];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *(&self->_tableFlags + 1);
  if ((v5 & 0x1000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((~v5 & 0x38) != 0)
  {
    if ((~*&self->_tableFlags & 0xE000) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__UITableView__shouldShowMenuForCell___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      if (_shouldShowMenuForCell__once != -1)
      {
        dispatch_once(&_shouldShowMenuForCell__once, block);
      }

      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      goto LABEL_9;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  WeakRetained = [(UITableView *)self _delegateProxy];
LABEL_9:
  v7 = WeakRetained;
  v8 = [WeakRetained tableView:self shouldShowMenuForRowAtIndexPath:v4];

LABEL_11:
  return v8;
}

void __38__UITableView__shouldShowMenuForCell___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("TableView", &_UIInternalPreference_TableViewHeadersFootersUseModernConfiguration_block_invoke_6___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((v3 + 2152));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "The -tableView:shouldShowMenuForRowAtIndexPath: method must be implemented by the UITableViewDelegate, not the UITableViewDataSource. This error will cause undefined behavior. Please move the implementation of this method to the delegate of this table view, instead of the data source: %@", &v6, 0xCu);
  }
}

- (BOOL)_canPerformAction:(SEL)a3 forCell:(id)a4 sender:(id)a5
{
  v8 = a5;
  v9 = [(UITableView *)self _indexPathForCell:a4 usingPresentationValues:1];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = *(&self->_tableFlags + 1);
  if ((v10 & 0x1000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((~v10 & 0x30) != 0)
  {
    if ((~*&self->_tableFlags & 0xC000) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__UITableView__canPerformAction_forCell_sender___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      if (_canPerformAction_forCell_sender__once != -1)
      {
        dispatch_once(&_canPerformAction_forCell_sender__once, block);
      }

      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      goto LABEL_9;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  WeakRetained = [(UITableView *)self _delegateProxy];
LABEL_9:
  v12 = WeakRetained;
  v13 = [WeakRetained tableView:self canPerformAction:a3 forRowAtIndexPath:v9 withSender:v8];

LABEL_11:
  return v13;
}

void __48__UITableView__canPerformAction_forCell_sender___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("TableView", &_UIInternalPreference_TableViewHeadersFootersUseModernConfiguration_block_invoke_7___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((v3 + 2152));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "The -tableView:canPerformAction:forRowAtIndexPath:withSender: method must be implemented by the UITableViewDelegate, not the UITableViewDataSource. This error will cause undefined behavior. Please move the implementation of this method to the delegate of this table view, instead of the data source: %@", &v6, 0xCu);
  }
}

- (void)_performAction:(SEL)a3 forCell:(id)a4 sender:(id)a5
{
  v8 = a5;
  v9 = [(UITableView *)self _indexPathForCell:a4 usingPresentationValues:1];
  if (v9)
  {
    v10 = *(&self->_tableFlags + 1);
    if ((v10 & 0x1000000000) == 0)
    {
      if ((~v10 & 0x30) == 0)
      {
        WeakRetained = [(UITableView *)self _delegateProxy];
LABEL_9:
        v12 = WeakRetained;
        [WeakRetained tableView:self performAction:a3 forRowAtIndexPath:v9 withSender:v8];

        goto LABEL_10;
      }

      if ((~*&self->_tableFlags & 0xC000) == 0)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__UITableView__performAction_forCell_sender___block_invoke;
        block[3] = &unk_1E70F3590;
        block[4] = self;
        if (_performAction_forCell_sender__once != -1)
        {
          dispatch_once(&_performAction_forCell_sender__once, block);
        }

        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

void __45__UITableView__performAction_forCell_sender___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("TableView", &_UIInternalPreference_TableViewHeadersFootersUseModernConfiguration_block_invoke_8___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((v3 + 2152));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "The -tableView:performAction:forRowAtIndexPath:withSender: method must be implemented by the UITableViewDelegate, not the UITableViewDataSource. This error will cause undefined behavior. Please move the implementation of this method to the delegate of this table view, instead of the data source: %@", &v6, 0xCu);
  }
}

- (BOOL)_canBeginMenuInteractionAtLocation:(CGPoint)a3
{
  if (self->_swipedIndexPath)
  {
    return 0;
  }

  v4 = [(UITableView *)self hitTest:0 withEvent:a3.x, a3.y];
  v3 = 1;
  if ([v4 isUserInteractionEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if ((*(&self->_tableFlags + 12) & 0x10) != 0 && [(UITableView *)self _canBeginMenuInteractionAtLocation:x, y])
  {
    v8 = [(UITableView *)self _indexPathForRowAtPoint:1 usingPresentationValues:x, y];
    if (v8)
    {
      v9 = [(UITableView *)self _delegateProxy];
      v10 = [v9 tableView:self contextMenuConfigurationForRowAtIndexPath:v8 point:{x, y}];

      if (v10)
      {
        v11 = [(UITableView *)self _identityTracker:1];
        v12 = [(_UIIndexPathIdentityTracker *)v11 identifierForIndexPath:v8];

        objc_setAssociatedObject(v10, &ContextMenuConfigurationAssociatedIdentifierKey, v12, 1);
      }
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

  return v10;
}

- (id)_defaultContextMenuTargetedPreviewForIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v5 = [(UITableView *)self _identityTracker:0];
  v6 = [(_UIIndexPathIdentityTracker *)v5 currentIndexPathForIdentifier:v4];

  if (v6)
  {
    v7 = [(UITableView *)self _cellForRowAtIndexPath:v6 usingPresentationValues:1];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 window];

      if (v9)
      {
        v10 = _UITargetedPreviewForContextMenuFromCell(v8);
LABEL_12:

        goto LABEL_13;
      }

      if (os_variant_has_internal_diagnostics())
      {
        v13 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          v14 = 138412802;
          v15 = v8;
          v16 = 2112;
          v17 = v6;
          v18 = 2112;
          v19 = v4;
          _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Cell (%@) at indexPath (%@) with identifier (%@) is not in a window. Was the table view removed from its window?", &v14, 0x20u);
        }
      }

      else
      {
        v11 = *(__UILogGetCategoryCachedImpl("Assert", &_defaultContextMenuTargetedPreviewForIdentifier____s_category) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = 138412802;
          v15 = v8;
          v16 = 2112;
          v17 = v6;
          v18 = 2112;
          v19 = v4;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Cell (%@) at indexPath (%@) with identifier (%@) is not in a window. Was the table view removed from its window?", &v14, 0x20u);
        }
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

LABEL_14:

  return v10;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(&self->_tableFlags + 12) & 0x20) == 0 || (-[UITableView _delegateProxy](self, "_delegateProxy"), v8 = objc_claimAutoreleasedReturnValue(), [v8 tableView:self previewForHighlightingContextMenuWithConfiguration:v7], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = objc_getAssociatedObject(v7, &ContextMenuConfigurationAssociatedIdentifierKey);
    v9 = [(UITableView *)self _defaultContextMenuTargetedPreviewForIdentifier:v10];
  }

  v11 = +[UIColor clearColor];
  v12 = [v9 parameters];
  [v12 setBackgroundColor:v11];

  [v9 set_captureHierarchyBelowSourceView:1];

  return v9;
}

- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(&self->_tableFlags + 12) & 0x40) == 0 || (-[UITableView _delegateProxy](self, "_delegateProxy"), v8 = objc_claimAutoreleasedReturnValue(), [v8 tableView:self previewForDismissingContextMenuWithConfiguration:v7], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = objc_getAssociatedObject(v7, &ContextMenuConfigurationAssociatedIdentifierKey);
    v9 = [(UITableView *)self _defaultContextMenuTargetedPreviewForIdentifier:v10];
  }

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *(&self->_tableFlags + 1);
  if ((v10 & 0x10000000000) != 0)
  {
    v11 = [(UITableView *)self delegate];
    [v11 tableView:self willPerformPreviewActionForMenuWithConfiguration:v8 animator:v9];
  }

  else
  {
    if ((v10 & 0x8000000000) == 0)
    {
      goto LABEL_6;
    }

    v11 = [(UITableView *)self delegate];
    [v11 tableView:self willCommitMenuWithAnimator:v9];
  }

LABEL_6:
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if ((*(&self->_tableFlags + 13) & 2) != 0)
  {
    v10 = [(UITableView *)self _delegateProxy];
    [v10 tableView:self willDisplayContextMenuWithConfiguration:v8 animator:v9];
  }

  v11 = [v8 _effectiveSecondaryItemIdentifiers];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v13 = objc_getAssociatedObject(v8, &ContextMenuConfigurationAssociatedIdentifierKey);
    v14 = [(UITableView *)self _identityTracker:0];
    v15 = [(_UIIndexPathIdentityTracker *)v14 currentIndexPathForIdentifier:v13];

    [(UITableView *)self _updateContextMenuStateForVisibleCells:v15];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v9 = a4;
  v7 = a5;
  [(UITableView *)self _updateContextMenuStateForVisibleCells:0];
  if ((*(&self->_tableFlags + 13) & 4) != 0)
  {
    v8 = [(UITableView *)self _delegateProxy];
    [v8 tableView:self willEndContextMenuInteractionWithConfiguration:v9 animator:v7];
  }
}

- (void)_updateContextMenuStateForVisibleCells:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && [(NSMutableArray *)self->_selectedIndexPaths count]>= 2 && [(NSMutableArray *)self->_selectedIndexPaths containsObject:v4])
  {

    v4 = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_visibleCells;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = 1;
        v12 = [(UITableView *)self _indexPathForCell:v10 usingPresentationValues:1, v14];
        v13 = v4;
        if (v12 != v13)
        {
          v11 = 0;
          if (v4)
          {
            if (v12)
            {
              v11 = [v12 isEqual:v13];
            }
          }
        }

        [v10 _setShowingCompactContextMenu:v11];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (double)_heightForSeparator
{
  v3 = [(UITableView *)self separatorStyle]- 1;
  result = 0.0;
  if (v3 <= 1)
  {
    [(UIView *)self _currentScreenScale];
    return 1.0 / v5;
  }

  return result;
}

- (double)_backgroundInset
{
  rowData = self->_rowData;
  result = 0.0;
  if (rowData)
  {
    rowDataFlags = rowData->_rowDataFlags;
    if ((rowDataFlags & 4) != 0)
    {
      return rowData->_tableSidePadding;
    }

    else
    {
      rowData->_tableSidePadding = 0.0;
      *&rowData->_rowDataFlags = rowDataFlags | 4;
    }
  }

  return result;
}

- (UIEdgeInsets)_backgroundContentInset
{
  [(UITableView *)self _backgroundInset];
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (CGRect)_calloutTargetRectForCell:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ((*(&self->_tableFlags + 8) & 4) != 0)
    {
      v14 = [(UITableView *)self _indexPathForCell:v4 usingPresentationValues:1];
      v15 = [(UITableView *)self _delegateProxy];
      [v15 tableView:self calloutTargetRectForCell:v5 forRowAtIndexPath:v14];
      v7 = v16;
      v9 = v17;
      v11 = v18;
      v13 = v19;
    }

    else
    {
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v20 = v7;
  v21 = v9;
  v22 = v11;
  v23 = v13;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)_setKeepsFirstResponderVisibleOnBoundsChange:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (BOOL)_hasHeaderFooterBelowRowAtIndexPath:(id)a3
{
  v5 = [a3 section];
  v6 = [(UITableView *)self _numberOfSectionsUsingPresentationValues:1];
  if (v5 >= v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [a3 row];
  if (v8 != [(UITableView *)self _numberOfRowsInSection:v5 usingPresentationValues:1]- 1)
  {
    return 0;
  }

  v9 = 1;
  if (((*(&self->_tableFlags + 1) >> 45) & 3uLL) - 1 >= 2)
  {
    [(UITableView *)self _rectForFooterInSection:v5 usingPresentationValues:1];
    if (CGRectGetHeight(v14) <= 0.0)
    {
      if (v5 != v7 - 1 || ([(UIView *)self->_tableFooterView frame], CGRectGetHeight(v15) <= 0.0))
      {
        for (i = v5 + 1; i < v7; ++i)
        {
          [(UITableView *)self _rectForHeaderInSection:i usingPresentationValues:1];
          if (CGRectGetHeight(v16) > 0.0)
          {
            [(UITableView *)self _paddingAboveSectionHeaders];
            return v13 == 0.0;
          }

          v11 = [(UITableView *)self _numberOfRowsInSection:i usingPresentationValues:1];
          v9 = 0;
          if (v11 >= 1)
          {
            return v9;
          }
        }

        return 0;
      }
    }
  }

  return v9;
}

- (void)_adjustForAutomaticKeyboardInfo:(id)a3 animated:(BOOL)a4 lastAdjustment:(double *)a5
{
  v6 = a4;
  v8 = a3;
  if ([(UIScrollView *)self _isFirstResponderKeyboardAvoidanceEnabled])
  {
    [(UITableView *)self _contentInset];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v21.receiver = self;
    v21.super_class = UITableView;
    [(UIScrollView *)&v21 _adjustForAutomaticKeyboardInfo:v8 animated:v6 lastAdjustment:a5];
    [(UITableView *)self _contentInset];
    if (v12 != v20 || v10 != v17 || v16 != v19 || v14 != v18)
    {
      [(UITableView *)self _setNeedsIndexBarInsetsUpdate];
    }

    if (*a5 != 0.0)
    {
      [(UITableView *)self _scrollFirstResponderCellToVisible:1, *a5];
    }
  }
}

- (void)_setIgnorePinnedTableHeaderUpdates:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 2) = *(&self->_tableFlags + 2) & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITableView *)self dataSource];
  v6 = [objc_opt_class() conformsToProtocol:&unk_1F00BCFA8];

  v33.receiver = self;
  v33.super_class = UITableView;
  [(UIScrollView *)&v33 encodeRestorableStateWithCoder:v4];
  v7 = [(UIView *)self window];
  v8 = [v7 firstResponder];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 isDescendantOfView:self])
  {
    [v4 encodeBool:1 forKey:@"UIViewNeedsLayoutKey"];
  }

  if (v6)
  {
    [(UIScrollView *)self contentOffset];
    v10 = v9;
    v12 = v11;
    [(UITableView *)self _contentInset];
    v14 = [(UITableView *)self _indexPathForRowAtPoint:1 usingPresentationValues:v10, v12 + v13];
    if (v14)
    {
      v15 = [(UITableView *)self _dataSourceProxy];
      v16 = [v15 modelIdentifierForElementAtIndexPath:v14 inView:self];

      if (v16)
      {
        [v4 encodeObject:v16 forKey:@"kTopApplicationTopVisibleModelIdentifier"];
      }
    }
  }

  if ([(UITableView *)self isEditing])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v4 encodeObject:v17 forKey:@"kApplicationIsEditingKey"];
  }

  v18 = [(UITableView *)self _indexPathsForSelectedRowsUsingPresentationValues:1];
  if ([v18 count])
  {
    [v4 encodeObject:v18 forKey:@"kApplicationSelectedCellIndexPathsKey"];
    if (v6)
    {
      v28 = v8;
      v19 = [MEMORY[0x1E695DF70] array];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          v24 = 0;
          do
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v29 + 1) + 8 * v24);
            v26 = [(UITableView *)self _dataSourceProxy];
            v27 = [v26 modelIdentifierForElementAtIndexPath:v25 inView:self];

            if (v27)
            {
              [v19 addObject:v27];
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v22);
      }

      if ([v19 count])
      {
        [v4 encodeObject:v19 forKey:@"kApplicationSelectedCells"];
      }

      v8 = v28;
    }
  }
}

- (BOOL)_indexPathIsValid:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a3 section];
  v6 = [a3 row];
  return [(UITableView *)self _numberOfSectionsUsingPresentationValues:1]> v5 && [(UITableView *)self _numberOfRowsInSection:v5 usingPresentationValues:1]> v6;
}

- (BOOL)_pathIsHidden:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 1;
  [(UITableView *)self _indexPathsForVisibleRowsUsingPresentationValues:1];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * i) isEqual:{v4, v12}])
        {
          v5 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v5 = 1;
  }

LABEL_11:

  return v5;
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 decodeBoolForKey:@"UIViewNeedsLayoutKey"])
  {
    [(UIView *)self layoutIfNeeded];
  }

  v5 = [(UITableView *)self dataSource];
  v6 = [objc_opt_class() conformsToProtocol:&unk_1F00BCFA8];

  [(UITableView *)self _reloadDataIfNeeded];
  v57.receiver = self;
  v57.super_class = UITableView;
  [(UIScrollView *)&v57 decodeRestorableStateWithCoder:v4];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTopApplicationTopVisibleModelIdentifier"];
    [(UIScrollView *)self contentOffset];
    v9 = v8;
    v11 = v10;
    [(UITableView *)self _contentInset];
    v13 = 1;
    v14 = [(UITableView *)self _indexPathForRowAtPoint:1 usingPresentationValues:v9, v11 + v12];
    v15 = [(UITableView *)self _dataSourceProxy];
    v16 = [v15 modelIdentifierForElementAtIndexPath:v14 inView:self];

    v47 = v16;
    v48 = v7;
    if (v7)
    {
      if ([v16 isEqualToString:v7])
      {
        v13 = 0;
      }

      else
      {
        v26 = [(UITableView *)self _dataSourceProxy];
        v27 = [v26 indexPathForElementWithModelIdentifier:v7 inView:self];

        if (v27)
        {
          if ([(UITableView *)self _indexPathIsValid:v27])
          {
            [(UITableView *)self _scrollToRowAtIndexPath:v27 atScrollPosition:1 animated:0 usingPresentationValues:1];
            v13 = 0;
          }

          v14 = v27;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kApplicationIsEditingKey"];
    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"kApplicationSelectedCells"];

    if (v28)
    {
      v33 = [(UITableView *)self delegate];
      v34 = [(UITableView *)self dataSource];
      v35 = objc_opt_respondsToSelector();
      v36 = v33;
      if ((v35 & 1) == 0)
      {
        if (objc_opt_respondsToSelector())
        {
          v36 = v34;
        }

        else
        {
          v36 = self;
        }
      }

      [(UITableView *)v36 setEditing:1 animated:0];
    }

    if (v32)
    {
      v45 = v32;
      v46 = v28;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v37 = v32;
      v38 = [v37 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v54;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            v42 = v14;
            if (*v54 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v43 = *(*(&v53 + 1) + 8 * i);
            v44 = [(UITableView *)self _dataSourceProxy];
            v14 = [v44 indexPathForElementWithModelIdentifier:v43 inView:self];

            if (v14 && [(UITableView *)self _indexPathIsValid:v14])
            {
              if ((v13 & 1) != 0 && [(UITableView *)self _pathIsHidden:v14])
              {
                [(UITableView *)self _scrollToRowAtIndexPath:v14 atScrollPosition:0 animated:0 usingPresentationValues:1];
              }

              [(UITableView *)self selectRowAtIndexPath:v14 animated:0 scrollPosition:0];
              v13 = 0;
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v39);
      }

      v32 = v45;
      v28 = v46;
    }

    v20 = v48;
LABEL_45:

    goto LABEL_46;
  }

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v4 decodeObjectOfClasses:v19 forKey:@"kApplicationSelectedCellIndexPathsKey"];

  if ([v20 count])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = v20;
    v21 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v14);
          }

          v25 = *(*(&v49 + 1) + 8 * j);
          if ([(UITableView *)self _indexPathIsValid:v25])
          {
            [(UITableView *)self selectRowAtIndexPath:v25 animated:0 scrollPosition:0];
          }
        }

        v22 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v22);
    }

    v20 = v14;
    goto LABEL_45;
  }

LABEL_46:
}

- (void)_setSeparatorsDrawInVibrantLightModeUIAppearance:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__UITableView__setSeparatorsDrawInVibrantLightModeUIAppearance___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [UIView _performSystemAppearanceModifications:v6];
}

uint64_t __64__UITableView__setSeparatorsDrawInVibrantLightModeUIAppearance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) BOOLValue];
  v3 = 0x1000000000000000;
  if (!v2)
  {
    v3 = 0;
  }

  *(*(a1 + 32) + 3184) = *(*(a1 + 32) + 3184) & 0xEFFFFFFFFFFFFFFFLL | v3;
  v4 = *(a1 + 32);

  return [v4 _setSeparatorBackdropOverlayBlendMode:0];
}

- (void)_setSeparatorsDrawAsOverlay:(BOOL)a3
{
  v41 = *MEMORY[0x1E69E9840];
  p_tableFlags = &self->_tableFlags;
  v5 = *(&self->_tableFlags + 2);
  if (a3 && (v5 & 0xE00000000000000) == 0)
  {
    v5 |= 0x200000000000000uLL;
  }

  v6 = 0x20000000000000;
  if (!a3)
  {
    v6 = 0;
  }

  *(&self->_tableFlags + 2) = v5 & 0xFFDFFFFFFFFFFFFFLL | v6;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = self->_visibleCells;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        if ((*(p_tableFlags + 23) & 0x10) != 0)
        {
          [*(*(&v34 + 1) + 8 * i) _setSeparatorDrawsInVibrantLightMode:1];
          v13 = 0;
        }

        else
        {
          [*(*(&v34 + 1) + 8 * i) _setSeparatorDrawsInVibrantLightMode:0];
          v13 = (*(p_tableFlags + 2) >> 57) & 7;
        }

        [v12 _setSeparatorBackdropOverlayBlendMode:v13];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  if ((*(p_tableFlags + 23) & 0x10) != 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = self->_extraSeparators;
    v21 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v14);
          }

          v25 = *(*(&v30 + 1) + 8 * j);
          [v25 _setDrawsAsBackdropOverlayWithBlendMode:0];
          [v25 setDrawsWithVibrantLightMode:1];
          [v25 setBackgroundColor:0];
        }

        v22 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = self->_extraSeparators;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * k);
          [v19 setDrawsWithVibrantLightMode:{0, v26}];
          [v19 _setDrawsAsBackdropOverlayWithBlendMode:(*(p_tableFlags + 2) >> 57) & 7];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = [(UITableView *)self separatorColor];
            [v19 setBackgroundColor:v20];
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v16);
    }
  }
}

- (void)setSeparatorEffect:(UIVisualEffect *)separatorEffect
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = separatorEffect;
  v5 = v4;
  *(&self->_tableFlags + 2) = (*(&self->_tableFlags + 2) & 0xFFFFDFFFFFFFFFFFLL | (((*(&self->_tableFlags + 2) >> 41) & 1) << 45)) ^ 0x200000000000;
  if (self->_separatorEffect != v4)
  {
    v6 = [(UIVisualEffect *)v4 copy];
    v7 = self->_separatorEffect;
    self->_separatorEffect = v6;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_visibleCells;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v25 + 1) + 8 * i) _setSeparatorEffect:self->_separatorEffect];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_extraSeparators;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          [v19 setSeparatorEffect:{self->_separatorEffect, v21}];
          if (isKindOfClass)
          {
            [v19 setBackgroundColor:0];
          }

          else
          {
            v20 = [(UITableView *)self separatorColor];
            [v19 setBackgroundColor:v20];
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }
}

- (void)setCellLayoutMarginsFollowReadableWidth:(BOOL)cellLayoutMarginsFollowReadableWidth
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(&self->_tableFlags + 3);
  if (((((v3 & 0x100000) == 0) ^ cellLayoutMarginsFollowReadableWidth) & 1) == 0)
  {
    v4 = cellLayoutMarginsFollowReadableWidth;
    v6 = 0x100000;
    if (!cellLayoutMarginsFollowReadableWidth)
    {
      v6 = 0;
    }

    *(&self->_tableFlags + 3) = v3 & 0xFFFFFFFFFFEFFFFFLL | v6;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_visibleCells;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setLayoutMarginsFollowReadableWidth:{v4, v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(UITableView *)self _scheduleAdjustExtraSeparators];
    if (self)
    {
      [(UIView *)self _updateInferredLayoutMargins];
    }
  }
}

- (void)setInsetsContentViewsToSafeArea:(BOOL)insetsContentViewsToSafeArea
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(&self->_tableFlags + 3);
  if (((((v3 & 0x100000000) == 0) ^ insetsContentViewsToSafeArea) & 1) == 0)
  {
    v4 = insetsContentViewsToSafeArea;
    v6 = 0x100000000;
    if (!insetsContentViewsToSafeArea)
    {
      v6 = 0;
    }

    *(&self->_tableFlags + 3) = v3 & 0xFFFFFFFEFFFFFFFFLL | v6;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->_visibleCells;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v22 + 1) + 8 * i) _setInsetsContentViewsToSafeArea:v4];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [(UITableView *)self _visibleHeaderFooterViews];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * j);
          if (_IsKindOfUITableViewHeaderFooterView(v17))
          {
            [v17 _setInsetsContentViewsToSafeArea:v4];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [(UITableView *)self _updateTableHeaderFooterViewInsetsContentViewsToSafeArea];
    [(UITableView *)self _rebuildGeometryWithCompatibility];
  }
}

- (void)setInsetsLayoutMarginsFromSafeArea:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UITableView;
  [(UIView *)&v5 setInsetsLayoutMarginsFromSafeArea:?];
  [(UIView *)self->_wrapperView setInsetsLayoutMarginsFromSafeArea:v3];
}

- (void)_setSeparatorInsetIsRelativeToCellEdges:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(&self->_tableFlags + 3);
  if (((((v3 & 0x400000) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    v6 = 0x400000;
    if (!a3)
    {
      v6 = 0;
    }

    *(&self->_tableFlags + 3) = v3 & 0xFFFFFFFFFFBFFFFFLL | v6;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_visibleCells;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) _setSeparatorInsetIsRelativeToCellEdges:{v4, v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(UITableView *)self _scheduleAdjustExtraSeparators];
  }
}

- (void)setSeparatorInset:(UIEdgeInsets)separatorInset
{
  v3.f64[0] = separatorInset.top;
  v3.f64[1] = separatorInset.left;
  v4.f64[0] = separatorInset.bottom;
  v4.f64[1] = separatorInset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_separatorInset.top), vceqq_f64(v4, *&self->_separatorInset.bottom)))) & 1) == 0)
  {
    self->_separatorInset = separatorInset;
    [(UITableView *)self _adjustExtraSeparators];
    v6 = dyld_program_sdk_at_least() ^ 1;

    [(UITableView *)self _updateMarginWidthForVisibleViewsForceLayout:v6];
  }
}

- (UIEdgeInsets)separatorInset
{
  top = self->_separatorInset.top;
  left = self->_separatorInset.left;
  bottom = self->_separatorInset.bottom;
  right = self->_separatorInset.right;
  if (left == -1.0)
  {
    [(UITableView *)self _defaultMarginWidth];
    left = v7;
  }

  if (right == -1.0)
  {
    [(UITableView *)self _indexBarExtentFromEdge];
    right = v8;
  }

  if (bottom == -1.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = bottom;
  }

  if (top == -1.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = top;
  }

  v11 = left;
  v12 = right;
  result.right = v12;
  result.bottom = v9;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)setSelfSizingInvalidation:(UITableViewSelfSizingInvalidation)selfSizingInvalidation
{
  v39 = *MEMORY[0x1E69E9840];
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 3);
  *(&self->_tableFlags + 3) = v4 & 0xFFFF3FFFFFFFFFFFLL | ((selfSizingInvalidation & 3) << 46);
  if (((v4 >> 46) & 3) != selfSizingInvalidation)
  {
    if ((selfSizingInvalidation & 3) != 0)
    {
      v6 = (selfSizingInvalidation & 3) << 46;
    }

    else
    {
      [(UITableView *)self _clearNeedsRecomputeHeightsForInvalidatedElements];
      v6 = *(p_tableFlags + 3) & 0xC00000000000;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = [(UITableView *)self _preparedCells];
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v32 + 1) + 8 * i) _setAutomaticIntrinsicContentSizeInvalidationEnabled:v6 == 0x800000000000];
        }

        v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [(NSMutableDictionary *)self->_visibleHeaderViews objectEnumerator];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * j);
          if (_IsKindOfUITableViewHeaderFooterView(v17))
          {
            [v17 _setAutomaticIntrinsicContentSizeInvalidationEnabled:v6 == 0x800000000000];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [(NSMutableDictionary *)self->_visibleFooterViews objectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v24 + 1) + 8 * k);
          if (_IsKindOfUITableViewHeaderFooterView(v23))
          {
            [v23 _setAutomaticIntrinsicContentSizeInvalidationEnabled:v6 == 0x800000000000];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v20);
    }
  }
}

- (void)_cellDidInvalidateIntrinsicContentSize:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[UITableView _canRecomputePreferredAttributesForInvalidatedElements](self) && ([v4 _isHiddenForReuse] & 1) == 0)
  {
    if (v4)
    {
      [v4 transform3D];
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    if (CATransform3DIsIdentity(&v8))
    {
      v5 = [(UITableView *)self _indexPathForCell:v4 usingPresentationValues:1];
      if (v5)
      {
        [(UITableView *)self _setNeedsRecomputeHeightsForInvalidatedElements];
        intrinsicContentSizeInvalidationContext = self->_intrinsicContentSizeInvalidationContext;
        v9[0] = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
        [(UICollectionViewLayoutInvalidationContext *)intrinsicContentSizeInvalidationContext invalidateItemsAtIndexPaths:v7];
      }
    }
  }
}

- (void)_headerFooterDidInvalidateIntrinsicContentSize:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[UITableView _canRecomputePreferredAttributesForInvalidatedElements](self) && ([v4 _isHiddenForReuse] & 1) == 0)
  {
    if (v4)
    {
      [v4 transform3D];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    if (CATransform3DIsIdentity(&v13))
    {
      v5 = @"UICollectionElementKindSectionHeader";
      v6 = [(UITableView *)self _sectionForHeaderView:v4];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = @"UICollectionElementKindSectionFooter";

        v8 = [(UITableView *)self _sectionForFooterView:v4];
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_12:

          goto LABEL_13;
        }

        v9 = v8;
        v5 = v7;
      }

      else
      {
        v9 = v6;
        v7 = v5;
      }

      [(UITableView *)self _setNeedsRecomputeHeightsForInvalidatedElements:*&v13.m11];
      intrinsicContentSizeInvalidationContext = self->_intrinsicContentSizeInvalidationContext;
      v11 = [MEMORY[0x1E696AC88] indexPathWithIndex:v9];
      v14[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [(UICollectionViewLayoutInvalidationContext *)intrinsicContentSizeInvalidationContext invalidateSupplementaryElementsOfKind:v5 atIndexPaths:v12];

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_setNeedsRecomputeHeightsForInvalidatedElements
{
  if (!self->_intrinsicContentSizeInvalidationContext)
  {
    v3 = objc_alloc_init(UICollectionViewLayoutInvalidationContext);
    intrinsicContentSizeInvalidationContext = self->_intrinsicContentSizeInvalidationContext;
    self->_intrinsicContentSizeInvalidationContext = v3;

    [(UIScrollView *)self setNeedsLayout];
  }

  v5 = +[UIView areAnimationsEnabled];
  v6 = *(&self->_tableFlags + 3);
  v7 = 0x1000000000000;
  if (!(v5 | HIWORD(v6) & 1))
  {
    v7 = 0;
  }

  *(&self->_tableFlags + 3) = v7 | v6 & 0xFFFEFFFFFFFFFFFFLL;
}

void __62__UITableView__recomputeHeightsForInvalidatedElementsIfNeeded__block_invoke(id *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        if ([a1[5] _indexPathIsValid:v7])
        {
          v8 = [a1[5] _cellForRowAtIndexPath:v7 usingPresentationValues:1];
          [a1[5] _recomputeHeightForCell:v8 atIndexPath:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v4);
  }

  v9 = [a1[6] objectForKey:@"UICollectionElementKindSectionHeader"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v27 + 1) + 8 * j) section];
        if (v14 < [a1[5] _numberOfSectionsUsingPresentationValues:1])
        {
          v15 = [a1[5] _headerViewForSection:v14 usingPresentationValues:1];
          [a1[5] _recomputeHeightForHeaderOrFooter:1 view:v15 inSection:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v11);
  }

  v16 = [a1[6] objectForKey:@"UICollectionElementKindSectionFooter"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v23 + 1) + 8 * k) section];
        if (v21 < [a1[5] _numberOfSectionsUsingPresentationValues:1])
        {
          v22 = [a1[5] _footerViewForSection:v21 usingPresentationValues:1];
          [a1[5] _recomputeHeightForHeaderOrFooter:0 view:v22 inSection:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v18);
  }
}

void __62__UITableView__recomputeHeightsForInvalidatedElementsIfNeeded__block_invoke_2(void *a1)
{
  (*(a1[8] + 16))();
  v2 = a1[4];
  if (v2[3184])
  {
    v3 = [v2 _setupAnimationsForResizedViewsWithOldRowData:a1[5] oldVisibleViews:a1[6]];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

uint64_t __62__UITableView__recomputeHeightsForInvalidatedElementsIfNeeded__block_invoke_3(uint64_t result, uint64_t a2)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    return [*(result + 32) _updateAnimationDidStopWithOldVisibleViews:*(result + 40) finished:a2 context:?];
  }

  return result;
}

- (id)_setupAnimationsForResizedViewsWithOldRowData:(id)a3 oldVisibleViews:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_UITableViewUpdateSupport alloc];
  rowData = self->_rowData;
  v10 = [(UITableViewRowData *)v7 numberOfRows];
  v11 = [(UITableViewRowData *)self->_rowData numberOfRows];
  v13 = [(_UITableViewUpdateSupport *)v8 initWithTableView:MEMORY[0x1E695E0F0] updateItems:v7 oldRowData:rowData newRowData:0 oldRowRange:v10 newRowRange:v12 context:0, v11, 0];

  currentUpdate = self->_currentUpdate;
  self->_currentUpdate = v13;

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__UITableView__setupAnimationsForResizedViewsWithOldRowData_oldVisibleViews___block_invoke;
  v23[3] = &unk_1E70F3590;
  v23[4] = self;
  [UIView performWithoutAnimation:v23];
  v15 = [[UIViewAnimationContext alloc] initWithCompletionHandler:?];
  [(UIViewAnimationContext *)v15 setViewAnimations:?];
  ++self->_updateAnimationCount;
  self->_visibleRows.location = [(UITableViewRowData *)&self->_rowData->super.isa globalRowsInRect:self->_currentUpdate->newTableViewVisibleBounds.origin.x canGuess:self->_currentUpdate->newTableViewVisibleBounds.origin.y, self->_currentUpdate->newTableViewVisibleBounds.size.width, self->_currentUpdate->newTableViewVisibleBounds.size.height];
  self->_visibleRows.length = v16;
  [(UITableView *)self _visibleBounds];
  self->_visibleBounds.origin.x = v17;
  self->_visibleBounds.origin.y = v18;
  self->_visibleBounds.size.width = v19;
  self->_visibleBounds.size.height = v20;
  [(UITableView *)self _startViewAnimationsForUpdate:self->_currentUpdate withContext:v15 swipeOccurrenceAnimatingDelete:0 oldVisibleViews:v6 useCopyBlendingForAnimations:0];

  v21 = self->_currentUpdate;
  self->_currentUpdate = 0;

  return v15;
}

- (BOOL)_recomputeHeightForCell:(id)a3 atIndexPath:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 _isHiddenForReuse])
  {
    return 0;
  }

  v7 = -[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](self->_rowData, [a4 row], objc_msgSend(a4, "section"), 1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a3 _setNeedsHeightCalculation:1];
  [(UITableView *)self _heightForCell:a3 atIndexPath:a4];
  v15 = v14;
  [a3 _setNeedsHeightCalculation:0];
  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  if (vabdd_f64(CGRectGetHeight(v18), v15) <= 0.0001)
  {
    return 0;
  }

  [(UITableViewRowData *)self->_rowData setHeight:a4 forRowAtIndexPath:v15];
  v16 = 1;
  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1 updateImmediatelyIfPossible:0];
  return v16;
}

- (BOOL)_recomputeHeightForHeaderOrFooter:(BOOL)a3 view:(id)a4 inSection:(int64_t)a5
{
  v6 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8 || ([v8 _isHiddenForReuse] & 1) != 0)
  {
    goto LABEL_9;
  }

  rowData = self->_rowData;
  if (v6)
  {
    v11 = [(UITableViewRowData *)rowData rectForHeaderInSection:a5 heightCanBeGuessed:1];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UITableView *)self _heightForHeaderView:v9 inSection:a5];
  }

  else
  {
    v11 = [(UITableViewRowData *)rowData rectForFooterInSection:a5 heightCanBeGuessed:1];
    v13 = v19;
    v15 = v20;
    v17 = v21;
    [(UITableView *)self _heightForFooterView:v9 inSection:a5];
  }

  v22 = v18;
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  if (vabdd_f64(CGRectGetHeight(v26), v22) <= 0.0001)
  {
LABEL_9:
    v24 = 0;
  }

  else
  {
    v23 = self->_rowData;
    if (v6)
    {
      [(UITableViewRowData *)v23 setHeight:a5 forHeaderInSection:v22];
    }

    else
    {
      [(UITableViewRowData *)v23 setHeight:a5 forFooterInSection:v22];
    }

    v24 = 1;
    [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1 updateImmediatelyIfPossible:0];
  }

  return v24;
}

- (void)_prepareToSizeView:(id)a3
{
  v4 = a3;
  [v4 updateTraitsIfNeeded];
  [(UIView *)self _eagerlyUpdateSafeAreaInsetsToDescendant:v4];
}

- (double)_classicHeightForRowAtIndexPath:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*(&self->_tableFlags + 4))
  {
    v8 = [(UITableView *)self _delegateProxy];
    [v8 tableView:self heightForRowAtIndexPath:v5];
    rowHeight = v9;

    v10 = dyld_program_sdk_at_least();
    v11 = rowHeight < 0.0;
    if (rowHeight == -1.0)
    {
      v11 = 0;
    }

    if (v10)
    {
      if (v11)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:18577 description:{@"Invalid row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&rowHeight}];
      }
    }

    else if (v11)
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &_classicHeightForRowAtIndexPath____s_category) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v16 = rowHeight;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Invalid row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }
  }

  else
  {
    rowHeight = self->_rowHeight;
    if (rowHeight == -1.0)
    {
      rowHeight = -1.0;
      if ((*(&self->_tableFlags + 25) & 8) == 0)
      {
        [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
        rowHeight = v7;
      }
    }
  }

  return rowHeight;
}

- (double)_heightForCell:(id)a3 atIndexPath:(id)a4
{
  if ([a3 _needsSetup] & 1) != 0 || (objc_msgSend(a3, "_needsHeightCalculation") & 1) != 0 || (objc_msgSend(a3, "needsUpdateConstraints") & 1) != 0 || a3 && (objc_msgSend(*(a3 + 21), "needsLayout"))
  {
    [(UITableView *)self _classicHeightForRowAtIndexPath:a4];
    rowHeight = v7;
    if ((*(&self->_tableFlags + 25) & 8) != 0 && v7 == -1.0)
    {
      if (!dyld_program_sdk_at_least() || (rowHeight = -1.0, [(UITableView *)self _estimatesRowHeights]))
      {
        v9 = -[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](self->_rowData, [a4 row], objc_msgSend(a4, "section"), 1);
        v11 = v10;
        v13 = v12;
        v15 = v14;
        [(UITableView *)self _prepareToSizeView:a3];
        v32.origin.x = v9;
        v32.origin.y = v11;
        v32.size.width = v13;
        v32.size.height = v15;
        Width = CGRectGetWidth(v32);
        LODWORD(v17) = 1148846080;
        LODWORD(v18) = 1112014848;
        [a3 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v17, v18}];
        rowHeight = v19;
        if (v19 <= 0.0)
        {
          rowHeight = self->_rowHeight;
        }

        intrinsicContentSizeInvalidationContext = self->_intrinsicContentSizeInvalidationContext;
        if (intrinsicContentSizeInvalidationContext)
        {
          [(UICollectionViewLayoutInvalidationContext *)intrinsicContentSizeInvalidationContext _removeInvalidatedItemIndexPath:a4];
        }
      }
    }

    v21 = [a3 _detailTextLabel:0];
    v22 = [v21 text];
    v23 = [v22 length];

    if (rowHeight == -1.0)
    {
      constants = self->_constants;
      v25 = [a3 style];

      [(UITableConstants *)constants defaultRowHeightForTableView:self cellStyle:v25 hasDetailText:v23 != 0];
    }

    else
    {
      return rowHeight;
    }
  }

  else
  {
    [a3 frame];

    return CGRectGetHeight(*&v27);
  }

  return result;
}

- (double)_classicHeightForHeaderInSection:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(&self->_tableFlags + 4) & 2) != 0)
  {
    v8 = [(UITableView *)self _delegateProxy];
    [v8 tableView:self heightForHeaderInSection:a3];
    sectionHeaderHeight = v9;

    v10 = dyld_program_sdk_at_least();
    v11 = sectionHeaderHeight < 0.0;
    if (sectionHeaderHeight == -1.0)
    {
      v11 = 0;
    }

    if (v10)
    {
      if (v11)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:18618 description:{@"Invalid section header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&sectionHeaderHeight}];
      }
    }

    else if (v11)
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &_classicHeightForHeaderInSection____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v15 = sectionHeaderHeight;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Invalid section header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }

    return sectionHeaderHeight;
  }

  sectionHeaderHeight = self->_sectionHeaderHeight;
  if (sectionHeaderHeight != -1.0)
  {
    return sectionHeaderHeight;
  }

  sectionHeaderHeight = -1.0;
  if ((*(&self->_tableFlags + 25) & 8) != 0)
  {
    return sectionHeaderHeight;
  }

  [(UITableView *)self _defaultSectionHeaderHeight];
  return result;
}

- (double)_heightForHeaderView:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  [(UITableView *)self _classicHeightForHeaderInSection:a4];
  sectionHeaderHeight = v7;
  if ((*(&self->_tableFlags + 25) & 8) != 0 && v7 == -1.0)
  {
    if (dyld_program_sdk_at_least() && ![(UITableView *)self _estimatesSectionHeaderHeights])
    {
      goto LABEL_12;
    }

    v9 = [(UITableViewRowData *)self->_rowData rectForHeaderInSection:a4 heightCanBeGuessed:1];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    if (dyld_program_sdk_at_least())
    {
      [v6 setLayoutMarginsFollowReadableWidth:{-[UITableView cellLayoutMarginsFollowReadableWidth](self, "cellLayoutMarginsFollowReadableWidth")}];
      [v6 _updateInferredLayoutMarginsFromSuperview:self];
    }

    [(UITableView *)self _prepareToSizeView:v6];
    v24.origin.x = v9;
    v24.origin.y = v11;
    v24.size.width = v13;
    v24.size.height = v15;
    Width = CGRectGetWidth(v24);
    LODWORD(v17) = 1148846080;
    LODWORD(v18) = 1112014848;
    [v6 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v17, v18}];
    sectionHeaderHeight = v19;
    if (v19 <= 0.0)
    {
      sectionHeaderHeight = self->_sectionHeaderHeight;
    }

    intrinsicContentSizeInvalidationContext = self->_intrinsicContentSizeInvalidationContext;
    if (intrinsicContentSizeInvalidationContext)
    {
      v21 = [MEMORY[0x1E696AC88] indexPathWithIndex:a4];
      [(UICollectionViewLayoutInvalidationContext *)intrinsicContentSizeInvalidationContext _removeInvalidatedSupplementaryOfKind:@"UICollectionElementKindSectionHeader" indexPath:v21];
    }
  }

  if (sectionHeaderHeight == -1.0)
  {
LABEL_12:
    [(UITableView *)self _defaultSectionHeaderHeight];
    sectionHeaderHeight = v22;
  }

  return sectionHeaderHeight;
}

- (double)_classicHeightForFooterInSection:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(&self->_tableFlags + 4) & 8) != 0)
  {
    v8 = [(UITableView *)self _delegateProxy];
    [v8 tableView:self heightForFooterInSection:a3];
    sectionFooterHeight = v9;

    v10 = dyld_program_sdk_at_least();
    v11 = sectionFooterHeight < 0.0;
    if (sectionFooterHeight == -1.0)
    {
      v11 = 0;
    }

    if (v10)
    {
      if (v11)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:18653 description:{@"Invalid section footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&sectionFooterHeight}];
      }
    }

    else if (v11)
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &_classicHeightForFooterInSection____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v15 = sectionFooterHeight;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Invalid section footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }

    return sectionFooterHeight;
  }

  sectionFooterHeight = self->_sectionFooterHeight;
  if (sectionFooterHeight != -1.0)
  {
    return sectionFooterHeight;
  }

  sectionFooterHeight = -1.0;
  if ((*(&self->_tableFlags + 25) & 8) != 0)
  {
    return sectionFooterHeight;
  }

  [(UITableView *)self _defaultSectionFooterHeight];
  return result;
}

- (double)_heightForFooterView:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  [(UITableView *)self _classicHeightForFooterInSection:a4];
  sectionFooterHeight = v7;
  if ((*(&self->_tableFlags + 25) & 8) != 0 && v7 == -1.0)
  {
    if (dyld_program_sdk_at_least() && ![(UITableView *)self _estimatesSectionFooterHeights])
    {
      goto LABEL_12;
    }

    v9 = [(UITableViewRowData *)self->_rowData rectForFooterInSection:a4 heightCanBeGuessed:1];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    if (dyld_program_sdk_at_least())
    {
      [v6 setLayoutMarginsFollowReadableWidth:{-[UITableView cellLayoutMarginsFollowReadableWidth](self, "cellLayoutMarginsFollowReadableWidth")}];
      [v6 _updateInferredLayoutMarginsFromSuperview:self];
    }

    [(UITableView *)self _prepareToSizeView:v6];
    v24.origin.x = v9;
    v24.origin.y = v11;
    v24.size.width = v13;
    v24.size.height = v15;
    Width = CGRectGetWidth(v24);
    LODWORD(v17) = 1148846080;
    LODWORD(v18) = 1112014848;
    [v6 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v17, v18}];
    sectionFooterHeight = v19;
    if (v19 <= 0.0)
    {
      sectionFooterHeight = self->_sectionFooterHeight;
    }

    intrinsicContentSizeInvalidationContext = self->_intrinsicContentSizeInvalidationContext;
    if (intrinsicContentSizeInvalidationContext)
    {
      v21 = [MEMORY[0x1E696AC88] indexPathWithIndex:a4];
      [(UICollectionViewLayoutInvalidationContext *)intrinsicContentSizeInvalidationContext _removeInvalidatedSupplementaryOfKind:@"UICollectionElementKindSectionFooter" indexPath:v21];
    }
  }

  if (sectionFooterHeight == -1.0)
  {
LABEL_12:
    [(UITableView *)self _defaultSectionFooterHeight];
    sectionFooterHeight = v22;
  }

  return sectionFooterHeight;
}

- (void)_setDisableReuseQueuePurgeOnTextSizeChanges:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)_systemTextSizeChanged
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(UITableView *)self cellLayoutMarginsFollowReadableWidth];
  if (self && v3)
  {
    [(UIView *)self _updateInferredLayoutMargins];
  }

  [(UITableView *)self _reapTentativeViews];
  [(_UITableViewSubviewManager *)&self->_subviewManager->super.isa removeAllPrefetchedCells];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->_visibleCells;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        __37__UITableView__systemTextSizeChanged__block_invoke(*(*(&v29 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(NSMutableDictionary *)self->_reusableTableCells objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v22;
          do
          {
            v19 = 0;
            do
            {
              if (*v22 != v18)
              {
                objc_enumerationMutation(v15);
              }

              __37__UITableView__systemTextSizeChanged__block_invoke(*(*(&v21 + 1) + 8 * v19++));
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
          }

          while (v17);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v11);
  }

  v20 = *(&self->_tableFlags + 3);
  if ((v20 & 0x80000000000) == 0)
  {
    *(&self->_tableFlags + 3) = v20 | 0x40000000000;
  }

  [(UITableView *)self _performInternalReloadData];
}

void __37__UITableView__systemTextSizeChanged__block_invoke(void *a1)
{
  v3 = a1;
  v1 = [MEMORY[0x1E695DFB0] null];

  v2 = v3;
  if (v1 != v3)
  {
    [v3 _systemTextSizeChanged];
    v2 = v3;
  }
}

- (void)_setManuallyManagesSwipeUI:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFFFFFFFFBFLL | v3;
  [(UITableView *)self _updateWrapperView];
}

- (void)_setHeight:(double)a3 forRowAtIndexPath:(id)a4
{
  v6 = a4;
  [(UITableView *)self _setHeight:v6 forRowAtIndexPath:[(UITableView *)self _isUsingPresentationValues] usingPresentationValues:a3];
}

- (void)_setHeight:(double)a3 forRowAtIndexPath:(id)a4 usingPresentationValues:(BOOL)a5
{
  v8 = a4;
  if (!a5)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v12 = v8;
      v10 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:?];

      v8 = v10;
    }
  }

  v11 = 0.00000011920929;
  if (a3 > 0.0)
  {
    v11 = a3;
  }

  v13 = v8;
  [(UITableViewRowData *)self->_rowData setHeight:v8 forRowAtIndexPath:v11];
  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
}

- (void)_setAllowsReorderingWhenNotEditing:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  p_tableFlags = &self->_tableFlags;
  if (((((*(&self->_tableFlags + 3) & 0x80) == 0) ^ a3) & 1) == 0)
  {
    v5 = 128;
    if (!a3)
    {
      v5 = 0;
    }

    *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFFFFFFFF7FLL | v5;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_visibleCells;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 _setAllowsReorderingWhenNotEditing:{(*(p_tableFlags + 3) >> 7) & 1, v15}];
          v12 = [(UITableView *)self _indexPathForCell:v11 usingPresentationValues:1];
          v13 = *(p_tableFlags + 1);
          if ((v13 & 0x40000000000000) != 0)
          {
            if ([(UITableView *)self _canEditRowAtIndexPath:v12])
            {
              goto LABEL_15;
            }

            v13 = *(p_tableFlags + 1);
          }

          if ((v13 & 0x40000000000000) != 0 || (*(p_tableFlags + 24) & 0x80) == 0)
          {
            v14 = 0;
            goto LABEL_16;
          }

LABEL_15:
          v14 = [(UITableView *)self _canReorderRowAtIndexPath:v12];
LABEL_16:
          [v11 _setShowsReorderControl:v14];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

- (void)_setIndexRetargetFeedbackGenerator:(id)a3
{
  v5 = a3;
  if ([(UIFeedbackGenerator *)self->_indexRetargetFeedbackGenerator isActive])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:18808 description:@"Index retarget feedback behavior should not be changed while active."];
  }

  indexRetargetFeedbackGenerator = self->_indexRetargetFeedbackGenerator;
  self->_indexRetargetFeedbackGenerator = v5;
}

- (void)_setReorderFeedbackGenerator:(id)a3
{
  v5 = a3;
  if ([(UIFeedbackGenerator *)self->_reorderFeedbackGenerator isActive])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:18819 description:@"Reorder feedback behavior should not be changed while active."];
  }

  reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
  self->_reorderFeedbackGenerator = v5;
}

- (void)_setCellsSelfSize:(BOOL)a3
{
  v4 = 2048;
  if (!a3)
  {
    v4 = 0;
  }

  *(&self->_tableFlags + 3) = *(&self->_tableFlags + 3) & 0xFFFFFFFFFFFFF7FFLL | v4;
  [(UITableView *)self _initializeTentativeViewContainers];

  [(UITableView *)self _setupDefaultHeights];
}

- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = UITableView;
  [(UIView *)&v4 _accessibilitySetInterfaceStyleIntent:a3];
  [(UITableView *)self _resetDarkenedSeparatorColor];
}

- (void)swipeActionController:(id)a3 swipeOccurrence:(id)a4 didChangeStateFrom:(int64_t)a5 to:(int64_t)a6
{
  v12 = a3;
  v8 = a4;
  v9 = v8;
  if (a6 == 5 || a6 == 4 && ([v8 currentAction], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "style"), v10, v11 != 1))
  {
    [v12 resetSwipedItemAnimated:1 completion:0];
  }
}

- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  tableFlags = self->_tableFlags;
  if ((tableFlags & 0x200000) != 0)
  {
    v21 = [(UITableView *)self _delegateProxy];
    v19 = [v21 tableView:self leadingSwipeActionsConfigurationForRowAtIndexPath:v8];

    if (!v19)
    {
LABEL_18:
      v26 = [(UITableView *)self _cellForRowAtIndexPath:v8 usingPresentationValues:1];
      v27 = v26;
      if (v26 && ([v26 contentView], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_opt_respondsToSelector(), v28, (v29 & 1) != 0))
      {
        v30 = [v27 contentView];
        v19 = [v30 _leadingSwipeActionsConfiguration];
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_23;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [(UITableView *)self _delegateActual];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [v22 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:18908 description:{@"%@ is expected to return an instance of %@ from -tableView:leadingSwipeActionsConfigurationForRowAtIndexPath: but returned %@.", v23, v25, v19}];
    }
  }

  else
  {
    if ((tableFlags & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    v10 = [(UITableView *)self _delegateProxy];
    v11 = [v10 tableView:self leadingSwipeActionsForRowAtIndexPath:v8];

    if (!v11)
    {
      goto LABEL_18;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        v16 = 0;
        do
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v33 = [MEMORY[0x1E696AAA8] currentHandler];
            v32 = [(UITableView *)self _delegateActual];
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            [v33 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:18916 description:{@"%@ is expected to return an array of %@ from -tableView:leadingSwipeActionsForRowAtIndexPath: but returned %@.", v32, v18, v12}];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v19 = [UISwipeActionsConfiguration configurationWithActions:v12];
    v20 = [v12 firstObject];
    [v19 setPerformsFirstActionWithFullSwipe:{objc_msgSend(v20, "canBeTriggeredBySwipe")}];

    if (!v19)
    {
      goto LABEL_18;
    }
  }

LABEL_23:

  return v19;
}

- (int64_t)layoutDirectionForSwipeActionController:(id)a3
{
  if (dyld_program_sdk_at_least())
  {

    return [(UIView *)self effectiveUserInterfaceLayoutDirection];
  }

  else
  {
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 layoutDirection];

    return v6;
  }
}

- (void)swipeActionController:(id)a3 willPerformAction:(id)a4 atIndexPath:(id)a5
{
  if ([a4 style] == 1)
  {
    *(&self->_tableFlags + 2) |= 0x40000000000000uLL;
  }
}

- (void)swipeActionController:(id)a3 didCompleteAnimationOfAction:(id)a4 canceled:(BOOL)a5 atIndexPath:(id)a6
{
  deferredEditingHandler = self->_deferredEditingHandler;
  if (deferredEditingHandler)
  {
    v8 = _Block_copy(deferredEditingHandler);
    v8[2]();
    v9 = self->_deferredEditingHandler;
    self->_deferredEditingHandler = 0;
  }

  *(&self->_tableFlags + 2) &= ~0x4000000000000uLL;
}

- (UIEdgeInsets)swipeActionController:(id)a3 extraInsetsForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(&self->_tableFlags + 2);
  v9 = [(UITableView *)self insetsContentViewsToSafeArea];
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  if ((v8 & 0x2000000000000000) != 0)
  {
    if (v9)
    {
      goto LABEL_7;
    }

    wrapperView = self->_wrapperView;
  }

  else
  {
    if (v9)
    {
      goto LABEL_7;
    }

    wrapperView = self;
  }

  [wrapperView safeAreaInsets];
  v13 = v15;
  v12 = v16;
  v11 = v17;
  v10 = v18;
LABEL_7:
  v19 = *(&self->super.super._viewFlags + 2);
  [(UIView *)self->_index frame];
  Width = CGRectGetWidth(v27);
  v21 = v10 + Width;
  v22 = v12 + Width;
  if ((v19 & 0x400000) != 0)
  {
    v12 = v22;
  }

  else
  {
    v10 = v21;
  }

  v23 = v13;
  v24 = v12;
  v25 = v11;
  v26 = v10;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (UIEdgeInsets)swipeActionController:(id)a3 pullViewInsetsForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(&self->_tableFlags + 23) & 0x20) == 0)
  {
    [(UITableView *)self _effectiveSafeAreaInsets];
LABEL_5:
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    goto LABEL_6;
  }

  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if ([(UITableView *)self insetsContentViewsToSafeArea])
  {
    [(UIView *)self->_wrapperView safeAreaInsets];
    goto LABEL_5;
  }

LABEL_6:

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (BOOL)swipeActionController:(id)a3 insertActionsView:(id)a4 forItemAtIndexPath:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(UITableView *)self _cellForRowAtIndexPath:v8 usingPresentationValues:1];
  if (v9)
  {
    v10 = objc_opt_new();
    [v9 _setSwipeContainerView:v10];
    [v10 insertSubview:v7 atIndex:0];
LABEL_3:

    goto LABEL_7;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v10 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Swipe actions view was not created for index path: %@", &v13, 0xCu);
    }

    goto LABEL_3;
  }

  v11 = *(__UILogGetCategoryCachedImpl("Assert", &swipeActionController_insertActionsView_forItemAtIndexPath____s_category_0) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Swipe actions view was not created for index path: %@", &v13, 0xCu);
  }

LABEL_7:

  return v9 != 0;
}

- (void)swipeActionController:(id)a3 cleanupActionsView:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a5;
  [a4 removeFromSuperview];
  v8 = [(UITableView *)self _cellForRowAtIndexPath:v7 usingPresentationValues:1];

  [v8 _setSwipeContainerView:0];
}

- (BOOL)swipeActionController:(id)a3 mayBeginSwipeForItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (![(UITableView *)self _wantsSwipes])
  {
    goto LABEL_8;
  }

  if ([v5 isEqual:self->_swipedIndexPath])
  {
    v6 = 1;
    goto LABEL_9;
  }

  if (![(UITableView *)self _canEditRowAtIndexPath:v5]|| (p_tableFlags = &self->_tableFlags, v8 = *(&self->_tableFlags + 3), (v8 & 0x8000000000) != 0) || (*(&self->_tableFlags + 15) & 0x40) != 0 || self->_tableReloadingSuspendedCount > 0)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  reorderingSupport = self->_reorderingSupport;
  if (!reorderingSupport)
  {
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v11 = [(UITableView *)self _cellForRowAtIndexPath:v5 usingPresentationValues:1];
    v12 = [(_UITableViewDragController *)self->_dragController indexPaths];
    v13 = v12;
    if (!v12 || ([v12 containsObject:v5] & 1) == 0)
    {
      v14 = [v11 _dropAnimationContainerView];

      if (!v14)
      {
        if ((*p_tableFlags & 0x1F00040) != 0)
        {
          v6 = 1;
          goto LABEL_19;
        }

        if (dyld_program_sdk_at_least())
        {
          v15 = [v11 contentView];
          v6 = (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0;

          goto LABEL_19;
        }
      }
    }

    v6 = 0;
LABEL_19:

    goto LABEL_9;
  }

  v6 = 0;
  if ((v8 & 0x40) == 0 && !reorderingSupport->_initialIndexPath)
  {
    goto LABEL_15;
  }

LABEL_9:

  return v6;
}

- (void)swipeActionController:(id)a3 willBeginSwipeForItemAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = a4;
  swipedIndexPath = self->_swipedIndexPath;
  if (swipedIndexPath && ([(NSIndexPath *)swipedIndexPath isEqual:v6]& 1) == 0 && (*(&self->_tableFlags + 22) & 8) != 0)
  {
    *(&self->_tableFlags + 3) |= 0x10000000uLL;
    [(UITableView *)self _sendDidEndEditingForIndexPath:self->_swipedIndexPath];
    *(&self->_tableFlags + 3) &= ~0x10000000uLL;
  }

  [(UITableView *)self _suspendReloads];
  if ((*(&self->_tableFlags + 11) & 2) != 0)
  {
    v8 = [(UITableView *)self _delegateProxy];
    [v8 tableView:self willBeginSwipingRowAtIndexPath:v6];
  }

  v9 = self->_swipedIndexPath;
  objc_storeStrong(&self->_swipedIndexPath, a4);
  v10 = [(UITableView *)self _cellForRowAtIndexPath:v6 usingPresentationValues:1];
  swipeToDeleteCell = self->_swipeToDeleteCell;
  self->_swipeToDeleteCell = v10;

  v12 = *(&self->_tableFlags + 2);
  *(&self->_tableFlags + 2) = v12 & 0xFF7FFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    [(UITableView *)self _updateWrapperClipping];
    [(UITableView *)self _updateWrapperFrame];
  }

  v13 = [(UITableView *)self isEditing];
  v14 = *(&self->_tableFlags + 2);
  if (v13)
  {
    if ((v14 & 0x8000000000000) != 0 && ([(NSIndexPath *)v9 isEqual:v6]& 1) == 0)
    {
      [(UITableView *)self _sendWillBeginEditingForIndexPath:v6];
    }
  }

  else
  {
    *(&self->_tableFlags + 2) = v14 | 0x8000000000000;
    [(UITableView *)self _sendWillBeginEditingForIndexPath:v6];
    [(UITableView *)self _setEditing:1 animated:1 forced:0];
  }

  [(UITableView *)self _resumeReloads];
}

- (void)swipeActionController:(id)a3 didEndSwipeForItemAtIndexPath:(id)a4
{
  v5 = a4;
  *(&self->_tableFlags + 2) &= ~0x40000000000000uLL;
  v14 = v5;
  v6 = [UITableView _cellForRowAtIndexPath:"_cellForRowAtIndexPath:usingPresentationValues:" usingPresentationValues:?];
  if (![(UITableView *)self _swipeDeletionCommitted])
  {
    [(UITableViewCell *)v6 _resetEditControlRotation];
  }

  v7 = [v14 isEqual:self->_swipedIndexPath];
  swipeToDeleteCell = v6;
  if (v7)
  {
    swipeToDeleteCell = self->_swipeToDeleteCell;
  }

  v9 = swipeToDeleteCell;
  v10 = v9;
  if ((*(&self->_tableFlags + 17) & 4) == 0)
  {
    [(UITableViewCell *)v9 _setSwipeContainerView:0];
  }

  if (v7)
  {
    if ((*(&self->_tableFlags + 2) & 0x8000000000000) != 0)
    {
      [(UITableView *)self _setEditing:0 animated:(*(&self->_tableFlags + 2) & 0x400) == 0 forced:1];
    }

    v11 = self->_swipeToDeleteCell;
    self->_swipeToDeleteCell = 0;

    swipedIndexPath = self->_swipedIndexPath;
    self->_swipedIndexPath = 0;

    if ((*(&self->_tableFlags + 23) & 0x20) != 0)
    {
      [(UITableView *)self _updateWrapperClipping];
      [(UITableView *)self _updateWrapperFrame];
    }
  }

  if ((*(&self->_tableFlags + 11) & 4) != 0)
  {
    v13 = [(UITableView *)self _delegateProxy];
    [v13 tableView:self didEndSwipingRowAtIndexPath:v14];
  }
}

- (id)swipeActionForDeletingRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(UITableView *)self _titleForDeleteConfirmationButtonForRowAtIndexPath:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__UITableView_swipeActionForDeletingRowAtIndexPath___block_invoke;
  v9[3] = &unk_1E70FEA28;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [UISwipeAction swipeActionWithStyle:1 title:v5 handler:v9];

  return v7;
}

- (id)contextualActionForDeletingRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(UITableView *)self _contextualActionForDeletingRowAtIndexPath:v4 usingPresentationValues:[(UITableView *)self _isUsingPresentationValues]];

  return v5;
}

- (id)_contextualActionForDeletingRowAtIndexPath:(id)a3 usingPresentationValues:(BOOL)a4
{
  v7 = a3;
  if (!a4)
  {
    shadowUpdatesController = self->_shadowUpdatesController;
    if (shadowUpdatesController)
    {
      v9 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v7];

      v7 = v9;
    }
  }

  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    [v14 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19183 description:{@"UITableView internal inconsistency: indexPath cannot be nil in %@", v15}];
  }

  v10 = [(UITableView *)self _titleForDeleteConfirmationButtonForRowAtIndexPath:v7];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__UITableView__contextualActionForDeletingRowAtIndexPath_usingPresentationValues___block_invoke;
  v16[3] = &unk_1E70FEA50;
  v16[4] = self;
  v17 = v7;
  v11 = v7;
  v12 = [UIContextualAction contextualActionWithStyle:1 title:v10 handler:v16];

  return v12;
}

void __82__UITableView__contextualActionForDeletingRowAtIndexPath_usingPresentationValues___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a4;
  [v5 _animateDeletionOfRowAtIndexPath:v6];
  v7[2](v7, [*(a1 + 32) _swipeDeletionCommitted]);
}

- (id)_contextualActionForDeletingRowAtIndexPath:(id)a3 performsFirstActionWithFullSwipe:(BOOL *)a4
{
  v6 = a3;
  v7 = [(UITableView *)self methodForSelector:sel_swipeActionForDeletingRowAtIndexPath_];
  if (v7 == [UITableView instanceMethodForSelector:sel_swipeActionForDeletingRowAtIndexPath_])
  {
    *a4 = 1;
  }

  else
  {
    v8 = [(UITableView *)self swipeActionForDeletingRowAtIndexPath:v6];
    *a4 = [v8 canBeTriggeredBySwipe];
  }

  v9 = [(UITableView *)self contextualActionForDeletingRowAtIndexPath:v6];

  return v9;
}

- (id)_trailingSwipeConfigurationAtIndexPath:(id)a3 fromRemoveButton:(BOOL)a4
{
  v4 = a4;
  v86 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = dyld_program_sdk_at_least();
  tableFlags = self->_tableFlags;
  if ((v4 & ~v8 & 1) != 0 || (tableFlags & 0x400000) == 0)
  {
    if (v4 || (tableFlags & 0x1000000) == 0)
    {
      if ((tableFlags & 0x100000) == 0)
      {
        goto LABEL_38;
      }

      v31 = [(UITableView *)self _delegateProxy];
      v32 = [v31 tableView:self editActionsForRowAtIndexPath:v7];

      if (!v32)
      {
        goto LABEL_38;
      }

      v33 = self;
      v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v32, "count")}];
      v64 = dyld_program_sdk_at_least();
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v18 = v32;
      v34 = [v18 countByEnumeratingWithState:&v75 objects:v84 count:16];
      if (v34)
      {
        v35 = v34;
        v63 = a2;
        v66 = *v76;
        v67 = v30;
        obj = v18;
        do
        {
          v36 = 0;
          do
          {
            if (*v76 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v75 + 1) + 8 * v36);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v47 = [MEMORY[0x1E696AAA8] currentHandler];
              [(UITableView *)v33 _delegateActual];
              v49 = v48 = v7;
              v50 = objc_opt_class();
              v51 = NSStringFromClass(v50);
              [v47 handleFailureInMethod:v63 object:v33 file:@"UITableView.m" lineNumber:19238 description:{@"%@ is expected to return an array of %@ from -tableView:editActionsForRowAtIndexPath: but returned %@.", v49, v51, obj}];

              v7 = v48;
            }

            v38 = v7;
            v39 = v7;
            shadowUpdatesController = v33->_shadowUpdatesController;
            if (shadowUpdatesController)
            {
              v41 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathBeforeShadowUpdates:v39];

              v39 = v41;
            }

            v42 = [v37 style] == 0;
            v43 = [v37 title];
            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 3221225472;
            v71[2] = __71__UITableView__trailingSwipeConfigurationAtIndexPath_fromRemoveButton___block_invoke;
            v71[3] = &unk_1E7123928;
            v44 = v39;
            v72 = v44;
            v73 = v37;
            v74 = v33;
            v45 = [UIContextualAction contextualActionWithStyle:v42 title:v43 handler:v71];

            v46 = [v37 backgroundColor];
            v30 = v67;
            if ([v46 isPatternColor])
            {
              if (_trailingSwipeConfigurationAtIndexPath_fromRemoveButton__once != -1)
              {
                dispatch_once(&_trailingSwipeConfigurationAtIndexPath_fromRemoveButton__once, &__block_literal_global_1294);
              }

              [v45 setForcesFallbackBackgroundColor:1];
              v64 = 0;
            }

            [v45 setBackgroundColor:v46];
            [v67 addObject:v45];

            ++v36;
            v7 = v38;
          }

          while (v35 != v36);
          v18 = obj;
          v35 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
        }

        while (v35);
      }

      v11 = [UISwipeActionsConfiguration configurationWithActions:v30];
      [v11 setPerformsFirstActionWithFullSwipe:v64 & 1];
      self = v33;
    }

    else
    {
      v16 = [(UITableView *)self _delegateProxy];
      v17 = [v16 tableView:self trailingSwipeActionsForRowAtIndexPath:v7];

      if (!v17)
      {
        goto LABEL_38;
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v79 objects:v85 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v80;
        v22 = 0x1E696A000uLL;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v80 != v21)
            {
              objc_enumerationMutation(v18);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v24 = [*(v22 + 2728) currentHandler];
              [(UITableView *)self _delegateActual];
              v26 = v25 = self;
              v27 = objc_opt_class();
              NSStringFromClass(v27);
              v29 = v28 = v7;
              [v24 handleFailureInMethod:a2 object:v25 file:@"UITableView.m" lineNumber:19219 description:{@"%@ is expected to return an array of %@ from -tableView:trailingSwipeActionsForRowAtIndexPath: but returned %@.", v26, v29, v18}];

              v7 = v28;
              self = v25;
              v22 = 0x1E696A000;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v79 objects:v85 count:16];
        }

        while (v20);
      }

      v11 = [UISwipeActionsConfiguration configurationWithActions:v18];
      v30 = [v18 firstObject];
      [v11 setPerformsFirstActionWithFullSwipe:{objc_msgSend(v30, "canBeTriggeredBySwipe")}];
    }

    if (v11)
    {
      goto LABEL_54;
    }

    goto LABEL_38;
  }

  v10 = [(UITableView *)self _delegateProxy];
  v11 = [v10 tableView:self trailingSwipeActionsConfigurationForRowAtIndexPath:v7];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [(UITableView *)self _delegateActual];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19211 description:{@"%@ is expected to return an instance of %@ from -tableView:trailingSwipeActionsConfigurationForRowAtIndexPath: but returned %@.", v13, v15, v11}];
    }

    goto LABEL_54;
  }

LABEL_38:
  v70 = 1;
  if ((*&self->_tableFlags & 0x40) != 0 && [(UITableView *)self _canEditRowAtIndexPath:v7]&& [(UITableView *)self _editingStyleForRowAtIndexPath:v7]== 1)
  {
    v52 = [(UITableView *)self _contextualActionForDeletingRowAtIndexPath:v7 performsFirstActionWithFullSwipe:&v70];
    v83 = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
  }

  else
  {
    v53 = MEMORY[0x1E695E0F0];
  }

  v54 = [(UITableView *)self _titleForSwipeAccessoryButtonForRowAtIndexPath:v7];
  if (v54)
  {
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __71__UITableView__trailingSwipeConfigurationAtIndexPath_fromRemoveButton___block_invoke_1295;
    v68[3] = &unk_1E70FEA50;
    v68[4] = self;
    v69 = v7;
    v55 = [UIContextualAction contextualActionWithStyle:0 title:v54 handler:v68];
    v56 = [v53 arrayByAddingObject:v55];

    v53 = v56;
  }

  if ([v53 count])
  {
    v11 = [UISwipeActionsConfiguration configurationWithActions:v53];
    [v11 setPerformsFirstActionWithFullSwipe:dyld_program_sdk_at_least() & v70];

    if (v11)
    {
      goto LABEL_54;
    }
  }

  else
  {
  }

  v57 = [(UITableView *)self _cellForRowAtIndexPath:v7 usingPresentationValues:1];
  v58 = v57;
  if (v57 && ([v57 contentView], v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_opt_respondsToSelector(), v59, (v60 & 1) != 0))
  {
    v61 = [v58 contentView];
    v11 = [v61 _trailingSwipeActionsConfiguration];
  }

  else
  {
    v11 = 0;
  }

LABEL_54:

  return v11;
}

void __71__UITableView__trailingSwipeConfigurationAtIndexPath_fromRemoveButton___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (*(a1 + 32))
  {
    v5 = [*(a1 + 40) _handler];
    v5[2](v5, *(a1 + 40), *(a1 + 32));

    if ([*(a1 + 40) style])
    {
      v6 = 1;
    }

    else
    {
      v6 = [*(a1 + 48) _swipeDeletionCommitted];
    }
  }

  else
  {
    v6 = 0;
  }

  v7[2](v7, v6);
}

void __71__UITableView__trailingSwipeConfigurationAtIndexPath_fromRemoveButton___block_invoke_2()
{
  v0 = *(__UILogGetCategoryCachedImpl("TableView", &_UIInternalPreference_TableViewHeadersFootersUseModernConfiguration_block_invoke_9___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Setting a pattern color as backgroundColor of UITableViewRowAction is no longer supported.", v1, 2u);
  }
}

void __71__UITableView__trailingSwipeConfigurationAtIndexPath_fromRemoveButton___block_invoke_1295(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v4 = *(a1 + 32);
  if ((v4[3178] & 8) != 0)
  {
    v6 = a4;
    v7 = [v4 _delegateProxy];
    [v7 tableView:*(a1 + 32) swipeAccessoryButtonPushedForRowAtIndexPath:*(a1 + 40)];

    (*(v6 + 2))(v6, 1);
  }

  else
  {
    a4[2](a4, 0);
  }
}

- (void)_swipeToDeleteCell:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UITableView *)self _reorderingIndexPath];

  v7 = [v5 _dropAnimationContainerView];
  v8 = v6 | v7;

  if (v8)
  {
    [v5 _resetEditControlRotation];
    goto LABEL_11;
  }

  v9 = [(UITableView *)self _indexPathForCell:v5 usingPresentationValues:1];

  if (!v9)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v14 = NSStringFromSelector(a2);
      v15 = 138412290;
      v16 = v14;
      _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "The index path should never be nil in %@", &v15, 0xCu);
    }

    else
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &_swipeToDeleteCell____s_category) + 8);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        v5 = 0;
        goto LABEL_11;
      }

      v13 = v12;
      v14 = NSStringFromSelector(a2);
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "The index path should never be nil in %@", &v15, 0xCu);
    }

LABEL_9:
    goto LABEL_10;
  }

  swipeActionController = self->_swipeActionController;
  v11 = [(UITableView *)self _trailingSwipeConfigurationAtIndexPath:v9 fromRemoveButton:1];
  [(UISwipeActionController *)swipeActionController swipeItemAtIndexPath:v9 configuration:v11 direction:[(UISwipeActionController *)self->_swipeActionController _swipeDirectionForLeadingEdge:0] animated:1 completion:0];

  v5 = v9;
LABEL_11:
}

- (BOOL)_swipeDeletionCommitted
{
  v2 = [(UISwipeActionController *)self->_swipeActionController currentSwipeOccurrence];
  v3 = [v2 currentAction];
  v4 = [v3 style] == 1 && objc_msgSend(v2, "state") == 4;

  return v4;
}

- (int64_t)_numberOfRowsInSection:(int64_t)a3
{
  v5 = [(UITableView *)self _dataSourceProxy];
  v6 = [v5 tableView:self numberOfRowsInSection:a3];

  return v6 & ~(v6 >> 63);
}

- (int64_t)_dataSourceNumberOfSections
{
  if ((*&self->_tableFlags & 4) == 0)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained numberOfSectionsInTableView:self];

  return v5 & ~(v5 >> 63);
}

- (int64_t)_dataSourceNumberOfItemsInSection:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained tableView:self numberOfRowsInSection:a3];

  return v6 & ~(v6 >> 63);
}

- (double)_headerFooterLeadingMarginWidthIsHeader:(BOOL)a3 isFirstSection:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (dyld_program_sdk_at_least())
  {
    v7 = *(&self->super.super._viewFlags + 2);
    [(UITableView *)self _sectionContentInset];
    v9 = v8;
    v11 = v10;
    [(UITableView *)self _tableContentInset];
    v13 = fmax(v9 - v12, 0.0);
    v15 = fmax(v11 - v14, 0.0);
    if ((v7 & 0x400000) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    left = self->_separatorInset.left;
    v18 = [(UITableView *)self _separatorInsetIsRelativeToCellEdges];
    if (v16 == 0.0)
    {
      [(UITableView *)self _defaultMarginWidth];
      v20 = v19;
    }

    else
    {
      v23 = [(UIView *)self traitCollection];
      v24 = [v23 userInterfaceIdiom];

      if (v24 == 6)
      {
        [(UITableConstants *)self->_constants defaultHeaderFooterLayoutMarginsForTableViewStyle:[(UITableView *)self style] isHeader:v5 isFirstSection:v4];
      }

      else
      {
        v28 = [(UITableMetricsAdapter *)self->_metricsAdapter defaultTableLayoutMargins];
        v30 = v29;
        v32 = v31;
        v33 = [(UIView *)self _shouldReverseLayoutDirection];
        if (v33)
        {
          v25 = v32;
        }

        else
        {
          v25 = v30;
        }

        if (v33)
        {
          v26 = v30;
        }

        else
        {
          v26 = v32;
        }
      }

      if ((v7 & 0x400000) != 0)
      {
        v20 = v26;
      }

      else
      {
        v20 = v25;
      }
    }

    [(UIView *)self directionalLayoutMargins];
    v35 = v34;
    v36 = [(UITableView *)self _shouldApplyReadableWidthInsets];
    if (v16 <= 0.0)
    {
      v37 = left == -1.0 || v18;
      if (left == -1.0)
      {
        result = v20;
      }

      else
      {
        result = left;
      }

      if ((v37 & 1) == 0)
      {
        v38 = v36;
        v39 = dyld_program_sdk_at_least();
        result = left + v35;
        if (!(v38 | v39))
        {
          return left;
        }
      }
    }

    else
    {
      return v16 + v20;
    }
  }

  else
  {
    v21 = self->_sectionContentInset.left;
    if (v21 == -1.0)
    {

      [(UITableView *)self _defaultMarginWidth];
    }

    else
    {
      [(UITableView *)self separatorInset];
      return v21 + v27;
    }
  }

  return result;
}

- (double)_sidePadding
{
  if ((*(&self->_tableFlags + 7) & 2) == 0)
  {
    return 9.0;
  }

  v4 = [(UITableView *)self _delegateProxy];
  [v4 marginForTableView:self];
  v6 = v5;

  return v6;
}

- (UIEdgeInsets)_rawSectionContentInset
{
  top = self->_sectionContentInset.top;
  left = self->_sectionContentInset.left;
  bottom = self->_sectionContentInset.bottom;
  right = self->_sectionContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_heightForRowAtIndexPath:(id)a3
{
  v4 = a3;
  [(UITableView *)self _classicHeightForRowAtIndexPath:v4];
  v6 = v5;
  if ((*(&self->_tableFlags + 25) & 8) != 0 && v5 == -1.0)
  {
    v7 = [(UITableView *)self _existingCellForRowAtIndexPath:v4];
    if (!v7)
    {
      v7 = [(UITableView *)self _createPreparedCellForRowAtIndexPath:v4 willDisplay:0];
    }

    [(UITableView *)self _heightForCell:v7 atIndexPath:v4];
    v6 = v8;
  }

  else if (v5 == -1.0)
  {
    [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
    v6 = v9;
  }

  return v6;
}

- (CGSize)_sizeForHeaderInSection:(int64_t)a3
{
  [(UITableView *)self _classicHeightForHeaderInSection:?];
  v6 = v5;
  [(UITableView *)self _fullWidthHeaderWidth];
  v8 = v7;
  if ([(UITableView *)self _supplementarySectionHeadersHugContent])
  {
    v9 = [(UITableView *)self _existingOrTentativeHeaderViewCreatedIfNeededForSection:a3];
    v12 = v9;
    if (v6 == -1.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v6;
    }

    LODWORD(v10) = 1112014848;
    if (v6 == -1.0)
    {
      *&v11 = 50.0;
    }

    else
    {
      *&v11 = 1000.0;
    }

    [v9 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:v13 verticalFittingPriority:{v10, v11}];
    if (v6 == -1.0)
    {
      if (v14 > v8 || v14 <= 0.0)
      {
        LODWORD(v16) = 1148846080;
        LODWORD(v17) = 1112014848;
        [v12 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v16, v17}];
      }

      v8 = v14;
      v6 = v15;
    }

    else
    {
      v8 = fmin(v14, v8);
    }
  }

  else if ((*(&self->_tableFlags + 25) & 8) != 0 && v6 == -1.0)
  {
    v18 = [(UITableView *)self _existingOrTentativeHeaderViewCreatedIfNeededForSection:a3];
    [(UITableView *)self _heightForHeaderView:v18 inSection:a3];
    v6 = v19;
  }

  else if (v6 == -1.0)
  {
    [(UITableView *)self _defaultSectionHeaderHeight];
    v6 = v20;
  }

  v21 = v8;
  v22 = v6;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)_existingOrTentativeHeaderViewCreatedIfNeededForSection:(int64_t)a3
{
  v5 = [(UITableView *)self _existingHeaderViewForSection:?];
  if (v5)
  {
    goto LABEL_2;
  }

  tentativeHeaderViews = self->_tentativeHeaderViews;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(NSMutableDictionary *)tentativeHeaderViews objectForKey:v8];

  if (!v6)
  {
    v5 = [(UITableView *)self _sectionHeaderViewWithFrame:a3 forSection:0 floating:1 visibleRectDisplacement:0 reuseViewIfPossible:[(UITableViewRowData *)self->_rowData rectForHeaderInSection:a3 heightCanBeGuessed:1] willDisplay:?];
LABEL_2:
    v6 = v5;
  }

  return v6;
}

- (double)_heightForFooterInSection:(int64_t)a3
{
  [(UITableView *)self _classicHeightForFooterInSection:?];
  if ((*(&self->_tableFlags + 25) & 8) != 0 && result == -1.0)
  {
    v6 = [(UITableView *)self _existingFooterViewForSection:a3];
    if (!v6)
    {
      tentativeFooterViews = self->_tentativeFooterViews;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v7 = [(NSMutableDictionary *)tentativeFooterViews objectForKey:v9];

      if (v7)
      {
        goto LABEL_10;
      }

      v6 = [(UITableView *)self _sectionFooterViewWithFrame:a3 forSection:0 floating:1 visibleRectDisplacement:0 reuseViewIfPossible:[(UITableViewRowData *)self->_rowData rectForFooterInSection:a3 heightCanBeGuessed:1] willDisplay:?];
    }

    v7 = v6;
LABEL_10:
    [(UITableView *)self _heightForFooterView:v7 inSection:a3];
    v11 = v10;

    return v11;
  }

  if (result == -1.0)
  {

    [(UITableView *)self _defaultSectionFooterHeight];
  }

  return result;
}

- (double)_estimatedHeightForRowAtIndexPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(&self->_tableFlags + 4) & 0x20) != 0)
  {
    v8 = [(UITableView *)self _delegateProxy];
    [v8 tableView:self estimatedHeightForRowAtIndexPath:v5];
    estimatedRowHeight = v9;

    v10 = dyld_program_sdk_at_least();
    v11 = estimatedRowHeight < 0.0;
    if (estimatedRowHeight == -1.0)
    {
      v11 = 0;
    }

    if (v10)
    {
      if (v11)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19730 description:{@"Invalid estimated row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedRowHeight}];
      }
    }

    else if (v11)
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_estimatedHeightForRowAtIndexPath____s_category_0) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v17 = estimatedRowHeight;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Invalid estimated row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }
  }

  else
  {
    estimatedRowHeight = self->_estimatedRowHeight;
    if (estimatedRowHeight == -1.0)
    {
      estimatedRowHeight = -1.0;
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
        estimatedRowHeight = v7;
      }
    }
  }

  if (estimatedRowHeight <= 1.0 && estimatedRowHeight > 0.0)
  {
    estimatedRowHeight = 2.0;
  }

  return estimatedRowHeight;
}

- (double)_estimatedHeightForHeaderInSection:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(&self->_tableFlags + 4) & 0x40) != 0)
  {
    v8 = [(UITableView *)self _delegateProxy];
    [v8 tableView:self estimatedHeightForHeaderInSection:a3];
    estimatedSectionHeaderHeight = v9;

    v10 = dyld_program_sdk_at_least();
    v11 = estimatedSectionHeaderHeight < 0.0;
    if (estimatedSectionHeaderHeight == -1.0)
    {
      v11 = 0;
    }

    if (v10)
    {
      if (v11)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19747 description:{@"Invalid estimated section header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedSectionHeaderHeight}];
      }
    }

    else if (v11)
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_estimatedHeightForHeaderInSection____s_category_0) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v17 = estimatedSectionHeaderHeight;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Invalid estimated section header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }
  }

  else
  {
    estimatedSectionHeaderHeight = self->_estimatedSectionHeaderHeight;
    if (estimatedSectionHeaderHeight == -1.0)
    {
      estimatedSectionHeaderHeight = -1.0;
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [(UITableConstants *)self->_constants defaultSectionHeaderHeightForTableView:self];
        estimatedSectionHeaderHeight = v5;
      }
    }
  }

  v13 = estimatedSectionHeaderHeight > 1.0 || estimatedSectionHeaderHeight <= 0.0;
  result = 2.0;
  if (v13)
  {
    return estimatedSectionHeaderHeight;
  }

  return result;
}

- (double)_estimatedHeightForFooterInSection:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(&self->_tableFlags + 4) & 0x80) != 0)
  {
    v8 = [(UITableView *)self _delegateProxy];
    [v8 tableView:self estimatedHeightForFooterInSection:a3];
    estimatedSectionFooterHeight = v9;

    v10 = dyld_program_sdk_at_least();
    v11 = estimatedSectionFooterHeight < 0.0;
    if (estimatedSectionFooterHeight == -1.0)
    {
      v11 = 0;
    }

    if (v10)
    {
      if (v11)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19764 description:{@"Invalid estimated section footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedSectionFooterHeight}];
      }
    }

    else if (v11)
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_estimatedHeightForFooterInSection____s_category_0) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v17 = estimatedSectionFooterHeight;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Invalid estimated section footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }
  }

  else
  {
    estimatedSectionFooterHeight = self->_estimatedSectionFooterHeight;
    if (estimatedSectionFooterHeight == -1.0)
    {
      estimatedSectionFooterHeight = -1.0;
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [(UITableConstants *)self->_constants defaultSectionFooterHeightForTableView:self];
        estimatedSectionFooterHeight = v5;
      }
    }
  }

  v13 = estimatedSectionFooterHeight > 1.0 || estimatedSectionFooterHeight <= 0.0;
  result = 2.0;
  if (v13)
  {
    return estimatedSectionFooterHeight;
  }

  return result;
}

- (double)_dataSourceHeightForRowAtIndexPath:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = -1.0;
  if (*(&self->_tableFlags + 4))
  {
    v7 = [(UITableView *)self _delegateProxy];
    [v7 tableView:self heightForRowAtIndexPath:v5];
    v6 = v8;
  }

  v9 = dyld_program_sdk_at_least();
  v10 = v6 < 0.0;
  if (v6 == -1.0)
  {
    v10 = 0;
  }

  if (v9)
  {
    if (v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19778 description:{@"Invalid row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&v6}];
    }
  }

  else if (v10)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_dataSourceHeightForRowAtIndexPath____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v15 = v6;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Invalid row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
    }
  }

  return v6;
}

- (double)_dataSourceHeightForHeaderInSection:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = -1.0;
  if ((*(&self->_tableFlags + 4) & 2) != 0)
  {
    v7 = [(UITableView *)self _delegateProxy];
    [v7 tableView:self heightForHeaderInSection:a3];
    v5 = v8;
  }

  v9 = dyld_program_sdk_at_least();
  v10 = v5 < 0.0;
  if (v5 == -1.0)
  {
    v10 = 0;
  }

  if (v9)
  {
    if (v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19785 description:{@"Invalid section header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&v5}];
    }
  }

  else if (v10)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_dataSourceHeightForHeaderInSection____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v15 = v5;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Invalid section header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
    }
  }

  return v5;
}

- (double)_dataSourceHeightForFooterInSection:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = -1.0;
  if ((*(&self->_tableFlags + 4) & 8) != 0)
  {
    v7 = [(UITableView *)self _delegateProxy];
    [v7 tableView:self heightForFooterInSection:a3];
    v5 = v8;
  }

  v9 = dyld_program_sdk_at_least();
  v10 = v5 < 0.0;
  if (v5 == -1.0)
  {
    v10 = 0;
  }

  if (v9)
  {
    if (v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19792 description:{@"Invalid section footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&v5}];
    }
  }

  else if (v10)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_dataSourceHeightForFooterInSection____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v15 = v5;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Invalid section footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
    }
  }

  return v5;
}

- (void)_applyContentSizeDeltaImmediately:(double)a3
{
  [(UIScrollView *)self contentSize];
  v6 = v5;
  v8 = v7 + a3;
  if ([(UIScrollView *)self isScrollAnimating]|| [(UIScrollView *)self isDecelerating]|| [(UIScrollView *)self isDragging])
  {
    [(UITableView *)self setContentSize:1 skipContentOffsetAdjustment:v6, v8];
  }

  else
  {
    [(UIScrollView *)self contentOffset];
    v10 = v9;
    [(UITableView *)self _validContentOffsetForProposedOffset:?];
    v12 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__UITableView__applyContentSizeDeltaImmediately___block_invoke;
    aBlock[3] = &unk_1E70F6848;
    aBlock[4] = self;
    *&aBlock[5] = v6;
    *&aBlock[6] = v8;
    v13 = _Block_copy(aBlock);
    if (v10 == v12 && +[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled") && !+[UIView _isInAnimationBlock])
    {
      [(UIScrollView *)self performWhileAnimatingAutomaticContentOffsetAdjustments:v13];
    }

    else
    {
      v13[2](v13);
    }
  }

  [(UITableView *)self _setNeedsVisibleCellsUpdate:1 withFrames:1];
  [(UITableView *)self _adjustTableHeaderAndFooterViews];
}

- (void)_coalesceContentSizeUpdateWithDelta:(double)a3
{
  self->_coalescedContentSizeDelta = self->_coalescedContentSizeDelta + a3;
  if (a3 != 0.0)
  {
    [(UIScrollView *)self setNeedsLayout];
  }
}

- (id)_titleForHeaderInSection:(int64_t)a3
{
  if ((*&self->_tableFlags & 8) != 0)
  {
    v6 = [(UITableView *)self _dataSourceProxy];
    v3 = [v6 tableView:self titleForHeaderInSection:a3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_titleForFooterInSection:(int64_t)a3
{
  if ((*&self->_tableFlags & 0x10) != 0)
  {
    v6 = [(UITableView *)self _dataSourceProxy];
    v3 = [v6 tableView:self titleForFooterInSection:a3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_detailTextForHeaderInSection:(int64_t)a3
{
  if ((*&self->_tableFlags & 0x20) != 0)
  {
    v6 = [(UITableView *)self _dataSourceProxy];
    v3 = [v6 tableView:self detailTextForHeaderInSection:a3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)_titleAlignmentForHeaderInSection:(int64_t)a3
{
  if ((*(&self->_tableFlags + 7) & 4) == 0)
  {
    return 4;
  }

  v6 = [(UITableView *)self _delegateProxy];
  v7 = [v6 tableView:self titleAlignmentForHeaderInSection:a3];

  return v7;
}

- (int64_t)_titleAlignmentForFooterInSection:(int64_t)a3
{
  if ((*(&self->_tableFlags + 7) & 8) == 0)
  {
    return 4;
  }

  v6 = [(UITableView *)self _delegateProxy];
  v7 = [v6 tableView:self titleAlignmentForFooterInSection:a3];

  return v7;
}

- (double)_maxTitleWidthForHeaderInSection:(int64_t)a3
{
  v3 = -1.0;
  if ((*(&self->_tableFlags + 4) & 4) != 0)
  {
    v6 = [(UITableView *)self _delegateProxy];
    [v6 tableView:self maxTitleWidthForHeaderInSection:a3];
    v3 = floor(v7);
  }

  result = 1.79769313e308;
  if (v3 != -1.0)
  {
    return v3;
  }

  return result;
}

- (double)_maxTitleWidthForFooterInSection:(int64_t)a3
{
  v3 = -1.0;
  if ((*(&self->_tableFlags + 4) & 0x10) != 0)
  {
    v6 = [(UITableView *)self _delegateProxy];
    [v6 tableView:self maxTitleWidthForFooterInSection:a3];
    v3 = floor(v7);
  }

  result = 1.79769313e308;
  if (v3 != -1.0)
  {
    return v3;
  }

  return result;
}

- (BOOL)_isTopHeaderForSection:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  return !dyld_program_sdk_at_least() || ![(UIScrollView *)self _shouldAdjustLayoutToCollapseTopSpacing];
}

- (BOOL)_shouldStripHeaderTopPaddingForSection:(int64_t)a3
{
  v3 = 0;
  v4 = a3 - 1;
  if (a3 >= 1)
  {
    p_tableFlags = &self->_tableFlags;
    if (((*(&self->_tableFlags + 1) >> 45) & 3uLL) - 3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v8 = *p_tableFlags;
      if ((*p_tableFlags & 0x800000000) != 0)
      {
        v9 = [(UITableView *)self _delegateProxy];
        [v9 tableView:self heightForFooterInSection:v4];
        v11 = v10;

        if (v11 != -1.0)
        {
          return 0;
        }

        v8 = *p_tableFlags;
      }

      if ((v8 & 0x10) != 0)
      {
        v12 = [(UITableView *)self _dataSourceProxy];
        v13 = [v12 tableView:self titleForFooterInSection:a3];
        v3 = v13 != 0;

        return v3;
      }

      return 0;
    }
  }

  return v3;
}

- (void)_performDiffableUpdate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(&self->_tableFlags + 28) & 0x10) == 0)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"UITableView.m" lineNumber:19980 description:{@"Attempted to apply updates to a table view from a UITableViewDiffableDataSource, but the table view's dataSource is not the UITableViewDiffableDataSource. Table view: %@", self}];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v10 = self;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Attempted to apply updates to a table view from a UITableViewDiffableDataSource, but the table view's dataSource is not the UITableViewDiffableDataSource. Table view: %@ This will become an assert in a future version.", buf, 0xCu);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &_performDiffableUpdate____s_category_0) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = self;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Attempted to apply updates to a table view from a UITableViewDiffableDataSource, but the table view's dataSource is not the UITableViewDiffableDataSource. Table view: %@ This will become an assert in a future version.", buf, 0xCu);
      }
    }
  }

  [(UITableView *)self _performInternalBatchUpdates:v5];
}

- (void)_performInternalBatchUpdates:(id)a3
{
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 3);
  *(&self->_tableFlags + 3) = v4 | 0x2000000000;
  (*(a3 + 2))(a3, a2);
  *(p_tableFlags + 3) = *(p_tableFlags + 3) & 0xFFFFFFDFFFFFFFFFLL | (((v4 >> 37) & 1) << 37);
}

- (id)_diffableDataSourceImpl
{
  v3 = [(UITableView *)self _dataSourceActual];
  v4 = 0;
  if ((objc_opt_respondsToSelector() & 1) != 0 && v3 != self)
  {
    v4 = [(UITableView *)v3 _diffableDataSourceImpl];
  }

  return v4;
}

- (int64_t)presentationSectionIndexForDataSourceSectionIndex:(int64_t)a3
{
  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    return [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionAfterShadowUpdates:a3];
  }

  else
  {
    return a3;
  }
}

- (int64_t)dataSourceSectionIndexForPresentationSectionIndex:(int64_t)a3
{
  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    return [(_UITableViewShadowUpdatesController *)shadowUpdatesController sectionBeforeShadowUpdates:a3];
  }

  else
  {
    return a3;
  }
}

- (id)presentationIndexPathForDataSourceIndexPath:(id)a3
{
  v4 = a3;
  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    v6 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathAfterShadowUpdates:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)dataSourceIndexPathForPresentationIndexPath:(id)a3
{
  v4 = a3;
  shadowUpdatesController = self->_shadowUpdatesController;
  if (shadowUpdatesController)
  {
    v6 = [(_UITableViewShadowUpdatesController *)shadowUpdatesController indexPathBeforeShadowUpdates:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (void)performUsingPresentationValues:(id)a3
{
  p_tableFlags = &self->_tableFlags;
  v4 = *(&self->_tableFlags + 3);
  v5 = v4 | 0x4000000000;
  *(&self->_tableFlags + 3) = v4 | 0x4000000000;
  if (a3)
  {
    (*(a3 + 2))(a3, a2);
    v5 = *(p_tableFlags + 3);
  }

  *(p_tableFlags + 3) = v5 & 0xFFFFFFBFFFFFFFFFLL | (((v4 >> 38) & 1) << 38);
}

- (BOOL)_delegateAllowsHighlightingItemAtIndexPath:(id)a3
{
  if ((*(&self->_tableFlags + 9) & 8) == 0)
  {
    return 1;
  }

  v4 = self;
  v5 = a3;
  v6 = [(UITableView *)v4 _delegateProxy];
  LOBYTE(v4) = [v6 tableView:v4 shouldHighlightRowAtIndexPath:v5];

  return v4;
}

- (id)dragDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDelegate);

  return WeakRetained;
}

- (id)dropDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dropDelegate);

  return WeakRetained;
}

- (UITableViewDragSourceDelegate)dragSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dragSourceDelegate);

  return WeakRetained;
}

- (UITableViewDragDestinationDelegate)dragDestinationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDestinationDelegate);

  return WeakRetained;
}

@end