@interface SWFrameworkAssembly
- (SWFrameworkAssembly)init;
@end

@implementation SWFrameworkAssembly

- (SWFrameworkAssembly)init
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SWFrameworkAssembly;
  v2 = [(SWFrameworkAssembly *)&v13 init];
  if (v2)
  {
    SWSetupLogging();
    v3 = objc_alloc_init(SWCoreAssembly);
    v14[0] = v3;
    v4 = objc_alloc_init(SWFactoryAssembly);
    v14[1] = v4;
    v5 = objc_alloc_init(SWManagerAssembly);
    v14[2] = v5;
    v6 = objc_alloc_init(SWProviderAssembly);
    v14[3] = v6;
    v7 = objc_alloc_init(SWSetupAssembly);
    v14[4] = v7;
    v8 = objc_alloc_init(SWViewControllerAssembly);
    v14[5] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:6];
    assemblies = v2->_assemblies;
    v2->_assemblies = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

@end