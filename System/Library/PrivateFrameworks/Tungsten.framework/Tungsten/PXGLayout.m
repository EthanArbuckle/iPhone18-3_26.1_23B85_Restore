@interface PXGLayout
+ (id)_defaultAccessibilityIdentifierForAXInfoKind:(int64_t)a3;
+ (unint64_t)scrolledEdgesForVisibleEdges:(unint64_t)a3 scrollableAxis:(int64_t)a4;
- ($105A79951CE75EB7BB90BCA93995B378)styleForSpriteAtIndex:(SEL)a3;
- ($738B17BD11CC339B30296C0EA03CEC2B)entityForSpriteAtIndex:(unsigned int)a3;
- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)infoForSpriteAtIndex:(SEL)a3;
- ($7E6FF06E1E2A477A0598F669E6D2B004)orientedContentTransform;
- ($C4327F77E24267CF92932F349E1559A2)geometryForSpriteAtIndex:(unsigned int)a3;
- ($F075B4A35807C7876885CD3A0A1A7192)displayAssetSourceRespondsTo;
- (BOOL)allowsDanglingUpdatesAssertions;
- (BOOL)allowsSublayoutUpdateCycleAssertions;
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (BOOL)changeVisibleRectToProposedVisibleRect:(CGRect)a3;
- (BOOL)hasPointReferences;
- (BOOL)isDescendantOfLayout:(id)a3;
- (BOOL)isSpriteIndex:(unsigned int)a3 decoratingSpriteWithIndex:(unsigned int *)a4;
- (BOOL)isVisible;
- (BOOL)shouldFaultInContentAtAnchoredContentEdges;
- (CGPoint)_offsetToDescendantLayout:(id)a3;
- (CGPoint)axConvertPoint:(CGPoint)a3 fromDescendantGroup:(id)a4;
- (CGPoint)axConvertPoint:(CGPoint)a3 toDescendantGroup:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 fromDescendantLayout:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 fromLayout:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toDescendantLayout:(id)a4;
- (CGPoint)lastScrollDirection;
- (CGPoint)pointForPointReference:(id)a3;
- (CGRect)anchoringRectForSpriteAtIndex:(unsigned int)a3;
- (CGRect)axConvertRect:(CGRect)a3 fromDescendantGroup:(id)a4;
- (CGRect)axConvertRect:(CGRect)a3 toDescendantGroup:(id)a4;
- (CGRect)bounds;
- (CGRect)clippingRect;
- (CGRect)convertRect:(CGRect)a3 fromDescendantLayout:(id)a4;
- (CGRect)convertRect:(CGRect)a3 fromLayout:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toDescendantLayout:(id)a4;
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
- (_PXGSpriteIndexRange)addSpriteCount:(unsigned int)a3 withInitialState:(id)a4;
- (_PXGSpriteIndexRange)convertRange:(_PXGSpriteIndexRange)a3 fromSublayout:(id)a4;
- (_PXGSpriteIndexRange)convertSpriteIndexRange:(_PXGSpriteIndexRange)a3 fromDescendantLayout:(id)a4;
- (__n128)cameraConfiguration;
- (id)_createAnchorForContentEdges:(unint64_t)a3 priority:(int64_t)a4;
- (id)_createAnchorWithAnchor:(id)a3 resetPriority:(BOOL)a4;
- (id)_createAnchorWithPriority:(int64_t)a3 constraints:(id)a4;
- (id)_paddingForLevel:(int64_t)a3;
- (id)ancestorSharedWithLayout:(id)a3;
- (id)axContainingScrollViewForAXGroup:(id)a3;
- (id)axContainingViewForAXGroup:(id)a3;
- (id)axContentInfoAtSpriteIndex:(unsigned int)a3;
- (id)axLeafForObjectReference:(id)a3;
- (id)axSpriteIndexesInRectDefaultImplementation:(CGRect)a3;
- (id)convertChangeDetails:(id)a3 fromSublayout:(id)a4;
- (id)convertSpriteIndexes:(id)a3 fromDescendantLayout:(id)a4;
- (id)createAnchorForScrollingAnimationTowardsContentEdges:(unint64_t)a3;
- (id)createAnchorForScrollingSpriteAtIndex:(unsigned int)a3 toScrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5;
- (id)createAnchorForScrollingSpriteForObjectReference:(id)a3 toScrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5;
- (id)createAnchorForScrollingSpriteForSpriteReference:(id)a3 normalizedAnchorPoint:(CGPoint)a4 toVisibleLocation:(CGPoint)a5;
- (id)createAnchorForScrollingSpriteForSpriteReference:(id)a3 toScrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5 customOffset:(id)a6;
- (id)createAnchorForScrollingToContentEdges:(unint64_t)a3 padding:(UIEdgeInsets)a4;
- (id)createAnchorForSpriteAtIndex:(unsigned int)a3;
- (id)createAnchorForSpriteReferences:(id)a3;
- (id)createAnchorForVisibleAreaIgnoringEdges:(unint64_t)a3;
- (id)createAnchorFromSuperlayoutWithSublayoutIndex:(int64_t)a3 sublayoutPositionEdges:(unint64_t)a4 ignoringScrollingAnimationAnchors:(BOOL)a5;
- (id)createAnimation;
- (id)createDefaultAnimationForCurrentContext;
- (id)createFenceWithType:(unint64_t)a3;
- (id)createPointReferenceAtPoint:(CGPoint)a3;
- (id)createTransitionWithAnimations:(id)a3;
- (id)diagnosticsItemProvidersInRect:(CGRect)a3;
- (id)dropTargetObjectReferenceForLocation:(CGPoint)a3;
- (id)dynamicSpriteReferenceForObjectReference:(id)a3;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)leafSublayoutForSpriteIndex:(unsigned int)a3;
- (id)navigationObjectReferenceForLocation:(CGPoint)a3;
- (id)objectReferenceForSpriteIndex:(unsigned int)a3;
- (id)spriteReferenceForSpriteIndex:(unsigned int)a3 objectReference:(id)a4;
- (id)spriteReferenceForSpriteReference:(id)a3;
- (id)sublayoutAtIndex:(int64_t)a3 loadIfNeeded:(BOOL)a4;
- (id)sublayoutForSpriteIndex:(unsigned int)a3;
- (id)viewForSpriteIndex:(unsigned int)a3;
- (int64_t)addSublayout:(id)a3;
- (int64_t)anchoredSublayoutIndex;
- (int64_t)indexOfSublayout:(id)a3;
- (int64_t)numberOfSublayouts;
- (int64_t)sublayoutIndexForSpriteIndex:(unsigned int)a3;
- (int64_t)sublayoutIndexForSpriteReference:(id)a3 options:(unint64_t)a4;
- (unint64_t)anchoredContentEdges;
- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)a3;
- (unint64_t)fullyVisibleEdgesWithDefaultTolerance;
- (unint64_t)fullyVisibleEdgesWithEdgeTolerances:(UIEdgeInsets)a3;
- (unsigned)addResizableCapInsets:(id)a3;
- (unsigned)axSpriteIndexClosestToSpriteIndexDefaultImplementation:(unsigned int)a3 inDirection:(unint64_t)a4;
- (unsigned)convertSpriteIndex:(unsigned int)a3 fromLayout:(id)a4;
- (unsigned)convertSpriteIndex:(unsigned int)a3 toDescendantLayout:(id)a4;
- (unsigned)localNumberOfSprites;
- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (unsigned)spriteIndexForSpriteReference:(id)a3 options:(unint64_t)a4;
- (void)_addAnimations:(id)a3;
- (void)_addFences:(id)a3;
- (void)_addHiddenSpriteIndexes:(id)a3;
- (void)_appendDescription:(id)a3 atLevel:(int64_t)a4;
- (void)_destroyModifiedSpriteDataStore;
- (void)_destroySpriteDataStore;
- (void)_ensureModifiedSpriteDataStore;
- (void)_ensureSpriteDataStore;
- (void)_ensureSublayoutDataStore;
- (void)_enumerateSpritesInRange:(_PXGSpriteIndexRange)a3 transform:(id *)a4 spriteOffset:(unsigned int)a5 stop:(BOOL *)a6 usingBlock:(id)a7;
- (void)_enumerateSpritesInRect:(CGRect)a3 transform:(id *)a4 usingBlock:(id)a5;
- (void)_invalidateDecorationForSpriteRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4 invalidateSprites:(BOOL)a5;
- (void)_invalidateStyleOfSpritesWithIndexes:(id)a3;
- (void)_propagateHiddenSpriteIndexes:(id)a3;
- (void)_resetHiddenSpriteIndexes;
- (void)_setNeedsUpdateExternally:(BOOL)a3;
- (void)_updateAnchoring;
- (void)_updateVersion;
- (void)_willAddSublayout:(id)a3;
- (void)addAnchor:(id)a3;
- (void)addAnimation:(id)a3;
- (void)addFence:(id)a3;
- (void)addInteraction:(id)a3;
- (void)addPointReference:(id)a3;
- (void)addSpritesAtIndexes:(id)a3 initialState:(id)a4;
- (void)addSpritesInRange:(_PXGSpriteIndexRange)a3 initialState:(id)a4;
- (void)addTransition:(id)a3;
- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)a3 appliedToLayout:(id)a4;
- (void)applySectionedChangeDetails:(id)a3 dataSourceBeforeChanges:(id)a4 dataSourceAfterChanges:(id)a5 sublayoutProvider:(id)a6 outChangedSections:(id *)a7 outSectionsWithItemChanges:(id *)a8 changeMediaVersionHandler:(id)a9;
- (void)applySectionedChangeDetailsForSingleSection:(id)a3 dataSourceBeforeChanges:(id)a4 dataSourceAfterChanges:(id)a5 changeMediaVersionHandler:(id)a6;
- (void)applySectionedChangeDetailsForSingleSection:(id)a3 dataSourceBeforeChanges:(id)a4 dataSourceAfterChanges:(id)a5 changeMediaVersionHandler:(id)a6 sectionIndexPathBeforeState:(PXSimpleIndexPath *)a7;
- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyFullState:(id)a6;
- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyState:(id)a6;
- (void)applySublayoutChangeDetails:(id)a3 countAfterChanges:(int64_t)a4 sublayoutProvider:(id)a5;
- (void)axAddSubgroupForSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)axRemoveSubgroupForSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
- (void)clearLastVisibleAreaAnchoringInformation;
- (void)containingScrollViewDidScroll:(CGPoint)a3;
- (void)contentSizeDidChange;
- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)a3 applySpriteTransforms:(BOOL)a4 entities:(id *)a5 geometries:(id *)a6 styles:(id *)a7 infos:(id *)a8;
- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)a3 applySpriteTransforms:(BOOL)a4 parentTransform:(id *)a5 parentAlpha:(float)a6 parentClippingRect:(CGRect)a7 parentSublayoutOrigin:(id)a8 entities:(id *)a9 geometries:(id *)a10 styles:(id *)a11 infos:(id *)a12;
- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)a3 toSpriteDataStore:(id)a4;
- (void)copySpritesToDataStore:(id)a3;
- (void)dealloc;
- (void)didAddSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
- (void)didApplySpriteChangeDetails:(id)a3;
- (void)didApplySublayoutChangeDetails:(id)a3 axAdjustedSubgroupChangeDetails:(id)a4 countAfterChanges:(int64_t)a5;
- (void)didChangeSublayoutOrigins;
- (void)didFaultInSublayout:(id)a3 atIndex:(int64_t)a4 fromEstimatedContentSize:(CGSize)a5;
- (void)didUpdate;
- (void)enumerateDescendantsLayoutsBreadthFirstReverseUsingBlock:(id)a3;
- (void)enumerateDescendantsLayoutsUsingBlock:(id)a3;
- (void)enumerateLayoutsForSpritesInRange:(_PXGSpriteIndexRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateLocalSpritesInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)enumerateSpritesInRange:(_PXGSpriteIndexRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateSpritesInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)enumerateSublayoutsForCreatingPointReferenceUsingBlock:(id)a3;
- (void)enumerateSublayoutsForDetailedPlacement:(id)a3 ofItemWithReference:(id)a4 usingBlock:(id)a5;
- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)a3;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3;
- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4;
- (void)hideSpritesForObjectReferences:(id)a3;
- (void)insertSublayout:(id)a3 atIndex:(int64_t)a4;
- (void)insertSublayoutProvider:(id)a3 atIndexes:(id)a4;
- (void)insertSublayoutProvider:(id)a3 inRange:(_NSRange)a4;
- (void)installLayoutCompletionBlock:(id)a3;
- (void)invalidateAllSuperlayoutAnchors;
- (void)invalidateDecoration;
- (void)invalidateDecorationAndSprites;
- (void)invalidateVersion;
- (void)modifySpritesAtIndexes:(id)a3 fullState:(id)a4;
- (void)modifySpritesAtIndexes:(id)a3 state:(id)a4;
- (void)modifySpritesInRange:(_PXGSpriteIndexRange)a3 fullState:(id)a4;
- (void)modifySpritesInRange:(_PXGSpriteIndexRange)a3 state:(id)a4;
- (void)modifySpritesInRect:(CGRect)a3 state:(id)a4;
- (void)moveSpritesInRange:(_PXGSpriteIndexRange)a3 toRange:(_PXGSpriteIndexRange)a4;
- (void)performChangesWithLocalUpdate:(id)a3;
- (void)performRepeatedSublayoutsUpdate:(id)a3;
- (void)performSpriteStylingUpdate:(id)a3;
- (void)removeAnchor:(id)a3;
- (void)removeAnimation:(id)a3;
- (void)removeFromSuperlayout;
- (void)removeInteraction:(id)a3;
- (void)removePointReference:(id)a3;
- (void)removeSpritesAtIndexes:(id)a3;
- (void)removeSpritesInRange:(_PXGSpriteIndexRange)a3;
- (void)removeSublayoutsAtIndexes:(id)a3;
- (void)removeSublayoutsInRange:(_NSRange)a3;
- (void)setAlpha:(double)a3;
- (void)setAppearState:(unint64_t)a3;
- (void)setCameraConfiguration:(float32x4_t *)a3;
- (void)setClippingRect:(CGRect)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setContentSource:(id)a3;
- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)setDisplayScale:(double)a3;
- (void)setEntityManager:(id)a3;
- (void)setFloating:(BOOL)a3;
- (void)setFloatingOffset:(double)a3;
- (void)setHiddenSpriteIndexes:(id)a3;
- (void)setInteractions:(id)a3;
- (void)setLastBaseline:(double)a3;
- (void)setLastScrollDirection:(CGPoint)a3;
- (void)setLayoutQueue:(id)a3;
- (void)setLocalHiddenSpriteIndexes:(id)a3;
- (void)setMediaProvider:(id)a3;
- (void)setNeedsFocusUpdate;
- (void)setNeedsUpdateOfScrollableAxis;
- (void)setReferenceDepth:(double)a3;
- (void)setReferenceOptions:(unsigned __int16)a3;
- (void)setReferenceSize:(CGSize)a3;
- (void)setSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setScrollSpeedRegime:(int64_t)a3;
- (void)setSpriteModifier:(id)a3;
- (void)setSuperlayout:(id)a3;
- (void)setUserInterfaceDirection:(unint64_t)a3;
- (void)setViewEnvironment:(id)a3;
- (void)setVisibleRect:(CGRect)a3;
- (void)sublayout:(id)a3 didAddAnchor:(id)a4;
- (void)sublayout:(id)a3 didApplySpriteChangeDetails:(id)a4 fromDescendentSublayout:(id)a5;
- (void)sublayout:(id)a3 didRemoveAnchor:(id)a4;
- (void)superlayoutDidChange;
- (void)update;
- (void)updateAsRootIfNeeded;
- (void)updateIfNeeded;
- (void)updateStylingForSpritesAtIndexes:(id)a3;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
- (void)willFaultOutSublayout:(id)a3 atIndex:(int64_t)a4;
- (void)willRemoveSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
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
  v2 = self;
  v3 = [(PXGLayout *)v2 superlayout];

  if (v3)
  {
    do
    {
      v4 = [(PXGLayout *)v2 superlayout];

      v5 = [(PXGLayout *)v4 superlayout];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  return v4;
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
  v3 = [(PXGLayout *)self superlayout];
  [v3 setNeedsUpdateOfScrollableAxis];

  v4 = [(PXGLayout *)self scrollDelegate];
  [v4 setNeedsUpdateOfScrollableAxisForLayout:self];
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
  v3 = [(PXGLayout *)self viewEnvironment];
  v4 = [v3 accessibilityEnabled];

  if (v4)
  {
    v5 = [(PXGLayout *)self axGroup];
    [v5 setLeafFeatures:{objc_msgSend(v5, "leafFeatures") | 4}];
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
  v2 = [(PXGLayout *)self sublayoutDataStore];
  v3 = [v2 count];

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
  v3 = [(PXGLayout *)self lastVisibleAreaAnchor];

  if (v3)
  {
    [(PXGLayout *)self setLastVisibleAreaAnchor:0];
  }

  v4 = [(PXGLayout *)self sublayoutDataStore];
  [v4 enumerateSublayoutsUsingBlock:&__block_literal_global_5736];
}

- (void)visibleRectDidChange
{
  if (!self->_isRequestingVisibleRect)
  {
    v4 = [(PXGLayout *)self axGroup];
    [v4 invalidateVisibility];
    [v4 invalidateLeafs];
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
      v7 = [(PXGLayout *)self superlayout];
      [v7 _childDidUpdateWithDuration:v5];

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
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout willUpdate]"];
    [v4 handleFailureInFunction:v3 file:@"PXGLayout.m" lineNumber:634 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
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
  v2 = [(PXGLayout *)self spriteDataStore];
  v3 = [v2 count];

  return v3;
}

- (void)invalidateVersion
{
  self->_version = -atomic_fetch_add(PXGLayoutVersionMakeUnique_lastVersion, 1u);
  v3 = [(PXGLayout *)self superlayout];
  [v3 invalidateVersion];

  v4 = [(PXGLayout *)self axGroup];
  [v4 invalidateVersion];
}

- (BOOL)allowsSublayoutUpdateCycleAssertions
{
  v2 = +[PXTungstenSettings sharedInstance];
  v3 = [v2 enableSublayoutUpdateCycleAssertions];

  return v3;
}

- (void)superlayoutDidChange
{
  v3 = [(PXGLayout *)self superlayout];

  if (!v3)
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
  v3 = [(PXGLayout *)self superlayout];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 sublayoutDataStore];
    v5 = [v4 indexOfSublayout:self];

    v3 = v6;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 removeSublayoutsInRange:{v5, 1}];
      v3 = v6;
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
  v3 = [(PXGLayout *)self superlayout];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isVisible];
  }

  else
  {
    v6 = [(PXGLayout *)self updateDelegate];
    v5 = [v6 layoutIsVisible:self];
  }

  return v5;
}

