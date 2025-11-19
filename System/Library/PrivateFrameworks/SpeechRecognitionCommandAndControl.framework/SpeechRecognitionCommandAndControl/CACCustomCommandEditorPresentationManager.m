@interface CACCustomCommandEditorPresentationManager
- (BOOL)showCustomCommandEditorWithGesture:(id)a3;
- (BOOL)showCustomCommandEditorWithRecordedUserActionFlow:(id)a3;
- (BOOL)showCustomCommandEditorWithShortcutsWorkflow:(id)a3;
- (void)_showCustomCommandEditorWithContextKey:(id)a3 contextValue:(id)a4;
- (void)handleAXNotificationData:(void *)a3;
@end

@implementation CACCustomCommandEditorPresentationManager

- (BOOL)showCustomCommandEditorWithGesture:(id)a3
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
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

- (BOOL)showCustomCommandEditorWithRecordedUserActionFlow:(id)a3
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
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

- (BOOL)showCustomCommandEditorWithShortcutsWorkflow:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE7E38] sharedManager];
  v6 = [v5 shortcutForIdentifier:v4];

  if (v6)
  {
    [(CACCustomCommandEditorPresentationManager *)self _showCustomCommandEditorWithContextKey:@"ShortcutWorkflow" contextValue:v4];
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

- (void)_showCustomCommandEditorWithContextKey:(id)a3 contextValue:(id)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = a3;
  v11 = [v5 dictionary];
  [v11 setObject:v6 forKeyedSubscript:v7];

  v8 = [MEMORY[0x277CE7E40] server];
  v9 = [v8 installedApps];
  [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x277CE7BA8]];

  v10 = [MEMORY[0x277CE7E40] server];
  [v10 showRemoteView:3 withData:v11];
}

- (void)handleAXNotificationData:(void *)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE6D10]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE6D08]];
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