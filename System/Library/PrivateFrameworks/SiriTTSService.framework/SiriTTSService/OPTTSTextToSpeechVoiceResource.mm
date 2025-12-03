@interface OPTTSTextToSpeechVoiceResource
- (OPTTSTextToSpeechVoiceResource)initWithFlatbuffData:(id)data root:(const TextToSpeechVoiceResource *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechVoiceResource>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)type;
- (void)data:(id)data;
@end

@implementation OPTTSTextToSpeechVoiceResource

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1B1C416F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTextToSpeechVoiceResource *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__46__OPTTSTextToSpeechVoiceResource_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechVoiceResource>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  type = [(OPTTSTextToSpeechVoiceResource *)self type];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3812000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = "";
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__OPTTSTextToSpeechVoiceResource_addObjectToBuffer___block_invoke;
  v9[3] = &unk_1E7AF38B0;
  v9[4] = &v10;
  v9[5] = buffer;
  [(OPTTSTextToSpeechVoiceResource *)selfCopy data:v9];
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v6 = *(buffer + 8);
  v7 = *(buffer + 12);
  LODWORD(selfCopy) = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, type);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 6, *(v11 + 12));
  LODWORD(buffer) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v6 - v7 + selfCopy);
  _Block_object_dispose(&v10, 8);
  return buffer;
}

uint64_t __52__OPTTSTextToSpeechVoiceResource_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
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

- (OPTTSTextToSpeechVoiceResource)initWithFlatbuffData:(id)data root:(const TextToSpeechVoiceResource *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechVoiceResource;
  v10 = [(OPTTSTextToSpeechVoiceResource *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_15;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_1B1C41700;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave::Verify(v18, v21))
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
LABEL_14:
    v19 = v10;
  }

  return v19;
}

@end