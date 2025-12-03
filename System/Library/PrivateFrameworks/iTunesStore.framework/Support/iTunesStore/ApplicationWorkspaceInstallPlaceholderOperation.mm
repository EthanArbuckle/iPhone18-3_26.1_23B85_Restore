@interface ApplicationWorkspaceInstallPlaceholderOperation
- (ApplicationWorkspaceInstallPlaceholderOperation)initWithApplicationHandle:(id)handle forceUpdate:(BOOL)update;
- (ApplicationWorkspaceInstallPlaceholderOperation)initWithApplicationHandle:(id)handle iconData:(id)data;
- (id)_download;
- (void)runWithCompletionBlock:(id)block;
@end

@implementation ApplicationWorkspaceInstallPlaceholderOperation

- (ApplicationWorkspaceInstallPlaceholderOperation)initWithApplicationHandle:(id)handle forceUpdate:(BOOL)update
{
  v5.receiver = self;
  v5.super_class = ApplicationWorkspaceInstallPlaceholderOperation;
  return [(ApplicationWorkspaceOperation *)&v5 initWithApplicationHandle:handle, update];
}

- (ApplicationWorkspaceInstallPlaceholderOperation)initWithApplicationHandle:(id)handle iconData:(id)data
{
  v5.receiver = self;
  v5.super_class = ApplicationWorkspaceInstallPlaceholderOperation;
  return [(ApplicationWorkspaceOperation *)&v5 initWithApplicationHandle:handle, data];
}

- (void)runWithCompletionBlock:(id)block
{
  _download = [(ApplicationWorkspaceInstallPlaceholderOperation *)self _download];
  bundleID = [(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID];
  if (!bundleID)
  {
    bundleID = [_download valueForProperty:@"bundle_id"];
  }

  [ApplicationWorkspaceState completeNotificationForInstallingBundleIdentifier:bundleID];
  if (block)
  {
    v7 = *(block + 2);

    v7(block, 1, 0, 0);
  }
}

- (id)_download
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = sub_100230C8C;
  v9 = sub_100230C9C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100230CA8;
  v4[3] = &unk_10032C558;
  v4[4] = self;
  v4[5] = &v5;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end