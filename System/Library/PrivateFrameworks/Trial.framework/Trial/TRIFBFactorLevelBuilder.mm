@interface TRIFBFactorLevelBuilder
- (void)dealloc;
- (void)setAlias:(id)alias;
- (void)setCacheKey:(unsigned int)key;
- (void)setFactorId:(id)id;
- (void)setFactorNamespaceName:(id)name;
- (void)setLevelWithBoolVal:(id)val;
- (void)setLevelWithDoubleVal:(id)val;
- (void)setLevelWithInt64Val:(id)val;
- (void)setLevelWithMaRefVal:(id)val;
- (void)setLevelWithStringVal:(id)val;
- (void)setLevelWithTrialAssetVal:(id)val;
- (void)setMetadata:(id)metadata;
- (void)setName:(id)name;
- (void)setNamespaceId:(unsigned int)id;
@end

@implementation TRIFBFactorLevelBuilder

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x2318F1E10](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = TRIFBFactorLevelBuilder;
  [(TRIFBFactorLevelBuilder *)&v4 dealloc];
}

- (void)setName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3720 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = nameCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithBoolVal:(id)val
{
  v10 = *MEMORY[0x277D85DE8];
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3730 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 1);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithStringVal:(id)val
{
  v10 = *MEMORY[0x277D85DE8];
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3740 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 2);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithInt64Val:(id)val
{
  v10 = *MEMORY[0x277D85DE8];
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3751 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 3);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithDoubleVal:(id)val
{
  v10 = *MEMORY[0x277D85DE8];
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3762 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 4);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithTrialAssetVal:(id)val
{
  v10 = *MEMORY[0x277D85DE8];
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3773 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 5);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithMaRefVal:(id)val
{
  v10 = *MEMORY[0x277D85DE8];
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3784 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 6);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setMetadata:(id)metadata
{
  v13 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3795 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = metadataCopy;
    unsignedIntValue = [v7 unsignedIntValue];
    if (unsignedIntValue)
    {
      var0 = self->_bldr->var0;
      v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(var0, unsignedIntValue);
      apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(var0, 10, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setCacheKey:(unsigned int)key
{
  v7 = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(self->_bldr->var0, 12, key);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAlias:(id)alias
{
  v10 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  if (!aliasCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3812 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = aliasCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 14, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFactorNamespaceName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3822 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = nameCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 16, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFactorId:(id)id
{
  v10 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3832 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = idCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 18, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setNamespaceId:(unsigned int)id
{
  v7 = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(self->_bldr->var0, 20, id);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end