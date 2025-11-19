@interface SXPendingLayoutInvalidation
- (SXPendingLayoutInvalidation)initWithComponent:(id)a3 pendingPromise:(id)a4 layoutOptions:(id)a5 invalidation:(id)a6;
@end

@implementation SXPendingLayoutInvalidation

- (SXPendingLayoutInvalidation)initWithComponent:(id)a3 pendingPromise:(id)a4 layoutOptions:(id)a5 invalidation:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SXPendingLayoutInvalidation;
  v15 = [(SXPendingLayoutInvalidation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_component, a3);
    objc_storeStrong(&v16->_pendingPromise, a4);
    objc_storeStrong(&v16->_layoutOptions, a5);
    v17 = MEMORY[0x1DA716BE0](v14);
    invalidation = v16->_invalidation;
    v16->_invalidation = v17;
  }

  return v16;
}

@end