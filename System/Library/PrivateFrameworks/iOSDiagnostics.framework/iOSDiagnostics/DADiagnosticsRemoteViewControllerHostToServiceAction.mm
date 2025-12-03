@interface DADiagnosticsRemoteViewControllerHostToServiceAction
+ (id)actionToString:(int64_t)string;
+ (id)actionWithType:(int64_t)type object:(id)object;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation DADiagnosticsRemoteViewControllerHostToServiceAction

+ (id)actionWithType:(int64_t)type object:(id)object
{
  v20 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v7 setObject:v8 forSetting:0];

  [v7 setObject:objectCopy forSetting:1];
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [self actionToString:type];
    v14 = 136315650;
    v15 = "+[DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:object:]";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = objectCopy;
    _os_log_impl(&dword_275BB3000, v9, OS_LOG_TYPE_DEFAULT, "%s Created %@ action with object %@", &v14, 0x20u);
  }

  v11 = [[self alloc] initWithInfo:v7 responder:0];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)performActionForHostedWindowScene:(id)scene
{
  v24 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  info = [(DADiagnosticsRemoteViewControllerHostToServiceAction *)self info];
  v6 = [info objectForSetting:0];
  integerValue = [v6 integerValue];

  info2 = [(DADiagnosticsRemoteViewControllerHostToServiceAction *)self info];
  v9 = [info2 objectForSetting:1];

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionToString:integerValue];
    v18 = 136315650;
    v19 = "[DADiagnosticsRemoteViewControllerHostToServiceAction performActionForHostedWindowScene:]";
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_275BB3000, v10, OS_LOG_TYPE_DEFAULT, "%s Received %@ action with object %@", &v18, 0x20u);
  }

  delegate = [sceneCopy delegate];
  v13 = [delegate conformsToProtocol:&unk_2884C1558];

  if (v13)
  {
    delegate2 = [sceneCopy delegate];
    v15 = delegate2;
    if (integerValue <= 2)
    {
      if (integerValue)
      {
        if (integerValue == 1)
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
          if (integerValue != 2)
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

    if (integerValue == 3)
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
      if (integerValue != 4)
      {
        if (integerValue == 5)
        {
          [delegate2 remoteViewControllerDidDisappear];
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

+ (id)actionToString:(int64_t)string
{
  if ((string - 1) > 4)
  {
    return @"HostToServiceActionTypeSetHostBundleIdentifier";
  }

  else
  {
    return off_27A66EC48[string - 1];
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