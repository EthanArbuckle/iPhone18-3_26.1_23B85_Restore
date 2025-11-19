@interface _SVXRemoteExpressionParsingService
- (_SVXRemoteExpressionParsingService)initWithAceHandler:(id)a3;
- (void)parseExpressions:(id)a3 targetDevice:(id)a4 reply:(id)a5;
@end

@implementation _SVXRemoteExpressionParsingService

- (void)parseExpressions:(id)a3 targetDevice:(id)a4 reply:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([v8 count])
    {
      v11 = objc_alloc_init(MEMORY[0x277D47A90]);
      v12 = [MEMORY[0x277CCAD78] UUID];
      v13 = [v12 UUIDString];
      [v11 setAceId:v13];

      v14 = [v8 copy];
      [v11 setExpressions:v14];

      [v11 setTargetDevice:v9];
      aceHandler = self->_aceHandler;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __74___SVXRemoteExpressionParsingService_parseExpressions_targetDevice_reply___block_invoke;
      v18[3] = &unk_279C66CF0;
      v19 = v10;
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

      (*(v10 + 2))(v10, 0, 0);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (_SVXRemoteExpressionParsingService)initWithAceHandler:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXRemoteExpressionParsingService;
  v6 = [(_SVXRemoteExpressionParsingService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aceHandler, a3);
  }

  return v7;
}

@end