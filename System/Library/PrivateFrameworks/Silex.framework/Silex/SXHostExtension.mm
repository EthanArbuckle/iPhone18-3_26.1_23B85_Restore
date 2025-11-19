@interface SXHostExtension
- (BOOL)active;
- (NSExtensionContext)extensionContext;
- (SXHostExtension)initWithExtensionContext:(id)a3;
- (void)openURL:(id)a3 completion:(id)a4;
@end

@implementation SXHostExtension

- (SXHostExtension)initWithExtensionContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SXHostExtension;
  v5 = [(SXHostExtension *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_extensionContext, v4);
    v6->_isActive = 1;
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel_extensionHostDidBecomeActive_ name:*MEMORY[0x1E696A2C0] object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v6 selector:sel_extensionHostDidEnterBackground_ name:*MEMORY[0x1E696A2C8] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v6 selector:sel_extensionHostWillEnterForeground_ name:*MEMORY[0x1E696A2D0] object:0];
  }

  return v6;
}

- (BOOL)active
{
  v3 = [(SXHostExtension *)self extensionContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SXHostExtension *)self extensionContext];
    v6 = [v5 widgetIsForeground];

    return v6;
  }

  else
  {

    return [(SXHostExtension *)self isActive];
  }
}

- (void)openURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXHostExtension *)self extensionContext];
  [v8 openURL:v7 completionHandler:v6];
}

- (NSExtensionContext)extensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContext);

  return WeakRetained;
}

@end