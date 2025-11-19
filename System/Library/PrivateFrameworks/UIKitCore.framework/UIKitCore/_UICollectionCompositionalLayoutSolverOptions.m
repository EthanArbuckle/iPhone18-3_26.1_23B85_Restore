@interface _UICollectionCompositionalLayoutSolverOptions
+ (id)defaultOptions;
@end

@implementation _UICollectionCompositionalLayoutSolverOptions

+ (id)defaultOptions
{
  v0 = objc_alloc_init(objc_opt_self());
  v1 = v0;
  if (v0)
  {
    v0[2] = 0;
    v2 = objc_opt_class();
    objc_storeStrong(v1 + 3, v2);
    v3 = objc_opt_class();
    objc_storeStrong(v1 + 4, v3);
    *(v1 + 4) = 256;
    objc_setProperty_nonatomic_copy(v1, v4, 0, 40);
    objc_setProperty_nonatomic_copy(v1, v5, MEMORY[0x1E695E0F0], 48);
    objc_setProperty_nonatomic_copy(v1, v6, 0, 56);
    objc_setProperty_nonatomic_copy(v1, v7, 0, 64);
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
  }

  return v1;
}

@end