- (PXGDecoratingLayout)decoratingLayout
{
  v2 = [(PXGLayout *)self superlayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v2 = [(PXGLayout *)self activeAnchor];
  v3 = [v2 anchoredContentEdges];

  return v3;
}

- (void)contentSizeDidChange
{
  v2 = [(PXGLayout *)self axGroup];
  [v2 invalidateVisibility];
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
      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout update]"];
      [v5 handleFailureInFunction:v6 file:@"PXGLayout.m" lineNumber:644 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXGLayout.m" lineNumber:650 description:{@"still needing to update %lu after update pass", self->_updateFlags.needsUpdate}];
    }
  }

  v9 = [(PXGLayout *)self axGroup];
  [v9 updateIfNeeded];
}

- (void)_updateVersion
{
  version = self->_version;
  if (version < 0)
  {
    self->_version = -version;
    v5 = [MEMORY[0x277D3CCC8] changeDetailsWithNoChanges];
    [(PXGLayout *)self adjustReferencedSpriteIndexesWithChangeDetails:v5 appliedToLayout:self];

    [(PXGLayout *)self updateIfNeeded];
  }
}

- (void)_updateAnchoring
{
  v48 = *MEMORY[0x277D85DE8];
  isUpdatingAnchoring = self->_isUpdatingAnchoring;
  self->_isUpdatingAnchoring = 1;
  v4 = [(PXGLayout *)self activeAnchor];
  if ([v4 needsUpdate])
  {
    [v4 setNeedsUpdate:0];
    [(PXGLayout *)self visibleRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 adjustVisibleRect:?];
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
          v37 = self;
          v38 = 2112;
          v39 = v34;
          v40 = 2112;
          v41 = v35;
          v42 = 2112;
          v43 = v4;
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
        v37 = v28;
        v38 = 2048;
        v39 = nestedAnchorVisibleRectChanges;
        v40 = 2112;
        v41 = v31;
        v42 = 2112;
        v43 = v32;
        v44 = 2112;
        v45 = v33;
        v46 = 2112;
        v47 = v4;
        _os_log_impl(&dword_21AD38000, v26, OS_LOG_TYPE_DEFAULT, "%@ %ld nested visibleRect changed:%@ %@->%@ by anchor:%@", &v36, 0x3Eu);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if ([v4 isAutoInvalidated])
  {
    [v4 invalidate];
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
  v3 = [(PXGLayout *)self superlayout];

  if (v3)
  {
    v18 = 0u;
    v4 = [(PXGLayout *)self superlayout:0];
    v5 = [v4 sublayoutDataStore];
    v6 = v5;
    if (v5)
    {
      [v5 geometryForSublayout:self];
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
  v4 = [(PXGLayout *)self axSpriteIndexes];
  if ([v4 count])
  {
    [v3 addIndex:{objc_msgSend(v4, "firstIndex")}];
    [v3 addIndex:{objc_msgSend(v4, "lastIndex")}];
  }

  return v3;
}

- (NSIndexSet)axSelectedSpriteIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA78]);
  v4 = [(PXGLayout *)self decoratingLayout];
  v5 = [v4 selectionDecorationSource];

  if (v5)
  {
    v6 = [v5 selectedSpriteIndexesInLayout:self];
    v7 = [(PXGLayout *)self axSpriteIndexes];
    v8 = [v7 px_intersectionWithIndexSet:v6];

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
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGLayout.m" lineNumber:656 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
  v3 = [(PXGLayout *)self axSpriteIndexes];
  v4 = [(PXGLayout *)self spriteDataStore];
  if ([v3 lastIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 lastIndex];
    if (v5 > [v4 count])
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
  v7 = [v4 spriteAtIndexes:v3 inRect:?];

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
  v2 = *(a1 + 816);
  *(a2 + 160) = *(a1 + 800);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 832);
  v3 = *(a1 + 752);
  *(a2 + 96) = *(a1 + 736);
  *(a2 + 112) = v3;
  v4 = *(a1 + 784);
  *(a2 + 128) = *(a1 + 768);
  *(a2 + 144) = v4;
  v5 = *(a1 + 688);
  *(a2 + 32) = *(a1 + 672);
  *(a2 + 48) = v5;
  v6 = *(a1 + 720);
  *(a2 + 64) = *(a1 + 704);
  *(a2 + 80) = v6;
  result = *(a1 + 656);
  *a2 = *(a1 + 640);
  *(a2 + 16) = result;
  return result;
}

- (void)enumerateSublayoutsForCreatingPointReferenceUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXGLayout *)self sublayoutDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__PXGLayout_PXGPointReference__enumerateSublayoutsForCreatingPointReferenceUsingBlock___block_invoke;
  v7[3] = &unk_2782A79F0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateSublayoutsUsingBlock:v7];
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
    v8 = [(PXGLayout *)self sublayoutDataStore];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__PXGLayout_PXGPointReference__hasPointReferences__block_invoke;
    v10[3] = &unk_2782A79C8;
    v10[4] = &v15;
    [v8 enumerateSublayoutsUsingBlock:v10];

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

- (CGPoint)pointForPointReference:(id)a3
{
  v4 = a3;
  [v4 point];
  v6 = v5;
  v8 = v7;
  v9 = [v4 layout];

  if (v9)
  {
    if (v9 != self)
    {
      [(PXGLayout *)self convertPoint:v9 fromDescendantLayout:v6, v8];
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

- (id)createPointReferenceAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXGLayout *)self sublayoutDataStore];
  v7 = [(PXGLayout *)self definesContextForPointReferences];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PXGLayout_PXGPointReference__createPointReferenceAtPoint___block_invoke;
    v12[3] = &unk_2782A7978;
    v12[4] = &v13;
    [v6 enumerateSublayoutsAtPoint:v12 usingBlock:{x, y}];
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

- (void)enumerateSublayoutsForDetailedPlacement:(id)a3 ofItemWithReference:(id)a4 usingBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PXGLayout *)self sublayoutDataStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__PXGLayout_PXGItemPlacement__enumerateSublayoutsForDetailedPlacement_ofItemWithReference_usingBlock___block_invoke;
  v12[3] = &unk_2782A7D10;
  v13 = v7;
  v14 = v8;
  v10 = v7;
  v11 = v8;
  [v9 enumerateSublayoutsUsingBlock:v12];
}

- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__PXGLayout_PXGItemPlacement__setDetailedPlacementOverride_forItemReference___block_invoke;
  v8[3] = &unk_2782A7CE8;
  v9 = v6;
  v7 = v6;
  [(PXGLayout *)self enumerateSublayoutsForDetailedPlacement:v7 ofItemWithReference:a4 usingBlock:v8];
}

- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__PXGLayout_PXGItemPlacement__getDetailedPresentedPlacement_forItemReference___block_invoke;
  v8[3] = &unk_2782A7CE8;
  v9 = v6;
  v7 = v6;
  [(PXGLayout *)self enumerateSublayoutsForDetailedPlacement:v7 ofItemWithReference:a4 usingBlock:v8];
}

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4290;
  v16 = __Block_byref_object_dispose__4291;
  v17 = 0;
  v5 = [(PXGLayout *)self sublayoutDataStore];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__PXGLayout_PXGViewControllerTransitionEndPoint__itemPlacementControllerForItemReference___block_invoke;
  v9[3] = &unk_2782AA970;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 enumerateSublayoutsUsingBlock:v9];

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

- (CGRect)anchoringRectForSpriteAtIndex:(unsigned int)a3
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
  [(PXGLayout *)self copyLayoutForSpritesInRange:a3 | 0x100000000 applySpriteTransforms:0 entities:&v10 geometries:v9 styles:v11 infos:v7];
  PXRectWithCenterAndSize();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)invalidateAllSuperlayoutAnchors
{
  v2 = self;
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = [v3 activeAnchor];
      [v4 invalidate];

      v5 = [v3 superlayout];

      v3 = v5;
    }

    while (v5);
  }
}

- (id)_createAnchorWithAnchor:(id)a3 resetPriority:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 copyWithLayout:self];
  v7 = [MEMORY[0x277D3CCC8] changeDetailsWithNoIncrementalChanges];
  [v6 adjustReferencedSpriteIndexesWithChangeDetails:v7 appliedToLayout:self];

  if (v4)
  {
    [v6 setPriority:1];
  }

  [(PXGLayout *)self addAnchor:v6];

  return v6;
}

- (id)createAnchorFromSuperlayoutWithSublayoutIndex:(int64_t)a3 sublayoutPositionEdges:(unint64_t)a4 ignoringScrollingAnimationAnchors:(BOOL)a5
{
  v5 = a5;
  v9 = [(PXGLayout *)self superlayout];
  v10 = [v9 activeAnchor];
  v11 = v10;
  if (v5 && [v10 isScrollingAnimationAnchor])
  {

    v11 = 0;
  }

  v12 = [v11 type];
  if ((v12 - 3) >= 3)
  {
    if ((v12 - 1) <= 1)
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
      v19 = a3;
      v17 = v9;
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
    v13 = [v11 edges] & a4;
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

- (id)createAnchorForScrollingAnimationTowardsContentEdges:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a3 & 8) != 0 && (a3 & 0xA) != 8)
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_error_impl(&dword_21AD38000, v5, OS_LOG_TYPE_ERROR, "invalid edges %li", &v8, 0xCu);
    }
  }

  v6 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v6 setType:5];
  [(PXGAnchor *)v6 setEdges:a3];
  [(PXGLayout *)self addAnchor:v6];

  return v6;
}

- (id)createAnchorForScrollingToContentEdges:(unint64_t)a3 padding:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v15 = *MEMORY[0x277D85DE8];
  if ((a3 & 8) != 0 && (a3 & 0xA) != 8)
  {
    v10 = PXAssertGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = a3;
      _os_log_error_impl(&dword_21AD38000, v10, OS_LOG_TYPE_ERROR, "invalid edges %li", &v13, 0xCu);
    }
  }

  v11 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v11 setType:4];
  [(PXGAnchor *)v11 setEdges:a3];
  [(PXGAnchor *)v11 setPadding:top, left, bottom, right];
  [(PXGLayout *)self addAnchor:v11];

  return v11;
}

- (id)_createAnchorForContentEdges:(unint64_t)a3 priority:(int64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a3 & 8) != 0 && (a3 & 0xA) != 8)
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_error_impl(&dword_21AD38000, v7, OS_LOG_TYPE_ERROR, "invalid edges %li", &v10, 0xCu);
    }
  }

  v8 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v8 setType:3];
  [(PXGAnchor *)v8 setEdges:a3];
  [(PXGLayout *)self estimatedContentSize];
  [(PXGAnchor *)v8 setContentSize:?];
  [(PXGLayout *)self visibleRect];
  [(PXGAnchor *)v8 setVisibleRect:?];
  [(PXGAnchor *)v8 setPriority:a4];
  [(PXGLayout *)self addAnchor:v8];

  return v8;
}

- (id)createAnchorForScrollingSpriteForSpriteReference:(id)a3 normalizedAnchorPoint:(CGPoint)a4 toVisibleLocation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v14[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v11 setType:2];
  v14[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  [(PXGAnchor *)v11 setSpriteReferences:v12];
  [(PXGAnchor *)v11 setVisibleLocation:x, y];
  [(PXGAnchor *)v11 setNormalizedAnchorPoint:v8, v7];
  [(PXGLayout *)self addAnchor:v11];

  return v11;
}

- (id)createAnchorForScrollingSpriteForSpriteReference:(id)a3 toScrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5 customOffset:(id)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v22 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a6;
  if ((a4 & 0x30) != 0 && (a4 & 0x38) != 0x20 && (a4 & 0x38) != 0x10 || (a4 & 7) > 4 || (a4 & 7) == 3)
  {
    v15 = PXAssertGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v21 = a4;
      _os_log_error_impl(&dword_21AD38000, v15, OS_LOG_TYPE_ERROR, "invalid scroll position %li", buf, 0xCu);
    }
  }

  v16 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v16 setType:2];
  v19 = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  [(PXGAnchor *)v16 setSpriteReferences:v17];

  [(PXGAnchor *)v16 setScrollPosition:a4];
  [(PXGAnchor *)v16 setPadding:top, left, bottom, right];
  [(PXGAnchor *)v16 setCustomOffset:v14];
  [(PXGLayout *)self addAnchor:v16];

  return v16;
}

- (id)createAnchorForScrollingSpriteAtIndex:(unsigned int)a3 toScrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5
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
  v7[6] = a4;
  v8 = a5;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:a3 | 0x100000000 options:1 usingBlock:v7];
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

- (id)createAnchorForScrollingSpriteForObjectReference:(id)a3 toScrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v11 = [(PXGLayout *)self spriteReferenceForObjectReference:a3];
  v12 = [(PXGLayout *)self createAnchorForScrollingSpriteForSpriteReference:v11 toScrollPosition:a4 padding:top, left, bottom, right];

  return v12;
}

- (id)_createAnchorWithPriority:(int64_t)a3 constraints:(id)a4
{
  v7 = a4;
  v8 = objc_alloc_init(PXGAnchorConstraintsBuilder);
  v7[2](v7, v8);

  v9 = [(PXGAnchorConstraintsBuilder *)v8 constraints];
  v10 = [[PXGAnchor alloc] initWithLayout:self];
  [(PXGAnchor *)v10 setType:1];
  [(PXGAnchor *)v10 setPriority:a3];
  [(PXGAnchor *)v10 setConstraints:v9];
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

- (id)createAnchorForSpriteReferences:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__PXGLayout_PXGAnchor__createAnchorForSpriteReferences___block_invoke;
  v8[3] = &unk_2782A8C58;
  v9 = v4;
  v5 = v4;
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

- (id)createAnchorForSpriteAtIndex:(unsigned int)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(PXGLayout *)self spriteReferenceForSpriteIndex:*&a3 objectReference:0];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [(PXGLayout *)self createAnchorForSpriteReferences:v5];

  return v6;
}

