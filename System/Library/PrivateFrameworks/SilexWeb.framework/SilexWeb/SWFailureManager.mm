@interface SWFailureManager
- (SWFailureManager)initWithMessageHandlerManager:(id)a3 logger:(id)a4;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
- (void)reportFailure:(id)a3;
@end

@implementation SWFailureManager

- (SWFailureManager)initWithMessageHandlerManager:(id)a3 logger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SWFailureManager;
  v8 = [(SWFailureManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_logger, a4);
    v10 = [SWWeakMessageHandler handlerWithMessageHandler:v9];
    [v6 addMessageHandler:v10 name:@"failure"];
  }

  return v9;
}

- (void)reportFailure:(id)a3
{
  v6 = a3;
  v4 = [(SWFailureManager *)self block];

  if (v4)
  {
    v5 = [(SWFailureManager *)self block];
    (v5)[2](v5, v6);
  }
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v5 = a3;
  v6 = [v5 body];
  v16 = [v6 objectForKey:@"contentDomain"];

  v7 = [v5 body];
  v8 = [v7 objectForKey:@"embedName"];

  v9 = [v5 body];

  v10 = [v9 objectForKey:@"errorType"];

  v11 = [(SWFailureManager *)self logger];
  if (v16)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v10 == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dropping failure message due to missing information: contentDomain=%@, embedName=%@, errorType=%@", v16, v8, v10];
    [(SWFailureMessage *)v11 logError:v14];
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recording web embed failure: contentDomain=%@, embedName=%@, errorType=%@", v16, v8, v10];
    [(SWFailureMessage *)v11 log:v15];

    v11 = [[SWFailureMessage alloc] initWithContentDomain:v16 embedName:v8 errorType:v10];
    [(SWFailureManager *)self reportFailure:v11];
  }
}

@end