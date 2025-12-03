@interface UISFetchContentInBackgroundAction
- (UISFetchContentInBackgroundAction)initWithHandler:(id)handler;
- (void)sendResponse:(id)response;
@end

@implementation UISFetchContentInBackgroundAction

- (UISFetchContentInBackgroundAction)initWithHandler:(id)handler
{
  if (handler)
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

- (void)sendResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISFetchContentInBackgroundAction.m" lineNumber:52 description:{@"You sent back the wrong response class -> %@", responseCopy}];
  }

  v7.receiver = self;
  v7.super_class = UISFetchContentInBackgroundAction;
  [(UISFetchContentInBackgroundAction *)&v7 sendResponse:responseCopy];
}

@end