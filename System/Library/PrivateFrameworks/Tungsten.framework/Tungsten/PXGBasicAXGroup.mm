@interface PXGBasicAXGroup
- (BOOL)_leafAtSpriteIndex:(unsigned int)index passesFilter:(unint64_t)filter;
- (BOOL)_leafAtSpriteIndexIsAccessible:(unsigned int)accessible;
- (BOOL)_leafAtSpriteIndexIsSelected:(unsigned int)selected;
- (BOOL)_leafAtSpriteIndexIsVisible:(unsigned int)visible;
- (BOOL)_loadOrUpdateLeafAtSpriteIndex:(unsigned int)index;
- (BOOL)_passesFilter:(unint64_t)filter;
- (BOOL)axIsSelected;
- (BOOL)updateWithSelectedChildren:(id)children;
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
- (PXGBasicAXGroup)initWithLayout:(id)layout;
- (PXGLayout)containingLayout;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIFocusItemContainer)focusItemContainer;
- (id)_leafAtSpriteIndex:(unsigned int)index;
- (id)_loadNeighboringLeafsAtSpriteIndex:(unsigned int)index;
- (id)_paddingForLevel:(int64_t)level;
- (id)_removeLeafAtSpriteIndex:(unsigned int)index;
- (id)childrenPassingFilter:(unint64_t)filter usingOptions:(unint64_t)options;
- (id)focusItemsForScrollViewController:(id)controller inRect:(CGRect)rect;
- (id)leafAtPoint:(CGPoint)point;
- (id)leafsInRect:(CGRect)rect usingOptions:(unint64_t)options;
- (id)loadLeafAtSpriteIndexIfNeeded:(unsigned int)needed usingOptions:(unint64_t)options;
- (id)loadedSubgroupAtIndex:(int64_t)index;
- (unsigned)_loadClosestLeafAtSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction;
- (unsigned)focusedLeafIndex;
- (void)_addAllLeafsPassingFilter:(unint64_t)filter intoArray:(id)array;
- (void)_addChildrenPassingFilter:(unint64_t)filter usingOptions:(unint64_t)options intoArray:(id)array;
- (void)_addCurrentlyLoadedLeafsPassingFilter:(unint64_t)filter intoArray:(id)array;
- (void)_addFirstVisibleIndexes:(id)indexes toIndexesToLoad:(id)load;
- (void)_addLeafsPassingFilter:(unint64_t)filter usingOptions:(unint64_t)options intoArray:(id)array;
- (void)_addSubgroupsPassingFilter:(unint64_t)filter intoArray:(id)array;
- (void)_appendDescription:(id)description atLevel:(int64_t)level;
- (void)_appendLeafDescription:(id)description atLevel:(int64_t)level;
- (void)_cleanUpSubgroupAfterUnloading:(id)unloading;
- (void)_leafsInRect:(CGRect)rect usingOptions:(unint64_t)options intoMutableArray:(id)array;
- (void)_setLeaf:(id)leaf forSpriteIndex:(unsigned int)index;
- (void)_unloadSubgroupAtIndex:(int64_t)index shouldNotify:(BOOL)notify;
- (void)_updateLayoutIfNeeded;
- (void)_updateLeafAtSpriteIndex:(unsigned int)index;
- (void)_updateLeafsIfNeeded;
- (void)_updateVersionIfNeeded;
- (void)_updateVisibilityIfNeeded;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)invalidateLayout;
- (void)invalidateLeafs;
- (void)invalidateVersion;
- (void)invalidateVisibility;
- (void)loadSubgroup:(id)subgroup atIndex:(int64_t)index;
- (void)setAxParent:(id)parent;
- (void)setAxRole:(int64_t)role;
- (void)setNeedsFocusUpdate;
- (void)unloadAllLeafs;
- (void)unloadFromParent;
- (void)unloadLeafAtSpriteIndex:(unsigned int)index usingOptions:(unint64_t)options;
- (void)updateFocusIfNeeded;
- (void)updateIfNeeded;
- (void)updateLeafsWithChangeDetails:(id)details;
- (void)updateSubgroupsWithChangeDetails:(id)details;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup invalidateVisibility]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXGAXGroup.m" lineNumber:128 description:{@"invalidating %lu after it already has been updated", 2}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 2uLL;
}

