@interface PXGItemsLayout
- (CGSize)sizeForItem:(int64_t)item;
- (PXGItemsLayout)init;
- (PXGItemsLayoutDelegate)delegate;
- (PXGItemsLayoutDelegate)insetDelegate;
- (PXGItemsLayoutDelegate)marginDelegate;
- (PXGLayoutContentSource)accessoryItemContentSource;
- (_NSRange)itemRangeForSpriteIndexRange:(_PXGSpriteIndexRange)range;
- (_NSRange)itemsToLoad;
- (_NSRange)loadedItems;
- (id)axSpriteIndexes;
- (id)axSpriteIndexesInRect:(CGRect)rect;
- (id)axVisibleSpriteIndexes;
- (id)description;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)itemsForSpriteIndexes:(id)indexes;
- (id)loadedItemsForItems:(id)items;
- (id)objectReferenceForItem:(int64_t)item;
- (id)objectReferenceForSpriteIndex:(unsigned int)index;
- (id)spriteIndexesForItems:(id)items;
- (int64_t)anchorItemForAnchoredContentEdges;
- (int64_t)anchorItemIndexForRootAnchor;
- (int64_t)anchorItemTypeForAnchoredContentEdges;
- (int64_t)itemForObjectReference:(id)reference options:(unint64_t)options;
- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction;
- (unsigned)spriteIndexForItem:(int64_t)item;
- (void)_handleFocusChangeWithUserInfo:(id)info;
- (void)_handleSelectionChangeWithUserInfo:(id)info;
- (void)_invalidateAccessoryItems;
- (void)_updateAccessoryItems;
- (void)_updateFocusedItemIfNeeded;
- (void)_updateHoveredItemIfNeeded;
- (void)_updateLoadedItems;
- (void)_updatePressedItemIfNeeded;
- (void)_updateStylableType:(int64_t)type;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)dealloc;
- (void)didUpdate;
- (void)endApplyingItemChanges;
- (void)invalidateLoadedItems;
- (void)invalidateStylableType:(int64_t)type;
- (void)setAccessoryItemContentSource:(id)source;
- (void)setAnimationParameters:(id)parameters forStylableType:(int64_t)type;
- (void)setDelegate:(id)delegate;
- (void)setDropTargetObjectReference:(id)reference;
- (void)setDropTargetStyle:(unint64_t)style;
- (void)setItem:(int64_t)item forStylableType:(int64_t)type animated:(BOOL)animated;
- (void)setLazy:(BOOL)lazy;
- (void)setLoadedItems:(_NSRange)items;
- (void)setNumberOfAccessoryItems:(int64_t)items;
- (void)setNumberOfItems:(int64_t)items withChangeDetails:(id)details changeMediaVersionHandler:(id)handler;
- (void)update;
- (void)updateAccessoryItemsIfNeeded;
- (void)updateItemEffectIDsIfNeeded;
- (void)updateLoadedItemsIfNeeded;
- (void)willUpdate;
@end

@implementation PXGItemsLayout

- (PXGItemsLayout)init
{
  v10.receiver = self;
  v10.super_class = PXGItemsLayout;
  v2 = [(PXGLayout *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 1048) = xmmword_21AE2D4E0;
    v4 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
    v3->_currentStylableItems = v4;
    memset_pattern16(v4, &unk_21AE2D540, 0x18uLL);
    v5 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
    v3->_pendingStylableItems = v5;
    memset_pattern16(v5, &unk_21AE2D540, 0x18uLL);
    v6 = malloc_type_calloc(3uLL, 1uLL, 0x100004077774924uLL);
    v3->_pendingAnimations = v6;
    v6[2] = 0;
    *v6 = 0;
    v7 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
    v3->_styleableAnimations = v7;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    v8 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
    v3->_stylablePaddings = v8;
    v8[1] = 0.0;
    v8[2] = 0.0;
    *v8 = 0.0;
  }

  return v3;
}

- (void)invalidateLoadedItems
{
  if ([(PXGItemsLayout *)self isLazy])
  {
    p_loadedItemsUpdateFlags = &self->_loadedItemsUpdateFlags;
    needsUpdate = self->_loadedItemsUpdateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_loadedItemsUpdateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_loadedItemsUpdateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_loadedItemsUpdateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout invalidateLoadedItems]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGItemsLayout.m" lineNumber:492 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_loadedItemsUpdateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_loadedItemsUpdateFlags.willPerformUpdate;
    p_loadedItemsUpdateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (_NSRange)loadedItems
{
  p_loadedItems = &self->_loadedItems;
  location = self->_loadedItems.location;
  length = p_loadedItems->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)endApplyingItemChanges
{
  applyingItemChangesCount = self->_applyingItemChangesCount;
  self->_applyingItemChangesCount = applyingItemChangesCount - 1;
  if (applyingItemChangesCount <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemsLayout.m" lineNumber:772 description:@"Unbalanced call to endApplyingItemChanges"];
  }
}

- (void)willUpdate
{
  v9.receiver = self;
  v9.super_class = PXGItemsLayout;
  [(PXGLayout *)&v9 willUpdate];
  self->_loadedItemsUpdateFlags.willPerformUpdate = 1;
  if (self->_loadedItemsUpdateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGItemsLayout.m" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"!_loadedItemsUpdateFlags.isPerformingUpdate"}];
  }

  self->_accessoryItemsUpdateFlags.willPerformUpdate = 1;
  if (self->_accessoryItemsUpdateFlags.isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout willUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXGItemsLayout.m" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"!_accessoryItemsUpdateFlags.isPerformingUpdate"}];
  }

  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout willUpdate]"];
    [currentHandler3 handleFailureInFunction:v8 file:@"PXGItemsLayout.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)updateLoadedItemsIfNeeded
{
  p_loadedItemsUpdateFlags = &self->_loadedItemsUpdateFlags;
  self->_loadedItemsUpdateFlags.willPerformUpdate = 0;
  needsUpdate = self->_loadedItemsUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_loadedItemsUpdateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout updateLoadedItemsIfNeeded]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXGItemsLayout.m" lineNumber:497 description:{@"Invalid parameter not satisfying: %@", @"!_loadedItemsUpdateFlags.isPerformingUpdate"}];

      needsUpdate = p_loadedItemsUpdateFlags->needsUpdate;
    }

    p_loadedItemsUpdateFlags->isPerformingUpdate = 1;
    p_loadedItemsUpdateFlags->updated = 1;
    if (needsUpdate)
    {
      p_loadedItemsUpdateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGItemsLayout *)self _updateLoadedItems];
      needsUpdate = p_loadedItemsUpdateFlags->needsUpdate;
    }

    p_loadedItemsUpdateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout updateLoadedItemsIfNeeded]"];
      [currentHandler2 handleFailureInFunction:v7 file:@"PXGItemsLayout.m" lineNumber:501 description:{@"still needing to update %lu after update pass", p_loadedItemsUpdateFlags->needsUpdate}];
    }
  }
}

