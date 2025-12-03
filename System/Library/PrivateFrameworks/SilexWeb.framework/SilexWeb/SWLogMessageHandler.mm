@interface SWLogMessageHandler
- (SWLogMessageHandler)initWithLogger:(id)logger;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
@end

@implementation SWLogMessageHandler

- (SWLogMessageHandler)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v9.receiver = self;
  v9.super_class = SWLogMessageHandler;
  v6 = [(SWLogMessageHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, logger);
  }

  return v7;
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  body = [message body];
  v10 = [body objectForKey:@"message"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &stru_1F5242A90;
    if (v10)
    {
      v6 = v10;
    }

    v7 = v6;
    logger = [(SWLogMessageHandler *)self logger];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Logging message for WebContent embed: %@", v7];

    [logger log:v9];
  }
}

@end