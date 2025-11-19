@interface SBUIPresentableButtonEventsAction
- (SBUIPresentableButtonEventsAction)initWithButtonEvent:(int64_t)a3 reason:(id)a4 handler:(id)a5;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 debug:(BOOL)a4;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (int64_t)presentableButtonEvent;
- (void)handleButtonEvent;
- (void)invalidate;
@end

@implementation SBUIPresentableButtonEventsAction

- (SBUIPresentableButtonEventsAction)initWithButtonEvent:(int64_t)a3 reason:(id)a4 handler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (a3 == 1)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBUIPresentableButtonEventsAction initWithButtonEvent:a2 reason:self handler:?];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBUIPresentableButtonEventsAction initWithButtonEvent:a2 reason:self handler:a3];
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_9:
  [SBUIPresentableButtonEventsAction initWithButtonEvent:a2 reason:self handler:?];
LABEL_4:
  v11 = [v9 copy];
  reason = self->_reason;
  self->_reason = v11;

  v13 = SBLogBanners();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = self;
    _os_log_impl(&dword_1A9A79000, v13, OS_LOG_TYPE_DEFAULT, "Acquired button events assertion: %{public}@", buf, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x1E698E700]);
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v14 setObject:v15 forSetting:1];

  v16 = MEMORY[0x1E698E5F8];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__SBUIPresentableButtonEventsAction_initWithButtonEvent_reason_handler___block_invoke;
  v22[3] = &unk_1E789E448;
  v23 = v10;
  v17 = v10;
  v18 = [v16 responderWithHandler:v22];
  v21.receiver = self;
  v21.super_class = SBUIPresentableButtonEventsAction;
  v19 = [(SBUIPresentableButtonEventsAction *)&v21 initWithInfo:v14 responder:v18];

  return v19;
}

void __72__SBUIPresentableButtonEventsAction_initWithButtonEvent_reason_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 info];
  (*(v2 + 16))(v2, [v3 BOOLForSetting:2]);
}

- (void)handleButtonEvent
{
  if ([(SBUIPresentableButtonEventsAction *)self isValid]&& [(SBUIPresentableButtonEventsAction *)self canSendResponse])
  {
    v4 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v4 setFlag:1 forSetting:2];
    v3 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:v4 error:0];
    [(SBUIPresentableButtonEventsAction *)self sendResponse:v3];
  }
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 debug:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = SBUIPresentableButtonEventsAction;
  v5 = [(SBUIPresentableButtonEventsAction *)&v10 _descriptionBuilderWithMultilinePrefix:a3 debug:a4];
  v6 = [(SBUIPresentableButtonEventsAction *)self presentableButtonEvent];
  v7 = @"[INVALID]";
  if (v6 == 1)
  {
    v7 = @"homeButtonPress";
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"noEvent";
  }

  [v5 appendString:v8 withName:@"presentableButtonEvent"];
  [v5 appendString:self->_reason withName:@"reason"];

  return v5;
}

- (int64_t)presentableButtonEvent
{
  v2 = [(SBUIPresentableButtonEventsAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(SBUIPresentableButtonEventsAction *)self isValid];
  v5.receiver = self;
  v5.super_class = SBUIPresentableButtonEventsAction;
  [(SBUIPresentableButtonEventsAction *)&v5 invalidate];
  if (v3)
  {
    v4 = SBLogBanners();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = self;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Invalidated button events assertion: %{public}@", buf, 0xCu);
    }
  }
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"success";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"buttonEvent";
  }

  else
  {
    return v3;
  }
}

- (void)initWithButtonEvent:(uint64_t)a1 reason:(uint64_t)a2 handler:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableButtonEventsAction.m" lineNumber:48 description:{@"Invalid button evemt: %ld'", a3}];
}

- (void)initWithButtonEvent:(uint64_t)a1 reason:(uint64_t)a2 handler:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableButtonEventsAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)initWithButtonEvent:(uint64_t)a1 reason:(uint64_t)a2 handler:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableButtonEventsAction.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end