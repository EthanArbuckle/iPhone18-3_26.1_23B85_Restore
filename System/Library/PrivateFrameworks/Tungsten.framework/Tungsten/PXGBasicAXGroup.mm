@interface PXGBasicAXGroup
- (BOOL)_leafAtSpriteIndex:(unsigned int)a3 passesFilter:(unint64_t)a4;
- (BOOL)_leafAtSpriteIndexIsAccessible:(unsigned int)a3;
- (BOOL)_leafAtSpriteIndexIsSelected:(unsigned int)a3;
- (BOOL)_leafAtSpriteIndexIsVisible:(unsigned int)a3;
- (BOOL)_loadOrUpdateLeafAtSpriteIndex:(unsigned int)a3;
- (BOOL)_passesFilter:(unint64_t)a3;
- (BOOL)axIsSelected;
- (BOOL)updateWithSelectedChildren:(id)a3;
- (CGRect)axFrame;
- (NSArray)axLeafs;
- (NSArray)axSubgroups;
- (NSArray)preferredFocusEnvironments;
- (NSIndexSet)loadedLeafIndexes;
- (NSIndexSet)loadedSubgroupIndexes;
- (NSString)description;
- (NSString)recursiveDescription;
- (NSString)recursiveLeafDescription;
- (PXGAXGroupSource)axGroupSource;
- (PXGAXInfoSource)axInfoSource;
- (PXGAXResponder)axNextResponder;
- (PXGBasicAXGroup)axParent;
- (PXGBasicAXGroup)axRootParent;
- (PXGBasicAXGroup)axScrollParent;
- (PXGBasicAXGroup)init;
- (PXGBasicAXGroup)initWithLayout:(id)a3;
- (PXGLayout)containingLayout;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIFocusItemContainer)focusItemContainer;
- (id)_leafAtSpriteIndex:(unsigned int)a3;
- (id)_loadNeighboringLeafsAtSpriteIndex:(unsigned int)a3;
- (id)_paddingForLevel:(int64_t)a3;
- (id)_removeLeafAtSpriteIndex:(unsigned int)a3;
- (id)childrenPassingFilter:(unint64_t)a3 usingOptions:(unint64_t)a4;
- (id)focusItemsForScrollViewController:(id)a3 inRect:(CGRect)a4;
- (id)leafAtPoint:(CGPoint)a3;
- (id)leafsInRect:(CGRect)a3 usingOptions:(unint64_t)a4;
- (id)loadLeafAtSpriteIndexIfNeeded:(unsigned int)a3 usingOptions:(unint64_t)a4;
- (id)loadedSubgroupAtIndex:(int64_t)a3;
- (unsigned)_loadClosestLeafAtSpriteIndex:(unsigned int)a3 inDirection:(unint64_t)a4;
- (unsigned)focusedLeafIndex;
- (void)_addAllLeafsPassingFilter:(unint64_t)a3 intoArray:(id)a4;
- (void)_addChildrenPassingFilter:(unint64_t)a3 usingOptions:(unint64_t)a4 intoArray:(id)a5;
- (void)_addCurrentlyLoadedLeafsPassingFilter:(unint64_t)a3 intoArray:(id)a4;
- (void)_addFirstVisibleIndexes:(id)a3 toIndexesToLoad:(id)a4;
- (void)_addLeafsPassingFilter:(unint64_t)a3 usingOptions:(unint64_t)a4 intoArray:(id)a5;
- (void)_addSubgroupsPassingFilter:(unint64_t)a3 intoArray:(id)a4;
- (void)_appendDescription:(id)a3 atLevel:(int64_t)a4;
- (void)_appendLeafDescription:(id)a3 atLevel:(int64_t)a4;
- (void)_cleanUpSubgroupAfterUnloading:(id)a3;
- (void)_leafsInRect:(CGRect)a3 usingOptions:(unint64_t)a4 intoMutableArray:(id)a5;
- (void)_setLeaf:(id)a3 forSpriteIndex:(unsigned int)a4;
- (void)_unloadSubgroupAtIndex:(int64_t)a3 shouldNotify:(BOOL)a4;
- (void)_updateLayoutIfNeeded;
- (void)_updateLeafAtSpriteIndex:(unsigned int)a3;
- (void)_updateLeafsIfNeeded;
- (void)_updateVersionIfNeeded;
- (void)_updateVisibilityIfNeeded;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)invalidateLayout;
- (void)invalidateLeafs;
- (void)invalidateVersion;
- (void)invalidateVisibility;
- (void)loadSubgroup:(id)a3 atIndex:(int64_t)a4;
- (void)setAxParent:(id)a3;
- (void)setAxRole:(int64_t)a3;
- (void)setNeedsFocusUpdate;
- (void)unloadAllLeafs;
- (void)unloadFromParent;
- (void)unloadLeafAtSpriteIndex:(unsigned int)a3 usingOptions:(unint64_t)a4;
- (void)updateFocusIfNeeded;
- (void)updateIfNeeded;
- (void)updateLeafsWithChangeDetails:(id)a3;
- (void)updateSubgroupsWithChangeDetails:(id)a3;
@end

@implementation PXGBasicAXGroup

- (PXGBasicAXGroup)init
{
  v14.receiver = self;
  v14.super_class = PXGBasicAXGroup;
  v2 = [(PXGBasicAXGroup *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x277CBF3A0] + 16);
    *(v2 + 152) = *MEMORY[0x277CBF3A0];
    *(v2 + 168) = v4;
    *(v2 + 12) = 0;
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableIndexesToSubgroups = v3->_mutableIndexesToSubgroups;
    v3->_mutableIndexesToSubgroups = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableSpritesToLeafs = v3->_mutableSpritesToLeafs;
    v3->_mutableSpritesToLeafs = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
    requiredLeafIndexesToLoad = v3->_requiredLeafIndexesToLoad;
    v3->_requiredLeafIndexesToLoad = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCAA78]);
    previouslySelectedIndexes = v3->_previouslySelectedIndexes;
    v3->_previouslySelectedIndexes = v11;

    v3->_subgroupIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_axNextResponder);

  return WeakRetained;
}

