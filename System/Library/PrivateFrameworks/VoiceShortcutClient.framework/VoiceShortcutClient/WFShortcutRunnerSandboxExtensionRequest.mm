@interface WFShortcutRunnerSandboxExtensionRequest
+ (id)all;
- (WFShortcutRunnerSandboxExtensionRequest)initWithAccessResourceClassNames:(id)a3;
@end

@implementation WFShortcutRunnerSandboxExtensionRequest

+ (id)all
{
  v2 = [a1 alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [&unk_1F2931600 allKeys];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 initWithAccessResourceClassNames:v5];

  return v6;
}

- (WFShortcutRunnerSandboxExtensionRequest)initWithAccessResourceClassNames:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFShortcutRunnerSandboxExtensionManager.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"accessResourceClassNames"}];
  }

  v12.receiver = self;
  v12.super_class = WFShortcutRunnerSandboxExtensionRequest;
  v7 = [(WFShortcutRunnerSandboxExtensionRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_accessResourceClassNames, a3);
    v9 = v8;
  }

  return v8;
}

@end