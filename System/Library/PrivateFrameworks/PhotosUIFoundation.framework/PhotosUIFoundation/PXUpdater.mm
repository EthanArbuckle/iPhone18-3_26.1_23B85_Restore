@interface PXUpdater
- (PXUpdater)init;
- (PXUpdater)initWithTarget:(id)target needsUpdateSelector:(SEL)selector;
- (id)target;
- (void)_scheduleUpdatePassIfNeeded;
- (void)addUpdateSelector:(SEL)selector needsUpdate:(BOOL)update;
- (void)dealloc;
- (void)setNeedsUpdateOf:(SEL)of;
- (void)setNeedsUpdateSelector:(SEL)selector;
- (void)updateIfNeeded;
@end

@implementation PXUpdater

- (void)_scheduleUpdatePassIfNeeded
{
  if (![(PXUpdater *)self isUpdatePassScheduled])
  {
    needsUpdateSelector = [(PXUpdater *)self needsUpdateSelector];
    if (needsUpdateSelector)
    {
      v4 = needsUpdateSelector;
      self->_hasUpdatedForCurrentPass = 0;
      target = [(PXUpdater *)self target];
      [target performSelector:v4 withObject:0];

      if (!self->_hasUpdatedForCurrentPass)
      {

        [(PXUpdater *)self setUpdatePassScheduled:1];
      }
    }
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)updateIfNeeded
{
  self->_hasUpdatedForCurrentPass = 1;
  if ([(NSMutableIndexSet *)self->_updateSelectorsNeedingUpdate count])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(NSMutableIndexSet *)self->_updateSelectorsAlreadyUpdated removeAllIndexes];
    target = [(PXUpdater *)self target];
    if (self->_orderedUpdateSelectorsCount)
    {
      v5 = 0;
      do
      {
        v6 = self->_orderedUpdateSelectors[v5];
        [(NSMutableIndexSet *)self->_updateSelectorsAlreadyUpdated addIndex:v6];
        if ([(NSMutableIndexSet *)self->_updateSelectorsNeedingUpdate containsIndex:v6])
        {
          [(NSMutableIndexSet *)self->_updateSelectorsNeedingUpdate removeIndex:v6];
          [target performSelector:v6 withObject:0];
        }

        ++v5;
      }

      while (v5 < self->_orderedUpdateSelectorsCount);
    }

    self->_isPerformingUpdates = isPerformingUpdates;
    if (!isPerformingUpdates)
    {
      [(PXUpdater *)self setUpdatePassScheduled:0];
      if ([(NSMutableIndexSet *)self->_updateSelectorsNeedingUpdate count])
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableIndexSet count](self->_updateSelectorsNeedingUpdate, "count")}];
        updateSelectorsNeedingUpdate = self->_updateSelectorsNeedingUpdate;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __27__PXUpdater_updateIfNeeded__block_invoke;
        v12[3] = &unk_1E7BB83D8;
        v9 = v7;
        v12[4] = v9;
        [(NSMutableIndexSet *)updateSelectorsNeedingUpdate enumerateIndexesUsingBlock:v12];
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXUpdater.m" lineNumber:178 description:{@"%@ still needing update after update pass: %@", self, v9}];

        abort();
      }
    }
  }
}

void __27__PXUpdater_updateIfNeeded__block_invoke(uint64_t a1, SEL aSelector)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(aSelector);
  [v2 addObject:v3];
}

- (void)setNeedsUpdateSelector:(SEL)selector
{
  if (self->_needsUpdateSelector != selector)
  {
    self->_needsUpdateSelector = selector;
    [(PXUpdater *)self setUpdatePassScheduled:0];
  }
}

- (void)setNeedsUpdateOf:(SEL)of
{
  if (self->_isPerformingUpdates && [(NSMutableIndexSet *)self->_updateSelectorsAlreadyUpdated containsIndex:of])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(of);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUpdater.m" lineNumber:98 description:{@"%@ marking %@ as needing update after it already has been updated", self, v7}];

    abort();
  }

  [(NSMutableIndexSet *)self->_updateSelectorsNeedingUpdate addIndex:of];

  [(PXUpdater *)self _scheduleUpdatePassIfNeeded];
}

- (void)addUpdateSelector:(SEL)selector needsUpdate:(BOOL)update
{
  updateCopy = update;
  extraChecksEnabled = [(PXUpdater *)self extraChecksEnabled];
  orderedUpdateSelectorsCount = self->_orderedUpdateSelectorsCount;
  if (extraChecksEnabled && orderedUpdateSelectorsCount)
  {
    for (i = 0; i != orderedUpdateSelectorsCount; ++i)
    {
      if (self->_orderedUpdateSelectors[i] == selector)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = NSStringFromSelector(selector);
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXUpdater.m" lineNumber:67 description:{@"%@ update selector %@ already added", self, v15}];

        abort();
      }
    }
  }

  orderedUpdateSelectors = self->_orderedUpdateSelectors;
  for (j = self->_orderedUpdateSelectorsCapacity; orderedUpdateSelectorsCount >= j; orderedUpdateSelectorsCount = self->_orderedUpdateSelectorsCount)
  {
    if (j <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = j;
    }

    self->_orderedUpdateSelectorsCapacity = 2 * v13;
    orderedUpdateSelectors = malloc_type_realloc(orderedUpdateSelectors, 16 * v13, 0x80040B8603338uLL);
    self->_orderedUpdateSelectors = orderedUpdateSelectors;
    j = self->_orderedUpdateSelectorsCapacity;
  }

  *(orderedUpdateSelectors + orderedUpdateSelectorsCount) = selector;
  self->_orderedUpdateSelectorsCount = orderedUpdateSelectorsCount + 1;
  if (updateCopy)
  {

    [(PXUpdater *)self setNeedsUpdateOf:selector];
  }
}

- (void)dealloc
{
  orderedUpdateSelectors = self->_orderedUpdateSelectors;
  if (orderedUpdateSelectors)
  {
    free(orderedUpdateSelectors);
  }

  v4.receiver = self;
  v4.super_class = PXUpdater;
  [(PXUpdater *)&v4 dealloc];
}

- (PXUpdater)initWithTarget:(id)target needsUpdateSelector:(SEL)selector
{
  targetCopy = target;
  v14.receiver = self;
  v14.super_class = PXUpdater;
  v7 = [(PXUpdater *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    v8->_needsUpdateSelector = selector;
    v8->_orderedUpdateSelectorsCapacity = 32;
    v8->_orderedUpdateSelectors = malloc_type_calloc(0x20uLL, 8uLL, 0x80040B8603338uLL);
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    updateSelectorsNeedingUpdate = v8->_updateSelectorsNeedingUpdate;
    v8->_updateSelectorsNeedingUpdate = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    updateSelectorsAlreadyUpdated = v8->_updateSelectorsAlreadyUpdated;
    v8->_updateSelectorsAlreadyUpdated = v11;

    v8->_extraChecksEnabled = 0;
  }

  return v8;
}

- (PXUpdater)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUpdater.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXUpdater init]"}];

  abort();
}

@end