- (void)invalidateVisibility
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 2) != 0)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup invalidateVisibility]"];
    [v2 handleFailureInFunction:v3 file:@"PXGAXGroup.m" lineNumber:128 description:{@"invalidating %lu after it already has been updated", 2}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 2uLL;
}

- (void)invalidateLeafs
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 4) != 0)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup invalidateLeafs]"];
    [v2 handleFailureInFunction:v3 file:@"PXGAXGroup.m" lineNumber:132 description:{@"invalidating %lu after it already has been updated", 4}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 4uLL;
}

- (unsigned)focusedLeafIndex
{
  v3 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  v4 = [v3 focusedItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 axContainingGroup];

    if (v6 == self)
    {
      v7 = [v5 spriteIndex];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)invalidateVersion
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup invalidateVersion]"];
    [v2 handleFailureInFunction:v3 file:@"PXGAXGroup.m" lineNumber:124 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 1uLL;
}

- (void)unloadFromParent
{
  v3 = [(PXGBasicAXGroup *)self subgroupIndex];
  WeakRetained = objc_loadWeakRetained(&self->_axParent);
  v7 = [WeakRetained loadedSubgroupAtIndex:v3];

  v5 = v7;
  if (v7 == self)
  {
    v6 = objc_loadWeakRetained(&self->_axParent);
    [v6 _unloadSubgroupAtIndex:v3 shouldNotify:0];

    v5 = v7;
  }
}

- (void)invalidateLayout
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 8) != 0)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup invalidateLayout]"];
    [v2 handleFailureInFunction:v3 file:@"PXGAXGroup.m" lineNumber:136 description:{@"invalidating %lu after it already has been updated", 8}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 8uLL;
}

- (void)updateIfNeeded
{
  self->_updateFlags.willPerformUpdate = 0;
  if (self->_updateFlags.needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v3 = [MEMORY[0x277CCA890] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup updateIfNeeded]"];
      [v3 handleFailureInFunction:v4 file:@"PXGAXGroup.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 0;
    [(PXGBasicAXGroup *)self _updateVersionIfNeeded];
    [(PXGBasicAXGroup *)self _updateVisibilityIfNeeded];
    [(PXGBasicAXGroup *)self _updateLeafsIfNeeded];
    [(PXGBasicAXGroup *)self _updateLayoutIfNeeded];
    self->_updateFlags.isPerformingUpdate = 0;
    if (self->_updateFlags.needsUpdate)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup updateIfNeeded]"];
      [v6 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:145 description:{@"still needing to update %lu after update pass", self->_updateFlags.needsUpdate}];
    }
  }
}

- (void)_updateVisibilityIfNeeded
{
  if (!self->_updateFlags.isPerformingUpdate)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup _updateVisibilityIfNeeded]"];
    [v11 handleFailureInFunction:v12 file:@"PXGAXGroup.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = self->_updateFlags.needsUpdate;
  self->_updateFlags.updated |= 2uLL;
  if ((needsUpdate & 2) != 0)
  {
    self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
    v13 = [(PXGBasicAXGroup *)self axGroupSource];
    [v13 axFrame];
    v5 = v4;
    v7 = v6;
    [(PXGBasicAXGroup *)self setAxFrame:?];
    [v13 axVisibleRect];
    v10 = v9 < v7 && v8 < v5;
    [(PXGBasicAXGroup *)self setAxIsVisible:v10];
  }
}

- (void)_updateVersionIfNeeded
{
  if (!self->_updateFlags.isPerformingUpdate)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup _updateVersionIfNeeded]"];
    [v4 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = self->_updateFlags.needsUpdate;
  self->_updateFlags.updated |= 1uLL;
  if (needsUpdate)
  {
    self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
    ++self->_version;
  }
}

- (PXGAXGroupSource)axGroupSource
{
  WeakRetained = objc_loadWeakRetained(&self->_axGroupSource);

  return WeakRetained;
}

- (void)_updateLeafsIfNeeded
{
  if (!self->_updateFlags.isPerformingUpdate)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup _updateLeafsIfNeeded]"];
    [v17 handleFailureInFunction:v18 file:@"PXGAXGroup.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = self->_updateFlags.needsUpdate;
  self->_updateFlags.updated |= 4uLL;
  if ((needsUpdate & 4) != 0)
  {
    self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;
    v5 = [(PXGBasicAXGroup *)self axInfoSource];
    if (!v5)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:180 description:@"Should not attempt to update sprites without an infoSource"];
    }

    v6 = objc_alloc(MEMORY[0x277CCAB58]);
    v7 = [v5 axBorderSpriteIndexes];
    v8 = [v6 initWithIndexSet:v7];

    v9 = [v5 axVisibleSpriteIndexes];
    if ([v9 count])
    {
      [v8 addIndex:{objc_msgSend(v9, "firstIndex")}];
      [v8 addIndex:{objc_msgSend(v9, "lastIndex")}];
      if (([(PXGBasicAXGroup *)self leafFeatures]& 2) != 0)
      {
        [v8 addIndexes:v9];
      }
    }

    v10 = [v5 axSelectedSpriteIndexes];
    if ([v10 count])
    {
      [v8 addIndex:{objc_msgSend(v10, "firstIndex")}];
      [v8 addIndex:{objc_msgSend(v10, "lastIndex")}];
    }

    if (([v10 isEqualToIndexSet:self->_previouslySelectedIndexes] & 1) == 0)
    {
      v11 = [v10 copy];
      previouslySelectedIndexes = self->_previouslySelectedIndexes;
      self->_previouslySelectedIndexes = v11;

      [(PXGBasicAXGroup *)self _selectedIndexesDidChange];
    }

    v13 = [(PXGBasicAXGroup *)self focusedLeafIndex];
    if (v13 != -1)
    {
      [v8 addIndex:v13];
    }

    [v8 addIndexes:self->_requiredLeafIndexesToLoad];
    v14 = [(PXGBasicAXGroup *)self loadedLeafIndexes];
    v15 = [v14 mutableCopy];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __39__PXGBasicAXGroup__updateLeafsIfNeeded__block_invoke;
    v21[3] = &unk_2782AAF40;
    v21[4] = self;
    v16 = v15;
    v22 = v16;
    [v8 enumerateIndexesUsingBlock:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__PXGBasicAXGroup__updateLeafsIfNeeded__block_invoke_2;
    v20[3] = &unk_2782ABC08;
    v20[4] = self;
    [v16 enumerateIndexesUsingBlock:v20];
    if (([v14 isEqualToIndexSet:v8] & 1) == 0)
    {
      [(PXGBasicAXGroup *)self invalidateLayout];
    }
  }
}

