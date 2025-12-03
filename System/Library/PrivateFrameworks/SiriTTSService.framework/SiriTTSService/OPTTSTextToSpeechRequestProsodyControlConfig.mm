@interface OPTTSTextToSpeechRequestProsodyControlConfig
- (OPTTSTextToSpeechRequestProsodyControlConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyControlConfig *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig>)addObjectToBuffer:(void *)buffer;
- (float)global_energy;
- (float)global_pitch;
- (float)global_rate;
- (float)global_sent_duration;
- (float)global_sent_energy;
- (float)global_sent_pitch;
- (float)global_sent_pitchrange;
- (float)global_sent_tilt;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechRequestProsodyControlConfig

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
  v2.var0 = [(OPTTSTextToSpeechRequestProsodyControlConfig *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__60__OPTTSTextToSpeechRequestProsodyControlConfig_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig>)addObjectToBuffer:(void *)buffer
{
  [(OPTTSTextToSpeechRequestProsodyControlConfig *)self global_rate];
  v6 = v5;
  [(OPTTSTextToSpeechRequestProsodyControlConfig *)self global_pitch];
  v8 = v7;
  [(OPTTSTextToSpeechRequestProsodyControlConfig *)self global_energy];
  v10 = v9;
  [(OPTTSTextToSpeechRequestProsodyControlConfig *)self global_sent_pitch];
  v12 = v11;
  [(OPTTSTextToSpeechRequestProsodyControlConfig *)self global_sent_pitchrange];
  v14 = v13;
  [(OPTTSTextToSpeechRequestProsodyControlConfig *)self global_sent_duration];
  v16 = v15;
  [(OPTTSTextToSpeechRequestProsodyControlConfig *)self global_sent_energy];
  v18 = v17;
  [(OPTTSTextToSpeechRequestProsodyControlConfig *)self global_sent_tilt];
  v20 = v19;
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v21 = *(buffer + 10);
  v22 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 4, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 6, v8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 8, v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 10, v12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 12, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 14, v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 16, v18);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 18, v20);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v22 + v21);
}

- (float)global_sent_tilt
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x13u)
  {
    v5 = *v3[18].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)global_sent_energy
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x11u)
  {
    v5 = *v3[16].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)global_sent_duration
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xFu)
  {
    v5 = *v3[14].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)global_sent_pitchrange
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xDu)
  {
    v5 = *v3[12].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)global_sent_pitch
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xBu)
  {
    v5 = *v3[10].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)global_energy
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 9u)
  {
    v5 = *v3[8].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)global_pitch
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 7u)
  {
    v5 = *v3[6].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)global_rate
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 5u)
  {
    v5 = *v3[4].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (OPTTSTextToSpeechRequestProsodyControlConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyControlConfig *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechRequestProsodyControlConfig;
  v10 = [(OPTTSTextToSpeechRequestProsodyControlConfig *)&v25 init];
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
  if (v18 && !siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify(v18, v21))
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