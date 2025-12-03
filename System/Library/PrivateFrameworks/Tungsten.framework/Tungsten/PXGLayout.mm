@interface PXGLayout
+ (id)_defaultAccessibilityIdentifierForAXInfoKind:(int64_t)kind;
+ (unint64_t)scrolledEdgesForVisibleEdges:(unint64_t)edges scrollableAxis:(int64_t)axis;
- ($105A79951CE75EB7BB90BCA93995B378)styleForSpriteAtIndex:(SEL)index;
- ($738B17BD11CC339B30296C0EA03CEC2B)entityForSpriteAtIndex:(unsigned int)index;
- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)infoForSpriteAtIndex:(SEL)index;
- ($7E6FF06E1E2A477A0598F669E6D2B004)orientedContentTransform;
- ($C4327F77E24267CF92932F349E1559A2)geometryForSpriteAtIndex:(unsigned int)index;
- ($F075B4A35807C7876885CD3A0A1A7192)displayAssetSourceRespondsTo;
- (BOOL)allowsDanglingUpdatesAssertions;
- (BOOL)allowsSublayoutUpdateCycleAssertions;
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (BOOL)changeVisibleRectToProposedVisibleRect:(CGRect)rect;
- (BOOL)hasPointReferences;
- (BOOL)isDescendantOfLayout:(id)layout;
- (BOOL)isSpriteIndex:(unsigned int)index decoratingSpriteWithIndex:(unsigned int *)withIndex;
- (BOOL)isVisible;
- (BOOL)shouldFaultInContentAtAnchoredContentEdges;
- (CGPoint)_offsetToDescendantLayout:(id)layout;
- (CGPoint)axConvertPoint:(CGPoint)point fromDescendantGroup:(id)group;
- (CGPoint)axConvertPoint:(CGPoint)point toDescendantGroup:(id)group;
- (CGPoint)convertPoint:(CGPoint)point fromDescendantLayout:(id)layout;
- (CGPoint)convertPoint:(CGPoint)point fromLayout:(id)layout;
- (CGPoint)convertPoint:(CGPoint)point toDescendantLayout:(id)layout;
- (CGPoint)lastScrollDirection;
- (CGPoint)pointForPointReference:(id)reference;
- (CGRect)anchoringRectForSpriteAtIndex:(unsigned int)index;
- (CGRect)axConvertRect:(CGRect)rect fromDescendantGroup:(id)group;
- (CGRect)axConvertRect:(CGRect)rect toDescendantGroup:(id)group;
- (CGRect)bounds;
- (CGRect)clippingRect;
- (CGRect)convertRect:(CGRect)rect fromDescendantLayout:(id)layout;
- (CGRect)convertRect:(CGRect)rect fromLayout:(id)layout;
- (CGRect)convertRect:(CGRect)rect toDescendantLayout:(id)layout;
- (CGRect)frame;
- (CGRect)visibleRect;
- (CGSize)contentSize;
- (CGSize)estimatedContentSize;
- (CGSize)referenceSize;
- (NSArray)animations;
- (NSArray)fences;
- (NSArray)pendingAnimations;
- (NSArray)pendingFences;
- (NSArray)transitions;
- (NSIndexSet)axBorderSpriteIndexes;
- (NSIndexSet)axSelectedSpriteIndexes;
- (NSIndexSet)axSpriteIndexes;
- (NSIndexSet)axVisibleSpriteIndexes;
- (NSIndexSet)hiddenSpriteIndexes;
- (NSMutableArray)changeDetails;
- (NSString)diagnosticDescription;
- (NSString)parentDescription;
- (NSString)recursiveDescription;
- (PXGAXResponder)axNextResponder;
- (PXGDataSourceChange)currentDataSourceChange;
- (PXGDecoratingLayout)decoratingLayout;
- (PXGDisplayAssetSource)displayAssetSource;
- (PXGLayout)init;
- (PXGLayout)nextViewHostingLayout;
- (PXGLayout)rootLayout;
- (PXGLayout)superlayout;
- (PXGLayoutContentSource)contentSource;
- (PXGLayoutFocusDelegate)focusDelegate;
- (PXGLayoutScrollDelegate)scrollDelegate;
- (PXGLayoutUpdateDelegate)updateDelegate;
- (PXGLayoutViewDelegate)viewDelegate;
- (PXGLayoutVisibleRectDelegate)visibleRectDelegate;
- (UICoordinateSpace)coordinateSpace;
- (UIEdgeInsets)flexibleRegionInsets;
- (UIEdgeInsets)fullPageSnapshotFloatingInsets;
- (UIEdgeInsets)safeAreaInsets;
- (_PXGSpriteIndexRange)addSpriteCount:(unsigned int)count withInitialState:(id)state;
- (_PXGSpriteIndexRange)convertRange:(_PXGSpriteIndexRange)range fromSublayout:(id)sublayout;
- (_PXGSpriteIndexRange)convertSpriteIndexRange:(_PXGSpriteIndexRange)range fromDescendantLayout:(id)layout;
- (__n128)cameraConfiguration;
- (id)_createAnchorForContentEdges:(unint64_t)edges priority:(int64_t)priority;
- (id)_createAnchorWithAnchor:(id)anchor resetPriority:(BOOL)priority;
- (id)_createAnchorWithPriority:(int64_t)priority constraints:(id)constraints;
- (id)_paddingForLevel:(int64_t)level;
- (id)ancestorSharedWithLayout:(id)layout;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)axContainingViewForAXGroup:(id)group;
- (id)axContentInfoAtSpriteIndex:(unsigned int)index;
- (id)axLeafForObjectReference:(id)reference;
- (id)axSpriteIndexesInRectDefaultImplementation:(CGRect)implementation;
- (id)convertChangeDetails:(id)details fromSublayout:(id)sublayout;
- (id)convertSpriteIndexes:(id)indexes fromDescendantLayout:(id)layout;
- (id)createAnchorForScrollingAnimationTowardsContentEdges:(unint64_t)edges;
- (id)createAnchorForScrollingSpriteAtIndex:(unsigned int)index toScrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding;
- (id)createAnchorForScrollingSpriteForObjectReference:(id)reference toScrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding;
- (id)createAnchorForScrollingSpriteForSpriteReference:(id)reference normalizedAnchorPoint:(CGPoint)point toVisibleLocation:(CGPoint)location;
- (id)createAnchorForScrollingSpriteForSpriteReference:(id)reference toScrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding customOffset:(id)offset;
- (id)createAnchorForScrollingToContentEdges:(unint64_t)edges padding:(UIEdgeInsets)padding;
- (id)createAnchorForSpriteAtIndex:(unsigned int)index;
- (id)createAnchorForSpriteReferences:(id)references;
- (id)createAnchorForVisibleAreaIgnoringEdges:(unint64_t)edges;
- (id)createAnchorFromSuperlayoutWithSublayoutIndex:(int64_t)index sublayoutPositionEdges:(unint64_t)edges ignoringScrollingAnimationAnchors:(BOOL)anchors;
- (id)createAnimation;
- (id)createDefaultAnimationForCurrentContext;
- (id)createFenceWithType:(unint64_t)type;
- (id)createPointReferenceAtPoint:(CGPoint)point;
- (id)createTransitionWithAnimations:(id)animations;
- (id)diagnosticsItemProvidersInRect:(CGRect)rect;
- (id)dropTargetObjectReferenceForLocation:(CGPoint)location;
- (id)dynamicSpriteReferenceForObjectReference:(id)reference;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (id)leafSublayoutForSpriteIndex:(unsigned int)index;
- (id)navigationObjectReferenceForLocation:(CGPoint)location;
- (id)objectReferenceForSpriteIndex:(unsigned int)index;
- (id)spriteReferenceForSpriteIndex:(unsigned int)index objectReference:(id)reference;
- (id)spriteReferenceForSpriteReference:(id)reference;
- (id)sublayoutAtIndex:(int64_t)index loadIfNeeded:(BOOL)needed;
- (id)sublayoutForSpriteIndex:(unsigned int)index;
- (id)viewForSpriteIndex:(unsigned int)index;
- (int64_t)addSublayout:(id)sublayout;
- (int64_t)anchoredSublayoutIndex;
- (int64_t)indexOfSublayout:(id)sublayout;
- (int64_t)numberOfSublayouts;
- (int64_t)sublayoutIndexForSpriteIndex:(unsigned int)index;
- (int64_t)sublayoutIndexForSpriteReference:(id)reference options:(unint64_t)options;
- (unint64_t)anchoredContentEdges;
- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)index;
- (unint64_t)fullyVisibleEdgesWithDefaultTolerance;
- (unint64_t)fullyVisibleEdgesWithEdgeTolerances:(UIEdgeInsets)tolerances;
- (unsigned)addResizableCapInsets:(id)insets;
- (unsigned)axSpriteIndexClosestToSpriteIndexDefaultImplementation:(unsigned int)implementation inDirection:(unint64_t)direction;
- (unsigned)convertSpriteIndex:(unsigned int)index fromLayout:(id)layout;
- (unsigned)convertSpriteIndex:(unsigned int)index toDescendantLayout:(id)layout;
- (unsigned)localNumberOfSprites;
- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (unsigned)spriteIndexForSpriteReference:(id)reference options:(unint64_t)options;
- (void)_addAnimations:(id)animations;
- (void)_addFences:(id)fences;
- (void)_addHiddenSpriteIndexes:(id)indexes;
- (void)_appendDescription:(id)description atLevel:(int64_t)level;
- (void)_destroyModifiedSpriteDataStore;
- (void)_destroySpriteDataStore;
- (void)_ensureModifiedSpriteDataStore;
- (void)_ensureSpriteDataStore;
- (void)_ensureSublayoutDataStore;
- (void)_enumerateSpritesInRange:(_PXGSpriteIndexRange)range transform:(id *)transform spriteOffset:(unsigned int)offset stop:(BOOL *)stop usingBlock:(id)block;
- (void)_enumerateSpritesInRect:(CGRect)rect transform:(id *)transform usingBlock:(id)block;
- (void)_invalidateDecorationForSpriteRange:(_PXGSpriteIndexRange)range inLayout:(id)layout invalidateSprites:(BOOL)sprites;
- (void)_invalidateStyleOfSpritesWithIndexes:(id)indexes;
- (void)_propagateHiddenSpriteIndexes:(id)indexes;
- (void)_resetHiddenSpriteIndexes;
- (void)_setNeedsUpdateExternally:(BOOL)externally;
- (void)_updateAnchoring;
- (void)_updateVersion;
- (void)_willAddSublayout:(id)sublayout;
- (void)addAnchor:(id)anchor;
- (void)addAnimation:(id)animation;
- (void)addFence:(id)fence;
- (void)addInteraction:(id)interaction;
- (void)addPointReference:(id)reference;
- (void)addSpritesAtIndexes:(id)indexes initialState:(id)state;
- (void)addSpritesInRange:(_PXGSpriteIndexRange)range initialState:(id)state;
- (void)addTransition:(id)transition;
- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)details appliedToLayout:(id)layout;
- (void)applySectionedChangeDetails:(id)details dataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges sublayoutProvider:(id)provider outChangedSections:(id *)sections outSectionsWithItemChanges:(id *)itemChanges changeMediaVersionHandler:(id)handler;
- (void)applySectionedChangeDetailsForSingleSection:(id)section dataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges changeMediaVersionHandler:(id)handler;
- (void)applySectionedChangeDetailsForSingleSection:(id)section dataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges changeMediaVersionHandler:(id)handler sectionIndexPathBeforeState:(PXSimpleIndexPath *)state;
- (void)applySpriteChangeDetails:(id)details countAfterChanges:(unsigned int)changes initialState:(id)state modifyFullState:(id)fullState;
- (void)applySpriteChangeDetails:(id)details countAfterChanges:(unsigned int)changes initialState:(id)state modifyState:(id)modifyState;
- (void)applySublayoutChangeDetails:(id)details countAfterChanges:(int64_t)changes sublayoutProvider:(id)provider;
- (void)axAddSubgroupForSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)axRemoveSubgroupForSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags;
- (void)clearLastVisibleAreaAnchoringInformation;
- (void)containingScrollViewDidScroll:(CGPoint)scroll;
- (void)contentSizeDidChange;
- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)range applySpriteTransforms:(BOOL)transforms entities:(id *)entities geometries:(id *)geometries styles:(id *)styles infos:(id *)infos;
- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)range applySpriteTransforms:(BOOL)transforms parentTransform:(id *)transform parentAlpha:(float)alpha parentClippingRect:(CGRect)rect parentSublayoutOrigin:(id)origin entities:(id *)entities geometries:(id *)self0 styles:(id *)self1 infos:(id *)self2;
- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)range toSpriteDataStore:(id)store;
- (void)copySpritesToDataStore:(id)store;
- (void)dealloc;
- (void)didAddSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags;
- (void)didApplySpriteChangeDetails:(id)details;
- (void)didApplySublayoutChangeDetails:(id)details axAdjustedSubgroupChangeDetails:(id)changeDetails countAfterChanges:(int64_t)changes;
- (void)didChangeSublayoutOrigins;
- (void)didFaultInSublayout:(id)sublayout atIndex:(int64_t)index fromEstimatedContentSize:(CGSize)size;
- (void)didUpdate;
- (void)enumerateDescendantsLayoutsBreadthFirstReverseUsingBlock:(id)block;
- (void)enumerateDescendantsLayoutsUsingBlock:(id)block;
- (void)enumerateLayoutsForSpritesInRange:(_PXGSpriteIndexRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateLocalSpritesInRect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateSpritesInRange:(_PXGSpriteIndexRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateSpritesInRect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateSublayoutsForCreatingPointReferenceUsingBlock:(id)block;
- (void)enumerateSublayoutsForDetailedPlacement:(id)placement ofItemWithReference:(id)reference usingBlock:(id)block;
- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)block;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block;
- (void)getDetailedPresentedPlacement:(id)placement forItemReference:(id)reference;
- (void)hideSpritesForObjectReferences:(id)references;
- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index;
- (void)insertSublayoutProvider:(id)provider atIndexes:(id)indexes;
- (void)insertSublayoutProvider:(id)provider inRange:(_NSRange)range;
- (void)installLayoutCompletionBlock:(id)block;
- (void)invalidateAllSuperlayoutAnchors;
- (void)invalidateDecoration;
- (void)invalidateDecorationAndSprites;
- (void)invalidateVersion;
- (void)modifySpritesAtIndexes:(id)indexes fullState:(id)state;
- (void)modifySpritesAtIndexes:(id)indexes state:(id)state;
- (void)modifySpritesInRange:(_PXGSpriteIndexRange)range fullState:(id)state;
- (void)modifySpritesInRange:(_PXGSpriteIndexRange)range state:(id)state;
- (void)modifySpritesInRect:(CGRect)rect state:(id)state;
- (void)moveSpritesInRange:(_PXGSpriteIndexRange)range toRange:(_PXGSpriteIndexRange)toRange;
- (void)performChangesWithLocalUpdate:(id)update;
- (void)performRepeatedSublayoutsUpdate:(id)update;
- (void)performSpriteStylingUpdate:(id)update;
- (void)removeAnchor:(id)anchor;
- (void)removeAnimation:(id)animation;
- (void)removeFromSuperlayout;
- (void)removeInteraction:(id)interaction;
- (void)removePointReference:(id)reference;
- (void)removeSpritesAtIndexes:(id)indexes;
- (void)removeSpritesInRange:(_PXGSpriteIndexRange)range;
- (void)removeSublayoutsAtIndexes:(id)indexes;
- (void)removeSublayoutsInRange:(_NSRange)range;
- (void)setAlpha:(double)alpha;
- (void)setAppearState:(unint64_t)state;
- (void)setCameraConfiguration:(float32x4_t *)configuration;
- (void)setClippingRect:(CGRect)rect;
- (void)setContentSize:(CGSize)size;
- (void)setContentSource:(id)source;
- (void)setDetailedPlacementOverride:(id)override forItemReference:(id)reference;
- (void)setDisplayScale:(double)scale;
- (void)setEntityManager:(id)manager;
- (void)setFloating:(BOOL)floating;
- (void)setFloatingOffset:(double)offset;
- (void)setHiddenSpriteIndexes:(id)indexes;
- (void)setInteractions:(id)interactions;
- (void)setLastBaseline:(double)baseline;
- (void)setLastScrollDirection:(CGPoint)direction;
- (void)setLayoutQueue:(id)queue;
- (void)setLocalHiddenSpriteIndexes:(id)indexes;
- (void)setMediaProvider:(id)provider;
- (void)setNeedsFocusUpdate;
- (void)setNeedsUpdateOfScrollableAxis;
- (void)setReferenceDepth:(double)depth;
- (void)setReferenceOptions:(unsigned __int16)options;
- (void)setReferenceSize:(CGSize)size;
- (void)setSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setScrollSpeedRegime:(int64_t)regime;
- (void)setSpriteModifier:(id)modifier;
- (void)setSuperlayout:(id)superlayout;
- (void)setUserInterfaceDirection:(unint64_t)direction;
- (void)setViewEnvironment:(id)environment;
- (void)setVisibleRect:(CGRect)rect;
- (void)sublayout:(id)sublayout didAddAnchor:(id)anchor;
- (void)sublayout:(id)sublayout didApplySpriteChangeDetails:(id)details fromDescendentSublayout:(id)descendentSublayout;
- (void)sublayout:(id)sublayout didRemoveAnchor:(id)anchor;
- (void)superlayoutDidChange;
- (void)update;
- (void)updateAsRootIfNeeded;
- (void)updateIfNeeded;
- (void)updateStylingForSpritesAtIndexes:(id)indexes;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
- (void)willFaultOutSublayout:(id)sublayout atIndex:(int64_t)index;
- (void)willRemoveSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags;
- (void)willUpdate;
@end

@implementation PXGLayout

- (PXGLayout)init
{
  v16.receiver = self;
  v16.super_class = PXGLayout;
  v2 = [(PXGLayout *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_displayMaximumHeadroom = 1.0;
    v2->_alpha = 1.0;
    v4 = *(MEMORY[0x277CBF390] + 16);
    v2->_clippingRect.origin = *MEMORY[0x277CBF390];
    v2->_clippingRect.size = v4;
    __asm { FMOV            V0.2D, #1.0 }

    *&v2->_referenceDepth = _Q0;
    interactions = v2->_interactions;
    v2->_interactions = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v3->_layoutQueue, MEMORY[0x277D85CD0]);
    if (init_onceToken[0] != -1)
    {
      dispatch_once(init_onceToken, &__block_literal_global_14873);
    }

    objc_storeStrong(&v3->_spriteMetadataStore, init_spriteMetadataStore);
    v11 = [[PXGBasicAXGroup alloc] initWithLayout:v3];
    reusableAXGroup = v3->_reusableAXGroup;
    v3->_reusableAXGroup = v11;

    *&v3[1]._modifiedSpriteDataStore = xmmword_21AE2E080;
    *&v3[1]._interactions = unk_21AE2E090;
    *&v3[1]._entityManager = xmmword_21AE2E0A0;
    *&v3[1]._nestedAnchorVisibleRectChanges = xmmword_21AE2E040;
    *&v3[1]._numberOfRepeatedSublayoutUpdatesInUpdatePass = unk_21AE2E050;
    *&v3[1]._needsUpdate = xmmword_21AE2E060;
    *&v3[1]._viewHostingSpriteIndex = unk_21AE2E070;
    *&v3[1]._changeDetails = xmmword_21AE2E000;
    *&v3[1]._transitions = unk_21AE2E010;
    *&v3[1]._spriteReferencesForHiddenSprites = xmmword_21AE2E020;
    *&v3[1]._isRequestingVisibleRect = unk_21AE2E030;
    *&v3[1].super.isa = PXGCameraConfigurationNull;
    *&v3[1]._updateFlags.updated = *algn_21AE2DFF0;
    if ([(PXGLayout *)v3 allowsSublayoutUpdateCycleAssertions])
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
      sublayoutsExpectedToBeUpdatedInUpdatePass = v3->_sublayoutsExpectedToBeUpdatedInUpdatePass;
      v3->_sublayoutsExpectedToBeUpdatedInUpdatePass = v13;
    }

    v3->_viewHostingSpriteIndex = -1;
  }

  return v3;
}

- (PXGLayout)rootLayout
{
  selfCopy = self;
  superlayout = [(PXGLayout *)selfCopy superlayout];

  if (superlayout)
  {
    do
    {
      superlayout2 = [(PXGLayout *)selfCopy superlayout];

      v4Superlayout = [(PXGLayout *)superlayout2 superlayout];

      selfCopy = superlayout2;
    }

    while (v4Superlayout);
  }

  else
  {
    superlayout2 = selfCopy;
  }

  return superlayout2;
}

- (PXGLayoutScrollDelegate)scrollDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollDelegate);

  return WeakRetained;
}

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_axNextResponder);

  return WeakRetained;
}

void __17__PXGLayout_init__block_invoke()
{
  v0 = objc_alloc_init(PXGSpriteMetadataStore);
  v1 = init_spriteMetadataStore;
  init_spriteMetadataStore = v0;
}

- (PXGLayout)superlayout
{
  WeakRetained = objc_loadWeakRetained(&self->_superlayout);

  return WeakRetained;
}

- (PXGLayoutUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (void)setNeedsUpdateOfScrollableAxis
{
  superlayout = [(PXGLayout *)self superlayout];
  [superlayout setNeedsUpdateOfScrollableAxis];

  scrollDelegate = [(PXGLayout *)self scrollDelegate];
  [scrollDelegate setNeedsUpdateOfScrollableAxisForLayout:self];
}

- (NSMutableArray)changeDetails
{
  changeDetails = self->_changeDetails;
  if (!changeDetails)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_changeDetails;
    self->_changeDetails = v4;

    changeDetails = self->_changeDetails;
  }

  return changeDetails;
}

- (void)viewEnvironmentDidChange
{
  viewEnvironment = [(PXGLayout *)self viewEnvironment];
  accessibilityEnabled = [viewEnvironment accessibilityEnabled];

  if (accessibilityEnabled)
  {
    axGroup = [(PXGLayout *)self axGroup];
    [axGroup setLeafFeatures:{objc_msgSend(axGroup, "leafFeatures") | 4}];
  }
}

- (unint64_t)fullyVisibleEdgesWithDefaultTolerance
{
  PXEdgeInsetsMake();

  return [(PXGLayout *)self fullyVisibleEdgesWithEdgeTolerances:?];
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

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int64_t)numberOfSublayouts
{
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v3 = [sublayoutDataStore count];

  return v3;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)clearLastVisibleAreaAnchoringInformation
{
  lastVisibleAreaAnchor = [(PXGLayout *)self lastVisibleAreaAnchor];

  if (lastVisibleAreaAnchor)
  {
    [(PXGLayout *)self setLastVisibleAreaAnchor:0];
  }

  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  [sublayoutDataStore enumerateSublayoutsUsingBlock:&__block_literal_global_5736];
}

- (void)visibleRectDidChange
{
  if (!self->_isRequestingVisibleRect)
  {
    axGroup = [(PXGLayout *)self axGroup];
    [axGroup invalidateVisibility];
    [axGroup invalidateLeafs];
    [(PXGLayout *)self _setNeedsUpdateExternally:0];
  }
}

- (void)updateIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_needsUpdate)
  {
    self->_needsUpdate = 0;
    isUpdating = self->_isUpdating;
    self->_isUpdating = 1;
    if (!isUpdating)
    {
      self->_childrenTotalUpdateDuration = 0;
    }

    v4 = mach_continuous_time();
    [(PXGLayout *)self willUpdate];
    [(PXGLayout *)self update];
    [(PXGLayout *)self didUpdate];
    if (!isUpdating)
    {
      if (updateIfNeeded_onceToken[0] != -1)
      {
        dispatch_once(updateIfNeeded_onceToken, &__block_literal_global_68_14825);
      }

      v5 = mach_continuous_time() - v4;
      v6 = v5 - self->_childrenTotalUpdateDuration;
      superlayout = [(PXGLayout *)self superlayout];
      [superlayout _childDidUpdateWithDuration:v5];

      if (v6 > updateIfNeeded_slowUpdateThreshold)
      {
        v8 = PXGTungstenGetLog();
        v9 = os_signpost_id_make_with_pointer(v8, self);
        v10 = v8;
        v11 = v10;
        if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {

          v15 = v11;
        }

        else
        {
          if (os_signpost_enabled(v10))
          {
            v16 = 134217984;
            v17 = v4;
            _os_signpost_emit_with_name_impl(&dword_21AD38000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PXGLayoutSlowUpdate", "%{signpost.description:begin_time}llu", &v16, 0xCu);
          }

          v12 = v11;
          if (os_signpost_enabled(v12))
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v16 = 138543362;
            v17 = v14;
            _os_signpost_emit_with_name_impl(&dword_21AD38000, v12, OS_SIGNPOST_INTERVAL_END, v9, "PXGLayoutSlowUpdate", "%{public}@", &v16, 0xCu);
          }
        }
      }
    }

    self->_isUpdating = isUpdating;
  }
}

- (void)willUpdate
{
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXGLayout.m" lineNumber:634 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)_ensureSpriteDataStore
{
  if (!self->_spriteDataStore)
  {
    v4 = +[PXGSpriteDataStore newSpriteDataStore];
    spriteDataStore = self->_spriteDataStore;
    self->_spriteDataStore = v4;
  }
}

- (unsigned)localNumberOfSprites
{
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  v3 = [spriteDataStore count];

  return v3;
}

- (void)invalidateVersion
{
  self->_version = -atomic_fetch_add(PXGLayoutVersionMakeUnique_lastVersion, 1u);
  superlayout = [(PXGLayout *)self superlayout];
  [superlayout invalidateVersion];

  axGroup = [(PXGLayout *)self axGroup];
  [axGroup invalidateVersion];
}

- (BOOL)allowsSublayoutUpdateCycleAssertions
{
  v2 = +[PXTungstenSettings sharedInstance];
  enableSublayoutUpdateCycleAssertions = [v2 enableSublayoutUpdateCycleAssertions];

  return enableSublayoutUpdateCycleAssertions;
}

- (void)superlayoutDidChange
{
  superlayout = [(PXGLayout *)self superlayout];

  if (!superlayout)
  {
    [(PXGLayout *)self setInternalCurrentDataSourceChange:0];

    [(PXGLayout *)self setAppearState:3];
  }
}

- (void)_ensureSublayoutDataStore
{
  if (!self->_sublayoutDataStore)
  {
    v4 = objc_alloc_init(PXGSublayoutDataStore);
    sublayoutDataStore = self->_sublayoutDataStore;
    self->_sublayoutDataStore = v4;
  }
}

- (NSArray)animations
{
  v2 = [(NSMutableArray *)self->_animations copy];

  return v2;
}

- (NSArray)fences
{
  v2 = [(NSMutableArray *)self->_fences copy];

  return v2;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)lastScrollDirection
{
  x = self->_lastScrollDirection.x;
  y = self->_lastScrollDirection.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)removeFromSuperlayout
{
  superlayout = [(PXGLayout *)self superlayout];
  if (superlayout)
  {
    v6 = superlayout;
    sublayoutDataStore = [superlayout sublayoutDataStore];
    v5 = [sublayoutDataStore indexOfSublayout:self];

    superlayout = v6;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 removeSublayoutsInRange:{v5, 1}];
      superlayout = v6;
    }
  }
}

- (void)invalidateDecoration
{
  v3 = [(PXGLayout *)self localNumberOfSprites]<< 32;

  [(PXGLayout *)self invalidateDecorationForSpritesInRange:v3];
}

- (BOOL)isVisible
{
  superlayout = [(PXGLayout *)self superlayout];
  v4 = superlayout;
  if (superlayout)
  {
    isVisible = [superlayout isVisible];
  }

  else
  {
    updateDelegate = [(PXGLayout *)self updateDelegate];
    isVisible = [updateDelegate layoutIsVisible:self];
  }

  return isVisible;
}

