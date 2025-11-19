@interface TRIFBFastFactorLevelsBuilder
- (void)dealloc;
- (void)setLevels:(id)a3;
- (void)setNamespaceName:(id)a3;
- (void)setNcvs:(id)a3;
- (void)setSourceWithDefaults:(id)a3;
- (void)setSourceWithFactorPackId:(id)a3;
- (void)setSourceWithTreatmentId:(id)a3;
@end

@implementation TRIFBFastFactorLevelsBuilder

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x2318F1E10](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = TRIFBFastFactorLevelsBuilder;
  [(TRIFBFastFactorLevelsBuilder *)&v4 dealloc];
}

- (void)setLevels:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4733 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
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
      apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(var0, 4, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setSourceWithTreatmentId:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4742 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
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

- (void)setSourceWithFactorPackId:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4752 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
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

- (void)setSourceWithDefaults:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4762 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
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

- (void)setNamespaceName:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4773 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  v6 = [(AFBBufferBuilder *)self->_owner firstError];

  if (!v6)
  {
    v7 = v5;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 10, [v7 unsignedIntValue]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setNcvs:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4783 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
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
      apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(var0, 12, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end