- (void)_updateLoadedItems
{
  p_loadedItems = &self->_loadedItems;
  location = self->_loadedItems.location;
  length = self->_loadedItems.length;
  itemsToLoad = [(PXGItemsLayout *)self itemsToLoad];
  if (location != itemsToLoad || length != v7)
  {
    v9 = itemsToLoad;
    v10 = v7;
    v18 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{location, length}];
    [v18 removeIndexesInRange:{v9, v10}];
    v11 = [v18 mutableCopy];
    [v11 shiftIndexesStartingAtIndex:location by:-location];
    v12 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{location, length}];
    [v12 removeIndexes:v18];
    v13 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{v9, v10}];
    [v13 removeIndexesInRange:{location, length}];
    v14 = [v13 mutableCopy];
    firstIndex = [v13 firstIndex];
    firstIndex2 = [v12 firstIndex];
    if (firstIndex >= firstIndex2)
    {
      firstIndex = firstIndex2;
    }

    [v14 shiftIndexesStartingAtIndex:objc_msgSend(v13 by:{"firstIndex"), -firstIndex}];
    v17 = [objc_alloc(MEMORY[0x277D3CCC8]) initWithIncrementalChangeDetailsRemovedIndexes:v11 insertedIndexes:v14 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
    p_loadedItems->location = v9;
    p_loadedItems->length = v10;
    [(PXGItemsLayout *)self loadedItemsDidChange];
    [(PXGLayout *)self applySpriteChangeDetails:v17 countAfterChanges:v10 initialState:0 modifyState:0];
  }
}

- (void)updateAccessoryItemsIfNeeded
{
  p_accessoryItemsUpdateFlags = &self->_accessoryItemsUpdateFlags;
  self->_accessoryItemsUpdateFlags.willPerformUpdate = 0;
  needsUpdate = self->_accessoryItemsUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_accessoryItemsUpdateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout updateAccessoryItemsIfNeeded]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXGItemsLayout.m" lineNumber:735 description:{@"Invalid parameter not satisfying: %@", @"!_accessoryItemsUpdateFlags.isPerformingUpdate"}];

      needsUpdate = p_accessoryItemsUpdateFlags->needsUpdate;
    }

    p_accessoryItemsUpdateFlags->isPerformingUpdate = 1;
    p_accessoryItemsUpdateFlags->updated = 2;
    if ((needsUpdate & 2) != 0)
    {
      p_accessoryItemsUpdateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
      [(PXGItemsLayout *)self _updateAccessoryItems];
      needsUpdate = p_accessoryItemsUpdateFlags->needsUpdate;
    }

    p_accessoryItemsUpdateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout updateAccessoryItemsIfNeeded]"];
      [currentHandler2 handleFailureInFunction:v7 file:@"PXGItemsLayout.m" lineNumber:739 description:{@"still needing to update %lu after update pass", p_accessoryItemsUpdateFlags->needsUpdate}];
    }
  }
}

- (PXGItemsLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXGItemsLayoutDelegate)insetDelegate
{
  if ([(PXGItemsLayout *)self delegateRespondsTo:512])
  {
    delegate = [(PXGItemsLayout *)self delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

- (void)updateItemEffectIDsIfNeeded
{
  if ([(PXGItemsLayout *)self delegateRespondsTo:16])
  {
    localNumberOfSprites = [(PXGLayout *)self localNumberOfSprites];
    entityManager = [(PXGLayout *)self entityManager];
    effectComponent = [entityManager effectComponent];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__PXGItemsLayout_updateItemEffectIDsIfNeeded__block_invoke;
    v6[3] = &unk_2782AA498;
    v6[4] = self;
    v7 = localNumberOfSprites;
    [effectComponent performChanges:v6];
  }
}

void __45__PXGItemsLayout_updateItemEffectIDsIfNeeded__block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 mutableEffectIds];
  v6 = [*(a1 + 32) spriteDataStore];
  v7 = v6;
  if (v6)
  {
    [v6 spritesInRange:*(a1 + 40) << 32];
    v8 = *(&v13 + 1);
  }

  else
  {
    v8 = 0;
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  if (*(a1 + 40))
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 4 * v9);
      v11 = [*(a1 + 32) itemForSpriteIndex:{v9, v13, v14, v15}];
      v12 = [*(a1 + 32) delegate];
      *(v5 + 4 * v10) = [v12 itemsLayout:*(a1 + 32) effectIdForItem:v11];

      ++v9;
    }

    while (v9 < *(a1 + 40));
  }
}

