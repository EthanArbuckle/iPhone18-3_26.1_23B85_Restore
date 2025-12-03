@interface JSValue(SafariThenableExtras)
- (BOOL)safari_isThenable;
- (void)safari_awaitThenableResolutionWithCompletionHandler:()SafariThenableExtras;
@end

@implementation JSValue(SafariThenableExtras)

- (BOOL)safari_isThenable
{
  context = [self context];
  jSGlobalContextRef = [context JSGlobalContextRef];

  jSValueRef = [self JSValueRef];
  if (!JSValueIsObject(jSGlobalContextRef, jSValueRef))
  {
    return 0;
  }

  v5 = JSValueToObject(jSGlobalContextRef, jSValueRef, 0);
  return SafariShared::JSUtilities::functionObjectByName(jSGlobalContextRef, v5, "then", v6) != 0;
}

- (void)safari_awaitThenableResolutionWithCompletionHandler:()SafariThenableExtras
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__JSValue_SafariThenableExtras__safari_awaitThenableResolutionWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E7FC60D8;
  v5 = v4;
  v16 = v5;
  v6 = MEMORY[0x1BFB13CE0](v15);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__JSValue_SafariThenableExtras__safari_awaitThenableResolutionWithCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E7FC60D8;
  v7 = v5;
  v14 = v7;
  v8 = MEMORY[0x1BFB13CE0](v13);
  v9 = MEMORY[0x1BFB13CE0](v6);
  v17[0] = v9;
  v10 = MEMORY[0x1BFB13CE0](v8);
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [self invokeMethod:@"then" withArguments:v11];
}

@end