- (PXGAXInfoSource)axInfoSource
{
  if (self->_updateFlags.needsUpdate)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:253 description:@"Attempted to query group with an invalid version"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_axInfoSource);

  return WeakRetained;
}

- (NSIndexSet)loadedLeafIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v4 = [(NSMutableDictionary *)self->_mutableSpritesToLeafs allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PXGBasicAXGroup_loadedLeafIndexes__block_invoke;
  v7[3] = &unk_2782AAF68;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __39__PXGBasicAXGroup__updateLeafsIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) loadLeafAtSpriteIndexIfNeeded:a2 usingOptions:0];
  [*(a1 + 40) removeIndexes:v3];
}

- (void)_updateLayoutIfNeeded
{
  if (!self->_updateFlags.isPerformingUpdate)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup _updateLayoutIfNeeded]"];
    [v4 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = self->_updateFlags.needsUpdate;
  self->_updateFlags.updated |= 8uLL;
  if ((needsUpdate & 8) != 0)
  {
    self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFF7;
    v6 = [(PXGBasicAXGroup *)self axNextResponder];
    [v6 axGroup:self didChange:8 userInfo:0];
  }
}

uint64_t __36__PXGBasicAXGroup_loadedLeafIndexes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntegerValue];

  return [v2 addIndex:v3];
}

- (PXGLayout)containingLayout
{
  v4 = [(PXGBasicAXGroup *)self axGroupSource];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v4 px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:375 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.axGroupSource", v8, v9}];
    }
  }

  return v4;
}

- (PXGBasicAXGroup)initWithLayout:(id)a3
{
  v4 = a3;
  v5 = [(PXGBasicAXGroup *)self init];
  v6 = v5;
  if (v5)
  {
    [(PXGBasicAXGroup *)v5 setAxGroupSource:v4];
    [(PXGBasicAXGroup *)v6 setAxInfoSource:v4];
    [(PXGBasicAXGroup *)v6 setAxNextResponder:v4];
  }

  return v6;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = a3;
  v6 = [(PXGBasicAXGroup *)self axInfoSource];
  [v6 axDidUpdateFocusInContext:v5];

  v7 = [v5 previouslyFocusedItem];
  v8 = [v5 nextFocusedItem];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__PXGBasicAXGroup_PlatformSpecific__didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v14[3] = &unk_2782A9B38;
  v14[4] = self;
  v9 = MEMORY[0x21CEE40A0](v14);
  v10 = (v9)[2](v9, v7);
  v11 = (v9)[2](v9, v8);
  if (v10 | v11)
  {
    v12 = PXGAXCreateFocusChangeUserInfo(v10, v11);
    v13 = [(PXGBasicAXGroup *)self axNextResponder];
    [v13 axGroup:self didChange:2 userInfo:v12];
  }
}

id __86__PXGBasicAXGroup_PlatformSpecific__didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 spriteIndex];
    v6 = [v4 axContainingGroup];
    v7 = *(a1 + 32);
    v8 = [v6 loadedLeafIndexes];
    v9 = [v8 containsIndex:v5];

    if (v9)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    if (v5 == -1 || v6 != v7)
    {
      v10 = 0;
    }

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateFocusIfNeeded
{
  v2 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (void)setNeedsFocusUpdate
{
  v3 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (UIFocusItemContainer)focusItemContainer
{
  v3 = [(PXGBasicAXGroup *)self axNextResponder];
  v4 = [v3 axContainingScrollViewForAXGroup:self];

  return v4;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  v3 = [(PXGBasicAXGroup *)self axParent];
  if (!v3)
  {
    v4 = [(PXGBasicAXGroup *)self axNextResponder];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 axContainingScrollViewForAXGroup:self];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSArray)preferredFocusEnvironments
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(PXGBasicAXGroup *)self axInfoSource];
  v6 = [(PXGBasicAXGroup *)self loadedLeafIndexes];
  if ([v6 count])
  {
    v7 = [v5 axVisibleSpriteIndexes];
    if ([v6 containsIndex:{objc_msgSend(v7, "firstIndex")}])
    {
      v8 = -[PXGBasicAXGroup loadedLeafAtSpriteIndex:](self, "loadedLeafAtSpriteIndex:", [v7 firstIndex]);
      if (!v8)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"PXGAXGroup+iOS.m" lineNumber:67 description:@"A loaded leaf must not be nil"];
      }

      [v4 addObject:v8];
    }
  }

  return v4;
}

