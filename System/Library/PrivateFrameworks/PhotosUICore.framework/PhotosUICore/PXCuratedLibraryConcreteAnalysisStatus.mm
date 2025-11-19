@interface PXCuratedLibraryConcreteAnalysisStatus
@end

@implementation PXCuratedLibraryConcreteAnalysisStatus

void __66___PXCuratedLibraryConcreteAnalysisStatus__updateStatusProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v6 = a2;
  [v6 setState:v3];
  [v6 setLocalizedTitle:*(a1 + 32)];
  [v6 setLocalizedDescription:*(a1 + 40)];
  LODWORD(v4) = *(a1 + 56);
  [v6 setProgress:v4];
  LODWORD(v5) = *(a1 + 60);
  [v6 setDisplayProgress:v5];
  [v6 setIsDaysMonthsYearsStructureEnabled:*(a1 + 64)];
  [v6 setIsDevicePlugged:(*(a1 + 65) & 1) == 0];
}

uint64_t __70___PXCuratedLibraryConcreteAnalysisStatus__configureBatteryMonitoring__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  [v2 setBatteryMonitoringEnabled:1];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__batteryStateDidChange_ name:*MEMORY[0x1E69DDCB0] object:0];

  v4 = *(a1 + 32);

  return [v4 _updateStatusProperties];
}

@end