- (PXGDecoratingLayout)decoratingLayout
{
  superlayout = [(PXGLayout *)self superlayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = superlayout;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unint64_t)anchoredContentEdges
{
  activeAnchor = [(PXGLayout *)self activeAnchor];
  anchoredContentEdges = [activeAnchor anchoredContentEdges];

  return anchoredContentEdges;
}

- (void)contentSizeDidChange
{
  axGroup = [(PXGLayout *)self axGroup];
  [axGroup invalidateVisibility];
}

- (void)update
{
  ++self->_updateCount;
  [(PXGLayout *)self _updateVersion];
  [(PXGLayout *)self _updateAnchoring];
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout update]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXGLayout.m" lineNumber:644 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = self->_updateFlags.needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 1;
    if (needsUpdate)
    {
      self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGLayout *)self updateStylingForSpritesAtIndexes:self->_spriteIndexesWithInvalidatedStyle];
      spriteIndexesWithInvalidatedStyle = self->_spriteIndexesWithInvalidatedStyle;
      self->_spriteIndexesWithInvalidatedStyle = 0;

      needsUpdate = self->_updateFlags.needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXGLayout.m" lineNumber:650 description:{@"still needing to update %lu after update pass", self->_updateFlags.needsUpdate}];
    }
  }

  axGroup = [(PXGLayout *)self axGroup];
  [axGroup updateIfNeeded];
}

- (void)_updateVersion
{
  version = self->_version;
  if (version < 0)
  {
    self->_version = -version;
    changeDetailsWithNoChanges = [MEMORY[0x277D3CCC8] changeDetailsWithNoChanges];
    [(PXGLayout *)self adjustReferencedSpriteIndexesWithChangeDetails:changeDetailsWithNoChanges appliedToLayout:self];

    [(PXGLayout *)self updateIfNeeded];
  }
}

- (void)_updateAnchoring
{
  v48 = *MEMORY[0x277D85DE8];
  isUpdatingAnchoring = self->_isUpdatingAnchoring;
  self->_isUpdatingAnchoring = 1;
  activeAnchor = [(PXGLayout *)self activeAnchor];
  if ([activeAnchor needsUpdate])
  {
    [activeAnchor setNeedsUpdate:0];
    [(PXGLayout *)self visibleRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [activeAnchor adjustVisibleRect:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(PXGLayout *)self changeVisibleRectToProposedVisibleRect:?];
    if (v21 && ![(PXGLayout *)self disableDebugAssertionForAnchorUpdatesWithZeroContentSize])
    {
      [(PXGLayout *)self contentSize];
      if (v23 == *MEMORY[0x277CBF3A8] && v22 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v25 = PXAssertGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v34 = PXRectDescription();
          v35 = PXRectDescription();
          v36 = 138413058;
          selfCopy = self;
          v38 = 2112;
          v39 = v34;
          v40 = 2112;
          v41 = v35;
          v42 = 2112;
          v43 = activeAnchor;
          _os_log_error_impl(&dword_21AD38000, v25, OS_LOG_TYPE_ERROR, "%@ layout had zero content size, but updated visible rect from %@ to %@, because of active anchor: %@", &v36, 0x2Au);
        }
      }
    }

    if (self->_nestedAnchorVisibleRectChanges >= 11)
    {
      v26 = PXGTungstenGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        nestedAnchorVisibleRectChanges = self->_nestedAnchorVisibleRectChanges;
        v30 = @"NO";
        if (v21)
        {
          v30 = @"YES";
        }

        v31 = v30;
        v49.origin.x = v6;
        v49.origin.y = v8;
        v49.size.width = v10;
        v49.size.height = v12;
        v32 = NSStringFromCGRect(v49);
        v50.origin.x = v14;
        v50.origin.y = v16;
        v50.size.width = v18;
        v50.size.height = v20;
        v33 = NSStringFromCGRect(v50);
        v36 = 138413570;
        selfCopy = v28;
        v38 = 2048;
        v39 = nestedAnchorVisibleRectChanges;
        v40 = 2112;
        v41 = v31;
        v42 = 2112;
        v43 = v32;
        v44 = 2112;
        v45 = v33;
        v46 = 2112;
        v47 = activeAnchor;
        _os_log_impl(&dword_21AD38000, v26, OS_LOG_TYPE_DEFAULT, "%@ %ld nested visibleRect changed:%@ %@->%@ by anchor:%@", &v36, 0x3Eu);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if ([activeAnchor isAutoInvalidated])
  {
    [activeAnchor invalidate];
  }

  if (self->_isLastVisibleAreaAnchoringInformationInvalidated)
  {
    [(PXGLayout *)self clearLastVisibleAreaAnchoringInformation];
    self->_isLastVisibleAreaAnchoringInformationInvalidated = 0;
  }

  if (v21)
  {
    ++self->_nestedAnchorVisibleRectChanges;
    self->_needsUpdate = 1;
    [(PXGLayout *)self updateIfNeeded];
    --self->_nestedAnchorVisibleRectChanges;
  }

  self->_isUpdatingAnchoring = isUpdatingAnchoring;
}

- (CGRect)frame
{
  superlayout = [(PXGLayout *)self superlayout];

  if (superlayout)
  {
    v18 = 0u;
    v4 = [(PXGLayout *)self superlayout:0];
    sublayoutDataStore = [v4 sublayoutDataStore];
    v6 = sublayoutDataStore;
    if (sublayoutDataStore)
    {
      [sublayoutDataStore geometryForSublayout:self];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
    }

    v8 = *(&v18 + 1);
    v7 = *&v18;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
  }

  [(PXGLayout *)self contentSize:v15];
  v10 = v9;
  v12 = v11;
  v13 = v7;
  v14 = v8;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (NSIndexSet)axBorderSpriteIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  axSpriteIndexes = [(PXGLayout *)self axSpriteIndexes];
  if ([axSpriteIndexes count])
  {
    [v3 addIndex:{objc_msgSend(axSpriteIndexes, "firstIndex")}];
    [v3 addIndex:{objc_msgSend(axSpriteIndexes, "lastIndex")}];
  }

  return v3;
}

- (NSIndexSet)axSelectedSpriteIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA78]);
  decoratingLayout = [(PXGLayout *)self decoratingLayout];
  selectionDecorationSource = [decoratingLayout selectionDecorationSource];

  if (selectionDecorationSource)
  {
    v6 = [selectionDecorationSource selectedSpriteIndexesInLayout:self];
    axSpriteIndexes = [(PXGLayout *)self axSpriteIndexes];
    v8 = [axSpriteIndexes px_intersectionWithIndexSet:v6];

    v3 = v8;
  }

  return v3;
}

- (PXGLayoutContentSource)contentSource
{
  WeakRetained = objc_loadWeakRetained(&self->_contentSource);

  return WeakRetained;
}

- (void)didUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGLayout.m" lineNumber:656 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if ([(NSMutableSet *)self->_sublayoutsExpectedToBeUpdatedInUpdatePass count])
  {
    if (didUpdate_onceToken != -1)
    {
      dispatch_once(&didUpdate_onceToken, &__block_literal_global_83);
    }

    if (([didUpdate_reportedClasses containsObject:objc_opt_class()] & 1) == 0)
    {
      v5 = PXGTungstenGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        sublayoutsExpectedToBeUpdatedInUpdatePass = self->_sublayoutsExpectedToBeUpdatedInUpdatePass;
        *buf = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = sublayoutsExpectedToBeUpdatedInUpdatePass;
        _os_log_impl(&dword_21AD38000, v5, OS_LOG_TYPE_ERROR, "%@'s sublayouts expected to be updated in update pass: %@", buf, 0x16u);
      }

      if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
      {
        [didUpdate_reportedClasses addObject:objc_opt_class()];
        v9 = PXGTungstenGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_21AD38000, v9, OS_LOG_TYPE_ERROR, "This error will be reported only once for this class.", buf, 2u);
        }
      }

      v10 = PXGTungstenGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412290;
        v14 = v12;
        _os_log_impl(&dword_21AD38000, v10, OS_LOG_TYPE_FAULT, "%@'s sublayouts not updated during update pass", buf, 0xCu);
      }

      [(PXGLayout *)self disableDebugAssertionForSublayoutUpdates];
    }
  }

  [(NSMutableSet *)self->_sublayoutsExpectedToBeUpdatedInUpdatePass removeAllObjects];
  self->_numberOfRepeatedSublayoutUpdatesInUpdatePass = 0;
}

void __27__PXGLayout_updateIfNeeded__block_invoke()
{
  v3 = +[PXTungstenSettings sharedInstance];
  [v3 slowLayoutUpdateThreshold];
  v1 = v0 / 1000.0;
  PXTimebaseConversionFactor();
  updateIfNeeded_slowUpdateThreshold = (v1 / v2);
}

- (NSIndexSet)axVisibleSpriteIndexes
{
  axSpriteIndexes = [(PXGLayout *)self axSpriteIndexes];
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  if ([axSpriteIndexes lastIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    lastIndex = [axSpriteIndexes lastIndex];
    if (lastIndex > [spriteDataStore count])
    {
      v6 = PXAssertGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "Invalid sprite index. Is this a real sprite? If not, please override axVisibleSpriteIndexes.", v9, 2u);
      }
    }
  }

  [(PXGLayout *)self visibleRect];
  v7 = [spriteDataStore spriteAtIndexes:axSpriteIndexes inRect:?];

  return v7;
}

- (NSIndexSet)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA78]);

  return v2;
}

- (PXGLayoutVisibleRectDelegate)visibleRectDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visibleRectDelegate);

  return WeakRetained;
}

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSArray)transitions
{
  v2 = [(NSMutableArray *)self->_transitions copy];

  return v2;
}

- (PXGDisplayAssetSource)displayAssetSource
{
  WeakRetained = objc_loadWeakRetained(&self->_displayAssetSource);

  return WeakRetained;
}

- ($F075B4A35807C7876885CD3A0A1A7192)displayAssetSourceRespondsTo
{
  v2 = *&self->_displayAssetSourceRespondsTo.useLowMemoryDecodeInLayout;
  v3 = *&self->_displayAssetSourceRespondsTo.supportedDisplayAssetPresentationStylesInLayout;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = BYTE3(v3);
  result.var4 = BYTE4(v3);
  result.var5 = BYTE5(v3);
  result.var6 = BYTE6(v3);
  result.var7 = HIBYTE(v3);
  result.var8 = v2;
  result.var9 = HIBYTE(v2);
  return result;
}

- (__n128)cameraConfiguration
{
  v2 = *(self + 816);
  *(a2 + 160) = *(self + 800);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(self + 832);
  v3 = *(self + 752);
  *(a2 + 96) = *(self + 736);
  *(a2 + 112) = v3;
  v4 = *(self + 784);
  *(a2 + 128) = *(self + 768);
  *(a2 + 144) = v4;
  v5 = *(self + 688);
  *(a2 + 32) = *(self + 672);
  *(a2 + 48) = v5;
  v6 = *(self + 720);
  *(a2 + 64) = *(self + 704);
  *(a2 + 80) = v6;
  result = *(self + 656);
  *a2 = *(self + 640);
  *(a2 + 16) = result;
  return result;
}

- (void)enumerateSublayoutsForCreatingPointReferenceUsingBlock:(id)block
{
  blockCopy = block;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__PXGLayout_PXGPointReference__enumerateSublayoutsForCreatingPointReferenceUsingBlock___block_invoke;
  v7[3] = &unk_2782A79F0;
  v8 = blockCopy;
  v6 = blockCopy;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v7];
}

- (BOOL)hasPointReferences
{
  v20 = *MEMORY[0x277D85DE8];
  [(PXGLayout *)self pointReferences];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v11 + 1) + 8 * i))
        {
          *(v16 + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v16[3])
  {
    v7 = 1;
  }

  else
  {
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__PXGLayout_PXGPointReference__hasPointReferences__block_invoke;
    v10[3] = &unk_2782A79C8;
    v10[4] = &v15;
    [sublayoutDataStore enumerateSublayoutsUsingBlock:v10];

    v7 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);

  return v7 & 1;
}

uint64_t __50__PXGLayout_PXGPointReference__hasPointReferences__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 hasPointReferences];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (CGPoint)pointForPointReference:(id)reference
{
  referenceCopy = reference;
  [referenceCopy point];
  v6 = v5;
  v8 = v7;
  layout = [referenceCopy layout];

  if (layout)
  {
    if (layout != self)
    {
      [(PXGLayout *)self convertPoint:layout fromDescendantLayout:v6, v8];
      v6 = v10;
      v8 = v11;
    }
  }

  else
  {
    v6 = *MEMORY[0x277D3CFB0];
    v8 = *(MEMORY[0x277D3CFB0] + 8);
  }

  v12 = v6;
  v13 = v8;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)createPointReferenceAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  definesContextForPointReferences = [(PXGLayout *)self definesContextForPointReferences];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (definesContextForPointReferences)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PXGLayout_PXGPointReference__createPointReferenceAtPoint___block_invoke;
    v12[3] = &unk_2782A7978;
    v12[4] = &v13;
    [sublayoutDataStore enumerateSublayoutsAtPoint:v12 usingBlock:{x, y}];
  }

  else
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = 0x7FEFFFFFFFFFFFFFLL;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__PXGLayout_PXGPointReference__createPointReferenceAtPoint___block_invoke_2;
    v10[3] = &unk_2782A79A0;
    *&v10[6] = x;
    *&v10[7] = y;
    v10[4] = v11;
    v10[5] = &v13;
    [(PXGLayout *)self enumerateSublayoutsForCreatingPointReferenceUsingBlock:v10];
    _Block_object_dispose(v11, 8);
  }

  if (v14[5])
  {
    [(PXGLayout *)self convertPoint:x toDescendantLayout:y];
    v8 = [v14[5] createPointReferenceAtPoint:?];
  }

  else
  {
    v8 = [[PXGPointReference alloc] initWithPoint:self layout:x, y];
    [(PXGLayout *)self addPointReference:v8];
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __60__PXGLayout_PXGPointReference__createPointReferenceAtPoint___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 frame];
  PXRectShortestDistanceToPoint();
  v5 = *(*(a1 + 32) + 8);
  if (v4 < *(v5 + 24))
  {
    *(v5 + 24) = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)enumerateSublayoutsForDetailedPlacement:(id)placement ofItemWithReference:(id)reference usingBlock:(id)block
{
  referenceCopy = reference;
  blockCopy = block;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__PXGLayout_PXGItemPlacement__enumerateSublayoutsForDetailedPlacement_ofItemWithReference_usingBlock___block_invoke;
  v12[3] = &unk_2782A7D10;
  v13 = referenceCopy;
  v14 = blockCopy;
  v10 = referenceCopy;
  v11 = blockCopy;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v12];
}

- (void)setDetailedPlacementOverride:(id)override forItemReference:(id)reference
{
  overrideCopy = override;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__PXGLayout_PXGItemPlacement__setDetailedPlacementOverride_forItemReference___block_invoke;
  v8[3] = &unk_2782A7CE8;
  v9 = overrideCopy;
  v7 = overrideCopy;
  [(PXGLayout *)self enumerateSublayoutsForDetailedPlacement:v7 ofItemWithReference:reference usingBlock:v8];
}

- (void)getDetailedPresentedPlacement:(id)placement forItemReference:(id)reference
{
  placementCopy = placement;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__PXGLayout_PXGItemPlacement__getDetailedPresentedPlacement_forItemReference___block_invoke;
  v8[3] = &unk_2782A7CE8;
  v9 = placementCopy;
  v7 = placementCopy;
  [(PXGLayout *)self enumerateSublayoutsForDetailedPlacement:v7 ofItemWithReference:reference usingBlock:v8];
}

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4290;
  v16 = __Block_byref_object_dispose__4291;
  v17 = 0;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__PXGLayout_PXGViewControllerTransitionEndPoint__itemPlacementControllerForItemReference___block_invoke;
  v9[3] = &unk_2782AA970;
  v11 = &v12;
  v6 = referenceCopy;
  v10 = v6;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __90__PXGLayout_PXGViewControllerTransitionEndPoint__itemPlacementControllerForItemReference___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 itemPlacementControllerForItemReference:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (CGRect)anchoringRectForSpriteAtIndex:(unsigned int)index
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11[6] = xmmword_21AE2E2C0;
  v11[7] = unk_21AE2E2D0;
  v11[8] = xmmword_21AE2E2E0;
  v11[9] = unk_21AE2E2F0;
  v11[2] = xmmword_21AE2E280;
  v11[3] = unk_21AE2E290;
  v11[4] = xmmword_21AE2E2A0;
  v11[5] = unk_21AE2E2B0;
  v11[0] = PXGSpriteStyleDefault;
  v11[1] = unk_21AE2E270;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  [(PXGLayout *)self copyLayoutForSpritesInRange:index | 0x100000000 applySpriteTransforms:0 entities:&v10 geometries:v9 styles:v11 infos:v7];
  PXRectWithCenterAndSize();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)invalidateAllSuperlayoutAnchors
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = selfCopy;
    do
    {
      activeAnchor = [v3 activeAnchor];
      [activeAnchor invalidate];

      superlayout = [v3 superlayout];

      v3 = superlayout;
    }

    while (superlayout);
  }
}

- (id)_createAnchorWithAnchor:(id)anchor resetPriority:(BOOL)priority
{
  priorityCopy = priority;
  v6 = [anchor copyWithLayout:self];
  changeDetailsWithNoIncrementalChanges = [MEMORY[0x277D3CCC8] changeDetailsWithNoIncrementalChanges];
  [v6 adjustReferencedSpriteIndexesWithChangeDetails:changeDetailsWithNoIncrementalChanges appliedToLayout:self];

  if (priorityCopy)
  {
    [v6 setPriority:1];
  }

  [(PXGLayout *)self addAnchor:v6];

  return v6;
}

- (id)createAnchorFromSuperlayoutWithSublayoutIndex:(int64_t)index sublayoutPositionEdges:(unint64_t)edges ignoringScrollingAnimationAnchors:(BOOL)anchors
{
  anchorsCopy = anchors;
  superlayout = [(PXGLayout *)self superlayout];
  activeAnchor = [superlayout activeAnchor];
  v11 = activeAnchor;
  if (anchorsCopy && [activeAnchor isScrollingAnimationAnchor])
  {

    v11 = 0;
  }

  type = [v11 type];
  if ((type - 3) >= 3)
  {
    if ((type - 1) <= 1)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __127__PXGLayout_PXGAnchor__createAnchorFromSuperlayoutWithSublayoutIndex_sublayoutPositionEdges_ignoringScrollingAnimationAnchors___block_invoke;
      v16[3] = &unk_2782A8CD0;
      v18 = &v20;
      indexCopy = index;
      v17 = superlayout;
      [v11 enumerateAllSpriteReferencesUsingBlock:v16];
      if (*(v21 + 24) == 1)
      {
        v14 = [v11 copyWithLayout:self];
        [(PXGLayout *)self addAnchor:v14];
      }

      else
      {
        v14 = 0;
      }

      _Block_object_dispose(&v20, 8);
      goto LABEL_13;
    }
  }

  else
  {
    v13 = [v11 edges] & edges;
    if (v13)
    {
      v14 = [v11 copyWithLayout:self];
      [v14 setEdges:v13];
      [(PXGLayout *)self addAnchor:v14];
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

uint64_t __127__PXGLayout_PXGAnchor__createAnchorFromSuperlayoutWithSublayoutIndex_sublayoutPositionEdges_ignoringScrollingAnimationAnchors___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) sublayoutIndexForSpriteReference:a2 options:a3];
  if (result == *(a1 + 48))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)createAnchorForScrollingAnimationTowardsContentEdges:(unint64_t)edges
{
  v10 = *MEMORY[0x277D85DE8];
  if ((edges & 8) != 0 && (edges & 0xA) != 8)
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      edgesCopy = edges;
      _os_log_error_impl(&dword_21AD38000, v5, OS_LOG_TYPE_ERROR, "invalid edges %li", &v8, 0xCu);
    }
  }

  v6 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v6 setType:5];
  [(PXGAnchor *)v6 setEdges:edges];
  [(PXGLayout *)self addAnchor:v6];

  return v6;
}

- (id)createAnchorForScrollingToContentEdges:(unint64_t)edges padding:(UIEdgeInsets)padding
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  v15 = *MEMORY[0x277D85DE8];
  if ((edges & 8) != 0 && (edges & 0xA) != 8)
  {
    v10 = PXAssertGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      edgesCopy = edges;
      _os_log_error_impl(&dword_21AD38000, v10, OS_LOG_TYPE_ERROR, "invalid edges %li", &v13, 0xCu);
    }
  }

  v11 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v11 setType:4];
  [(PXGAnchor *)v11 setEdges:edges];
  [(PXGAnchor *)v11 setPadding:top, left, bottom, right];
  [(PXGLayout *)self addAnchor:v11];

  return v11;
}

- (id)_createAnchorForContentEdges:(unint64_t)edges priority:(int64_t)priority
{
  v12 = *MEMORY[0x277D85DE8];
  if ((edges & 8) != 0 && (edges & 0xA) != 8)
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      edgesCopy = edges;
      _os_log_error_impl(&dword_21AD38000, v7, OS_LOG_TYPE_ERROR, "invalid edges %li", &v10, 0xCu);
    }
  }

  v8 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v8 setType:3];
  [(PXGAnchor *)v8 setEdges:edges];
  [(PXGLayout *)self estimatedContentSize];
  [(PXGAnchor *)v8 setContentSize:?];
  [(PXGLayout *)self visibleRect];
  [(PXGAnchor *)v8 setVisibleRect:?];
  [(PXGAnchor *)v8 setPriority:priority];
  [(PXGLayout *)self addAnchor:v8];

  return v8;
}

- (id)createAnchorForScrollingSpriteForSpriteReference:(id)reference normalizedAnchorPoint:(CGPoint)point toVisibleLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v7 = point.y;
  v8 = point.x;
  v14[1] = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v11 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v11 setType:2];
  v14[0] = referenceCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  [(PXGAnchor *)v11 setSpriteReferences:v12];
  [(PXGAnchor *)v11 setVisibleLocation:x, y];
  [(PXGAnchor *)v11 setNormalizedAnchorPoint:v8, v7];
  [(PXGLayout *)self addAnchor:v11];

  return v11;
}

- (id)createAnchorForScrollingSpriteForSpriteReference:(id)reference toScrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding customOffset:(id)offset
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  v22 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  offsetCopy = offset;
  if ((position & 0x30) != 0 && (position & 0x38) != 0x20 && (position & 0x38) != 0x10 || (position & 7) > 4 || (position & 7) == 3)
  {
    v15 = PXAssertGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      positionCopy = position;
      _os_log_error_impl(&dword_21AD38000, v15, OS_LOG_TYPE_ERROR, "invalid scroll position %li", buf, 0xCu);
    }
  }

  v16 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v16 setType:2];
  v19 = referenceCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  [(PXGAnchor *)v16 setSpriteReferences:v17];

  [(PXGAnchor *)v16 setScrollPosition:position];
  [(PXGAnchor *)v16 setPadding:top, left, bottom, right];
  [(PXGAnchor *)v16 setCustomOffset:offsetCopy];
  [(PXGLayout *)self addAnchor:v16];

  return v16;
}

- (id)createAnchorForScrollingSpriteAtIndex:(unsigned int)index toScrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5627;
  v13 = __Block_byref_object_dispose__5628;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__PXGLayout_PXGAnchor__createAnchorForScrollingSpriteAtIndex_toScrollPosition_padding___block_invoke;
  v7[3] = &unk_2782A8CA8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = position;
  paddingCopy = padding;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:index | 0x100000000 options:1 usingBlock:v7];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __87__PXGLayout_PXGAnchor__createAnchorForScrollingSpriteAtIndex_toScrollPosition_padding___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7 = [v3 spriteReferenceForSpriteIndex:a2];
  v4 = [v3 createAnchorForScrollingSpriteForSpriteReference:v7 toScrollPosition:*(a1 + 48) padding:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)createAnchorForScrollingSpriteForObjectReference:(id)reference toScrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  v11 = [(PXGLayout *)self spriteReferenceForObjectReference:reference];
  right = [(PXGLayout *)self createAnchorForScrollingSpriteForSpriteReference:v11 toScrollPosition:position padding:top, left, bottom, right];

  return right;
}

- (id)_createAnchorWithPriority:(int64_t)priority constraints:(id)constraints
{
  constraintsCopy = constraints;
  v8 = objc_alloc_init(PXGAnchorConstraintsBuilder);
  constraintsCopy[2](constraintsCopy, v8);

  constraints = [(PXGAnchorConstraintsBuilder *)v8 constraints];
  v10 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v10 setType:1];
  [(PXGAnchor *)v10 setPriority:priority];
  [(PXGAnchor *)v10 setConstraints:constraints];
  v13 = MEMORY[0x277D85DD0];
  v14 = a2;
  v11 = PXMap();
  [(PXGAnchor *)v10 setSpriteRects:v11, v13, 3221225472, __62__PXGLayout_PXGAnchor___createAnchorWithPriority_constraints___block_invoke, &unk_2782A8C80, self, v14];

  [(PXGLayout *)self visibleRect];
  [(PXGAnchor *)v10 setVisibleRect:?];
  [(PXGLayout *)self addAnchor:v10];

  return v10;
}

id __62__PXGLayout_PXGAnchor___createAnchorWithPriority_constraints___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 spriteReference];
  if (!v4)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXGAnchor.m" lineNumber:714 description:{@"missing sprite reference for %@", v3}];
  }

  [*(a1 + 32) anchoringRectForSpriteAtIndex:{objc_msgSend(*(a1 + 32), "spriteIndexForSpriteReference:options:", v4, 0)}];
  v5 = [MEMORY[0x277CCAE60] valueWithCGRect:?];

  return v5;
}

- (id)createAnchorForSpriteReferences:(id)references
{
  referencesCopy = references;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__PXGLayout_PXGAnchor__createAnchorForSpriteReferences___block_invoke;
  v8[3] = &unk_2782A8C58;
  v9 = referencesCopy;
  v5 = referencesCopy;
  v6 = [(PXGLayout *)self createAnchorWithConstraints:v8];

  return v6;
}

void __56__PXGLayout_PXGAnchor__createAnchorForSpriteReferences___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
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

        [v3 keepSpriteWithReference:*(*(&v9 + 1) + 8 * v8++) referencingOptions:0 visuallyStableForAttribute:{1, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)createAnchorForSpriteAtIndex:(unsigned int)index
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(PXGLayout *)self spriteReferenceForSpriteIndex:*&index objectReference:0];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [(PXGLayout *)self createAnchorForSpriteReferences:v5];

  return v6;
}

- (id)createAnchorForVisibleAreaIgnoringEdges:(unint64_t)edges
{
  lastVisibleAreaAnchor = [(PXGLayout *)self lastVisibleAreaAnchor];
  if (![lastVisibleAreaAnchor canBeReused] || edges && objc_msgSend(lastVisibleAreaAnchor, "type") == 3)
  {
    if (edges == 15 || (v6 = [PXGLayout scrolledEdgesForVisibleEdges:[(PXGLayout *)self fullyVisibleEdgesWithDefaultTolerance]& ~edges scrollableAxis:[(PXGLayout *)self scrollableAxis]]) == 0)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __64__PXGLayout_PXGAnchor__createAnchorForVisibleAreaIgnoringEdges___block_invoke;
      v13[3] = &unk_2782A8C58;
      v13[4] = self;
      v7 = [(PXGLayout *)self _createAnchorWithPriority:0 constraints:v13];
    }

    else
    {
      v7 = [(PXGLayout *)self _createAnchorForContentEdges:v6 priority:0];
    }

    v8 = v7;
    layout = [v7 layout];
    activeAnchor = [layout activeAnchor];

    if (v8 == activeAnchor)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [v8 setDate:date];

      [(PXGLayout *)self setLastVisibleAreaAnchor:v8];
    }
  }

  else
  {
    v8 = [(PXGLayout *)self _createAnchorWithAnchor:lastVisibleAreaAnchor resetPriority:0];
  }

  return v8;
}

void __64__PXGLayout_PXGAnchor__createAnchorForVisibleAreaIgnoringEdges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PXGLayout_PXGAnchor__createAnchorForVisibleAreaIgnoringEdges___block_invoke_2;
  v6[3] = &unk_2782A8C30;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v6];
}