- (id)focusItemsForScrollViewController:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = +[PXTungstenSettings sharedInstance];
  v10 = [v9 enableTungstenFocusEnvironmentSupport];

  if (v10)
  {
    v11 = [(PXGBasicAXGroup *)self leafsInRect:1 usingOptions:x, y, width, height];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (CGRect)axFrame
{
  x = self->_axFrame.origin.x;
  y = self->_axFrame.origin.y;
  width = self->_axFrame.size.width;
  height = self->_axFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_appendLeafDescription:(id)a3 atLevel:(int64_t)a4
{
  v6 = a3;
  v7 = a4 + 1;
  v8 = [(PXGBasicAXGroup *)self _paddingForLevel:a4 + 1];
  v9 = [(PXGBasicAXGroup *)self _paddingForLevel:a4];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v6 appendFormat:@"<%@: %p; numberOfLeafs = %lu; >\n", v11, self, -[NSMutableDictionary count](self->_mutableSpritesToLeafs, "count")];

  v12 = [(NSMutableDictionary *)self->_mutableSpritesToLeafs allValues];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__PXGBasicAXGroup__appendLeafDescription_atLevel___block_invoke;
  v22[3] = &unk_2782AB1E8;
  v13 = v6;
  v23 = v13;
  v24 = v9;
  v14 = v9;
  [v12 enumerateObjectsUsingBlock:v22];

  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__PXGBasicAXGroup__appendLeafDescription_atLevel___block_invoke_2;
  v18[3] = &unk_2782AB1C0;
  v19 = v13;
  v20 = v8;
  v21 = v7;
  v16 = v8;
  v17 = v13;
  [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v18];
}

void __50__PXGBasicAXGroup__appendLeafDescription_atLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 appendFormat:@"%@  ", v4];
  [*(a1 + 32) appendFormat:@"%@\n", v5];
}

void __50__PXGBasicAXGroup__appendLeafDescription_atLevel___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a3;
  [v4 appendFormat:@"%@   ", v5];
  [v6 _appendLeafDescription:a1[4] atLevel:a1[6] + 1];
}

- (void)_appendDescription:(id)a3 atLevel:(int64_t)a4
{
  v6 = a3;
  v7 = a4 + 1;
  v8 = [(PXGBasicAXGroup *)self _paddingForLevel:a4 + 1];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [(NSMutableDictionary *)self->_mutableIndexesToSubgroups count];
  v12 = [(NSMutableDictionary *)self->_mutableSpritesToLeafs count];
  v13 = objc_loadWeakRetained(&self->_axInfoSource);
  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v13 axSpriteIndexes];
    v27 = v6;
    v28 = v10;
    v18 = v17 = v11;
    [v13 axVisibleSpriteIndexes];
    v19 = v12;
    v20 = v8;
    v22 = v21 = v7;
    v23 = [v14 stringWithFormat:@"<%@: %p axSpriteIndexes = %@; axVisibleSpriteIndexes = %@>", v16, v13, v18, v22];;

    v7 = v21;
    v8 = v20;
    v12 = v19;

    v11 = v17;
    v6 = v27;
    v10 = v28;
  }

  else
  {
    v23 = @"<nil>";
  }

  [v6 appendFormat:@"<%@: %p; numberOfLoadedChildren = %lu; numberOfLeafs = %lu; infoSource = %@; > \n", v10, self, v11, v12, v23];
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__PXGBasicAXGroup__appendDescription_atLevel___block_invoke;
  v29[3] = &unk_2782AB1C0;
  v30 = v6;
  v31 = v8;
  v32 = v7;
  v25 = v8;
  v26 = v6;
  [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v29];
}

void __46__PXGBasicAXGroup__appendDescription_atLevel___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a3;
  [v4 appendFormat:@"%@   ", v5];
  [v6 _appendDescription:a1[4] atLevel:a1[6] + 1];
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

- (NSString)recursiveLeafDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(PXGBasicAXGroup *)self _appendLeafDescription:v3 atLevel:0];
  v4 = [v3 copy];

  return v4;
}

- (NSString)recursiveDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(PXGBasicAXGroup *)self _appendDescription:v3 atLevel:0];
  v4 = [v3 copy];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromCGRect(self->_axFrame);
  v6 = [(NSMutableDictionary *)self->_mutableIndexesToSubgroups count];
  v7 = [(NSMutableDictionary *)self->_mutableSpritesToLeafs count];
  WeakRetained = objc_loadWeakRetained(&self->_axInfoSource);
  v9 = [v3 stringWithFormat:@"<%@: %p frame = %@; numberOfSubgroups = %lu; numberOfLeafs = %lu; infoSource = %@; >", v4, self, v5, v6, v7, WeakRetained];;

  return v9;
}

- (void)setAxParent:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_axParent);
  if (WeakRetained == obj)
  {
  }

  else
  {
    v5 = [obj isEqual:WeakRetained];

    if ((v5 & 1) == 0)
    {
      [(PXGBasicAXGroup *)self unloadFromParent];
      objc_storeWeak(&self->_axParent, obj);
    }
  }
}

- (PXGBasicAXGroup)axParent
{
  WeakRetained = objc_loadWeakRetained(&self->_axParent);

  return WeakRetained;
}

- (NSArray)axSubgroups
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(NSMutableDictionary *)self->_mutableIndexesToSubgroups allValues];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"subgroupIndex" ascending:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  return v5;
}

- (NSArray)axLeafs
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(NSMutableDictionary *)self->_mutableSpritesToLeafs allValues];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"spriteIndex" ascending:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  return v5;
}

