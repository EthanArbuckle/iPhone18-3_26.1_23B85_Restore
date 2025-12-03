@interface OPTTSTextToSpeechMeta
- (OPTTSTextToSpeechMeta)initWithFlatbuffData:(id)data root:(const TextToSpeechMeta *)root verify:(BOOL)verify;
- (OPTTSTextToSpeechResource)resource;
- (OPTTSTextToSpeechVoice)voice;
- (Offset<siri::speech::schema_fb::TextToSpeechMeta>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechMeta

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_2728326A0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTextToSpeechMeta *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__37__OPTTSTextToSpeechMeta_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechMeta>)addObjectToBuffer:(void *)buffer
{
  voice = [(OPTTSTextToSpeechMeta *)self voice];
  v6 = [voice addObjectToBuffer:buffer];

  resource = [(OPTTSTextToSpeechMeta *)self resource];
  v8 = [resource addObjectToBuffer:buffer];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v9 = *(buffer + 5);
  v10 = *(buffer + 6);
  v11 = *(buffer + 4);
  if (v6)
  {
    v12 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v6);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v12);
  }

  if (v8)
  {
    v13 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v8);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v13);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v11 - v10 + v9);
}

- (OPTTSTextToSpeechResource)resource
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"resource"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechResource alloc];
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

    v3 = [(OPTTSTextToSpeechResource *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"resource"];
  }

  return v3;
}

- (OPTTSTextToSpeechVoice)voice
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voice"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechVoice alloc];
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

    v3 = [(OPTTSTextToSpeechVoice *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"voice"];
  }

  return v3;
}

- (OPTTSTextToSpeechMeta)initWithFlatbuffData:(id)data root:(const TextToSpeechMeta *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = OPTTSTextToSpeechMeta;
  v10 = [(OPTTSTextToSpeechMeta *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
      v25 = v18;
      v26 = xmmword_2728326B0;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::TextToSpeechMeta::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end