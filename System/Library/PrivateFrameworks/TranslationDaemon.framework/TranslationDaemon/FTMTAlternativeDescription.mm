@interface FTMTAlternativeDescription
- (FTMTAlternativeDescription)initWithFlatbuffData:(id)data root:(const MTAlternativeDescription *)root verify:(BOOL)verify;
- (FTMTAlternativeDescription_MTGenderDescription)gender_description;
- (FTMTAlternativeDescription_MTMeaningDescription)meaning_description;
- (Offset<siri::speech::schema_fb::MTAlternativeDescription>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)alternative_type;
@end

@implementation FTMTAlternativeDescription

- (FTMTAlternativeDescription)initWithFlatbuffData:(id)data root:(const MTAlternativeDescription *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTMTAlternativeDescription;
  v10 = [(FTMTAlternativeDescription *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (!verifyCopy)
  {
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::MTAlternativeDescription::Verify(v18, v21))
  {
LABEL_14:
    v19 = 0;
  }

  else
  {
LABEL_13:
    v19 = v10;
  }

  return v19;
}

- (int64_t)alternative_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (FTMTAlternativeDescription_MTGenderDescription)gender_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"gender_description"];
  if (!v3)
  {
    v4 = [FTMTAlternativeDescription_MTGenderDescription alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 7u && (v7 = *v6[6].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTMTAlternativeDescription_MTGenderDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"gender_description"];
  }

  return v3;
}

- (FTMTAlternativeDescription_MTMeaningDescription)meaning_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meaning_description"];
  if (!v3)
  {
    v4 = [FTMTAlternativeDescription_MTMeaningDescription alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 9u && (v7 = *v6[8].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTMTAlternativeDescription_MTMeaningDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meaning_description"];
  }

  return v3;
}

- (Offset<siri::speech::schema_fb::MTAlternativeDescription>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  alternative_type = [(FTMTAlternativeDescription *)self alternative_type];
  gender_description = [(FTMTAlternativeDescription *)selfCopy gender_description];
  v7 = [gender_description addObjectToBuffer:buffer];

  meaning_description = [(FTMTAlternativeDescription *)selfCopy meaning_description];
  LODWORD(selfCopy) = [meaning_description addObjectToBuffer:buffer];

  *(buffer + 70) = 1;
  v9 = *(buffer + 10);
  v10 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, alternative_type, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, selfCopy);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v10 + v9);
}

- (id)flatbuffData
{
  v3 = 0;
  v4 = 0;
  v5 = xmmword_233005E30;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 256;
  v11 = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTMTAlternativeDescription *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__42__FTMTAlternativeDescription_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__62__FTMTAlternativeDescription_MTGenderDescription_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__63__FTMTAlternativeDescription_MTMeaningDescription_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end