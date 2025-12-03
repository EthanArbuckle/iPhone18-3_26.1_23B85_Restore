@interface VUIActionRemoveFromPlayHistory
- (VUIActionRemoveFromPlayHistory)initWithContextData:(id)data isContinueWatching:(BOOL)watching;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionRemoveFromPlayHistory

- (VUIActionRemoveFromPlayHistory)initWithContextData:(id)data isContinueWatching:(BOOL)watching
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = VUIActionRemoveFromPlayHistory;
  v7 = [(VUIActionRemoveFromPlayHistory *)&v11 init];
  if (v7)
  {
    v8 = [dataCopy vui_stringForKey:@"deleteId"];
    deleteID = v7->_deleteID;
    v7->_deleteID = v8;

    v7->_isContinueWatching = watching;
  }

  return v7;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(NSString *)self->_deleteID length])
  {
    v6 = +[VUIRemoveFromPlayHistoryRequestManager sharedInstance];
    [v6 sendRequestForDeleteID:self->_deleteID isContinueWatching:self->_isContinueWatching];
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [VUIActionRemoveFromPlayHistory performWithTargetResponder:v6 completionHandler:?];
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)performWithTargetResponder:(uint64_t *)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIActionRemoveFromPlayHistory failed for itemID [%@]", &v3, 0xCu);
}

@end