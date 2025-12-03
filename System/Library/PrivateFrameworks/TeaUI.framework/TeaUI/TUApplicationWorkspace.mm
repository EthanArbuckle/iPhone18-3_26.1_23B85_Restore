@interface TUApplicationWorkspace
+ (id)shared;
- (TUApplicationWorkspace)initWithApplicationWorkspace:(id)workspace;
- (void)openSensitiveURL:(id)l options:(id)options;
@end

@implementation TUApplicationWorkspace

+ (id)shared
{
  if (shared_onceToken[0] != -1)
  {
    +[TUApplicationWorkspace shared];
  }

  v3 = shared_instance;

  return v3;
}

void __32__TUApplicationWorkspace_shared__block_invoke()
{
  v0 = [TUApplicationWorkspace alloc];
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v1 = [(TUApplicationWorkspace *)v0 initWithApplicationWorkspace:v3];
  v2 = shared_instance;
  shared_instance = v1;
}

- (TUApplicationWorkspace)initWithApplicationWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v9.receiver = self;
  v9.super_class = TUApplicationWorkspace;
  v6 = [(TUApplicationWorkspace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationWorkspace, workspace);
  }

  return v7;
}

- (void)openSensitiveURL:(id)l options:(id)options
{
  optionsCopy = options;
  lCopy = l;
  applicationWorkspace = [(TUApplicationWorkspace *)self applicationWorkspace];
  [applicationWorkspace openSensitiveURL:lCopy withOptions:optionsCopy];
}

@end