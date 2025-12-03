@interface GratisClaimProtocolDataProvider
- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error;
- (void)dealloc;
@end

@implementation GratisClaimProtocolDataProvider

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GratisClaimProtocolDataProvider;
  [(DaemonProtocolDataProvider *)&v3 dealloc];
}

- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error
{
  v23 = 0;
  [operation setPerformsButtonAction:0];
  v7 = [(GratisClaimProtocolDataProvider *)self runSubOperation:operation error:&v23];
  redirectURL = [operation redirectURL];
  selectedButton = [operation selectedButton];
  if (redirectURL)
  {
    goto LABEL_2;
  }

  v18 = selectedButton;
  if ([selectedButton actionType] == 1 && (objc_msgSend(v18, "urlType") != 1 || objc_msgSend(objc_msgSend(v18, "subtarget"), "isEqualToString:", @"account.upToDateClaim")))
  {
    parameter = [v18 parameter];
    if (parameter)
    {
      redirectURL = parameter;
LABEL_2:
      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = shouldLog | 2;
      }

      else
      {
        v12 = shouldLog;
      }

      if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v13 = objc_opt_class();
        v24 = 138412546;
        v25 = v13;
        v26 = 2112;
        v27 = redirectURL;
        LODWORD(v22) = 22;
        v21 = &v24;
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          v15 = v14;
          v16 = [NSString stringWithCString:v14 encoding:4, &v24, v22];
          free(v15);
          v21 = v16;
          SSFileLog();
        }
      }

      -[GratisClaimProtocolDataProvider setAuthenticatedAccountDSID:](self, "setAuthenticatedAccountDSID:", [operation authenticatedAccountDSID]);
      [(GratisClaimProtocolDataProvider *)self setRedirectedClaimURL:redirectURL];
      goto LABEL_13;
    }
  }

  if (v7)
  {
    -[GratisClaimProtocolDataProvider setAuthenticatedAccountDSID:](self, "setAuthenticatedAccountDSID:", [operation authenticatedAccountDSID]);
    return v7;
  }

  [v18 performDefaultActionForDialog:{objc_msgSend(operation, "dialog")}];
LABEL_13:
  if (error)
  {
    v17 = v7;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    *error = v23;
  }

  return v7;
}

@end