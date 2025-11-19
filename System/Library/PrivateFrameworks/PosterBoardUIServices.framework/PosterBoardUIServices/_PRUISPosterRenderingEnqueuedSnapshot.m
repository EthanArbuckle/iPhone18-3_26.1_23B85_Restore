@interface _PRUISPosterRenderingEnqueuedSnapshot
- (_PRUISPosterRenderingEnqueuedSnapshot)initWithSnapshotRequest:(id)a3 completionBlock:(id)a4;
@end

@implementation _PRUISPosterRenderingEnqueuedSnapshot

- (_PRUISPosterRenderingEnqueuedSnapshot)initWithSnapshotRequest:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _PRUISPosterRenderingEnqueuedSnapshot;
  v9 = [(_PRUISPosterRenderingEnqueuedSnapshot *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshotRequest, a3);
    v11 = [v8 copy];
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v11;
  }

  return v10;
}

@end