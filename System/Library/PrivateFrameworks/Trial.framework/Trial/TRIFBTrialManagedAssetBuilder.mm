@interface TRIFBTrialManagedAssetBuilder
- (void)dealloc;
- (void)setAssetId:(id)id;
- (void)setAssetName:(id)name;
- (void)setCloudKitMetadataWithAsset:(id)asset;
- (void)setCloudKitMetadataWithTreatment:(id)treatment;
- (void)setDownloadSize:(unint64_t)size;
- (void)setFileType:(unsigned __int8)type;
- (void)setHasOnDemandFlag:(BOOL)flag;
- (void)setIsOnDemand:(BOOL)demand;
- (void)setPath:(id)path;
@end

@implementation TRIFBTrialManagedAssetBuilder

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x2318F1E10](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = TRIFBTrialManagedAssetBuilder;
  [(TRIFBTrialManagedAssetBuilder *)&v4 dealloc];
}

- (void)setPath:(id)path
{
  v10 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1517 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = pathCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFileType:(unsigned __int8)type
{
  typeCopy = type;
  v7 = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, typeCopy);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAssetId:(id)id
{
  v10 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1536 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = idCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setCloudKitMetadataWithTreatment:(id)treatment
{
  v10 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  if (!treatmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1546 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 10, 1);
    v7 = treatmentCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 12, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setCloudKitMetadataWithAsset:(id)asset
{
  v10 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1557 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 10, 2);
    v7 = assetCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 12, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setIsOnDemand:(BOOL)demand
{
  demandCopy = demand;
  v7 = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 14, demandCopy);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDownloadSize:(unint64_t)size
{
  v7 = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(self->_bldr->var0, 16, size);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAssetName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1582 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = nameCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 18, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setHasOnDemandFlag:(BOOL)flag
{
  flagCopy = flag;
  v7 = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 20, flagCopy);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end