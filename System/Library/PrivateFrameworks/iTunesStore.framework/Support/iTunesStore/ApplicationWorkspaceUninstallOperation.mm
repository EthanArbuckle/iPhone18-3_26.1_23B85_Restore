@interface ApplicationWorkspaceUninstallOperation
- (void)runWithCompletionBlock:(id)block;
@end

@implementation ApplicationWorkspaceUninstallOperation

- (void)runWithCompletionBlock:(id)block
{
  [ApplicationWorkspaceState completeNotificationForCanceledBundleIdentifier:[(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID]];
  if (block)
  {
    v4 = *(block + 2);

    v4(block, 1, 0, 0);
  }
}

@end