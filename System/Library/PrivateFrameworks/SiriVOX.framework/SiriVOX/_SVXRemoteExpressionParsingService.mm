@interface _SVXRemoteExpressionParsingService
- (_SVXRemoteExpressionParsingService)initWithAceHandler:(id)handler;
- (void)parseExpressions:(id)expressions targetDevice:(id)device reply:(id)reply;
@end

@implementation _SVXRemoteExpressionParsingService

- (void)parseExpressions:(id)expressions targetDevice:(id)device reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  expressionsCopy = expressions;
  deviceCopy = device;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([expressionsCopy count])
    {
      v11 = objc_alloc_init(MEMORY[0x277D47A90]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v11 setAceId:uUIDString];

      v14 = [expressionsCopy copy];
      [v11 setExpressions:v14];

      [v11 setTargetDevice:deviceCopy];
      aceHandler = self->_aceHandler;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __74___SVXRemoteExpressionParsingService_parseExpressions_targetDevice_reply___block_invoke;
      v18[3] = &unk_279C66CF0;
      v19 = replyCopy;
      [(SVXAceCommandHandling *)aceHandler handleAceCommand:v11 reply:v18];
    }

    else
    {
      v16 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v21 = "[_SVXRemoteExpressionParsingService parseExpressions:targetDevice:reply:]";
        _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s No parseable expressions - parsing failed", buf, 0xCu);
      }

      (*(replyCopy + 2))(replyCopy, 0, 0);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (_SVXRemoteExpressionParsingService)initWithAceHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = _SVXRemoteExpressionParsingService;
  v6 = [(_SVXRemoteExpressionParsingService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aceHandler, handler);
  }

  return v7;
}

@end