- (BOOL)axIsSelected
{
  if ([(PXGBasicAXGroup *)self axRole]== 1)
  {
    v3 = [(PXGBasicAXGroup *)self childrenPassingFilter:10 usingOptions:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)updateWithSelectedChildren:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((self->_updateFlags.needsUpdate & 1) == 0)
  {
    v25 = [(PXGBasicAXGroup *)self axNextResponder];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = a2;
      v24 = v5;
      v9 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          objc_opt_class();
          v14 = objc_opt_isKindOfClass();
          if (isKindOfClass & 1) != 0 || (v14)
          {
            if (isKindOfClass)
            {
              v9 |= v12 == self;
            }

            else
            {
              if ((v14 & 1) == 0)
              {
                v22 = [MEMORY[0x277CCA890] currentHandler];
                [v22 handleFailureInMethod:v23 object:self file:@"PXGAXGroup.m" lineNumber:773 description:@"Code which should be unreachable has been reached"];

                abort();
              }

              v15 = v12;
              v16 = [(PXGBasicAXGroup *)v15 axContainingGroup];

              if (v16 == self)
              {
                v17 = [(PXGBasicAXGroup *)self _loadNeighboringLeafsAtSpriteIndex:[(PXGBasicAXGroup *)v15 spriteIndex]];
                v18 = PXGAXCreateSelectionChangeUserInfo(v15);
                [v25 axGroup:self didChange:4 userInfo:v18];

                v9 = 1;
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);

      v5 = v24;
      if (v9)
      {
        v19 = 1;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46__PXGBasicAXGroup_updateWithSelectedChildren___block_invoke;
    v26[3] = &unk_2782AB198;
    v27 = v6;
    [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v26];

    v19 = 0;
    goto LABEL_22;
  }

  v19 = 0;
LABEL_23:

  return v19;
}

uint64_t __46__PXGBasicAXGroup_updateWithSelectedChildren___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 updateWithSelectedChildren:*(a1 + 32)];
  *a4 = result;
  return result;
}

- (void)_updateLeafAtSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PXGBasicAXGroup *)self _leafAtSpriteIndex:?];
  if (v5)
  {
    v8 = v5;
    v6 = [(PXGBasicAXGroup *)self axInfoSource];
    v7 = [v6 axContentInfoAtSpriteIndex:v3];
    if (v7)
    {
      [(PXGBasicAXGroup *)self _setLeaf:v7 forSpriteIndex:v3];
    }

    v5 = v8;
  }
}

- (void)updateLeafsWithChangeDetails:(id)a3
{
  if ((self->_updateFlags.needsUpdate & 1) == 0)
  {
    v4 = a3;
    v5 = [(PXGBasicAXGroup *)self focusedLeafIndex];
    mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__PXGBasicAXGroup_updateLeafsWithChangeDetails___block_invoke;
    v7[3] = &__block_descriptor_36_e30_v24__0Q8__PXGReusableAXInfo_16l;
    v8 = v5;
    [v4 applyToDictionary:mutableSpritesToLeafs removalHandler:v7 moveHandler:&__block_literal_global_104_15572];
    [v4 applyToIndexSet:self->_requiredLeafIndexesToLoad];
  }
}

void __48__PXGBasicAXGroup_updateLeafsWithChangeDetails___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a2)
  {
    v4 = a3;
    v5 = +[PXGReusableAXInfo sharedPool];
    [v5 checkInReusableObject:v4];
  }
}

- (void)updateSubgroupsWithChangeDetails:(id)a3
{
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PXGBasicAXGroup_updateSubgroupsWithChangeDetails___block_invoke;
  v5[3] = &unk_2782AB110;
  v5[4] = self;
  [a3 applyToDictionary:mutableIndexesToSubgroups removalHandler:v5 moveHandler:&__block_literal_global_100];
}

- (BOOL)_leafAtSpriteIndexIsVisible:(unsigned int)a3
{
  v4 = [(PXGBasicAXGroup *)self axInfoSource];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 axVisibleSpriteIndexes];
    v7 = [v6 containsIndex:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_leafAtSpriteIndexIsSelected:(unsigned int)a3
{
  v4 = [(PXGBasicAXGroup *)self axInfoSource];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 axSelectedSpriteIndexes];
    v7 = [v6 containsIndex:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_leafAtSpriteIndexIsAccessible:(unsigned int)a3
{
  v4 = [(PXGBasicAXGroup *)self axInfoSource];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 axSpriteIndexes];
    v7 = [v6 containsIndex:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_leafAtSpriteIndex:(unsigned int)a3 passesFilter:(unint64_t)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = (a4 & 2) == 0 || [(PXGBasicAXGroup *)self _leafAtSpriteIndexIsAccessible:*&a3];
  v8 = (v4 & 4) == 0 && v7;
  if ((v4 & 4) != 0 && v7)
  {
    v8 = [(PXGBasicAXGroup *)self _leafAtSpriteIndexIsVisible:v5];
  }

  v9 = ((v4 & 8) == 0) & v8;
  if ((v4 & 8) != 0 && v8)
  {
    v9 = [(PXGBasicAXGroup *)self _leafAtSpriteIndexIsSelected:v5];
  }

  return (v4 & 1) == 0 && v9;
}

- (BOOL)_passesFilter:(unint64_t)a3
{
  v3 = a3;
  v5 = (a3 & 1) == 0 || [(PXGBasicAXGroup *)self axRole]== 1 || [(PXGBasicAXGroup *)self axRole]== 4;
  v6 = (v3 & 4) == 0 && v5;
  if ((v3 & 4) != 0 && v5)
  {
    v6 = [(PXGBasicAXGroup *)self axIsVisible];
  }

  v7 = ((v3 & 8) == 0) & v6;
  if ((v3 & 8) != 0 && v6)
  {
    v7 = [(PXGBasicAXGroup *)self axIsSelected];
  }

  return (v3 & 2) == 0 && v7;
}

- (void)_addAllLeafsPassingFilter:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v7 = a4;
  v8 = [(PXGBasicAXGroup *)self axInfoSource];
  v9 = v8;
  if ((v4 & 2) != 0)
  {
    v10 = [v8 axSpriteIndexes];
  }

  else
  {
    v10 = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__PXGBasicAXGroup__addAllLeafsPassingFilter_intoArray___block_invoke;
  v12[3] = &unk_2782AB0E8;
  v13 = v7;
  v14 = a2;
  v12[4] = self;
  v11 = v7;
  [v10 enumerateIndexesUsingBlock:v12];
}

void __55__PXGBasicAXGroup__addAllLeafsPassingFilter_intoArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) loadLeafAtSpriteIndexIfNeeded:a2 usingOptions:4];
  v5 = [*(a1 + 32) loadedLeafAtSpriteIndex:a2];
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PXGAXGroup.m" lineNumber:629 description:@"nil leaf found after loading"];

    v5 = 0;
  }

  [*(a1 + 40) addObject:v5];
}

