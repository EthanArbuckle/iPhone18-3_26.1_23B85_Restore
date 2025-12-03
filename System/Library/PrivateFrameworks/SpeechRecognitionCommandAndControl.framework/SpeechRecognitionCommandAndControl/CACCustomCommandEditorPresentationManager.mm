@interface CACCustomCommandEditorPresentationManager
- (BOOL)showCustomCommandEditorWithGesture:(id)gesture;
- (BOOL)showCustomCommandEditorWithRecordedUserActionFlow:(id)flow;
- (BOOL)showCustomCommandEditorWithShortcutsWorkflow:(id)workflow;
- (void)_showCustomCommandEditorWithContextKey:(id)key contextValue:(id)value;
- (void)handleAXNotificationData:(void *)data;
@end

@implementation CACCustomCommandEditorPresentationManager

- (BOOL)showCustomCommandEditorWithGesture:(id)gesture
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:gesture requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (v4)
  {
    [(CACCustomCommandEditorPresentationManager *)self _showCustomCommandEditorWithContextKey:*MEMORY[0x277CE7BB0] contextValue:v4];
  }

  else
  {
    v6 = CACLogPreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CACCustomCommandEditorPresentationManager showCustomCommandEditorWithGesture:];
    }
  }

  return v4 != 0;
}

- (BOOL)showCustomCommandEditorWithRecordedUserActionFlow:(id)flow
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:flow requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (v4)
  {
    [(CACCustomCommandEditorPresentationManager *)self _showCustomCommandEditorWithContextKey:*MEMORY[0x277CE7BC0] contextValue:v4];
  }

  else
  {
    v6 = CACLogPreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CACCustomCommandEditorPresentationManager showCustomCommandEditorWithGesture:];
    }
  }

  return v4 != 0;
}

- (BOOL)showCustomCommandEditorWithShortcutsWorkflow:(id)workflow
{
  workflowCopy = workflow;
  mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
  v6 = [mEMORY[0x277CE7E38] shortcutForIdentifier:workflowCopy];

  if (v6)
  {
    [(CACCustomCommandEditorPresentationManager *)self _showCustomCommandEditorWithContextKey:@"ShortcutWorkflow" contextValue:workflowCopy];
  }

  else
  {
    v7 = CACLogShortcuts();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CACCustomCommandEditorPresentationManager showCustomCommandEditorWithShortcutsWorkflow:];
    }
  }

  return v6 != 0;
}

- (void)_showCustomCommandEditorWithContextKey:(id)key contextValue:(id)value
{
  v5 = MEMORY[0x277CBEB38];
  valueCopy = value;
  keyCopy = key;
  dictionary = [v5 dictionary];
  [dictionary setObject:valueCopy forKeyedSubscript:keyCopy];

  server = [MEMORY[0x277CE7E40] server];
  installedApps = [server installedApps];
  [dictionary setObject:installedApps forKeyedSubscript:*MEMORY[0x277CE7BA8]];

  server2 = [MEMORY[0x277CE7E40] server];
  [server2 showRemoteView:3 withData:dictionary];
}

- (void)handleAXNotificationData:(void *)data
{
  dataCopy = data;
  v4 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CE6D10]];
  v5 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CE6D08]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = +[CACPreferences sharedPreferences];
    [v8 setProperties:v6 forCommandIdentifier:v4];
  }

  else
  {
    v8 = CACLogPreferences();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CACCustomCommandEditorPresentationManager handleAXNotificationData:];
    }
  }
}

- (void)showCustomCommandEditorWithGesture:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end