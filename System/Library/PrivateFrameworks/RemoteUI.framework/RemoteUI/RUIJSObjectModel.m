@interface RUIJSObjectModel
@end

@implementation RUIJSObjectModel

uint64_t __RUIJSObjectModel_setFieldValue_block_invoke()
{
  v0 = dispatch_semaphore_create(10);
  v1 = RUIJSObjectModel_setFieldValue_reentrancy_sema;
  RUIJSObjectModel_setFieldValue_reentrancy_sema = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __RUIJSObjectModel_loadURL_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v16[0] = v7;
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x277CD4658] valueWithUndefinedInContext:*(a1 + 40)];
  }

  v16[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v10 = [v6 callWithArguments:v9];

  if (!v5)
  {
  }

  v11 = [*(a1 + 40) exception];

  if (v11 && _isInternalInstall())
  {
    v12 = _RUILoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) exception];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "xmlui.loadURL: %@", &v14, 0xCu);
    }
  }
}

void __RUIJSObjectModel_loadURL_block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __RUIJSObjectModel_loadURL_block_invoke_2;
  v8[3] = &unk_2782E8570;
  v11 = *(a1 + 64);
  v9 = v3;
  v10 = *(a1 + 56);
  v7 = v3;
  [v4 openLink:v5 HTTPMethod:v6 completion:v8];
}

void __RUIJSObjectModel_loadURL_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  v7 = *(a1 + 32);
  if (a2)
  {
    v8 = [*(a1 + 32) callWithArguments:0];
  }

  else
  {
    v9 = MEMORY[0x277CD4658];
    v10 = [v5 localizedDescription];
    v11 = [v9 valueWithNewErrorFromMessage:v10 inContext:*(a1 + 40)];
    v14[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v13 = [v7 callWithArguments:v12];
  }
}

void __RUIJSObjectModel_showWebView_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD4658] valueWithObject:a2 inContext:*(a1 + 32)];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:v3];
  }

  v6 = *(a1 + 40);
  v7 = [v5 copy];
  v8 = [v6 callWithArguments:v7];

  v9 = [*(a1 + 32) exception];

  if (v9 && _isInternalInstall())
  {
    v10 = _RUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) exception];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "xmlui.showWebView: %@", &v12, 0xCu);
    }
  }
}

@end