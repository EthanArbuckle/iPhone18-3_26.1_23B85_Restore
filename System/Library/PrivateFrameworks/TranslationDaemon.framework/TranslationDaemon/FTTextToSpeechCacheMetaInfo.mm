@interface FTTextToSpeechCacheMetaInfo
- (BOOL)enable_word_timing_info;
- (FTAudioDescription)decoder_description;
- (FTAudioDescription)playback_description;
- (FTTextToSpeechCacheMetaInfo)initWithFlatbuffData:(id)a3 root:(const TextToSpeechCacheMetaInfo *)a4 verify:(BOOL)a5;
- (FTTextToSpeechMeta)meta_info;
- (NSString)original_session_id;
- (NSString)text;
- (Offset<siri::speech::schema_fb::TextToSpeechCacheMetaInfo>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int)audio_length;
- (int64_t)audio_type;
@end

@implementation FTTextToSpeechCacheMetaInfo

- (FTTextToSpeechCacheMetaInfo)initWithFlatbuffData:(id)a3 root:(const TextToSpeechCacheMetaInfo *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechCacheMetaInfo;
  v10 = [(FTTextToSpeechCacheMetaInfo *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechCacheMetaInfo::Verify(v18, v21))
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

- (FTTextToSpeechMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info"];
  if (!v3)
  {
    v4 = [FTTextToSpeechMeta alloc];
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

    v3 = [(FTTextToSpeechMeta *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meta_info"];
  }

  return v3;
}

- (int64_t)audio_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)enable_word_timing_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 9u && (v4 = *v3[8].var0) != 0 && root[v4].var0[0] != 0;
}

- (FTAudioDescription)decoder_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"decoder_description"];
  if (!v3)
  {
    v4 = [FTAudioDescription alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTAudioDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"decoder_description"];
  }

  return v3;
}

- (FTAudioDescription)playback_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"playback_description"];
  if (!v3)
  {
    v4 = [FTAudioDescription alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTAudioDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"playback_description"];
  }

  return v3;
}

- (int)audio_length
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)text
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 16].var0;
  if (*root[-v3 + 16].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (NSString)original_session_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (Offset<siri::speech::schema_fb::TextToSpeechCacheMetaInfo>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTTextToSpeechCacheMetaInfo *)self meta_info];
  v6 = [v5 addObjectToBuffer:a3];

  v7 = [(FTTextToSpeechCacheMetaInfo *)self audio_type];
  v8 = [(FTTextToSpeechCacheMetaInfo *)self enable_word_timing_info];
  v9 = [(FTTextToSpeechCacheMetaInfo *)self decoder_description];
  v25 = [v9 addObjectToBuffer:a3];

  v10 = [(FTTextToSpeechCacheMetaInfo *)self playback_description];
  v11 = [v10 addObjectToBuffer:a3];

  v12 = [(FTTextToSpeechCacheMetaInfo *)self audio_length];
  v13 = [(FTTextToSpeechCacheMetaInfo *)self text];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_284834138;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v15, v16);

  v18 = [(FTTextToSpeechCacheMetaInfo *)self original_session_id];
  v19 = v18;
  if (!v18)
  {
    v18 = &stru_284834138;
  }

  v20 = [(__CFString *)v18 UTF8String];
  v21 = strlen(v20);
  LODWORD(v20) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v20, v21);

  *(a3 + 70) = 1;
  v22 = *(a3 + 10);
  v23 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v7, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 8, v8, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v25);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v11);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v12, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 16, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 18, v20);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v23 + v22);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechCacheMetaInfo *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__43__FTTextToSpeechCacheMetaInfo_flatbuffData__block_invoke(uint64_t a1)
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