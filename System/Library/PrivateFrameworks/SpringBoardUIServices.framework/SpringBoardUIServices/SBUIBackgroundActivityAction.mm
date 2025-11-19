@interface SBUIBackgroundActivityAction
- (NSString)backgroundActivityIdentifier;
- (SBUIBackgroundActivityAction)initWithBackgroundActivityIdentifier:(id)a3 handler:(id)a4;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (void)setProceed:(BOOL)a3;
@end

@implementation SBUIBackgroundActivityAction

- (SBUIBackgroundActivityAction)initWithBackgroundActivityIdentifier:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    [SBUIBackgroundActivityAction initWithBackgroundActivityIdentifier:a2 handler:self];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [SBUIBackgroundActivityAction initWithBackgroundActivityIdentifier:a2 handler:self];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:v7 forSetting:2];
  v11 = MEMORY[0x1E698E5F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__SBUIBackgroundActivityAction_initWithBackgroundActivityIdentifier_handler___block_invoke;
  v17[3] = &unk_1E789E448;
  v18 = v9;
  v12 = v9;
  v13 = [v11 responderWithHandler:v17];
  v16.receiver = self;
  v16.super_class = SBUIBackgroundActivityAction;
  v14 = [(SBUIBackgroundActivityAction *)&v16 initWithInfo:v10 responder:v13];

  return v14;
}

void __77__SBUIBackgroundActivityAction_initWithBackgroundActivityIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];
  v4 = *(a1 + 32);
  if (v3)
  {
    (*(v4 + 16))(v4, 1);
  }

  else
  {
    v5 = [v6 info];
    (*(v4 + 16))(v4, [v5 BOOLForSetting:1]);
  }
}

- (void)setProceed:(BOOL)a3
{
  v3 = a3;
  if ([(SBUIBackgroundActivityAction *)self isValid]&& [(SBUIBackgroundActivityAction *)self canSendResponse])
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v6 setFlag:v3 forSetting:1];
    v5 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:v6 error:0];
    [(SBUIBackgroundActivityAction *)self sendResponse:v5];
  }
}

- (NSString)backgroundActivityIdentifier
{
  v2 = [(SBUIBackgroundActivityAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"backgroundActivityIdentifier";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"proceed";
  }

  else
  {
    return v3;
  }
}

- (void)initWithBackgroundActivityIdentifier:(uint64_t)a1 handler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIBackgroundActivityAction.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)initWithBackgroundActivityIdentifier:(uint64_t)a1 handler:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIBackgroundActivityAction.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end