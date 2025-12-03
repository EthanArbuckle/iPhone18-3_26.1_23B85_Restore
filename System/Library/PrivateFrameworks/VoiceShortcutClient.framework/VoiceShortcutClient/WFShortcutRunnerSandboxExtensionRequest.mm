@interface WFShortcutRunnerSandboxExtensionRequest
+ (id)all;
- (WFShortcutRunnerSandboxExtensionRequest)initWithAccessResourceClassNames:(id)names;
@end

@implementation WFShortcutRunnerSandboxExtensionRequest

+ (id)all
{
  v2 = [self alloc];
  v3 = MEMORY[0x1E695DFD8];
  allKeys = [&unk_1F2931600 allKeys];
  v5 = [v3 setWithArray:allKeys];
  v6 = [v2 initWithAccessResourceClassNames:v5];

  return v6;
}

- (WFShortcutRunnerSandboxExtensionRequest)initWithAccessResourceClassNames:(id)names
{
  namesCopy = names;
  if (!namesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShortcutRunnerSandboxExtensionManager.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"accessResourceClassNames"}];
  }

  v12.receiver = self;
  v12.super_class = WFShortcutRunnerSandboxExtensionRequest;
  v7 = [(WFShortcutRunnerSandboxExtensionRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_accessResourceClassNames, names);
    v9 = v8;
  }

  return v8;
}

@end