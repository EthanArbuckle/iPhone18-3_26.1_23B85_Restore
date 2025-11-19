@interface SBUIRemoteAlertButtonAction
- (SBUIRemoteAlertButtonAction)initWithEvents:(unint64_t)a3;
- (SBUIRemoteAlertButtonAction)initWithEvents:(unint64_t)a3 withHandler:(id)a4;
- (unint64_t)events;
- (void)sendResponseWithUnHandledEvents:(unint64_t)a3;
@end

@implementation SBUIRemoteAlertButtonAction

- (SBUIRemoteAlertButtonAction)initWithEvents:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBUIRemoteAlertButtonAction;
  return [(SBUIButtonAction *)&v4 initWithButtonEvents:a3];
}

- (SBUIRemoteAlertButtonAction)initWithEvents:(unint64_t)a3 withHandler:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__SBUIRemoteAlertButtonAction_initWithEvents_withHandler___block_invoke;
  v11[3] = &unk_1E789E700;
  v12 = v6;
  v10.receiver = self;
  v10.super_class = SBUIRemoteAlertButtonAction;
  v7 = v6;
  v8 = [(SBUIButtonAction *)&v10 initWithButtonEvents:a3 withHandler:v11];

  return v8;
}

- (unint64_t)events
{
  v3.receiver = self;
  v3.super_class = SBUIRemoteAlertButtonAction;
  return [(SBUIButtonAction *)&v3 buttonEvents];
}

- (void)sendResponseWithUnHandledEvents:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = SBUIRemoteAlertButtonAction;
  [(SBUIButtonAction *)&v3 sendResponseWithUnHandledButtonEvents:a3];
}

@end