@interface SBHPresentationModeFolderContext
- (id)_initWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SBHPresentationModeFolderContext

- (id)_initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBHPresentationModeFolderContext;
  v5 = [(SBHPresentationModeFolderContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_hasAssertionForSnapshotPresentationMode = v4[8];
    v5->_hasAssertionForLowResolutionSnapshotPresentationMode = v4[9];
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBHMutablePresentationModeFolderContext alloc];

  return [(SBHPresentationModeFolderContext *)v4 _initWithContext:self];
}

@end