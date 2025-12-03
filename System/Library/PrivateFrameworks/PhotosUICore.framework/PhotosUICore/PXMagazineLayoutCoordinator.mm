@interface PXMagazineLayoutCoordinator
- (BOOL)validateCurrentLayout;
- (PXMagazineLayoutCoordinator)initWithPaddingInputs:(id)inputs tileAspectRatio:(double)ratio stopIfAnyGoodLayout:(BOOL)layout;
- (double)scoreOfLayout:(id)layout;
- (id)currentBestLayout;
- (unint64_t)currentLayoutsCount;
- (void)validateCurrentLayoutAsFallback;
@end

@implementation PXMagazineLayoutCoordinator

- (id)currentBestLayout
{
  qualifiedLayouts = [(PXMagazineLayoutCoordinator *)self qualifiedLayouts];
  [qualifiedLayouts sortUsingComparator:&__block_literal_global_180134];
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

uint64_t __48__PXMagazineLayoutCoordinator_currentBestLayout__block_invoke(uint64_t a1, void *a2, void *a3)
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
  qualifiedLayouts = [(PXMagazineLayoutCoordinator *)self qualifiedLayouts];
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
  paddingInputs = [(PXMagazineLayoutCoordinator *)self paddingInputs];
  v7 = [layoutCopy count];
  if (v7 != [paddingInputs count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutCoordinator.m" lineNumber:78 description:@"Output frames and inputs should be the same"];
  }

  [(PXMagazineLayoutCoordinator *)self tileAspectRatio];
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
  currentLayout = [(PXMagazineLayoutCoordinator *)self currentLayout];
  v3 = [currentLayout copy];
  fallbackLayout = self->_fallbackLayout;
  self->_fallbackLayout = v3;
}

- (BOOL)validateCurrentLayout
{
  qualifiedLayouts = [(PXMagazineLayoutCoordinator *)self qualifiedLayouts];
  currentLayout = [(PXMagazineLayoutCoordinator *)self currentLayout];
  [(PXMagazineLayoutCoordinator *)self scoreOfLayout:currentLayout];
  v6 = v5;
  v7 = v5 < 0.12;
  if (v5 < 0.12)
  {
    fallbackLayout = self->_fallbackLayout;
    self->_fallbackLayout = 0;

    v9 = [currentLayout copy];
    [v9 setScore:v6];
    [qualifiedLayouts addObject:v9];
    if ([qualifiedLayouts count])
    {
      [(PXMagazineLayoutCoordinator *)self setStop:1];
    }
  }

  else
  {
    v9 = 0;
  }

  if (![qualifiedLayouts count] && v6 < self->_currentBestScore)
  {
    self->_currentBestScore = v6;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [currentLayout copy];
    }

    v11 = self->_fallbackLayout;
    self->_fallbackLayout = v10;

    v7 = 1;
  }

  if ([(PXMagazineLayoutCoordinator *)self stopIfAnyGoodLayout])
  {
    [(PXMagazineLayoutCoordinator *)self setStop:1];
  }

  return v7;
}

- (PXMagazineLayoutCoordinator)initWithPaddingInputs:(id)inputs tileAspectRatio:(double)ratio stopIfAnyGoodLayout:(BOOL)layout
{
  inputsCopy = inputs;
  v17.receiver = self;
  v17.super_class = PXMagazineLayoutCoordinator;
  v10 = [(PXMagazineLayoutCoordinator *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_paddingInputs, inputs);
    v11->_tileAspectRatio = ratio;
    array = [MEMORY[0x1E695DF70] array];
    qualifiedLayouts = v11->_qualifiedLayouts;
    v11->_qualifiedLayouts = array;

    v14 = -[PXMagazineRectArray initWithSize:]([PXMagazineRectArray alloc], "initWithSize:", [inputsCopy count]);
    currentLayout = v11->_currentLayout;
    v11->_currentLayout = v14;

    v11->_stopIfAnyGoodLayout = layout;
    v11->_currentBestScore = 10000.0;
  }

  return v11;
}

@end