- (void)update
{
  [(PXGItemsLayout *)self updateLoadedItemsIfNeeded];
  [(PXGItemsLayout *)self updateAccessoryItemsIfNeeded];
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  if (self->_updateFlags.needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout update]"];
      [currentHandler handleFailureInFunction:v5 file:@"PXGItemsLayout.m" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __24__PXGItemsLayout_update__block_invoke;
    v9[3] = &unk_2782ABE50;
    v9[4] = self;
    [(PXGLayout *)self performSpriteStylingUpdate:v9];
    self->_updateFlags.isPerformingUpdate = 0;
    if (p_updateFlags->needsUpdate)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout update]"];
      [currentHandler2 handleFailureInFunction:v7 file:@"PXGItemsLayout.m" lineNumber:478 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v8.receiver = self;
  v8.super_class = PXGItemsLayout;
  [(PXGLayout *)&v8 update];
}

uint64_t __24__PXGItemsLayout_update__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateFocusedItemIfNeeded];
  [*(a1 + 32) _updateHoveredItemIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _updatePressedItemIfNeeded];
}

- (void)_updateFocusedItemIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout _updateFocusedItemIfNeeded]"];
    [currentHandler handleFailureInFunction:v6 file:@"PXGItemsLayout.m" lineNumber:620 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 4uLL;
  if ((needsUpdate & 4) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;

    [(PXGItemsLayout *)self _updateStylableType:1];
  }
}

- (void)_updateHoveredItemIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout _updateHoveredItemIfNeeded]"];
    [currentHandler handleFailureInFunction:v6 file:@"PXGItemsLayout.m" lineNumber:628 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 8uLL;
  if ((needsUpdate & 8) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFF7;

    [(PXGItemsLayout *)self _updateStylableType:0];
  }
}

- (void)_updatePressedItemIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout _updatePressedItemIfNeeded]"];
    [currentHandler handleFailureInFunction:v6 file:@"PXGItemsLayout.m" lineNumber:636 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x10uLL;
  if ((needsUpdate & 0x10) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFEFLL;

    [(PXGItemsLayout *)self _updateStylableType:2];
  }
}

- (id)axSpriteIndexes
{
  loadedItems = [(PXGItemsLayout *)self loadedItems];
  v5 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{loadedItems, v4}];
  v6 = [(PXGItemsLayout *)self spriteIndexesForItems:v5];

  return v6;
}

- (id)axVisibleSpriteIndexes
{
  [(PXGLayout *)self visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  itemsGeometry = [(PXGItemsLayout *)self itemsGeometry];
  v12 = itemsGeometry;
  if (itemsGeometry)
  {
    v13 = [itemsGeometry itemsInRect:self inLayout:{v4, v6, v8, v10}];
  }

  else
  {
    v14 = PXAssertGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_21AD38000, v14, OS_LOG_TYPE_ERROR, "A subclass of PXGItemsLayout must provide an itemsGeometry to properly support accessibility", v19, 2u);
    }

    v13 = objc_alloc_init(MEMORY[0x277CCAA78]);
  }

  v15 = v13;
  v16 = [(PXGItemsLayout *)self loadedItemsForItems:v13];

  v17 = [(PXGItemsLayout *)self spriteIndexesForItems:v16];

  return v17;
}

- (void)didUpdate
{
  v9.receiver = self;
  v9.super_class = PXGItemsLayout;
  [(PXGLayout *)&v9 didUpdate];
  if (self->_loadedItemsUpdateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGItemsLayout.m" lineNumber:485 description:{@"Invalid parameter not satisfying: %@", @"!_loadedItemsUpdateFlags.willPerformUpdate"}];
  }

  if (self->_accessoryItemsUpdateFlags.willPerformUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout didUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXGItemsLayout.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"!_accessoryItemsUpdateFlags.willPerformUpdate"}];
  }

  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout didUpdate]"];
    [currentHandler3 handleFailureInFunction:v8 file:@"PXGItemsLayout.m" lineNumber:487 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (PXGLayoutContentSource)accessoryItemContentSource
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryItemContentSource);

  return WeakRetained;
}

- (void)_handleSelectionChangeWithUserInfo:(id)info
{
  infoCopy = info;
  v10 = 0;
  PXGAXGetSelectionFromAndToInfosForUserInfo(infoCopy, &v10);
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    axContainingGroup = [v5 axContainingGroup];
    axGroup = [(PXGLayout *)self axGroup];

    if (axContainingGroup == axGroup)
    {
      v9 = -[PXGItemsLayout itemForSpriteIndex:](self, "itemForSpriteIndex:", [v6 spriteIndex]);
      PXGAXAddSimpleIndexPathGroupChangeUserInfo(infoCopy, 0, 0, &v9);
    }
  }
}

