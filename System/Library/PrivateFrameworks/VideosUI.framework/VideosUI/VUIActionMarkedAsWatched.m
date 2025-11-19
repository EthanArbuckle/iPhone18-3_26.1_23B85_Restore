@interface VUIActionMarkedAsWatched
- (VUIActionMarkedAsWatched)initWithContextData:(id)a3;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionMarkedAsWatched

- (VUIActionMarkedAsWatched)initWithContextData:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VUIActionMarkedAsWatched;
  v5 = [(VUIActionMarkedAsWatched *)&v13 init];
  if (v5)
  {
    v6 = [v4 vui_stringForKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v6;

    v8 = [v4 vui_stringForKey:@"type"];
    itemType = v5->_itemType;
    v5->_itemType = v8;

    v10 = [v4 vui_stringForKey:@"adamID"];
    adamID = v5->_adamID;
    v5->_adamID = v10;
  }

  return v5;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[VUIMarkAsWatchedRequestManager sharedInstance];
  [v6 sendRequestForItemID:self->_itemID itemType:self->_itemType channelID:0 adamID:self->_adamID];

  if (!self->_itemID || !self->_itemType)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(VUIActionMarkedAsWatched *)&self->_itemID performWithTargetResponder:v7 completionHandler:?];
    }
  }

  if (v5)
  {
    v5[2](v5, 1);
  }
}

- (void)performWithTargetResponder:(os_log_t)log completionHandler:.cold.1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "VUIActionMarkedAsWatched failed for itemID [%@] type [%@]", &v5, 0x16u);
}

@end