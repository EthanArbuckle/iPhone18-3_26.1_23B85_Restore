@interface TRIFBMobileAssetReferenceBuilder
- (void)dealloc;
- (void)setAssetName:(id)name;
- (void)setDownloadSize:(unint64_t)size;
- (void)setFileType:(unsigned __int8)type;
- (void)setHasOnDemandFlag:(BOOL)flag;
- (void)setIsOnDemand:(BOOL)demand;
- (void)setSpecifier:(id)specifier;
- (void)setType:(id)type;
- (void)setVersion:(id)version;
@end

@implementation TRIFBMobileAssetReferenceBuilder

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x2318F1E10](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = TRIFBMobileAssetReferenceBuilder;
  [(TRIFBMobileAssetReferenceBuilder *)&v4 dealloc];
}

- (void)setType:(id)type
{
  v10 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2293 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = typeCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setSpecifier:(id)specifier
{
  v10 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  if (!specifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2303 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = specifierCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setVersion:(id)version
{
  v10 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  if (!versionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2313 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = versionCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
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
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 10, typeCopy);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsOnDemand:(BOOL)demand
{
  demandCopy = demand;
  v7 = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 12, demandCopy);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDownloadSize:(unint64_t)size
{
  v7 = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(self->_bldr->var0, 14, size);
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2346 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = nameCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 16, [v7 unsignedIntValue]);
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
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 18, flagCopy);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end