- (void)_handleFocusChangeWithUserInfo:(id)info
{
  infoCopy = info;
  v12 = 0;
  PXGAXGetFocusFromAndToInfosForUserInfo(infoCopy, 0, &v12);
  v5 = v12;
  v6 = v5;
  if (v5)
  {
    v7 = self->_currentStylableItems[1];
    axContainingGroup = [v5 axContainingGroup];
    axGroup = [(PXGLayout *)self axGroup];

    if (axContainingGroup == axGroup)
    {
      v10 = -[PXGItemsLayout itemForSpriteIndex:](self, "itemForSpriteIndex:", [v6 spriteIndex]);
      v11 = v10;
      PXGAXAddSimpleIndexPathGroupChangeUserInfo(infoCopy, 0, 0, &v11);
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v7 != v10)
    {
      [(PXGItemsLayout *)self setItem:v10 forStylableType:1 animated:1];
    }
  }
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  if ((change & 2) != 0)
  {
    [(PXGItemsLayout *)self _handleFocusChangeWithUserInfo:infoCopy];
  }

  if ((change & 4) != 0)
  {
    [(PXGItemsLayout *)self _handleSelectionChangeWithUserInfo:infoCopy];
  }

  v10.receiver = self;
  v10.super_class = PXGItemsLayout;
  [(PXGLayout *)&v10 axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axSpriteIndexesInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemsGeometry = [(PXGItemsLayout *)self itemsGeometry];
  v9 = [itemsGeometry itemsInRect:self inLayout:{x, y, width, height}];
  v10 = [(PXGItemsLayout *)self spriteIndexesForItems:v9];

  return v10;
}

- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction
{
  if (index == -1)
  {
    itemsGeometry = [(PXGItemsLayout *)self itemsGeometry];
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_5;
  }

  v6 = *&index;
  if ([(PXGLayout *)self localNumberOfSprites]> index)
  {
    itemsGeometry = [(PXGItemsLayout *)self itemsGeometry];
    v8 = [(PXGItemsLayout *)self itemForSpriteIndex:v6];
LABEL_5:
    v9 = -[PXGItemsLayout spriteIndexForItem:](self, "spriteIndexForItem:", [itemsGeometry itemClosestToItem:v8 inDirection:direction]);

    return v9;
  }

  return -1;
}

- (int64_t)anchorItemIndexForRootAnchor
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  rootLayout = [(PXGLayout *)self rootLayout];
  activeAnchor = [rootLayout activeAnchor];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PXGItemsLayout_anchorItemIndexForRootAnchor__block_invoke;
  v8[3] = &unk_2782AA4C0;
  v5 = activeAnchor;
  selfCopy = self;
  v11 = &v12;
  v9 = v5;
  [v5 enumerateAllSpriteReferencesUsingBlock:v8];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __46__PXGItemsLayout_anchorItemIndexForRootAnchor__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = [a2 objectReference];
  if (v15)
  {
    if ([*(a1 + 32) type] != 1 || (objc_msgSend(*(a1 + 32), "visibleRect"), v18.origin.x = a5, v18.origin.y = a6, v18.size.width = a7, v18.size.height = a8, CGRectIntersectsRect(v17, v18)))
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) itemForObjectReference:v15 options:a3];
      if (*(*(*(a1 + 48) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
      {
        *a4 = 1;
      }
    }
  }
}

- (int64_t)anchorItemForAnchoredContentEdges
{
  numberOfItems = [(PXGItemsLayout *)self numberOfItems];
  if (!numberOfItems)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = numberOfItems;
  result = [(PXGItemsLayout *)self anchorItemTypeForAnchoredContentEdges];
  if (result && result != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result != 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemsLayout.m" lineNumber:884 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    return v5 - 1;
  }

  return result;
}

- (int64_t)anchorItemTypeForAnchoredContentEdges
{
  rootLayout = [(PXGLayout *)self rootLayout];
  activeAnchor = [rootLayout activeAnchor];

  rootLayout2 = [(PXGLayout *)self rootLayout];
  anchoredContentEdges = [rootLayout2 anchoredContentEdges];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (anchoredContentEdges && activeAnchor && [activeAnchor type] != 5 && -[PXGLayout scrollableAxis](self, "scrollableAxis"))
  {
    scrollableAxis = [(PXGLayout *)self scrollableAxis];
    v9 = 1;
    if (scrollableAxis != 1)
    {
      v9 = 2;
    }

    v10 = v9 & anchoredContentEdges;
    scrollableAxis2 = [(PXGLayout *)self scrollableAxis];
    v12 = 8;
    if (scrollableAxis2 == 1)
    {
      v12 = 4;
    }

    if ((v12 & anchoredContentEdges) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v7 = 0;
    }

    else
    {
      v7 = v13;
    }
  }

  return v7;
}

- (CGSize)sizeForItem:(int64_t)item
{
  v3 = *MEMORY[0x277D3CFE0];
  v4 = *(MEMORY[0x277D3CFE0] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (_NSRange)itemsToLoad
{
  numberOfItems = [(PXGItemsLayout *)self numberOfItems];
  v3 = 0;
  result.length = numberOfItems;
  result.location = v3;
  return result;
}

- (void)setLazy:(BOOL)lazy
{
  if (self->_lazy != lazy)
  {
    self->_lazy = lazy;
    [(PXGItemsLayout *)self invalidateLoadedItems];
  }
}

- (id)objectReferenceForItem:(int64_t)item
{
  if (item != 0x7FFFFFFFFFFFFFFFLL && (self->_delegateRespondsTo & 2) != 0)
  {
    delegate = [(PXGItemsLayout *)self delegate];
    v4 = [delegate itemsLayout:self objectReferenceForItem:item];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)itemForObjectReference:(id)reference options:(unint64_t)options
{
  referenceCopy = reference;
  if (referenceCopy && (self->_delegateRespondsTo & 1) != 0)
  {
    delegate = [(PXGItemsLayout *)self delegate];
    v7 = [delegate itemsLayout:self itemForObjectReference:referenceCopy options:options];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)_updateAccessoryItems
{
  numberOfAccessoryItems = [(PXGItemsLayout *)self numberOfAccessoryItems];
  v4 = numberOfAccessoryItems;
  if (numberOfAccessoryItems >= 1)
  {
    if (self->_accessoryItemsContainerLayout)
    {
      goto LABEL_8;
    }

    v5 = objc_alloc_init(PXGLayout);
    accessoryItemsContainerLayout = self->_accessoryItemsContainerLayout;
    self->_accessoryItemsContainerLayout = v5;

    accessoryItemContentSource = [(PXGItemsLayout *)self accessoryItemContentSource];
    [(PXGLayout *)self->_accessoryItemsContainerLayout setContentSource:accessoryItemContentSource];

    [(PXGLayout *)self insertSublayout:self->_accessoryItemsContainerLayout atIndex:0];
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    [sublayoutDataStore enumerateSublayoutGeometriesInRange:0 options:1 usingBlock:{0, &__block_literal_global_104}];
    goto LABEL_7;
  }

  if (!numberOfAccessoryItems && self->_accessoryItemsContainerLayout)
  {
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [(PXGLayout *)self removeSublayoutsAtIndexes:v9];

    sublayoutDataStore = self->_accessoryItemsContainerLayout;
    self->_accessoryItemsContainerLayout = 0;
LABEL_7:
  }

LABEL_8:
  [(PXGLayout *)self->_accessoryItemsContainerLayout applySpriteChangeDetails:0 countAfterChanges:v4 initialState:0 modifyState:0];

  [(PXGItemsLayout *)self accessoryItemsDidChange];
}

void __39__PXGItemsLayout__updateAccessoryItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0;
}

- (void)_invalidateAccessoryItems
{
  p_accessoryItemsUpdateFlags = &self->_accessoryItemsUpdateFlags;
  needsUpdate = self->_accessoryItemsUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_accessoryItemsUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_accessoryItemsUpdateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_accessoryItemsUpdateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout _invalidateAccessoryItems]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGItemsLayout.m" lineNumber:731 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_accessoryItemsUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_accessoryItemsUpdateFlags.willPerformUpdate;
  p_accessoryItemsUpdateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)_updateStylableType:(int64_t)type
{
  v5 = self->_styleableAnimations[type];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__PXGItemsLayout__updateStylableType___block_invoke;
  v15[3] = &unk_2782AA450;
  v15[4] = self;
  v15[5] = v5;
  v15[6] = type;
  v6 = MEMORY[0x21CEE40A0](v15, a2);
  v7 = v6;
  v8 = self->_currentStylableItems[type];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    (*(v6 + 16))(v6, self->_currentStylableItems[type], 0);
  }

  v9 = self->_pendingStylableItems[type];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7[2](v7, self->_pendingStylableItems[type], 1);
    v10 = 0;
  }

  pendingAnimations = self->_pendingAnimations;
  if (!v10 && pendingAnimations[type] && v5)
  {
    createAnimation = [(PXGLayout *)self createAnimation];
    __38__PXGItemsLayout__updateStylableType___block_invoke_3(createAnimation);
    superlayout = [(PXGLayout *)self superlayout];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      createAnimation2 = [superlayout createAnimation];
      __38__PXGItemsLayout__updateStylableType___block_invoke_3(createAnimation2);
    }

    pendingAnimations = self->_pendingAnimations;
  }

  pendingAnimations[type] = 0;
  self->_currentStylableItems[type] = v9;
}

