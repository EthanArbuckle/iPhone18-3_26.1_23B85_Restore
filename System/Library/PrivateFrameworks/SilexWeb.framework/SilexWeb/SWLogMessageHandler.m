@interface SWLogMessageHandler
- (SWLogMessageHandler)initWithLogger:(id)a3;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
@end

@implementation SWLogMessageHandler

- (SWLogMessageHandler)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SWLogMessageHandler;
  v6 = [(SWLogMessageHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v5 = [a3 body];
  v10 = [v5 objectForKey:@"message"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &stru_1F5242A90;
    if (v10)
    {
      v6 = v10;
    }

    v7 = v6;
    v8 = [(SWLogMessageHandler *)self logger];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Logging message for WebContent embed: %@", v7];

    [v8 log:v9];
  }
}

@end