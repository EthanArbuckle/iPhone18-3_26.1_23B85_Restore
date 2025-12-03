@interface _PBFPosterSnapshotInvalidationWrapper
- (_PBFPosterSnapshotInvalidationWrapper)initWithSnapshotRequest:(id)request shouldTerminateProcess:(BOOL)process;
@end

@implementation _PBFPosterSnapshotInvalidationWrapper

- (_PBFPosterSnapshotInvalidationWrapper)initWithSnapshotRequest:(id)request shouldTerminateProcess:(BOOL)process
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = _PBFPosterSnapshotInvalidationWrapper;
  v8 = [(_PBFPosterSnapshotInvalidationWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_snapshotRequest, request);
    v9->_shouldTerminateProcess = process;
  }

  return v9;
}

@end