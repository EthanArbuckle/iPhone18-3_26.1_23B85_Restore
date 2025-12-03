@interface SBHPresentationModeFolderContext
- (id)_initWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBHPresentationModeFolderContext

- (id)_initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SBHPresentationModeFolderContext;
  v5 = [(SBHPresentationModeFolderContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_hasAssertionForSnapshotPresentationMode = contextCopy[8];
    v5->_hasAssertionForLowResolutionSnapshotPresentationMode = contextCopy[9];
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBHMutablePresentationModeFolderContext alloc];

  return [(SBHPresentationModeFolderContext *)v4 _initWithContext:self];
}

@end