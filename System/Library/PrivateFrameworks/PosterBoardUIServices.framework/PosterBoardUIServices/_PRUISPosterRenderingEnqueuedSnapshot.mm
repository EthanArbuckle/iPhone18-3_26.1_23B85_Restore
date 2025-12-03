@interface _PRUISPosterRenderingEnqueuedSnapshot
- (_PRUISPosterRenderingEnqueuedSnapshot)initWithSnapshotRequest:(id)request completionBlock:(id)block;
@end

@implementation _PRUISPosterRenderingEnqueuedSnapshot

- (_PRUISPosterRenderingEnqueuedSnapshot)initWithSnapshotRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = _PRUISPosterRenderingEnqueuedSnapshot;
  v9 = [(_PRUISPosterRenderingEnqueuedSnapshot *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshotRequest, request);
    v11 = [blockCopy copy];
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v11;
  }

  return v10;
}

@end