@interface ApplicationWorkspaceFailedPlaceholderOperation
- (void)runWithCompletionBlock:(id)block;
@end

@implementation ApplicationWorkspaceFailedPlaceholderOperation

- (void)runWithCompletionBlock:(id)block
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v20 = 138412546;
    v21 = objc_opt_class();
    v22 = 2112;
    applicationHandle = [(ApplicationWorkspaceOperation *)self applicationHandle];
    LODWORD(v19) = 22;
    v18 = &v20;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4, &v20, v19];
      free(v9);
      v18 = v10;
      SSFileLog();
    }
  }

  bundleID = [(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID];
  v12 = +[LSApplicationWorkspace defaultWorkspace];
  if (![(ApplicationWorkspaceOperation *)self applicationIsInstalled:bundleID])
  {
    goto LABEL_19;
  }

  v13 = [LSApplicationProxy applicationProxyForIdentifier:bundleID placeholder:1];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = [v12 installProgressForApplication:v13 withPhase:0];
  if ([v15 installState] != 4)
  {
    [v15 setInstallState:4];
  }

  if ([v12 installPhaseFinishedForProgress:v15])
  {
    goto LABEL_19;
  }

  v16 = [v12 installProgressForApplication:v14 withPhase:0];
  if ([v16 installState] != 4)
  {
    [v16 setInstallState:4];
  }

  if ([v12 installPhaseFinishedForProgress:v16])
  {
LABEL_19:
    [ApplicationWorkspaceState completeNotificationForFailedBundleIdentifier:bundleID];
    v17 = 1;
    if (!block)
    {
      return;
    }
  }

  else
  {
LABEL_22:
    v17 = 0;
    if (!block)
    {
      return;
    }
  }

  (*(block + 2))(block, v17, 0, 0);
}

@end