- (void)invalidateLeafs
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 4) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup invalidateLeafs]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXGAXGroup.m" lineNumber:132 description:{@"invalidating %lu after it already has been updated", 4}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 4uLL;
}

- (unsigned)focusedLeafIndex
{
  v3 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  focusedItem = [v3 focusedItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = focusedItem;
    axContainingGroup = [v5 axContainingGroup];

    if (axContainingGroup == self)
    {
      spriteIndex = [v5 spriteIndex];
    }

    else
    {
      spriteIndex = -1;
    }
  }

  else
  {
    spriteIndex = -1;
  }

  return spriteIndex;
}

- (void)invalidateVersion
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup invalidateVersion]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXGAXGroup.m" lineNumber:124 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 1uLL;
}

- (void)unloadFromParent
{
  subgroupIndex = [(PXGBasicAXGroup *)self subgroupIndex];
  WeakRetained = objc_loadWeakRetained(&self->_axParent);
  v7 = [WeakRetained loadedSubgroupAtIndex:subgroupIndex];

  v5 = v7;
  if (v7 == self)
  {
    v6 = objc_loadWeakRetained(&self->_axParent);
    [v6 _unloadSubgroupAtIndex:subgroupIndex shouldNotify:0];

    v5 = v7;
  }
}

- (void)invalidateLayout
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 8) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup invalidateLayout]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXGAXGroup.m" lineNumber:136 description:{@"invalidating %lu after it already has been updated", 8}];

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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup updateIfNeeded]"];
      [currentHandler handleFailureInFunction:v4 file:@"PXGAXGroup.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
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
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup updateIfNeeded]"];
      [currentHandler2 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:145 description:{@"still needing to update %lu after update pass", self->_updateFlags.needsUpdate}];
    }
  }
}

- (void)_updateVisibilityIfNeeded
{
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup _updateVisibilityIfNeeded]"];
    [currentHandler handleFailureInFunction:v12 file:@"PXGAXGroup.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = self->_updateFlags.needsUpdate;
  self->_updateFlags.updated |= 2uLL;
  if ((needsUpdate & 2) != 0)
  {
    self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
    axGroupSource = [(PXGBasicAXGroup *)self axGroupSource];
    [axGroupSource axFrame];
    v5 = v4;
    v7 = v6;
    [(PXGBasicAXGroup *)self setAxFrame:?];
    [axGroupSource axVisibleRect];
    v10 = v9 < v7 && v8 < v5;
    [(PXGBasicAXGroup *)self setAxIsVisible:v10];
  }
}

- (void)_updateVersionIfNeeded
{
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup _updateVersionIfNeeded]"];
    [currentHandler handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup _updateLeafsIfNeeded]"];
    [currentHandler handleFailureInFunction:v18 file:@"PXGAXGroup.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = self->_updateFlags.needsUpdate;
  self->_updateFlags.updated |= 4uLL;
  if ((needsUpdate & 4) != 0)
  {
    self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;
    axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
    if (!axInfoSource)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:180 description:@"Should not attempt to update sprites without an infoSource"];
    }

    v6 = objc_alloc(MEMORY[0x277CCAB58]);
    axBorderSpriteIndexes = [axInfoSource axBorderSpriteIndexes];
    v8 = [v6 initWithIndexSet:axBorderSpriteIndexes];

    axVisibleSpriteIndexes = [axInfoSource axVisibleSpriteIndexes];
    if ([axVisibleSpriteIndexes count])
    {
      [v8 addIndex:{objc_msgSend(axVisibleSpriteIndexes, "firstIndex")}];
      [v8 addIndex:{objc_msgSend(axVisibleSpriteIndexes, "lastIndex")}];
      if (([(PXGBasicAXGroup *)self leafFeatures]& 2) != 0)
      {
        [v8 addIndexes:axVisibleSpriteIndexes];
      }
    }

    axSelectedSpriteIndexes = [axInfoSource axSelectedSpriteIndexes];
    if ([axSelectedSpriteIndexes count])
    {
      [v8 addIndex:{objc_msgSend(axSelectedSpriteIndexes, "firstIndex")}];
      [v8 addIndex:{objc_msgSend(axSelectedSpriteIndexes, "lastIndex")}];
    }

    if (([axSelectedSpriteIndexes isEqualToIndexSet:self->_previouslySelectedIndexes] & 1) == 0)
    {
      v11 = [axSelectedSpriteIndexes copy];
      previouslySelectedIndexes = self->_previouslySelectedIndexes;
      self->_previouslySelectedIndexes = v11;

      [(PXGBasicAXGroup *)self _selectedIndexesDidChange];
    }

    focusedLeafIndex = [(PXGBasicAXGroup *)self focusedLeafIndex];
    if (focusedLeafIndex != -1)
    {
      [v8 addIndex:focusedLeafIndex];
    }

    [v8 addIndexes:self->_requiredLeafIndexesToLoad];
    loadedLeafIndexes = [(PXGBasicAXGroup *)self loadedLeafIndexes];
    v15 = [loadedLeafIndexes mutableCopy];
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
    if (([loadedLeafIndexes isEqualToIndexSet:v8] & 1) == 0)
    {
      [(PXGBasicAXGroup *)self invalidateLayout];
    }
  }
}

