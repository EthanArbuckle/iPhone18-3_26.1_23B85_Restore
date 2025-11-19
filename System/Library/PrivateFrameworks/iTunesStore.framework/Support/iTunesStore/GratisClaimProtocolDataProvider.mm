@interface GratisClaimProtocolDataProvider
- (BOOL)_runServerAuthenticationOperation:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation GratisClaimProtocolDataProvider

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GratisClaimProtocolDataProvider;
  [(DaemonProtocolDataProvider *)&v3 dealloc];
}

- (BOOL)_runServerAuthenticationOperation:(id)a3 error:(id *)a4
{
  v23 = 0;
  [a3 setPerformsButtonAction:0];
  v7 = [(GratisClaimProtocolDataProvider *)self runSubOperation:a3 error:&v23];
  v8 = [a3 redirectURL];
  v9 = [a3 selectedButton];
  if (v8)
  {
    goto LABEL_2;
  }

  v18 = v9;
  if ([v9 actionType] == 1 && (objc_msgSend(v18, "urlType") != 1 || objc_msgSend(objc_msgSend(v18, "subtarget"), "isEqualToString:", @"account.upToDateClaim")))
  {
    v19 = [v18 parameter];
    if (v19)
    {
      v8 = v19;
LABEL_2:
      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
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
        v27 = v8;
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

      -[GratisClaimProtocolDataProvider setAuthenticatedAccountDSID:](self, "setAuthenticatedAccountDSID:", [a3 authenticatedAccountDSID]);
      [(GratisClaimProtocolDataProvider *)self setRedirectedClaimURL:v8];
      goto LABEL_13;
    }
  }

  if (v7)
  {
    -[GratisClaimProtocolDataProvider setAuthenticatedAccountDSID:](self, "setAuthenticatedAccountDSID:", [a3 authenticatedAccountDSID]);
    return v7;
  }

  [v18 performDefaultActionForDialog:{objc_msgSend(a3, "dialog")}];
LABEL_13:
  if (a4)
  {
    v17 = v7;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    *a4 = v23;
  }

  return v7;
}

@end