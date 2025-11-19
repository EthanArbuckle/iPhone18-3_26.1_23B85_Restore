@interface PXVisualDiagnosticsConfiguration
@end

@implementation PXVisualDiagnosticsConfiguration

void __91__PXVisualDiagnosticsConfiguration_Diagnostics__collectTapToRadarDiagnosticsIntoContainer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addAttachment:a2];
  [*(a1 + 40) endWithSuccess:a2 != 0 error:v6];
}

@end