uint64_t __38__PXGItemsLayout__updateStylableType___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) spriteIndexForItem:a2];
  if (result != -1)
  {
    v7 = result;
    v8 = 0uLL;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = *(a1 + 32);
    if (v9 && ([v9 styleForSpriteAtIndex:v7], v10 = *(a1 + 32), v8 = 0uLL, v22 = 0u, v10))
    {
      [v10 geometryForSpriteAtIndex:v7];
      v12 = 0;
      v11 = 0.0;
    }

    else
    {
      v22 = v8;
      v11 = 0.0;
      v12 = 0;
    }

    if (a3)
    {
      v13 = *(a1 + 40);
      v14 = 0.0;
      if (v13 == 1)
      {
        v14 = 1.0;
      }

      if (v13 == 2)
      {
        v14 = -1.0;
      }

      v15 = *(*(*(a1 + 32) + 944) + 8 * *(a1 + 48));
      LODWORD(v42) = -1093874483;
      v11 = 0.0 + -0.4;
      v12 = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(0), vdupq_lane_s64(*&v14, 0), v15));
    }

    else if (*(a1 + 48) != 2)
    {
      [*(a1 + 32) sizeForItem:a2];
      v20 = v17;
      v21 = v16;
      if ((PXSizeIsNull() & 1) == 0)
      {
        LODWORD(v42) = 0;
        *&v18.f64[0] = v21;
        *&v18.f64[1] = v20;
        v12 = vcvt_f32_f64(v18);
        v11 = 0.0;
      }
    }

    v19 = *(a1 + 32);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__PXGItemsLayout__updateStylableType___block_invoke_2;
    v23[3] = &__block_descriptor_224_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v24 = v37;
    v25 = v38;
    v34 = v22;
    v35 = v11;
    v36 = v12;
    return [v19 modifySpritesInRange:v7 | 0x100000000 state:{v23, v20, v21}];
  }

  return result;
}

void __38__PXGItemsLayout__updateStylableType___block_invoke_3(void *a1)
{
  v1 = a1;
  v3 = +[PXTungstenSettings sharedInstance];
  [v3 keyboardAnimationDuration];
  [v1 setDuration:?];
  [v3 keyboardDampingRatio];
  *&v2 = v2;
  [v1 setDampingRatio:v2];
  [v1 setScope:1];
}

__n128 __38__PXGItemsLayout__updateStylableType___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = *(a1 + 48);
  *a4 = *(a1 + 32);
  a4[1] = v4;
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v7 = *(a1 + 112);
  a4[4] = *(a1 + 96);
  a4[5] = v7;
  a4[2] = v5;
  a4[3] = v6;
  v8 = *(a1 + 128);
  v9 = *(a1 + 144);
  v10 = *(a1 + 176);
  a4[8] = *(a1 + 160);
  a4[9] = v10;
  a4[6] = v8;
  a4[7] = v9;
  result = *(a1 + 192);
  v12 = *(a1 + 208);
  *a3 = result;
  *(a3 + 16) = v12;
  return result;
}

