@interface PBFPosterConfigurationStoreCoordinator
- (id)_accessQueue_buildIdentityForVersion:(unint64_t)a3 supplement:(unint64_t)a4;
@end

@implementation PBFPosterConfigurationStoreCoordinator

- (id)_accessQueue_buildIdentityForVersion:(unint64_t)a3 supplement:(unint64_t)a4
{
  v7 = [(PBFPosterModelStoreCoordinator *)self extensionIdentifier];
  v8 = [(PBFPosterModelStoreCoordinator *)self posterUUID];
  v9 = [(PBFPosterModelStoreCoordinator *)self descriptorIdentifier];
  v10 = [(PBFPosterModelStoreCoordinator *)self role];
  v11 = [MEMORY[0x277D3EB98] configurationIdentityWithProvider:v7 identifier:v9 role:v10 posterUUID:v8 version:a3 supplement:a4];

  return v11;
}

@end