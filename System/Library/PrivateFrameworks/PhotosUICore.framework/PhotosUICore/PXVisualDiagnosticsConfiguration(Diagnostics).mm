@interface PXVisualDiagnosticsConfiguration(Diagnostics)
- (void)collectTapToRadarDiagnosticsIntoContainer:()Diagnostics;
@end

@implementation PXVisualDiagnosticsConfiguration(Diagnostics)

- (void)collectTapToRadarDiagnosticsIntoContainer:()Diagnostics
{
  v4 = a3;
  name = [self name];
  v6 = name;
  if (name)
  {
    v7 = name;
  }

  else
  {
    v7 = @"Visual Diagnostics";
  }

  v8 = [v4 beginCollectionOperationWithName:v7 timeout:30.0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PXVisualDiagnosticsConfiguration_Diagnostics__collectTapToRadarDiagnosticsIntoContainer___block_invoke;
  v11[3] = &unk_1E77462D0;
  v12 = v4;
  v13 = v8;
  v9 = v8;
  v10 = v4;
  [PXVisualDiagnosticsFactory requestVisualDiagnosticsPDFDocumentURLWithConfiguration:self resultHandler:v11];
}

@end