- (void)invalidateStylableType:(int64_t)type
{
  if (type == 2)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_18:
        v7 = needsUpdate | 0x10;
        goto LABEL_22;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      v9 = 16;
      goto LABEL_27;
    }

    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout invalidateStylableType:]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXGItemsLayout.m" lineNumber:614 description:{@"invalidating %lu after it already has been updated", 16}];
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  if (type == 1)
  {
    p_updateFlags = &self->_updateFlags;
    v5 = self->_updateFlags.needsUpdate;
    if (v5)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_15:
        v7 = v5 | 4;
LABEL_22:
        p_updateFlags->needsUpdate = v7;
        return;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      v9 = 4;
      goto LABEL_27;
    }

    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout invalidateStylableType:]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXGItemsLayout.m" lineNumber:611 description:{@"invalidating %lu after it already has been updated", 4}];
      goto LABEL_34;
    }

    goto LABEL_15;
  }

  if (type)
  {
    return;
  }

  p_updateFlags = &self->_updateFlags;
  v4 = self->_updateFlags.needsUpdate;
  if (v4)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_20:
    if ((self->_updateFlags.updated & 8) == 0)
    {
LABEL_21:
      v7 = v4 | 8;
      goto LABEL_22;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGItemsLayout invalidateStylableType:]"];
    [currentHandler handleFailureInFunction:v11 file:@"PXGItemsLayout.m" lineNumber:608 description:{@"invalidating %lu after it already has been updated", 8}];
LABEL_34:

    abort();
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  v9 = 8;
LABEL_27:
  p_updateFlags->needsUpdate = v9;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)setDropTargetObjectReference:(id)reference
{
  referenceCopy = reference;
  v5 = self->_dropTargetObjectReference;
  v6 = v5;
  if (v5 == referenceCopy)
  {
  }

  else
  {
    v7 = [v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dropTargetObjectReference, reference);
      [(PXGItemsLayout *)self dropTargetObjectReferenceDidChange];
    }
  }
}

- (void)setDropTargetStyle:(unint64_t)style
{
  if (self->_dropTargetStyle != style)
  {
    self->_dropTargetStyle = style;
    [(PXGItemsLayout *)self dropTargetObjectReferenceDidChange];
  }
}

- (id)loadedItemsForItems:(id)items
{
  v3 = MEMORY[0x277CCAA78];
  location = self->_loadedItems.location;
  length = self->_loadedItems.length;
  itemsCopy = items;
  v7 = [v3 indexSetWithIndexesInRange:{location, length}];
  v8 = [itemsCopy px_intersectionWithIndexSet:v7];

  return v8;
}

- (id)spriteIndexesForItems:(id)items
{
  itemsCopy = items;
  p_loadedItems = &self->_loadedItems;
  if (self->_loadedItems.length)
  {
    v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:p_loadedItems->location];
    v7 = [itemsCopy px_intersectionWithIndexSet:v6];
    v8 = [v7 mutableCopy];

    [v8 shiftIndexesStartingAtIndex:p_loadedItems->location by:-p_loadedItems->location];
    indexSet = [v8 copy];
  }

  else
  {
    indexSet = [MEMORY[0x277CCAA78] indexSet];
  }

  return indexSet;
}

- (id)itemsForSpriteIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = indexesCopy;
  if (self->_loadedItems.location)
  {
    v6 = [indexesCopy mutableCopy];
    [v6 shiftIndexesStartingAtIndex:0 by:self->_loadedItems.location];
    v7 = [v6 copy];
  }

  else
  {
    v7 = indexesCopy;
  }

  v8 = [v7 copy];

  return v8;
}

- (unsigned)spriteIndexForItem:(int64_t)item
{
  location = self->_loadedItems.location;
  if (item - location < self->_loadedItems.length && item >= location)
  {
    return item - location;
  }

  else
  {
    return -1;
  }
}

- (_NSRange)itemRangeForSpriteIndexRange:(_PXGSpriteIndexRange)range
{
  length = range.length;
  v4 = self->_loadedItems.location + range.location;
  result.length = length;
  result.location = v4;
  return result;
}

- (void)setAccessoryItemContentSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_accessoryItemContentSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_accessoryItemContentSource, obj);
    [(PXGLayout *)self->_accessoryItemsContainerLayout setContentSource:obj];
  }
}

- (void)setNumberOfAccessoryItems:(int64_t)items
{
  if (self->_numberOfAccessoryItems != items)
  {
    if (items < 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemsLayout.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"numberOfAccessoryItems >= 0"}];
    }

    self->_numberOfAccessoryItems = items;
    [(PXGItemsLayout *)self numberOfAccessoryItemsDidChange];

    [(PXGItemsLayout *)self _invalidateAccessoryItems];
  }
}

- (void)setAnimationParameters:(id)parameters forStylableType:(int64_t)type
{
  self->_styleableAnimations[type] = parameters.var0;
  self->_stylablePaddings[type] = parameters.var1;
  [(PXGItemsLayout *)self invalidateStylableType:type];
}

- (void)setItem:(int64_t)item forStylableType:(int64_t)type animated:(BOOL)animated
{
  self->_pendingStylableItems[type] = item;
  self->_pendingAnimations[type] = animated;
  [(PXGItemsLayout *)self invalidateStylableType:type];
}