- (id)createAnchorForVisibleAreaIgnoringEdges:(unint64_t)a3
{
  v5 = [(PXGLayout *)self lastVisibleAreaAnchor];
  if (![v5 canBeReused] || a3 && objc_msgSend(v5, "type") == 3)
  {
    if (a3 == 15 || (v6 = [PXGLayout scrolledEdgesForVisibleEdges:[(PXGLayout *)self fullyVisibleEdgesWithDefaultTolerance]& ~a3 scrollableAxis:[(PXGLayout *)self scrollableAxis]]) == 0)
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
    v9 = [v7 layout];
    v10 = [v9 activeAnchor];

    if (v8 == v10)
    {
      v11 = [MEMORY[0x277CBEAA8] date];
      [v8 setDate:v11];

      [(PXGLayout *)self setLastVisibleAreaAnchor:v8];
    }
  }

  else
  {
    v8 = [(PXGLayout *)self _createAnchorWithAnchor:v5 resetPriority:0];
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
  v2 = [(PXGLayout *)self rootLayout];
  v3 = [v2 animations];

  return v3;
}

- (id)createDefaultAnimationForCurrentContext
{
  v3 = [(PXGLayout *)self superlayout];

  if (v3)
  {
    v4 = [(PXGLayout *)self superlayout];
    v5 = [v4 createDefaultAnimationForCurrentContext];
  }

  else
  {
    v5 = [(PXGLayout *)self createAnimation];
  }

  return v5;
}

- (id)createAnimation
{
  v3 = [[PXGAnimation alloc] initWithLayout:self];
  v4 = [(PXGLayout *)self rootLayout];
  [v4 addAnimation:v3];

  return v3;
}

- (void)removeInteraction:(id)a3
{
  v8 = a3;
  v4 = [(PXGLayout *)self interactions];
  v5 = [v4 containsObject:v8];

  if (v5)
  {
    v6 = [(PXGLayout *)self interactions];
    v7 = [v6 mutableCopy];

    [v7 removeObject:v8];
    [(PXGLayout *)self setInteractions:v7];
    [v8 setLayout:0];
  }
}

- (void)addInteraction:(id)a3
{
  v8 = a3;
  v4 = [(PXGLayout *)self interactions];
  v5 = [v4 containsObject:v8];

  if ((v5 & 1) == 0)
  {
    [v8 setLayout:self];
    v6 = [(PXGLayout *)self interactions];
    v7 = [v6 arrayByAddingObject:v8];
    [(PXGLayout *)self setInteractions:v7];
  }
}

- (int64_t)sublayoutIndexForSpriteReference:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  if ([v6 spriteIndex] != -1)
  {
    v7 = [v6 layoutVersion];
    v8 = [v6 layout];
    if (v7 == [v8 version])
    {
      v9 = [v6 layout];

      if (v9)
      {
        v10 = [v6 spriteIndex];
        v11 = [v6 layout];
        v12 = [(PXGLayout *)self convertSpriteIndex:v10 fromLayout:v11];

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

  v16 = [v6 objectReference];

  if (v16)
  {
    v17 = [v6 objectReference];
    v19 = 0;
    v14 = [(PXGLayout *)self sublayoutIndexForObjectReference:v17 options:a4 updatedObjectReference:&v19];
    v15 = v19;

    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15)
    {
      [v6 setObjectReference:v15];
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

- (unsigned)spriteIndexForSpriteReference:(id)a3 options:(unint64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 layout];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 version];
    if ([v6 layoutVersion] == v9)
    {
      v10 = [v6 spriteIndex];
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }

    v12 = [v6 objectReference];
    v13 = v12;
    if (v10 != -1 || !v12)
    {
      goto LABEL_21;
    }

    if ([v8 allowsObjectReferenceSpriteIndexLookup])
    {
      v21 = 0;
      v10 = [v8 spriteIndexForObjectReference:v13 options:a4 updatedObjectReference:&v21];
      v14 = v21;
      v15 = v8;
      v16 = v13;
      v17 = v16;
      if (v10 == -1)
      {
      }

      else
      {
        if ([v15 numberOfSprites] <= v10)
        {
          v19 = [MEMORY[0x277CCA890] currentHandler];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXValidateLayoutSpriteIndexForObjectReference(PXGLayout * _Nonnull __strong, PXGSpriteIndex, id  _Nonnull __strong)"}];
          [v19 handleFailureInFunction:v20 file:@"PXGLayout_Internal.h" lineNumber:227 description:{@"%@ returned invalid spriteIndex %li for objectReference %@", v15, v10, v17}];
        }

        [v6 setSpriteIndex:v10];
        [v6 setLayoutVersion:v9];
        if (v14)
        {
          [v6 setObjectReference:v14];
        }
      }
    }

    else
    {
      if ((a4 & 0x400) != 0)
      {
        v10 = 0xFFFFFFFFLL;
LABEL_21:
        v11 = [(PXGLayout *)self convertSpriteIndex:v10 fromLayout:v8];

        goto LABEL_22;
      }

      v14 = PXAssertGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = v8;
        v24 = 2112;
        v25 = v6;
        _os_log_error_impl(&dword_21AD38000, v14, OS_LOG_TYPE_ERROR, "layout %@ is in the midst of its update pass, it is thus invalid to query the sprite index for sprite reference %@", buf, 0x16u);
      }

      v10 = 0xFFFFFFFFLL;
    }

    goto LABEL_21;
  }

  v11 = -1;
LABEL_22:

  return v11;
}

- (id)spriteReferenceForSpriteReference:(id)a3
{
  v4 = a3;
  v5 = [v4 layout];
  v6 = v5;
  if (v5 == self)
  {
    v7 = [v4 layoutVersion];
    v8 = [(PXGLayout *)self version];

    if (v7 == v8)
    {
      v9 = v4;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = [[PXGSpriteReference alloc] _init];
  v10 = [v4 objectReference];
  [v9 setObjectReference:v10];

  [v9 setIsDynamic:{objc_msgSend(v4, "isDynamic")}];
  [v9 setLayout:self];
LABEL_6:

  return v9;
}

- (id)dynamicSpriteReferenceForObjectReference:(id)a3
{
  v4 = a3;
  v5 = [[PXGSpriteReference alloc] _init];
  [v5 setObjectReference:v4];

  [v5 setLayout:self];
  [v5 setIsDynamic:1];

  return v5;
}

- (id)spriteReferenceForSpriteIndex:(unsigned int)a3 objectReference:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [[PXGSpriteReference alloc] _init];
  [v7 setSpriteIndex:v4];
  if (v4 != -1)
  {
    [v7 setLayoutVersion:{-[PXGLayout version](self, "version")}];
    if (!v6)
    {
      if ([(PXGLayout *)self allowsObjectReferenceSpriteIndexLookup])
      {
        v6 = [(PXGLayout *)self objectReferenceForSpriteIndex:v4];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  [v7 setObjectReference:v6];
  [v7 setLayout:self];

  return v7;
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXGLayout *)self axNextResponder];
  LOBYTE(a4) = [v10 axGroup:v9 didRequestToPerformAction:a4 userInfo:v8];

  return a4;
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXGLayout *)self axNextResponder];
  [v10 axGroup:v9 didChange:a4 userInfo:v8];
}

- (id)axContainingViewForAXGroup:(id)a3
{
  v3 = [(PXGLayout *)self axContainingScrollViewForAXGroup:a3];
  v4 = [v3 superview];
  if (v4)
  {
    do
    {
      v5 = v4;
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

      v4 = [v5 superview];
    }

    while (v4 && !v8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)axContainingScrollViewForAXGroup:(id)a3
{
  v4 = a3;
  v5 = [(PXGLayout *)self axNextResponder];
  v6 = [v5 axContainingScrollViewForAXGroup:v4];

  return v6;
}

- (id)axLeafForObjectReference:(id)a3
{
  v4 = [(PXGLayout *)self spriteIndexForObjectReference:a3];
  v5 = [(PXGLayout *)self leafSublayoutForSpriteIndex:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 convertSpriteIndex:v4 fromLayout:self];
    v8 = [v6 axGroup];
    v9 = [v8 loadLeafAtSpriteIndexIfNeeded:v7 usingOptions:1];

    v10 = [v6 axGroup];
    v11 = [v10 loadedLeafAtSpriteIndex:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)a3
{
  v4 = [(PXGLayout *)self spriteDataStore];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else if (PXGAXInfoKindForMediaKind(*([v4 infos] + 40 * a3 + 1)) == 6)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (unsigned)axSpriteIndexClosestToSpriteIndexDefaultImplementation:(unsigned int)a3 inDirection:(unint64_t)a4
{
  if (a3 == -1 || [(PXGLayout *)self localNumberOfSprites]> a3)
  {
    if (a4 - 4 < 2)
    {
      v7 = [(PXGLayout *)self axSpriteIndexes];
      v8 = [v7 indexGreaterThanIndex:a3];
      goto LABEL_9;
    }

    if (a4 == 6 || a4 == 3)
    {
      v7 = [(PXGLayout *)self axSpriteIndexes];
      v8 = [v7 indexLessThanIndex:a3];
LABEL_9:
      v9 = v8;

      return v9;
    }
  }

  return -1;
}

- (id)axSpriteIndexesInRectDefaultImplementation:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v9 = [(PXGLayout *)self axSpriteIndexes];
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
  [v9 enumerateIndexesUsingBlock:v14];

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

- (id)axContentInfoAtSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v52 = *MEMORY[0x277D85DE8];
  v5 = [(PXGLayout *)self spriteDataStore];
  if ([v5 count] <= v3)
  {
    goto LABEL_11;
  }

  v6 = [v5 infos] + 40 * v3;
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
      v13 = ([v5 geometries] + 32 * v3);
      v30 = *v13;
      v31 = v13[1];
      v14 = ([v5 styles] + 160 * v3);
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
      v20 = [(PXGLayout *)self decoratingLayout];
      if (v20)
      {
        v21 = [(PXGLayout *)self decoratingLayout];
        v22 = [v21 focusRingType];
      }

      else
      {
        v22 = 1;
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
      v24 = ([v5 styles] + 160 * v3);
      LODWORD(v25) = v24[9];
      LODWORD(v26) = v24[10];
      LODWORD(v27) = v24[11];
      LODWORD(v28) = v24[12];
      [v12 setSpriteStyleCornerRadius:{v25, v26, v27, v28}];
      [v12 setFocusRingType:v22];
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

- (CGPoint)axConvertPoint:(CGPoint)a3 toDescendantGroup:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v19 = [MEMORY[0x277CCA890] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    v23 = [v8 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"descendantGroup", v21, v23}];
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"descendantGroup", v21}];
  }

LABEL_3:
  v9 = [v8 containingLayout];

  if (v9)
  {
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    v12 = [v8 containingLayout];
    [(PXGLayout *)self convertRect:v12 toDescendantLayout:x, y, v10, v11];
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

- (CGPoint)axConvertPoint:(CGPoint)a3 fromDescendantGroup:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v19 = [MEMORY[0x277CCA890] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    v23 = [v8 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:116 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"descendantGroup", v21, v23}];
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:116 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"descendantGroup", v21}];
  }

LABEL_3:
  v9 = [v8 containingLayout];

  if (v9)
  {
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    v12 = [v8 containingLayout];
    [(PXGLayout *)self convertRect:v12 fromDescendantLayout:x, y, v10, v11];
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

- (CGRect)axConvertRect:(CGRect)a3 toDescendantGroup:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v25 = [MEMORY[0x277CCA890] currentHandler];
    v28 = objc_opt_class();
    v27 = NSStringFromClass(v28);
    v29 = [v10 px_descriptionForAssertionMessage];
    [v25 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:107 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"descendantGroup", v27, v29}];
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [v25 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:107 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"descendantGroup", v27}];
  }

LABEL_3:
  v11 = [v10 containingLayout];

  if (v11)
  {
    v12 = [v10 containingLayout];
    [(PXGLayout *)self convertRect:v12 toDescendantLayout:x, y, width, height];
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

- (CGRect)axConvertRect:(CGRect)a3 fromDescendantGroup:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v25 = [MEMORY[0x277CCA890] currentHandler];
    v28 = objc_opt_class();
    v27 = NSStringFromClass(v28);
    v29 = [v10 px_descriptionForAssertionMessage];
    [v25 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:98 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"descendantGroup", v27, v29}];
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [v25 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:98 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"descendantGroup", v27}];
  }

LABEL_3:
  v11 = [v10 containingLayout];

  if (v11)
  {
    v12 = [v10 containingLayout];
    [(PXGLayout *)self convertRect:v12 fromDescendantLayout:x, y, width, height];
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

- (void)axRemoveSubgroupForSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v5 = a5;
  v7 = [(PXGLayout *)self axGroup];
  if (v7)
  {
    v9 = v7;
    if (v5)
    {
      [v7 unloadSubgroupAtIndex:a4];
    }

    else
    {
      v8 = [MEMORY[0x277D3CCC8] changeDetailsWithRemovedIndexRange:{a4, 1}];
      [v9 updateSubgroupsWithChangeDetails:v8];
    }

    v7 = v9;
  }
}

- (void)axAddSubgroupForSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v5 = a5;
  v11 = a3;
  v8 = [(PXGLayout *)self axGroup];
  if (v8)
  {
    if ((v5 & 1) == 0)
    {
      v9 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{a4, 1}];
      [v8 updateSubgroupsWithChangeDetails:v9];
    }

    v10 = [v11 axGroup];
    [v8 loadSubgroup:v10 atIndex:a4];
  }
}

+ (id)_defaultAccessibilityIdentifierForAXInfoKind:(int64_t)a3
{
  if (a3 > 7)
  {
    return @"mediaKind_text";
  }

  else
  {
    return off_2782A93C0[a3];
  }
}

- (NSArray)pendingFences
{
  v2 = [(PXGLayout *)self rootLayout];
  v3 = [v2 fences];

  return v3;
}

- (id)createFenceWithType:(unint64_t)a3
{
  v4 = [[PXGFence alloc] initWithLayout:self type:a3];
  v5 = [(PXGLayout *)self rootLayout];
  [v5 addFence:v4];

  return v4;
}

- (BOOL)isSpriteIndex:(unsigned int)a3 decoratingSpriteWithIndex:(unsigned int *)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__PXGLayout_PXGDecoratingLayout__isSpriteIndex_decoratingSpriteWithIndex___block_invoke;
  v7[3] = &unk_2782A9FE0;
  v7[4] = self;
  v7[5] = &v12;
  v7[6] = &v8;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:a3 | 0x100000000 options:1 usingBlock:v7];
  if (a4)
  {
    *a4 = *(v9 + 6);
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

- (void)_invalidateDecorationForSpriteRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4 invalidateSprites:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(PXGLayout *)self superlayout];
  [v9 _invalidateDecorationForSpriteRange:a3 inLayout:v8 invalidateSprites:v5];
}

- (void)invalidateDecorationAndSprites
{
  v3 = [(PXGLayout *)self localNumberOfSprites]<< 32;

  [(PXGLayout *)self _invalidateDecorationForSpriteRange:v3 inLayout:self invalidateSprites:1];
}

- (id)createTransitionWithAnimations:(id)a3
{
  v4 = a3;
  v5 = [[PXGTransition alloc] initWithAnimations:v4 layout:self];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__PXGLayout_PXGTransition__createTransitionWithAnimations___block_invoke;
  v9[3] = &unk_2782AA4E8;
  v6 = v5;
  v10 = v6;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [(PXGLayout *)self rootLayout];
  [v7 addTransition:v6];

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
  v4 = [(PXGLayout *)self rootLayout];
  v3 = [v4 focusDelegate];
  [v3 setNeedsFocusUpdateForLayout:self];
}

