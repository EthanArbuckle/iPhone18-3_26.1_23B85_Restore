@interface DADiagnosticsRemoteViewControllerServiceToHostAction
+ (id)actionToString:(int64_t)string;
+ (id)actionWithType:(int64_t)type object:(id)object;
- (void)performActionForSceneController:(id)controller;
@end

@implementation DADiagnosticsRemoteViewControllerServiceToHostAction

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
    v15 = "+[DADiagnosticsRemoteViewControllerServiceToHostAction actionWithType:object:]";
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

- (void)performActionForSceneController:(id)controller
{
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  info = [(DADiagnosticsRemoteViewControllerServiceToHostAction *)self info];
  v6 = [info objectForSetting:0];
  integerValue = [v6 integerValue];

  info2 = [(DADiagnosticsRemoteViewControllerServiceToHostAction *)self info];
  v9 = [info2 objectForSetting:1];

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [DADiagnosticsRemoteViewControllerServiceToHostAction actionToString:integerValue];
    v30 = 136315394;
    v31 = "[DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:]";
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_275BB3000, v10, OS_LOG_TYPE_DEFAULT, "%s Received %@ action", &v30, 0x16u);
  }

  delegate = [controllerCopy delegate];
  v13 = [delegate conformsToProtocol:&unk_2884BD9F8];

  if (v13)
  {
    delegate2 = [controllerCopy delegate];
    v15 = delegate2;
    if (integerValue > 1)
    {
      if (integerValue == 2)
      {
        [delegate2 viewServiceDidSuspend];
        goto LABEL_31;
      }

      if (integerValue == 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 viewServiceDidFinishWithReason:{objc_msgSend(v9, "integerValue")}];
          goto LABEL_31;
        }

        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_25:
          [DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:];
        }

LABEL_30:
      }
    }

    else
    {
      if (!integerValue)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v9;
          v17 = [v16 objectForKeyedSubscript:@"brightness"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v19 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:];
            }
          }

          v20 = [v16 objectForKeyedSubscript:@"animate"];
          objc_opt_class();
          v21 = objc_opt_isKindOfClass();

          if ((v21 & 1) == 0)
          {
            v22 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:];
            }
          }

          v23 = [v16 objectForKeyedSubscript:@"brightness"];
          [v23 floatValue];
          v25 = v24;

          v26 = [v16 objectForKeyedSubscript:@"animate"];
          bOOLValue = [v26 BOOLValue];

          LODWORD(v28) = v25;
          [v15 viewServiceDidSetScreenToBrightness:bOOLValue animate:v28];
        }

        else
        {
          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [DADiagnosticsRemoteViewControllerServiceToHostAction performActionForSceneController:];
          }
        }

        goto LABEL_30;
      }

      if (integerValue == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 viewServiceDidEnableVolumeHUD:{objc_msgSend(v9, "BOOLValue")}];
          goto LABEL_31;
        }

        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }
    }

LABEL_31:
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)actionToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"ServiceToHostActionTypeDidSetScreenToBrightness";
  }

  else
  {
    return off_27A66EBB8[string - 1];
  }
}

- (void)performActionForSceneController:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v4, v5, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performActionForSceneController:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v4, v5, "%s Action object type is incorrect, received: %@, expected: %@. Ignoring action", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performActionForSceneController:.cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v4, v5, "%s Action object brightness type is incorrect, received: %@, expected: %@. Ignoring action", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performActionForSceneController:.cold.5()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_275BB3000, v4, v5, "%s Action object animate type is incorrect, received: %@, expected: %@. Ignoring action", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end