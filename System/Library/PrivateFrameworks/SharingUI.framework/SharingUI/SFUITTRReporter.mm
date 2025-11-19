@interface SFUITTRReporter
+ (id)reporterForPeopleSuggestions;
- (SFUITTRReporter)initWithReport:(id)a3;
- (id)_createSchemeURL;
- (void)report;
@end

@implementation SFUITTRReporter

+ (id)reporterForPeopleSuggestions
{
  v3 = +[SFUITTRReport peopleSuggestionReport];
  v4 = [[a1 alloc] initWithReport:v3];

  return v4;
}

- (SFUITTRReporter)initWithReport:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFUITTRReporter;
  v6 = [(SFUITTRReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalReport, a3);
  }

  return v7;
}

- (void)report
{
  v2 = [(SFUITTRReporter *)self _createSchemeURL];
  if (v2)
  {
    v3 = [MEMORY[0x1E6963608] defaultWorkspace];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __25__SFUITTRReporter_report__block_invoke;
    v5[3] = &unk_1E7EE4550;
    v6 = v2;
    [v3 openURL:v6 configuration:0 completionHandler:v5];

    v4 = v6;
  }

  else
  {
    v4 = sharing_ui_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SFUITTRReporter *)v4 report];
    }
  }
}

void __25__SFUITTRReporter_report__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sharing_ui_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __25__SFUITTRReporter_report__block_invoke_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1B9E4B000, v6, OS_LOG_TYPE_DEFAULT, "TTR: succeeded opening shemeURL:%@", &v8, 0xCu);
  }
}

- (id)_createSchemeURL
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SFUITTRReporter *)self internalReport];
  v5 = [v4 title];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"Title" value:v5];
    [v3 addObject:v6];
  }

  v7 = [(SFUITTRReporter *)self internalReport];
  v8 = [v7 desc];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"Description" value:v8];
    [v3 addObject:v9];
  }

  v10 = MEMORY[0x1E696AF60];
  v11 = [(SFUITTRReporter *)self internalReport];
  v12 = [v11 component];
  v13 = [v12 identifier];
  v14 = [v10 queryItemWithName:@"ComponentID" value:v13];

  v15 = MEMORY[0x1E696AF60];
  v16 = [(SFUITTRReporter *)self internalReport];
  v17 = [v16 component];
  v18 = [v17 name];
  v19 = [v15 queryItemWithName:@"ComponentName" value:v18];

  v20 = MEMORY[0x1E696AF60];
  v21 = [(SFUITTRReporter *)self internalReport];
  v22 = [v21 component];
  v23 = [v22 version];
  v24 = [v20 queryItemWithName:@"ComponentVersion" value:v23];

  [v3 addObject:v14];
  [v3 addObject:v19];
  [v3 addObject:v24];
  v25 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  [v25 setQueryItems:v3];
  v26 = [v25 URL];

  return v26;
}

void __25__SFUITTRReporter_report__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B9E4B000, log, OS_LOG_TYPE_ERROR, "TTR: failed opening shemeURL:%@ error:%@", &v4, 0x16u);
}

@end