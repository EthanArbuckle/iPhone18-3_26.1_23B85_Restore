@interface TRIFBFactorLevelBuilder
- (void)dealloc;
- (void)setAlias:(id)a3;
- (void)setCacheKey:(unsigned int)a3;
- (void)setFactorId:(id)a3;
- (void)setFactorNamespaceName:(id)a3;
- (void)setLevelWithBoolVal:(id)a3;
- (void)setLevelWithDoubleVal:(id)a3;
- (void)setLevelWithInt64Val:(id)a3;
- (void)setLevelWithMaRefVal:(id)a3;
- (void)setLevelWithStringVal:(id)a3;
- (void)setLevelWithTrialAssetVal:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setName:(id)a3;
- (void)setNamespaceId:(unsigned int)a3;
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

- (void)setName:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3720 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithBoolVal:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3730 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 1);
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithStringVal:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3740 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 2);
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithInt64Val:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3751 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 3);
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithDoubleVal:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3762 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 4);
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithTrialAssetVal:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3773 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 5);
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLevelWithMaRefVal:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3784 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 6);
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setMetadata:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3795 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    v8 = [v7 unsignedIntValue];
    if (v8)
    {
      var0 = self->_bldr->var0;
      v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(var0, v8);
      apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(var0, 10, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setCacheKey:(unsigned int)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(self->_bldr->var0, 12, a3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAlias:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3812 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 14, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFactorNamespaceName:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3822 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 16, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFactorId:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3832 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 18, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setNamespaceId:(unsigned int)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(self->_bldr->var0, 20, a3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end