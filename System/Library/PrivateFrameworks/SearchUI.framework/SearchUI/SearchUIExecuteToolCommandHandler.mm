@interface SearchUIExecuteToolCommandHandler
- (id)command;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIExecuteToolCommandHandler

- (id)command
{
  v4.receiver = self;
  v4.super_class = SearchUIExecuteToolCommandHandler;
  command = [(SearchUICommandHandler *)&v4 command];

  return command;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v10 = *MEMORY[0x1E69E9840];
  toolInvocationData = [command toolInvocationData];
  if (toolInvocationData)
  {
    v6 = SearchUITapLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [toolInvocationData length];
      _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "Executing tool command with data length: %lu", &v8, 0xCu);
    }

    [SearchUIToolKitUtilities executeToolInvocationFromData:toolInvocationData completionHandler:&__block_literal_global_20];
  }

  else
  {
    v7 = SearchUIGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SearchUIExecuteToolCommandHandler performCommand:v7 triggerEvent:? environment:?];
    }
  }
}

void __77__SearchUIExecuteToolCommandHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = SearchUITapLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Tool execution completed successfully", v6, 2u);
    }
  }

  else
  {
    v5 = SearchUIGeneralLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __77__SearchUIExecuteToolCommandHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(v4, v5);
    }
  }
}

void __77__SearchUIExecuteToolCommandHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIExecuteToolCommandHandler: tool execution failed: %@", &v2, 0xCu);
}

@end