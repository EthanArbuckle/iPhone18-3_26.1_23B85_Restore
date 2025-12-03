@interface FTTextToSpeechSpeechFeatureInputWave
- (FTTextToSpeechSpeechFeatureInputWave)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureInputWave *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int)sample_rate;
- (void)pcm_data:(id)pcm_data;
@end

@implementation FTTextToSpeechSpeechFeatureInputWave

- (FTTextToSpeechSpeechFeatureInputWave)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureInputWave *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechSpeechFeatureInputWave;
  v10 = [(FTTextToSpeechSpeechFeatureInputWave *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechVoiceResource::Verify(v18, v21))
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

- (int)sample_rate
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

- (void)pcm_data:(id)pcm_data
{
  root = self->_root;
  v5 = &root[-*root->var0];
  pcm_dataCopy = pcm_data;
  v7 = *root[*v5[6].var0 + *root[*v5[6].var0].var0].var0;
  v8 = pcm_dataCopy;
  (*(pcm_data + 2))();
}

- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  sample_rate = [(FTTextToSpeechSpeechFeatureInputWave *)self sample_rate];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3812000000;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = &unk_233042D43;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__FTTextToSpeechSpeechFeatureInputWave_addObjectToBuffer___block_invoke;
  v9[3] = &unk_2789B8AB0;
  v9[4] = &v10;
  v9[5] = buffer;
  [(FTTextToSpeechSpeechFeatureInputWave *)selfCopy pcm_data:v9];
  *(buffer + 70) = 1;
  v6 = *(buffer + 8);
  v7 = *(buffer + 12);
  LODWORD(selfCopy) = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, sample_rate, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, *(v11 + 12));
  LODWORD(buffer) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v6 - v7 + selfCopy);
  _Block_object_dispose(&v10, 8);
  return buffer;
}

uint64_t __58__FTTextToSpeechSpeechFeatureInputWave_addObjectToBuffer___block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechSpeechFeatureInputWave *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__52__FTTextToSpeechSpeechFeatureInputWave_flatbuffData__block_invoke(uint64_t a1)
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