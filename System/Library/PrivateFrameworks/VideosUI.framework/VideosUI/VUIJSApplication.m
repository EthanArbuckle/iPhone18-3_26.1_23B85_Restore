@interface VUIJSApplication
- (NSDictionary)traitCollection;
- (void)launchAppWithOptions:(id)a3;
- (void)reload:(id)a3 :(id)a4;
- (void)resumeAppWithOptions:(id)a3;
- (void)suspendAppWithOptions:(id)a3;
@end

@implementation VUIJSApplication

- (void)launchAppWithOptions:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  v7 = [(VUIJSObject *)self invokeMethod:@"onLaunch" withArguments:v6, v8, v9];
}

- (void)suspendAppWithOptions:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  v7 = [(VUIJSObject *)self invokeMethod:@"onSuspend" withArguments:v6, v8, v9];
}

- (void)resumeAppWithOptions:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  v7 = [(VUIJSObject *)self invokeMethod:@"onResume" withArguments:v6, v8, v9];
}

- (void)reload:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = [v7 objectForKeyedSubscript:@"when"];
  v8 = [v13 isEqualToString:@"onResume"];
  v9 = [v7 objectForKeyedSubscript:@"minSuspensionTime"];

  if ([v9 length])
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [(VUIJSObject *)self appContext];
  [v12 handleReloadWithUrgencyType:v8 minInterval:v6 data:v11];
}

- (NSDictionary)traitCollection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__22;
  v11 = __Block_byref_object_dispose__22;
  v12 = 0;
  v3 = [(VUIJSObject *)self appContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VUIJSApplication_traitCollection__block_invoke;
  v6[3] = &unk_1E87347B8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 evaluateDelegateBlockSync:v6];

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