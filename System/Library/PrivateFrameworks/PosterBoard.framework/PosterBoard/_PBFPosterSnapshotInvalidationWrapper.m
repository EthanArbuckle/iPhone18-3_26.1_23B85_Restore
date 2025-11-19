@interface _PBFPosterSnapshotInvalidationWrapper
- (_PBFPosterSnapshotInvalidationWrapper)initWithSnapshotRequest:(id)a3 shouldTerminateProcess:(BOOL)a4;
@end

@implementation _PBFPosterSnapshotInvalidationWrapper

- (_PBFPosterSnapshotInvalidationWrapper)initWithSnapshotRequest:(id)a3 shouldTerminateProcess:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _PBFPosterSnapshotInvalidationWrapper;
  v8 = [(_PBFPosterSnapshotInvalidationWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_snapshotRequest, a3);
    v9->_shouldTerminateProcess = a4;
  }

  return v9;
}

@end