- (void)setNumberOfItems:(int64_t)items withChangeDetails:(id)details changeMediaVersionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  [(PXGItemsLayout *)self beginApplyingItemChanges];
  _numberOfItems = [(PXGItemsLayout *)self _numberOfItems];
  [(PXGItemsLayout *)self set_numberOfItems:items];
  if (items < 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemsLayout.m" lineNumber:184 description:{@"numberOfItems cannot be negative, but was %ld. Was %ld before change. itemChangeDetails=%@", items, _numberOfItems, detailsCopy}];
  }

  if ([(PXGItemsLayout *)self isLazy])
  {
    loadedItems = [(PXGItemsLayout *)self loadedItems];
    v14 = v13;
    if ([detailsCopy hasIncrementalChanges] && !objc_msgSend(detailsCopy, "hasMoves"))
    {
      if (!v14)
      {
        goto LABEL_8;
      }

      v48 = _numberOfItems;
      v49 = a2;
      v20 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{loadedItems, v14}];
      removedIndexes = [detailsCopy removedIndexes];
      v59 = [removedIndexes px_intersectionWithIndexSet:v20];

      removedIndexes2 = [detailsCopy removedIndexes];
      v51 = v20;
      v23 = [v20 px_indexSetAdjustedForDeletions:removedIndexes2];

      px_coveringRange = [v23 px_coveringRange];
      if (v24 != [v23 count])
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGItemsLayout.m" lineNumber:228 description:@"Should only have a single range of loaded items after removals"];
      }

      insertedIndexes = [detailsCopy insertedIndexes];
      v57 = v23;
      v26 = [v23 px_indexSetAdjustedForInsertions:insertedIndexes];

      v56 = v26;
      px_coveringRange2 = [v26 px_coveringRange];
      v29 = v28;
      v30 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{px_coveringRange2, v28}];
      insertedIndexes2 = [detailsCopy insertedIndexes];
      v32 = [insertedIndexes2 px_intersectionWithIndexSet:v30];

      [(PXGItemsLayout *)self setLoadedItems:px_coveringRange2, v29];
      changedIndexes = [detailsCopy changedIndexes];
      v55 = v30;
      v34 = [changedIndexes px_intersectionWithIndexSet:v30];

      v58 = [v59 mutableCopy];
      [v58 shiftIndexesStartingAtIndex:loadedItems by:-loadedItems];
      v52 = v32;
      v35 = [v32 mutableCopy];
      [v35 shiftIndexesStartingAtIndex:px_coveringRange by:-px_coveringRange2];
      v54 = v34;
      v36 = v34;
      v37 = px_coveringRange2;
      v38 = [v36 mutableCopy];
      [v38 shiftIndexesStartingAtIndex:px_coveringRange2 by:-px_coveringRange2];
      if ([v38 count] && objc_msgSend(v38, "lastIndex") >= v29)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:v49 object:self file:@"PXGItemsLayout.m" lineNumber:257 description:@"An unloaded sprite was marked as modified."];
      }

      changeDetailsWithNoIncrementalChanges = v51;
      v39 = [v51 count];
      v40 = [v35 count] + v39;
      if (v29 != v40 - [v58 count])
      {
        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler4 handleFailureInMethod:v49 object:self file:@"PXGItemsLayout.m" lineNumber:261 description:@"Change handling count mismatch"];
      }

      v50 = v29;
      if (handlerCopy)
      {
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __79__PXGItemsLayout_setNumberOfItems_withChangeDetails_changeMediaVersionHandler___block_invoke_2;
        v66[3] = &unk_2782AA408;
        v70 = v37;
        v71 = v29;
        v72 = v29;
        v73 = v49;
        v67 = detailsCopy;
        selfCopy = self;
        v74 = v48;
        itemsCopy = items;
        v69 = handlerCopy;
        v41 = MEMORY[0x21CEE40A0](v66);
      }

      else
      {
        v41 = 0;
      }

      v42 = v35;
      v43 = [objc_alloc(MEMORY[0x277D3CCC8]) initWithIncrementalChangeDetailsRemovedIndexes:v58 insertedIndexes:v35 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v38];
      v65.receiver = self;
      v65.super_class = PXGItemsLayout;
      [(PXGLayout *)&v65 applySpriteChangeDetails:v43 countAfterChanges:v50 initialState:0 modifyState:v41];
    }

    else
    {
      [(PXGItemsLayout *)self setLoadedItems:0x7FFFFFFFFFFFFFFFLL, 0];
      changeDetailsWithNoIncrementalChanges = [MEMORY[0x277D3CCC8] changeDetailsWithNoIncrementalChanges];
      v76.receiver = self;
      v76.super_class = PXGItemsLayout;
      [(PXGLayout *)&v76 applySpriteChangeDetails:changeDetailsWithNoIncrementalChanges countAfterChanges:0 initialState:0 modifyState:0];
    }

LABEL_8:
    [(PXGItemsLayout *)self invalidateLoadedItems];
    goto LABEL_13;
  }

  [(PXGItemsLayout *)self setLoadedItems:0, items];
  if (handlerCopy)
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __79__PXGItemsLayout_setNumberOfItems_withChangeDetails_changeMediaVersionHandler___block_invoke;
    v78[3] = &unk_2782AA3E0;
    v79 = detailsCopy;
    v80 = handlerCopy;
    v16 = MEMORY[0x21CEE40A0](v78);
  }

  else
  {
    v16 = 0;
  }

  v77.receiver = self;
  v77.super_class = PXGItemsLayout;
  [(PXGLayout *)&v77 applySpriteChangeDetails:detailsCopy countAfterChanges:items initialState:0 modifyState:v16];

LABEL_13:
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v61 = __79__PXGItemsLayout_setNumberOfItems_withChangeDetails_changeMediaVersionHandler___block_invoke_3;
  v62 = &unk_2782AAF40;
  selfCopy2 = self;
  v17 = detailsCopy;
  v18 = 0;
  v64 = v17;
  v81[0] = 0;
  do
  {
    (v61)(v60, v18, v81);
    if (v81[0])
    {
      break;
    }
  }

  while (v18++ != 2);
  [(PXGItemsLayout *)self endApplyingItemChanges];
}

uint64_t __79__PXGItemsLayout_setNumberOfItems_withChangeDetails_changeMediaVersionHandler___block_invoke(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v6 = result;
    v7 = a2;
    v8 = (a5 + 32);
    do
    {
      [*(v6 + 32) indexAfterRevertingChangesFromIndex:v7];
      result = (*(*(v6 + 40) + 16))();
      if (result)
      {
        ++*v8;
      }

      v8 += 20;
      ++v7;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t __79__PXGItemsLayout_setNumberOfItems_withChangeDetails_changeMediaVersionHandler___block_invoke_2(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v6 = a2;
    v7 = result;
    v8 = (a5 + 32);
    do
    {
      [*(v7 + 32) indexAfterRevertingChangesFromIndex:*(v7 + 56) + v6];
      result = (*(*(v7 + 48) + 16))();
      if (result)
      {
        ++*v8;
      }

      ++v6;
      v8 += 20;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t __79__PXGItemsLayout_setNumberOfItems_withChangeDetails_changeMediaVersionHandler___block_invoke_3(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(*(v4 + 920) + 8 * a2);
  if (*(*(v4 + 912) + 8 * a2) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(result + 32) + 912) + 8 * a2) = [*(result + 40) indexAfterApplyingChangesToIndex:?];
    result = [*(v3 + 32) invalidateStylableType:a2];
  }

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(v3 + 40) indexAfterApplyingChangesToIndex:v5];
    *(*(*(v3 + 32) + 920) + 8 * a2) = result;
  }

  return result;
}

