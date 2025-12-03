@interface VUIJSApplication
- (NSDictionary)traitCollection;
- (void)launchAppWithOptions:(id)options;
- (void)reload:(id)reload :(id)a4;
- (void)resumeAppWithOptions:(id)options;
- (void)suspendAppWithOptions:(id)options;
@end

@implementation VUIJSApplication

- (void)launchAppWithOptions:(id)options
{
  v9 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = MEMORY[0x1E695DEC8];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(VUIJSObject *)self invokeMethod:@"onLaunch" withArguments:v6, optionsCopy, v9];
}

- (void)suspendAppWithOptions:(id)options
{
  v9 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = MEMORY[0x1E695DEC8];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(VUIJSObject *)self invokeMethod:@"onSuspend" withArguments:v6, optionsCopy, v9];
}

- (void)resumeAppWithOptions:(id)options
{
  v9 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = MEMORY[0x1E695DEC8];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(VUIJSObject *)self invokeMethod:@"onResume" withArguments:v6, optionsCopy, v9];
}

- (void)reload:(id)reload :(id)a4
{
  v6 = a4;
  reloadCopy = reload;
  v13 = [reloadCopy objectForKeyedSubscript:@"when"];
  v8 = [v13 isEqualToString:@"onResume"];
  v9 = [reloadCopy objectForKeyedSubscript:@"minSuspensionTime"];

  if ([v9 length])
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  appContext = [(VUIJSObject *)self appContext];
  [appContext handleReloadWithUrgencyType:v8 minInterval:v6 data:v11];
}

- (NSDictionary)traitCollection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__22;
  v11 = __Block_byref_object_dispose__22;
  v12 = 0;
  appContext = [(VUIJSObject *)self appContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VUIJSApplication_traitCollection__block_invoke;
  v6[3] = &unk_1E87347B8;
  v6[4] = self;
  v6[5] = &v7;
  [appContext evaluateDelegateBlockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__VUIJSApplication_traitCollection__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) appContext];
  v2 = [v5 _appTraitCollection];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end