- (PXGAXInfoSource)axInfoSource
{
  if (self->_updateFlags.needsUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:253 description:@"Attempted to query group with an invalid version"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_axInfoSource);

  return WeakRetained;
}

- (NSIndexSet)loadedLeafIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  allKeys = [(NSMutableDictionary *)self->_mutableSpritesToLeafs allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PXGBasicAXGroup_loadedLeafIndexes__block_invoke;
  v7[3] = &unk_2782AAF68;
  v5 = v3;
  v8 = v5;
  [allKeys enumerateObjectsUsingBlock:v7];

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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGBasicAXGroup _updateLayoutIfNeeded]"];
    [currentHandler handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = self->_updateFlags.needsUpdate;
  self->_updateFlags.updated |= 8uLL;
  if ((needsUpdate & 8) != 0)
  {
    self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFF7;
    axNextResponder = [(PXGBasicAXGroup *)self axNextResponder];
    [axNextResponder axGroup:self didChange:8 userInfo:0];
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
  axGroupSource = [(PXGBasicAXGroup *)self axGroupSource];
  if (axGroupSource)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      px_descriptionForAssertionMessage = [axGroupSource px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayout+AX.m" lineNumber:375 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.axGroupSource", v8, px_descriptionForAssertionMessage}];
    }
  }

  return axGroupSource;
}

- (PXGBasicAXGroup)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(PXGBasicAXGroup *)self init];
  v6 = v5;
  if (v5)
  {
    [(PXGBasicAXGroup *)v5 setAxGroupSource:layoutCopy];
    [(PXGBasicAXGroup *)v6 setAxInfoSource:layoutCopy];
    [(PXGBasicAXGroup *)v6 setAxNextResponder:layoutCopy];
  }

  return v6;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  [axInfoSource axDidUpdateFocusInContext:contextCopy];

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  nextFocusedItem = [contextCopy nextFocusedItem];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__PXGBasicAXGroup_PlatformSpecific__didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v14[3] = &unk_2782A9B38;
  v14[4] = self;
  v9 = MEMORY[0x21CEE40A0](v14);
  v10 = (v9)[2](v9, previouslyFocusedItem);
  v11 = (v9)[2](v9, nextFocusedItem);
  if (v10 | v11)
  {
    v12 = PXGAXCreateFocusChangeUserInfo(v10, v11);
    axNextResponder = [(PXGBasicAXGroup *)self axNextResponder];
    [axNextResponder axGroup:self didChange:2 userInfo:v12];
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
  axNextResponder = [(PXGBasicAXGroup *)self axNextResponder];
  v4 = [axNextResponder axContainingScrollViewForAXGroup:self];

  return v4;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  axParent = [(PXGBasicAXGroup *)self axParent];
  if (!axParent)
  {
    axNextResponder = [(PXGBasicAXGroup *)self axNextResponder];
    v5 = axNextResponder;
    if (axNextResponder)
    {
      axParent = [axNextResponder axContainingScrollViewForAXGroup:self];
    }

    else
    {
      axParent = 0;
    }
  }

  return axParent;
}

