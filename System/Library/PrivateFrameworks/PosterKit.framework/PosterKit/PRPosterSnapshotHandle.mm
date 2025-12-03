@interface PRPosterSnapshotHandle
- (PRPosterSnapshotHandle)initWithKnownContexts:(id)contexts inflightContext:(id)context;
@end

@implementation PRPosterSnapshotHandle

- (PRPosterSnapshotHandle)initWithKnownContexts:(id)contexts inflightContext:(id)context
{
  contextsCopy = contexts;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = PRPosterSnapshotHandle;
  v8 = [(PRPosterSnapshotHandle *)&v14 init];
  if (v8)
  {
    v9 = [contextsCopy copy];
    knownContexts = v8->_knownContexts;
    v8->_knownContexts = v9;

    v11 = [contextCopy copy];
    inflightContext = v8->_inflightContext;
    v8->_inflightContext = v11;
  }

  return v8;
}

@end