- (void)setLoadedItems:(_NSRange)items
{
  if (self->_loadedItems.location != items.location || self->_loadedItems.length != items.length)
  {
    self->_loadedItems = items;
    [(PXGItemsLayout *)self loadedItemsDidChange];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_delegateRespondsTo = 0;
  self->_delegateRespondsTo |= objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();
  v6 = 2;
  if ((v5 & 1) == 0)
  {
    v6 = 0;
  }

  self->_delegateRespondsTo |= v6;
  v7 = objc_opt_respondsToSelector();
  v8 = 4;
  if ((v7 & 1) == 0)
  {
    v8 = 0;
  }

  self->_delegateRespondsTo |= v8;
  v9 = objc_opt_respondsToSelector();
  v10 = 8;
  if ((v9 & 1) == 0)
  {
    v10 = 0;
  }

  self->_delegateRespondsTo |= v10;
  v11 = objc_opt_respondsToSelector();
  v12 = 16;
  if ((v11 & 1) == 0)
  {
    v12 = 0;
  }

  self->_delegateRespondsTo |= v12;
  v13 = objc_opt_respondsToSelector();
  v14 = 32;
  if ((v13 & 1) == 0)
  {
    v14 = 0;
  }

  self->_delegateRespondsTo |= v14;
  v15 = objc_opt_respondsToSelector();
  v16 = 64;
  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  self->_delegateRespondsTo |= v16;
  v17 = objc_opt_respondsToSelector();
  v18 = 128;
  if ((v17 & 1) == 0)
  {
    v18 = 0;
  }

  self->_delegateRespondsTo |= v18;
  v19 = objc_opt_respondsToSelector();
  v20 = 256;
  if ((v19 & 1) == 0)
  {
    v20 = 0;
  }

  self->_delegateRespondsTo |= v20;
  v21 = objc_opt_respondsToSelector();
  v22 = 512;
  if ((v21 & 1) == 0)
  {
    v22 = 0;
  }

  self->_delegateRespondsTo |= v22;
  v23 = objc_opt_respondsToSelector();

  v24 = 1024;
  if ((v23 & 1) == 0)
  {
    v24 = 0;
  }

  self->_delegateRespondsTo |= v24;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  v5 = [(PXGLayout *)self spriteReferenceForSpriteIndex:?];
  if ([(PXGItemsLayout *)self spriteIndexIsItem:v3])
  {
    v6 = PXGHitTestUserDataIdentifierItem;
LABEL_5:
    v7 = [PXGHitTestResult alloc];
    v8 = *v6;
    v9 = [(PXGItemsLayout *)self objectReferenceForSpriteIndex:v3];
    v10 = [(PXGHitTestResult *)v7 initWithSpriteReference:v5 layout:self identifier:v8 userData:v9];

    goto LABEL_7;
  }

  if ([(PXGItemsLayout *)self spriteIndexIsAccessoryItem:v3])
  {
    v6 = PXGHitTestUserDataIdentifierAccessoryItem;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)objectReferenceForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(PXGItemsLayout *)self spriteIndexIsItem:?])
  {
    if ([(PXGItemsLayout *)self delegateRespondsTo:2])
    {
      v5 = [(PXGItemsLayout *)self itemForSpriteIndex:v3];
      delegate = [(PXGItemsLayout *)self delegate];
      v7 = [delegate itemsLayout:self objectReferenceForItem:v5];
LABEL_7:
      v9 = v7;

      goto LABEL_9;
    }
  }

  else if ([(PXGItemsLayout *)self spriteIndexIsAccessoryItem:v3]&& [(PXGItemsLayout *)self delegateRespondsTo:64])
  {
    v8 = [(PXGItemsLayout *)self accessoryItemForSpriteIndex:v3];
    delegate = [(PXGItemsLayout *)self delegate];
    v7 = [delegate itemsLayout:self objectReferenceForAccessoryItem:v8];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (PXGItemsLayoutDelegate)marginDelegate
{
  if ([(PXGItemsLayout *)self delegateRespondsTo:256])
  {
    delegate = [(PXGItemsLayout *)self delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PXGItemsLayout;
  v3 = [(PXGItemsLayout *)&v8 description];
  numberOfItems = [(PXGItemsLayout *)self numberOfItems];
  v10.location = [(PXGItemsLayout *)self loadedItems];
  v5 = NSStringFromRange(v10);
  v6 = [v3 px_stringByAppendingDescriptionDetailsWithFormat:@", numberOfItems=%li, loadedItems=%@, numberOfAccessoryItems=%li, loadedAccessorySprites=%u", numberOfItems, v5, -[PXGItemsLayout numberOfAccessoryItems](self, "numberOfAccessoryItems"), -[PXGLayout numberOfSprites](self->_accessoryItemsContainerLayout, "numberOfSprites")];

  return v6;
}

- (void)dealloc
{
  free(self->_currentStylableItems);
  free(self->_pendingStylableItems);
  free(self->_pendingAnimations);
  free(self->_styleableAnimations);
  free(self->_stylablePaddings);
  v3.receiver = self;
  v3.super_class = PXGItemsLayout;
  [(PXGLayout *)&v3 dealloc];
}

@end