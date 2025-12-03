@interface QSSTextToSpeechVoiceResource
- (Offset<siri::speech::schema_fb::TextToSpeechVoiceResource>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechVoiceResource)initWithFlatbuffData:(id)data root:(const TextToSpeechVoiceResource *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int64_t)type;
- (void)data:(id)data;
@end

@implementation QSSTextToSpeechVoiceResource

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_26914CD60;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(QSSTextToSpeechVoiceResource *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__44__QSSTextToSpeechVoiceResource_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechVoiceResource>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  type = [(QSSTextToSpeechVoiceResource *)self type];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3812000000;
  v13 = __Block_byref_object_copy__645;
  v14 = __Block_byref_object_dispose__646;
  v15 = &unk_26916BD4D;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__QSSTextToSpeechVoiceResource_addObjectToBuffer___block_invoke;
  v9[3] = &unk_279C4C2C8;
  v9[4] = &v10;
  v9[5] = buffer;
  [(QSSTextToSpeechVoiceResource *)selfCopy data:v9];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v6 = *(buffer + 8);
  v7 = *(buffer + 12);
  LODWORD(selfCopy) = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, type);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, *(v11 + 12));
  LODWORD(buffer) = flatbuffers::FlatBufferBuilder::EndTable(buffer, v6 - v7 + selfCopy);
  _Block_object_dispose(&v10, 8);
  return buffer;
}

uint64_t __50__QSSTextToSpeechVoiceResource_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (void)data:(id)data
{
  root = self->_root;
  v5 = &root[-*root->var0];
  dataCopy = data;
  v7 = *root[*v5[6].var0 + *root[*v5[6].var0].var0].var0;
  v8 = dataCopy;
  (*(data + 2))();
}

- (int64_t)type
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

- (QSSTextToSpeechVoiceResource)initWithFlatbuffData:(id)data root:(const TextToSpeechVoiceResource *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechVoiceResource;
  v10 = [(QSSTextToSpeechVoiceResource *)&v29 init];
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
      v26 = xmmword_26914CD70;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::TextToSpeechVoiceResource::Verify(v19, &v24))
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