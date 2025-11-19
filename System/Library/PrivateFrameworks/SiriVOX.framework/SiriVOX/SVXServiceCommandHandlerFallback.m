@interface SVXServiceCommandHandlerFallback
- (SVXServiceCommandHandlerFallback)initWithResult:(id)a3;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
@end

@implementation SVXServiceCommandHandlerFallback

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v16 = v14;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = 136315394;
    v20 = "[SVXServiceCommandHandlerFallback handleCommand:withContext:taskTracker:completion:]";
    v21 = 2112;
    v22 = v18;
    _os_log_error_impl(&dword_2695B9000, v16, OS_LOG_TYPE_ERROR, "%s Service command handler is missing for %@. Please file a radar.", &v19, 0x16u);

    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v13)
  {
LABEL_3:
    v13[2](v13, self->_result);
  }

LABEL_4:

  v15 = *MEMORY[0x277D85DE8];
}

- (SVXServiceCommandHandlerFallback)initWithResult:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVXServiceCommandHandlerFallback;
  v5 = [(SVXServiceCommandHandlerFallback *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5->_result;
    v5->_result = v6;
  }

  return v5;
}

@end