@interface SXBlockComponentInsertionCacheValidator
+ (id)validatorWithBlock:(id)a3;
- (BOOL)validateCache:(id)a3 DOMObjectProvider:(id)a4;
@end

@implementation SXBlockComponentInsertionCacheValidator

+ (id)validatorWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = MEMORY[0x1DA716BE0](v4);

  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)validateCache:(id)a3 DOMObjectProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXBlockComponentInsertionCacheValidator *)self block];
  v9 = (v8)[2](v8, v7, v6);

  return v9;
}

@end