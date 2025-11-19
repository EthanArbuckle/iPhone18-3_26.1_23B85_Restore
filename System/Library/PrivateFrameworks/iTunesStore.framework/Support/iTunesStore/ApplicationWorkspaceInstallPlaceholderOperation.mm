@interface ApplicationWorkspaceInstallPlaceholderOperation
- (ApplicationWorkspaceInstallPlaceholderOperation)initWithApplicationHandle:(id)a3 forceUpdate:(BOOL)a4;
- (ApplicationWorkspaceInstallPlaceholderOperation)initWithApplicationHandle:(id)a3 iconData:(id)a4;
- (id)_download;
- (void)runWithCompletionBlock:(id)a3;
@end

@implementation ApplicationWorkspaceInstallPlaceholderOperation

- (ApplicationWorkspaceInstallPlaceholderOperation)initWithApplicationHandle:(id)a3 forceUpdate:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = ApplicationWorkspaceInstallPlaceholderOperation;
  return [(ApplicationWorkspaceOperation *)&v5 initWithApplicationHandle:a3, a4];
}

- (ApplicationWorkspaceInstallPlaceholderOperation)initWithApplicationHandle:(id)a3 iconData:(id)a4
{
  v5.receiver = self;
  v5.super_class = ApplicationWorkspaceInstallPlaceholderOperation;
  return [(ApplicationWorkspaceOperation *)&v5 initWithApplicationHandle:a3, a4];
}

- (void)runWithCompletionBlock:(id)a3
{
  v5 = [(ApplicationWorkspaceInstallPlaceholderOperation *)self _download];
  v6 = [(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID];
  if (!v6)
  {
    v6 = [v5 valueForProperty:@"bundle_id"];
  }

  [ApplicationWorkspaceState completeNotificationForInstallingBundleIdentifier:v6];
  if (a3)
  {
    v7 = *(a3 + 2);

    v7(a3, 1, 0, 0);
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