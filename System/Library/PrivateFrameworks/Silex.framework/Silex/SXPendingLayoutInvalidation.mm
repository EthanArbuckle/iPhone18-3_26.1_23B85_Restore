@interface SXPendingLayoutInvalidation
- (SXPendingLayoutInvalidation)initWithComponent:(id)component pendingPromise:(id)promise layoutOptions:(id)options invalidation:(id)invalidation;
@end

@implementation SXPendingLayoutInvalidation

- (SXPendingLayoutInvalidation)initWithComponent:(id)component pendingPromise:(id)promise layoutOptions:(id)options invalidation:(id)invalidation
{
  componentCopy = component;
  promiseCopy = promise;
  optionsCopy = options;
  invalidationCopy = invalidation;
  v20.receiver = self;
  v20.super_class = SXPendingLayoutInvalidation;
  v15 = [(SXPendingLayoutInvalidation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_component, component);
    objc_storeStrong(&v16->_pendingPromise, promise);
    objc_storeStrong(&v16->_layoutOptions, options);
    v17 = MEMORY[0x1DA716BE0](invalidationCopy);
    invalidation = v16->_invalidation;
    v16->_invalidation = v17;
  }

  return v16;
}

@end