@interface _UICollectionCompositionalLayoutSolverUpdate
+ (id)solverUpdateForVisibleBounds:(double)bounds updateItems:(double)items updateTranslator:(uint64_t)translator finalDataSourceSnapshot:(void *)snapshot;
@end

@implementation _UICollectionCompositionalLayoutSolverUpdate

+ (id)solverUpdateForVisibleBounds:(double)bounds updateItems:(double)items updateTranslator:(uint64_t)translator finalDataSourceSnapshot:(void *)snapshot
{
  objc_opt_self();
  v15 = [_UICollectionCompositionalLayoutSolverUpdate alloc];
  if (v15)
  {
    v19.receiver = v15;
    v19.super_class = _UICollectionCompositionalLayoutSolverUpdate;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    v17 = v16;
    if (v16)
    {
      *(v16 + 4) = self;
      *(v16 + 5) = a2;
      *(v16 + 6) = bounds;
      *(v16 + 7) = items;
      objc_storeStrong(v16 + 1, snapshot);
      objc_storeStrong(v17 + 2, a7);
      objc_storeStrong(v17 + 3, a8);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end