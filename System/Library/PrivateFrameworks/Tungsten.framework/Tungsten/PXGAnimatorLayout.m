@interface PXGAnimatorLayout
- (BOOL)isSpriteIndex:(unsigned int)a3 decoratingSpriteWithIndex:(unsigned int *)a4;
- (CGRect)visibleRect;
- (CGSize)contentSize;
- (CGSize)referenceSize;
- (PXGAnimator)animator;
- (PXGAnimatorLayout)init;
- (PXGAnimatorLayout)initWithAnimator:(id)a3;
- (double)cameraConfiguration;
- (id)fences;
- (id)leafSublayoutForSpriteIndex:(unsigned int)a3;
- (unsigned)convertSpriteIndex:(unsigned int)a3 fromLayout:(id)a4;
- (unsigned)convertSpriteIndex:(unsigned int)a3 toDescendantLayout:(id)a4;
- (unsigned)numberOfSprites;
- (unsigned)viewHostingSpriteIndexForSublayout:(id)a3 spriteIndex:(unsigned int)a4;
- (void)enumerateDescendantsLayoutsUsingBlock:(id)a3;
- (void)enumerateLayoutsForSpritesInRange:(_PXGSpriteIndexRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)removeAllFences;
@end

@implementation PXGAnimatorLayout

- (PXGAnimator)animator
{
  WeakRetained = objc_loadWeakRetained(&self->_animator);

  return WeakRetained;
}

- (unsigned)viewHostingSpriteIndexForSublayout:(id)a3 spriteIndex:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(PXGAnimatorLayout *)self inputLayout];
  LODWORD(v4) = [v7 viewHostingSpriteIndexForSublayout:v6 spriteIndex:v4];

  return v4;
}

- (unsigned)convertSpriteIndex:(unsigned int)a3 toDescendantLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(PXGAnimatorLayout *)self inputLayout];
  LODWORD(v4) = [v7 convertSpriteIndex:v4 toDescendantLayout:v6];

  return v4;
}

- (unsigned)convertSpriteIndex:(unsigned int)a3 fromLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(PXGAnimatorLayout *)self inputLayout];
  LODWORD(v4) = [v7 convertSpriteIndex:v4 fromLayout:v6];

  return v4;
}

- (id)leafSublayoutForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(PXGAnimatorLayout *)self inputLayout];
  if ([v4 numberOfSprites] <= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 leafSublayoutForSpriteIndex:v3];
  }

  return v5;
}

- (double)cameraConfiguration
{
  v2 = *(a1 + 16);
  if (v2)
  {
    [v2 cameraConfiguration];
  }

  else
  {
    result = 0.0;
    a2[11] = 0u;
    a2[12] = 0u;
    a2[9] = 0u;
    a2[10] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

- (BOOL)isSpriteIndex:(unsigned int)a3 decoratingSpriteWithIndex:(unsigned int *)a4
{
  v5 = *&a3;
  v6 = [(PXGAnimatorLayout *)self inputLayout];
  LOBYTE(a4) = [v6 isSpriteIndex:v5 decoratingSpriteWithIndex:a4];

  return a4;
}

- (void)removeAllFences
{
  v2 = [(PXGAnimatorLayout *)self inputLayout];
  [v2 removeAllFences];
}

- (id)fences
{
  v2 = [(PXGAnimatorLayout *)self inputLayout];
  v3 = [v2 fences];
  v4 = [v3 copy];

  return v4;
}

- (void)enumerateLayoutsForSpritesInRange:(_PXGSpriteIndexRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v11 = a5;
  v8 = [(PXGAnimatorLayout *)self inputLayout];
  v9 = [v8 numberOfSprites];
  if (HIDWORD(*&a3))
  {
    if (v9)
    {
      v10 = a3.length + a3.location;
      if (a3.length + a3.location)
      {
        if (v9 > a3.location)
        {
          if (v10 >= v9)
          {
            v10 = v9;
          }

          [v8 enumerateLayoutsForSpritesInRange:a3.location | ((v10 - a3.location) << 32) options:a4 usingBlock:v11];
        }
      }
    }
  }
}

- (void)enumerateDescendantsLayoutsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXGAnimatorLayout *)self inputLayout];
  [v5 enumerateDescendantsLayoutsUsingBlock:v4];
}

- (unsigned)numberOfSprites
{
  v2 = [(PXGAnimatorLayout *)self inputLayout];
  v3 = [v2 numberOfSprites];

  return v3;
}

- (CGSize)contentSize
{
  v2 = [(PXGAnimatorLayout *)self inputLayout];
  [v2 contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)referenceSize
{
  v2 = [(PXGAnimatorLayout *)self inputLayout];
  [v2 referenceSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)visibleRect
{
  v2 = [(PXGAnimatorLayout *)self inputLayout];
  [v2 visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (PXGAnimatorLayout)initWithAnimator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXGAnimatorLayout;
  v5 = [(PXGAnimatorLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_animator, v4);
  }

  return v6;
}

- (PXGAnimatorLayout)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGAnimator.m" lineNumber:1087 description:{@"%s is not available as initializer", "-[PXGAnimatorLayout init]"}];

  abort();
}

@end