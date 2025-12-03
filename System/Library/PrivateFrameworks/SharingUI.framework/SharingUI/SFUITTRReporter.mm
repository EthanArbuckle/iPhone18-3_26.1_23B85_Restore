@interface SFUITTRReporter
+ (id)reporterForPeopleSuggestions;
- (SFUITTRReporter)initWithReport:(id)report;
- (id)_createSchemeURL;
- (void)report;
@end

@implementation SFUITTRReporter

+ (id)reporterForPeopleSuggestions
{
  v3 = +[SFUITTRReport peopleSuggestionReport];
  v4 = [[self alloc] initWithReport:v3];

  return v4;
}

- (SFUITTRReporter)initWithReport:(id)report
{
  reportCopy = report;
  v9.receiver = self;
  v9.super_class = SFUITTRReporter;
  v6 = [(SFUITTRReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalReport, report);
  }

  return v7;
}

- (void)report
{
  _createSchemeURL = [(SFUITTRReporter *)self _createSchemeURL];
  if (_createSchemeURL)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __25__SFUITTRReporter_report__block_invoke;
    v5[3] = &unk_1E7EE4550;
    v6 = _createSchemeURL;
    [defaultWorkspace openURL:v6 configuration:0 completionHandler:v5];

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
  array = [MEMORY[0x1E695DF70] array];
  internalReport = [(SFUITTRReporter *)self internalReport];
  title = [internalReport title];

  if (title)
  {
    v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"Title" value:title];
    [array addObject:v6];
  }

  internalReport2 = [(SFUITTRReporter *)self internalReport];
  desc = [internalReport2 desc];

  if (desc)
  {
    v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"Description" value:desc];
    [array addObject:v9];
  }

  v10 = MEMORY[0x1E696AF60];
  internalReport3 = [(SFUITTRReporter *)self internalReport];
  component = [internalReport3 component];
  identifier = [component identifier];
  v14 = [v10 queryItemWithName:@"ComponentID" value:identifier];

  v15 = MEMORY[0x1E696AF60];
  internalReport4 = [(SFUITTRReporter *)self internalReport];
  component2 = [internalReport4 component];
  name = [component2 name];
  v19 = [v15 queryItemWithName:@"ComponentName" value:name];

  v20 = MEMORY[0x1E696AF60];
  internalReport5 = [(SFUITTRReporter *)self internalReport];
  component3 = [internalReport5 component];
  version = [component3 version];
  v24 = [v20 queryItemWithName:@"ComponentVersion" value:version];

  [array addObject:v14];
  [array addObject:v19];
  [array addObject:v24];
  v25 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  [v25 setQueryItems:array];
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