- (void)setCameraConfiguration:(float32x4_t *)a3
{
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a3[1], a1[41]), vceqq_f32(*a3, a1[40])), vandq_s8(vceqq_f32(a3[2], a1[42]), vceqq_f32(a3[3], a1[43])))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a3[6], a1[46]), vceqq_f32(a3[7], a1[47])), vandq_s8(vceqq_f32(a3[5], a1[45]), vceqq_f32(a3[4], a1[44])))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a3[9], a1[49]), vceqq_f32(a3[8], a1[48])), vandq_s8(vceqq_f32(a3[10], a1[50]), vceqq_f32(a3[11], a1[51])))) & 0x80000000) == 0 || (v4 = vceqq_f32(a3[12], a1[52]), v4.i32[3] = v4.i32[2], (vminvq_u32(v4) & 0x80000000) == 0))
  {
    a1[40] = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = a3[4];
    a1[43] = a3[3];
    a1[44] = v7;
    a1[41] = v5;
    a1[42] = v6;
    v8 = a3[5];
    v9 = a3[6];
    v10 = a3[8];
    a1[47] = a3[7];
    a1[48] = v10;
    a1[45] = v8;
    a1[46] = v9;
    v11 = a3[9];
    v12 = a3[10];
    v13 = a3[12];
    a1[51] = a3[11];
    a1[52] = v13;
    a1[49] = v11;
    a1[50] = v12;
    v14 = [(float32x4_t *)a1 updateDelegate];
    [v14 layoutNeedsRenderUpdate:a1];
  }
}

- (void)enumerateDescendantsLayoutsBreadthFirstReverseUsingBlock:(id)a3
{
  v4 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v6 addObject:self];
  v7 = [MEMORY[0x277CBEB68] null];
  [v6 addObject:v7];
  while (1)
  {

    v7 = [v6 firstObject];

    if (v7)
    {
      v7 = [v6 firstObject];
      [v6 removeObject:v7];
    }

    v8 = [MEMORY[0x277CBEB68] null];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      break;
    }

    if (v7)
    {
      [v5 addObject:v7];
    }

    v10 = [v7 sublayoutDataStore];
    for (i = 0; i < [v10 count]; ++i)
    {
      v12 = [v10 sublayoutAtIndex:i];
      if (v12)
      {
        [v6 addObject:v12];
      }
    }

LABEL_7:
  }

  if ([v6 count])
  {
    v10 = [MEMORY[0x277CBEB68] null];
    [v6 addObject:v10];
    goto LABEL_7;
  }

  v13 = [v5 reverseObjectEnumerator];
  v14 = [v13 allObjects];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__PXGLayout_enumerateDescendantsLayoutsBreadthFirstReverseUsingBlock___block_invoke;
  v16[3] = &unk_2782AADD0;
  v15 = v4;
  v17 = v15;
  v18 = v19;
  [v14 enumerateObjectsUsingBlock:v16];

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

- (void)enumerateDescendantsLayoutsUsingBlock:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15[0] = 0;
  v4[2](v4, self, v15);
  if ((v13[3] & 1) == 0)
  {
    v5 = [(PXGLayout *)self sublayoutDataStore];
    v6 = 0;
    do
    {
      if (v6 >= [v5 count])
      {
        break;
      }

      v7 = [v5 sublayoutAtIndex:v6];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __51__PXGLayout_enumerateDescendantsLayoutsUsingBlock___block_invoke;
      v9[3] = &unk_2782AADA8;
      v10 = v4;
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

- (id)diagnosticsItemProvidersInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(PXGLayout *)self sublayoutDataStore];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __44__PXGLayout_diagnosticsItemProvidersInRect___block_invoke;
  v16 = &unk_2782AAD80;
  v17 = v8;
  v18 = self;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v10 = v8;
  [v9 enumerateSublayoutsInRect:&v13 usingBlock:{x, y, width, height}];

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

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    objc_storeStrong(&self->_mediaProvider, a3);
    v6 = [(PXGLayout *)self sublayoutDataStore];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__PXGLayout_setMediaProvider___block_invoke;
    v7[3] = &unk_2782AA878;
    v8 = v5;
    [v6 enumerateSublayoutsUsingBlock:v7];

    [(PXGLayout *)self mediaProviderDidChange];
  }
}

- (void)_appendDescription:(id)a3 atLevel:(int64_t)a4
{
  v6 = a3;
  v7 = a4 + 1;
  v8 = [(PXGLayout *)self _paddingForLevel:a4 + 1];
  v9 = [(PXGLayout *)self description];
  [v6 appendFormat:@"%@", v9];

  if (!a4)
  {
    [(PXGLayout *)self contentSize];
    v10 = NSStringFromCGSize(v21);
    [(PXGLayout *)self visibleRect];
    v11 = NSStringFromCGRect(v22);
    [v6 appendFormat:@", contentSize=%@, visibleRect=%@", v10, v11];
  }

  v12 = [(PXGLayout *)self briefDiagnosticDescription];
  v13 = v12;
  if (v12)
  {
    [v6 appendFormat:@", %@", v12];
  }

  [v6 appendString:@"\n"];
  v14 = [(PXGLayout *)self sublayoutDataStore];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__PXGLayout__appendDescription_atLevel___block_invoke;
  v17[3] = &unk_2782AAD58;
  v17[4] = self;
  v18 = v6;
  v19 = v8;
  v20 = v7;
  v15 = v8;
  v16 = v6;
  [v14 enumerateSublayoutsUsingBlock:v17];
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

- (id)_paddingForLevel:(int64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (a3 >= 1)
  {
    do
    {
      [v4 appendString:@"   | "];
      --a3;
    }

    while (a3);
  }

  v5 = [v4 copy];

  return v5;
}

- (NSString)parentDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = self;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      if ([v3 length])
      {
        [v3 appendString:@"\n"];
      }

      if (v6)
      {
        for (i = 1; i <= v6; ++i)
        {
          [v3 appendString:@"    "];
        }
      }

      v8 = [v5 description];
      [v3 appendString:v8];

      v9 = [v5 superlayout];

      ++v6;
      v5 = v9;
    }

    while (v9);
  }

  [v3 appendString:@" (root)"];

  return v3;
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

  v21 = [(PXGLayout *)self sublayoutDataStore];
  v22 = [v21 count];
  if (v22 >= 1)
  {
    v23 = v22;
    [v5 appendString:@"\n\tSublayouts:\n"];
    for (i = 0; i != v23; ++i)
    {
      v25 = [v21 sublayoutAtIndex:i];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 description];
        v28 = [v27 px_stringByIndentingNewLines];
        [v5 appendFormat:@"\t%li: %@\n", i, v28];
      }
    }
  }

  v29 = [(PXGLayout *)self spriteDataStore];
  if ([v29 count])
  {
    v30 = [v29 diagnosticDescription];
    v31 = [v30 px_stringByIndentingNewLines];
    [v5 appendFormat:@"\n\tLocal Sprites: %@\n", v31];
  }

  v32 = [(PXGLayout *)self modifiedSpriteDataStore];
  if ([v32 count])
  {
    v33 = [v32 diagnosticDescription];
    v34 = [v33 px_stringByIndentingNewLines];
    [v5 appendFormat:@"\n\tModified Sprites: %@\n", v34];
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
    v5 = [(PXGLayout *)self referenceSize];
    v6.n128_f64[0] = v6.n128_f64[0] * 0.5;

    return MEMORY[0x28219CFA8](v5, v6);
  }

  return result;
}

- (unint64_t)fullyVisibleEdgesWithEdgeTolerances:(UIEdgeInsets)a3
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

- (void)_enumerateSpritesInRect:(CGRect)a3 transform:(id *)a4 usingBlock:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
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
    v16 = [(PXGLayout *)self spriteDataStore];
    v17 = [v16 count];
    if (v17)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __58__PXGLayout__enumerateSpritesInRect_transform_usingBlock___block_invoke;
      v35[3] = &unk_2782AACE0;
      v18 = v11;
      v19 = *&a4->var0.c;
      v38 = *&a4->var0.a;
      v39 = v19;
      v40 = *&a4->var0.tx;
      var1 = a4->var1;
      v35[4] = self;
      v36 = v18;
      v41 = var1;
      v37 = &v42;
      [v16 enumerateSpritesInRect:v35 usingBlock:{x, y, width, height}];
    }

    if ((v43[3] & 1) == 0)
    {
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2810000000;
      v34[3] = "";
      v34[4] = v17;
      v21 = [(PXGLayout *)self sublayoutDataStore];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __58__PXGLayout__enumerateSpritesInRect_transform_usingBlock___block_invoke_2;
      v23[3] = &unk_2782AAD30;
      v25 = v34;
      v26 = x;
      v27 = y;
      v28 = width;
      v29 = height;
      v22 = *&a4->var0.c;
      v30 = *&a4->var0.a;
      v31 = v22;
      v32 = *&a4->var0.tx;
      v33 = a4->var1;
      v24 = v11;
      [v21 enumerateSublayoutGeometriesUsingBlock:v23];

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

- (void)enumerateLocalSpritesInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PXGLayout *)self spriteDataStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__PXGLayout_enumerateLocalSpritesInRect_usingBlock___block_invoke;
  v12[3] = &unk_2782AACB8;
  v17 = 0;
  v14 = *PXGSpriteGeometryTransformIdentity;
  v15 = *&PXGSpriteGeometryTransformIdentity[16];
  v16 = *&PXGSpriteGeometryTransformIdentity[32];
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 enumerateSpritesInRect:v12 usingBlock:{x, y, width, height}];
}

- (void)enumerateSpritesInRect:(CGRect)a3 usingBlock:(id)a4
{
  v5 = 0;
  v4[0] = *PXGSpriteGeometryTransformIdentity;
  v4[1] = *&PXGSpriteGeometryTransformIdentity[16];
  v4[2] = *&PXGSpriteGeometryTransformIdentity[32];
  [(PXGLayout *)self _enumerateSpritesInRect:v4 transform:a4 usingBlock:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (id)leafSublayoutForSpriteIndex:(unsigned int)a3
{
  if (a3 == -1)
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
    [(PXGLayout *)self enumerateLayoutsForSpritesInRange:a3 | 0x100000000 options:1 usingBlock:v5];
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  return v3;
}

- (id)sublayoutForSpriteIndex:(unsigned int)a3
{
  v4 = [(PXGLayout *)self sublayoutIndexForSpriteIndex:*&a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(PXGLayout *)self sublayoutDataStore];
    v5 = [v7 sublayoutAtIndex:v6];
  }

  return v5;
}

- (int64_t)sublayoutIndexForSpriteIndex:(unsigned int)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != -1)
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
    [(PXGLayout *)self enumerateLayoutsForSpritesInRange:a3 | 0x100000000 options:0 usingBlock:v5];
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

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v3 = *&a3;
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

- (void)_enumerateSpritesInRange:(_PXGSpriteIndexRange)a3 transform:(id *)a4 spriteOffset:(unsigned int)a5 stop:(BOOL *)a6 usingBlock:(id)a7
{
  v12 = a7;
  v13 = [(PXGLayout *)self modifiedSpriteDataStore];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(PXGLayout *)self spriteDataStore];
  }

  v16 = v15;

  v17 = [v16 count];
  v18 = v17;
  if (v17)
  {
    if (HIDWORD(*&a3))
    {
      if (v17 > a3.location)
      {
        v19 = a3.length + a3.location;
        if (a3.length + a3.location)
        {
          if (v17 < v19)
          {
            v19 = v17;
          }

          v20 = v19 - a3.location;
          if (v20)
          {
            v12[2](v12, (a3.location + a5) | (v20 << 32), a4, [v16 geometries] + 32 * a3.location, objc_msgSend(v16, "styles") + 160 * a3.location, objc_msgSend(v16, "infos") + 40 * a3.location, self, (v20 << 32) | a3.location, a6);
          }
        }
      }
    }
  }

  if (!*a6)
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2810000000;
    v34[3] = "";
    v34[4] = v18;
    v21 = [(PXGLayout *)self sublayoutDataStore];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__PXGLayout__enumerateSpritesInRange_transform_spriteOffset_stop_usingBlock___block_invoke;
    v24[3] = &unk_2782AAC40;
    v26 = v34;
    v31 = a6;
    v32 = a3;
    v22 = *&a4->var0.c;
    v27 = *&a4->var0.a;
    v28 = v22;
    v29 = *&a4->var0.tx;
    var1 = a4->var1;
    v33 = a5;
    v30 = var1;
    v25 = v12;
    [v21 enumerateSublayoutGeometriesUsingBlock:v24];

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

- (void)enumerateSpritesInRange:(_PXGSpriteIndexRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v15 = 0;
  v11 = *PXGSpriteGeometryTransformIdentity;
  v12 = *&PXGSpriteGeometryTransformIdentity[16];
  v13 = *&PXGSpriteGeometryTransformIdentity[32];
  v14 = 0;
  if (v5)
  {
    [(PXGLayout *)self orientedContentTransform];
  }

  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  [(PXGLayout *)self _enumerateSpritesInRange:a3 transform:v9 spriteOffset:0 stop:&v15 usingBlock:v8];
}

- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)a3 applySpriteTransforms:(BOOL)a4 parentTransform:(id *)a5 parentAlpha:(float)a6 parentClippingRect:(CGRect)a7 parentSublayoutOrigin:(id)a8 entities:(id *)a9 geometries:(id *)a10 styles:(id *)a11 infos:(id *)a12
{
  v15 = a4;
  var2 = a8.var2;
  var1 = a8.var1;
  var0 = a8.var0;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v42 = [(PXGLayout *)self sublayoutDataStore];
  v27 = [(PXGLayout *)self spriteDataStore];
  v43 = a9;
  if (v15)
  {
    v28 = [(PXGLayout *)self modifiedSpriteDataStore];

    if (v28)
    {
      v29 = [(PXGLayout *)self modifiedSpriteDataStore];

      v27 = v29;
    }
  }

  v30 = [(PXGLayout *)self spriteDataStore];
  v31 = [v30 count];
  v32 = [v27 count];

  if (v31 != v32)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:2309 description:{@"Invalid parameter not satisfying: %@", @"self.spriteDataStore.count == spriteDataStore.count"}];
  }

  if ([(PXGLayout *)self appliesAlphaToSublayouts])
  {
    [(PXGLayout *)self alpha];
    a6 = v33 * a6;
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
  v38 = v27;
  v51 = v38;
  v66 = a3;
  v53 = v72;
  v54 = v43;
  v55 = a10;
  v56 = a11;
  v57 = a12;
  v58 = x;
  v59 = y;
  v60 = width;
  v61 = height;
  v39 = *&a5->var0.c;
  v62 = *&a5->var0.a;
  v63 = v39;
  v64 = *&a5->var0.tx;
  v65 = a5->var1;
  v67 = a6;
  v68 = var0;
  v69 = var1;
  v70 = var2;
  v40 = v42;
  v52 = v40;
  v71 = v15;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:a3 options:0 usingBlock:v50];
  length = a3.length;
  v46 = v43;
  v47 = a10;
  v48 = a11;
  v49 = a12;
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

- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)a3 applySpriteTransforms:(BOOL)a4 entities:(id *)a5 geometries:(id *)a6 styles:(id *)a7 infos:(id *)a8
{
  v9 = 0;
  v8[0] = *PXGSpriteGeometryTransformIdentity;
  v8[1] = *&PXGSpriteGeometryTransformIdentity[16];
  v8[2] = *&PXGSpriteGeometryTransformIdentity[32];
  [(PXGLayout *)self copyLayoutForSpritesInRange:a3 applySpriteTransforms:a4 parentTransform:v8 parentAlpha:a5 parentClippingRect:a6 parentSublayoutOrigin:a7 entities:COERCE_DOUBLE(__PAIR64__(*&PXGSpriteGeometryTransformIdentity[36] geometries:1.0)) styles:*MEMORY[0x277CBF390] infos:*(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24), 0.0, 0.0, 0.0, a8];
}

- (void)copyLayoutForSpritesInRange:(_PXGSpriteIndexRange)a3 toSpriteDataStore:(id)a4
{
  length = a3.length;
  v7 = a4;
  [v7 setCount:length];
  v8 = [v7 entities];
  v9 = [v7 geometries];
  v10 = [v7 styles];
  v11 = [v7 infos];

  [(PXGLayout *)self copyLayoutForSpritesInRange:a3 entities:v8 geometries:v9 styles:v10 infos:v11];
}

- (void)copySpritesToDataStore:(id)a3
{
  v4 = a3;
  [(PXGLayout *)self copyLayoutForSpritesInRange:[(PXGLayout *)self numberOfSprites]<< 32 toSpriteDataStore:v4];
}

- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)infoForSpriteAtIndex:(SEL)a3
{
  v10 = [(PXGLayout *)self spriteDataStore];
  v6 = v10;
  v7 = [v10 infos] + 40 * a4;
  v8 = *(v7 + 16);
  *&retstr->var0 = *v7;
  *&retstr->var4 = v8;
  retstr[1].var3 = *(v7 + 32);

  return result;
}

- ($105A79951CE75EB7BB90BCA93995B378)styleForSpriteAtIndex:(SEL)a3
{
  v14 = [(PXGLayout *)self spriteDataStore];
  v6 = v14;
  v7 = ([v14 styles] + 160 * a4);
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

- ($C4327F77E24267CF92932F349E1559A2)geometryForSpriteAtIndex:(unsigned int)a3
{
  v5 = v3;
  v12 = [(PXGLayout *)self spriteDataStore];
  v6 = v12;
  v7 = ([v12 geometries] + 32 * a3);
  v8 = v7[1];
  *v5 = *v7;
  v5[1] = v8;

  result.var0.var2 = v11;
  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- ($738B17BD11CC339B30296C0EA03CEC2B)entityForSpriteAtIndex:(unsigned int)a3
{
  v4 = [(PXGLayout *)self spriteDataStore];
  v5.var0 = *([v4 entities] + 4 * a3);

  return v5;
}

- (void)setLastBaseline:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_lastBaseline = a3;
    v5 = [(PXGLayout *)self superlayout];
    [v5 sublayoutDidChangeLastBaseline:self];
  }
}

- (void)setContentSize:(CGSize)a3
{
  self->_estimatedContentSize = a3;
  if (a3.width != self->_contentSize.width || a3.height != self->_contentSize.height)
  {
    self->_contentSize = a3;
    [(PXGLayout *)self contentSizeDidChange];
    v6 = [(PXGLayout *)self superlayout];
    [v6 sublayoutDidChangeContentSize:self];
  }
}

- (void)_addFences:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    fences = self->_fences;
    if (!fences)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_fences;
      self->_fences = v5;

      fences = self->_fences;
    }

    [(NSMutableArray *)fences addObjectsFromArray:v7];
    [(PXGLayout *)self _setNeedsUpdateExternally:0];
  }
}

- (void)addFence:(id)a3
{
  v4 = a3;
  fences = self->_fences;
  v8 = v4;
  if (!fences)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fences;
    self->_fences = v6;

    v4 = v8;
    fences = self->_fences;
  }

  [(NSMutableArray *)fences addObject:v4];
  [(PXGLayout *)self _setNeedsUpdateExternally:0];
}

- (void)addTransition:(id)a3
{
  v4 = a3;
  transitions = self->_transitions;
  v8 = v4;
  if (!transitions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_transitions;
    self->_transitions = v6;

    v4 = v8;
    transitions = self->_transitions;
  }

  [(NSMutableArray *)transitions addObject:v4];
  [(PXGLayout *)self _setNeedsUpdateExternally:0];
}

- (void)_addAnimations:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    animations = self->_animations;
    if (!animations)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_animations;
      self->_animations = v5;

      animations = self->_animations;
    }

    [(NSMutableArray *)animations addObjectsFromArray:v7];
    [(PXGLayout *)self _setNeedsUpdateExternally:0];
  }
}

- (void)removeAnimation:(id)a3
{
  [(NSMutableArray *)self->_animations removeObject:a3];

  [(PXGLayout *)self _setNeedsUpdateExternally:0];
}

- (void)addAnimation:(id)a3
{
  v4 = a3;
  animations = self->_animations;
  v8 = v4;
  if (!animations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_animations;
    self->_animations = v6;

    v4 = v8;
    animations = self->_animations;
  }

  [(NSMutableArray *)animations addObject:v4];
  [(PXGLayout *)self _setNeedsUpdateExternally:0];
}

- (void)setInteractions:(id)a3
{
  v4 = a3;
  interactions = self->_interactions;
  if (interactions != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)interactions isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_interactions;
      self->_interactions = v7;

      v4 = v9;
    }
  }
}

- (void)removePointReference:(id)a3
{
  v4 = a3;
  v6 = [(PXGLayout *)self pointReferences];
  [v6 removeObject:v4];

  if (![v6 count])
  {
    pointReferences = self->_pointReferences;
    self->_pointReferences = 0;
  }
}

- (void)addPointReference:(id)a3
{
  v5 = a3;
  v4 = [(PXGLayout *)self pointReferences];
  if (!v4)
  {
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    objc_storeStrong(&self->_pointReferences, v4);
  }

  [v4 addObject:v5];
}

- (id)navigationObjectReferenceForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v7 = [(PXGLayout *)self sublayoutDataStore];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__PXGLayout_navigationObjectReferenceForLocation___block_invoke;
  v19[3] = &unk_2782AABF0;
  *&v19[7] = x;
  *&v19[8] = y;
  v19[5] = v20;
  v19[6] = &v21;
  v19[4] = self;
  [v7 enumerateSublayoutGeometriesUsingBlock:v19];

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

- (id)dropTargetObjectReferenceForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14725;
  v14 = __Block_byref_object_dispose__14726;
  v15 = 0;
  v6 = [(PXGLayout *)self sublayoutDataStore];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PXGLayout_dropTargetObjectReferenceForLocation___block_invoke;
  v9[3] = &unk_2782AABC8;
  *&v9[6] = x;
  *&v9[7] = y;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateSublayoutsUsingBlock:v9];

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

- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v21 = 0;
  v8 = [(PXGLayout *)self sublayoutIndexForObjectReference:a3 options:a4 updatedObjectReference:&v21];
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
      v13 = [v11 spriteIndexForObjectReference:v9 options:a4 updatedObjectReference:&v20];
      v14 = v20;

      v15 = v12;
      v9 = v14;
      if (v13 != -1 && [v15 numberOfSprites] <= v13)
      {
        v18 = [MEMORY[0x277CCA890] currentHandler];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXValidateLayoutSpriteIndexForObjectReference(PXGLayout * _Nonnull __strong, PXGSpriteIndex, id  _Nonnull __strong)"}];
        [v18 handleFailureInFunction:v19 file:@"PXGLayout_Internal.h" lineNumber:227 description:{@"%@ returned invalid spriteIndex %li for objectReference %@", v15, v13, v9}];
      }

      v10 = [(PXGLayout *)self convertSpriteIndex:v13 fromDescendantLayout:v15];
    }

    else
    {
      v10 = -1;
    }
  }

  v16 = v9;
  *a5 = v9;

  return v10;
}

- (id)objectReferenceForSpriteIndex:(unsigned int)a3
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
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:a3 | 0x100000000 options:0 usingBlock:v5];
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
  v3 = [(PXGLayout *)self activeAnchor];
  if (!v3)
  {
    v4 = [(PXGLayout *)self superlayout];
    v3 = [v4 activeAnchor];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__PXGLayout_anchoredSublayoutIndex__block_invoke;
  v7[3] = &unk_2782AABA0;
  v7[4] = self;
  v7[5] = &v8;
  [v3 enumerateAllSpriteReferencesUsingBlock:v7];
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
  v2 = [(PXGLayout *)self activeAnchor];
  v3 = [v2 shouldFaultInContentAtAnchoredContentEdges];

  return v3;
}

- (void)sublayout:(id)a3 didRemoveAnchor:(id)a4
{
  --self->_numberOfDescendantAnchors;
  v5 = a4;
  v6 = [(PXGLayout *)self superlayout];
  [v6 sublayout:self didRemoveAnchor:v5];
}

- (void)sublayout:(id)a3 didAddAnchor:(id)a4
{
  ++self->_numberOfDescendantAnchors;
  v5 = a4;
  v6 = [(PXGLayout *)self superlayout];
  [v6 sublayout:self didAddAnchor:v5];

  v7 = [v5 type];
  if (v7 <= 5 && ((1 << v7) & 0x34) != 0)
  {

    [(PXGLayout *)self clearLastVisibleAreaAnchoringInformation];
  }
}

- (void)removeAnchor:(id)a3
{
  activeAnchor = self->_activeAnchor;
  if (activeAnchor == a3)
  {
    self->_activeAnchor = 0;
    v5 = a3;

    [(PXGLayout *)self sublayout:self didRemoveAnchor:v5];
  }
}

- (void)addAnchor:(id)a3
{
  v6 = a3;
  v5 = [v6 priority];
  if (v5 >= [(PXGAnchor *)self->_activeAnchor priority])
  {
    [(PXGAnchor *)self->_activeAnchor invalidate];
    objc_storeStrong(&self->_activeAnchor, a3);
    [(PXGLayout *)self _setNeedsUpdateExternally:0];
    [(PXGLayout *)self sublayout:self didAddAnchor:v6];
  }
}

- (BOOL)changeVisibleRectToProposedVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  isRequestingVisibleRect = self->_isRequestingVisibleRect;
  self->_isRequestingVisibleRect = 1;
  [(PXGLayout *)self visibleRect];
  v9 = [(PXGLayout *)self superlayout];
  v10 = v9;
  if (v9)
  {
    [v9 sublayout:self visibleRectForRequestedVisibleRect:{x, y, width, height}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v19 = [(PXGLayout *)self visibleRectDelegate];
    v20 = v19;
    if (v19)
    {
      [v19 layout:self visibleRectForRequestedVisibleRect:{x, y, width, height}];
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

- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)a3
{
  v5 = a3;
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
    v18 = [(PXGLayout *)self sublayoutDataStore];
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
    [v18 enumerateSublayoutsInRect:v25 usingBlock:{v7, v9, v11, v13}];
    v21 = [v20 keysSortedByValueUsingSelector:sel_compare_];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__PXGLayout_enumerateVisibleAnchoringLayoutsUsingBlock___block_invoke_2;
    v22[3] = &unk_2782AAB78;
    v22[4] = self;
    v24 = a2;
    v23 = v5;
    [v21 enumerateObjectsUsingBlock:v22];
  }

  else
  {
    v33 = 0;
    (*(v5 + 2))(v5, self, &v33);
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

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__PXGLayout_enumerateVisibleAnchoringSpriteIndexesUsingBlock___block_invoke;
  v6[3] = &unk_2782AAB28;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)a3 appliedToLayout:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_spriteIndexesWithInvalidatedStyle)
  {
    v8 = [v6 indexSetAfterApplyingChangesToIndexSet:?];
    spriteIndexesWithInvalidatedStyle = self->_spriteIndexesWithInvalidatedStyle;
    self->_spriteIndexesWithInvalidatedStyle = v8;
  }

  if (self->_localHiddenSpriteIndexes)
  {
    v10 = [v6 indexSetAfterApplyingChangesToIndexSet:?];
    [(PXGLayout *)self setLocalHiddenSpriteIndexes:v10];

    [(PXGLayout *)self _invalidateStyleOfSpritesWithIndexes:self->_localHiddenSpriteIndexes];
  }

  v11 = [(PXGLayout *)self superlayout];
  if (v11)
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
          [v18 adjustReferencedSpriteIndexesWithChangeDetails:v6 appliedToLayout:{v7, v22}];
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

  v21 = [(PXGLayout *)self activeAnchor];
  [v21 adjustReferencedSpriteIndexesWithChangeDetails:v6 appliedToLayout:v7];
}

- (id)convertChangeDetails:(id)a3 fromSublayout:(id)a4
{
  v7 = a3;
  v8 = v7;
  if (a4 == self)
  {
    v13 = v7;
  }

  else
  {
    v9 = a4;
    if (([v8 hasIncrementalChanges] & 1) == 0)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1709 description:{@"Invalid parameter not satisfying: %@", @"changeDetails.hasIncrementalChanges"}];
    }

    v10 = [(PXGLayout *)self spriteDataStore];
    v11 = [v10 count];

    v12 = [(PXGLayout *)self sublayoutDataStore];
    LODWORD(v10) = [v12 spriteIndexOriginForSublayout:v9];

    v13 = [v8 changeDetailsShiftedBy:v10 + v11];
  }

  v14 = v13;

  return v14;
}

- (_PXGSpriteIndexRange)convertRange:(_PXGSpriteIndexRange)a3 fromSublayout:(id)a4
{
  location = a3.location;
  if (a4 != self)
  {
    v7 = a4;
    v8 = [(PXGLayout *)self spriteDataStore];
    v9 = [v8 count];

    v10 = [(PXGLayout *)self sublayoutDataStore];
    LODWORD(v8) = [v10 spriteIndexOriginForSublayout:v7];

    location = a3.location + v9 + v8;
  }

  return (*&a3 & 0xFFFFFFFF00000000 | location);
}

- (void)sublayout:(id)a3 didApplySpriteChangeDetails:(id)a4 fromDescendentSublayout:(id)a5
{
  v22 = a3;
  v9 = a4;
  v10 = a5;
  if (v22 == self)
  {
    [(PXGLayout *)self didApplySpriteChangeDetails:v9];
  }

  if ([v9 hasAnyChanges])
  {
    if ([v9 hasAnyInsertionsRemovalsOrMoves])
    {
      [(PXGLayout *)self invalidateVersion];
    }

    if (([v9 hasIncrementalChanges] & 1) == 0)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1659 description:{@"%@ didn't recieve incremental change details:%@", self, v9}];
    }

    if (v22 != self)
    {
      v11 = [v9 insertedIndexes];
      v12 = [v11 count];
      v13 = [v9 removedIndexes];
      v14 = v12 - [v13 count];

      [(PXGLayout *)self _incrementNumberOfSprites:v14];
    }

    v15 = [(PXGLayout *)self convertChangeDetails:v9 fromSublayout:v22];
    [(PXGLayout *)self adjustReferencedSpriteIndexesWithChangeDetails:v15 appliedToLayout:self];
    v16 = [(PXGLayout *)self superlayout];
    v17 = v16;
    if (v16)
    {
      [v16 sublayout:self didApplySpriteChangeDetails:v15 fromDescendentSublayout:v10];
    }

    else
    {
      v18 = [(PXGLayout *)self changeDetails];
      v19 = [v18 lastObject];
      if ([v19 canPreserveIncrementalChangesWhenAddingChangeDetails:v15])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 addChangeDetails:v15];
        }

        else
        {
          v20 = [v19 mutableCopy];
          [v18 removeLastObject];
          [v18 addObject:v20];
          [v20 addChangeDetails:v15];
        }
      }

      else
      {
        [v18 addObject:v15];
      }

      [(PXGLayout *)self _setNeedsUpdateExternally:0];
    }
  }
}

- (void)didApplySpriteChangeDetails:(id)a3
{
  v4 = a3;
  v5 = [(PXGLayout *)self axGroup];
  [v5 updateLeafsWithChangeDetails:v4];
}

- (unsigned)addResizableCapInsets:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = [(PXGLayout *)self spriteMetadataStore];
  *&v8 = var0;
  *&v9 = var1;
  *&v10 = var2;
  *&v11 = var3;
  v12 = [v7 addResizableCapInsets:{v8, v9, v10, v11}];

  return v12;
}

- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyFullState:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [(PXGLayout *)self _ensureSpriteDataStore];
  v13 = [(PXGLayout *)self spriteModifier];
  v53 = v12;
  if (v13)
  {
    [(PXGLayout *)self _ensureModifiedSpriteDataStore];
  }

  else
  {
    v14 = [(PXGLayout *)self modifiedSpriteDataStore];

    if (v14)
    {
      [(PXGLayout *)self _destroyModifiedSpriteDataStore];
    }
  }

  v15 = [(PXGLayout *)self spriteDataStore];
  v16 = [(PXGLayout *)self modifiedSpriteDataStore];
  v17 = [(PXGLayout *)self localNumberOfSprites];
  v54 = v13;
  v50 = v17;
  v51 = v8;
  if ([v10 hasIncrementalChanges])
  {
    v18 = v8;
    v17 = v17;
  }

  else
  {
    v19 = v15;
    v20 = v16;
    v21 = v11;
    v22 = objc_alloc(MEMORY[0x277D3CCC8]);
    v17 = v17;
    v23 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v17}];
    v18 = v8;
    v24 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v8}];
    v25 = [v22 initWithIncrementalChangeDetailsRemovedIndexes:v23 insertedIndexes:v24 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

    v10 = v25;
    v11 = v21;
    v16 = v20;
    v15 = v19;
  }

  v26 = [v10 insertedIndexes];
  v27 = [v26 count] + v17;
  v28 = [v10 removedIndexes];
  v29 = v27 - [v28 count];

  if (v29 != v18)
  {
    v49 = [MEMORY[0x277CCA890] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1566 description:{@"countBeforeChanges(%d) + spriteChangeDetails(%@) does not match countAfterChanges(%d)", v50, v10, v51}];
  }

  v30 = [v10 removedIndexes];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke;
  v74[3] = &unk_2782AB638;
  v74[4] = self;
  v31 = v15;
  v75 = v31;
  v32 = v16;
  v76 = v32;
  [v30 enumerateRangesWithOptions:2 usingBlock:v74];

  v33 = [v10 insertedIndexes];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_2;
  v69[3] = &unk_2782AAA88;
  v34 = v31;
  v70 = v34;
  v35 = v32;
  v71 = v35;
  v72 = self;
  v36 = v11;
  v73 = v36;
  [v33 enumerateRangesWithOptions:0 usingBlock:v69];

  if ([v10 hasMoves])
  {
    v37 = [v10 movesFromIndexes];
    v38 = [v10 movesToIndexes];
    [v34 moveSpritesFromIndexes:v37 toIndexes:v38];

    v39 = [v10 movesFromIndexes];
    v40 = [v10 movesToIndexes];
    [v35 moveSpritesFromIndexes:v39 toIndexes:v40];
  }

  if (v53)
  {
    v41 = [v10 changedIndexes];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_3;
    v63[3] = &unk_2782AAAB0;
    v68 = a2;
    v64 = v34;
    v65 = self;
    v67 = v53;
    v66 = v35;
    [v41 enumerateRangesUsingBlock:v63];
  }

  v42 = v54;
  if (v54)
  {
    v43 = [v10 insertedIndexes];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_4;
    v59[3] = &unk_2782AB638;
    v44 = v54;
    v60 = v44;
    v45 = v35;
    v61 = v45;
    v62 = self;
    [v43 enumerateRangesUsingBlock:v59];

    v46 = [v10 changedIndexes];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __85__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyFullState___block_invoke_5;
    v55[3] = &unk_2782AB638;
    v47 = v44;
    v42 = v54;
    v56 = v47;
    v57 = v45;
    v58 = self;
    [v46 enumerateRangesUsingBlock:v55];
  }

  [(PXGLayout *)self sublayout:self didApplySpriteChangeDetails:v10 fromDescendentSublayout:self];
  v48 = [(PXGLayout *)self axGroup];
  [v48 invalidateLeafs];
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

- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyState:(id)a6
{
  v7 = *&a4;
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__PXGLayout_applySpriteChangeDetails_countAfterChanges_initialState_modifyState___block_invoke;
  v12[3] = &unk_2782AAA60;
  v13 = v10;
  v11 = v10;
  [(PXGLayout *)self applySpriteChangeDetails:a3 countAfterChanges:v7 initialState:a5 modifyFullState:v12];
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

- (void)modifySpritesAtIndexes:(id)a3 fullState:(id)a4
{
  v6 = MEMORY[0x277D3CCC8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v8];

  [(PXGLayout *)self applySpriteChangeDetails:v9 countAfterChanges:[(PXGLayout *)self localNumberOfSprites] initialState:0 modifyFullState:v7];
}

- (void)modifySpritesAtIndexes:(id)a3 state:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PXGLayout_modifySpritesAtIndexes_state___block_invoke;
  v8[3] = &unk_2782AAA60;
  v9 = v6;
  v7 = v6;
  [(PXGLayout *)self modifySpritesAtIndexes:a3 fullState:v8];
}

- (void)modifySpritesInRange:(_PXGSpriteIndexRange)a3 fullState:(id)a4
{
  length = a3.length;
  if (a3.length)
  {
    v6 = MEMORY[0x277D3CCC8];
    location = a3.location;
    v8 = a4;
    v9 = [v6 changeDetailsWithChangedIndexRange:{location, length}];
    [(PXGLayout *)self applySpriteChangeDetails:v9 countAfterChanges:[(PXGLayout *)self localNumberOfSprites] initialState:0 modifyFullState:v8];
  }
}

- (void)modifySpritesInRange:(_PXGSpriteIndexRange)a3 state:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PXGLayout_modifySpritesInRange_state___block_invoke;
  v8[3] = &unk_2782AAA38;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(PXGLayout *)self modifySpritesInRange:a3 fullState:v8];
}

- (void)modifySpritesInRect:(CGRect)a3 state:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v9 = [(PXGLayout *)self spriteDataStore];
  v10 = [v9 spriteIndexesInRect:{x, y, width, height}];

  if ([v10 count])
  {
    v11 = [MEMORY[0x277D3CCC8] changeDetailsWithChangedIndexes:v10];
    [(PXGLayout *)self applySpriteChangeDetails:v11 countAfterChanges:[(PXGLayout *)self numberOfSprites] initialState:0 modifyState:v12];
  }
}

- (void)moveSpritesInRange:(_PXGSpriteIndexRange)a3 toRange:(_PXGSpriteIndexRange)a4
{
  if (a3.length)
  {
    v6 = [MEMORY[0x277D3CCC8] changeDetailsWithMovedFromIndexRange:a3.location toIndexRange:{a3.length, a4.location, a4.length}];
    [(PXGLayout *)self applySpriteChangeDetails:v6 countAfterChanges:[(PXGLayout *)self localNumberOfSprites] initialState:0 modifyState:0];
  }
}

- (void)removeSpritesAtIndexes:(id)a3
{
  v4 = MEMORY[0x277D3CCC8];
  v5 = a3;
  v7 = [[v4 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v5 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  LODWORD(v4) = [(PXGLayout *)self localNumberOfSprites];
  v6 = [v5 count];

  [(PXGLayout *)self applySpriteChangeDetails:v7 countAfterChanges:(v4 - v6) initialState:0 modifyState:0];
}

- (void)removeSpritesInRange:(_PXGSpriteIndexRange)a3
{
  length = a3.length;
  if (a3.length)
  {
    v5 = [MEMORY[0x277D3CCC8] changeDetailsWithRemovedIndexRange:{a3.location, a3.length}];
    [(PXGLayout *)self applySpriteChangeDetails:v5 countAfterChanges:[(PXGLayout *)self localNumberOfSprites]- length initialState:0 modifyState:0];
  }
}

- (void)addSpritesAtIndexes:(id)a3 initialState:(id)a4
{
  v6 = MEMORY[0x277D3CCC8];
  v7 = a4;
  v8 = a3;
  v10 = [[v6 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:v8 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  LODWORD(v6) = [(PXGLayout *)self localNumberOfSprites];
  v9 = [v8 count];

  [(PXGLayout *)self applySpriteChangeDetails:v10 countAfterChanges:(v6 + v9) initialState:v7 modifyState:0];
}

- (void)addSpritesInRange:(_PXGSpriteIndexRange)a3 initialState:(id)a4
{
  length = a3.length;
  if (a3.length)
  {
    v6 = MEMORY[0x277D3CCC8];
    location = a3.location;
    v8 = a4;
    v9 = [v6 changeDetailsWithInsertedIndexRange:{location, length}];
    [(PXGLayout *)self applySpriteChangeDetails:v9 countAfterChanges:[(PXGLayout *)self localNumberOfSprites]+ length initialState:v8 modifyState:0];
  }
}

- (_PXGSpriteIndexRange)addSpriteCount:(unsigned int)a3 withInitialState:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = ([(PXGLayout *)self localNumberOfSprites]| (v4 << 32));
  [(PXGLayout *)self addSpritesInRange:v7 initialState:v6];

  return v7;
}

- (void)performRepeatedSublayoutsUpdate:(id)a3
{
  ++self->_numberOfRepeatedSublayoutUpdatesInUpdatePass;
  v3 = a3;
  kdebug_trace();
  v3[2](v3);

  kdebug_trace();
}

- (void)didChangeSublayoutOrigins
{
  v2 = [(PXGLayout *)self superlayout];
  [v2 didChangeSublayoutOrigins];
}

- (id)sublayoutAtIndex:(int64_t)a3 loadIfNeeded:(BOOL)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14725;
  v16 = __Block_byref_object_dispose__14726;
  v17 = 0;
  v7 = [(PXGLayout *)self sublayoutDataStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__PXGLayout_sublayoutAtIndex_loadIfNeeded___block_invoke;
  v10[3] = &unk_2782AAA10;
  v11 = a4;
  v10[4] = self;
  v10[5] = &v12;
  [v7 enumerateSublayoutGeometriesInRange:a3 options:1 usingBlock:{0, v10}];

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

- (void)insertSublayoutProvider:(id)a3 atIndexes:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__PXGLayout_insertSublayoutProvider_atIndexes___block_invoke;
  v8[3] = &unk_2782AA9E8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a4 enumerateRangesUsingBlock:v8];
}

- (void)insertSublayoutProvider:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  [(PXGLayout *)self invalidateVersion];
  [(PXGLayout *)self _ensureSublayoutDataStore];
  v8 = [(PXGLayout *)self sublayoutDataStore];
  [v8 insertSublayoutProvider:v7 inRange:{location, length}];
}

- (void)willRemoveSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 superlayout];

  if (v10 != self)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [v9 superlayout];
    [v17 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1324 description:{@"unexpected superlayout of removed sublayout (sublayout=%@, superlayout=%@, self=%@)", v9, v18, self}];
  }

  [v9 _recursivelyResetHiddenSpriteIndexes];
  [v9 setSuperlayout:0];
  [v9 setAxNextResponder:0];
  [v9 setEntityManager:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v9 interactions];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        [v16 setScrollViewController:0];
        [v16 setView:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  self->_numberOfDescendantAnchors -= [v9 numberOfDescendantAnchors];
  [(NSMutableSet *)self->_sublayoutsExpectedToBeUpdatedInUpdatePass removeObject:v9];
  [(PXGLayout *)self axRemoveSubgroupForSublayout:v9 atIndex:a4 flags:a5];
}

- (void)didAddSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v13 = a3;
  [v13[4] removeAllObjects];
  if ([v13 needsUpdate])
  {
    [(PXGLayout *)self sublayoutNeedsUpdate:v13];
  }

  self->_numberOfDescendantAnchors += [v13 numberOfDescendantAnchors];
  v8 = [(PXGLayout *)self rootLayout];
  v9 = [v13 animations];
  [v8 _addAnimations:v9];

  [v13 removeAllAnimations];
  v10 = [(PXGLayout *)self rootLayout];
  v11 = [v13 fences];
  [v10 _addFences:v11];

  [v13 removeAllFences];
  v12 = [(PXGLayout *)self viewEnvironment];
  [v13 setViewEnvironment:v12];

  [(PXGLayout *)self axAddSubgroupForSublayout:v13 atIndex:a4 flags:a5];
}

- (void)_willAddSublayout:(id)a3
{
  v4 = a3;
  [v4 setSuperlayout:self];
  v5 = [(PXGLayout *)self layoutQueue];
  [v4 setLayoutQueue:v5];

  [v4 setAxNextResponder:self];
  v6 = [(PXGLayout *)self mediaProvider];
  [v4 setMediaProvider:v6];

  v7 = [(PXGLayout *)self entityManager];
  [v4 setEntityManager:v7];
}

- (void)willFaultOutSublayout:(id)a3 atIndex:(int64_t)a4
{
  v6 = MEMORY[0x277D3CCC8];
  v8 = a3;
  v7 = [v6 changeDetailsWithRemovedIndexRange:{0, objc_msgSend(v8, "numberOfSprites")}];
  [(PXGLayout *)self sublayout:v8 didApplySpriteChangeDetails:v7 fromDescendentSublayout:v8];

  [(PXGLayout *)self willRemoveSublayout:v8 atIndex:a4 flags:1];
}

- (void)didFaultInSublayout:(id)a3 atIndex:(int64_t)a4 fromEstimatedContentSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  [v10 setEstimatedContentSize:{width, height}];
  [(PXGLayout *)self _willAddSublayout:v10];
  v9 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, objc_msgSend(v10, "numberOfSprites")}];
  [(PXGLayout *)self sublayout:v10 didApplySpriteChangeDetails:v9 fromDescendentSublayout:v10];

  [(PXGLayout *)self didAddSublayout:v10 atIndex:a4 flags:1];
}

- (void)didApplySublayoutChangeDetails:(id)a3 axAdjustedSubgroupChangeDetails:(id)a4 countAfterChanges:(int64_t)a5
{
  v6 = a4;
  v7 = [(PXGLayout *)self axGroup];
  [v7 updateSubgroupsWithChangeDetails:v6];
}

- (void)applySublayoutChangeDetails:(id)a3 countAfterChanges:(int64_t)a4 sublayoutProvider:(id)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [(PXGLayout *)self sublayoutDataStore];
  v12 = [v11 count];
  if ([v9 hasIncrementalChanges])
  {
    v13 = [v9 insertedIndexes];
    v14 = [v13 count] + v12;
    v15 = [v9 removedIndexes];
    v16 = v14 - [v15 count];

    if (v16 != a4)
    {
      v48 = [MEMORY[0x277CCA890] currentHandler];
      [v48 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1214 description:{@"Invalid parameter not satisfying: %@", @"countBeforeChange + sublayoutChangeDetails.insertedIndexes.count - sublayoutChangeDetails.removedIndexes.count == countAfterChanges"}];
    }

    v17 = [v9 removedIndexes];
    [(PXGLayout *)self removeSublayoutsAtIndexes:v17];

    v18 = [v9 insertedIndexes];
    [(PXGLayout *)self insertSublayoutProvider:v10 atIndexes:v18];

    if ([v9 hasMoves])
    {
      v53 = v10;
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __77__PXGLayout_applySublayoutChangeDetails_countAfterChanges_sublayoutProvider___block_invoke;
      v65[3] = &unk_2782AA998;
      v65[4] = self;
      v19 = a2;
      v20 = MEMORY[0x21CEE40A0](v65);
      v21 = (v20 + 16);
      v22 = (*(v20 + 16))();
      v23 = [v9 movesFromIndexes];
      v24 = [v9 movesToIndexes];
      [v11 moveSublayoutsFromIndexes:v23 toIndexes:v24];

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
      [v9 enumerateMovedIndexesUsingBlock:v59];
      v32 = [v31 count];
      v50 = v30;
      if (v32 != [v30 count])
      {
        v49 = [MEMORY[0x277CCA890] currentHandler];
        [v49 handleFailureInMethod:v26 object:self file:@"PXGLayout.m" lineNumber:1254 description:@"Count mismatch"];
      }

      [v31 count];
      v33 = PXCreateMutableIntegerArrayRef();
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v34 = v31;
      v35 = [v34 countByEnumeratingWithState:&v55 objects:v66 count:16];
      v10 = v53;
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
      v40 = [(PXGLayout *)self superlayout];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = self;
      }

      v43 = v42;

      [(PXGLayout *)v43 sublayout:self didApplySpriteChangeDetails:v39 fromDescendentSublayout:self];
    }

    v44 = objc_alloc(MEMORY[0x277D3CCC8]);
    v45 = [v9 insertedIndexes];
    v46 = [v9 movesToIndexes];
    v47 = [v44 initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:v45 movesToIndexes:v46 movesFromIndexes:objc_msgSend(v9 changedIndexes:{"movesFromIndexes"), 0}];
  }

  else
  {
    [(PXGLayout *)self removeSublayoutsInRange:0, v12];
    [(PXGLayout *)self insertSublayoutProvider:v10 inRange:0, a4];
    v47 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, a4}];
  }

  [(PXGLayout *)self didApplySublayoutChangeDetails:v9 axAdjustedSubgroupChangeDetails:v47 countAfterChanges:a4];
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

- (void)removeSublayoutsAtIndexes:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__PXGLayout_removeSublayoutsAtIndexes___block_invoke;
  v3[3] = &unk_2782AA948;
  v3[4] = self;
  [a3 enumerateRangesWithOptions:2 usingBlock:v3];
}

