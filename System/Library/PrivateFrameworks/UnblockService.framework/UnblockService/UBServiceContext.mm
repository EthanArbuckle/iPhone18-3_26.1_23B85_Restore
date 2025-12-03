@interface UBServiceContext
- (UBServiceContext)initWithServiceNode:(id)node serviceResult:(id)result deadlocks:(id)deadlocks threadIDToDeadlockDict:(id)dict threadExhaustions:(id)exhaustions threadIDToThreadExhaustionDict:(id)exhaustionDict options:(unint64_t)options;
@end

@implementation UBServiceContext

- (UBServiceContext)initWithServiceNode:(id)node serviceResult:(id)result deadlocks:(id)deadlocks threadIDToDeadlockDict:(id)dict threadExhaustions:(id)exhaustions threadIDToThreadExhaustionDict:(id)exhaustionDict options:(unint64_t)options
{
  nodeCopy = node;
  resultCopy = result;
  deadlocksCopy = deadlocks;
  dictCopy = dict;
  exhaustionsCopy = exhaustions;
  exhaustionDictCopy = exhaustionDict;
  v26.receiver = self;
  v26.super_class = UBServiceContext;
  v19 = [(UBServiceContext *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_serviceNode, node);
    objc_storeStrong(&v20->_serviceResult, result);
    objc_storeStrong(&v20->_deadlocks, deadlocks);
    objc_storeStrong(&v20->_threadIDToDeadlockDict, dict);
    objc_storeStrong(&v20->_threadExhaustions, exhaustions);
    objc_storeStrong(&v20->_threadIDToThreadExhaustionDict, exhaustionDict);
    v20->_options = options;
    v21 = v20;
  }

  return v20;
}

@end