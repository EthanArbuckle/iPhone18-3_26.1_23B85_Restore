@interface SWPreferredSizeManager
- (SWPreferredSizeManager)initWithMessageHandlerManager:(id)manager logger:(id)logger;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
@end

@implementation SWPreferredSizeManager

- (SWPreferredSizeManager)initWithMessageHandlerManager:(id)manager logger:(id)logger
{
  managerCopy = manager;
  loggerCopy = logger;
  if (managerCopy)
  {
    v13.receiver = self;
    v13.super_class = SWPreferredSizeManager;
    v8 = [(SWPreferredSizeManager *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_logger, logger);
      v10 = [SWWeakMessageHandler handlerWithMessageHandler:v9];
      [managerCopy addMessageHandler:v10 name:@"preferredSize"];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  messageCopy = message;
  body = [messageCopy body];
  v19 = [body objectForKey:@"height"];

  body2 = [messageCopy body];
  v8 = [body2 objectForKey:@"width"];

  logger = [(SWPreferredSizeManager *)self logger];
  v10 = MEMORY[0x1E696AEC0];
  name = [messageCopy name];
  v12 = ;
  [logger log:v12];

  objc_opt_class();
  v13 = 0.0;
  v14 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v8 floatValue];
    v14 = roundf(v15);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 floatValue];
    v13 = roundf(v16);
  }

  preferredSizeBlock = [(SWPreferredSizeManager *)self preferredSizeBlock];

  if (preferredSizeBlock)
  {
    preferredSizeBlock2 = [(SWPreferredSizeManager *)self preferredSizeBlock];
    preferredSizeBlock2[2](v14, v13);
  }
}

@end