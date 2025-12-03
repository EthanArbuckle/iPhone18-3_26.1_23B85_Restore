@interface PXNewMagazineLayoutCoordinator
- (BOOL)validateCurrentLayout;
- (PXNewMagazineLayoutCoordinator)initWithPaddingInputs:(id)inputs tileGrid:(id)grid tileAspectRatio:(double)ratio stopIfAnyGoodLayout:(BOOL)layout;
- (PXNewMagazineRectArray)currentBestLayout;
- (double)scoreOfLayout:(id)layout;
- (unint64_t)currentLayoutsCount;
- (void)validateCurrentLayoutAsFallback;
@end

@implementation PXNewMagazineLayoutCoordinator

- (PXNewMagazineRectArray)currentBestLayout
{
  qualifiedLayouts = [(PXNewMagazineLayoutCoordinator *)self qualifiedLayouts];
  [qualifiedLayouts sortUsingComparator:&__block_literal_global_24384];
  if ([qualifiedLayouts count])
  {
    v4 = [qualifiedLayouts objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = self->_fallbackLayout;
  }

  v5 = v4;

  return v5;
}

uint64_t __51__PXNewMagazineLayoutCoordinator_currentBestLayout__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)currentLayoutsCount
{
  qualifiedLayouts = [(PXNewMagazineLayoutCoordinator *)self qualifiedLayouts];
  v4 = [qualifiedLayouts count];

  if (!v4)
  {
    return self->_fallbackLayout != 0;
  }

  return v4;
}

- (double)scoreOfLayout:(id)layout
{
  layoutCopy = layout;
  paddingInputs = [(PXNewMagazineLayoutCoordinator *)self paddingInputs];
  v7 = [layoutCopy count];
  if (v7 != [paddingInputs count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNewMagazineLayoutCoordinator.m" lineNumber:80 description:@"Output frames and inputs should be the same"];
  }

  [(PXNewMagazineLayoutCoordinator *)self tileAspectRatio];
  if ([layoutCopy count])
  {
    v8 = [paddingInputs objectAtIndexedSubscript:0];
    [v8 size];

    if (layoutCopy)
    {
      [layoutCopy rectAtIndex:{0, 0}];
    }

    PXSizeGetAspectRatio();
  }

  v9 = 0.0 / [layoutCopy count];

  return v9;
}

- (void)validateCurrentLayoutAsFallback
{
  currentLayout = [(PXNewMagazineLayoutCoordinator *)self currentLayout];
  immutableCopyForCurrentRectsCount = [currentLayout immutableCopyForCurrentRectsCount];
  fallbackLayout = self->_fallbackLayout;
  self->_fallbackLayout = immutableCopyForCurrentRectsCount;
}

- (BOOL)validateCurrentLayout
{
  qualifiedLayouts = [(PXNewMagazineLayoutCoordinator *)self qualifiedLayouts];
  currentLayout = [(PXNewMagazineLayoutCoordinator *)self currentLayout];
  [(PXNewMagazineLayoutCoordinator *)self scoreOfLayout:currentLayout];
  v6 = v5;
  v7 = v5 < 0.12;
  if (v5 < 0.12)
  {
    fallbackLayout = self->_fallbackLayout;
    self->_fallbackLayout = 0;

    immutableCopyForCurrentRectsCount = [currentLayout immutableCopyForCurrentRectsCount];
    [immutableCopyForCurrentRectsCount setScore:v6];
    [qualifiedLayouts addObject:immutableCopyForCurrentRectsCount];
    if ([qualifiedLayouts count])
    {
      [(PXNewMagazineLayoutCoordinator *)self setStop:1];
    }
  }

  else
  {
    immutableCopyForCurrentRectsCount = 0;
  }

  if (![qualifiedLayouts count] && v6 < self->_currentBestScore)
  {
    self->_currentBestScore = v6;
    if (immutableCopyForCurrentRectsCount)
    {
      immutableCopyForCurrentRectsCount2 = immutableCopyForCurrentRectsCount;
    }

    else
    {
      immutableCopyForCurrentRectsCount2 = [currentLayout immutableCopyForCurrentRectsCount];
    }

    v11 = self->_fallbackLayout;
    self->_fallbackLayout = immutableCopyForCurrentRectsCount2;

    v7 = 1;
  }

  if ([(PXNewMagazineLayoutCoordinator *)self stopIfAnyGoodLayout])
  {
    [(PXNewMagazineLayoutCoordinator *)self setStop:1];
  }

  return v7;
}

- (PXNewMagazineLayoutCoordinator)initWithPaddingInputs:(id)inputs tileGrid:(id)grid tileAspectRatio:(double)ratio stopIfAnyGoodLayout:(BOOL)layout
{
  inputsCopy = inputs;
  gridCopy = grid;
  v20.receiver = self;
  v20.super_class = PXNewMagazineLayoutCoordinator;
  v13 = [(PXNewMagazineLayoutCoordinator *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_paddingInputs, inputs);
    v14->_tileAspectRatio = ratio;
    array = [MEMORY[0x1E695DF70] array];
    qualifiedLayouts = v14->_qualifiedLayouts;
    v14->_qualifiedLayouts = array;

    v17 = -[PXNewMagazineRectArray initWithSize:tileGrid:]([PXNewMagazineRectArray alloc], "initWithSize:tileGrid:", [inputsCopy count], gridCopy);
    currentLayout = v14->_currentLayout;
    v14->_currentLayout = v17;

    v14->_stopIfAnyGoodLayout = layout;
    v14->_currentBestScore = 10000.0;
  }

  return v14;
}

@end