@interface VUIActionUpdateUpNext
- (VUIActionUpdateUpNext)initWithContextData:(id)data;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionUpdateUpNext

- (VUIActionUpdateUpNext)initWithContextData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = VUIActionUpdateUpNext;
  v5 = [(VUIActionUpdateUpNext *)&v11 init];
  if (v5)
  {
    v6 = [dataCopy vui_stringForKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v6;

    v8 = [dataCopy vui_stringForKey:@"state"];
    state = v5->_state;
    v5->_state = v8;

    v5->_confirmationShouldWaitCompletion = [dataCopy vui_BOOLForKey:@"confirmationShouldWaitCompletion" defaultValue:0];
  }

  return v5;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(NSString *)self->_state isEqualToString:@"added"];
  if (self->_itemID && self->_state)
  {
    v7 = +[VUIUpNextRequestManager sharedInstance];
    [v7 sendRequestForCanonicalID:self->_itemID action:v6 confirmationShouldWaitCompletion:self->_confirmationShouldWaitCompletion];
  }

  else
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(VUIActionUpdateUpNext *)&self->_itemID performWithTargetResponder:v7 completionHandler:?];
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  v8 = +[VUIAppReviewManager sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__VUIActionUpdateUpNext_performWithTargetResponder_completionHandler___block_invoke;
  v9[3] = &__block_descriptor_40_e8_v12__0B8l;
  v9[4] = v6;
  [v8 isFeatureEnabled:v9];
}

void __70__VUIActionUpdateUpNext_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 32))
  {
    v3 = +[VUIAppReviewManager sharedInstance];
    [v3 processAddToUpNext];
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
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "VUIActionUpdateUpNext failed for itemID [%@] state [%@]", &v5, 0x16u);
}

@end