- (NSArray)preferredFocusEnvironments
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  loadedLeafIndexes = [(PXGBasicAXGroup *)self loadedLeafIndexes];
  if ([loadedLeafIndexes count])
  {
    axVisibleSpriteIndexes = [axInfoSource axVisibleSpriteIndexes];
    if ([loadedLeafIndexes containsIndex:{objc_msgSend(axVisibleSpriteIndexes, "firstIndex")}])
    {
      v8 = -[PXGBasicAXGroup loadedLeafAtSpriteIndex:](self, "loadedLeafAtSpriteIndex:", [axVisibleSpriteIndexes firstIndex]);
      if (!v8)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAXGroup+iOS.m" lineNumber:67 description:@"A loaded leaf must not be nil"];
      }

      [v4 addObject:v8];
    }
  }

  return v4;
}

- (id)focusItemsForScrollViewController:(id)controller inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = +[PXTungstenSettings sharedInstance];
  enableTungstenFocusEnvironmentSupport = [v9 enableTungstenFocusEnvironmentSupport];

  if (enableTungstenFocusEnvironmentSupport)
  {
    height = [(PXGBasicAXGroup *)self leafsInRect:1 usingOptions:x, y, width, height];
  }

  else
  {
    height = MEMORY[0x277CBEBF8];
  }

  return height;
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

- (void)_appendLeafDescription:(id)description atLevel:(int64_t)level
{
  descriptionCopy = description;
  v7 = level + 1;
  v8 = [(PXGBasicAXGroup *)self _paddingForLevel:level + 1];
  v9 = [(PXGBasicAXGroup *)self _paddingForLevel:level];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [descriptionCopy appendFormat:@"<%@: %p; numberOfLeafs = %lu; >\n", v11, self, -[NSMutableDictionary count](self->_mutableSpritesToLeafs, "count")];

  allValues = [(NSMutableDictionary *)self->_mutableSpritesToLeafs allValues];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__PXGBasicAXGroup__appendLeafDescription_atLevel___block_invoke;
  v22[3] = &unk_2782AB1E8;
  v13 = descriptionCopy;
  v23 = v13;
  v24 = v9;
  v14 = v9;
  [allValues enumerateObjectsUsingBlock:v22];

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

- (void)_appendDescription:(id)description atLevel:(int64_t)level
{
  descriptionCopy = description;
  v7 = level + 1;
  v8 = [(PXGBasicAXGroup *)self _paddingForLevel:level + 1];
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
    v27 = descriptionCopy;
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
    descriptionCopy = v27;
    v10 = v28;
  }

  else
  {
    v23 = @"<nil>";
  }

  [descriptionCopy appendFormat:@"<%@: %p; numberOfLoadedChildren = %lu; numberOfLeafs = %lu; infoSource = %@; > \n", v10, self, v11, v12, v23];
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__PXGBasicAXGroup__appendDescription_atLevel___block_invoke;
  v29[3] = &unk_2782AB1C0;
  v30 = descriptionCopy;
  v31 = v8;
  v32 = v7;
  v25 = v8;
  v26 = descriptionCopy;
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
  weakRetained = [v3 stringWithFormat:@"<%@: %p frame = %@; numberOfSubgroups = %lu; numberOfLeafs = %lu; infoSource = %@; >", v4, self, v5, v6, v7, WeakRetained];;

  return weakRetained;
}

- (void)setAxParent:(id)parent
{
  obj = parent;
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
  allValues = [(NSMutableDictionary *)self->_mutableIndexesToSubgroups allValues];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"subgroupIndex" ascending:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [allValues sortedArrayUsingDescriptors:v4];

  return v5;
}

