@interface PXManualAVResourceReclamationController
- (void)reclaimResources;
@end

@implementation PXManualAVResourceReclamationController

- (void)reclaimResources
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(PXConcreteAVResourceReclamationController *)self reclamationEventDidOccur:v3];
}

@end