- (void)_addCurrentlyLoadedLeafsPassingFilter:(unint64_t)a3 intoArray:(id)a4
{
  v6 = a4;
  mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__PXGBasicAXGroup__addCurrentlyLoadedLeafsPassingFilter_intoArray___block_invoke;
  v9[3] = &unk_2782AB0C0;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [(NSMutableDictionary *)mutableSpritesToLeafs enumerateKeysAndObjectsUsingBlock:v9];
}

void __67__PXGBasicAXGroup__addCurrentlyLoadedLeafsPassingFilter_intoArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) _leafAtSpriteIndex:objc_msgSend(a2 passesFilter:{"unsignedIntegerValue"), *(a1 + 48)}])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)_addLeafsPassingFilter:(unint64_t)a3 usingOptions:(unint64_t)a4 intoArray:(id)a5
{
  if ((a4 & 2) != 0)
  {
    [(PXGBasicAXGroup *)self _addAllLeafsPassingFilter:a3 intoArray:a5];
  }

  else
  {
    [(PXGBasicAXGroup *)self _addCurrentlyLoadedLeafsPassingFilter:a3 intoArray:a5];
  }
}

- (void)_addSubgroupsPassingFilter:(unint64_t)a3 intoArray:(id)a4
{
  v6 = a4;
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__PXGBasicAXGroup__addSubgroupsPassingFilter_intoArray___block_invoke;
  v9[3] = &unk_2782AB098;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v9];
}

void __56__PXGBasicAXGroup__addSubgroupsPassingFilter_intoArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 _passesFilter:*(a1 + 40)])
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (void)_addChildrenPassingFilter:(unint64_t)a3 usingOptions:(unint64_t)a4 intoArray:(id)a5
{
  v8 = a5;
  [(PXGBasicAXGroup *)self _addSubgroupsPassingFilter:a3 intoArray:v8];
  [(PXGBasicAXGroup *)self _addLeafsPassingFilter:a3 usingOptions:a4 intoArray:v8];
  if (a4)
  {
    mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__PXGBasicAXGroup__addChildrenPassingFilter_usingOptions_intoArray___block_invoke;
    v10[3] = &unk_2782AB070;
    v12 = a3;
    v13 = a4;
    v11 = v8;
    [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v10];
  }
}

- (id)childrenPassingFilter:(unint64_t)a3 usingOptions:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PXGBasicAXGroup *)self _addChildrenPassingFilter:a3 usingOptions:a4 intoArray:v7];

  return v7;
}

- (id)leafAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__15583;
  v30 = __Block_byref_object_dispose__15584;
  v31 = 0;
  v7 = [(PXGBasicAXGroup *)self axInfoSource];
  v8 = [(PXGBasicAXGroup *)self axGroupSource];
  v9 = [v7 axSpriteIndexesInRect:{x, y, 5.0, 5.0}];
  v10 = [v9 firstIndex];
  if (v10 == -1)
  {
    mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __31__PXGBasicAXGroup_leafAtPoint___block_invoke_2;
    v20[3] = &unk_2782AB048;
    v24 = x;
    v25 = y;
    v21 = v8;
    v22 = &__block_literal_global_90;
    v23 = &v26;
    [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v20];

    v13 = v21;
  }

  else
  {
    v11 = [(PXGBasicAXGroup *)self loadLeafAtSpriteIndexIfNeeded:v10 usingOptions:0];
    v12 = [(PXGBasicAXGroup *)self loadedLeafAtSpriteIndex:v10];
    v13 = v12;
    if (!v12)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:528 description:@"Leaf should not be nil after loading."];
    }

    v14 = __31__PXGBasicAXGroup_leafAtPoint___block_invoke(v12, v13);
    v15 = v27[5];
    v27[5] = v14;
  }

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

id __31__PXGBasicAXGroup_leafAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    [v2 spriteStyle];
    if (*&v6 > 0.0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
  }

  if ([v3 axAccessibleWhenTransparent])
  {
LABEL_6:
    v4 = v3;
    goto LABEL_8;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

void __31__PXGBasicAXGroup_leafAtPoint___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 axFrame];
  if (CGRectContainsPoint(v15, *(a1 + 56)))
  {
    [*(a1 + 32) axConvertPoint:v4 toDescendantGroup:{*(a1 + 56), *(a1 + 64)}];
    v5 = [v4 leafAtPoint:?];
    v6 = (*(*(a1 + 40) + 16))();

    if (!v6)
    {
LABEL_12:

      goto LABEL_13;
    }

    v7 = *(*(a1 + 48) + 8);
    v10 = *(v7 + 40);
    v9 = (v7 + 40);
    v8 = v10;
    if (!v10)
    {
      v12 = v9;
      v13 = v5;
LABEL_11:
      objc_storeStrong(v12, v13);
      goto LABEL_12;
    }

    if (v5)
    {
      [v5 spriteGeometry];
      v11 = *(*(a1 + 48) + 8);
      v8 = *(v11 + 40);
      v14 = 0u;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0uLL;
    }

    [v8 spriteGeometry];
    v11 = *(*(a1 + 48) + 8);
LABEL_10:
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_leafsInRect:(CGRect)a3 usingOptions:(unint64_t)a4 intoMutableArray:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  if ((self->_updateFlags.needsUpdate & 1) == 0)
  {
    v12 = [(PXGBasicAXGroup *)self axInfoSource];
    v13 = [v12 axSpriteIndexesInRect:{x, y, width, height}];
    mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__PXGBasicAXGroup__leafsInRect_usingOptions_intoMutableArray___block_invoke;
    v28[3] = &unk_2782AAFD8;
    v15 = v13;
    v29 = v15;
    v16 = v11;
    v30 = v16;
    [(NSMutableDictionary *)mutableSpritesToLeafs enumerateKeysAndObjectsUsingBlock:v28];
    v17 = [(PXGBasicAXGroup *)self axGroupSource];
    v18 = v17;
    if ((a4 & 1) != 0 && [v17 axShouldSearchLeafsInSubgroups])
    {
      mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __62__PXGBasicAXGroup__leafsInRect_usingOptions_intoMutableArray___block_invoke_2;
      v20[3] = &unk_2782AB000;
      v23 = x;
      v24 = y;
      v25 = width;
      v26 = height;
      v21 = v18;
      v27 = a4;
      v22 = v16;
      [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v20];
    }
  }
}

