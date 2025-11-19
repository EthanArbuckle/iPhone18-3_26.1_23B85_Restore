@interface VUIActionRemoveFromPlayHistory
- (VUIActionRemoveFromPlayHistory)initWithContextData:(id)a3 isContinueWatching:(BOOL)a4;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionRemoveFromPlayHistory

- (VUIActionRemoveFromPlayHistory)initWithContextData:(id)a3 isContinueWatching:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = VUIActionRemoveFromPlayHistory;
  v7 = [(VUIActionRemoveFromPlayHistory *)&v11 init];
  if (v7)
  {
    v8 = [v6 vui_stringForKey:@"deleteId"];
    deleteID = v7->_deleteID;
    v7->_deleteID = v8;

    v7->_isContinueWatching = a4;
  }

  return v7;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
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

  if (v5)
  {
    v5[2](v5, 1);
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