- (NSArray)axLeafs
{
  v7[1] = *MEMORY[0x277D85DE8];
  allValues = [(NSMutableDictionary *)self->_mutableSpritesToLeafs allValues];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"spriteIndex" ascending:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [allValues sortedArrayUsingDescriptors:v4];

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

- (BOOL)updateWithSelectedChildren:(id)children
{
  v33 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  if ((self->_updateFlags.needsUpdate & 1) == 0)
  {
    axNextResponder = [(PXGBasicAXGroup *)self axNextResponder];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = childrenCopy;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = a2;
      v24 = childrenCopy;
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
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler handleFailureInMethod:v23 object:self file:@"PXGAXGroup.m" lineNumber:773 description:@"Code which should be unreachable has been reached"];

                abort();
              }

              v15 = v12;
              axContainingGroup = [(PXGBasicAXGroup *)v15 axContainingGroup];

              if (axContainingGroup == self)
              {
                v17 = [(PXGBasicAXGroup *)self _loadNeighboringLeafsAtSpriteIndex:[(PXGBasicAXGroup *)v15 spriteIndex]];
                v18 = PXGAXCreateSelectionChangeUserInfo(v15);
                [axNextResponder axGroup:self didChange:4 userInfo:v18];

                v9 = 1;
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);

      childrenCopy = v24;
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

- (void)_updateLeafAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  v5 = [(PXGBasicAXGroup *)self _leafAtSpriteIndex:?];
  if (v5)
  {
    v8 = v5;
    axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
    v7 = [axInfoSource axContentInfoAtSpriteIndex:v3];
    if (v7)
    {
      [(PXGBasicAXGroup *)self _setLeaf:v7 forSpriteIndex:v3];
    }

    v5 = v8;
  }
}

