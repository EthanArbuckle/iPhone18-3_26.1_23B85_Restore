@interface SXBlockComponentInsertionCacheValidator
+ (id)validatorWithBlock:(id)block;
- (BOOL)validateCache:(id)cache DOMObjectProvider:(id)provider;
@end

@implementation SXBlockComponentInsertionCacheValidator

+ (id)validatorWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  v6 = MEMORY[0x1DA716BE0](blockCopy);

  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)validateCache:(id)cache DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  cacheCopy = cache;
  block = [(SXBlockComponentInsertionCacheValidator *)self block];
  v9 = (block)[2](block, cacheCopy, providerCopy);

  return v9;
}

@end