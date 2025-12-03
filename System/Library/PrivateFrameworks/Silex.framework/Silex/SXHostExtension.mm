@interface SXHostExtension
- (BOOL)active;
- (NSExtensionContext)extensionContext;
- (SXHostExtension)initWithExtensionContext:(id)context;
- (void)openURL:(id)l completion:(id)completion;
@end

@implementation SXHostExtension

- (SXHostExtension)initWithExtensionContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SXHostExtension;
  v5 = [(SXHostExtension *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_extensionContext, contextCopy);
    v6->_isActive = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_extensionHostDidBecomeActive_ name:*MEMORY[0x1E696A2C0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel_extensionHostDidEnterBackground_ name:*MEMORY[0x1E696A2C8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel_extensionHostWillEnterForeground_ name:*MEMORY[0x1E696A2D0] object:0];
  }

  return v6;
}

- (BOOL)active
{
  extensionContext = [(SXHostExtension *)self extensionContext];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    extensionContext2 = [(SXHostExtension *)self extensionContext];
    widgetIsForeground = [extensionContext2 widgetIsForeground];

    return widgetIsForeground;
  }

  else
  {

    return [(SXHostExtension *)self isActive];
  }
}

- (void)openURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  extensionContext = [(SXHostExtension *)self extensionContext];
  [extensionContext openURL:lCopy completionHandler:completionCopy];
}

- (NSExtensionContext)extensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContext);

  return WeakRetained;
}

@end