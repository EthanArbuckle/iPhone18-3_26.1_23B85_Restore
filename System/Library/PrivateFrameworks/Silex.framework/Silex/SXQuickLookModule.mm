@interface SXQuickLookModule
- (SXQuickLookModule)initWithResolver:(id)resolver;
- (id)createViewControllerWithFile:(id)file;
@end

@implementation SXQuickLookModule

- (SXQuickLookModule)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = SXQuickLookModule;
  v6 = [(SXQuickLookModule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolver, resolver);
  }

  return v7;
}

- (id)createViewControllerWithFile:(id)file
{
  fileCopy = file;
  resolver = [(SXQuickLookModule *)self resolver];
  v6 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SXQuickLookModule_createViewControllerWithFile___block_invoke;
  v10[3] = &unk_1E8500A98;
  v11 = fileCopy;
  v7 = fileCopy;
  v8 = [resolver resolveClass:v6 contextBlock:v10];

  return v8;
}

void __50__SXQuickLookModule_createViewControllerWithFile___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 useObject:v2 forClass:objc_opt_class()];
}

@end