void __64__PXGLayout_PXGAnchor__createAnchorForVisibleAreaIgnoringEdges___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) spriteReferenceForSpriteIndex:a2];
  [*(a1 + 40) keepSpriteWithReference:v5 referencingOptions:1 visuallyStableForAttribute:a3];
}

- (NSArray)pendingAnimations
{
  rootLayout = [(PXGLayout *)self rootLayout];
  animations = [rootLayout animations];

  return animations;
}

- (id)createDefaultAnimationForCurrentContext
{
  superlayout = [(PXGLayout *)self superlayout];

  if (superlayout)
  {
    superlayout2 = [(PXGLayout *)self superlayout];
    createDefaultAnimationForCurrentContext = [superlayout2 createDefaultAnimationForCurrentContext];
  }

  else
  {
    createDefaultAnimationForCurrentContext = [(PXGLayout *)self createAnimation];
  }

  return createDefaultAnimationForCurrentContext;
}

- (id)createAnimation
{
  v3 = [[PXGAnimation alloc] initWithLayout:self];
  rootLayout = [(PXGLayout *)self rootLayout];
  [rootLayout addAnimation:v3];

  return v3;
}

- (void)removeInteraction:(id)interaction
{
  interactionCopy = interaction;
  interactions = [(PXGLayout *)self interactions];
  v5 = [interactions containsObject:interactionCopy];

  if (v5)
  {
    interactions2 = [(PXGLayout *)self interactions];
    v7 = [interactions2 mutableCopy];

    [v7 removeObject:interactionCopy];
    [(PXGLayout *)self setInteractions:v7];
    [interactionCopy setLayout:0];
  }
}

- (void)addInteraction:(id)interaction
{
  interactionCopy = interaction;
  interactions = [(PXGLayout *)self interactions];
  v5 = [interactions containsObject:interactionCopy];

  if ((v5 & 1) == 0)
  {
    [interactionCopy setLayout:self];
    interactions2 = [(PXGLayout *)self interactions];
    v7 = [interactions2 arrayByAddingObject:interactionCopy];
    [(PXGLayout *)self setInteractions:v7];
  }
}

- (int64_t)sublayoutIndexForSpriteReference:(id)reference options:(unint64_t)options
{
  referenceCopy = reference;
  if ([referenceCopy spriteIndex] != -1)
  {
    layoutVersion = [referenceCopy layoutVersion];
    layout = [referenceCopy layout];
    if (layoutVersion == [layout version])
    {
      layout2 = [referenceCopy layout];

      if (layout2)
      {
        spriteIndex = [referenceCopy spriteIndex];
        layout3 = [referenceCopy layout];
        v12 = [(PXGLayout *)self convertSpriteIndex:spriteIndex fromLayout:layout3];

        v13 = [(PXGLayout *)self sublayoutIndexForSpriteIndex:v12];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v13;
          v15 = 0;
          goto LABEL_12;
        }
      }
    }

    else
    {
    }
  }

  objectReference = [referenceCopy objectReference];

  if (objectReference)
  {
    objectReference2 = [referenceCopy objectReference];
    v19 = 0;
    v14 = [(PXGLayout *)self sublayoutIndexForObjectReference:objectReference2 options:options updatedObjectReference:&v19];
    v15 = v19;

    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15)
    {
      [referenceCopy setObjectReference:v15];
    }
  }

  else
  {
    v15 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:

  return v14;
}

- (unsigned)spriteIndexForSpriteReference:(id)reference options:(unint64_t)options
{
  v26 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  layout = [referenceCopy layout];
  v8 = layout;
  if (layout)
  {
    version = [layout version];
    if ([referenceCopy layoutVersion] == version)
    {
      spriteIndex = [referenceCopy spriteIndex];
    }

    else
    {
      spriteIndex = 0xFFFFFFFFLL;
    }

    objectReference = [referenceCopy objectReference];
    v13 = objectReference;
    if (spriteIndex != -1 || !objectReference)
    {
      goto LABEL_21;
    }

    if ([v8 allowsObjectReferenceSpriteIndexLookup])
    {
      v21 = 0;
      spriteIndex = [v8 spriteIndexForObjectReference:v13 options:options updatedObjectReference:&v21];
      v14 = v21;
      v15 = v8;
      v16 = v13;
      v17 = v16;
      if (spriteIndex == -1)
      {
      }

      else
      {
        if ([v15 numberOfSprites] <= spriteIndex)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXValidateLayoutSpriteIndexForObjectReference(PXGLayout * _Nonnull __strong, PXGSpriteIndex, id  _Nonnull __strong)"}];
          [currentHandler handleFailureInFunction:v20 file:@"PXGLayout_Internal.h" lineNumber:227 description:{@"%@ returned invalid spriteIndex %li for objectReference %@", v15, spriteIndex, v17}];
        }

        [referenceCopy setSpriteIndex:spriteIndex];
        [referenceCopy setLayoutVersion:version];
        if (v14)
        {
          [referenceCopy setObjectReference:v14];
        }
      }
    }

    else
    {
      if ((options & 0x400) != 0)
      {
        spriteIndex = 0xFFFFFFFFLL;
LABEL_21:
        v11 = [(PXGLayout *)self convertSpriteIndex:spriteIndex fromLayout:v8];

        goto LABEL_22;
      }

      v14 = PXAssertGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = v8;
        v24 = 2112;
        v25 = referenceCopy;
        _os_log_error_impl(&dword_21AD38000, v14, OS_LOG_TYPE_ERROR, "layout %@ is in the midst of its update pass, it is thus invalid to query the sprite index for sprite reference %@", buf, 0x16u);
      }

      spriteIndex = 0xFFFFFFFFLL;
    }

    goto LABEL_21;
  }

  v11 = -1;
LABEL_22:

  return v11;
}

- (id)spriteReferenceForSpriteReference:(id)reference
{
  referenceCopy = reference;
  layout = [referenceCopy layout];
  v6 = layout;
  if (layout == self)
  {
    layoutVersion = [referenceCopy layoutVersion];
    version = [(PXGLayout *)self version];

    if (layoutVersion == version)
    {
      _init = referenceCopy;
      goto LABEL_6;
    }
  }

  else
  {
  }

  _init = [[PXGSpriteReference alloc] _init];
  objectReference = [referenceCopy objectReference];
  [_init setObjectReference:objectReference];

  [_init setIsDynamic:{objc_msgSend(referenceCopy, "isDynamic")}];
  [_init setLayout:self];
LABEL_6:

  return _init;
}

- (id)dynamicSpriteReferenceForObjectReference:(id)reference
{
  referenceCopy = reference;
  _init = [[PXGSpriteReference alloc] _init];
  [_init setObjectReference:referenceCopy];

  [_init setLayout:self];
  [_init setIsDynamic:1];

  return _init;
}

- (id)spriteReferenceForSpriteIndex:(unsigned int)index objectReference:(id)reference
{
  v4 = *&index;
  referenceCopy = reference;
  _init = [[PXGSpriteReference alloc] _init];
  [_init setSpriteIndex:v4];
  if (v4 != -1)
  {
    [_init setLayoutVersion:{-[PXGLayout version](self, "version")}];
    if (!referenceCopy)
    {
      if ([(PXGLayout *)self allowsObjectReferenceSpriteIndexLookup])
      {
        referenceCopy = [(PXGLayout *)self objectReferenceForSpriteIndex:v4];
      }

      else
      {
        referenceCopy = 0;
      }
    }
  }

  [_init setObjectReference:referenceCopy];
  [_init setLayout:self];

  return _init;
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXGLayout *)self axNextResponder];
  LOBYTE(action) = [axNextResponder axGroup:groupCopy didRequestToPerformAction:action userInfo:infoCopy];

  return action;
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXGLayout *)self axNextResponder];
  [axNextResponder axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axContainingViewForAXGroup:(id)group
{
  v3 = [(PXGLayout *)self axContainingScrollViewForAXGroup:group];
  superview = [v3 superview];
  if (superview)
  {
    do
    {
      v5 = superview;
      v6 = objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      superview = [v5 superview];
    }

    while (superview && !v8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  groupCopy = group;
  axNextResponder = [(PXGLayout *)self axNextResponder];
  v6 = [axNextResponder axContainingScrollViewForAXGroup:groupCopy];

  return v6;
}

- (id)axLeafForObjectReference:(id)reference
{
  v4 = [(PXGLayout *)self spriteIndexForObjectReference:reference];
  v5 = [(PXGLayout *)self leafSublayoutForSpriteIndex:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 convertSpriteIndex:v4 fromLayout:self];
    axGroup = [v6 axGroup];
    v9 = [axGroup loadLeafAtSpriteIndexIfNeeded:v7 usingOptions:1];

    axGroup2 = [v6 axGroup];
    v11 = [axGroup2 loadedLeafAtSpriteIndex:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)index
{
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  if ([spriteDataStore count] <= index)
  {
    v5 = 0;
  }

  else if (PXGAXInfoKindForMediaKind(*([spriteDataStore infos] + 40 * index + 1)) == 6)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (unsigned)axSpriteIndexClosestToSpriteIndexDefaultImplementation:(unsigned int)implementation inDirection:(unint64_t)direction
{
  if (implementation == -1 || [(PXGLayout *)self localNumberOfSprites]> implementation)
  {
    if (direction - 4 < 2)
    {
      axSpriteIndexes = [(PXGLayout *)self axSpriteIndexes];
      v8 = [axSpriteIndexes indexGreaterThanIndex:implementation];
      goto LABEL_9;
    }

    if (direction == 6 || direction == 3)
    {
      axSpriteIndexes = [(PXGLayout *)self axSpriteIndexes];
      v8 = [axSpriteIndexes indexLessThanIndex:implementation];
LABEL_9:
      v9 = v8;

      return v9;
    }
  }

  return -1;
}

- (id)axSpriteIndexesInRectDefaultImplementation:(CGRect)implementation
{
  height = implementation.size.height;
  width = implementation.size.width;
  y = implementation.origin.y;
  x = implementation.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  axSpriteIndexes = [(PXGLayout *)self axSpriteIndexes];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__PXGLayout_AX__axSpriteIndexesInRectDefaultImplementation___block_invoke;
  v14[3] = &unk_2782A93A0;
  v14[4] = self;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v10 = v8;
  v15 = v10;
  [axSpriteIndexes enumerateIndexesUsingBlock:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

uint64_t __60__PXGLayout_AX__axSpriteIndexesInRectDefaultImplementation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 geometryForSpriteAtIndex:{a2, 0, 0}];
  }

  PXRectWithCenterAndSize();
  v10.origin.x = v5;
  v10.origin.y = v6;
  v10.size.width = v7;
  v10.size.height = v8;
  result = CGRectIntersectsRect(*(a1 + 48), v10);
  if (result)
  {
    return [*(a1 + 40) addIndex:v2];
  }

  return result;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  v52 = *MEMORY[0x277D85DE8];
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  if ([spriteDataStore count] <= v3)
  {
    goto LABEL_11;
  }

  v6 = [spriteDataStore infos] + 40 * v3;
  v7 = *(v6 + 34);
  v8 = PXGAXInfoKindForMediaKind(*(v6 + 1));
  v9 = 6;
  if ((v7 & 4) == 0)
  {
    v9 = 0;
  }

  v10 = v8 ? v8 : v9;
  if (v10)
  {
    v11 = +[PXGReusableAXInfo sharedPool];
    v12 = [v11 checkOutReusableObjectWithReuseIdentifier:1];
    if ([v12 fillContentForContentKind:v10 inLayout:self atIndex:v3])
    {
      v13 = ([spriteDataStore geometries] + 32 * v3);
      v30 = *v13;
      v31 = v13[1];
      v14 = ([spriteDataStore styles] + 160 * v3);
      v15 = v14[7];
      v48 = v14[6];
      v49 = v15;
      v16 = v14[9];
      v50 = v14[8];
      v51 = v16;
      v17 = v14[3];
      v44 = v14[2];
      v45 = v17;
      v18 = v14[5];
      v46 = v14[4];
      v47 = v18;
      v19 = v14[1];
      v42 = *v14;
      v43 = v19;
      decoratingLayout = [(PXGLayout *)self decoratingLayout];
      if (decoratingLayout)
      {
        decoratingLayout2 = [(PXGLayout *)self decoratingLayout];
        focusRingType = [decoratingLayout2 focusRingType];
      }

      else
      {
        focusRingType = 1;
      }

      [v12 setSpriteIndex:v3];
      v32 = v30;
      v33 = v31;
      [v12 setSpriteGeometry:&v32];
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v41 = v51;
      v34 = v44;
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v32 = v42;
      v33 = v43;
      [v12 setSpriteStyle:&v32];
      v24 = ([spriteDataStore styles] + 160 * v3);
      LODWORD(v25) = v24[9];
      LODWORD(v26) = v24[10];
      LODWORD(v27) = v24[11];
      LODWORD(v28) = v24[12];
      [v12 setSpriteStyleCornerRadius:{v25, v26, v27, v28}];
      [v12 setFocusRingType:focusRingType];
      [v12 setAxAccessibleWhenTransparent:(v7 >> 2) & 1];
      v23 = v12;
    }

    else
    {
      [v11 checkInReusableObject:v12];
      v23 = 0;
    }
  }

  else
  {
LABEL_11:
    v23 = 0;
  }

  return v23;
}

- (CGPoint)axConvertPoint:(CGPoint)point toDescendantGroup:(id)group
{
  y = point.y;
  x = point.x;
  groupCopy = group;
  if (groupCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    px_descriptionForAssertionMessage = [groupCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"descendantGroup", v21, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"descendantGroup", v21}];
  }

LABEL_3:
  containingLayout = [groupCopy containingLayout];

  if (containingLayout)
  {
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    containingLayout2 = [groupCopy containingLayout];
    [(PXGLayout *)self convertRect:containingLayout2 toDescendantLayout:x, y, v10, v11];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
  }

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)axConvertPoint:(CGPoint)point fromDescendantGroup:(id)group
{
  y = point.y;
  x = point.x;
  groupCopy = group;
  if (groupCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    px_descriptionForAssertionMessage = [groupCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:116 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"descendantGroup", v21, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:116 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"descendantGroup", v21}];
  }

LABEL_3:
  containingLayout = [groupCopy containingLayout];

  if (containingLayout)
  {
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    containingLayout2 = [groupCopy containingLayout];
    [(PXGLayout *)self convertRect:containingLayout2 fromDescendantLayout:x, y, v10, v11];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
  }

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGRect)axConvertRect:(CGRect)rect toDescendantGroup:(id)group
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  groupCopy = group;
  if (groupCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v28 = objc_opt_class();
    v27 = NSStringFromClass(v28);
    px_descriptionForAssertionMessage = [groupCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:107 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"descendantGroup", v27, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:107 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"descendantGroup", v27}];
  }

LABEL_3:
  containingLayout = [groupCopy containingLayout];

  if (containingLayout)
  {
    containingLayout2 = [groupCopy containingLayout];
    [(PXGLayout *)self convertRect:containingLayout2 toDescendantLayout:x, y, width, height];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
    v18 = *(MEMORY[0x277CBF398] + 16);
    v20 = *(MEMORY[0x277CBF398] + 24);
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)axConvertRect:(CGRect)rect fromDescendantGroup:(id)group
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  groupCopy = group;
  if (groupCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v28 = objc_opt_class();
    v27 = NSStringFromClass(v28);
    px_descriptionForAssertionMessage = [groupCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:98 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"descendantGroup", v27, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:98 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"descendantGroup", v27}];
  }

LABEL_3:
  containingLayout = [groupCopy containingLayout];

  if (containingLayout)
  {
    containingLayout2 = [groupCopy containingLayout];
    [(PXGLayout *)self convertRect:containingLayout2 fromDescendantLayout:x, y, width, height];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
    v18 = *(MEMORY[0x277CBF398] + 16);
    v20 = *(MEMORY[0x277CBF398] + 24);
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)axRemoveSubgroupForSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags
{
  flagsCopy = flags;
  axGroup = [(PXGLayout *)self axGroup];
  if (axGroup)
  {
    v9 = axGroup;
    if (flagsCopy)
    {
      [axGroup unloadSubgroupAtIndex:index];
    }

    else
    {
      v8 = [MEMORY[0x277D3CCC8] changeDetailsWithRemovedIndexRange:{index, 1}];
      [v9 updateSubgroupsWithChangeDetails:v8];
    }

    axGroup = v9;
  }
}

- (void)axAddSubgroupForSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags
{
  flagsCopy = flags;
  sublayoutCopy = sublayout;
  axGroup = [(PXGLayout *)self axGroup];
  if (axGroup)
  {
    if ((flagsCopy & 1) == 0)
    {
      v9 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{index, 1}];
      [axGroup updateSubgroupsWithChangeDetails:v9];
    }

    axGroup2 = [sublayoutCopy axGroup];
    [axGroup loadSubgroup:axGroup2 atIndex:index];
  }
}

+ (id)_defaultAccessibilityIdentifierForAXInfoKind:(int64_t)kind
{
  if (kind > 7)
  {
    return @"mediaKind_text";
  }

  else
  {
    return off_2782A93C0[kind];
  }
}

- (NSArray)pendingFences
{
  rootLayout = [(PXGLayout *)self rootLayout];
  fences = [rootLayout fences];

  return fences;
}

- (id)createFenceWithType:(unint64_t)type
{
  v4 = [[PXGFence alloc] initWithLayout:self type:type];
  rootLayout = [(PXGLayout *)self rootLayout];
  [rootLayout addFence:v4];

  return v4;
}

- (BOOL)isSpriteIndex:(unsigned int)index decoratingSpriteWithIndex:(unsigned int *)withIndex
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  indexCopy = index;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__PXGLayout_PXGDecoratingLayout__isSpriteIndex_decoratingSpriteWithIndex___block_invoke;
  v7[3] = &unk_2782A9FE0;
  v7[4] = self;
  v7[5] = &v12;
  v7[6] = &v8;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:index | 0x100000000 options:1 usingBlock:v7];
  if (withIndex)
  {
    *withIndex = *(v9 + 6);
  }

  v5 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void __74__PXGLayout_PXGDecoratingLayout__isSpriteIndex_decoratingSpriteWithIndex___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a3)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = a3;
    *(*(*(a1 + 40) + 8) + 24) = [v6 isSpriteIndex:a2 decoratingSpriteWithIndex:v5 + 24];
    LODWORD(a2) = [*(a1 + 32) convertSpriteIndex:*(*(*(a1 + 48) + 8) + 24) fromDescendantLayout:v6];

    *(*(*(a1 + 48) + 8) + 24) = a2;
  }
}

- (void)_invalidateDecorationForSpriteRange:(_PXGSpriteIndexRange)range inLayout:(id)layout invalidateSprites:(BOOL)sprites
{
  spritesCopy = sprites;
  layoutCopy = layout;
  superlayout = [(PXGLayout *)self superlayout];
  [superlayout _invalidateDecorationForSpriteRange:range inLayout:layoutCopy invalidateSprites:spritesCopy];
}

- (void)invalidateDecorationAndSprites
{
  v3 = [(PXGLayout *)self localNumberOfSprites]<< 32;

  [(PXGLayout *)self _invalidateDecorationForSpriteRange:v3 inLayout:self invalidateSprites:1];
}

- (id)createTransitionWithAnimations:(id)animations
{
  animationsCopy = animations;
  v5 = [[PXGTransition alloc] initWithAnimations:animationsCopy layout:self];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__PXGLayout_PXGTransition__createTransitionWithAnimations___block_invoke;
  v9[3] = &unk_2782AA4E8;
  v6 = v5;
  v10 = v6;
  [animationsCopy enumerateObjectsUsingBlock:v9];

  rootLayout = [(PXGLayout *)self rootLayout];
  [rootLayout addTransition:v6];

  return v6;
}

- (CGSize)estimatedContentSize
{
  width = self->_estimatedContentSize.width;
  height = self->_estimatedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXGLayoutFocusDelegate)focusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusDelegate);

  return WeakRetained;
}

- (PXGLayoutViewDelegate)viewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);

  return WeakRetained;
}

- (void)setNeedsFocusUpdate
{
  rootLayout = [(PXGLayout *)self rootLayout];
  focusDelegate = [rootLayout focusDelegate];
  [focusDelegate setNeedsFocusUpdateForLayout:self];
}

- (void)setCameraConfiguration:(float32x4_t *)configuration
{
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(configuration[1], self[41]), vceqq_f32(*configuration, self[40])), vandq_s8(vceqq_f32(configuration[2], self[42]), vceqq_f32(configuration[3], self[43])))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(configuration[6], self[46]), vceqq_f32(configuration[7], self[47])), vandq_s8(vceqq_f32(configuration[5], self[45]), vceqq_f32(configuration[4], self[44])))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(configuration[9], self[49]), vceqq_f32(configuration[8], self[48])), vandq_s8(vceqq_f32(configuration[10], self[50]), vceqq_f32(configuration[11], self[51])))) & 0x80000000) == 0 || (v4 = vceqq_f32(configuration[12], self[52]), v4.i32[3] = v4.i32[2], (vminvq_u32(v4) & 0x80000000) == 0))
  {
    self[40] = *configuration;
    v5 = configuration[1];
    v6 = configuration[2];
    v7 = configuration[4];
    self[43] = configuration[3];
    self[44] = v7;
    self[41] = v5;
    self[42] = v6;
    v8 = configuration[5];
    v9 = configuration[6];
    v10 = configuration[8];
    self[47] = configuration[7];
    self[48] = v10;
    self[45] = v8;
    self[46] = v9;
    v11 = configuration[9];
    v12 = configuration[10];
    v13 = configuration[12];
    self[51] = configuration[11];
    self[52] = v13;
    self[49] = v11;
    self[50] = v12;
    updateDelegate = [(float32x4_t *)self updateDelegate];
    [updateDelegate layoutNeedsRenderUpdate:self];
  }
}

- (void)enumerateDescendantsLayoutsBreadthFirstReverseUsingBlock:(id)block
{
  blockCopy = block;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v6 addObject:self];
  null = [MEMORY[0x277CBEB68] null];
  [v6 addObject:null];
  while (1)
  {

    null = [v6 firstObject];

    if (null)
    {
      null = [v6 firstObject];
      [v6 removeObject:null];
    }

    null2 = [MEMORY[0x277CBEB68] null];
    v9 = [null isEqual:null2];

    if (v9)
    {
      break;
    }

    if (null)
    {
      [v5 addObject:null];
    }

    sublayoutDataStore = [null sublayoutDataStore];
    for (i = 0; i < [sublayoutDataStore count]; ++i)
    {
      v12 = [sublayoutDataStore sublayoutAtIndex:i];
      if (v12)
      {
        [v6 addObject:v12];
      }
    }

LABEL_7:
  }

  if ([v6 count])
  {
    sublayoutDataStore = [MEMORY[0x277CBEB68] null];
    [v6 addObject:sublayoutDataStore];
    goto LABEL_7;
  }

  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__PXGLayout_enumerateDescendantsLayoutsBreadthFirstReverseUsingBlock___block_invoke;
  v16[3] = &unk_2782AADD0;
  v15 = blockCopy;
  v17 = v15;
  v18 = v19;
  [allObjects enumerateObjectsUsingBlock:v16];

  _Block_object_dispose(v19, 8);
}

uint64_t __70__PXGLayout_enumerateDescendantsLayoutsBreadthFirstReverseUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (void)enumerateDescendantsLayoutsUsingBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15[0] = 0;
  blockCopy[2](blockCopy, self, v15);
  if ((v13[3] & 1) == 0)
  {
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    v6 = 0;
    do
    {
      if (v6 >= [sublayoutDataStore count])
      {
        break;
      }

      v7 = [sublayoutDataStore sublayoutAtIndex:v6];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __51__PXGLayout_enumerateDescendantsLayoutsUsingBlock___block_invoke;
      v9[3] = &unk_2782AADA8;
      v10 = blockCopy;
      v11 = &v12;
      [v7 enumerateDescendantsLayoutsUsingBlock:v9];
      v8 = *(v13 + 24);

      ++v6;
    }

    while ((v8 & 1) == 0);
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __51__PXGLayout_enumerateDescendantsLayoutsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (id)diagnosticsItemProvidersInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __44__PXGLayout_diagnosticsItemProvidersInRect___block_invoke;
  v16 = &unk_2782AAD80;
  v17 = v8;
  selfCopy = self;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v10 = v8;
  [sublayoutDataStore enumerateSublayoutsInRect:&v13 usingBlock:{x, y, width, height}];

  v11 = [v10 copy];

  return v11;
}

void __44__PXGLayout_diagnosticsItemProvidersInRect___block_invoke(double *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a3;
  [v4 convertRect:v9 toDescendantLayout:{v5, v6, v7, v8}];
  v10 = [v9 diagnosticsItemProvidersInRect:?];

  [v3 addObjectsFromArray:v10];
}

- (UIEdgeInsets)fullPageSnapshotFloatingInsets
{
  [(PXGLayout *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(PXGLayout *)self visibleRect];
  v9 = CGRectGetHeight(v14) * 0.5;
  v10 = 200.0;
  if (v9 <= 200.0)
  {
    v10 = v9;
  }

  if (v10 < v4)
  {
    v10 = v4;
  }

  if (v9 > 100.0)
  {
    v9 = 100.0;
  }

  if (v9 >= v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v6;
  v13 = v8;
  result.right = v13;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    objc_storeStrong(&self->_mediaProvider, provider);
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__PXGLayout_setMediaProvider___block_invoke;
    v7[3] = &unk_2782AA878;
    v8 = providerCopy;
    [sublayoutDataStore enumerateSublayoutsUsingBlock:v7];

    [(PXGLayout *)self mediaProviderDidChange];
  }
}

- (void)_appendDescription:(id)description atLevel:(int64_t)level
{
  descriptionCopy = description;
  v7 = level + 1;
  v8 = [(PXGLayout *)self _paddingForLevel:level + 1];
  v9 = [(PXGLayout *)self description];
  [descriptionCopy appendFormat:@"%@", v9];

  if (!level)
  {
    [(PXGLayout *)self contentSize];
    v10 = NSStringFromCGSize(v21);
    [(PXGLayout *)self visibleRect];
    v11 = NSStringFromCGRect(v22);
    [descriptionCopy appendFormat:@", contentSize=%@, visibleRect=%@", v10, v11];
  }

  briefDiagnosticDescription = [(PXGLayout *)self briefDiagnosticDescription];
  v13 = briefDiagnosticDescription;
  if (briefDiagnosticDescription)
  {
    [descriptionCopy appendFormat:@", %@", briefDiagnosticDescription];
  }

  [descriptionCopy appendString:@"\n"];
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__PXGLayout__appendDescription_atLevel___block_invoke;
  v17[3] = &unk_2782AAD58;
  v17[4] = self;
  v18 = descriptionCopy;
  v19 = v8;
  v20 = v7;
  v15 = v8;
  v16 = descriptionCopy;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v17];
}

