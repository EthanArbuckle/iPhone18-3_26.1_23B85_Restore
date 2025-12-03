@interface PRAppIntentsHandshakeAction
- (PRAppIntentsHandshakeAction)initWithHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (void)respondWithListenerEndpoint:(id)endpoint error:(id)error;
@end

@implementation PRAppIntentsHandshakeAction

- (PRAppIntentsHandshakeAction)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = MEMORY[0x1E698E5F8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__PRAppIntentsHandshakeAction_initWithHandler___block_invoke;
  v12[3] = &unk_1E7844F60;
  v13 = handlerCopy;
  v7 = handlerCopy;
  v8 = [v6 responderWithHandler:v12];
  v11.receiver = self;
  v11.super_class = PRAppIntentsHandshakeAction;
  v9 = [(PRAppIntentsHandshakeAction *)&v11 initWithInfo:v5 responder:v8];

  return v9;
}

void __47__PRAppIntentsHandshakeAction_initWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 info];
  v4 = [v3 objectForSetting:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v11 error];
  }

  v7 = v6;

  v8 = *(a1 + 32);
  v9 = [v3 objectForSetting:2];
  v10 = [v11 auditToken];
  (*(v8 + 16))(v8, v9, v10, v7);
}

- (void)respondWithListenerEndpoint:(id)endpoint error:(id)error
{
  endpointCopy = endpoint;
  errorCopy = error;
  if (!(endpointCopy | errorCopy))
  {
    [PRAppIntentsHandshakeAction respondWithListenerEndpoint:a2 error:self];
  }

  if ([(PRAppIntentsHandshakeAction *)self isValid]&& [(PRAppIntentsHandshakeAction *)self canSendResponse])
  {
    v8 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v8 setObject:endpointCopy forSetting:2];
    [v8 setObject:errorCopy forSetting:1];
    v9 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:v8 error:0];
    [(PRAppIntentsHandshakeAction *)self sendResponse:v9];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"endpoint";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"error";
  }

  else
  {
    return v3;
  }
}

- (void)respondWithListenerEndpoint:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRAppIntentsHandshakeAction.m" lineNumber:31 description:@"One of either an endpoint or an error is required"];
}

@end