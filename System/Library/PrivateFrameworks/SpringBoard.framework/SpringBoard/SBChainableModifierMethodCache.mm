@interface SBChainableModifierMethodCache
- (SBChainableModifierMethodCache)initWithIMPs:(void *)ps selectorList:(id)list subsequentMethodCacheFunc:(void *)func;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SBChainableModifierMethodCache

- (void)dealloc
{
  free(self->_dispatchCache);
  v3.receiver = self;
  v3.super_class = SBChainableModifierMethodCache;
  [(SBChainableModifierMethodCache *)&v3 dealloc];
}

- (SBChainableModifierMethodCache)initWithIMPs:(void *)ps selectorList:(id)list subsequentMethodCacheFunc:(void *)func
{
  v14.receiver = self;
  v14.super_class = SBChainableModifierMethodCache;
  listCopy = list;
  v8 = [(SBChainableModifierMethodCache *)&v14 init];
  v9 = objc_alloc_init(SBModifierCacheCoordinator);
  cacheCoordinator = v8->_cacheCoordinator;
  v8->_cacheCoordinator = v9;

  v8->_imps = ps;
  v11 = listCopy[1];
  v12 = listCopy[2];
  v8->_selectorCount = v11;

  v8->_selectors = v12;
  v8->_dispatchCache = malloc_type_calloc(v11, 0x10uLL, 0x80040803F642BuLL);
  v8->_nextFunc = func;
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  imps = self->_imps;
  v6 = [[SBModifierCacheSelectorList alloc] initWithSelectors:self->_selectors count:self->_selectorCount];
  v7 = [v4 initWithIMPs:imps selectorList:v6 subsequentMethodCacheFunc:self->_nextFunc];

  return v7;
}

@end