void __40__PXGLayout__appendDescription_atLevel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) sublayoutDataStore];
  v7 = [v6 geometries] + 136 * a2;
  v45 = *(v7 + 48);
  v8 = *(v7 + 64);
  v9 = *(v7 + 88);
  *&v48.a = *(v7 + 72);
  *&v48.c = v9;
  *&v48.tx = *(v7 + 104);
  v10 = *(v7 + 120);

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f, %.5f}", v45, v8];
  v14 = PXSizeDescription();
  [v11 appendFormat:@"%@%li: origin=%@, contentSize=%@", v12, a2, v13, v14];

  t1 = v48;
  t2 = *PXGSpriteGeometryTransformIdentity;
  if (!CGAffineTransformEqualToTransform(&t1, &t2) || v10 != 0.0)
  {
    v15 = *(a1 + 40);
    t1 = v48;
    v47 = v10;
    v16 = PXGSpriteGeometryTransformDescription(&t1);
    [v15 appendFormat:@", spriteTransform=%@", v16];
  }

  [v5 visibleRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [*(a1 + 32) rootLayout];
  v26 = [*(a1 + 32) rootLayout];
  [v26 visibleRect];
  [v25 convertRect:v5 toDescendantLayout:?];

  PXPointSubtract();
  v28 = v27;
  v30 = v29;
  if (!PXFloatApproximatelyEqualToFloat() || (PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    v31 = *(a1 + 40);
    v50.x = v28;
    v50.y = v30;
    v32 = NSStringFromCGPoint(v50);
    [v31 appendFormat:@", visibleRectError=%@", v32];
  }

  v33 = *(a1 + 40);
  v51.origin.x = v18;
  v51.origin.y = v20;
  v51.size.width = v22;
  v51.size.height = v24;
  v34 = NSStringFromCGRect(v51);
  [v33 appendFormat:@", visibleRect=%@", v34];

  [*(a1 + 32) safeAreaInsets];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if ((PXEdgeInsetsIsZero() & 1) == 0)
  {
    v43 = *(a1 + 40);
    v44 = MEMORY[0x21CEE3180](v36, v38, v40, v42);
    [v43 appendFormat:@", safeAreaInsets=%@", v44];
  }

  [*(a1 + 40) appendString:@"\n"];
  [*(a1 + 40) appendFormat:@"%@   ", *(a1 + 48)];
  [v5 _appendDescription:*(a1 + 40) atLevel:*(a1 + 56)];
}

- (id)_paddingForLevel:(int64_t)level
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (level >= 1)
  {
    do
    {
      [v4 appendString:@"   | "];
      --level;
    }

    while (level);
  }

  v5 = [v4 copy];

  return v5;
}

- (NSString)parentDescription
{
  string = [MEMORY[0x277CCAB68] string];
  selfCopy = self;
  if (selfCopy)
  {
    v5 = selfCopy;
    v6 = 0;
    do
    {
      if ([string length])
      {
        [string appendString:@"\n"];
      }

      if (v6)
      {
        for (i = 1; i <= v6; ++i)
        {
          [string appendString:@"    "];
        }
      }

      v8 = [v5 description];
      [string appendString:v8];

      superlayout = [v5 superlayout];

      ++v6;
      v5 = superlayout;
    }

    while (superlayout);
  }

  [string appendString:@" (root)"];

  return string;
}

- (NSString)recursiveDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(PXGLayout *)self _appendDescription:v3 atLevel:0];
  [v3 px_removeSuffix:@"\n"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = [(PXGLayout *)self description];
  v5 = [v3 initWithString:v4];

  [v5 px_removeSuffix:@">"];
  [(PXGLayout *)self contentSize];
  v6 = PXSizeDescription();
  [v5 appendFormat:@", contentSize=%@", v6];

  [(PXGLayout *)self referenceSize];
  v7 = PXSizeDescription();
  [v5 appendFormat:@", referenceSize=%@", v7];

  [(PXGLayout *)self visibleRect];
  v8 = PXRectDescription();
  [v5 appendFormat:@", visibleRect=%@", v8];

  [(PXGLayout *)self safeAreaInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((PXEdgeInsetsIsZero() & 1) == 0)
  {
    v17 = MEMORY[0x21CEE3180](v10, v12, v14, v16);
    [v5 appendFormat:@", safeAreaInsets=%@", v17];
  }

  if ([(PXGLayout *)self numberOfSprites])
  {
    [v5 appendFormat:@", numberOfSprites=%u", -[PXGLayout numberOfSprites](self, "numberOfSprites")];
  }

  if ([(PXGLayout *)self localNumberOfSprites])
  {
    [v5 appendFormat:@", localNumberOfSprites=%u", -[PXGLayout localNumberOfSprites](self, "localNumberOfSprites")];
  }

  if ([(PXGLayout *)self numberOfSublayouts]>= 1)
  {
    [v5 appendFormat:@", numberOfSublayouts=%li", -[PXGLayout numberOfSublayouts](self, "numberOfSublayouts")];
  }

  [(PXGLayout *)self displayScale];
  [v5 appendFormat:@", displayScale=%.2f", v18];
  [(PXGLayout *)self alpha];
  if (v19 != 1.0)
  {
    [(PXGLayout *)self alpha];
    [v5 appendFormat:@", alpha=%.2f", v20];
  }

  if ([(PXGLayout *)self needsUpdate])
  {
    [v5 appendString:{@", needsUpdate"}];
  }

  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v22 = [sublayoutDataStore count];
  if (v22 >= 1)
  {
    v23 = v22;
    [v5 appendString:@"\n\tSublayouts:\n"];
    for (i = 0; i != v23; ++i)
    {
      v25 = [sublayoutDataStore sublayoutAtIndex:i];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 description];
        px_stringByIndentingNewLines = [v27 px_stringByIndentingNewLines];
        [v5 appendFormat:@"\t%li: %@\n", i, px_stringByIndentingNewLines];
      }
    }
  }

  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  if ([spriteDataStore count])
  {
    diagnosticDescription = [spriteDataStore diagnosticDescription];
    px_stringByIndentingNewLines2 = [diagnosticDescription px_stringByIndentingNewLines];
    [v5 appendFormat:@"\n\tLocal Sprites: %@\n", px_stringByIndentingNewLines2];
  }

  modifiedSpriteDataStore = [(PXGLayout *)self modifiedSpriteDataStore];
  if ([modifiedSpriteDataStore count])
  {
    diagnosticDescription2 = [modifiedSpriteDataStore diagnosticDescription];
    px_stringByIndentingNewLines3 = [diagnosticDescription2 px_stringByIndentingNewLines];
    [v5 appendFormat:@"\n\tModified Sprites: %@\n", px_stringByIndentingNewLines3];
  }

  [v5 appendString:@">"];

  return v5;
}

- ($7E6FF06E1E2A477A0598F669E6D2B004)orientedContentTransform
{
  retstr->var1 = 0.0;
  *&retstr->var0.a = *PXGSpriteGeometryTransformIdentity;
  *&retstr->var0.c = *&PXGSpriteGeometryTransformIdentity[16];
  *&retstr->var0.tx = *&PXGSpriteGeometryTransformIdentity[32];
  result = [(PXGLayout *)self userInterfaceDirection];
  if (result == 1)
  {
    referenceSize = [(PXGLayout *)self referenceSize];
    v6.n128_f64[0] = v6.n128_f64[0] * 0.5;

    return MEMORY[0x28219CFA8](referenceSize, v6);
  }

  return result;
}

- (unint64_t)fullyVisibleEdgesWithEdgeTolerances:(UIEdgeInsets)tolerances
{
  [(PXGLayout *)self visibleRect];
  [(PXGLayout *)self safeAreaInsets];
  PXEdgeInsetsInsetRect();
  PXEdgeInsetsInvert();
  PXEdgeInsetsInsetRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PXGLayout *)self contentSize];
  v13 = v12;
  v15 = v14;
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  MaxX = CGRectGetMaxX(v29);
  v18 = MaxX <= 0.0 || MinX > 0.0;
  v19 = 2;
  if (v18)
  {
    v19 = 0;
  }

  if (v13 > MaxX || v13 <= MinX)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 | 8;
  }

  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  MinY = CGRectGetMinY(v30);
  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  MaxY = CGRectGetMaxY(v31);
  v24 = MaxY > 0.0 && MinY <= 0.0;
  v25 = v21 | v24;
  if (v15 > MaxY || v15 <= MinY)
  {
    return v25;
  }

  else
  {
    return v25 | 4;
  }
}

- (void)_enumerateSpritesInRect:(CGRect)rect transform:(id *)transform usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  v12 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);
  [(PXGLayout *)self contentSize];
  v47.size.width = v14;
  v47.size.height = v15;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47.origin.x = v12;
  v47.origin.y = v13;
  if (CGRectIntersectsRect(v46, v47))
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    spriteDataStore = [(PXGLayout *)self spriteDataStore];
    v17 = [spriteDataStore count];
    if (v17)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __58__PXGLayout__enumerateSpritesInRect_transform_usingBlock___block_invoke;
      v35[3] = &unk_2782AACE0;
      v18 = blockCopy;
      v19 = *&transform->var0.c;
      v38 = *&transform->var0.a;
      v39 = v19;
      v40 = *&transform->var0.tx;
      var1 = transform->var1;
      v35[4] = self;
      v36 = v18;
      v41 = var1;
      v37 = &v42;
      [spriteDataStore enumerateSpritesInRect:v35 usingBlock:{x, y, width, height}];
    }

    if ((v43[3] & 1) == 0)
    {
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2810000000;
      v34[3] = "";
      v34[4] = v17;
      sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __58__PXGLayout__enumerateSpritesInRect_transform_usingBlock___block_invoke_2;
      v23[3] = &unk_2782AAD30;
      v25 = v34;
      v26 = x;
      v27 = y;
      v28 = width;
      v29 = height;
      v22 = *&transform->var0.c;
      v30 = *&transform->var0.a;
      v31 = v22;
      v32 = *&transform->var0.tx;
      v33 = transform->var1;
      v24 = blockCopy;
      [sublayoutDataStore enumerateSublayoutGeometriesUsingBlock:v23];

      _Block_object_dispose(v34, 8);
    }

    _Block_object_dispose(&v42, 8);
  }
}

uint64_t __58__PXGLayout__enumerateSpritesInRect_transform_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 40) + 16))(*(a1 + 40));
  if (*a4 == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void __58__PXGLayout__enumerateSpritesInRect_transform_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, CGFloat *a3, id *a4, uint64_t a5)
{
  if (*a4)
  {
    v8 = *a4;
    *(*(*(a1 + 40) + 8) + 36) = [v8 numberOfSprites];
    if (*(*(*(a1 + 40) + 8) + 36))
    {
      v29.origin.x = a3[6];
      v29.origin.y = a3[7];
      v29.size.width = a3[4];
      v29.size.height = a3[5];
      if (CGRectIntersectsRect(*(a1 + 48), v29))
      {
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v9 = *(a1 + 96);
        v20 = *(a1 + 80);
        v21 = v9;
        v22 = *(a1 + 112);
        v23 = *(a1 + 128);
        _spriteTransformFromSelfAndParent(&v24, a3, &v20, 1);
        v28 = CGRectOffset(*(a1 + 48), -a3[6], -a3[7]);
        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __58__PXGLayout__enumerateSpritesInRect_transform_usingBlock___block_invoke_3;
        v16[3] = &unk_2782AAD08;
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v17 = v14;
        v18 = v15;
        v19 = a5;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        v23 = v27;
        [v8 _enumerateSpritesInRect:&v20 transform:v16 usingBlock:{x, y, width, height}];
      }
    }

    *(*(*(a1 + 40) + 8) + 32) += *(*(*(a1 + 40) + 8) + 36);
  }
}

uint64_t __58__PXGLayout__enumerateSpritesInRect_transform_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 32));
  if (*a9 == 1)
  {
    **(a1 + 48) = 1;
  }

  return result;
}

- (void)enumerateLocalSpritesInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__PXGLayout_enumerateLocalSpritesInRect_usingBlock___block_invoke;
  v12[3] = &unk_2782AACB8;
  v17 = 0;
  v14 = *PXGSpriteGeometryTransformIdentity;
  v15 = *&PXGSpriteGeometryTransformIdentity[16];
  v16 = *&PXGSpriteGeometryTransformIdentity[32];
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [spriteDataStore enumerateSpritesInRect:v12 usingBlock:{x, y, width, height}];
}

- (void)enumerateSpritesInRect:(CGRect)rect usingBlock:(id)block
{
  v5 = 0;
  v4[0] = *PXGSpriteGeometryTransformIdentity;
  v4[1] = *&PXGSpriteGeometryTransformIdentity[16];
  v4[2] = *&PXGSpriteGeometryTransformIdentity[32];
  [(PXGLayout *)self _enumerateSpritesInRect:v4 transform:block usingBlock:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
}

- (id)leafSublayoutForSpriteIndex:(unsigned int)index
{
  if (index == -1)
  {
    v3 = 0;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__14725;
    v10 = __Block_byref_object_dispose__14726;
    v11 = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__PXGLayout_leafSublayoutForSpriteIndex___block_invoke;
    v5[3] = &unk_2782AAC90;
    v5[4] = &v6;
    [(PXGLayout *)self enumerateLayoutsForSpritesInRange:index | 0x100000000 options:1 usingBlock:v5];
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  return v3;
}

- (id)sublayoutForSpriteIndex:(unsigned int)index
{
  v4 = [(PXGLayout *)self sublayoutIndexForSpriteIndex:*&index];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    v5 = [sublayoutDataStore sublayoutAtIndex:v6];
  }

  return v5;
}

- (int64_t)sublayoutIndexForSpriteIndex:(unsigned int)index
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (index != -1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__PXGLayout_sublayoutIndexForSpriteIndex___block_invoke;
    v5[3] = &unk_2782AAC68;
    v5[4] = self;
    v5[5] = &v6;
    [(PXGLayout *)self enumerateLayoutsForSpritesInRange:index | 0x100000000 options:0 usingBlock:v5];
    v3 = v7[3];
    _Block_object_dispose(&v6, 8);
  }

  return v3;
}

void __42__PXGLayout_sublayoutIndexForSpriteIndex___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [v4 sublayoutDataStore];
  v6 = [v7 indexOfSublayout:v5];

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  if (index == -1)
  {
    v5 = 0;
  }

  else
  {
    v3 = *&index;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__14725;
    v15 = __Block_byref_object_dispose__14726;
    v16 = 0;
    if ([(PXGLayout *)self numberOfSublayouts]< 1)
    {
      v6 = [(PXGLayout *)self spriteReferenceForSpriteIndex:v3];
      v7 = [[PXGHitTestResult alloc] initWithSpriteReference:v6 layout:self identifier:0 userData:0];
      v8 = v12[5];
      v12[5] = v7;
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __41__PXGLayout_hitTestResultForSpriteIndex___block_invoke;
      v10[3] = &unk_2782AAC68;
      v10[4] = self;
      v10[5] = &v11;
      [(PXGLayout *)self enumerateLayoutsForSpritesInRange:v3 | 0x100000000 options:0 usingBlock:v10];
    }

    v5 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

void __41__PXGLayout_hitTestResultForSpriteIndex___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a3)
  {
    v5 = [a3 hitTestResultForSpriteIndex:a2];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (void)_enumerateSpritesInRange:(_PXGSpriteIndexRange)range transform:(id *)transform spriteOffset:(unsigned int)offset stop:(BOOL *)stop usingBlock:(id)block
{
  blockCopy = block;
  modifiedSpriteDataStore = [(PXGLayout *)self modifiedSpriteDataStore];
  v14 = modifiedSpriteDataStore;
  if (modifiedSpriteDataStore)
  {
    spriteDataStore = modifiedSpriteDataStore;
  }

  else
  {
    spriteDataStore = [(PXGLayout *)self spriteDataStore];
  }

  v16 = spriteDataStore;

  v17 = [v16 count];
  v18 = v17;
  if (v17)
  {
    if (HIDWORD(*&range))
    {
      if (v17 > range.location)
      {
        v19 = range.length + range.location;
        if (range.length + range.location)
        {
          if (v17 < v19)
          {
            v19 = v17;
          }

          v20 = v19 - range.location;
          if (v20)
          {
            blockCopy[2](blockCopy, (range.location + offset) | (v20 << 32), transform, [v16 geometries] + 32 * range.location, objc_msgSend(v16, "styles") + 160 * range.location, objc_msgSend(v16, "infos") + 40 * range.location, self, (v20 << 32) | range.location, stop);
          }
        }
      }
    }
  }

  if (!*stop)
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2810000000;
    v34[3] = "";
    v34[4] = v18;
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__PXGLayout__enumerateSpritesInRange_transform_spriteOffset_stop_usingBlock___block_invoke;
    v24[3] = &unk_2782AAC40;
    v26 = v34;
    stopCopy = stop;
    rangeCopy = range;
    v22 = *&transform->var0.c;
    v27 = *&transform->var0.a;
    v28 = v22;
    v29 = *&transform->var0.tx;
    var1 = transform->var1;
    offsetCopy = offset;
    v30 = var1;
    v25 = blockCopy;
    [sublayoutDataStore enumerateSublayoutGeometriesUsingBlock:v24];

    _Block_object_dispose(v34, 8);
  }
}

void __77__PXGLayout__enumerateSpritesInRange_transform_spriteOffset_stop_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, _BYTE *a5)
{
  if (*a4)
  {
    v8 = *a4;
    *(*(*(a1 + 40) + 8) + 36) = [v8 numberOfSprites];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 32);
    v11 = *(a1 + 112);
    if (HIDWORD(v10))
    {
      v12 = HIDWORD(v11) == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = HIDWORD(v10) + v10;
    v14 = !v12 && v13 > v11;
    v15 = HIDWORD(v11) + v11;
    if (v14 && v15 > v10)
    {
      v17 = v10 <= v11 ? *(a1 + 112) : *(v9 + 32);
      v18 = v13 >= v15 ? HIDWORD(v11) + v11 : HIDWORD(v10) + v10;
      v19 = (v18 - v17);
      if (v18 != v17)
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v20 = *(a1 + 64);
        v24 = *(a1 + 48);
        v25 = v20;
        v26 = *(a1 + 80);
        v27 = *(a1 + 96);
        _spriteTransformFromSelfAndParent(&v28, a3, &v24, 1);
        v21 = *(a1 + 120);
        v22 = *(a1 + 104);
        v23 = *(a1 + 32);
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = v31;
        [v8 _enumerateSpritesInRange:(v17 - v10) | (v19 << 32) transform:&v24 spriteOffset:(v21 + v10) stop:v22 usingBlock:v23];
        if (**(a1 + 104) == 1)
        {
          *a5 = 1;
        }

        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 32);
      }
    }

    *(v9 + 32) = v10 + HIDWORD(v10);
  }
}

- (void)enumerateSpritesInRange:(_PXGSpriteIndexRange)range options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v15 = 0;
  v11 = *PXGSpriteGeometryTransformIdentity;
  v12 = *&PXGSpriteGeometryTransformIdentity[16];
  v13 = *&PXGSpriteGeometryTransformIdentity[32];
  v14 = 0;
  if (optionsCopy)
  {
    [(PXGLayout *)self orientedContentTransform];
  }

  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  [(PXGLayout *)self _enumerateSpritesInRange:range transform:v9 spriteOffset:0 stop:&v15 usingBlock:blockCopy];
}

- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)range applySpriteTransforms:(BOOL)transforms parentTransform:(id *)transform parentAlpha:(float)alpha parentClippingRect:(CGRect)rect parentSublayoutOrigin:(id)origin entities:(id *)entities geometries:(id *)self0 styles:(id *)self1 infos:(id *)self2
{
  transformsCopy = transforms;
  var2 = origin.var2;
  var1 = origin.var1;
  var0 = origin.var0;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  entitiesCopy = entities;
  if (transformsCopy)
  {
    modifiedSpriteDataStore = [(PXGLayout *)self modifiedSpriteDataStore];

    if (modifiedSpriteDataStore)
    {
      modifiedSpriteDataStore2 = [(PXGLayout *)self modifiedSpriteDataStore];

      spriteDataStore = modifiedSpriteDataStore2;
    }
  }

  spriteDataStore2 = [(PXGLayout *)self spriteDataStore];
  v31 = [spriteDataStore2 count];
  v32 = [spriteDataStore count];

  if (v31 != v32)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:2309 description:{@"Invalid parameter not satisfying: %@", @"self.spriteDataStore.count == spriteDataStore.count"}];
  }

  if ([(PXGLayout *)self appliesAlphaToSublayouts])
  {
    [(PXGLayout *)self alpha];
    alpha = v33 * alpha;
  }

  [(PXGLayout *)self clippingRect];
  if (!CGRectIsInfinite(v74))
  {
    [(PXGLayout *)self clippingRect];
    v77.origin.x = v34;
    v77.origin.y = v35;
    v77.size.width = v36;
    v77.size.height = v37;
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    v76 = CGRectIntersection(v75, v77);
    x = v76.origin.x;
    y = v76.origin.y;
    width = v76.size.width;
    height = v76.size.height;
  }

  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v73 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __165__PXGLayout_copyLayoutForSpritesInRange_applySpriteTransforms_parentTransform_parentAlpha_parentClippingRect_parentSublayoutOrigin_entities_geometries_styles_infos___block_invoke;
  v50[3] = &unk_2782AAC18;
  v50[4] = self;
  v38 = spriteDataStore;
  v51 = v38;
  rangeCopy = range;
  v53 = v72;
  v54 = entitiesCopy;
  geometriesCopy = geometries;
  stylesCopy = styles;
  infosCopy = infos;
  v58 = x;
  v59 = y;
  v60 = width;
  v61 = height;
  v39 = *&transform->var0.c;
  v62 = *&transform->var0.a;
  v63 = v39;
  v64 = *&transform->var0.tx;
  v65 = transform->var1;
  alphaCopy = alpha;
  v68 = var0;
  v69 = var1;
  v70 = var2;
  v40 = sublayoutDataStore;
  v52 = v40;
  v71 = transformsCopy;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:range options:0 usingBlock:v50];
  length = range.length;
  v46 = entitiesCopy;
  geometriesCopy2 = geometries;
  stylesCopy2 = styles;
  infosCopy2 = infos;
  [(PXGLayout *)self adjustCopiedSprites:&length];

  _Block_object_dispose(v72, 8);
}

void __165__PXGLayout_copyLayoutForSpritesInRange_applySpriteTransforms_parentTransform_parentAlpha_parentClippingRect_parentSublayoutOrigin_entities_geometries_styles_infos___block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = HIDWORD(a2);
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7 == v6)
  {
    v11 = a2;
    if (v5 + a2 > [*(a1 + 40) count])
    {
      v59 = [MEMORY[0x277CCA890] currentHandler];
      v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout copyLayoutForSpritesInRange:applySpriteTransforms:parentTransform:parentAlpha:parentClippingRect:parentSublayoutOrigin:entities:geometries:styles:infos:]_block_invoke"];
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%li, %li}", v11, v5];
      [v59 handleFailureInFunction:v60 file:@"PXGLayout.m" lineNumber:2332 description:{@"subrange %@ out of bounds 0..%li", v61, objc_msgSend(*(a1 + 40), "count")}];
    }

    v12 = *(*(*(a1 + 56) + 8) + 24);
    if (v12 + v5 > *(a1 + 188) + *(a1 + 184))
    {
      v62 = [MEMORY[0x277CCA890] currentHandler];
      v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout copyLayoutForSpritesInRange:applySpriteTransforms:parentTransform:parentAlpha:parentClippingRect:parentSublayoutOrigin:entities:geometries:styles:infos:]_block_invoke"];
      v64 = *(*(*(a1 + 56) + 8) + 24);
      v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%li, %li}", *(a1 + 184), HIDWORD(*(a1 + 184))];
      [v62 handleFailureInFunction:v63 file:@"PXGLayout.m" lineNumber:2333 description:{@"location %li+%li out of range %@", v64, v5, v65}];

      v12 = *(*(*(a1 + 56) + 8) + 24);
    }

    memcpy((*(a1 + 64) + 4 * v12), ([*(a1 + 40) entities] + 4 * v11), 4 * v5);
    memcpy((*(a1 + 72) + 32 * *(*(*(a1 + 56) + 8) + 24)), ([*(a1 + 40) geometries] + 32 * v11), 32 * v5);
    memcpy((*(a1 + 80) + 160 * *(*(*(a1 + 56) + 8) + 24)), ([*(a1 + 40) styles] + 160 * v11), 160 * v5);
    memcpy((*(a1 + 88) + 40 * *(*(*(a1 + 56) + 8) + 24)), ([*(a1 + 40) infos] + 40 * v11), 40 * v5);
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    IsInfinite = CGRectIsInfinite(*(a1 + 96));
    if (v5)
    {
      v19 = vcvt_f32_f64(*(a1 + 96));
      v20 = vadd_f32(v19, vcvt_f32_f64(*(a1 + 112)));
      v21 = (v15 + 160 * v13 + 20);
      v22 = v14 + 32 * v13 + 16;
      v23 = v5;
      do
      {
        v24 = *(a1 + 128);
        v25 = *(a1 + 136);
        v26 = *(a1 + 144);
        v27 = *(a1 + 152);
        v28 = *v22;
        v29 = COERCE_FLOAT(HIDWORD(*(v22 + 8)));
        *&v30 = v26 * v29 + v24 * COERCE_FLOAT(*(v22 + 8));
        v31 = *(a1 + 160);
        v32 = *(a1 + 168);
        *&v29 = v27 * v29 + v25 * *&v30;
        HIDWORD(v30) = LODWORD(v29);
        *(v22 + 8) = v30;
        v33 = *(v22 - 8);
        v34 = v31 + v26 * v33 + v24 * *(v22 - 16);
        *v17.i64 = v32 + v27 * v33 + v25 * v34;
        *(v22 - 16) = v34;
        *(v22 - 8) = v17.i64[0];
        *&v34 = *(a1 + 176);
        *v22 = v28 + *&v34;
        *(v21 - 5) = *(a1 + 192) * *(v21 - 5);
        v35 = *v21;
        if (!IsInfinite)
        {
          v17.i32[0] = 0;
          v36 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
          *v37.i8 = vmaxnm_f32(*v35.i8, v19);
          v38 = vsub_f32(vminnm_f32(v36, v20), *v37.i8);
          *v18.i8 = vcgez_f32(v38);
          *v18.i8 = vpmin_u32(*v18.i8, *v18.i8);
          v17 = vdupq_lane_s32(*&vcgtq_s32(v17, v18), 0);
          v37.u64[1] = v38;
          v35 = vandq_s8(v37, v17);
          *v21 = v35;
        }

        v39 = *(a1 + 196) + *v35.i32;
        *v21 = v39;
        *v35.i32 = v39;
        *&v40 = *(a1 + 204) + *&v35.i32[1];
        v35.i32[1] = v40;
        *v21 = v35;
        v21 += 40;
        v22 += 32;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    memset(v76, 0, sizeof(v76));
    if (*(a1 + 48))
    {
      [*(a1 + 48) geometryForSublayout:v6];
      v8 = *(&v77 + 1);
      v9 = *&v77;
      v10 = *&v78;
      v7 = *(a1 + 32);
    }

    else
    {
      v10 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
    }

    v41 = *(a1 + 196) + v9;
    v42 = *(a1 + 204) + v8;
    v43 = *(a1 + 212) + v10;
    if ([v7 shouldApplySpriteTransformToSublayouts])
    {
      v44 = *(a1 + 144);
      v72 = *(a1 + 128);
      v73 = v44;
      v74 = *(a1 + 160);
      v75 = *(a1 + 176);
    }

    else
    {
      v75 = 0;
      v72 = *PXGSpriteGeometryTransformIdentity;
      v73 = *&PXGSpriteGeometryTransformIdentity[16];
      v74 = *&PXGSpriteGeometryTransformIdentity[32];
    }

    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    _spriteTransformFromSelfAndParent(&v68, v76, &v72, *(a1 + 220));
    v45 = *(a1 + 96);
    v46 = *(a1 + 104);
    v47 = *(a1 + 112);
    v48 = *(a1 + 120);
    v83.origin.x = v45;
    v83.origin.y = v46;
    v83.size.width = v47;
    v83.size.height = v48;
    v49 = CGRectIsInfinite(v83);
    v50 = v45 - *&v77;
    v51 = v46 - *(&v77 + 1);
    if (v49)
    {
      v52 = v45;
    }

    else
    {
      v52 = v45 - *&v77;
    }

    if (v49)
    {
      v51 = v46;
    }

    v53 = *(a1 + 220);
    LODWORD(v50) = *(a1 + 192);
    v54 = *(*(*(a1 + 56) + 8) + 24);
    v55 = *(a1 + 64) + 4 * v54;
    v56 = *(a1 + 72) + 32 * v54;
    v57 = *(a1 + 80) + 160 * v54;
    v58 = *(a1 + 88) + 40 * v54;
    v66[0] = v68;
    v66[1] = v69;
    v66[2] = v70;
    v67 = v71;
    [v6 copyLayoutForSpritesInRange:a2 applySpriteTransforms:v53 parentTransform:v66 parentAlpha:v55 parentClippingRect:v56 parentSublayoutOrigin:v57 entities:v50 geometries:v52 styles:v51 infos:{v47, v48, v41, v42, v43, v58}];
  }

  *(*(*(a1 + 56) + 8) + 24) += v5;
}

- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)range applySpriteTransforms:(BOOL)transforms entities:(id *)entities geometries:(id *)geometries styles:(id *)styles infos:(id *)infos
{
  v9 = 0;
  v8[0] = *PXGSpriteGeometryTransformIdentity;
  v8[1] = *&PXGSpriteGeometryTransformIdentity[16];
  v8[2] = *&PXGSpriteGeometryTransformIdentity[32];
  [(PXGLayout *)self copyLayoutForSpritesInRange:range applySpriteTransforms:transforms parentTransform:v8 parentAlpha:entities parentClippingRect:geometries parentSublayoutOrigin:styles entities:COERCE_DOUBLE(__PAIR64__(*&PXGSpriteGeometryTransformIdentity[36] geometries:1.0)) styles:*MEMORY[0x277CBF390] infos:*(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24), 0.0, 0.0, 0.0, infos];
}

- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)range toSpriteDataStore:(id)store
{
  length = range.length;
  storeCopy = store;
  [storeCopy setCount:length];
  entities = [storeCopy entities];
  geometries = [storeCopy geometries];
  styles = [storeCopy styles];
  infos = [storeCopy infos];

  [(PXGLayout *)self copyLayoutForSpritesInRange:range entities:entities geometries:geometries styles:styles infos:infos];
}

- (void)copySpritesToDataStore:(id)store
{
  storeCopy = store;
  [(PXGLayout *)self copyLayoutForSpritesInRange:[(PXGLayout *)self numberOfSprites]<< 32 toSpriteDataStore:storeCopy];
}

- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)infoForSpriteAtIndex:(SEL)index
{
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  v6 = spriteDataStore;
  v7 = [spriteDataStore infos] + 40 * a4;
  v8 = *(v7 + 16);
  *&retstr->var0 = *v7;
  *&retstr->var4 = v8;
  retstr[1].var3 = *(v7 + 32);

  return result;
}

- ($105A79951CE75EB7BB90BCA93995B378)styleForSpriteAtIndex:(SEL)index
{
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  v6 = spriteDataStore;
  v7 = ([spriteDataStore styles] + 160 * a4);
  v8 = v7[7];
  *(&retstr[2].var1 + 4) = v7[6];
  *&retstr[2].var3 = v8;
  v9 = v7[9];
  *&retstr[2].var8 = v7[8];
  *(&retstr[3].var1 + 8) = v9;
  v10 = v7[3];
  *&retstr->var5 = v7[2];
  retstr[1].var1 = v10;
  v11 = v7[5];
  *&retstr[1].var2 = v7[4];
  *&retstr[1].var6 = v11;
  v12 = v7[1];
  *&retstr->var0 = *v7;
  *(&retstr->var1 + 12) = v12;

  return result;
}

- ($C4327F77E24267CF92932F349E1559A2)geometryForSpriteAtIndex:(unsigned int)index
{
  v5 = v3;
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  v6 = spriteDataStore;
  v7 = ([spriteDataStore geometries] + 32 * index);
  v8 = v7[1];
  *v5 = *v7;
  v5[1] = v8;

  result.var0.var2 = v11;
  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- ($738B17BD11CC339B30296C0EA03CEC2B)entityForSpriteAtIndex:(unsigned int)index
{
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  v5.var0 = *([spriteDataStore entities] + 4 * index);

  return v5;
}

- (void)setLastBaseline:(double)baseline
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_lastBaseline = baseline;
    superlayout = [(PXGLayout *)self superlayout];
    [superlayout sublayoutDidChangeLastBaseline:self];
  }
}

- (void)setContentSize:(CGSize)size
{
  self->_estimatedContentSize = size;
  if (size.width != self->_contentSize.width || size.height != self->_contentSize.height)
  {
    self->_contentSize = size;
    [(PXGLayout *)self contentSizeDidChange];
    superlayout = [(PXGLayout *)self superlayout];
    [superlayout sublayoutDidChangeContentSize:self];
  }
}

- (void)_addFences:(id)fences
{
  fencesCopy = fences;
  if ([fencesCopy count])
  {
    fences = self->_fences;
    if (!fences)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_fences;
      self->_fences = v5;

      fences = self->_fences;
    }

    [(NSMutableArray *)fences addObjectsFromArray:fencesCopy];
    [(PXGLayout *)self _setNeedsUpdateExternally:0];
  }
}

- (void)addFence:(id)fence
{
  fenceCopy = fence;
  fences = self->_fences;
  v8 = fenceCopy;
  if (!fences)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fences;
    self->_fences = v6;

    fenceCopy = v8;
    fences = self->_fences;
  }

  [(NSMutableArray *)fences addObject:fenceCopy];
  [(PXGLayout *)self _setNeedsUpdateExternally:0];
}

- (void)addTransition:(id)transition
{
  transitionCopy = transition;
  transitions = self->_transitions;
  v8 = transitionCopy;
  if (!transitions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_transitions;
    self->_transitions = v6;

    transitionCopy = v8;
    transitions = self->_transitions;
  }

  [(NSMutableArray *)transitions addObject:transitionCopy];
  [(PXGLayout *)self _setNeedsUpdateExternally:0];
}

- (void)_addAnimations:(id)animations
{
  animationsCopy = animations;
  if ([animationsCopy count])
  {
    animations = self->_animations;
    if (!animations)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_animations;
      self->_animations = v5;

      animations = self->_animations;
    }

    [(NSMutableArray *)animations addObjectsFromArray:animationsCopy];
    [(PXGLayout *)self _setNeedsUpdateExternally:0];
  }
}

- (void)removeAnimation:(id)animation
{
  [(NSMutableArray *)self->_animations removeObject:animation];

  [(PXGLayout *)self _setNeedsUpdateExternally:0];
}

- (void)addAnimation:(id)animation
{
  animationCopy = animation;
  animations = self->_animations;
  v8 = animationCopy;
  if (!animations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_animations;
    self->_animations = v6;

    animationCopy = v8;
    animations = self->_animations;
  }

  [(NSMutableArray *)animations addObject:animationCopy];
  [(PXGLayout *)self _setNeedsUpdateExternally:0];
}

- (void)setInteractions:(id)interactions
{
  interactionsCopy = interactions;
  interactions = self->_interactions;
  if (interactions != interactionsCopy)
  {
    v9 = interactionsCopy;
    v6 = [(NSArray *)interactions isEqual:interactionsCopy];
    interactionsCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_interactions;
      self->_interactions = v7;

      interactionsCopy = v9;
    }
  }
}

- (void)removePointReference:(id)reference
{
  referenceCopy = reference;
  pointReferences = [(PXGLayout *)self pointReferences];
  [pointReferences removeObject:referenceCopy];

  if (![pointReferences count])
  {
    pointReferences = self->_pointReferences;
    self->_pointReferences = 0;
  }
}

- (void)addPointReference:(id)reference
{
  referenceCopy = reference;
  pointReferences = [(PXGLayout *)self pointReferences];
  if (!pointReferences)
  {
    pointReferences = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    objc_storeStrong(&self->_pointReferences, pointReferences);
  }

  [pointReferences addObject:referenceCopy];
}

- (id)navigationObjectReferenceForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__14725;
  v25 = __Block_byref_object_dispose__14726;
  v26 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  [(PXGLayout *)self referenceSize];
  [(PXGLayout *)self scrollableAxis];
  PXSizeValueForAxis();
  v20[3] = v6;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__PXGLayout_navigationObjectReferenceForLocation___block_invoke;
  v19[3] = &unk_2782AABF0;
  *&v19[7] = x;
  *&v19[8] = y;
  v19[5] = v20;
  v19[6] = &v21;
  v19[4] = self;
  [sublayoutDataStore enumerateSublayoutGeometriesUsingBlock:v19];

  v8 = v22[5];
  if (!v8)
  {
    [(PXGLayout *)self visibleRect];
    PXSizeScale();
    PXRectWithCenterAndSize();
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = -1;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0x7FEFFFFFFFFFFFFFLL;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__PXGLayout_navigationObjectReferenceForLocation___block_invoke_2;
    v13[3] = &unk_2782AAAD8;
    *&v13[6] = x;
    *&v13[7] = y;
    v13[4] = v14;
    v13[5] = &v15;
    [(PXGLayout *)self enumerateSpritesInRect:v13 usingBlock:?];
    if (*(v16 + 6) != -1)
    {
      v9 = [(PXGLayout *)self objectReferenceForSpriteIndex:?];
      v10 = v22[5];
      v22[5] = v9;
    }

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(&v15, 8);
    v8 = v22[5];
  }

  v11 = v8;
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __50__PXGLayout_navigationObjectReferenceForLocation___block_invoke(uint64_t a1, uint64_t a2, CGFloat *a3, id *a4, _BYTE *a5)
{
  v26.origin.x = a3[6];
  v26.origin.y = a3[7];
  v26.size.width = a3[4];
  v26.size.height = a3[5];
  v9 = CGRectContainsPoint(v26, *(a1 + 56));
  PXRectShortestDistanceToPoint();
  v11 = v10;
  if (v9 || v10 < *(*(*(a1 + 40) + 8) + 24))
  {
    PXPointSubtract();
    v13 = v12;
    v15 = v14;
    v16 = *a4;
    v24 = v16;
    if (v16)
    {
      v17 = [v16 navigationObjectReferenceForLocation:{v13, v15}];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else
    {
      v20 = *(a1 + 32);
      v19 = a4[1];
      v21 = [v19 layout:v20 navigationObjectReferenceForSublayoutAtIndex:a2];
      v22 = *(*(a1 + 48) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }

    *(*(*(a1 + 40) + 8) + 24) = v11;
    if (v9 && *(*(*(a1 + 48) + 8) + 40))
    {
      *a5 = 1;
    }
  }
}

uint64_t __50__PXGLayout_navigationObjectReferenceForLocation___block_invoke_2(uint64_t a1, int a2)
{
  result = PXRectShortestDistanceToPoint();
  if (v5 < *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  return result;
}

- (id)dropTargetObjectReferenceForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14725;
  v14 = __Block_byref_object_dispose__14726;
  v15 = 0;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PXGLayout_dropTargetObjectReferenceForLocation___block_invoke;
  v9[3] = &unk_2782AABC8;
  *&v9[6] = x;
  *&v9[7] = y;
  v9[4] = self;
  v9[5] = &v10;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __50__PXGLayout_dropTargetObjectReferenceForLocation___block_invoke(double *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 4);
  v7 = a1[6];
  v8 = a1[7];
  v9 = a3;
  [v9 convertPoint:v6 fromLayout:{v7, v8}];
  v10 = [v9 dropTargetObjectReferenceForLocation:?];

  v11 = *(*(a1 + 5) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 5) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  v21 = 0;
  v8 = [(PXGLayout *)self sublayoutIndexForObjectReference:reference options:options updatedObjectReference:&v21];
  v9 = v21;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = -1;
  }

  else
  {
    v11 = [(PXGLayout *)self sublayoutAtIndex:v8 loadIfNeeded:0];
    v12 = v11;
    if (v11)
    {
      v20 = 0;
      v13 = [v11 spriteIndexForObjectReference:v9 options:options updatedObjectReference:&v20];
      v14 = v20;

      v15 = v12;
      v9 = v14;
      if (v13 != -1 && [v15 numberOfSprites] <= v13)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXValidateLayoutSpriteIndexForObjectReference(PXGLayout * _Nonnull __strong, PXGSpriteIndex, id  _Nonnull __strong)"}];
        [currentHandler handleFailureInFunction:v19 file:@"PXGLayout_Internal.h" lineNumber:227 description:{@"%@ returned invalid spriteIndex %li for objectReference %@", v15, v13, v9}];
      }

      v10 = [(PXGLayout *)self convertSpriteIndex:v13 fromDescendantLayout:v15];
    }

    else
    {
      v10 = -1;
    }
  }

  v16 = v9;
  *objectReference = v9;

  return v10;
}

- (id)objectReferenceForSpriteIndex:(unsigned int)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14725;
  v10 = __Block_byref_object_dispose__14726;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PXGLayout_objectReferenceForSpriteIndex___block_invoke;
  v5[3] = &unk_2782AAC68;
  v5[4] = self;
  v5[5] = &v6;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:index | 0x100000000 options:0 usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__PXGLayout_objectReferenceForSpriteIndex___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a3)
  {
    v5 = [a3 objectReferenceForSpriteIndex:a2];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (int64_t)anchoredSublayoutIndex
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  activeAnchor = [(PXGLayout *)self activeAnchor];
  if (!activeAnchor)
  {
    superlayout = [(PXGLayout *)self superlayout];
    activeAnchor = [superlayout activeAnchor];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__PXGLayout_anchoredSublayoutIndex__block_invoke;
  v7[3] = &unk_2782AABA0;
  v7[4] = self;
  v7[5] = &v8;
  [activeAnchor enumerateAllSpriteReferencesUsingBlock:v7];
  v5 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v5;
}

void __35__PXGLayout_anchoredSublayoutIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) spriteIndexForSpriteReference:? options:?];
  v8 = *(a1 + 32);
  if (v7 == -1)
  {
    v9 = [v8 sublayoutIndexForSpriteReference:v10 options:a3];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = [v8 sublayoutIndexForSpriteIndex:?];
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
  *a4 = 1;
LABEL_5:
}

- (BOOL)shouldFaultInContentAtAnchoredContentEdges
{
  activeAnchor = [(PXGLayout *)self activeAnchor];
  shouldFaultInContentAtAnchoredContentEdges = [activeAnchor shouldFaultInContentAtAnchoredContentEdges];

  return shouldFaultInContentAtAnchoredContentEdges;
}

- (void)sublayout:(id)sublayout didRemoveAnchor:(id)anchor
{
  --self->_numberOfDescendantAnchors;
  anchorCopy = anchor;
  superlayout = [(PXGLayout *)self superlayout];
  [superlayout sublayout:self didRemoveAnchor:anchorCopy];
}

- (void)sublayout:(id)sublayout didAddAnchor:(id)anchor
{
  ++self->_numberOfDescendantAnchors;
  anchorCopy = anchor;
  superlayout = [(PXGLayout *)self superlayout];
  [superlayout sublayout:self didAddAnchor:anchorCopy];

  type = [anchorCopy type];
  if (type <= 5 && ((1 << type) & 0x34) != 0)
  {

    [(PXGLayout *)self clearLastVisibleAreaAnchoringInformation];
  }
}

- (void)removeAnchor:(id)anchor
{
  activeAnchor = self->_activeAnchor;
  if (activeAnchor == anchor)
  {
    self->_activeAnchor = 0;
    anchorCopy = anchor;

    [(PXGLayout *)self sublayout:self didRemoveAnchor:anchorCopy];
  }
}

- (void)addAnchor:(id)anchor
{
  anchorCopy = anchor;
  priority = [anchorCopy priority];
  if (priority >= [(PXGAnchor *)self->_activeAnchor priority])
  {
    [(PXGAnchor *)self->_activeAnchor invalidate];
    objc_storeStrong(&self->_activeAnchor, anchor);
    [(PXGLayout *)self _setNeedsUpdateExternally:0];
    [(PXGLayout *)self sublayout:self didAddAnchor:anchorCopy];
  }
}

- (BOOL)changeVisibleRectToProposedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  isRequestingVisibleRect = self->_isRequestingVisibleRect;
  self->_isRequestingVisibleRect = 1;
  [(PXGLayout *)self visibleRect];
  superlayout = [(PXGLayout *)self superlayout];
  v10 = superlayout;
  if (superlayout)
  {
    [superlayout sublayout:self visibleRectForRequestedVisibleRect:{x, y, width, height}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    visibleRectDelegate = [(PXGLayout *)self visibleRectDelegate];
    v20 = visibleRectDelegate;
    if (visibleRectDelegate)
    {
      [visibleRectDelegate layout:self visibleRectForRequestedVisibleRect:{x, y, width, height}];
      v12 = v21;
      v14 = v22;
      v16 = v23;
      v18 = v24;
    }

    else
    {
      v18 = height;
      v16 = width;
      v14 = y;
      v12 = x;
    }

    [(PXGLayout *)self visibleRect];
    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v16;
    v30.size.height = v18;
    if (!CGRectEqualToRect(v29, v30))
    {
      [(PXGLayout *)self visibleRect];
      kdebug_trace();
    }
  }

  [(PXGLayout *)self setVisibleRect:v12, v14, v16, v18];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0 && ![(PXGLayout *)self canHandleVisibleRectRejection])
  {
    v25 = PXAssertGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_21AD38000, v25, OS_LOG_TYPE_FAULT, "the current implementation doesn't handle yet cases of rejected visible rect requests, see <rdar://problem/35795663>", buf, 2u);
    }
  }

  v26 = PXRectApproximatelyEqualToRect();
  self->_isRequestingVisibleRect = isRequestingVisibleRect;

  return v26 ^ 1;
}

- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(PXGLayout *)self numberOfSublayouts]&& [(PXGLayout *)self defaultVisibleAnchoringScope]!= 1)
  {
    [(PXGLayout *)self visibleRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    PXRectGetCenter();
    v15 = v14;
    v17 = v16;
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__PXGLayout_enumerateVisibleAnchoringLayoutsUsingBlock___block_invoke;
    v25[3] = &unk_2782AAB50;
    v27 = v7;
    v28 = v9;
    v29 = v11;
    v30 = v13;
    v26 = v19;
    v31 = v15;
    v32 = v17;
    v20 = v19;
    [sublayoutDataStore enumerateSublayoutsInRect:v25 usingBlock:{v7, v9, v11, v13}];
    v21 = [v20 keysSortedByValueUsingSelector:sel_compare_];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__PXGLayout_enumerateVisibleAnchoringLayoutsUsingBlock___block_invoke_2;
    v22[3] = &unk_2782AAB78;
    v22[4] = self;
    v24 = a2;
    v23 = blockCopy;
    [v21 enumerateObjectsUsingBlock:v22];
  }

  else
  {
    v33 = 0;
    (*(blockCopy + 2))(blockCopy, self, &v33);
  }
}

void __56__PXGLayout_enumerateVisibleAnchoringLayoutsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (CGRectIntersectsRect(*&a3, *(a1 + 40)))
  {
    v8 = MEMORY[0x277CCABB0];
    PXRectShortestDistanceToPoint();
    v11 = [v8 numberWithDouble:?];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }
}

void __56__PXGLayout_enumerateVisibleAnchoringLayoutsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) sublayoutAtIndex:objc_msgSend(a2 loadIfNeeded:{"integerValue"), 0}];
  if (!v4)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PXGLayout.m" lineNumber:1812 description:{@"Invalid parameter not satisfying: %@", @"sublayout != nil"}];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__PXGLayout_enumerateVisibleAnchoringSpriteIndexesUsingBlock___block_invoke;
  v6[3] = &unk_2782AAB28;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PXGLayout *)self enumerateVisibleAnchoringLayoutsUsingBlock:v6];
}

void __62__PXGLayout_enumerateVisibleAnchoringSpriteIndexesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == v3)
  {
    [v4 visibleRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    PXRectGetCenter();
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0x7FEFFFFFFFFFFFFFLL;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = -1;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__PXGLayout_enumerateVisibleAnchoringSpriteIndexesUsingBlock___block_invoke_2;
    v20[3] = &unk_2782AAAD8;
    v20[6] = v13;
    v20[7] = v14;
    v20[4] = v25;
    v20[5] = &v21;
    v15 = MEMORY[0x21CEE40A0](v20);
    v16 = [*(a1 + 32) defaultVisibleAnchoringScope];
    if (v16)
    {
      if (v16 == 1)
      {
        [*(a1 + 32) enumerateLocalSpritesInRect:v15 usingBlock:{v6, v8, v10, v12}];
      }
    }

    else
    {
      [*(a1 + 32) enumerateSpritesInRect:v15 usingBlock:{v6, v8, v10, v12}];
    }

    if (*(v22 + 6) != -1)
    {
      (*(*(a1 + 40) + 16))();
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(v25, 8);
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__PXGLayout_enumerateVisibleAnchoringSpriteIndexesUsingBlock___block_invoke_3;
    v17[3] = &unk_2782AAB00;
    v17[4] = v4;
    v18 = v3;
    v19 = *(a1 + 40);
    [v18 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v17];
  }
}

uint64_t __62__PXGLayout_enumerateVisibleAnchoringSpriteIndexesUsingBlock___block_invoke_2(uint64_t a1, int a2)
{
  PXRectWithCenterAndSize();
  PXRectGetCenter();
  result = PXDistanceBetweenPoints();
  v6 = *(*(a1 + 32) + 8);
  if (v5 < *(v6 + 24))
  {
    *(v6 + 24) = v5;
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return result;
}

uint64_t __62__PXGLayout_enumerateVisibleAnchoringSpriteIndexesUsingBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) convertSpriteIndex:a2 fromDescendantLayout:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)details appliedToLayout:(id)layout
{
  v27 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  layoutCopy = layout;
  if (self->_spriteIndexesWithInvalidatedStyle)
  {
    v8 = [detailsCopy indexSetAfterApplyingChangesToIndexSet:?];
    spriteIndexesWithInvalidatedStyle = self->_spriteIndexesWithInvalidatedStyle;
    self->_spriteIndexesWithInvalidatedStyle = v8;
  }

  if (self->_localHiddenSpriteIndexes)
  {
    v10 = [detailsCopy indexSetAfterApplyingChangesToIndexSet:?];
    [(PXGLayout *)self setLocalHiddenSpriteIndexes:v10];

    [(PXGLayout *)self _invalidateStyleOfSpritesWithIndexes:self->_localHiddenSpriteIndexes];
  }

  superlayout = [(PXGLayout *)self superlayout];
  if (superlayout)
  {
  }

  else if ([(NSMutableArray *)self->_spriteReferencesForHiddenSprites count])
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = self->_spriteReferencesForHiddenSprites;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          [v18 adjustReferencedSpriteIndexesWithChangeDetails:detailsCopy appliedToLayout:{layoutCopy, v22}];
          v19 = [(PXGLayout *)self spriteIndexForSpriteReference:v18 options:1024];
          if (v19 != -1)
          {
            [v12 addIndex:v19];
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    isPropagatingAdjustedReferencedHiddenSpriteIndexes = self->_isPropagatingAdjustedReferencedHiddenSpriteIndexes;
    self->_isPropagatingAdjustedReferencedHiddenSpriteIndexes = 1;
    [(PXGLayout *)self _propagateHiddenSpriteIndexes:v12];
    self->_isPropagatingAdjustedReferencedHiddenSpriteIndexes = isPropagatingAdjustedReferencedHiddenSpriteIndexes;
  }

  activeAnchor = [(PXGLayout *)self activeAnchor];
  [activeAnchor adjustReferencedSpriteIndexesWithChangeDetails:detailsCopy appliedToLayout:layoutCopy];
}

- (id)convertChangeDetails:(id)details fromSublayout:(id)sublayout
{
  detailsCopy = details;
  v8 = detailsCopy;
  if (sublayout == self)
  {
    v13 = detailsCopy;
  }

  else
  {
    sublayoutCopy = sublayout;
    if (([v8 hasIncrementalChanges] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1709 description:{@"Invalid parameter not satisfying: %@", @"changeDetails.hasIncrementalChanges"}];
    }

    spriteDataStore = [(PXGLayout *)self spriteDataStore];
    v11 = [spriteDataStore count];

    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    LODWORD(spriteDataStore) = [sublayoutDataStore spriteIndexOriginForSublayout:sublayoutCopy];

    v13 = [v8 changeDetailsShiftedBy:spriteDataStore + v11];
  }

  v14 = v13;

  return v14;
}

- (_PXGSpriteIndexRange)convertRange:(_PXGSpriteIndexRange)range fromSublayout:(id)sublayout
{
  location = range.location;
  if (sublayout != self)
  {
    sublayoutCopy = sublayout;
    spriteDataStore = [(PXGLayout *)self spriteDataStore];
    v9 = [spriteDataStore count];

    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    LODWORD(spriteDataStore) = [sublayoutDataStore spriteIndexOriginForSublayout:sublayoutCopy];

    location = range.location + v9 + spriteDataStore;
  }

  return (*&range & 0xFFFFFFFF00000000 | location);
}

- (void)sublayout:(id)sublayout didApplySpriteChangeDetails:(id)details fromDescendentSublayout:(id)descendentSublayout
{
  sublayoutCopy = sublayout;
  detailsCopy = details;
  descendentSublayoutCopy = descendentSublayout;
  if (sublayoutCopy == self)
  {
    [(PXGLayout *)self didApplySpriteChangeDetails:detailsCopy];
  }

  if ([detailsCopy hasAnyChanges])
  {
    if ([detailsCopy hasAnyInsertionsRemovalsOrMoves])
    {
      [(PXGLayout *)self invalidateVersion];
    }

    if (([detailsCopy hasIncrementalChanges] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1659 description:{@"%@ didn't recieve incremental change details:%@", self, detailsCopy}];
    }

    if (sublayoutCopy != self)
    {
      insertedIndexes = [detailsCopy insertedIndexes];
      v12 = [insertedIndexes count];
      removedIndexes = [detailsCopy removedIndexes];
      v14 = v12 - [removedIndexes count];

      [(PXGLayout *)self _incrementNumberOfSprites:v14];
    }

    v15 = [(PXGLayout *)self convertChangeDetails:detailsCopy fromSublayout:sublayoutCopy];
    [(PXGLayout *)self adjustReferencedSpriteIndexesWithChangeDetails:v15 appliedToLayout:self];
    superlayout = [(PXGLayout *)self superlayout];
    v17 = superlayout;
    if (superlayout)
    {
      [superlayout sublayout:self didApplySpriteChangeDetails:v15 fromDescendentSublayout:descendentSublayoutCopy];
    }

    else
    {
      changeDetails = [(PXGLayout *)self changeDetails];
      lastObject = [changeDetails lastObject];
      if ([lastObject canPreserveIncrementalChangesWhenAddingChangeDetails:v15])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [lastObject addChangeDetails:v15];
        }

        else
        {
          v20 = [lastObject mutableCopy];
          [changeDetails removeLastObject];
          [changeDetails addObject:v20];
          [v20 addChangeDetails:v15];
        }
      }

      else
      {
        [changeDetails addObject:v15];
      }

      [(PXGLayout *)self _setNeedsUpdateExternally:0];
    }
  }
}

- (void)didApplySpriteChangeDetails:(id)details
{
  detailsCopy = details;
  axGroup = [(PXGLayout *)self axGroup];
  [axGroup updateLeafsWithChangeDetails:detailsCopy];
}

- (unsigned)addResizableCapInsets:(id)insets
{
  var3 = insets.var3;
  var2 = insets.var2;
  var1 = insets.var1;
  var0 = insets.var0;
  spriteMetadataStore = [(PXGLayout *)self spriteMetadataStore];
  *&v8 = var0;
  *&v9 = var1;
  *&v10 = var2;
  *&v11 = var3;
  v12 = [spriteMetadataStore addResizableCapInsets:{v8, v9, v10, v11}];

  return v12;
}

