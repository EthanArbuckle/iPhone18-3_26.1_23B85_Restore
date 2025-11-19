@interface PRPosterSnapshotHandle
- (PRPosterSnapshotHandle)initWithKnownContexts:(id)a3 inflightContext:(id)a4;
@end

@implementation PRPosterSnapshotHandle

- (PRPosterSnapshotHandle)initWithKnownContexts:(id)a3 inflightContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRPosterSnapshotHandle;
  v8 = [(PRPosterSnapshotHandle *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    knownContexts = v8->_knownContexts;
    v8->_knownContexts = v9;

    v11 = [v7 copy];
    inflightContext = v8->_inflightContext;
    v8->_inflightContext = v11;
  }

  return v8;
}

@end