@interface PXImportDiagnosticsService
+ (void)simulateFakeImportSource;
- (BOOL)canPerformAction;
- (void)performAction;
@end

@implementation PXImportDiagnosticsService

+ (void)simulateFakeImportSource
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if (objc_opt_respondsToSelector())
  {
    [mEMORY[0x1E69DC668] _runImportTestCommonInit:&unk_1F190F738 navigateToImportTab:0 completionHandler:0];
  }

  else
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = NSStringFromSelector(sel__runImportTestCommonInit_navigateToImportTab_completionHandler_);
    v4 = [v2 stringWithFormat:@"The Photos UIApplication doesn't seem to respond to %@", v3];

    v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Could Not Add Fake Import Source" message:v4 preferredStyle:1];
    v6 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:&__block_literal_global_207552];
    [v5 addAction:v6];

    px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
    rootViewController = [px_firstKeyWindow rootViewController];
    [rootViewController px_presentOverTopmostPresentedViewController:v5 animated:1 completion:0];
  }
}

- (void)performAction
{
  v2 = objc_opt_class();

  [v2 simulateFakeImportSource];
}

- (BOOL)canPerformAction
{
  v2 = +[PXImportSettings sharedInstance];
  importSourceSimulationViaDiagnosticsEnabled = [v2 importSourceSimulationViaDiagnosticsEnabled];

  return importSourceSimulationViaDiagnosticsEnabled;
}

@end