- (void)updateLeafsWithChangeDetails:(id)details
{
  if ((self->_updateFlags.needsUpdate & 1) == 0)
  {
    detailsCopy = details;
    focusedLeafIndex = [(PXGBasicAXGroup *)self focusedLeafIndex];
    mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__PXGBasicAXGroup_updateLeafsWithChangeDetails___block_invoke;
    v7[3] = &__block_descriptor_36_e30_v24__0Q8__PXGReusableAXInfo_16l;
    v8 = focusedLeafIndex;
    [detailsCopy applyToDictionary:mutableSpritesToLeafs removalHandler:v7 moveHandler:&__block_literal_global_104_15572];
    [detailsCopy applyToIndexSet:self->_requiredLeafIndexesToLoad];
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

- (void)updateSubgroupsWithChangeDetails:(id)details
{
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PXGBasicAXGroup_updateSubgroupsWithChangeDetails___block_invoke;
  v5[3] = &unk_2782AB110;
  v5[4] = self;
  [details applyToDictionary:mutableIndexesToSubgroups removalHandler:v5 moveHandler:&__block_literal_global_100];
}

- (BOOL)_leafAtSpriteIndexIsVisible:(unsigned int)visible
{
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  v5 = axInfoSource;
  if (axInfoSource)
  {
    axVisibleSpriteIndexes = [axInfoSource axVisibleSpriteIndexes];
    v7 = [axVisibleSpriteIndexes containsIndex:visible];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_leafAtSpriteIndexIsSelected:(unsigned int)selected
{
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  v5 = axInfoSource;
  if (axInfoSource)
  {
    axSelectedSpriteIndexes = [axInfoSource axSelectedSpriteIndexes];
    v7 = [axSelectedSpriteIndexes containsIndex:selected];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_leafAtSpriteIndexIsAccessible:(unsigned int)accessible
{
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  v5 = axInfoSource;
  if (axInfoSource)
  {
    axSpriteIndexes = [axInfoSource axSpriteIndexes];
    v7 = [axSpriteIndexes containsIndex:accessible];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_leafAtSpriteIndex:(unsigned int)index passesFilter:(unint64_t)filter
{
  filterCopy = filter;
  v5 = *&index;
  v7 = (filter & 2) == 0 || [(PXGBasicAXGroup *)self _leafAtSpriteIndexIsAccessible:*&index];
  v8 = (filterCopy & 4) == 0 && v7;
  if ((filterCopy & 4) != 0 && v7)
  {
    v8 = [(PXGBasicAXGroup *)self _leafAtSpriteIndexIsVisible:v5];
  }

  v9 = ((filterCopy & 8) == 0) & v8;
  if ((filterCopy & 8) != 0 && v8)
  {
    v9 = [(PXGBasicAXGroup *)self _leafAtSpriteIndexIsSelected:v5];
  }

  return (filterCopy & 1) == 0 && v9;
}

- (BOOL)_passesFilter:(unint64_t)filter
{
  filterCopy = filter;
  v5 = (filter & 1) == 0 || [(PXGBasicAXGroup *)self axRole]== 1 || [(PXGBasicAXGroup *)self axRole]== 4;
  axIsVisible = (filterCopy & 4) == 0 && v5;
  if ((filterCopy & 4) != 0 && v5)
  {
    axIsVisible = [(PXGBasicAXGroup *)self axIsVisible];
  }

  axIsSelected = ((filterCopy & 8) == 0) & axIsVisible;
  if ((filterCopy & 8) != 0 && axIsVisible)
  {
    axIsSelected = [(PXGBasicAXGroup *)self axIsSelected];
  }

  return (filterCopy & 2) == 0 && axIsSelected;
}

- (void)_addAllLeafsPassingFilter:(unint64_t)filter intoArray:(id)array
{
  filterCopy = filter;
  arrayCopy = array;
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  v9 = axInfoSource;
  if ((filterCopy & 2) != 0)
  {
    axSpriteIndexes = [axInfoSource axSpriteIndexes];
  }

  else
  {
    axSpriteIndexes = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__PXGBasicAXGroup__addAllLeafsPassingFilter_intoArray___block_invoke;
  v12[3] = &unk_2782AB0E8;
  v13 = arrayCopy;
  v14 = a2;
  v12[4] = self;
  v11 = arrayCopy;
  [axSpriteIndexes enumerateIndexesUsingBlock:v12];
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

- (void)_addCurrentlyLoadedLeafsPassingFilter:(unint64_t)filter intoArray:(id)array
{
  arrayCopy = array;
  mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__PXGBasicAXGroup__addCurrentlyLoadedLeafsPassingFilter_intoArray___block_invoke;
  v9[3] = &unk_2782AB0C0;
  v10 = arrayCopy;
  filterCopy = filter;
  v9[4] = self;
  v8 = arrayCopy;
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

- (void)_addLeafsPassingFilter:(unint64_t)filter usingOptions:(unint64_t)options intoArray:(id)array
{
  if ((options & 2) != 0)
  {
    [(PXGBasicAXGroup *)self _addAllLeafsPassingFilter:filter intoArray:array];
  }

  else
  {
    [(PXGBasicAXGroup *)self _addCurrentlyLoadedLeafsPassingFilter:filter intoArray:array];
  }
}

- (void)_addSubgroupsPassingFilter:(unint64_t)filter intoArray:(id)array
{
  arrayCopy = array;
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__PXGBasicAXGroup__addSubgroupsPassingFilter_intoArray___block_invoke;
  v9[3] = &unk_2782AB098;
  v10 = arrayCopy;
  filterCopy = filter;
  v8 = arrayCopy;
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

- (void)_addChildrenPassingFilter:(unint64_t)filter usingOptions:(unint64_t)options intoArray:(id)array
{
  arrayCopy = array;
  [(PXGBasicAXGroup *)self _addSubgroupsPassingFilter:filter intoArray:arrayCopy];
  [(PXGBasicAXGroup *)self _addLeafsPassingFilter:filter usingOptions:options intoArray:arrayCopy];
  if (options)
  {
    mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__PXGBasicAXGroup__addChildrenPassingFilter_usingOptions_intoArray___block_invoke;
    v10[3] = &unk_2782AB070;
    filterCopy = filter;
    optionsCopy = options;
    v11 = arrayCopy;
    [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v10];
  }
}

- (id)childrenPassingFilter:(unint64_t)filter usingOptions:(unint64_t)options
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PXGBasicAXGroup *)self _addChildrenPassingFilter:filter usingOptions:options intoArray:v7];

  return v7;
}

- (id)leafAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__15583;
  v30 = __Block_byref_object_dispose__15584;
  v31 = 0;
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  axGroupSource = [(PXGBasicAXGroup *)self axGroupSource];
  v9 = [axInfoSource axSpriteIndexesInRect:{x, y, 5.0, 5.0}];
  firstIndex = [v9 firstIndex];
  if (firstIndex == -1)
  {
    mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __31__PXGBasicAXGroup_leafAtPoint___block_invoke_2;
    v20[3] = &unk_2782AB048;
    v24 = x;
    v25 = y;
    v21 = axGroupSource;
    v22 = &__block_literal_global_90;
    v23 = &v26;
    [(NSMutableDictionary *)mutableIndexesToSubgroups enumerateKeysAndObjectsUsingBlock:v20];

    v13 = v21;
  }

  else
  {
    v11 = [(PXGBasicAXGroup *)self loadLeafAtSpriteIndexIfNeeded:firstIndex usingOptions:0];
    v12 = [(PXGBasicAXGroup *)self loadedLeafAtSpriteIndex:firstIndex];
    v13 = v12;
    if (!v12)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:528 description:@"Leaf should not be nil after loading."];
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

- (void)_leafsInRect:(CGRect)rect usingOptions:(unint64_t)options intoMutableArray:(id)array
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  arrayCopy = array;
  if ((self->_updateFlags.needsUpdate & 1) == 0)
  {
    axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
    v13 = [axInfoSource axSpriteIndexesInRect:{x, y, width, height}];
    mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__PXGBasicAXGroup__leafsInRect_usingOptions_intoMutableArray___block_invoke;
    v28[3] = &unk_2782AAFD8;
    v15 = v13;
    v29 = v15;
    v16 = arrayCopy;
    v30 = v16;
    [(NSMutableDictionary *)mutableSpritesToLeafs enumerateKeysAndObjectsUsingBlock:v28];
    axGroupSource = [(PXGBasicAXGroup *)self axGroupSource];
    v18 = axGroupSource;
    if ((options & 1) != 0 && [axGroupSource axShouldSearchLeafsInSubgroups])
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
      optionsCopy = options;
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

- (id)leafsInRect:(CGRect)rect usingOptions:(unint64_t)options
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PXGBasicAXGroup *)self _leafsInRect:options usingOptions:v10 intoMutableArray:x, y, width, height];

  return v10;
}

- (id)_removeLeafAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  if (index == -1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:466 description:@"Can not remove a leaf at PXGSpriteIndexNotFound"];
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

- (void)unloadLeafAtSpriteIndex:(unsigned int)index usingOptions:(unint64_t)options
{
  optionsCopy = options;
  v5 = *&index;
  indexCopy = index;
  v8 = [(NSMutableIndexSet *)self->_requiredLeafIndexesToLoad containsIndex:index];
  v9 = v8;
  if ((optionsCopy & 1) != 0 && v8)
  {
    [(NSMutableIndexSet *)self->_requiredLeafIndexesToLoad removeIndex:indexCopy];
  }

  if (optionsCopy & 2) == 0 && ((optionsCopy | v9 ^ 1))
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

- (id)_leafAtSpriteIndex:(unsigned int)index
{
  mutableSpritesToLeafs = self->_mutableSpritesToLeafs;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&index];
  v5 = [(NSMutableDictionary *)mutableSpritesToLeafs objectForKeyedSubscript:v4];

  return v5;
}

- (void)_setLeaf:(id)leaf forSpriteIndex:(unsigned int)index
{
  v4 = *&index;
  leafCopy = leaf;
  if (!leafCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:427 description:@"Can not add a nil leaf"];
  }

  if (v4 == -1)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:428 description:@"Can not add a leaf to PXGSpriteIndexNotFound"];
  }

  v17 = leafCopy;
  if (leafCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [v17 px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:429 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"leaf", v14, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:429 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"leaf", v14}];
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

- (BOOL)_loadOrUpdateLeafAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  v6 = [(PXGBasicAXGroup *)self _leafAtSpriteIndex:?];
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  v8 = [axInfoSource axContentInfoAtSpriteIndex:v3];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:411 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[infoSource axContentInfoAtSpriteIndex:spriteIndex]", v14, px_descriptionForAssertionMessage}];

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

- (unsigned)_loadClosestLeafAtSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction
{
  v5 = *&index;
  axInfoSource = [(PXGBasicAXGroup *)self axInfoSource];
  v8 = [axInfoSource axSpriteIndexClosestToSpriteIndex:v5 inDirection:direction];
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

- (id)_loadNeighboringLeafsAtSpriteIndex:(unsigned int)index
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __54__PXGBasicAXGroup__loadNeighboringLeafsAtSpriteIndex___block_invoke;
  v13 = &unk_2782AAF90;
  selfCopy = self;
  indexCopy = index;
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

- (id)loadLeafAtSpriteIndexIfNeeded:(unsigned int)needed usingOptions:(unint64_t)options
{
  optionsCopy = options;
  v5 = *&needed;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (v5 != -1)
  {
    [(PXGBasicAXGroup *)self _loadOrUpdateLeafAtSpriteIndex:v5];
    [v7 addIndex:v5];
    if (optionsCopy)
    {
      [(NSMutableIndexSet *)self->_requiredLeafIndexesToLoad addIndex:v5];
    }

    if ((optionsCopy & 4) == 0)
    {
      v8 = [(PXGBasicAXGroup *)self _loadNeighboringLeafsAtSpriteIndex:v5];
      [v7 addIndexes:v8];
    }
  }

  return v7;
}

- (void)_cleanUpSubgroupAfterUnloading:(id)unloading
{
  unloadingCopy = unloading;
  [unloadingCopy setAxParent:0];
  [unloadingCopy setSubgroupIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)_unloadSubgroupAtIndex:(int64_t)index shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  v7 = [(PXGBasicAXGroup *)self loadedSubgroupAtIndex:?];
  if (v7)
  {
    mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
    v10 = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    [(NSMutableDictionary *)mutableIndexesToSubgroups setObject:0 forKeyedSubscript:v9];

    [(PXGBasicAXGroup *)self _cleanUpSubgroupAfterUnloading:v10];
    v7 = v10;
    if (notifyCopy)
    {
      [(PXGBasicAXGroup *)self invalidateLayout];
      v7 = v10;
    }
  }
}

- (void)loadSubgroup:(id)subgroup atIndex:(int64_t)index
{
  subgroupCopy = subgroup;
  v12 = subgroupCopy;
  if (!subgroupCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:313 description:@"Can not add a nil childGroup"];

    subgroupCopy = 0;
  }

  if (subgroupCopy == self)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGAXGroup.m" lineNumber:314 description:@"Can not add self as a childGroup"];

    subgroupCopy = v12;
  }

  [(PXGBasicAXGroup *)subgroupCopy setAxParent:self];
  [(PXGBasicAXGroup *)v12 setSubgroupIndex:index];
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [(NSMutableDictionary *)mutableIndexesToSubgroups setObject:v12 forKeyedSubscript:v9];

  [(PXGBasicAXGroup *)self invalidateLayout];
}

- (id)loadedSubgroupAtIndex:(int64_t)index
{
  mutableIndexesToSubgroups = self->_mutableIndexesToSubgroups;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v5 = [(NSMutableDictionary *)mutableIndexesToSubgroups objectForKeyedSubscript:v4];

  return v5;
}

- (NSIndexSet)loadedSubgroupIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  allKeys = [(NSMutableDictionary *)self->_mutableIndexesToSubgroups allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__PXGBasicAXGroup_loadedSubgroupIndexes__block_invoke;
  v7[3] = &unk_2782AAF68;
  v5 = v3;
  v8 = v5;
  [allKeys enumerateObjectsUsingBlock:v7];

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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_axParent);
  axGroupSource = [WeakRetained axGroupSource];

  if ([axGroupSource axShouldBeConsideredAsSubgroup])
  {
    v5 = objc_loadWeakRetained(&selfCopy->_axParent);
    axScrollParent = [v5 axScrollParent];

    selfCopy = axScrollParent;
  }

  return selfCopy;
}

- (PXGBasicAXGroup)axRootParent
{
  WeakRetained = objc_loadWeakRetained(&self->_axParent);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    axParent = [(PXGBasicAXGroup *)WeakRetained axParent];

    if (axParent)
    {
      do
      {
        selfCopy = [(PXGBasicAXGroup *)v4 axParent];

        axParent2 = [(PXGBasicAXGroup *)selfCopy axParent];

        v4 = selfCopy;
      }

      while (axParent2);
    }

    else
    {
      selfCopy = v4;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setAxRole:(int64_t)role
{
  if (self->_axRole != role)
  {
    self->_axRole = role;
    axNextResponder = [(PXGBasicAXGroup *)self axNextResponder];
    [axNextResponder axGroup:self didChange:1 userInfo:0];
  }
}

- (void)_addFirstVisibleIndexes:(id)indexes toIndexesToLoad:(id)load
{
  indexesCopy = indexes;
  loadCopy = load;
  nonScrollingAxisItemCount = [(PXGBasicAXGroup *)self nonScrollingAxisItemCount];
  if (![indexesCopy firstIndex] && nonScrollingAxisItemCount)
  {
    [loadCopy addIndexesInRange:{objc_msgSend(indexesCopy, "firstIndex"), nonScrollingAxisItemCount}];
  }
}

@end