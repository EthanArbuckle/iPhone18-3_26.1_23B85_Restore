@interface DADiagnosticsRemoteViewControllerHostToServiceAction
+ (id)actionToString:(int64_t)a3;
+ (id)actionWithType:(int64_t)a3 object:(id)a4;
- (void)performActionForHostedWindowScene:(id)a3;
@end

@implementation DADiagnosticsRemoteViewControllerHostToServiceAction

+ (id)actionWithType:(int64_t)a3 object:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setObject:v8 forSetting:0];

  [v7 setObject:v6 forSetting:1];
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [a1 actionToString:a3];
    v14 = 136315650;
    v15 = "+[DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:object:]";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_275BB3000, v9, OS_LOG_TYPE_DEFAULT, "%s Created %@ action with object %@", &v14, 0x20u);
  }

  v11 = [[a1 alloc] initWithInfo:v7 responder:0];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)performActionForHostedWindowScene:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DADiagnosticsRemoteViewControllerHostToServiceAction *)self info];
  v6 = [v5 objectForSetting:0];
  v7 = [v6 integerValue];

  v8 = [(DADiagnosticsRemoteViewControllerHostToServiceAction *)self info];
  v9 = [v8 objectForSetting:1];

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionToString:v7];
    v18 = 136315650;
    v19 = "[DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:]";
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_275BB3000, v10, OS_LOG_TYPE_DEFAULT, "%s Received %@ action with object %@", &v18, 0x20u);
  }

  v12 = [v4 delegate];
  v13 = [v12 conformsToProtocol:&unk_2884C1558];

  if (v13)
  {
    v14 = [v4 delegate];
    v15 = v14;
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 remoteViewControllerDidSetStartingFlow:v9];
            goto LABEL_33;
          }

          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:];
          }
        }

        else
        {
          if (v7 != 2)
          {
LABEL_33:

            goto LABEL_34;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 remoteViewControllerDidSetSessionToken:v9];
            goto LABEL_33;
          }

          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 remoteViewControllerDidSetHostBundleIdentifier:v9];
          goto LABEL_33;
        }

        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_23:
          [DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:];
        }
      }

LABEL_32:

      goto LABEL_33;
    }

    if (v7 == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 remoteViewControllerDidSetSelectableSerialNumbers:v9];
        goto LABEL_33;
      }

      v16 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v7 != 4)
      {
        if (v7 == 5)
        {
          [v14 remoteViewControllerDidDisappear];
        }

        goto LABEL_33;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 remoteViewControllerDidSetRequiredSerialNumbers:v9];
        goto LABEL_33;
      }

      v16 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    [DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:];
    goto LABEL_32;
  }

LABEL_34:

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)actionToString:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"HostToServiceActionTypeSetHostBundleIdentifier";
  }

  else
  {
    return off_27A66EC48[a3 - 1];
  }
}

- (void)performActionForHostedWindowScene:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v4, v5, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performActionForHostedWindowScene:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v4, v5, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performActionForHostedWindowScene:.cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v4, v5, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end