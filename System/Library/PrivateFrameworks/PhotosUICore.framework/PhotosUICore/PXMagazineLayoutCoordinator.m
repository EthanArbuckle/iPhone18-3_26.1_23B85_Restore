@interface PXMagazineLayoutCoordinator
- (BOOL)validateCurrentLayout;
- (PXMagazineLayoutCoordinator)initWithPaddingInputs:(id)a3 tileAspectRatio:(double)a4 stopIfAnyGoodLayout:(BOOL)a5;
- (double)scoreOfLayout:(id)a3;
- (id)currentBestLayout;
- (unint64_t)currentLayoutsCount;
- (void)validateCurrentLayoutAsFallback;
@end

@implementation PXMagazineLayoutCoordinator

- (id)currentBestLayout
{
  v3 = [(PXMagazineLayoutCoordinator *)self qualifiedLayouts];
  [v3 sortUsingComparator:&__block_literal_global_180134];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
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
  v3 = [(PXMagazineLayoutCoordinator *)self qualifiedLayouts];
  v4 = [v3 count];

  if (!v4)
  {
    return self->_fallbackLayout != 0;
  }

  return v4;
}

- (double)scoreOfLayout:(id)a3
{
  v5 = a3;
  v6 = [(PXMagazineLayoutCoordinator *)self paddingInputs];
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutCoordinator.m" lineNumber:78 description:@"Output frames and inputs should be the same"];
  }

  [(PXMagazineLayoutCoordinator *)self tileAspectRatio];
  if ([v5 count])
  {
    v8 = [v6 objectAtIndexedSubscript:0];
    [v8 size];

    if (v5)
    {
      [v5 rectAtIndex:{0, 0}];
    }

    PXSizeGetAspectRatio();
  }

  v9 = 0.0 / [v5 count];

  return v9;
}

- (void)validateCurrentLayoutAsFallback
{
  v5 = [(PXMagazineLayoutCoordinator *)self currentLayout];
  v3 = [v5 copy];
  fallbackLayout = self->_fallbackLayout;
  self->_fallbackLayout = v3;
}

- (BOOL)validateCurrentLayout
{
  v3 = [(PXMagazineLayoutCoordinator *)self qualifiedLayouts];
  v4 = [(PXMagazineLayoutCoordinator *)self currentLayout];
  [(PXMagazineLayoutCoordinator *)self scoreOfLayout:v4];
  v6 = v5;
  v7 = v5 < 0.12;
  if (v5 < 0.12)
  {
    fallbackLayout = self->_fallbackLayout;
    self->_fallbackLayout = 0;

    v9 = [v4 copy];
    [v9 setScore:v6];
    [v3 addObject:v9];
    if ([v3 count])
    {
      [(PXMagazineLayoutCoordinator *)self setStop:1];
    }
  }

  else
  {
    v9 = 0;
  }

  if (![v3 count] && v6 < self->_currentBestScore)
  {
    self->_currentBestScore = v6;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [v4 copy];
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

- (PXMagazineLayoutCoordinator)initWithPaddingInputs:(id)a3 tileAspectRatio:(double)a4 stopIfAnyGoodLayout:(BOOL)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = PXMagazineLayoutCoordinator;
  v10 = [(PXMagazineLayoutCoordinator *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_paddingInputs, a3);
    v11->_tileAspectRatio = a4;
    v12 = [MEMORY[0x1E695DF70] array];
    qualifiedLayouts = v11->_qualifiedLayouts;
    v11->_qualifiedLayouts = v12;

    v14 = -[PXMagazineRectArray initWithSize:]([PXMagazineRectArray alloc], "initWithSize:", [v9 count]);
    currentLayout = v11->_currentLayout;
    v11->_currentLayout = v14;

    v11->_stopIfAnyGoodLayout = a5;
    v11->_currentBestScore = 10000.0;
  }

  return v11;
}

@end