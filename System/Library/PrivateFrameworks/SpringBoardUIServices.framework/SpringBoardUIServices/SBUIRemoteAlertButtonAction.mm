@interface SBUIRemoteAlertButtonAction
- (SBUIRemoteAlertButtonAction)initWithEvents:(unint64_t)events;
- (SBUIRemoteAlertButtonAction)initWithEvents:(unint64_t)events withHandler:(id)handler;
- (unint64_t)events;
- (void)sendResponseWithUnHandledEvents:(unint64_t)events;
@end

@implementation SBUIRemoteAlertButtonAction

- (SBUIRemoteAlertButtonAction)initWithEvents:(unint64_t)events
{
  v4.receiver = self;
  v4.super_class = SBUIRemoteAlertButtonAction;
  return [(SBUIButtonAction *)&v4 initWithButtonEvents:events];
}

- (SBUIRemoteAlertButtonAction)initWithEvents:(unint64_t)events withHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__SBUIRemoteAlertButtonAction_initWithEvents_withHandler___block_invoke;
  v11[3] = &unk_1E789E700;
  v12 = handlerCopy;
  v10.receiver = self;
  v10.super_class = SBUIRemoteAlertButtonAction;
  v7 = handlerCopy;
  v8 = [(SBUIButtonAction *)&v10 initWithButtonEvents:events withHandler:v11];

  return v8;
}

- (unint64_t)events
{
  v3.receiver = self;
  v3.super_class = SBUIRemoteAlertButtonAction;
  return [(SBUIButtonAction *)&v3 buttonEvents];
}

- (void)sendResponseWithUnHandledEvents:(unint64_t)events
{
  v3.receiver = self;
  v3.super_class = SBUIRemoteAlertButtonAction;
  [(SBUIButtonAction *)&v3 sendResponseWithUnHandledButtonEvents:events];
}

@end