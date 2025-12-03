@interface SWFailureManager
- (SWFailureManager)initWithMessageHandlerManager:(id)manager logger:(id)logger;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
- (void)reportFailure:(id)failure;
@end

@implementation SWFailureManager

- (SWFailureManager)initWithMessageHandlerManager:(id)manager logger:(id)logger
{
  managerCopy = manager;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = SWFailureManager;
  v8 = [(SWFailureManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_logger, logger);
    v10 = [SWWeakMessageHandler handlerWithMessageHandler:v9];
    [managerCopy addMessageHandler:v10 name:@"failure"];
  }

  return v9;
}

- (void)reportFailure:(id)failure
{
  failureCopy = failure;
  block = [(SWFailureManager *)self block];

  if (block)
  {
    block2 = [(SWFailureManager *)self block];
    (block2)[2](block2, failureCopy);
  }
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  messageCopy = message;
  body = [messageCopy body];
  v16 = [body objectForKey:@"contentDomain"];

  body2 = [messageCopy body];
  v8 = [body2 objectForKey:@"embedName"];

  body3 = [messageCopy body];

  v10 = [body3 objectForKey:@"errorType"];

  logger = [(SWFailureManager *)self logger];
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
    [(SWFailureMessage *)logger logError:v14];
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recording web embed failure: contentDomain=%@, embedName=%@, errorType=%@", v16, v8, v10];
    [(SWFailureMessage *)logger log:v15];

    logger = [[SWFailureMessage alloc] initWithContentDomain:v16 embedName:v8 errorType:v10];
    [(SWFailureManager *)self reportFailure:logger];
  }
}

@end