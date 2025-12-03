@interface UISceneHitTestAction
- (CGPoint)touchLocation;
- (UISceneHitTestAction)initWithTouchLocation:(CGPoint)location responseHandler:(id)handler;
- (void)sendResponse:(id)response;
@end

@implementation UISceneHitTestAction

- (UISceneHitTestAction)initWithTouchLocation:(CGPoint)location responseHandler:(id)handler
{
  y = location.y;
  x = location.x;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  v9 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  [v8 setObject:v9 forSetting:1];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__UISceneHitTestAction_initWithTouchLocation_responseHandler___block_invoke;
  v14[3] = &unk_1E7108B40;
  v15 = handlerCopy;
  v13.receiver = self;
  v13.super_class = UISceneHitTestAction;
  v10 = handlerCopy;
  v11 = [(UISceneHitTestAction *)&v13 initWithInfo:v8 timeout:0 forResponseOnQueue:v14 withHandler:0.0];

  return v11;
}

- (CGPoint)touchLocation
{
  info = [(UISceneHitTestAction *)self info];
  v3 = [info objectForSetting:1];
  [v3 CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISceneHitTestAction.m" lineNumber:42 description:{@"you sent back the wrong response class -> %@", responseCopy}];
  }

  v7.receiver = self;
  v7.super_class = UISceneHitTestAction;
  [(UISceneHitTestAction *)&v7 sendResponse:responseCopy];
}

@end