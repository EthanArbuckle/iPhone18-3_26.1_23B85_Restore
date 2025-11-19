@interface FTTextToSpeechRequestProsodyControlConfig
- (FTTextToSpeechRequestProsodyControlConfig)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestProsodyControlConfig *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig>)addObjectToBuffer:(void *)a3;
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

@implementation FTTextToSpeechRequestProsodyControlConfig

- (FTTextToSpeechRequestProsodyControlConfig)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestProsodyControlConfig *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechRequestProsodyControlConfig;
  v10 = [(FTTextToSpeechRequestProsodyControlConfig *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify(v18, v21))
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

- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig>)addObjectToBuffer:(void *)a3
{
  [(FTTextToSpeechRequestProsodyControlConfig *)self global_rate];
  v6 = v5;
  [(FTTextToSpeechRequestProsodyControlConfig *)self global_pitch];
  v8 = v7;
  [(FTTextToSpeechRequestProsodyControlConfig *)self global_energy];
  v10 = v9;
  [(FTTextToSpeechRequestProsodyControlConfig *)self global_sent_pitch];
  v12 = v11;
  [(FTTextToSpeechRequestProsodyControlConfig *)self global_sent_pitchrange];
  v14 = v13;
  [(FTTextToSpeechRequestProsodyControlConfig *)self global_sent_duration];
  v16 = v15;
  [(FTTextToSpeechRequestProsodyControlConfig *)self global_sent_energy];
  v18 = v17;
  [(FTTextToSpeechRequestProsodyControlConfig *)self global_sent_tilt];
  v20 = v19;
  *(a3 + 70) = 1;
  v21 = *(a3 + 10);
  v22 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 4, v6, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 6, v8, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 8, v10, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 10, v12, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 12, v14, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 14, v16, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 16, v18, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 18, v20, 0.0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v22 + v21);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechRequestProsodyControlConfig *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__57__FTTextToSpeechRequestProsodyControlConfig_flatbuffData__block_invoke(uint64_t a1)
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