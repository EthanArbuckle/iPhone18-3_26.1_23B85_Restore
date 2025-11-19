@interface TRIFBMobileAssetReferenceBuilder
- (void)dealloc;
- (void)setAssetName:(id)a3;
- (void)setDownloadSize:(unint64_t)a3;
- (void)setFileType:(unsigned __int8)a3;
- (void)setHasOnDemandFlag:(BOOL)a3;
- (void)setIsOnDemand:(BOOL)a3;
- (void)setSpecifier:(id)a3;
- (void)setType:(id)a3;
- (void)setVersion:(id)a3;
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

- (void)setType:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2293 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setSpecifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2303 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setVersion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2313 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFileType:(unsigned __int8)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v5 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 10, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsOnDemand:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v5 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 12, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDownloadSize:(unint64_t)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(self->_bldr->var0, 14, a3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAssetName:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2346 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 16, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setHasOnDemandFlag:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v5 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 18, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end