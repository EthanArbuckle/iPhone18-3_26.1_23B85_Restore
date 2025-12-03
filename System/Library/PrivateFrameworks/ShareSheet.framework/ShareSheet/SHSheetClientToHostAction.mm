@interface SHSheetClientToHostAction
- (void)performActionForSceneController:(id)controller;
@end

@implementation SHSheetClientToHostAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  delegate = [controllerCopy delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    delegate2 = [controllerCopy delegate];
    [delegate2 receivedAction:self];
  }

  else
  {
    delegate2 = share_sheet_log();
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetClientToHostAction *)self performActionForSceneController:controllerCopy, delegate2];
    }
  }
}

- (void)performActionForSceneController:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_18B359000, log, OS_LOG_TYPE_ERROR, "received action %@ on hosting controller %@ but found no scene to handle it", &v3, 0x16u);
}

@end