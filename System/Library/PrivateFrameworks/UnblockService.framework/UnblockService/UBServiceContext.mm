@interface UBServiceContext
- (UBServiceContext)initWithServiceNode:(id)a3 serviceResult:(id)a4 deadlocks:(id)a5 threadIDToDeadlockDict:(id)a6 threadExhaustions:(id)a7 threadIDToThreadExhaustionDict:(id)a8 options:(unint64_t)a9;
@end

@implementation UBServiceContext

- (UBServiceContext)initWithServiceNode:(id)a3 serviceResult:(id)a4 deadlocks:(id)a5 threadIDToDeadlockDict:(id)a6 threadExhaustions:(id)a7 threadIDToThreadExhaustionDict:(id)a8 options:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = UBServiceContext;
  v19 = [(UBServiceContext *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_serviceNode, a3);
    objc_storeStrong(&v20->_serviceResult, a4);
    objc_storeStrong(&v20->_deadlocks, a5);
    objc_storeStrong(&v20->_threadIDToDeadlockDict, a6);
    objc_storeStrong(&v20->_threadExhaustions, a7);
    objc_storeStrong(&v20->_threadIDToThreadExhaustionDict, a8);
    v20->_options = a9;
    v21 = v20;
  }

  return v20;
}

@end