- (void)applySpriteChangeDetails:(id)details countAfterChanges:(unsigned int)changes initialState:(id)state modifyFullState:(id)fullState
{
  v8 = *&changes;
  detailsCopy = details;
  stateCopy = state;
  fullStateCopy = fullState;
  [(PXGLayout *)self _ensureSpriteDataStore];
  spriteModifier = [(PXGLayout *)self spriteModifier];
  v53 = fullStateCopy;
  if (spriteModifier)
  {
    [(PXGLayout *)self _ensureModifiedSpriteDataStore];
  }

  else
  {
    modifiedSpriteDataStore = [(PXGLayout *)self modifiedSpriteDataStore];

    if (modifiedSpriteDataStore)
    {
      [(PXGLayout *)self _destroyModifiedSpriteDataStore];
    }
  }

  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  modifiedSpriteDataStore2 = [(PXGLayout *)self modifiedSpriteDataStore];
  localNumberOfSprites = [(PXGLayout *)self localNumberOfSprites];
  v54 = spriteModifier;
  v50 = localNumberOfSprites;
  v51 = v8;
  if ([detailsCopy hasIncrementalChanges])
  {
    v18 = v8;
    localNumberOfSprites = localNumberOfSprites;
  }

  else
  {
    v19 = spriteDataStore;
    v20 = modifiedSpriteDataStore2;
    v21 = stateCopy;
    v22 = objc_alloc(MEMORY[0x277D3CCC8]);
    localNumberOfSprites = localNumberOfSprites;
    v23 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, localNumberOfSprites}];
    v18 = v8;
    v24 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v8}];
    v25 = [v22 initWithIncrementalChangeDetailsRemovedIndexes:v23 insertedIndexes:v24 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

    detailsCopy = v25;
    stateCopy = v21;
    modifiedSpriteDataStore2 = v20;
    spriteDataStore = v19;
  }

  insertedIndexes = [detailsCopy insertedIndexes];
  v27 = [insertedIndexes count] + localNumberOfSprites;
  removedIndexes = [detailsCopy removedIndexes];
  v29 = v27 - [removedIndexes count];

  if (v29 != v18)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1566 description:{@"countBeforeChanges(%d) + spriteChangeDetails(%@) does not match countAfterChanges(%d)", v50, detailsCopy, v51}];
  }

  removedIndexes2 = [detailsCopy removedIndexes];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke;
  v74[3] = &unk_2782AB638;
  v74[4] = self;
  v31 = spriteDataStore;
  v75 = v31;
  v32 = modifiedSpriteDataStore2;
  v76 = v32;
  [removedIndexes2 enumerateRangesWithOptions:2 usingBlock:v74];

  insertedIndexes2 = [detailsCopy insertedIndexes];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_2;
  v69[3] = &unk_2782AAA88;
  v34 = v31;
  v70 = v34;
  v35 = v32;
  v71 = v35;
  selfCopy = self;
  v36 = stateCopy;
  v73 = v36;
  [insertedIndexes2 enumerateRangesWithOptions:0 usingBlock:v69];

  if ([detailsCopy hasMoves])
  {
    movesFromIndexes = [detailsCopy movesFromIndexes];
    movesToIndexes = [detailsCopy movesToIndexes];
    [v34 moveSpritesFromIndexes:movesFromIndexes toIndexes:movesToIndexes];

    movesFromIndexes2 = [detailsCopy movesFromIndexes];
    movesToIndexes2 = [detailsCopy movesToIndexes];
    [v35 moveSpritesFromIndexes:movesFromIndexes2 toIndexes:movesToIndexes2];
  }

  if (v53)
  {
    changedIndexes = [detailsCopy changedIndexes];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_3;
    v63[3] = &unk_2782AAAB0;
    v68 = a2;
    v64 = v34;
    selfCopy2 = self;
    v67 = v53;
    v66 = v35;
    [changedIndexes enumerateRangesUsingBlock:v63];
  }

  v42 = v54;
  if (v54)
  {
    insertedIndexes3 = [detailsCopy insertedIndexes];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_4;
    v59[3] = &unk_2782AB638;
    v44 = v54;
    v60 = v44;
    v45 = v35;
    v61 = v45;
    selfCopy3 = self;
    [insertedIndexes3 enumerateRangesUsingBlock:v59];

    changedIndexes2 = [detailsCopy changedIndexes];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_5;
    v55[3] = &unk_2782AB638;
    v47 = v44;
    v42 = v54;
    v56 = v47;
    v57 = v45;
    selfCopy4 = self;
    [changedIndexes2 enumerateRangesUsingBlock:v55];
  }

  [(PXGLayout *)self sublayout:self didApplySpriteChangeDetails:detailsCopy fromDescendentSublayout:self];
  axGroup = [(PXGLayout *)self axGroup];
  [axGroup invalidateLeafs];
}

uint64_t __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1[4] entityManager];
  [v6 destroyEntities:objc_msgSend(a1[5] count:{"entities") + 4 * a2, a3}];

  v7 = a2 | (a3 << 32);
  [a1[5] removeSpritesInRange:v7];
  [a1[6] removeSpritesInRange:v7];
  v8 = a1[4];

  return [v8 _incrementNumberOfSprites:-a3];
}

uint64_t __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_2(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a3;
  v6 = a3;
  v7 = a2;
  v8 = a2 | (a3 << 32);
  [*(a1 + 32) insertSpritesInRange:v8];
  [*(a1 + 40) insertSpritesInRange:v8];
  [*(a1 + 48) _incrementNumberOfSprites:v6];
  if (a2 + v3 > a2)
  {
    v9 = 40 * v7;
    do
    {
      v10 = [*(a1 + 32) infos] + v9;
      *v10 = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0;
      v9 += 40;
      --v3;
    }

    while (v3);
  }

  v11 = [*(a1 + 32) entities] + 4 * v7;
  v12 = [*(a1 + 48) entityManager];
  [v12 createEntitiesWithCount:v6 addingToArray:v11];

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      [v14 spritesInRange:v8];
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }

    (*(v13 + 16))(v13, v8, &v16);
  }

  return [*(a1 + 40) copySpritesInRange:v8 fromSpriteDataStore:{*(a1 + 32), v16, v17, v18}];
}

uint64_t __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_3(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a2 | (a3 << 32);
  if (a2 + a3 > [*(a1 + 32) count])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"PXGLayout.m" lineNumber:1611 description:{@"Invalid parameter not satisfying: %@", @"PXGSpriteIndexRangeMax(range) <= spriteDataStore.count"}];
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 spritesInRange:v4];
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  (*(v5 + 16))(v5, v4, v9);
  return [*(a1 + 48) copySpritesInRange:v4 fromSpriteDataStore:*(a1 + 32)];
}

- (void)applySpriteChangeDetails:(id)details countAfterChanges:(unsigned int)changes initialState:(id)state modifyState:(id)modifyState
{
  v7 = *&changes;
  modifyStateCopy = modifyState;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyState___block_invoke;
  v12[3] = &unk_2782AAA60;
  v13 = modifyStateCopy;
  v11 = modifyStateCopy;
  [(PXGLayout *)self applySpriteChangeDetails:details countAfterChanges:v7 initialState:state modifyFullState:v12];
}

uint64_t __81__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyState___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3[2], a3[3], a3[4]);
  }

  return result;
}

- (void)modifySpritesAtIndexes:(id)indexes fullState:(id)state
{
  v6 = MEMORY[0x277D3CCC8];
  stateCopy = state;
  indexesCopy = indexes;
  v9 = [[v6 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:indexesCopy];

  [(PXGLayout *)self applySpriteChangeDetails:v9 countAfterChanges:[(PXGLayout *)self localNumberOfSprites] initialState:0 modifyFullState:stateCopy];
}

- (void)modifySpritesAtIndexes:(id)indexes state:(id)state
{
  stateCopy = state;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PXGLayout_modifySpritesAtIndexes_state___block_invoke;
  v8[3] = &unk_2782AAA60;
  v9 = stateCopy;
  v7 = stateCopy;
  [(PXGLayout *)self modifySpritesAtIndexes:indexes fullState:v8];
}

- (void)modifySpritesInRange:(_PXGSpriteIndexRange)range fullState:(id)state
{
  length = range.length;
  if (range.length)
  {
    v6 = MEMORY[0x277D3CCC8];
    location = range.location;
    stateCopy = state;
    v9 = [v6 changeDetailsWithChangedIndexRange:{location, length}];
    [(PXGLayout *)self applySpriteChangeDetails:v9 countAfterChanges:[(PXGLayout *)self localNumberOfSprites] initialState:0 modifyFullState:stateCopy];
  }
}

- (void)modifySpritesInRange:(_PXGSpriteIndexRange)range state:(id)state
{
  stateCopy = state;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PXGLayout_modifySpritesInRange_state___block_invoke;
  v8[3] = &unk_2782AAA38;
  v9 = stateCopy;
  rangeCopy = range;
  v7 = stateCopy;
  [(PXGLayout *)self modifySpritesInRange:range fullState:v8];
}

- (void)modifySpritesInRect:(CGRect)rect state:(id)state
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stateCopy = state;
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  v10 = [spriteDataStore spriteIndexesInRect:{x, y, width, height}];

  if ([v10 count])
  {
    v11 = [MEMORY[0x277D3CCC8] changeDetailsWithChangedIndexes:v10];
    [(PXGLayout *)self applySpriteChangeDetails:v11 countAfterChanges:[(PXGLayout *)self numberOfSprites] initialState:0 modifyState:stateCopy];
  }
}

- (void)moveSpritesInRange:(_PXGSpriteIndexRange)range toRange:(_PXGSpriteIndexRange)toRange
{
  if (range.length)
  {
    v6 = [MEMORY[0x277D3CCC8] changeDetailsWithMovedFromIndexRange:range.location toIndexRange:{range.length, toRange.location, toRange.length}];
    [(PXGLayout *)self applySpriteChangeDetails:v6 countAfterChanges:[(PXGLayout *)self localNumberOfSprites] initialState:0 modifyState:0];
  }
}

- (void)removeSpritesAtIndexes:(id)indexes
{
  v4 = MEMORY[0x277D3CCC8];
  indexesCopy = indexes;
  v7 = [[v4 alloc] initWithIncrementalChangeDetailsRemovedIndexes:indexesCopy insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  LODWORD(v4) = [(PXGLayout *)self localNumberOfSprites];
  v6 = [indexesCopy count];

  [(PXGLayout *)self applySpriteChangeDetails:v7 countAfterChanges:(v4 - v6) initialState:0 modifyState:0];
}

- (void)removeSpritesInRange:(_PXGSpriteIndexRange)range
{
  length = range.length;
  if (range.length)
  {
    v5 = [MEMORY[0x277D3CCC8] changeDetailsWithRemovedIndexRange:{range.location, range.length}];
    [(PXGLayout *)self applySpriteChangeDetails:v5 countAfterChanges:[(PXGLayout *)self localNumberOfSprites]- length initialState:0 modifyState:0];
  }
}

- (void)addSpritesAtIndexes:(id)indexes initialState:(id)state
{
  v6 = MEMORY[0x277D3CCC8];
  stateCopy = state;
  indexesCopy = indexes;
  v10 = [[v6 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:indexesCopy movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  LODWORD(v6) = [(PXGLayout *)self localNumberOfSprites];
  v9 = [indexesCopy count];

  [(PXGLayout *)self applySpriteChangeDetails:v10 countAfterChanges:(v6 + v9) initialState:stateCopy modifyState:0];
}

- (void)addSpritesInRange:(_PXGSpriteIndexRange)range initialState:(id)state
{
  length = range.length;
  if (range.length)
  {
    v6 = MEMORY[0x277D3CCC8];
    location = range.location;
    stateCopy = state;
    v9 = [v6 changeDetailsWithInsertedIndexRange:{location, length}];
    [(PXGLayout *)self applySpriteChangeDetails:v9 countAfterChanges:[(PXGLayout *)self localNumberOfSprites]+ length initialState:stateCopy modifyState:0];
  }
}

- (_PXGSpriteIndexRange)addSpriteCount:(unsigned int)count withInitialState:(id)state
{
  v4 = *&count;
  stateCopy = state;
  v7 = ([(PXGLayout *)self localNumberOfSprites]| (v4 << 32));
  [(PXGLayout *)self addSpritesInRange:v7 initialState:stateCopy];

  return v7;
}

- (void)performRepeatedSublayoutsUpdate:(id)update
{
  ++self->_numberOfRepeatedSublayoutUpdatesInUpdatePass;
  updateCopy = update;
  kdebug_trace();
  updateCopy[2](updateCopy);

  kdebug_trace();
}

- (void)didChangeSublayoutOrigins
{
  superlayout = [(PXGLayout *)self superlayout];
  [superlayout didChangeSublayoutOrigins];
}

- (id)sublayoutAtIndex:(int64_t)index loadIfNeeded:(BOOL)needed
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14725;
  v16 = __Block_byref_object_dispose__14726;
  v17 = 0;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__PXGLayout_sublayoutAtIndex_loadIfNeeded___block_invoke;
  v10[3] = &unk_2782AAA10;
  neededCopy = needed;
  v10[4] = self;
  v10[5] = &v12;
  [sublayoutDataStore enumerateSublayoutGeometriesInRange:index options:1 usingBlock:{0, v10}];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __43__PXGLayout_sublayoutAtIndex_loadIfNeeded___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a4;
  if (*a4)
  {
    v7 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v7, v6);
  }

  else if (*(a1 + 48) == 1)
  {
    v10 = *(a1 + 32);
    v11 = a4[1];
    v12 = [v11 layout:v10 createSublayoutAtIndex:a2];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(*(a1 + 40) + 8) + 40);
    if (v15)
    {
      v16 = v15;
      if (*a4 != v16)
      {

        *a4 = v16;
      }

      v17 = *(a3 + 32);
      v18 = *(a3 + 40);
      if (PXSizeIsNull())
      {
        [*(*(*(a1 + 40) + 8) + 40) contentSize];
        v17 = v19;
        v18 = v20;
      }

      v21 = *(a1 + 32);
      v22 = *(*(*(a1 + 40) + 8) + 40);

      [v21 didFaultInSublayout:v22 atIndex:a2 fromEstimatedContentSize:{v17, v18}];
    }
  }
}

- (void)insertSublayoutProvider:(id)provider atIndexes:(id)indexes
{
  providerCopy = provider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__PXGLayout_insertSublayoutProvider_atIndexes___block_invoke;
  v8[3] = &unk_2782AA9E8;
  v8[4] = self;
  v9 = providerCopy;
  v7 = providerCopy;
  [indexes enumerateRangesUsingBlock:v8];
}

- (void)insertSublayoutProvider:(id)provider inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  providerCopy = provider;
  [(PXGLayout *)self invalidateVersion];
  [(PXGLayout *)self _ensureSublayoutDataStore];
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  [sublayoutDataStore insertSublayoutProvider:providerCopy inRange:{location, length}];
}

- (void)willRemoveSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags
{
  v24 = *MEMORY[0x277D85DE8];
  sublayoutCopy = sublayout;
  superlayout = [sublayoutCopy superlayout];

  if (superlayout != self)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    superlayout2 = [sublayoutCopy superlayout];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1324 description:{@"unexpected superlayout of removed sublayout (sublayout=%@, superlayout=%@, self=%@)", sublayoutCopy, superlayout2, self}];
  }

  [sublayoutCopy _recursivelyResetHiddenSpriteIndexes];
  [sublayoutCopy setSuperlayout:0];
  [sublayoutCopy setAxNextResponder:0];
  [sublayoutCopy setEntityManager:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  interactions = [sublayoutCopy interactions];
  v12 = [interactions countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(interactions);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        [v16 setScrollViewController:0];
        [v16 setView:0];
      }

      v13 = [interactions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  self->_numberOfDescendantAnchors -= [sublayoutCopy numberOfDescendantAnchors];
  [(NSMutableSet *)self->_sublayoutsExpectedToBeUpdatedInUpdatePass removeObject:sublayoutCopy];
  [(PXGLayout *)self axRemoveSubgroupForSublayout:sublayoutCopy atIndex:index flags:flags];
}

- (void)didAddSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags
{
  sublayoutCopy = sublayout;
  [sublayoutCopy[4] removeAllObjects];
  if ([sublayoutCopy needsUpdate])
  {
    [(PXGLayout *)self sublayoutNeedsUpdate:sublayoutCopy];
  }

  self->_numberOfDescendantAnchors += [sublayoutCopy numberOfDescendantAnchors];
  rootLayout = [(PXGLayout *)self rootLayout];
  animations = [sublayoutCopy animations];
  [rootLayout _addAnimations:animations];

  [sublayoutCopy removeAllAnimations];
  rootLayout2 = [(PXGLayout *)self rootLayout];
  fences = [sublayoutCopy fences];
  [rootLayout2 _addFences:fences];

  [sublayoutCopy removeAllFences];
  viewEnvironment = [(PXGLayout *)self viewEnvironment];
  [sublayoutCopy setViewEnvironment:viewEnvironment];

  [(PXGLayout *)self axAddSubgroupForSublayout:sublayoutCopy atIndex:index flags:flags];
}

- (void)_willAddSublayout:(id)sublayout
{
  sublayoutCopy = sublayout;
  [sublayoutCopy setSuperlayout:self];
  layoutQueue = [(PXGLayout *)self layoutQueue];
  [sublayoutCopy setLayoutQueue:layoutQueue];

  [sublayoutCopy setAxNextResponder:self];
  mediaProvider = [(PXGLayout *)self mediaProvider];
  [sublayoutCopy setMediaProvider:mediaProvider];

  entityManager = [(PXGLayout *)self entityManager];
  [sublayoutCopy setEntityManager:entityManager];
}

- (void)willFaultOutSublayout:(id)sublayout atIndex:(int64_t)index
{
  v6 = MEMORY[0x277D3CCC8];
  sublayoutCopy = sublayout;
  v7 = [v6 changeDetailsWithRemovedIndexRange:{0, objc_msgSend(sublayoutCopy, "numberOfSprites")}];
  [(PXGLayout *)self sublayout:sublayoutCopy didApplySpriteChangeDetails:v7 fromDescendentSublayout:sublayoutCopy];

  [(PXGLayout *)self willRemoveSublayout:sublayoutCopy atIndex:index flags:1];
}

- (void)didFaultInSublayout:(id)sublayout atIndex:(int64_t)index fromEstimatedContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  sublayoutCopy = sublayout;
  [sublayoutCopy setEstimatedContentSize:{width, height}];
  [(PXGLayout *)self _willAddSublayout:sublayoutCopy];
  v9 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, objc_msgSend(sublayoutCopy, "numberOfSprites")}];
  [(PXGLayout *)self sublayout:sublayoutCopy didApplySpriteChangeDetails:v9 fromDescendentSublayout:sublayoutCopy];

  [(PXGLayout *)self didAddSublayout:sublayoutCopy atIndex:index flags:1];
}

- (void)didApplySublayoutChangeDetails:(id)details axAdjustedSubgroupChangeDetails:(id)changeDetails countAfterChanges:(int64_t)changes
{
  changeDetailsCopy = changeDetails;
  axGroup = [(PXGLayout *)self axGroup];
  [axGroup updateSubgroupsWithChangeDetails:changeDetailsCopy];
}

- (void)applySublayoutChangeDetails:(id)details countAfterChanges:(int64_t)changes sublayoutProvider:(id)provider
{
  v67 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  providerCopy = provider;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v12 = [sublayoutDataStore count];
  if ([detailsCopy hasIncrementalChanges])
  {
    insertedIndexes = [detailsCopy insertedIndexes];
    v14 = [insertedIndexes count] + v12;
    removedIndexes = [detailsCopy removedIndexes];
    v16 = v14 - [removedIndexes count];

    if (v16 != changes)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1214 description:{@"Invalid parameter not satisfying: %@", @"countBeforeChange + sublayoutChangeDetails.insertedIndexes.count - sublayoutChangeDetails.removedIndexes.count == countAfterChanges"}];
    }

    removedIndexes2 = [detailsCopy removedIndexes];
    [(PXGLayout *)self removeSublayoutsAtIndexes:removedIndexes2];

    insertedIndexes2 = [detailsCopy insertedIndexes];
    [(PXGLayout *)self insertSublayoutProvider:providerCopy atIndexes:insertedIndexes2];

    if ([detailsCopy hasMoves])
    {
      v53 = providerCopy;
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __77__PXGLayout_applySublayoutChangeDetails_countAfterChanges_sublayoutProvider___block_invoke;
      v65[3] = &unk_2782AA998;
      v65[4] = self;
      v19 = a2;
      v20 = MEMORY[0x21CEE40A0](v65);
      v21 = (v20 + 16);
      v22 = (*(v20 + 16))();
      movesFromIndexes = [detailsCopy movesFromIndexes];
      movesToIndexes = [detailsCopy movesToIndexes];
      [sublayoutDataStore moveSublayoutsFromIndexes:movesFromIndexes toIndexes:movesToIndexes];

      v54 = v20;
      v25 = v20;
      v26 = v19;
      v27 = (*v21)(v25);
      v28 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __77__PXGLayout_applySublayoutChangeDetails_countAfterChanges_sublayoutProvider___block_invoke_3;
      v59[3] = &unk_2782AA9C0;
      v59[4] = self;
      v52 = v22;
      v60 = v52;
      v51 = v27;
      v61 = v51;
      v30 = v28;
      v62 = v30;
      v64 = v26;
      v31 = v29;
      v63 = v31;
      [detailsCopy enumerateMovedIndexesUsingBlock:v59];
      v32 = [v31 count];
      v50 = v30;
      if (v32 != [v30 count])
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:v26 object:self file:@"PXGLayout.m" lineNumber:1254 description:@"Count mismatch"];
      }

      [v31 count];
      v33 = PXCreateMutableIntegerArrayRef();
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v34 = v31;
      v35 = [v34 countByEnumeratingWithState:&v55 objects:v66 count:16];
      providerCopy = v53;
      if (v35)
      {
        v36 = v35;
        v37 = *v56;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v56 != v37)
            {
              objc_enumerationMutation(v34);
            }

            CFArrayAppendValue(v33, [*(*(&v55 + 1) + 8 * i) integerValue]);
          }

          v36 = [v34 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v36);
      }

      v39 = [objc_alloc(MEMORY[0x277D3CCC8]) initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:v50 movesFromIndexes:v33 changedIndexes:0];
      CFRelease(v33);
      superlayout = [(PXGLayout *)self superlayout];
      v41 = superlayout;
      if (superlayout)
      {
        selfCopy = superlayout;
      }

      else
      {
        selfCopy = self;
      }

      v43 = selfCopy;

      [(PXGLayout *)v43 sublayout:self didApplySpriteChangeDetails:v39 fromDescendentSublayout:self];
    }

    v44 = objc_alloc(MEMORY[0x277D3CCC8]);
    insertedIndexes3 = [detailsCopy insertedIndexes];
    movesToIndexes2 = [detailsCopy movesToIndexes];
    v47 = [v44 initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:insertedIndexes3 movesToIndexes:movesToIndexes2 movesFromIndexes:objc_msgSend(detailsCopy changedIndexes:{"movesFromIndexes"), 0}];
  }

  else
  {
    [(PXGLayout *)self removeSublayoutsInRange:0, v12];
    [(PXGLayout *)self insertSublayoutProvider:providerCopy inRange:0, changes];
    v47 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, changes}];
  }

  [(PXGLayout *)self didApplySublayoutChangeDetails:detailsCopy axAdjustedSubgroupChangeDetails:v47 countAfterChanges:changes];
}

id __77__PXGLayout_applySublayoutChangeDetails_countAfterChanges_sublayoutProvider___block_invoke(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) sublayoutDataStore];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __77__PXGLayout_applySublayoutChangeDetails_countAfterChanges_sublayoutProvider___block_invoke_2;
  v10 = &unk_2782AA970;
  v4 = v2;
  v11 = v4;
  v12 = v13;
  [v3 enumerateSublayoutsUsingBlock:&v7];

  v5 = [v4 copy];
  _Block_object_dispose(v13, 8);

  return v5;
}

void __77__PXGLayout_applySublayoutChangeDetails_countAfterChanges_sublayoutProvider___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = [*(a1 + 32) sublayoutAtIndex:a3 loadIfNeeded:0];
  v6 = [v18 numberOfSprites];
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 integerValue];

  v11 = *(a1 + 48);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [v13 integerValue];

  if ([*(a1 + 56) containsIndexesInRange:{v14, v6}])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"PXGLayout.m" lineNumber:1247 description:@"Trying to move to the same indexes multiple times"];
  }

  [*(a1 + 56) addIndexesInRange:{v14, v6}];
  if (v10 < v10 + v6)
  {
    do
    {
      v15 = *(a1 + 64);
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      [v15 addObject:v16];

      ++v10;
      --v6;
    }

    while (v6);
  }
}

void __77__PXGLayout_applySublayoutChangeDetails_countAfterChanges_sublayoutProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 numberOfSprites];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v7 setObject:v6 forKeyedSubscript:v8];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

- (void)removeSublayoutsAtIndexes:(id)indexes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__PXGLayout_removeSublayoutsAtIndexes___block_invoke;
  v3[3] = &unk_2782AA948;
  v3[4] = self;
  [indexes enumerateRangesWithOptions:2 usingBlock:v3];
}

- (void)removeSublayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(PXGLayout *)self invalidateVersion];
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__PXGLayout_removeSublayoutsInRange___block_invoke;
  v7[3] = &unk_2782AA878;
  v7[4] = self;
  [sublayoutDataStore enumerateSublayoutsInRange:location options:length usingBlock:{2, v7}];
  [sublayoutDataStore removeSublayoutsInRange:{location, length}];
}

void __37__PXGLayout_removeSublayoutsInRange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277D3CCC8];
  v8 = a3;
  v7 = [v6 changeDetailsWithRemovedIndexRange:{0, objc_msgSend(v8, "numberOfSprites")}];
  [v5 sublayout:v8 didApplySpriteChangeDetails:v7 fromDescendentSublayout:v8];

  [*(a1 + 32) willRemoveSublayout:v8 atIndex:a2 flags:0];
}

- (int64_t)indexOfSublayout:(id)sublayout
{
  sublayoutCopy = sublayout;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v6 = [sublayoutDataStore indexOfSublayout:sublayoutCopy];

  return v6;
}

- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index
{
  sublayoutCopy = sublayout;
  [(PXGLayout *)self _willAddSublayout:sublayoutCopy];
  [(PXGLayout *)self _ensureSublayoutDataStore];
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  [sublayoutDataStore insertSublayout:sublayoutCopy atIndex:index];

  v7 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, objc_msgSend(sublayoutCopy, "numberOfSprites")}];
  [(PXGLayout *)self sublayout:sublayoutCopy didApplySpriteChangeDetails:v7 fromDescendentSublayout:sublayoutCopy];

  [(PXGLayout *)self didAddSublayout:sublayoutCopy atIndex:index flags:0];
}

- (int64_t)addSublayout:(id)sublayout
{
  sublayoutCopy = sublayout;
  if (sublayoutCopy == self)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1159 description:{@"Invalid parameter not satisfying: %@", @"sublayout != self"}];
  }

  numberOfSublayouts = [(PXGLayout *)self numberOfSublayouts];
  [(PXGLayout *)self insertSublayout:sublayoutCopy atIndex:numberOfSublayouts];

  return numberOfSublayouts;
}

- (void)_invalidateStyleOfSpritesWithIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = [indexesCopy count];
  v6 = indexesCopy;
  if (v5)
  {
    lastIndex = [indexesCopy lastIndex];
    if (lastIndex >= [(PXGLayout *)self localNumberOfSprites])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1132 description:{@"Invalid parameter not satisfying: %@", @"indexSet.lastIndex < self.localNumberOfSprites"}];
    }

    v8 = [indexesCopy mutableCopy];
    v9 = v8;
    if (self->_spriteIndexesWithInvalidatedStyle)
    {
      [v8 addIndexes:?];
    }

    objc_storeStrong(&self->_spriteIndexesWithInvalidatedStyle, v9);
    if ([(PXGLayout *)self isUpdatingSpriteStyling])
    {
      goto LABEL_13;
    }

    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_12:
        self->_updateFlags.needsUpdate = needsUpdate | 1;
LABEL_13:

        v6 = indexesCopy;
        goto LABEL_14;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      self->_updateFlags.needsUpdate = 1;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_13;
    }

    if (self->_updateFlags.updated)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout _invalidateStyleOfSpritesWithIndexes:]"];
      [currentHandler2 handleFailureInFunction:v14 file:@"PXGLayout.m" lineNumber:1140 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (void)setLocalHiddenSpriteIndexes:(id)indexes
{
  indexesCopy = indexes;
  localHiddenSpriteIndexes = self->_localHiddenSpriteIndexes;
  if (localHiddenSpriteIndexes != indexesCopy)
  {
    v11 = indexesCopy;
    v6 = [(NSIndexSet *)localHiddenSpriteIndexes isEqual:indexesCopy];
    indexesCopy = v11;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSIndexSet *)self->_localHiddenSpriteIndexes count];
      v8 = [(NSIndexSet *)v11 copy];
      v9 = self->_localHiddenSpriteIndexes;
      self->_localHiddenSpriteIndexes = v8;

      if (v7 > 0 || (v10 = [(NSIndexSet *)v11 count], indexesCopy = v11, v10))
      {
        [(PXGLayout *)self localHiddenSpriteIndexesDidChange];
        indexesCopy = v11;
      }
    }
  }
}

