@interface ApplicationWorkspaceUninstallOperation
- (void)runWithCompletionBlock:(id)a3;
@end

@implementation ApplicationWorkspaceUninstallOperation

- (void)runWithCompletionBlock:(id)a3
{
  [ApplicationWorkspaceState completeNotificationForCanceledBundleIdentifier:[(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID]];
  if (a3)
  {
    v4 = *(a3 + 2);

    v4(a3, 1, 0, 0);
  }
}

@end