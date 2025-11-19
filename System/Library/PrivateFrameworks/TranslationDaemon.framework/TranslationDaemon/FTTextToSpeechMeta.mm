@interface FTTextToSpeechMeta
- (FTQSSVersionInfo)server_info;
- (FTTextToSpeechMeta)initWithFlatbuffData:(id)a3 root:(const TextToSpeechMeta *)a4 verify:(BOOL)a5;
- (FTTextToSpeechResource)resource;
- (FTTextToSpeechVoice)voice;
- (Offset<siri::speech::schema_fb::TextToSpeechMeta>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
@end

@implementation FTTextToSpeechMeta

- (FTTextToSpeechMeta)initWithFlatbuffData:(id)a3 root:(const TextToSpeechMeta *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechMeta;
  v10 = [(FTTextToSpeechMeta *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::TextToSpeechMeta::Verify(v18, v21))
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

- (FTTextToSpeechVoice)voice
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voice"];
  if (!v3)
  {
    v4 = [FTTextToSpeechVoice alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechVoice *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"voice"];
  }

  return v3;
}

- (FTTextToSpeechResource)resource
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"resource"];
  if (!v3)
  {
    v4 = [FTTextToSpeechResource alloc];
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

    v3 = [(FTTextToSpeechResource *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"resource"];
  }

  return v3;
}

- (FTQSSVersionInfo)server_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"server_info"];
  if (!v3)
  {
    v4 = [FTQSSVersionInfo alloc];
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

    v3 = [(FTQSSVersionInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"server_info"];
  }

  return v3;
}

- (Offset<siri::speech::schema_fb::TextToSpeechMeta>)addObjectToBuffer:(void *)a3
{
  v4 = self;
  v5 = [(FTTextToSpeechMeta *)self voice];
  v6 = [v5 addObjectToBuffer:a3];

  v7 = [(FTTextToSpeechMeta *)v4 resource];
  v8 = [v7 addObjectToBuffer:a3];

  v9 = [(FTTextToSpeechMeta *)v4 server_info];
  LODWORD(v4) = [v9 addObjectToBuffer:a3];

  *(a3 + 70) = 1;
  v10 = *(a3 + 10);
  v11 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v4);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v11 + v10);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechMeta *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__34__FTTextToSpeechMeta_flatbuffData__block_invoke(uint64_t a1)
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