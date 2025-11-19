@interface TUApplicationWorkspace
+ (id)shared;
- (TUApplicationWorkspace)initWithApplicationWorkspace:(id)a3;
- (void)openSensitiveURL:(id)a3 options:(id)a4;
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

- (TUApplicationWorkspace)initWithApplicationWorkspace:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUApplicationWorkspace;
  v6 = [(TUApplicationWorkspace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationWorkspace, a3);
  }

  return v7;
}

- (void)openSensitiveURL:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUApplicationWorkspace *)self applicationWorkspace];
  [v8 openSensitiveURL:v7 withOptions:v6];
}

@end