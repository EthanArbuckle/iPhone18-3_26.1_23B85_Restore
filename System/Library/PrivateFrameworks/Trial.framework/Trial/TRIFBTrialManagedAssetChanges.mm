@interface TRIFBTrialManagedAssetChanges
- (void)replaceAssetId:(id)id;
- (void)replaceAssetName:(id)name;
- (void)replaceCloudKitMetadataWithAsset:(id)asset;
- (void)replaceCloudKitMetadataWithTreatment:(id)treatment;
- (void)replacePath:(id)path;
@end

@implementation TRIFBTrialManagedAssetChanges

- (void)replacePath:(id)path
{
  pathCopy = path;
  self->_changeTypePath = 1;
  v7 = pathCopy;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1716 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    pathCopy = 0;
  }

  self->_replacementPath = [pathCopy unsignedIntValue];
}

- (void)replaceAssetId:(id)id
{
  idCopy = id;
  self->_changeTypeAssetId = 1;
  v7 = idCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1760 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    idCopy = 0;
  }

  self->_replacementAssetId = [idCopy unsignedIntValue];
}

- (void)replaceCloudKitMetadataWithTreatment:(id)treatment
{
  treatmentCopy = treatment;
  v7 = treatmentCopy;
  if (!treatmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1782 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    treatmentCopy = 0;
  }

  *&self->_replacementCloudKitMetadataType = 257;
  self->_replacementCloudKitMetadata = [treatmentCopy unsignedIntValue];
}

- (void)replaceCloudKitMetadataWithAsset:(id)asset
{
  assetCopy = asset;
  v7 = assetCopy;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1789 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    assetCopy = 0;
  }

  *&self->_replacementCloudKitMetadataType = 258;
  self->_replacementCloudKitMetadata = [assetCopy unsignedIntValue];
}

- (void)replaceAssetName:(id)name
{
  nameCopy = name;
  self->_changeTypeAssetName = 1;
  v7 = nameCopy;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1851 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    nameCopy = 0;
  }

  self->_replacementAssetName = [nameCopy unsignedIntValue];
}

@end