@interface UISFetchContentInBackgroundAction
- (UISFetchContentInBackgroundAction)initWithHandler:(id)a3;
- (void)sendResponse:(id)a3;
@end

@implementation UISFetchContentInBackgroundAction

- (UISFetchContentInBackgroundAction)initWithHandler:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E698E5F8] responderWithHandler:?];
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = UISFetchContentInBackgroundAction;
  v5 = [(UISFetchContentInBackgroundAction *)&v7 initWithInfo:0 responder:v4];

  return v5;
}

- (void)sendResponse:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UISFetchContentInBackgroundAction.m" lineNumber:52 description:{@"You sent back the wrong response class -> %@", v5}];
  }

  v7.receiver = self;
  v7.super_class = UISFetchContentInBackgroundAction;
  [(UISFetchContentInBackgroundAction *)&v7 sendResponse:v5];
}

@end