void __62__PXGBasicAXGroup__leafsInRect_usingOptions_intoMutableArray___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 axContentKind] != 5 && objc_msgSend(*(a1 + 32), "containsIndex:", objc_msgSend(v4, "spriteIndex")))
  {
    [*(a1 + 40) addObject:v4];
  }
}

void __62__PXGBasicAXGroup__leafsInRect_usingOptions_intoMutableArray___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  v4 = [v14 axGroupSource];
  [v4 axFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  if (CGRectIntersectsRect(*(a1 + 48), v17) && [v4 axShouldBeConsideredAsSubgroup])
  {
    v13 = *(a1 + 32);
    v18.origin.x = v6;
    v18.origin.y = v8;
    v18.size.width = v10;
    v18.size.height = v12;
    v16 = CGRectIntersection(*(a1 + 48), v18);
    [v13 axConvertRect:v14 toDescendantGroup:{v16.origin.x, v16.origin.y, v16.size.width, v16.size.height}];
    [v14 _leafsInRect:*(a1 + 80) usingOptions:*(a1 + 40) intoMutableArray:?];
  }
}

- (id)leafsInRect:(CGRect)a3 usingOptions:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PXGBasicAXGroup *)self _leafsInRect:a4 usingOptions:v10 intoMutableArray:x, y, width, height];

  return v10;
}

- (id)_removeLeafAtSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  if (a3 == -1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:466 description:@"Can not remove a leaf at PXGSpriteIndexNotFound"];
  }

  v5 = [(PXGBasicAXGroup *)self _leafAtSpriteIndex:v3];
  v6 = v5;
  if (v5)
  {
    [v5 prepareForReuse];
    mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)mutableSpritesToLeafs setObject:0 forKeyedSubscript:v8];
  }

  return v6;
}

- (void)unloadAllLeafs
{
  [(NSMutableDictionary *)self->_mutableSpritesToLeafs enumerateKeysAndObjectsUsingBlock:&__block_literal_global_15593];
  mutableSpritesToLeafs = self->_mutableSpritesToLeafs;

  [(NSMutableDictionary *)mutableSpritesToLeafs removeAllObjects];
}

- (void)unloadLeafAtSpriteIndex:(unsigned int)a3 usingOptions:(unint64_t)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = a3;
  v8 = [(NSMutableIndexSet *)self->_requiredLeafIndexesToLoad containsIndex:a3];
  v9 = v8;
  if ((v4 & 1) != 0 && v8)
  {
    [(NSMutableIndexSet *)self->_requiredLeafIndexesToLoad removeIndex:v7];
  }

  if (v4 & 2) == 0 && ((v4 | v9 ^ 1))
  {
    v10 = [(PXGBasicAXGroup *)self _removeLeafAtSpriteIndex:v5];
    if (v10)
    {
      v12 = v10;
      v11 = +[PXGReusableAXInfo sharedPool];
      [v11 checkInReusableObject:v12];

      v10 = v12;
    }
  }
}

- (id)_leafAtSpriteIndex:(unsigned int)a3
{
  mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&a3];
  v5 = [(NSMutableDictionary *)mutableSpritesToLeafs objectForKeyedSubscript:v4];

  return v5;
}

- (void)_setLeaf:(id)a3 forSpriteIndex:(unsigned int)a4
{
  v4 = *&a4;
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:427 description:@"Can not add a nil leaf"];
  }

  if (v4 == -1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:428 description:@"Can not add a leaf to PXGSpriteIndexNotFound"];
  }

  v17 = v7;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v17 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:429 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"leaf", v14, v16}];
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:429 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"leaf", v14}];
  }

LABEL_7:
  [v17 setAxContainingGroup:self];
  [v17 setSpriteIndex:v4];
  [v17 setAllowDecorations:{-[PXGBasicAXGroup leafFeatures](self, "leafFeatures") & 1}];
  [v17 setAlternateUIVisibility:{(-[PXGBasicAXGroup leafFeatures](self, "leafFeatures") >> 3) & 1}];
  mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)mutableSpritesToLeafs setObject:v17 forKeyedSubscript:v9];
}

- (BOOL)_loadOrUpdateLeafAtSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v6 = [(PXGBasicAXGroup *)self _leafAtSpriteIndex:?];
  v7 = [(PXGBasicAXGroup *)self axInfoSource];
  v8 = [v7 axContentInfoAtSpriteIndex:v3];
  if (!v8)
  {
    v10 = v6 != 0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:411 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[infoSource axContentInfoAtSpriteIndex:spriteIndex]", v14, v15}];

    if (v6)
    {
      goto LABEL_4;
    }

LABEL_11:
    [(PXGBasicAXGroup *)self _setLeaf:v8 forSpriteIndex:v3];
    v10 = 0;
    goto LABEL_12;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_4:
  [v8 applyToInfo:v6];
  v9 = +[PXGReusableAXInfo sharedPool];
  [v9 checkInReusableObject:v8];

  v10 = 1;
LABEL_6:
  if ([v6 spriteIndex] != v3)
  {
    v11 = PXAssertGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21AD38000, v11, OS_LOG_TYPE_ERROR, "Sprite indexes don't match for non-nill info", buf, 2u);
    }
  }

