@interface _UICollectionCompositionalLayoutSolverUpdate
+ (id)solverUpdateForVisibleBounds:(double)a3 updateItems:(double)a4 updateTranslator:(uint64_t)a5 finalDataSourceSnapshot:(void *)a6;
@end

@implementation _UICollectionCompositionalLayoutSolverUpdate

+ (id)solverUpdateForVisibleBounds:(double)a3 updateItems:(double)a4 updateTranslator:(uint64_t)a5 finalDataSourceSnapshot:(void *)a6
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
      *(v16 + 4) = a1;
      *(v16 + 5) = a2;
      *(v16 + 6) = a3;
      *(v16 + 7) = a4;
      objc_storeStrong(v16 + 1, a6);
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