- (void)_addHiddenSpriteIndexes:(id)indexes
{
  indexesCopy = indexes;
  v4 = [(NSIndexSet *)self->_localHiddenSpriteIndexes count];
  localHiddenSpriteIndexes = self->_localHiddenSpriteIndexes;
  if (localHiddenSpriteIndexes)
  {
    v6 = [(NSIndexSet *)localHiddenSpriteIndexes mutableCopy];
    [v6 addIndexes:indexesCopy];
  }

  else
  {
    v6 = [indexesCopy copy];
  }

  [(PXGLayout *)self setLocalHiddenSpriteIndexes:v6];

  if ([(NSIndexSet *)self->_localHiddenSpriteIndexes count]!= v4)
  {
    [(PXGLayout *)self _invalidateStyleOfSpritesWithIndexes:indexesCopy];
  }
}

- (void)_resetHiddenSpriteIndexes
{
  if ([(NSIndexSet *)self->_localHiddenSpriteIndexes count])
  {
    [(PXGLayout *)self _invalidateStyleOfSpritesWithIndexes:self->_localHiddenSpriteIndexes];
    [(PXGLayout *)self localHiddenSpriteIndexesDidChange];
  }

  [(PXGLayout *)self setLocalHiddenSpriteIndexes:0];
}

- (void)_propagateHiddenSpriteIndexes:(id)indexes
{
  indexesCopy = indexes;
  hiddenSpriteIndexes = [(PXGLayout *)self hiddenSpriteIndexes];
  v6 = [hiddenSpriteIndexes mutableCopy];
  [v6 removeIndexes:indexesCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PXGLayout__propagateHiddenSpriteIndexes___block_invoke;
  v9[3] = &unk_2782AA948;
  v9[4] = self;
  [v6 enumerateRangesUsingBlock:v9];
  v7 = [indexesCopy mutableCopy];

  [v7 removeIndexes:hiddenSpriteIndexes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PXGLayout__propagateHiddenSpriteIndexes___block_invoke_3;
  v8[3] = &unk_2782AA948;
  v8[4] = self;
  [v7 enumerateRangesUsingBlock:v8];
}

uint64_t __43__PXGLayout__propagateHiddenSpriteIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a2 + a3;
  result = [*(a1 + 32) numberOfSprites];
  if (v6 <= result)
  {
    v8 = *(a1 + 32);

    return [v8 enumerateLayoutsForSpritesInRange:v4 | (v3 << 32) options:1 usingBlock:&__block_literal_global_99];
  }

  return result;
}

uint64_t __43__PXGLayout__propagateHiddenSpriteIndexes___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a2 + a3;
  result = [*(a1 + 32) numberOfSprites];
  if (v6 <= result)
  {
    v8 = *(a1 + 32);

    return [v8 enumerateLayoutsForSpritesInRange:v4 | (v3 << 32) options:1 usingBlock:&__block_literal_global_101];
  }

  return result;
}

void __43__PXGLayout__propagateHiddenSpriteIndexes___block_invoke_4(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = HIDWORD(a2);
  v4 = a2;
  v5 = MEMORY[0x277CCAA78];
  v6 = a3;
  v7 = [v5 indexSetWithIndexesInRange:{v4, v3}];
  [v6 _addHiddenSpriteIndexes:v7];
}

- (void)hideSpritesForObjectReferences:(id)references
{
  v27 = *MEMORY[0x277D85DE8];
  referencesCopy = references;
  superlayout = [(PXGLayout *)self superlayout];

  if (superlayout)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "Hidden object references should be set on root layout only", buf, 2u);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = referencesCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v22;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v21 + 1) + 8 * v14);
        v20 = 0;
        v17 = [(PXGLayout *)self spriteIndexForObjectReference:v16 options:0 updatedObjectReference:&v20];
        v12 = v20;

        if (v17 != -1)
        {
          v18 = [(PXGLayout *)self spriteReferenceForSpriteIndex:v17 objectReference:v12];
          [(NSMutableArray *)v7 addObject:v18];
          [v8 addIndex:v17];
        }

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  spriteReferencesForHiddenSprites = self->_spriteReferencesForHiddenSprites;
  self->_spriteReferencesForHiddenSprites = v7;

  [(PXGLayout *)self _propagateHiddenSpriteIndexes:v8];
}

- (void)setHiddenSpriteIndexes:(id)indexes
{
  indexesCopy = indexes;
  superlayout = [(PXGLayout *)self superlayout];

  if (superlayout)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "Hidden sprite indexes should be set on root layout only", buf, 2u);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __36__PXGLayout_setHiddenSpriteIndexes___block_invoke;
  v14 = &unk_2782AAF40;
  selfCopy = self;
  v8 = v7;
  v16 = v8;
  [indexesCopy enumerateIndexesUsingBlock:&v11];
  spriteReferencesForHiddenSprites = self->_spriteReferencesForHiddenSprites;
  self->_spriteReferencesForHiddenSprites = v8;
  v10 = v8;

  [(PXGLayout *)self _propagateHiddenSpriteIndexes:indexesCopy, v11, v12, v13, v14, selfCopy];
}

void __36__PXGLayout_setHiddenSpriteIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != -1)
  {
    v4 = [*(a1 + 32) spriteReferenceForSpriteIndex:a2];
    [*(a1 + 40) addObject:v4];
  }
}

- (NSIndexSet)hiddenSpriteIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  numberOfSprites = [(PXGLayout *)self numberOfSprites];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__PXGLayout_hiddenSpriteIndexes__block_invoke;
  v13 = &unk_2782AA900;
  v5 = numberOfSprites << 32;
  selfCopy = self;
  v15 = v3;
  v6 = v3;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:v5 options:1 usingBlock:&v10];
  v7 = objc_alloc(MEMORY[0x277CCAA78]);
  v8 = [v7 initWithIndexSet:{v6, v10, v11, v12, v13, selfCopy}];

  return v8;
}

void __32__PXGLayout_hiddenSpriteIndexes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6 == v4)
  {
    [*(a1 + 40) addIndexes:v6[53]];
  }

  else
  {
    v7 = v4[53];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __32__PXGLayout_hiddenSpriteIndexes__block_invoke_2;
    v11[3] = &unk_2782AB638;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    v14 = v5;
    v10 = v7;
    [v10 enumerateRangesUsingBlock:v11];
  }
}

uint64_t __32__PXGLayout_hiddenSpriteIndexes__block_invoke_2(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) convertSpriteIndexRange:a2 | (a3 << 32) fromDescendantLayout:*(a1 + 48)];

  return [v3 addIndexesInRange:{v4, HIDWORD(v4)}];
}

- (void)setSpriteModifier:(id)modifier
{
  if (self->_spriteModifier != modifier)
  {
    v5 = [modifier copy];
    spriteModifier = self->_spriteModifier;
    self->_spriteModifier = v5;

    v7 = [(PXGLayout *)self localNumberOfSprites]<< 32;

    [(PXGLayout *)self modifySpritesInRange:v7 state:&__block_literal_global_95];
  }
}

- (void)setFloatingOffset:(double)offset
{
  if (self->_floatingOffset != offset)
  {
    self->_floatingOffset = offset;
    [(PXGLayout *)self floatingOffsetDidChange];
  }
}

- (void)setFloating:(BOOL)floating
{
  if (self->_floating != floating)
  {
    self->_floating = floating;
    [(PXGLayout *)self floatingDidChange];
  }
}

- (void)setUserInterfaceDirection:(unint64_t)direction
{
  if (self->_userInterfaceDirection != direction)
  {
    self->_userInterfaceDirection = direction;
    [(PXGLayout *)self userInterfaceDirectionDidChange];
  }
}

- (void)setClippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(self->_clippingRect, rect))
  {
    self->_clippingRect.origin.x = x;
    self->_clippingRect.origin.y = y;
    self->_clippingRect.size.width = width;
    self->_clippingRect.size.height = height;

    [(PXGLayout *)self _setNeedsUpdateExternally:0];
  }
}

- (void)setAlpha:(double)alpha
{
  if (self->_alpha != alpha)
  {
    self->_alpha = alpha;
    [(PXGLayout *)self alphaDidChange];
    if ([(PXGLayout *)self appliesAlphaToSublayouts])
    {

      [(PXGLayout *)self _setNeedsUpdateExternally:0];
    }
  }
}

- (void)setScrollSpeedRegime:(int64_t)regime
{
  if (self->_scrollSpeedRegime != regime)
  {
    self->_scrollSpeedRegime = regime;
    [(PXGLayout *)self scrollSpeedRegimeDidChange];
  }
}

- (void)setLastScrollDirection:(CGPoint)direction
{
  if (direction.x != self->_lastScrollDirection.x || direction.y != self->_lastScrollDirection.y)
  {
    self->_lastScrollDirection = direction;
    [(PXGLayout *)self lastScrollDirectionDidChange];
  }
}

- (void)setDisplayScale:(double)scale
{
  if (self->_displayScale != scale)
  {
    self->_displayScale = scale;
    [(PXGLayout *)self displayScaleDidChange];
  }
}

- (void)setSafeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    self->_safeAreaInsets.top = top;
    self->_safeAreaInsets.left = left;
    self->_safeAreaInsets.bottom = bottom;
    self->_safeAreaInsets.right = right;

    [(PXGLayout *)self safeAreaInsetsDidChange];
  }
}

- (void)containingScrollViewDidScroll:(CGPoint)scroll
{
  y = scroll.y;
  x = scroll.x;
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PXGLayout_containingScrollViewDidScroll___block_invoke;
  v6[3] = &__block_descriptor_48_e26_v32__0q8__PXGLayout_16_B24l;
  *&v6[4] = x;
  *&v6[5] = y;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v6];
}

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->_visibleRect))
  {
    v8 = PXRectApproximatelyEqualToRect();
    self->_visibleRect.origin.x = x;
    self->_visibleRect.origin.y = y;
    self->_visibleRect.size.width = width;
    self->_visibleRect.size.height = height;
    if ((v8 & 1) == 0)
    {

      [(PXGLayout *)self visibleRectDidChange];
    }
  }
}

- (void)setReferenceOptions:(unsigned __int16)options
{
  if (self->_referenceOptions != options)
  {
    self->_referenceOptions = options;
    [(PXGLayout *)self referenceOptionsDidChange];
  }
}

- (void)setReferenceDepth:(double)depth
{
  if (self->_referenceDepth != depth)
  {
    self->_referenceDepth = depth;
    [(PXGLayout *)self referenceDepthDidChange];
  }
}

- (void)setReferenceSize:(CGSize)size
{
  if (size.width != self->_referenceSize.width || size.height != self->_referenceSize.height)
  {
    self->_referenceSize = size;
    [(PXGLayout *)self referenceSizeDidChange];
  }
}

- (void)setLayoutQueue:(id)queue
{
  queueCopy = queue;
  if (self->_layoutQueue != queueCopy)
  {
    objc_storeStrong(&self->_layoutQueue, queue);
    [(PXGLayout *)self layoutQueueDidChange];
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__PXGLayout_setLayoutQueue___block_invoke;
    v7[3] = &unk_2782AA878;
    v8 = queueCopy;
    [sublayoutDataStore enumerateSublayoutsUsingBlock:v7];
  }
}

- (void)setAppearState:(unint64_t)state
{
  if (self->_appearState != state)
  {
    self->_appearState = state;
    [(PXGLayout *)self appearStateDidChange];
  }

  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__PXGLayout_setAppearState___block_invoke;
  v6[3] = &__block_descriptor_40_e26_v32__0q8__PXGLayout_16_B24l;
  v6[4] = state;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v6];
}

- (void)setViewEnvironment:(id)environment
{
  environmentCopy = environment;
  v6 = self->_viewEnvironment;
  v7 = v6;
  if (v6 == environmentCopy)
  {
  }

  else
  {
    v8 = [(PXGViewEnvironment *)v6 isEqual:environmentCopy];

    if (!v8)
    {
      [(PXGLayout *)self viewEnvironmentWillChange:environmentCopy];
      objc_storeStrong(&self->_viewEnvironment, environment);
      [(PXGLayout *)self viewEnvironmentDidChange];
      sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32__PXGLayout_setViewEnvironment___block_invoke;
      v10[3] = &unk_2782AA878;
      v11 = environmentCopy;
      [sublayoutDataStore enumerateSublayoutsUsingBlock:v10];
    }
  }
}

- (id)viewForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  viewDelegate = [(PXGLayout *)self viewDelegate];
  v6 = [viewDelegate layout:self viewForSpriteIndex:v3];

  return v6;
}

- (void)updateAsRootIfNeeded
{
  rootLayout = [(PXGLayout *)self rootLayout];

  if (rootLayout != self)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:737 description:{@"Invalid parameter not satisfying: %@", @"self == self.rootLayout"}];
  }

  if (PXGLayoutCanInstallLayoutCompletionBlock)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:738 description:{@"Invalid parameter not satisfying: %@", @"PXGLayoutCanInstallLayoutCompletionBlock == NO"}];
  }

  PXGLayoutCanInstallLayoutCompletionBlock = 1;
  [(PXGLayout *)self updateIfNeeded];
  PXGLayoutCanInstallLayoutCompletionBlock = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v9 = MEMORY[0x21CEE40A0](PXGLayoutLayoutCompletionBlock);
    v5 = PXGLayoutLayoutCompletionBlock;
    PXGLayoutLayoutCompletionBlock = 0;

    v6 = v9;
    if (v9)
    {
      (*(v9 + 16))(v9);
      v6 = v9;
    }
  }
}

- (void)installLayoutCompletionBlock:(id)block
{
  blockCopy = block;
  layoutQueue = [(PXGLayout *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  if ((PXGLayoutCanInstallLayoutCompletionBlock & 1) == 0)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_21AD38000, v6, OS_LOG_TYPE_FAULT, "-installLayoutCompletionBlock: not supported in current configuration. If this is hit during a unit test, consider using -updateAsRootIfNeeded.", buf, 2u);
    }
  }

  if (PXGLayoutLayoutCompletionBlock)
  {
    v7 = MEMORY[0x21CEE40A0]();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__PXGLayout_installLayoutCompletionBlock___block_invoke;
    v12[3] = &unk_2782AB8B8;
    v13 = v7;
    v14 = blockCopy;
    v8 = v7;
    v9 = [v12 copy];
    v10 = PXGLayoutLayoutCompletionBlock;
    PXGLayoutLayoutCompletionBlock = v9;
  }

  else
  {
    v11 = [blockCopy copy];
    v8 = PXGLayoutLayoutCompletionBlock;
    PXGLayoutLayoutCompletionBlock = v11;
  }
}

uint64_t __42__PXGLayout_installLayoutCompletionBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)performChangesWithLocalUpdate:(id)update
{
  isPerformingWithLocalUpdate = self->_isPerformingWithLocalUpdate;
  self->_isPerformingWithLocalUpdate = 1;
  (*(update + 2))(update, a2);
  self->_isPerformingWithLocalUpdate = isPerformingWithLocalUpdate;
  if (!isPerformingWithLocalUpdate)
  {
    self->_needsUpdate = 1;

    [(PXGLayout *)self updateIfNeeded];
  }
}

- (void)performSpriteStylingUpdate:(id)update
{
  isUpdatingSpriteStyling = self->_isUpdatingSpriteStyling;
  self->_isUpdatingSpriteStyling = 1;
  (*(update + 2))(update, a2);
  self->_isUpdatingSpriteStyling = isUpdatingSpriteStyling;
}

- (void)updateStylingForSpritesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  hiddenSpriteIndexes = [(PXGLayout *)self hiddenSpriteIndexes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PXGLayout_updateStylingForSpritesAtIndexes___block_invoke;
  v8[3] = &unk_2782ABE78;
  v8[4] = self;
  v9 = indexesCopy;
  v10 = hiddenSpriteIndexes;
  v6 = hiddenSpriteIndexes;
  v7 = indexesCopy;
  [(PXGLayout *)self performSpriteStylingUpdate:v8];
}

void __46__PXGLayout_updateStylingForSpritesAtIndexes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__PXGLayout_updateStylingForSpritesAtIndexes___block_invoke_2;
  v3[3] = &unk_2782AA850;
  v4 = *(a1 + 48);
  [v1 modifySpritesAtIndexes:v2 state:v3];
}

uint64_t __46__PXGLayout_updateStylingForSpritesAtIndexes___block_invoke_2(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v6 = result;
    v7 = a2;
    do
    {
      *(a4 + 52) = 0;
      result = [*(v6 + 32) containsIndex:v7];
      if (result)
      {
        v8 = 0.00000001;
      }

      else
      {
        v8 = 1.0;
      }

      *a4 = v8;
      a4 += 160;
      ++v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

void __22__PXGLayout_didUpdate__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = didUpdate_reportedClasses;
  didUpdate_reportedClasses = v0;
}

- (BOOL)allowsDanglingUpdatesAssertions
{
  v2 = +[PXTungstenSettings sharedInstance];
  enableLayoutDanglingUpdatesAssertions = [v2 enableLayoutDanglingUpdatesAssertions];

  return enableLayoutDanglingUpdatesAssertions;
}

- (void)_setNeedsUpdateExternally:(BOOL)externally
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_isPerformingWithLocalUpdate)
  {
    if (self->_isUpdating)
    {
      if (externally && !self->_isUpdatingAnchoring)
      {
        self->_needsUpdate = 1;
        if ([(PXGLayout *)self allowsDanglingUpdatesAssertions])
        {
          if (!self->_isPropagatingAdjustedReferencedHiddenSpriteIndexes)
          {
            v4 = PXAssertGetLog();
            if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
            {
              v9 = 138412290;
              selfCopy = self;
              _os_log_error_impl(&dword_21AD38000, v4, OS_LOG_TYPE_ERROR, "setNeedsUpdate called while performing update pass on %@", &v9, 0xCu);
            }
          }
        }
      }
    }

    else
    {
      self->_needsUpdate = 1;
    }

    superlayout = [(PXGLayout *)self superlayout];
    [superlayout sublayoutNeedsUpdate:self];

    rootLayout = [(PXGLayout *)self rootLayout];
    updateDelegate = [rootLayout updateDelegate];
    [updateDelegate layoutNeedsUpdate:rootLayout];

    activeAnchor = [(PXGLayout *)self activeAnchor];
    [activeAnchor setNeedsUpdate:1];
  }
}

- (UICoordinateSpace)coordinateSpace
{
  scrollDelegate = [(PXGLayout *)self scrollDelegate];
  v4 = [scrollDelegate contentCoordinateSpaceForLayout:self];

  return v4;
}

- (unsigned)convertSpriteIndex:(unsigned int)index fromLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  v7 = [(PXGLayout *)self ancestorSharedWithLayout:layoutCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 convertSpriteIndex:objc_msgSend(v7 toDescendantLayout:{"convertSpriteIndex:fromDescendantLayout:", v4, layoutCopy), self}];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)ancestorSharedWithLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      v6 = layoutCopy;
      if (layoutCopy)
      {
        break;
      }

LABEL_6:
      superlayout = [(PXGLayout *)selfCopy superlayout];

      selfCopy = superlayout;
      if (!superlayout)
      {
        goto LABEL_9;
      }
    }

    v7 = v6;
    while (selfCopy != v7)
    {
      superlayout2 = [(PXGLayout *)v7 superlayout];

      v7 = superlayout2;
      if (!superlayout2)
      {
        goto LABEL_6;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_9:

  return selfCopy;
}

- (BOOL)isDescendantOfLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  superlayout = selfCopy;
  for (i = selfCopy != 0; superlayout != layoutCopy && superlayout; i = superlayout != 0)
  {
    v8 = superlayout;
    superlayout = [superlayout superlayout];
  }

  return i;
}

- (CGPoint)_offsetToDescendantLayout:(id)layout
{
  v27 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v7 = layoutCopy;
  v8 = v7;
  if (v7 == self)
  {
    v11 = v7;
  }

  else
  {
    v9 = v7;
    while (1)
    {
      v10 = [(PXGLayout *)v9 superlayout:v19[0]];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      memset(v19, 0, sizeof(v19));
      sublayoutDataStore = [(PXGLayout *)v10 sublayoutDataStore];
      v13 = sublayoutDataStore;
      if (sublayoutDataStore)
      {
        [sublayoutDataStore geometryForSublayout:v9];
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        memset(v19, 0, sizeof(v19));
      }

      if (PXPointIsNull())
      {
        v5 = *MEMORY[0x277D3CFB0];
        v6 = *(MEMORY[0x277D3CFB0] + 8);

        goto LABEL_12;
      }

      PXPointSubtract();
      v5 = v14;
      v6 = v15;

      v9 = v11;
      if (v11 == self)
      {
        goto LABEL_13;
      }
    }

    v18 = PXAssertGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19[0]) = 138412546;
      *(v19 + 4) = v8;
      WORD6(v19[0]) = 2112;
      *(v19 + 14) = self;
      _os_log_error_impl(&dword_21AD38000, v18, OS_LOG_TYPE_ERROR, "%@ isn't a descendant of %@", v19, 0x16u);
    }

    v5 = *MEMORY[0x277D3CFB0];
    v6 = *(MEMORY[0x277D3CFB0] + 8);
LABEL_12:
    v11 = v9;
  }