LABEL_12:
  if (v8)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  return v16;
}

- (unsigned)_loadClosestLeafAtSpriteIndex:(unsigned int)a3 inDirection:(unint64_t)a4
{
  v5 = *&a3;
  v7 = [(PXGBasicAXGroup *)self axInfoSource];
  v8 = [v7 axSpriteIndexClosestToSpriteIndex:v5 inDirection:a4];
  if (v8 == -1)
  {
    v10 = -1;
  }

  else
  {
    v9 = v8;
    if ([(PXGBasicAXGroup *)self _loadOrUpdateLeafAtSpriteIndex:v8])
    {
      v10 = v9;
    }

    else
    {
      v10 = -1;
    }
  }

  return v10;
}

- (id)_loadNeighboringLeafsAtSpriteIndex:(unsigned int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __54__PXGBasicAXGroup__loadNeighboringLeafsAtSpriteIndex___block_invoke;
  v13 = &unk_2782AAF90;
  v14 = self;
  v16 = a3;
  v6 = v5;
  v7 = 0;
  v15 = v6;
  v17[0] = xmmword_21AE2D510;
  v17[1] = xmmword_21AE2D350;
  v17[2] = xmmword_21AE2D520;
  do
  {
    v12(v11, *(v17 + v7));
    v7 += 8;
  }

  while (v7 != 32);
  v8 = v15;
  v9 = v6;

  return v6;
}

uint64_t __54__PXGBasicAXGroup__loadNeighboringLeafsAtSpriteIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _loadClosestLeafAtSpriteIndex:*(a1 + 48) inDirection:a2];
  if (result != -1)
  {
    v4 = result;
    v5 = *(a1 + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

- (id)loadLeafAtSpriteIndexIfNeeded:(unsigned int)a3 usingOptions:(unint64_t)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (v5 != -1)
  {
    [(PXGBasicAXGroup *)self _loadOrUpdateLeafAtSpriteIndex:v5];
    [v7 addIndex:v5];
    if (v4)
    {
      [(NSMutableIndexSet *)self->_requiredLeafIndexesToLoad addIndex:v5];
    }

    if ((v4 & 4) == 0)
    {
      v8 = [(PXGBasicAXGroup *)self _loadNeighboringLeafsAtSpriteIndex:v5];
      [v7 addIndexes:v8];
    }
  }

  return v7;
}

- (void)_cleanUpSubgroupAfterUnloading:(id)a3
{
  v3 = a3;
  [v3 setAxParent:0];
  [v3 setSubgroupIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)_unloadSubgroupAtIndex:(int64_t)a3 shouldNotify:(BOOL)a4
{
  v4 = a4;
  v7 = [(PXGBasicAXGroup *)self loadedSubgroupAtIndex:?];
  if (v7)
  {
    mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
    v10 = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)mutableIndexesToSubgroups setObject:0 forKeyedSubscript:v9];

    [(PXGBasicAXGroup *)self _cleanUpSubgroupAfterUnloading:v10];
    v7 = v10;
    if (v4)
    {
      [(PXGBasicAXGroup *)self invalidateLayout];
      v7 = v10;
    }
  }
}

- (void)loadSubgroup:(id)a3 atIndex:(int64_t)a4
{
  v7 = a3;
  v12 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:313 description:@"Can not add a nil childGroup"];

    v7 = 0;
  }

  if (v7 == self)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:314 description:@"Can not add self as a childGroup"];

    v7 = v12;
  }

  [(PXGBasicAXGroup *)v7 setAxParent:self];
  [(PXGBasicAXGroup *)v12 setSubgroupIndex:a4];
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)mutableIndexesToSubgroups setObject:v12 forKeyedSubscript:v9];

  [(PXGBasicAXGroup *)self invalidateLayout];
}

- (id)loadedSubgroupAtIndex:(int64_t)a3
{
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)mutableIndexesToSubgroups objectForKeyedSubscript:v4];

  return v5;
}

- (NSIndexSet)loadedSubgroupIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v4 = [(NSMutableDictionary *)self->_mutableIndexesToSubgroups allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__PXGBasicAXGroup_loadedSubgroupIndexes__block_invoke;
  v7[3] = &unk_2782AAF68;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

uint64_t __40__PXGBasicAXGroup_loadedSubgroupIndexes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntegerValue];

  return [v2 addIndex:v3];
}

- (PXGBasicAXGroup)axScrollParent
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&v2->_axParent);
  v4 = [WeakRetained axGroupSource];

  if ([v4 axShouldBeConsideredAsSubgroup])
  {
    v5 = objc_loadWeakRetained(&v2->_axParent);
    v6 = [v5 axScrollParent];

    v2 = v6;
  }

  return v2;
}

- (PXGBasicAXGroup)axRootParent
{
  WeakRetained = objc_loadWeakRetained(&self->_axParent);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = [(PXGBasicAXGroup *)WeakRetained axParent];

    if (v5)
    {
      do
      {
        v6 = [(PXGBasicAXGroup *)v4 axParent];

        v7 = [(PXGBasicAXGroup *)v6 axParent];

        v4 = v6;
      }

      while (v7);
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (void)setAxRole:(int64_t)a3
{
  if (self->_axRole != a3)
  {
    self->_axRole = a3;
    v5 = [(PXGBasicAXGroup *)self axNextResponder];
    [v5 axGroup:self didChange:1 userInfo:0];
  }
}

- (void)_addFirstVisibleIndexes:(id)a3 toIndexesToLoad:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PXGBasicAXGroup *)self nonScrollingAxisItemCount];
  if (![v8 firstIndex] && v7)
  {
    [v6 addIndexesInRange:{objc_msgSend(v8, "firstIndex"), v7}];
  }
}

@end