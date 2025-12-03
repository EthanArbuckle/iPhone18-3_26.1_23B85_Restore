@interface SBSceneHandleSizesCache
- (CGSize)minimumSizeForDisplayItem:(id)item;
- (SBSceneHandleSizesCache)init;
- (void)reset;
- (void)setMinimumSize:(CGSize)size forDisplayItem:(id)item;
@end

@implementation SBSceneHandleSizesCache

- (SBSceneHandleSizesCache)init
{
  v6.receiver = self;
  v6.super_class = SBSceneHandleSizesCache;
  v2 = [(SBSceneHandleSizesCache *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    displayItemsToMinSizes = v2->_displayItemsToMinSizes;
    v2->_displayItemsToMinSizes = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (void)reset
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHandleSizesCache reset]"];
  [currentHandler handleFailureInFunction:v0 file:@"SBSceneHandleSizesCache.m" lineNumber:29 description:@"this call must be made on the main thread"];
}

- (CGSize)minimumSizeForDisplayItem:(id)item
{
  itemCopy = item;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneHandleSizesCache minimumSizeForDisplayItem:];
  }

  v5 = [(NSMapTable *)self->_displayItemsToMinSizes objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x223D6B400](v5);
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
    v7 = -1.0;
  }

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setMinimumSize:(CGSize)size forDisplayItem:(id)item
{
  v5 = MEMORY[0x277CCACC8];
  itemCopy = item;
  if (([v5 isMainThread] & 1) == 0)
  {
    [SBSceneHandleSizesCache setMinimumSize:forDisplayItem:];
  }

  displayItemsToMinSizes = self->_displayItemsToMinSizes;
  v8 = BSValueWithSize();
  [(NSMapTable *)displayItemsToMinSizes setObject:v8 forKey:itemCopy];
}

- (void)minimumSizeForDisplayItem:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHandleSizesCache minimumSizeForDisplayItem:]"];
  [v1 handleFailureInFunction:v0 file:@"SBSceneHandleSizesCache.m" lineNumber:34 description:@"this call must be made on the main thread"];
}

- (void)setMinimumSize:forDisplayItem:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHandleSizesCache setMinimumSize:forDisplayItem:]"];
  [v1 handleFailureInFunction:v0 file:@"SBSceneHandleSizesCache.m" lineNumber:47 description:@"this call must be made on the main thread"];
}

@end