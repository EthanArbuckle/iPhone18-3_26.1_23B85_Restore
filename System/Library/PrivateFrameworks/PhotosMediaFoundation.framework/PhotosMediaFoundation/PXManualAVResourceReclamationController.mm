@interface PXManualAVResourceReclamationController
- (void)reclaimResources;
@end

@implementation PXManualAVResourceReclamationController

- (void)reclaimResources
{
  date = [MEMORY[0x277CBEAA8] date];
  [(PXConcreteAVResourceReclamationController *)self reclamationEventDidOccur:date];
}

@end