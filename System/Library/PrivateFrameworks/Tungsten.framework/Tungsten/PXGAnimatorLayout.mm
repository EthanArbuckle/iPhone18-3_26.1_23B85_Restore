@interface PXGAnimatorLayout
- (BOOL)isSpriteIndex:(unsigned int)index decoratingSpriteWithIndex:(unsigned int *)withIndex;
- (CGRect)visibleRect;
- (CGSize)contentSize;
- (CGSize)referenceSize;
- (PXGAnimator)animator;
- (PXGAnimatorLayout)init;
- (PXGAnimatorLayout)initWithAnimator:(id)animator;
- (double)cameraConfiguration;
- (id)fences;
- (id)leafSublayoutForSpriteIndex:(unsigned int)index;
- (unsigned)convertSpriteIndex:(unsigned int)index fromLayout:(id)layout;
- (unsigned)convertSpriteIndex:(unsigned int)index toDescendantLayout:(id)layout;
- (unsigned)numberOfSprites;
- (unsigned)viewHostingSpriteIndexForSublayout:(id)sublayout spriteIndex:(unsigned int)index;
- (void)enumerateDescendantsLayoutsUsingBlock:(id)block;
- (void)enumerateLayoutsForSpritesInRange:(_PXGSpriteIndexRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)removeAllFences;
@end

@implementation PXGAnimatorLayout

- (PXGAnimator)animator
{
  WeakRetained = objc_loadWeakRetained(&self->_animator);

  return WeakRetained;
}

- (unsigned)viewHostingSpriteIndexForSublayout:(id)sublayout spriteIndex:(unsigned int)index
{
  v4 = *&index;
  sublayoutCopy = sublayout;
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  LODWORD(v4) = [inputLayout viewHostingSpriteIndexForSublayout:sublayoutCopy spriteIndex:v4];

  return v4;
}

- (unsigned)convertSpriteIndex:(unsigned int)index toDescendantLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  LODWORD(v4) = [inputLayout convertSpriteIndex:v4 toDescendantLayout:layoutCopy];

  return v4;
}

- (unsigned)convertSpriteIndex:(unsigned int)index fromLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  LODWORD(v4) = [inputLayout convertSpriteIndex:v4 fromLayout:layoutCopy];

  return v4;
}

- (id)leafSublayoutForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  if ([inputLayout numberOfSprites] <= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [inputLayout leafSublayoutForSpriteIndex:v3];
  }

  return v5;
}

- (double)cameraConfiguration
{
  v2 = *(self + 16);
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

- (BOOL)isSpriteIndex:(unsigned int)index decoratingSpriteWithIndex:(unsigned int *)withIndex
{
  v5 = *&index;
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  LOBYTE(withIndex) = [inputLayout isSpriteIndex:v5 decoratingSpriteWithIndex:withIndex];

  return withIndex;
}

- (void)removeAllFences
{
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  [inputLayout removeAllFences];
}

- (id)fences
{
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  fences = [inputLayout fences];
  v4 = [fences copy];

  return v4;
}

- (void)enumerateLayoutsForSpritesInRange:(_PXGSpriteIndexRange)range options:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  numberOfSprites = [inputLayout numberOfSprites];
  if (HIDWORD(*&range))
  {
    if (numberOfSprites)
    {
      v10 = range.length + range.location;
      if (range.length + range.location)
      {
        if (numberOfSprites > range.location)
        {
          if (v10 >= numberOfSprites)
          {
            v10 = numberOfSprites;
          }

          [inputLayout enumerateLayoutsForSpritesInRange:range.location | ((v10 - range.location) << 32) options:options usingBlock:blockCopy];
        }
      }
    }
  }
}

- (void)enumerateDescendantsLayoutsUsingBlock:(id)block
{
  blockCopy = block;
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  [inputLayout enumerateDescendantsLayoutsUsingBlock:blockCopy];
}

- (unsigned)numberOfSprites
{
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  numberOfSprites = [inputLayout numberOfSprites];

  return numberOfSprites;
}

- (CGSize)contentSize
{
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  [inputLayout contentSize];
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
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  [inputLayout referenceSize];
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
  inputLayout = [(PXGAnimatorLayout *)self inputLayout];
  [inputLayout visibleRect];
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

- (PXGAnimatorLayout)initWithAnimator:(id)animator
{
  animatorCopy = animator;
  v8.receiver = self;
  v8.super_class = PXGAnimatorLayout;
  v5 = [(PXGAnimatorLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_animator, animatorCopy);
  }

  return v6;
}

- (PXGAnimatorLayout)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAnimator.m" lineNumber:1087 description:{@"%s is not available as initializer", "-[PXGAnimatorLayout init]"}];

  abort();
}

@end