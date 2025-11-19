@interface SUICKPCATExecutor
- (void)responseProtoFromCATModel:(id)a3 completion:(id)a4;
@end

@implementation SUICKPCATExecutor

- (void)responseProtoFromCATModel:(id)a3 completion:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v25 = @"locale";
  v6 = MEMORY[0x277CBEAF8];
  v7 = a3;
  v8 = [v6 currentLocale];
  v9 = [v8 languageCode];
  v26[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v11 = [v7 catIdentifier];
  v12 = [v7 bundleIdentifier];
  v13 = v12;
  v14 = @"com.apple.siri.DialogEngine";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v15];

  v17 = MEMORY[0x277CCAAA0];
  v18 = [v7 params];

  v24 = 0;
  v19 = [v17 JSONObjectWithData:v18 options:0 error:&v24];
  v20 = v24;

  if (v20)
  {
    v21 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPCATExecutor responseProtoFromCATModel:v21 completion:v20];
    }

    v22 = objc_alloc_init(MEMORY[0x277D05278]);
    v5[2](v5, v22, v20);
  }

  else
  {
    [MEMORY[0x277D05260] execute:v16 catId:v11 parameters:v19 globals:v10 callback:0 options:*MEMORY[0x277D05258] completion:v5];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)responseProtoFromCATModel:(void *)a1 completion:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_264EDF000, v3, OS_LOG_TYPE_ERROR, "Error decoding CAT Params: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end