@interface QSSTextToSpeechRequestProsodyControlConfig
- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechRequestProsodyControlConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyControlConfig *)root verify:(BOOL)verify;
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

@implementation QSSTextToSpeechRequestProsodyControlConfig

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
  v2.var0 = [(QSSTextToSpeechRequestProsodyControlConfig *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__58__QSSTextToSpeechRequestProsodyControlConfig_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig>)addObjectToBuffer:(void *)buffer
{
  [(QSSTextToSpeechRequestProsodyControlConfig *)self global_rate];
  v6 = v5;
  [(QSSTextToSpeechRequestProsodyControlConfig *)self global_pitch];
  v8 = v7;
  [(QSSTextToSpeechRequestProsodyControlConfig *)self global_energy];
  v10 = v9;
  [(QSSTextToSpeechRequestProsodyControlConfig *)self global_sent_pitch];
  v12 = v11;
  [(QSSTextToSpeechRequestProsodyControlConfig *)self global_sent_pitchrange];
  v14 = v13;
  [(QSSTextToSpeechRequestProsodyControlConfig *)self global_sent_duration];
  v16 = v15;
  [(QSSTextToSpeechRequestProsodyControlConfig *)self global_sent_energy];
  v18 = v17;
  [(QSSTextToSpeechRequestProsodyControlConfig *)self global_sent_tilt];
  v20 = v19;
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v21 = *(buffer + 10);
  v22 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 4, v6);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 6, v8);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 8, v10);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 10, v12);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 12, v14);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 14, v16);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 16, v18);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 18, v20);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v22 + v21);
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

- (QSSTextToSpeechRequestProsodyControlConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyControlConfig *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechRequestProsodyControlConfig;
  v10 = [(QSSTextToSpeechRequestProsodyControlConfig *)&v29 init];
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
        if (!siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify(v19, &v24))
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