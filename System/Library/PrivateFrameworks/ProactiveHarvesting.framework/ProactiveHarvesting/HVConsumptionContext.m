@interface HVConsumptionContext
- (BOOL)shouldContinue;
- (HVConsumptionContext)initWithContent:(id)a3 contentProtection:(id)a4 scheduledTaskShouldContinueBlock:(id)a5;
- (id)_parseHtmlContentIfAvailable;
- (id)description;
@end

@implementation HVConsumptionContext

- (BOOL)shouldContinue
{
  scheduledTaskShouldContinueBlock = self->_scheduledTaskShouldContinueBlock;
  if (!scheduledTaskShouldContinueBlock)
  {
    return 1;
  }

  if (scheduledTaskShouldContinueBlock[2](scheduledTaskShouldContinueBlock, a2))
  {
    return 1;
  }

  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVConsumptionContext: _scheduledTaskShouldContinueBlock returned NO", v5, 2u);
  }

  return 0;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  content = self->_content;
  v5 = objc_opt_class();
  v6 = [(BMIdentifiableContentEvent *)self->_content uniqueId];
  v7 = [v3 initWithFormat:@"<HVConsumptionContext c:%@ u:%@ p:%@>", v5, v6, self->_contentProtection];

  return v7;
}

- (id)_parseHtmlContentIfAvailable
{
  content = self->_content;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_content;
    v5 = [(BMIdentifiableContentEvent *)v4 htmlContent];
    if (v5)
    {
      v6 = [[HVHtmlParser alloc] initWithData:v5 encoding:4];
    }

    else
    {
      v8 = hv_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, "HVConsumptionContext<BMMailContentEvent>: unable to fetch HTML content, will parse plaintext converted to HTML", v12, 2u);
      }

      v9 = [(BMIdentifiableContentEvent *)v4 textContent];
      v10 = v9;
      if (!v9)
      {
        v9 = &stru_28474C1D0;
      }

      v11 = [(__CFString *)v9 mutableCopy];

      [v11 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:2 range:{0, objc_msgSend(v11, "length")}];
      [v11 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v11, "length")}];
      [v11 replaceOccurrencesOfString:@"\n" withString:@"<br>" options:2 range:{0, objc_msgSend(v11, "length")}];
      v6 = [[HVHtmlParser alloc] initWithString:v11];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HVConsumptionContext)initWithContent:(id)a3 contentProtection:(id)a4 scheduledTaskShouldContinueBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = HVConsumptionContext;
  v12 = [(HVConsumptionContext *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_content, a3);
    objc_storeStrong(&v13->_contentProtection, a4);
    v14 = MEMORY[0x238381E60](v11);
    scheduledTaskShouldContinueBlock = v13->_scheduledTaskShouldContinueBlock;
    v13->_scheduledTaskShouldContinueBlock = v14;

    objc_initWeak(&location, v13);
    v16 = objc_alloc(MEMORY[0x277D425F0]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__HVConsumptionContext_initWithContent_contentProtection_scheduledTaskShouldContinueBlock___block_invoke;
    v20[3] = &unk_278968F98;
    objc_copyWeak(&v21, &location);
    v17 = [v16 initWithBlock:v20];
    cachedParser = v13->_cachedParser;
    v13->_cachedParser = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v13;
}

id __91__HVConsumptionContext_initWithContent_contentProtection_scheduledTaskShouldContinueBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __assert_rtn("[HVConsumptionContext initWithContent:contentProtection:scheduledTaskShouldContinueBlock:]_block_invoke", "HVConsumptionContext.m", 32, "strongSelf");
  }

  v2 = WeakRetained;
  v3 = [WeakRetained _parseHtmlContentIfAvailable];

  return v3;
}

@end