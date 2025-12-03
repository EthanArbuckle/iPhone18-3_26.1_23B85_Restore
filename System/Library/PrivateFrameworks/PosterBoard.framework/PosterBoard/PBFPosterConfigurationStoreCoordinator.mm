@interface PBFPosterConfigurationStoreCoordinator
- (id)_accessQueue_buildIdentityForVersion:(unint64_t)version supplement:(unint64_t)supplement;
@end

@implementation PBFPosterConfigurationStoreCoordinator

- (id)_accessQueue_buildIdentityForVersion:(unint64_t)version supplement:(unint64_t)supplement
{
  extensionIdentifier = [(PBFPosterModelStoreCoordinator *)self extensionIdentifier];
  posterUUID = [(PBFPosterModelStoreCoordinator *)self posterUUID];
  descriptorIdentifier = [(PBFPosterModelStoreCoordinator *)self descriptorIdentifier];
  role = [(PBFPosterModelStoreCoordinator *)self role];
  v11 = [MEMORY[0x277D3EB98] configurationIdentityWithProvider:extensionIdentifier identifier:descriptorIdentifier role:role posterUUID:posterUUID version:version supplement:supplement];

  return v11;
}

@end