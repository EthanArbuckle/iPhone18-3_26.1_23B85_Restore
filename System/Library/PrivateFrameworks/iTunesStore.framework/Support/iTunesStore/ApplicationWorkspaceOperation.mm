@interface ApplicationWorkspaceOperation
- (ApplicationWorkspaceOperation)initWithApplicationHandle:(id)a3;
- (BOOL)applicationIsInstalled:(id)a3;
- (void)dealloc;
- (void)runWithCompletionBlock:(id)a3;
@end

@implementation ApplicationWorkspaceOperation

- (ApplicationWorkspaceOperation)initWithApplicationHandle:(id)a3
{
  v6.receiver = self;
  v6.super_class = ApplicationWorkspaceOperation;
  v4 = [(ApplicationWorkspaceOperation *)&v6 init];
  if (v4)
  {
    v4->_applicationHandle = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ApplicationWorkspaceOperation;
  [(ApplicationWorkspaceOperation *)&v3 dealloc];
}

- (BOOL)applicationIsInstalled:(id)a3
{
  if (a3)
  {
    v4 = [a3 length];
    if (v4)
    {
      v4 = [LSApplicationProxy applicationProxyForIdentifier:a3];
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

- (void)runWithCompletionBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0, 0);
  }
}

@end