- (void)removeSublayoutsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(PXGLayout *)self invalidateVersion];
  v6 = [(PXGLayout *)self sublayoutDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__PXGLayout_removeSublayoutsInRange___block_invoke;
  v7[3] = &unk_2782AA878;
  v7[4] = self;
  [v6 enumerateSublayoutsInRange:location options:length usingBlock:{2, v7}];
  [v6 removeSublayoutsInRange:{location, length}];
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

- (int64_t)indexOfSublayout:(id)a3
{
  v4 = a3;
  v5 = [(PXGLayout *)self sublayoutDataStore];
  v6 = [v5 indexOfSublayout:v4];

  return v6;
}

- (void)insertSublayout:(id)a3 atIndex:(int64_t)a4
{
  v8 = a3;
  [(PXGLayout *)self _willAddSublayout:v8];
  [(PXGLayout *)self _ensureSublayoutDataStore];
  v6 = [(PXGLayout *)self sublayoutDataStore];
  [v6 insertSublayout:v8 atIndex:a4];

  v7 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, objc_msgSend(v8, "numberOfSprites")}];
  [(PXGLayout *)self sublayout:v8 didApplySpriteChangeDetails:v7 fromDescendentSublayout:v8];

  [(PXGLayout *)self didAddSublayout:v8 atIndex:a4 flags:0];
}

- (int64_t)addSublayout:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1159 description:{@"Invalid parameter not satisfying: %@", @"sublayout != self"}];
  }

  v6 = [(PXGLayout *)self numberOfSublayouts];
  [(PXGLayout *)self insertSublayout:v5 atIndex:v6];

  return v6;
}

- (void)_invalidateStyleOfSpritesWithIndexes:(id)a3
{
  v15 = a3;
  v5 = [v15 count];
  v6 = v15;
  if (v5)
  {
    v7 = [v15 lastIndex];
    if (v7 >= [(PXGLayout *)self localNumberOfSprites])
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:1132 description:{@"Invalid parameter not satisfying: %@", @"indexSet.lastIndex < self.localNumberOfSprites"}];
    }

    v8 = [v15 mutableCopy];
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

        v6 = v15;
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
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGLayout _invalidateStyleOfSpritesWithIndexes:]"];
      [v13 handleFailureInFunction:v14 file:@"PXGLayout.m" lineNumber:1140 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (void)setLocalHiddenSpriteIndexes:(id)a3
{
  v4 = a3;
  localHiddenSpriteIndexes = self->_localHiddenSpriteIndexes;
  if (localHiddenSpriteIndexes != v4)
  {
    v11 = v4;
    v6 = [(NSIndexSet *)localHiddenSpriteIndexes isEqual:v4];
    v4 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSIndexSet *)self->_localHiddenSpriteIndexes count];
      v8 = [(NSIndexSet *)v11 copy];
      v9 = self->_localHiddenSpriteIndexes;
      self->_localHiddenSpriteIndexes = v8;

      if (v7 > 0 || (v10 = [(NSIndexSet *)v11 count], v4 = v11, v10))
      {
        [(PXGLayout *)self localHiddenSpriteIndexesDidChange];
        v4 = v11;
      }
    }
  }
}

- (void)_addHiddenSpriteIndexes:(id)a3
{
  v7 = a3;
  v4 = [(NSIndexSet *)self->_localHiddenSpriteIndexes count];
  localHiddenSpriteIndexes = self->_localHiddenSpriteIndexes;
  if (localHiddenSpriteIndexes)
  {
    v6 = [(NSIndexSet *)localHiddenSpriteIndexes mutableCopy];
    [v6 addIndexes:v7];
  }

  else
  {
    v6 = [v7 copy];
  }

  [(PXGLayout *)self setLocalHiddenSpriteIndexes:v6];

  if ([(NSIndexSet *)self->_localHiddenSpriteIndexes count]!= v4)
  {
    [(PXGLayout *)self _invalidateStyleOfSpritesWithIndexes:v7];
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

- (void)_propagateHiddenSpriteIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PXGLayout *)self hiddenSpriteIndexes];
  v6 = [v5 mutableCopy];
  [v6 removeIndexes:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PXGLayout__propagateHiddenSpriteIndexes___block_invoke;
  v9[3] = &unk_2782AA948;
  v9[4] = self;
  [v6 enumerateRangesUsingBlock:v9];
  v7 = [v4 mutableCopy];

  [v7 removeIndexes:v5];
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

- (void)hideSpritesForObjectReferences:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PXGLayout *)self superlayout];

  if (v5)
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
  v9 = v4;
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

- (void)setHiddenSpriteIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PXGLayout *)self superlayout];

  if (v5)
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
  v15 = self;
  v8 = v7;
  v16 = v8;
  [v4 enumerateIndexesUsingBlock:&v11];
  spriteReferencesForHiddenSprites = self->_spriteReferencesForHiddenSprites;
  self->_spriteReferencesForHiddenSprites = v8;
  v10 = v8;

  [(PXGLayout *)self _propagateHiddenSpriteIndexes:v4, v11, v12, v13, v14, v15];
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
  v4 = [(PXGLayout *)self numberOfSprites];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__PXGLayout_hiddenSpriteIndexes__block_invoke;
  v13 = &unk_2782AA900;
  v5 = v4 << 32;
  v14 = self;
  v15 = v3;
  v6 = v3;
  [(PXGLayout *)self enumerateLayoutsForSpritesInRange:v5 options:1 usingBlock:&v10];
  v7 = objc_alloc(MEMORY[0x277CCAA78]);
  v8 = [v7 initWithIndexSet:{v6, v10, v11, v12, v13, v14}];

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

- (void)setSpriteModifier:(id)a3
{
  if (self->_spriteModifier != a3)
  {
    v5 = [a3 copy];
    spriteModifier = self->_spriteModifier;
    self->_spriteModifier = v5;

    v7 = [(PXGLayout *)self localNumberOfSprites]<< 32;

    [(PXGLayout *)self modifySpritesInRange:v7 state:&__block_literal_global_95];
  }
}

- (void)setFloatingOffset:(double)a3
{
  if (self->_floatingOffset != a3)
  {
    self->_floatingOffset = a3;
    [(PXGLayout *)self floatingOffsetDidChange];
  }
}

- (void)setFloating:(BOOL)a3
{
  if (self->_floating != a3)
  {
    self->_floating = a3;
    [(PXGLayout *)self floatingDidChange];
  }
}

- (void)setUserInterfaceDirection:(unint64_t)a3
{
  if (self->_userInterfaceDirection != a3)
  {
    self->_userInterfaceDirection = a3;
    [(PXGLayout *)self userInterfaceDirectionDidChange];
  }
}

- (void)setClippingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_clippingRect, a3))
  {
    self->_clippingRect.origin.x = x;
    self->_clippingRect.origin.y = y;
    self->_clippingRect.size.width = width;
    self->_clippingRect.size.height = height;

    [(PXGLayout *)self _setNeedsUpdateExternally:0];
  }
}

- (void)setAlpha:(double)a3
{
  if (self->_alpha != a3)
  {
    self->_alpha = a3;
    [(PXGLayout *)self alphaDidChange];
    if ([(PXGLayout *)self appliesAlphaToSublayouts])
    {

      [(PXGLayout *)self _setNeedsUpdateExternally:0];
    }
  }
}

- (void)setScrollSpeedRegime:(int64_t)a3
{
  if (self->_scrollSpeedRegime != a3)
  {
    self->_scrollSpeedRegime = a3;
    [(PXGLayout *)self scrollSpeedRegimeDidChange];
  }
}

- (void)setLastScrollDirection:(CGPoint)a3
{
  if (a3.x != self->_lastScrollDirection.x || a3.y != self->_lastScrollDirection.y)
  {
    self->_lastScrollDirection = a3;
    [(PXGLayout *)self lastScrollDirectionDidChange];
  }
}

- (void)setDisplayScale:(double)a3
{
  if (self->_displayScale != a3)
  {
    self->_displayScale = a3;
    [(PXGLayout *)self displayScaleDidChange];
  }
}

- (void)setSafeAreaInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    self->_safeAreaInsets.top = top;
    self->_safeAreaInsets.left = left;
    self->_safeAreaInsets.bottom = bottom;
    self->_safeAreaInsets.right = right;

    [(PXGLayout *)self safeAreaInsetsDidChange];
  }
}

- (void)containingScrollViewDidScroll:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PXGLayout *)self sublayoutDataStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PXGLayout_containingScrollViewDidScroll___block_invoke;
  v6[3] = &__block_descriptor_48_e26_v32__0q8__PXGLayout_16_B24l;
  *&v6[4] = x;
  *&v6[5] = y;
  [v5 enumerateSublayoutsUsingBlock:v6];
}

- (void)setVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_visibleRect))
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

- (void)setReferenceOptions:(unsigned __int16)a3
{
  if (self->_referenceOptions != a3)
  {
    self->_referenceOptions = a3;
    [(PXGLayout *)self referenceOptionsDidChange];
  }
}

- (void)setReferenceDepth:(double)a3
{
  if (self->_referenceDepth != a3)
  {
    self->_referenceDepth = a3;
    [(PXGLayout *)self referenceDepthDidChange];
  }
}

- (void)setReferenceSize:(CGSize)a3
{
  if (a3.width != self->_referenceSize.width || a3.height != self->_referenceSize.height)
  {
    self->_referenceSize = a3;
    [(PXGLayout *)self referenceSizeDidChange];
  }
}

- (void)setLayoutQueue:(id)a3
{
  v5 = a3;
  if (self->_layoutQueue != v5)
  {
    objc_storeStrong(&self->_layoutQueue, a3);
    [(PXGLayout *)self layoutQueueDidChange];
    v6 = [(PXGLayout *)self sublayoutDataStore];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__PXGLayout_setLayoutQueue___block_invoke;
    v7[3] = &unk_2782AA878;
    v8 = v5;
    [v6 enumerateSublayoutsUsingBlock:v7];
  }
}

- (void)setAppearState:(unint64_t)a3
{
  if (self->_appearState != a3)
  {
    self->_appearState = a3;
    [(PXGLayout *)self appearStateDidChange];
  }

  v5 = [(PXGLayout *)self sublayoutDataStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__PXGLayout_setAppearState___block_invoke;
  v6[3] = &__block_descriptor_40_e26_v32__0q8__PXGLayout_16_B24l;
  v6[4] = a3;
  [v5 enumerateSublayoutsUsingBlock:v6];
}

- (void)setViewEnvironment:(id)a3
{
  v5 = a3;
  v6 = self->_viewEnvironment;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(PXGViewEnvironment *)v6 isEqual:v5];

    if (!v8)
    {
      [(PXGLayout *)self viewEnvironmentWillChange:v5];
      objc_storeStrong(&self->_viewEnvironment, a3);
      [(PXGLayout *)self viewEnvironmentDidChange];
      v9 = [(PXGLayout *)self sublayoutDataStore];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32__PXGLayout_setViewEnvironment___block_invoke;
      v10[3] = &unk_2782AA878;
      v11 = v5;
      [v9 enumerateSublayoutsUsingBlock:v10];
    }
  }
}

- (id)viewForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PXGLayout *)self viewDelegate];
  v6 = [v5 layout:self viewForSpriteIndex:v3];

  return v6;
}

- (void)updateAsRootIfNeeded
{
  v4 = [(PXGLayout *)self rootLayout];

  if (v4 != self)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:737 description:{@"Invalid parameter not satisfying: %@", @"self == self.rootLayout"}];
  }

  if (PXGLayoutCanInstallLayoutCompletionBlock)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:738 description:{@"Invalid parameter not satisfying: %@", @"PXGLayoutCanInstallLayoutCompletionBlock == NO"}];
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

- (void)installLayoutCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXGLayout *)self layoutQueue];
  dispatch_assert_queue_V2(v5);

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
    v14 = v4;
    v8 = v7;
    v9 = [v12 copy];
    v10 = PXGLayoutLayoutCompletionBlock;
    PXGLayoutLayoutCompletionBlock = v9;
  }

  else
  {
    v11 = [v4 copy];
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

- (void)performChangesWithLocalUpdate:(id)a3
{
  isPerformingWithLocalUpdate = self->_isPerformingWithLocalUpdate;
  self->_isPerformingWithLocalUpdate = 1;
  (*(a3 + 2))(a3, a2);
  self->_isPerformingWithLocalUpdate = isPerformingWithLocalUpdate;
  if (!isPerformingWithLocalUpdate)
  {
    self->_needsUpdate = 1;

    [(PXGLayout *)self updateIfNeeded];
  }
}

- (void)performSpriteStylingUpdate:(id)a3
{
  isUpdatingSpriteStyling = self->_isUpdatingSpriteStyling;
  self->_isUpdatingSpriteStyling = 1;
  (*(a3 + 2))(a3, a2);
  self->_isUpdatingSpriteStyling = isUpdatingSpriteStyling;
}

- (void)updateStylingForSpritesAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PXGLayout *)self hiddenSpriteIndexes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PXGLayout_updateStylingForSpritesAtIndexes___block_invoke;
  v8[3] = &unk_2782ABE78;
  v8[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
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
  v3 = [v2 enableLayoutDanglingUpdatesAssertions];

  return v3;
}

- (void)_setNeedsUpdateExternally:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_isPerformingWithLocalUpdate)
  {
    if (self->_isUpdating)
    {
      if (a3 && !self->_isUpdatingAnchoring)
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
              v10 = self;
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

    v5 = [(PXGLayout *)self superlayout];
    [v5 sublayoutNeedsUpdate:self];

    v6 = [(PXGLayout *)self rootLayout];
    v7 = [v6 updateDelegate];
    [v7 layoutNeedsUpdate:v6];

    v8 = [(PXGLayout *)self activeAnchor];
    [v8 setNeedsUpdate:1];
  }
}

- (UICoordinateSpace)coordinateSpace
{
  v3 = [(PXGLayout *)self scrollDelegate];
  v4 = [v3 contentCoordinateSpaceForLayout:self];

  return v4;
}

- (unsigned)convertSpriteIndex:(unsigned int)a3 fromLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(PXGLayout *)self ancestorSharedWithLayout:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 convertSpriteIndex:objc_msgSend(v7 toDescendantLayout:{"convertSpriteIndex:fromDescendantLayout:", v4, v6), self}];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)ancestorSharedWithLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  if (v5)
  {
    while (1)
    {
      v6 = v4;
      if (v4)
      {
        break;
      }

LABEL_6:
      v9 = [(PXGLayout *)v5 superlayout];

      v5 = v9;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v7 = v6;
    while (v5 != v7)
    {
      v8 = [(PXGLayout *)v7 superlayout];

      v7 = v8;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v5 = v5;
  }

LABEL_9:

  return v5;
}

- (BOOL)isDescendantOfLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v5;
  for (i = v5 != 0; v6 != v4 && v6; i = v6 != 0)
  {
    v8 = v6;
    v6 = [v6 superlayout];
  }

  return i;
}

