@interface ApplicationWorkspaceOperation
- (ApplicationWorkspaceOperation)initWithApplicationHandle:(id)handle;
- (BOOL)applicationIsInstalled:(id)installed;
- (void)dealloc;
- (void)runWithCompletionBlock:(id)block;
@end

@implementation ApplicationWorkspaceOperation

- (ApplicationWorkspaceOperation)initWithApplicationHandle:(id)handle
{
  v6.receiver = self;
  v6.super_class = ApplicationWorkspaceOperation;
  v4 = [(ApplicationWorkspaceOperation *)&v6 init];
  if (v4)
  {
    v4->_applicationHandle = [handle copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ApplicationWorkspaceOperation;
  [(ApplicationWorkspaceOperation *)&v3 dealloc];
}

- (BOOL)applicationIsInstalled:(id)installed
{
  if (installed)
  {
    v4 = [installed length];
    if (v4)
    {
      v4 = [LSApplicationProxy applicationProxyForIdentifier:installed];
      if (v4)
      {
        v5 = v4;
        if ([v4 isInstalled])
        {
          LOBYTE(v4) = 1;
        }

        else
        {

          LOBYTE(v4) = [v5 isPlaceholder];
        }
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)runWithCompletionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, 0, 0, 0);
  }
}

@end