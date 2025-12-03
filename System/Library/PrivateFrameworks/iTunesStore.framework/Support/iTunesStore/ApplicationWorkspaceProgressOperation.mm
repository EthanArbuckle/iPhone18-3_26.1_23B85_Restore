@interface ApplicationWorkspaceProgressOperation
- (ApplicationWorkspaceProgressOperation)initWithApplicationDownloadProgress:(id)progress;
- (void)dealloc;
- (void)runWithCompletionBlock:(id)block;
@end

@implementation ApplicationWorkspaceProgressOperation

- (ApplicationWorkspaceProgressOperation)initWithApplicationDownloadProgress:(id)progress
{
  v6.receiver = self;
  v6.super_class = ApplicationWorkspaceProgressOperation;
  v4 = -[ApplicationWorkspaceOperation initWithApplicationHandle:](&v6, "initWithApplicationHandle:", [progress applicationHandle]);
  if (v4)
  {
    v4->_applicationProgress = [progress copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ApplicationWorkspaceProgressOperation;
  [(ApplicationWorkspaceOperation *)&v3 dealloc];
}

- (void)runWithCompletionBlock:(id)block
{
  bundleID = [(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID];
  if (bundleID)
  {
    v6 = [LSApplicationProxy applicationProxyForIdentifier:bundleID placeholder:1];
    if ([v6 foundBackingBundle])
    {
      v7 = [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
      [v7 setInstallState:1];
      [v7 setCompletedUnitCount:{-[ApplicationDownloadProgress completedUnitCount](self->_applicationProgress, "completedUnitCount")}];
      [v7 setTotalUnitCount:{-[ApplicationDownloadProgress totalUnitCount](self->_applicationProgress, "totalUnitCount")}];
    }
  }

  if (block)
  {
    v8 = *(block + 2);

    v8(block, 0, 0, 0);
  }
}

@end