LABEL_13:

  v16 = v5;
  v17 = v6;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromDescendantLayout:(id)layout
{
  [(PXGLayout *)self convertRect:layout fromDescendantLayout:point.x, point.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  x = v10.origin.x;
  y = v10.origin.y;
  IsNull = CGRectIsNull(v10);
  v7 = *MEMORY[0x277D3CFB0];
  v8 = *(MEMORY[0x277D3CFB0] + 8);
  if (!IsNull)
  {
    v8 = y;
    v7 = x;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toDescendantLayout:(id)layout
{
  [(PXGLayout *)self convertRect:layout toDescendantLayout:point.x, point.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  x = v10.origin.x;
  y = v10.origin.y;
  IsNull = CGRectIsNull(v10);
  v7 = *MEMORY[0x277D3CFB0];
  v8 = *(MEMORY[0x277D3CFB0] + 8);
  if (!IsNull)
  {
    v8 = y;
    v7 = x;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromLayout:(id)layout
{
  [(PXGLayout *)self convertRect:layout fromLayout:point.x, point.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  x = v10.origin.x;
  y = v10.origin.y;
  IsNull = CGRectIsNull(v10);
  v7 = *MEMORY[0x277D3CFB0];
  v8 = *(MEMORY[0x277D3CFB0] + 8);
  if (!IsNull)
  {
    v7 = x;
    v8 = y;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromLayout:(id)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  v10 = [(PXGLayout *)self ancestorSharedWithLayout:layoutCopy];
  v11 = v10;
  if (v10)
  {
    [v10 convertRect:layoutCopy fromDescendantLayout:{x, y, width, height}];
    [v11 convertRect:self toDescendantLayout:?];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v13 = *MEMORY[0x277CBF398];
    v15 = *(MEMORY[0x277CBF398] + 8);
    v17 = *(MEMORY[0x277CBF398] + 16);
    v19 = *(MEMORY[0x277CBF398] + 24);
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromDescendantLayout:(id)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  v20 = *(MEMORY[0x277CBF398] + 8);
  v21 = *MEMORY[0x277CBF398];
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectIsNull(v22))
  {
    [(PXGLayout *)self _offsetToDescendantLayout:layoutCopy];
    v13 = v12;
    v15 = v14;
    if ((PXPointIsNull() & 1) == 0)
    {
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v24 = CGRectOffset(v23, -v13, -v15);
      v20 = v24.origin.y;
      v21 = v24.origin.x;
      v10 = v24.size.width;
      v11 = v24.size.height;
    }
  }

  v17 = v20;
  v16 = v21;
  v18 = v10;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toDescendantLayout:(id)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  v10 = *MEMORY[0x277CBF398];
  v11 = *(MEMORY[0x277CBF398] + 8);
  v12 = *(MEMORY[0x277CBF398] + 16);
  v13 = *(MEMORY[0x277CBF398] + 24);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectIsNull(v22))
  {
    [(PXGLayout *)self _offsetToDescendantLayout:layoutCopy];
    v20 = v15;
    v21 = v14;
    if ((PXPointIsNull() & 1) == 0)
    {
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v24 = CGRectOffset(v23, v21, v20);
      v10 = v24.origin.x;
      v11 = v24.origin.y;
      v12 = v24.size.width;
      v13 = v24.size.height;
    }
  }

  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)convertSpriteIndexes:(id)indexes fromDescendantLayout:(id)layout
{
  indexesCopy = indexes;
  layoutCopy = layout;
  v9 = layoutCopy;
  if (layoutCopy)
  {
    v10 = layoutCopy;
    if (v10 != self)
    {
      superlayout = v10;
      do
      {
        v12 = superlayout;
        superlayout = [(PXGLayout *)superlayout superlayout];
        spriteDataStore = [(PXGLayout *)superlayout spriteDataStore];
        v14 = [spriteDataStore count];
        sublayoutDataStore = [(PXGLayout *)superlayout sublayoutDataStore];
        v16 = [sublayoutDataStore spriteIndexOriginForSublayout:v12];
      }

      while (superlayout != self && superlayout);
      v17 = (v16 + v14);
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"descendantLayout"}];

    if (self)
    {
      v17 = 0;
      superlayout = 0;
LABEL_7:
      v18 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __55__PXGLayout_convertSpriteIndexes_fromDescendantLayout___block_invoke;
      v22[3] = &unk_2782ABFE0;
      v24 = v17;
      v19 = v18;
      v23 = v19;
      [indexesCopy enumerateRangesUsingBlock:v22];

      goto LABEL_11;
    }
  }

  v19 = indexesCopy;
  superlayout = v9;
LABEL_11:

  return v19;
}

- (_PXGSpriteIndexRange)convertSpriteIndexRange:(_PXGSpriteIndexRange)range fromDescendantLayout:(id)layout
{
  layoutCopy = layout;
  v7 = layoutCopy;
  v8 = 0;
  location = 0xFFFFFFFFLL;
  if (range.location != -1 && layoutCopy)
  {
    v10 = HIDWORD(*&range);
    v11 = layoutCopy;
    if (v11 != self)
    {
      while (1)
      {
        superlayout = [(PXGLayout *)v11 superlayout];
        if (!superlayout)
        {
          break;
        }

        v13 = superlayout;
        spriteDataStore = [(PXGLayout *)superlayout spriteDataStore];
        v15 = [spriteDataStore count];
        sublayoutDataStore = [(PXGLayout *)v13 sublayoutDataStore];
        range.location += v15 + [sublayoutDataStore spriteIndexOriginForSublayout:v11];

        v11 = v13;
        if (v13 == self)
        {
          v11 = v13;
          goto LABEL_8;
        }
      }

      v10 = 0;
      range.location = -1;
    }

LABEL_8:

    v8 = v10 << 32;
    location = range.location;
  }

  return (v8 | location);
}

- (unsigned)convertSpriteIndex:(unsigned int)index toDescendantLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  v7 = layoutCopy;
  v8 = -1;
  if (v4 != -1 && layoutCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = -1;
    if (layoutCopy == self)
    {
      v20 = v4;
    }

    else
    {
      superlayout = [(PXGLayout *)layoutCopy superlayout];

      if (superlayout == self)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __51__PXGLayout_convertSpriteIndex_toDescendantLayout___block_invoke;
        v14[3] = &unk_2782AAC68;
        v15 = v7;
        v16 = &v17;
        [(PXGLayout *)self enumerateLayoutsForSpritesInRange:v4 | 0x100000000 options:0 usingBlock:v14];
      }

      else
      {
        superlayout2 = [(PXGLayout *)v7 superlayout];
        if (superlayout2)
        {
          v11 = [(PXGLayout *)self convertSpriteIndex:v4 toDescendantLayout:superlayout2];
          *(v18 + 6) = v11;
          if (v11 != -1)
          {
            v12 = [superlayout2 convertSpriteIndex:v11 toDescendantLayout:v7];
            *(v18 + 6) = v12;
          }
        }
      }
    }

    v8 = *(v18 + 6);
    _Block_object_dispose(&v17, 8);
  }

  return v8;
}

uint64_t __51__PXGLayout_convertSpriteIndex_toDescendantLayout___block_invoke(uint64_t result, int a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)enumerateLayoutsForSpritesInRange:(_PXGSpriteIndexRange)range options:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  v20 = 0;
  v10 = [spriteDataStore count];
  v11 = v10;
  if (!HIDWORD(*&range))
  {
    goto LABEL_8;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  v12 = range.length + range.location;
  if (!(range.length + range.location) || v10 <= range.location)
  {
    goto LABEL_8;
  }

  if (v12 >= v10)
  {
    v12 = v10;
  }

  blockCopy[2](blockCopy, range.location | ((v12 - range.location) << 32), self, &v20);
  if ((v20 & 1) == 0)
  {
LABEL_8:
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2810000000;
    v19[3] = "";
    v19[4] = v11;
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__PXGLayout_enumerateLayoutsForSpritesInRange_options_usingBlock___block_invoke;
    v14[3] = &unk_2782AA828;
    optionsCopy = options;
    rangeCopy = range;
    v16 = v19;
    v15 = blockCopy;
    [sublayoutDataStore enumerateSublayoutsUsingBlock:v14];

    _Block_object_dispose(v19, 8);
  }
}

void __66__PXGLayout_enumerateLayoutsForSpritesInRange_options_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 36) = [v6 numberOfSprites];
  v7 = *(*(*(a1 + 40) + 8) + 32);
  v8 = *(a1 + 56);
  if (HIDWORD(v7))
  {
    v9 = HIDWORD(v8) == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = HIDWORD(v7) + v7;
  v11 = !v9 && v10 > v8;
  v12 = HIDWORD(v8) + v8;
  if (v11 && v12 > v7)
  {
    if (v7 > v8)
    {
      LODWORD(v8) = *(*(*(a1 + 40) + 8) + 32);
    }

    if (v10 >= v12)
    {
      v10 = v12;
    }

    v14 = v10 - v8;
    if (v14)
    {
      v15 = (v8 - v7) | (v14 << 32);
      v16 = *(a1 + 48);
      if (v16)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __66__PXGLayout_enumerateLayoutsForSpritesInRange_options_usingBlock___block_invoke_2;
        v17[3] = &unk_2782AA800;
        v18 = *(a1 + 32);
        v19 = a4;
        [v6 enumerateLayoutsForSpritesInRange:v15 options:v16 usingBlock:v17];
      }

      else
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 32) += *(*(*(a1 + 40) + 8) + 36);
}

uint64_t __66__PXGLayout_enumerateLayoutsForSpritesInRange_options_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

- (void)setSuperlayout:(id)superlayout
{
  obj = superlayout;
  WeakRetained = objc_loadWeakRetained(&self->_superlayout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_superlayout, obj);
    [(PXGLayout *)self superlayoutDidChange];
    v5 = obj;
  }
}

- (void)setEntityManager:(id)manager
{
  managerCopy = manager;
  entityManager = self->_entityManager;
  if (entityManager != managerCopy)
  {
    v16 = managerCopy;
    spriteDataStore = [(PXGLayout *)self spriteDataStore];
    entities = [spriteDataStore entities];
    spriteDataStore2 = [(PXGLayout *)self spriteDataStore];
    -[PXGEntityManager destroyEntities:count:](entityManager, "destroyEntities:count:", entities, [spriteDataStore2 count]);

    objc_storeStrong(&self->_entityManager, manager);
    spriteDataStore3 = [(PXGLayout *)self spriteDataStore];
    if (v16)
    {
      v11 = [spriteDataStore3 count];
      spriteDataStore4 = [(PXGLayout *)self spriteDataStore];
      -[PXGEntityManager createEntitiesWithCount:addingToArray:](v16, "createEntitiesWithCount:addingToArray:", v11, [spriteDataStore4 entities]);
    }

    else
    {
      [spriteDataStore3 clearEntities];
    }

    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    if ([sublayoutDataStore count] >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [sublayoutDataStore sublayoutAtIndex:v14];
        [v15 setEntityManager:v16];

        ++v14;
      }

      while (v14 < [sublayoutDataStore count]);
    }

    [(PXGLayout *)self entityManagerDidChange];

    managerCopy = v16;
  }
}

- (void)setContentSource:(id)source
{
  sourceCopy = source;
  objc_storeWeak(&self->_contentSource, sourceCopy);
  if (objc_opt_respondsToSelector())
  {
    v4 = sourceCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_storeWeak(&self->_displayAssetSource, v4);
  self->_displayAssetSourceRespondsTo.supportedDisplayAssetPresentationStylesInLayout = objc_opt_respondsToSelector() & 1;

  WeakRetained = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.minSpriteSizeForPresentationStyle = objc_opt_respondsToSelector() & 1;

  v7 = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.displayAssetRequestObserverForSpritesInRangeInLayout = objc_opt_respondsToSelector() & 1;

  v8 = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.videoPresentationControllerForDisplayAssetSpriteIndexInLayout = objc_opt_respondsToSelector() & 1;

  v9 = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.adjustmentForDisplayAssetSpriteIndexInLayout = objc_opt_respondsToSelector() & 1;

  v10 = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.presentationIntentForSpritesInRangeInLayout = objc_opt_respondsToSelector() & 1;

  v11 = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.customMediaProviderForDisplayAssetsInLayout = objc_opt_respondsToSelector() & 1;

  v12 = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.customPixelBufferSourcesProviderForDisplayAssetsInLayout = objc_opt_respondsToSelector() & 1;

  v13 = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.useLowMemoryDecodeInLayout = objc_opt_respondsToSelector() & 1;

  v14 = objc_loadWeakRetained(&self->_displayAssetSource);
  self->_displayAssetSourceRespondsTo.shouldApplyCleanApertureCropToStillImagesInLayout = objc_opt_respondsToSelector() & 1;

  if (objc_opt_respondsToSelector())
  {
    v15 = sourceCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  self->_stringSourceRespondsTo.stringDrawingOptionsForSpriteAtIndexInLayout = objc_opt_respondsToSelector() & 1;
  self->_stringSourceRespondsTo.paddingForSpriteAtIndexInLayout = objc_opt_respondsToSelector() & 1;
  self->_stringSourceRespondsTo.drawingContextForSpriteAtIndexInLayout = objc_opt_respondsToSelector() & 1;
  v17 = objc_opt_respondsToSelector();

  self->_stringSourceRespondsTo.attributedStringBoundingSizeForSpriteAtIndexInLayout = v17 & 1;
}

- (UIEdgeInsets)flexibleRegionInsets
{
  v2 = *MEMORY[0x277D3CF90];
  v3 = *(MEMORY[0x277D3CF90] + 8);
  v4 = *(MEMORY[0x277D3CF90] + 16);
  v5 = *(MEMORY[0x277D3CF90] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)bounds
{
  [(PXGLayout *)self contentSize];
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

- (void)_destroyModifiedSpriteDataStore
{
  [(PXGSpriteDataStore *)self->_modifiedSpriteDataStore recycle];
  modifiedSpriteDataStore = self->_modifiedSpriteDataStore;
  self->_modifiedSpriteDataStore = 0;
}

- (void)_ensureModifiedSpriteDataStore
{
  if (!self->_modifiedSpriteDataStore)
  {
    v15 = v2;
    v16 = v3;
    v5 = +[PXGSpriteDataStore newSpriteDataStore];
    modifiedSpriteDataStore = self->_modifiedSpriteDataStore;
    self->_modifiedSpriteDataStore = v5;

    spriteDataStore = [(PXGLayout *)self spriteDataStore];
    v8 = spriteDataStore;
    if (spriteDataStore)
    {
      [spriteDataStore sprites];
      v9 = self->_modifiedSpriteDataStore;
      v10[0] = v12;
      v10[1] = v13;
      v11 = v14;
      [(PXGSpriteDataStore *)v9 setSprites:v10];
    }
  }
}

- (void)_destroySpriteDataStore
{
  [(PXGSpriteDataStore *)self->_spriteDataStore recycle];
  spriteDataStore = self->_spriteDataStore;
  self->_spriteDataStore = 0;
}

- (void)dealloc
{
  [(PXGSpriteDataStore *)self->_spriteDataStore recycle];
  [(PXGBasicAXGroup *)self->_reusableAXGroup unloadFromParent];
  v3.receiver = self;
  v3.super_class = PXGLayout;
  [(PXGLayout *)&v3 dealloc];
}

- (PXGLayout)nextViewHostingLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_nextViewHostingLayout);

  if (WeakRetained)
  {
    superlayout = objc_loadWeakRetained(&self->_nextViewHostingLayout);
  }

  else
  {
    superlayout = [(PXGLayout *)self superlayout];
  }

  return superlayout;
}

+ (unint64_t)scrolledEdgesForVisibleEdges:(unint64_t)edges scrollableAxis:(int64_t)axis
{
  v4 = edges & ~(4 * edges) & 8;
  if ((edges & 0xA) == 2)
  {
    v4 = 2;
  }

  if ((axis & 2) == 0)
  {
    v4 = 0;
  }

  v5 = v4 | ~(4 * edges) & 4;
  if ((edges & 4) == 0)
  {
    v5 = v4;
  }

  if ((edges & 5) == 1)
  {
    v6 = v4 | 1;
  }

  else
  {
    v6 = v5;
  }

  if (axis)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

- (PXGDataSourceChange)currentDataSourceChange
{
  internalCurrentDataSourceChange = [(PXGLayout *)self internalCurrentDataSourceChange];
  if (!internalCurrentDataSourceChange)
  {
    superlayout = [(PXGLayout *)self superlayout];
    if (superlayout)
    {
      do
      {
        v5 = superlayout;
        internalCurrentDataSourceChange = [superlayout internalCurrentDataSourceChange];
        superlayout = [superlayout superlayout];
      }

      while (superlayout && !internalCurrentDataSourceChange);
    }

    else
    {
      internalCurrentDataSourceChange = 0;
    }

    [(PXGLayout *)self setInternalCurrentDataSourceChange:internalCurrentDataSourceChange];
  }

  return internalCurrentDataSourceChange;
}

- (void)applySectionedChangeDetailsForSingleSection:(id)section dataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges changeMediaVersionHandler:(id)handler sectionIndexPathBeforeState:(PXSimpleIndexPath *)state
{
  v99 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  changesCopy = changes;
  afterChangesCopy = afterChanges;
  handlerCopy = handler;
  v17 = [[PXGDataSourceChange alloc] initWithChangeDetails:sectionCopy dataSourceBeforeChanges:changesCopy dataSourceAfterChanges:afterChangesCopy];
  [(PXGLayout *)self setInternalCurrentDataSourceChange:v17];

  layoutForItemChanges = [(PXGLayout *)self layoutForItemChanges];
  if (handlerCopy)
  {
    v18 = handlerCopy;
  }

  else
  {
    v18 = &__block_literal_global_19_15284;
  }

  v19 = MEMORY[0x21CEE40A0](v18);

  v20 = [sectionCopy count];
  v95 = 0u;
  v96 = 0u;
  v21 = *&state->var2;
  v94[0] = *&state->var0;
  v94[1] = v21;
  [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:sectionCopy toIndexPath:v94 hasIncrementalChanges:0 objectChanged:0];
  if (v95 == *MEMORY[0x277D3CF78] || state->var0 == *MEMORY[0x277D3CF78])
  {
    goto LABEL_31;
  }

  v71 = v20;
  selfCopy = self;
  v68 = sectionCopy;
  v69 = afterChangesCopy;
  v67 = changesCopy;
  var1 = state->var1;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v23 = sectionCopy;
  v24 = [v23 countByEnumeratingWithState:&v90 objects:v98 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v91;
    v63 = a2;
    v65 = v19;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v91 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v90 + 1) + 8 * i);
        sectionChanges = [v28 sectionChanges];
        var1 = [sectionChanges indexAfterApplyingChangesToIndex:var1];

        sectionChanges2 = [v28 sectionChanges];
        if (([sectionChanges2 hasIncrementalChanges] & 1) == 0)
        {

LABEL_30:
          changesCopy = v67;
          sectionCopy = v68;
          afterChangesCopy = v69;
          v19 = v65;
          goto LABEL_31;
        }

        v31 = [v28 itemChangesInSection:var1];
        hasIncrementalChanges = [v31 hasIncrementalChanges];

        if (!hasIncrementalChanges)
        {
          goto LABEL_30;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v90 objects:v98 count:16];
      a2 = v63;
      v19 = v65;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  changesCopy = v67;
  sectionCopy = v68;
  afterChangesCopy = v69;
  if (!v71 || ![v69 numberOfSections])
  {
LABEL_31:
    if ([afterChangesCopy numberOfSections] < 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = [afterChangesCopy numberOfItemsInSection:state->var1];
    }

    changeDetailsWithNoIncrementalChanges = [MEMORY[0x277D3CCC8] changeDetailsWithNoIncrementalChanges];
    v38 = layoutForItemChanges;
    [layoutForItemChanges setNumberOfItems:v54 withChangeDetails:changeDetailsWithNoIncrementalChanges];
  }

  else
  {
    v64 = a2;
    v66 = v19;
    indexPathSet = [MEMORY[0x277D3CD78] indexPathSet];
    v34 = state->var1;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v35 = v23;
    v36 = [v35 countByEnumeratingWithState:&v86 objects:v97 count:16];
    if (v36)
    {
      v37 = v36;
      v72 = *v87;
      v38 = layoutForItemChanges;
      obj = v35;
      do
      {
        v39 = 0;
        v40 = indexPathSet;
        do
        {
          if (*v87 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v86 + 1) + 8 * v39);
          sectionChanges3 = [v41 sectionChanges];
          v34 = [sectionChanges3 indexAfterApplyingChangesToIndex:v34];
          v43 = [v41 indexPathSetAfterApplyingChangesToIndexPathSet:v40 hasIncrementalChanges:0];
          indexPathSet = [v43 mutableCopy];

          if (v38)
          {
            v44 = [v41 itemChangesInSection:v34];
            if (([v44 hasIncrementalChanges] & 1) == 0)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v64 object:selfCopy file:@"PXGDataSourceDrivenLayout.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"itemChanges.hasIncrementalChanges"}];
            }

            numberOfItems = [v38 numberOfItems];
            insertedIndexes = [v44 insertedIndexes];
            v47 = [insertedIndexes count] + numberOfItems;
            removedIndexes = [v44 removedIndexes];
            v49 = v47 - [removedIndexes count];

            v50 = v49;
            v38 = layoutForItemChanges;
            [layoutForItemChanges setNumberOfItems:v50 withChangeDetails:v44];
            toDataSourceIdentifier = [v41 toDataSourceIdentifier];
            v84[0] = MEMORY[0x277D85DD0];
            v84[1] = 3221225472;
            v84[2] = __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_2;
            v84[3] = &unk_2782AAE58;
            v85 = v44;
            v52 = v44;
            [indexPathSet modifyItemIndexSetForDataSourceIdentifier:toDataSourceIdentifier section:v34 usingBlock:v84];
          }

          ++v39;
          v40 = indexPathSet;
        }

        while (v37 != v39);
        v35 = obj;
        v37 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
      }

      while (v37);
    }

    else
    {
      v38 = layoutForItemChanges;
    }

    numberOfItems2 = [v38 numberOfItems];
    if (numberOfItems2 != [v69 numberOfItemsInSection:*(&v95 + 1)])
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      numberOfItems3 = [v38 numberOfItems];
      [currentHandler2 handleFailureInMethod:v64 object:selfCopy file:@"PXGDataSourceDrivenLayout.m" lineNumber:197 description:{@"Layout item count %ld does not match data source %ld", numberOfItems3, objc_msgSend(v69, "numberOfItemsInSection:", *(&v95 + 1))}];
    }

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_3;
    v79[3] = &unk_2782AAEA8;
    v57 = v35;
    v80 = v57;
    v81 = selfCopy;
    v82 = indexPathSet;
    v83 = v64;
    changeDetailsWithNoIncrementalChanges = indexPathSet;
    [changeDetailsWithNoIncrementalChanges enumerateDataSourceIdentifiers:v79];
    v58 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_4;
    v74[3] = &unk_2782AAF18;
    v75 = v38;
    v76 = v57;
    v77 = v58;
    v19 = v66;
    v78 = v66;
    v59 = v58;
    [changeDetailsWithNoIncrementalChanges enumerateItemIndexSetsUsingBlock:v74];

    changesCopy = v67;
    sectionCopy = v68;
    afterChangesCopy = v69;
  }
}

void __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 changedIndexes];
  [v3 addIndexes:v4];
}

void __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) lastObject];
  v5 = [v4 toDataSourceIdentifier];

  if (v5 != a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) lastObject];
    [v9 handleFailureInMethod:v6 object:v7 file:@"PXGDataSourceDrivenLayout.m" lineNumber:201 description:{@"Data source identifier in itemsWithChanges %lu != %lu from the change details. allChangeDetails:%@ itemsWithChanges:%@ ", a2, objc_msgSend(v8, "toDataSourceIdentifier"), *(a1 + 32), *(a1 + 48)}];
  }
}

void __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_4(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1[4])
  {
    v7 = MEMORY[0x277CCAB58];
    v8 = a4;
    v9 = [v7 indexSet];
    v10 = [a1[4] loadedItemsForItems:v8];

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_5;
    v18 = &unk_2782AAED0;
    v23 = a2;
    v24 = a3;
    v19 = a1[5];
    v20 = a1[6];
    v22 = a1[7];
    v11 = v9;
    v21 = v11;
    [v10 enumerateIndexesUsingBlock:&v15];
    if ([v11 count])
    {
      v12 = a1[4];
      v13 = [v12 numberOfItems];
      v14 = [MEMORY[0x277D3CCC8] changeDetailsWithChangedIndexes:v11];
      [v12 setNumberOfItems:v13 withChangeDetails:v14 changeMediaVersionHandler:&__block_literal_global_30];
    }
  }
}

uint64_t __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v21 = 0u;
  v22 = 0u;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *&v19 = v4;
  *(&v19 + 1) = v5;
  *&v20 = a2;
  *(&v20 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  [MEMORY[0x277D3CDD0] indexPathAfterRevertingChanges:v6 fromIndexPath:&v19 hasIncrementalChanges:0 objectChanged:0 changedProperties:v7];
  if (v21 != *MEMORY[0x277D3CF78])
  {
    v8 = [*(a1 + 40) containsObject:*MEMORY[0x277D3CF80]];
    v9 = *(a1 + 56);
    v10 = *(v9 + 16);
    v19 = v21;
    v20 = v22;
    v18[0] = v4;
    v18[1] = v5;
    v18[2] = a2;
    v18[3] = 0x7FFFFFFFFFFFFFFFLL;
    v16 = v10(v9, &v19, v18, v11, v12, v13, v14, v15);
    if ((v8 & 1) != 0 || v16)
    {
      [*(a1 + 48) addIndex:a2];
    }
  }

  return [*(a1 + 40) removeAllObjects];
}

- (void)applySectionedChangeDetailsForSingleSection:(id)section dataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges changeMediaVersionHandler:(id)handler
{
  handlerCopy = handler;
  afterChangesCopy = afterChanges;
  changesCopy = changes;
  sectionCopy = section;
  identifier = [changesCopy identifier];
  v15 = xmmword_21AE2D500;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  [(PXGLayout *)self applySectionedChangeDetailsForSingleSection:sectionCopy dataSourceBeforeChanges:changesCopy dataSourceAfterChanges:afterChangesCopy changeMediaVersionHandler:handlerCopy sectionIndexPathBeforeState:&identifier];
}

- (void)applySectionedChangeDetails:(id)details dataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges sublayoutProvider:(id)provider outChangedSections:(id *)sections outSectionsWithItemChanges:(id *)itemChanges changeMediaVersionHandler:(id)handler
{
  v96 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  changesCopy = changes;
  afterChangesCopy = afterChanges;
  providerCopy = provider;
  handlerCopy = handler;
  v17 = [[PXGDataSourceChange alloc] initWithChangeDetails:detailsCopy dataSourceBeforeChanges:changesCopy dataSourceAfterChanges:afterChangesCopy];
  [(PXGLayout *)self setInternalCurrentDataSourceChange:v17];

  v90 = 0u;
  v91 = 0u;
  v18 = [detailsCopy count] == 0;
  v92 = 0u;
  v93 = 0u;
  v19 = detailsCopy;
  v20 = [v19 countByEnumeratingWithState:&v90 objects:v95 count:16];
  selfCopy = self;
  if (v20)
  {
    v21 = v20;
    v22 = *v91;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v91 != v22)
        {
          objc_enumerationMutation(v19);
        }

        sectionChanges = [*(*(&v90 + 1) + 8 * i) sectionChanges];
        hasIncrementalChanges = [sectionChanges hasIncrementalChanges];

        if (!hasIncrementalChanges)
        {
          v18 = 1;
          goto LABEL_11;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v90 objects:v95 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

LABEL_11:
    self = selfCopy;
  }

  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v27 = v19;
  v28 = [sublayoutDataStore count];
  if (handlerCopy)
  {
    v29 = handlerCopy;
  }

  else
  {
    v29 = &__block_literal_global_15304;
  }

  v30 = MEMORY[0x21CEE40A0](v29);

  if (v18)
  {
    v31 = providerCopy;
    -[PXGLayout applySublayoutChangeDetails:countAfterChanges:sublayoutProvider:](self, "applySublayoutChangeDetails:countAfterChanges:sublayoutProvider:", 0, [afterChangesCopy numberOfSections], providerCopy);
  }

  else
  {
    v56 = v30;
    v65 = sublayoutDataStore;
    v58 = afterChangesCopy;
    v59 = changesCopy;
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    indexPathSet = [MEMORY[0x277D3CD78] indexPathSet];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v57 = v27;
    obj = v27;
    v67 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
    if (v67)
    {
      v64 = *v87;
      do
      {
        v35 = 0;
        v36 = indexSet;
        do
        {
          v37 = indexPathSet;
          if (*v87 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v86 + 1) + 8 * v35);
          sectionChanges2 = [v38 sectionChanges];
          insertedIndexes = [sectionChanges2 insertedIndexes];
          v41 = [insertedIndexes count] + v28;
          removedIndexes = [sectionChanges2 removedIndexes];
          v43 = v41 - [removedIndexes count];

          [(PXGLayout *)selfCopy applySublayoutChangeDetails:sectionChanges2 countAfterChanges:v43 sublayoutProvider:providerCopy];
          v44 = [sectionChanges2 indexSetAfterApplyingChangesToIndexSet:v36];
          indexSet = [v44 mutableCopy];

          changedIndexes = [sectionChanges2 changedIndexes];
          [indexSet addIndexes:changedIndexes];

          v46 = [sectionChanges2 indexSetAfterApplyingChangesToIndexSet:indexSet2];
          v47 = [v46 mutableCopy];

          sectionsWithItemChanges = [v38 sectionsWithItemChanges];
          [v47 addIndexes:sectionsWithItemChanges];

          v49 = [v38 indexPathSetAfterApplyingChangesToIndexPathSet:v37 hasIncrementalChanges:0];
          v50 = [v49 mutableCopy];

          sectionsWithItemChanges2 = [v38 sectionsWithItemChanges];
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_2;
          v79[3] = &unk_2782AAE80;
          v80 = v65;
          v81 = selfCopy;
          v28 = v43;
          v82 = v38;
          indexPathSet = v50;
          v83 = indexPathSet;
          indexSet2 = v47;
          v84 = indexSet2;
          v85 = providerCopy;
          [sectionsWithItemChanges2 enumerateIndexesUsingBlock:v79];

          ++v35;
          v36 = indexSet;
        }

        while (v67 != v35);
        v67 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v67);
    }

    if (sections)
    {
      *sections = [indexSet copy];
    }

    changesCopy = v59;
    v27 = v57;
    sublayoutDataStore = v65;
    if (itemChanges)
    {
      *itemChanges = [indexSet2 copy];
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_4;
    v74[3] = &unk_2782AAEA8;
    v52 = obj;
    v75 = v52;
    v76 = selfCopy;
    v77 = indexPathSet;
    v78 = a2;
    v53 = indexPathSet;
    [v53 enumerateDataSourceIdentifiers:v74];
    v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_5;
    v69[3] = &unk_2782AAF18;
    v70 = v65;
    v71 = v52;
    v72 = v54;
    v73 = v56;
    v55 = v54;
    [v53 enumerateItemIndexSetsUsingBlock:v69];

    v30 = v56;
    afterChangesCopy = v58;
    v31 = providerCopy;
  }
}

void __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sublayoutAtIndex:a2];
  v5 = [v4 layoutForItemChanges];
  if (v5 && [*(a1 + 40) shouldApplyItemChangeDetailsToSublayout:v4])
  {
    v6 = [*(a1 + 48) itemChangesInSection:a2];
    if ([v6 hasIncrementalChanges])
    {
      v7 = [v5 numberOfItems];
      v8 = [v6 insertedIndexes];
      v9 = [v8 count] + v7;
      v10 = [v6 removedIndexes];
      v11 = v9 - [v10 count];

      [v5 setNumberOfItems:v11 withChangeDetails:v6];
      v12 = *(a1 + 56);
      v13 = [*(a1 + 48) toDataSourceIdentifier];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_3;
      v14[3] = &unk_2782AAE58;
      v15 = v6;
      [v12 modifyItemIndexSetForDataSourceIdentifier:v13 section:a2 usingBlock:v14];
    }

    else
    {
      [*(a1 + 64) removeIndex:a2];
      [*(a1 + 40) removeSublayoutsInRange:{a2, 1}];
      [*(a1 + 40) insertSublayoutProvider:*(a1 + 72) inRange:{a2, 1}];
    }
  }
}

void __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) lastObject];
  v5 = [v4 toDataSourceIdentifier];

  if (v5 != a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) lastObject];
    [v9 handleFailureInMethod:v6 object:v7 file:@"PXGDataSourceDrivenLayout.m" lineNumber:99 description:{@"Data source identifier in itemsWithChanges %lu != %lu from the change details. allChangeDetails:%@ itemsWithChanges:%@ ", a2, objc_msgSend(v8, "toDataSourceIdentifier"), *(a1 + 32), *(a1 + 48)}];
  }
}

void __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_5(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [a1[4] sublayoutAtIndex:a3];
  v9 = [v8 layoutForItemChanges];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAB58] indexSet];
    v11 = [v9 loadedItemsForItems:v7];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_6;
    v18 = &unk_2782AAED0;
    v23 = a2;
    v24 = a3;
    v19 = a1[5];
    v20 = a1[6];
    v22 = a1[7];
    v12 = v10;
    v21 = v12;
    [v11 enumerateIndexesUsingBlock:&v15];
    if ([v12 count])
    {
      v13 = [v9 numberOfItems];
      v14 = [MEMORY[0x277D3CCC8] changeDetailsWithChangedIndexes:v12];
      [v9 setNumberOfItems:v13 withChangeDetails:v14 changeMediaVersionHandler:&__block_literal_global_16];
    }
  }
}

uint64_t __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v21 = 0u;
  v22 = 0u;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *&v19 = v4;
  *(&v19 + 1) = v5;
  *&v20 = a2;
  *(&v20 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  [MEMORY[0x277D3CDD0] indexPathAfterRevertingChanges:v6 fromIndexPath:&v19 hasIncrementalChanges:0 objectChanged:0 changedProperties:v7];
  if (v21 != *MEMORY[0x277D3CF78])
  {
    v8 = [*(a1 + 40) containsObject:*MEMORY[0x277D3CF80]];
    v9 = *(a1 + 56);
    v10 = *(v9 + 16);
    v19 = v21;
    v20 = v22;
    v18[0] = v4;
    v18[1] = v5;
    v18[2] = a2;
    v18[3] = 0x7FFFFFFFFFFFFFFFLL;
    v16 = v10(v9, &v19, v18, v11, v12, v13, v14, v15);
    if ((v8 & 1) != 0 || v16)
    {
      [*(a1 + 48) addIndex:a2];
    }
  }

  return [*(a1 + 40) removeAllObjects];
}

void __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 changedIndexes];
  [v3 addIndexes:v4];
}

@end