- (CGPoint)_offsetToDescendantLayout:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v7 = v4;
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
      v12 = [(PXGLayout *)v10 sublayoutDataStore];
      v13 = v12;
      if (v12)
      {
        [v12 geometryForSublayout:v9];
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

- (CGPoint)convertPoint:(CGPoint)a3 fromDescendantLayout:(id)a4
{
  [(PXGLayout *)self convertRect:a4 fromDescendantLayout:a3.x, a3.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
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

- (CGPoint)convertPoint:(CGPoint)a3 toDescendantLayout:(id)a4
{
  [(PXGLayout *)self convertRect:a4 toDescendantLayout:a3.x, a3.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
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

- (CGPoint)convertPoint:(CGPoint)a3 fromLayout:(id)a4
{
  [(PXGLayout *)self convertRect:a4 fromLayout:a3.x, a3.y, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
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

- (CGRect)convertRect:(CGRect)a3 fromLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PXGLayout *)self ancestorSharedWithLayout:v9];
  v11 = v10;
  if (v10)
  {
    [v10 convertRect:v9 fromDescendantLayout:{x, y, width, height}];
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

- (CGRect)convertRect:(CGRect)a3 fromDescendantLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
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
    [(PXGLayout *)self _offsetToDescendantLayout:v9];
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

- (CGRect)convertRect:(CGRect)a3 toDescendantLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
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
    [(PXGLayout *)self _offsetToDescendantLayout:v9];
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

- (id)convertSpriteIndexes:(id)a3 fromDescendantLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    if (v10 != self)
    {
      v11 = v10;
      do
      {
        v12 = v11;
        v11 = [(PXGLayout *)v11 superlayout];
        v13 = [(PXGLayout *)v11 spriteDataStore];
        v14 = [v13 count];
        v15 = [(PXGLayout *)v11 sublayoutDataStore];
        v16 = [v15 spriteIndexOriginForSublayout:v12];
      }

      while (v11 != self && v11);
      v17 = (v16 + v14);
      goto LABEL_7;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXGLayout.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"descendantLayout"}];

    if (self)
    {
      v17 = 0;
      v11 = 0;
LABEL_7:
      v18 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __55__PXGLayout_convertSpriteIndexes_fromDescendantLayout___block_invoke;
      v22[3] = &unk_2782ABFE0;
      v24 = v17;
      v19 = v18;
      v23 = v19;
      [v7 enumerateRangesUsingBlock:v22];

      goto LABEL_11;
    }
  }

  v19 = v7;
  v11 = v9;
LABEL_11:

  return v19;
}

- (_PXGSpriteIndexRange)convertSpriteIndexRange:(_PXGSpriteIndexRange)a3 fromDescendantLayout:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  location = 0xFFFFFFFFLL;
  if (a3.location != -1 && v6)
  {
    v10 = HIDWORD(*&a3);
    v11 = v6;
    if (v11 != self)
    {
      while (1)
      {
        v12 = [(PXGLayout *)v11 superlayout];
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v14 = [(PXGLayout *)v12 spriteDataStore];
        v15 = [v14 count];
        v16 = [(PXGLayout *)v13 sublayoutDataStore];
        a3.location += v15 + [v16 spriteIndexOriginForSublayout:v11];

        v11 = v13;
        if (v13 == self)
        {
          v11 = v13;
          goto LABEL_8;
        }
      }

      v10 = 0;
      a3.location = -1;
    }

LABEL_8:

    v8 = v10 << 32;
    location = a3.location;
  }

  return (v8 | location);
}

- (unsigned)convertSpriteIndex:(unsigned int)a3 toDescendantLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = v6;
  v8 = -1;
  if (v4 != -1 && v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = -1;
    if (v6 == self)
    {
      v20 = v4;
    }

    else
    {
      v9 = [(PXGLayout *)v6 superlayout];

      if (v9 == self)
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
        v10 = [(PXGLayout *)v7 superlayout];
        if (v10)
        {
          v11 = [(PXGLayout *)self convertSpriteIndex:v4 toDescendantLayout:v10];
          *(v18 + 6) = v11;
          if (v11 != -1)
          {
            v12 = [v10 convertSpriteIndex:v11 toDescendantLayout:v7];
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

- (void)enumerateLayoutsForSpritesInRange:(_PXGSpriteIndexRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = [(PXGLayout *)self spriteDataStore];
  v20 = 0;
  v10 = [v9 count];
  v11 = v10;
  if (!HIDWORD(*&a3))
  {
    goto LABEL_8;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  v12 = a3.length + a3.location;
  if (!(a3.length + a3.location) || v10 <= a3.location)
  {
    goto LABEL_8;
  }

  if (v12 >= v10)
  {
    v12 = v10;
  }

  v8[2](v8, a3.location | ((v12 - a3.location) << 32), self, &v20);
  if ((v20 & 1) == 0)
  {
LABEL_8:
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2810000000;
    v19[3] = "";
    v19[4] = v11;
    v13 = [(PXGLayout *)self sublayoutDataStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__PXGLayout_enumerateLayoutsForSpritesInRange_options_usingBlock___block_invoke;
    v14[3] = &unk_2782AA828;
    v17 = a4;
    v18 = a3;
    v16 = v19;
    v15 = v8;
    [v13 enumerateSublayoutsUsingBlock:v14];

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

- (void)setSuperlayout:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_superlayout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_superlayout, obj);
    [(PXGLayout *)self superlayoutDidChange];
    v5 = obj;
  }
}

- (void)setEntityManager:(id)a3
{
  v5 = a3;
  entityManager = self->_entityManager;
  if (entityManager != v5)
  {
    v16 = v5;
    v7 = [(PXGLayout *)self spriteDataStore];
    v8 = [v7 entities];
    v9 = [(PXGLayout *)self spriteDataStore];
    -[PXGEntityManager destroyEntities:count:](entityManager, "destroyEntities:count:", v8, [v9 count]);

    objc_storeStrong(&self->_entityManager, a3);
    v10 = [(PXGLayout *)self spriteDataStore];
    if (v16)
    {
      v11 = [v10 count];
      v12 = [(PXGLayout *)self spriteDataStore];
      -[PXGEntityManager createEntitiesWithCount:addingToArray:](v16, "createEntitiesWithCount:addingToArray:", v11, [v12 entities]);
    }

    else
    {
      [v10 clearEntities];
    }

    v13 = [(PXGLayout *)self sublayoutDataStore];
    if ([v13 count] >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [v13 sublayoutAtIndex:v14];
        [v15 setEntityManager:v16];

        ++v14;
      }

      while (v14 < [v13 count]);
    }

    [(PXGLayout *)self entityManagerDidChange];

    v5 = v16;
  }
}

- (void)setContentSource:(id)a3
{
  v18 = a3;
  objc_storeWeak(&self->_contentSource, v18);
  if (objc_opt_respondsToSelector())
  {
    v4 = v18;
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
    v15 = v18;
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

    v7 = [(PXGLayout *)self spriteDataStore];
    v8 = v7;
    if (v7)
    {
      [v7 sprites];
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
    v4 = objc_loadWeakRetained(&self->_nextViewHostingLayout);
  }

  else
  {
    v4 = [(PXGLayout *)self superlayout];
  }

  return v4;
}

+ (unint64_t)scrolledEdgesForVisibleEdges:(unint64_t)a3 scrollableAxis:(int64_t)a4
{
  v4 = a3 & ~(4 * a3) & 8;
  if ((a3 & 0xA) == 2)
  {
    v4 = 2;
  }

  if ((a4 & 2) == 0)
  {
    v4 = 0;
  }

  v5 = v4 | ~(4 * a3) & 4;
  if ((a3 & 4) == 0)
  {
    v5 = v4;
  }

  if ((a3 & 5) == 1)
  {
    v6 = v4 | 1;
  }

  else
  {
    v6 = v5;
  }

  if (a4)
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
  v3 = [(PXGLayout *)self internalCurrentDataSourceChange];
  if (!v3)
  {
    v4 = [(PXGLayout *)self superlayout];
    if (v4)
    {
      do
      {
        v5 = v4;
        v3 = [v4 internalCurrentDataSourceChange];
        v4 = [v4 superlayout];
      }

      while (v4 && !v3);
    }

    else
    {
      v3 = 0;
    }

    [(PXGLayout *)self setInternalCurrentDataSourceChange:v3];
  }

  return v3;
}

- (void)applySectionedChangeDetailsForSingleSection:(id)a3 dataSourceBeforeChanges:(id)a4 dataSourceAfterChanges:(id)a5 changeMediaVersionHandler:(id)a6 sectionIndexPathBeforeState:(PXSimpleIndexPath *)a7
{
  v99 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [[PXGDataSourceChange alloc] initWithChangeDetails:v13 dataSourceBeforeChanges:v14 dataSourceAfterChanges:v15];
  [(PXGLayout *)self setInternalCurrentDataSourceChange:v17];

  v73 = [(PXGLayout *)self layoutForItemChanges];
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &__block_literal_global_19_15284;
  }

  v19 = MEMORY[0x21CEE40A0](v18);

  v20 = [v13 count];
  v95 = 0u;
  v96 = 0u;
  v21 = *&a7->var2;
  v94[0] = *&a7->var0;
  v94[1] = v21;
  [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:v13 toIndexPath:v94 hasIncrementalChanges:0 objectChanged:0];
  if (v95 == *MEMORY[0x277D3CF78] || a7->var0 == *MEMORY[0x277D3CF78])
  {
    goto LABEL_31;
  }

  v71 = v20;
  v62 = self;
  v68 = v13;
  v69 = v15;
  v67 = v14;
  var1 = a7->var1;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v23 = v13;
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
        v29 = [v28 sectionChanges];
        var1 = [v29 indexAfterApplyingChangesToIndex:var1];

        v30 = [v28 sectionChanges];
        if (([v30 hasIncrementalChanges] & 1) == 0)
        {

LABEL_30:
          v14 = v67;
          v13 = v68;
          v15 = v69;
          v19 = v65;
          goto LABEL_31;
        }

        v31 = [v28 itemChangesInSection:var1];
        v32 = [v31 hasIncrementalChanges];

        if (!v32)
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

  v14 = v67;
  v13 = v68;
  v15 = v69;
  if (!v71 || ![v69 numberOfSections])
  {
LABEL_31:
    if ([v15 numberOfSections] < 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = [v15 numberOfItemsInSection:a7->var1];
    }

    v55 = [MEMORY[0x277D3CCC8] changeDetailsWithNoIncrementalChanges];
    v38 = v73;
    [v73 setNumberOfItems:v54 withChangeDetails:v55];
  }

  else
  {
    v64 = a2;
    v66 = v19;
    v33 = [MEMORY[0x277D3CD78] indexPathSet];
    v34 = a7->var1;
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
      v38 = v73;
      obj = v35;
      do
      {
        v39 = 0;
        v40 = v33;
        do
        {
          if (*v87 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v86 + 1) + 8 * v39);
          v42 = [v41 sectionChanges];
          v34 = [v42 indexAfterApplyingChangesToIndex:v34];
          v43 = [v41 indexPathSetAfterApplyingChangesToIndexPathSet:v40 hasIncrementalChanges:0];
          v33 = [v43 mutableCopy];

          if (v38)
          {
            v44 = [v41 itemChangesInSection:v34];
            if (([v44 hasIncrementalChanges] & 1) == 0)
            {
              v53 = [MEMORY[0x277CCA890] currentHandler];
              [v53 handleFailureInMethod:v64 object:v62 file:@"PXGDataSourceDrivenLayout.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"itemChanges.hasIncrementalChanges"}];
            }

            v45 = [v38 numberOfItems];
            v46 = [v44 insertedIndexes];
            v47 = [v46 count] + v45;
            v48 = [v44 removedIndexes];
            v49 = v47 - [v48 count];

            v50 = v49;
            v38 = v73;
            [v73 setNumberOfItems:v50 withChangeDetails:v44];
            v51 = [v41 toDataSourceIdentifier];
            v84[0] = MEMORY[0x277D85DD0];
            v84[1] = 3221225472;
            v84[2] = __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_2;
            v84[3] = &unk_2782AAE58;
            v85 = v44;
            v52 = v44;
            [v33 modifyItemIndexSetForDataSourceIdentifier:v51 section:v34 usingBlock:v84];
          }

          ++v39;
          v40 = v33;
        }

        while (v37 != v39);
        v35 = obj;
        v37 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
      }

      while (v37);
    }

    else
    {
      v38 = v73;
    }

    v56 = [v38 numberOfItems];
    if (v56 != [v69 numberOfItemsInSection:*(&v95 + 1)])
    {
      v60 = [MEMORY[0x277CCA890] currentHandler];
      v61 = [v38 numberOfItems];
      [v60 handleFailureInMethod:v64 object:v62 file:@"PXGDataSourceDrivenLayout.m" lineNumber:197 description:{@"Layout item count %ld does not match data source %ld", v61, objc_msgSend(v69, "numberOfItemsInSection:", *(&v95 + 1))}];
    }

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __185__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetailsForSingleSection_dataSourceBeforeChanges_dataSourceAfterChanges_changeMediaVersionHandler_sectionIndexPathBeforeState___block_invoke_3;
    v79[3] = &unk_2782AAEA8;
    v57 = v35;
    v80 = v57;
    v81 = v62;
    v82 = v33;
    v83 = v64;
    v55 = v33;
    [v55 enumerateDataSourceIdentifiers:v79];
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
    [v55 enumerateItemIndexSetsUsingBlock:v74];

    v14 = v67;
    v13 = v68;
    v15 = v69;
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

- (void)applySectionedChangeDetailsForSingleSection:(id)a3 dataSourceBeforeChanges:(id)a4 dataSourceAfterChanges:(id)a5 changeMediaVersionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 identifier];
  v15 = xmmword_21AE2D500;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  [(PXGLayout *)self applySectionedChangeDetailsForSingleSection:v13 dataSourceBeforeChanges:v12 dataSourceAfterChanges:v11 changeMediaVersionHandler:v10 sectionIndexPathBeforeState:&v14];
}

- (void)applySectionedChangeDetails:(id)a3 dataSourceBeforeChanges:(id)a4 dataSourceAfterChanges:(id)a5 sublayoutProvider:(id)a6 outChangedSections:(id *)a7 outSectionsWithItemChanges:(id *)a8 changeMediaVersionHandler:(id)a9
{
  v96 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v68 = a6;
  v16 = a9;
  v17 = [[PXGDataSourceChange alloc] initWithChangeDetails:v13 dataSourceBeforeChanges:v14 dataSourceAfterChanges:v15];
  [(PXGLayout *)self setInternalCurrentDataSourceChange:v17];

  v90 = 0u;
  v91 = 0u;
  v18 = [v13 count] == 0;
  v92 = 0u;
  v93 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v90 objects:v95 count:16];
  v66 = self;
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

        v24 = [*(*(&v90 + 1) + 8 * i) sectionChanges];
        v25 = [v24 hasIncrementalChanges];

        if (!v25)
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
    self = v66;
  }

  v26 = [(PXGLayout *)self sublayoutDataStore];
  v27 = v19;
  v28 = [v26 count];
  if (v16)
  {
    v29 = v16;
  }

  else
  {
    v29 = &__block_literal_global_15304;
  }

  v30 = MEMORY[0x21CEE40A0](v29);

  if (v18)
  {
    v31 = v68;
    -[PXGLayout applySublayoutChangeDetails:countAfterChanges:sublayoutProvider:](self, "applySublayoutChangeDetails:countAfterChanges:sublayoutProvider:", 0, [v15 numberOfSections], v68);
  }

  else
  {
    v56 = v30;
    v65 = v26;
    v58 = v15;
    v59 = v14;
    v32 = [MEMORY[0x277CCAB58] indexSet];
    v33 = [MEMORY[0x277CCAB58] indexSet];
    v34 = [MEMORY[0x277D3CD78] indexPathSet];
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
        v36 = v32;
        do
        {
          v37 = v34;
          if (*v87 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v86 + 1) + 8 * v35);
          v39 = [v38 sectionChanges];
          v40 = [v39 insertedIndexes];
          v41 = [v40 count] + v28;
          v42 = [v39 removedIndexes];
          v43 = v41 - [v42 count];

          [(PXGLayout *)v66 applySublayoutChangeDetails:v39 countAfterChanges:v43 sublayoutProvider:v68];
          v44 = [v39 indexSetAfterApplyingChangesToIndexSet:v36];
          v32 = [v44 mutableCopy];

          v45 = [v39 changedIndexes];
          [v32 addIndexes:v45];

          v46 = [v39 indexSetAfterApplyingChangesToIndexSet:v33];
          v47 = [v46 mutableCopy];

          v48 = [v38 sectionsWithItemChanges];
          [v47 addIndexes:v48];

          v49 = [v38 indexPathSetAfterApplyingChangesToIndexPathSet:v37 hasIncrementalChanges:0];
          v50 = [v49 mutableCopy];

          v51 = [v38 sectionsWithItemChanges];
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_2;
          v79[3] = &unk_2782AAE80;
          v80 = v65;
          v81 = v66;
          v28 = v43;
          v82 = v38;
          v34 = v50;
          v83 = v34;
          v33 = v47;
          v84 = v33;
          v85 = v68;
          [v51 enumerateIndexesUsingBlock:v79];

          ++v35;
          v36 = v32;
        }

        while (v67 != v35);
        v67 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v67);
    }

    if (a7)
    {
      *a7 = [v32 copy];
    }

    v14 = v59;
    v27 = v57;
    v26 = v65;
    if (a8)
    {
      *a8 = [v33 copy];
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __205__PXGLayout_PXGDataSourceDrivenLayout__applySectionedChangeDetails_dataSourceBeforeChanges_dataSourceAfterChanges_sublayoutProvider_outChangedSections_outSectionsWithItemChanges_changeMediaVersionHandler___block_invoke_4;
    v74[3] = &unk_2782AAEA8;
    v52 = obj;
    v75 = v52;
    v76 = v66;
    v77 = v34;
    v78 = a2;
    v53 = v34;
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
    v15 = v58;
    v31 = v68;
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