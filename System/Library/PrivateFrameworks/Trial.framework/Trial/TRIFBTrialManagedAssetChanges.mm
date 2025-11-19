@interface TRIFBTrialManagedAssetChanges
- (void)replaceAssetId:(id)a3;
- (void)replaceAssetName:(id)a3;
- (void)replaceCloudKitMetadataWithAsset:(id)a3;
- (void)replaceCloudKitMetadataWithTreatment:(id)a3;
- (void)replacePath:(id)a3;
@end

@implementation TRIFBTrialManagedAssetChanges

- (void)replacePath:(id)a3
{
  v5 = a3;
  self->_changeTypePath = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1716 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementPath = [v5 unsignedIntValue];
}

- (void)replaceAssetId:(id)a3
{
  v5 = a3;
  self->_changeTypeAssetId = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1760 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementAssetId = [v5 unsignedIntValue];
}

- (void)replaceCloudKitMetadataWithTreatment:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1782 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementCloudKitMetadataType = 257;
  self->_replacementCloudKitMetadata = [v5 unsignedIntValue];
}

- (void)replaceCloudKitMetadataWithAsset:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1789 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementCloudKitMetadataType = 258;
  self->_replacementCloudKitMetadata = [v5 unsignedIntValue];
}

- (void)replaceAssetName:(id)a3
{
  v5 = a3;
  self->_changeTypeAssetName = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1851 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementAssetName = [v5 unsignedIntValue];
}

@end