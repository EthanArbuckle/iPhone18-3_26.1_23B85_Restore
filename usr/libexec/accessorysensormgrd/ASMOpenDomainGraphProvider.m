@interface ASMOpenDomainGraphProvider
- (ASMOpenDomainGraphProvider)init;
- (void)_activateWithExecutionSession:(id)a3;
- (void)activateWithExecutionSession:(id)a3;
- (void)invalidate;
@end

@implementation ASMOpenDomainGraphProvider

- (ASMOpenDomainGraphProvider)init
{
  v12.receiver = self;
  v12.super_class = ASMOpenDomainGraphProvider;
  v2 = [(ASMOpenDomainGraphProvider *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ASMOpenDomainGraphProvider.daemon.queue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    inputGraphMap = v2->_inputGraphMap;
    v2->_inputGraphMap = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    graphResourcesMap = v2->_graphResourcesMap;
    v2->_graphResourcesMap = v8;

    v10 = v2;
  }

  return v2;
}

- (void)activateWithExecutionSession:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000402C;
  v7[3] = &unk_1000144A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithExecutionSession:(id)a3
{
  v5 = a3;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    v6 = v5;
    objc_storeStrong(&self->_session, a3);
    v5 = v6;
  }
}

- (void)invalidate
{
  v7 = objc_alloc_init(NSSet);
  v3 = [(NSMutableDictionary *)self->_inputGraphMap allValues];
  v4 = [v7 setByAddingObjectsFromArray:v3];

  [(PSExecutionSession *)self->_session commitAddedGraphs:0 removedGraphs:v7 error:0];
  [(NSMutableDictionary *)self->_inputGraphMap removeAllObjects];
  inputGraphMap = self->_inputGraphMap;
  self->_inputGraphMap = 0;

  [(NSMutableDictionary *)self->_graphResourcesMap removeAllObjects];
  graphResourcesMap = self->_graphResourcesMap;
  self->_graphResourcesMap = 0;

  self->_frameCounter = 0;
}

@end