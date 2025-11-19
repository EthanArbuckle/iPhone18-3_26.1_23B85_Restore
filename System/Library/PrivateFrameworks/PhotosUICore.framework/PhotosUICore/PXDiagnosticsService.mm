@interface PXDiagnosticsService
- (NSString)title;
- (PXDiagnosticsService)initWithItemProviders:(id)a3;
- (UIViewController)contextualViewController;
- (void)performAction;
@end

@implementation PXDiagnosticsService

- (void)performAction
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDiagnosticsService.m" lineNumber:51 description:{@"Method %s is a responsibility of subclass %@", "-[PXDiagnosticsService performAction]", v6}];

  abort();
}

- (UIViewController)contextualViewController
{
  if ([(PXDiagnosticsService *)self canProvideConsoleDescription])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__PXDiagnosticsService_contextualViewController__block_invoke;
    v6[3] = &unk_1E774BB70;
    v6[4] = self;
    v3 = [MEMORY[0x1E69DD258] px_viewControllerWithOutput:v6];
    v4 = [(PXDiagnosticsService *)self title];
    [v3 setTitle:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)title
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Untitled Service (%@)", v4];

  return v5;
}

- (PXDiagnosticsService)initWithItemProviders:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXDiagnosticsService;
  v5 = [(PXDiagnosticsService *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemProviders = v5->_itemProviders;
    v5->_itemProviders = v6;
  }

  return v5;
}

@end