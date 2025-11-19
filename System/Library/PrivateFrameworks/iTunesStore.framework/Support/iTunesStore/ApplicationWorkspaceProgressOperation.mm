@interface ApplicationWorkspaceProgressOperation
- (ApplicationWorkspaceProgressOperation)initWithApplicationDownloadProgress:(id)a3;
- (void)dealloc;
- (void)runWithCompletionBlock:(id)a3;
@end

@implementation ApplicationWorkspaceProgressOperation

- (ApplicationWorkspaceProgressOperation)initWithApplicationDownloadProgress:(id)a3
{
  v6.receiver = self;
  v6.super_class = ApplicationWorkspaceProgressOperation;
  v4 = -[ApplicationWorkspaceOperation initWithApplicationHandle:](&v6, "initWithApplicationHandle:", [a3 applicationHandle]);
  if (v4)
  {
    v4->_applicationProgress = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ApplicationWorkspaceProgressOperation;
  [(ApplicationWorkspaceOperation *)&v3 dealloc];
}

- (void)runWithCompletionBlock:(id)a3
{
  v5 = [(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID];
  if (v5)
  {
    v6 = [LSApplicationProxy applicationProxyForIdentifier:v5 placeholder:1];
    if ([v6 foundBackingBundle])
    {
      v7 = [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
      [v7 setInstallState:1];
      [v7 setCompletedUnitCount:{-[ApplicationDownloadProgress completedUnitCount](self->_applicationProgress, "completedUnitCount")}];
      [v7 setTotalUnitCount:{-[ApplicationDownloadProgress totalUnitCount](self->_applicationProgress, "totalUnitCount")}];
    }
  }

  if (a3)
  {
    v8 = *(a3 + 2);

    v8(a3, 0, 0, 0);
  }
}

@end