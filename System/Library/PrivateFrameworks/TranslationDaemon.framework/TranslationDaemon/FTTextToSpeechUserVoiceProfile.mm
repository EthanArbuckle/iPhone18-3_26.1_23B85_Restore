@interface FTTextToSpeechUserVoiceProfile
- (FTTextToSpeechUserVoiceProfile)initWithFlatbuffData:(id)data root:(const TextToSpeechUserVoiceProfile *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechUserVoiceProfile>)addObjectToBuffer:(void *)buffer;
- (float)duration_mean;
- (float)duration_std;
- (float)energy_mean;
- (float)energy_std;
- (float)pitch_mean;
- (float)pitch_std;
- (id)flatbuffData;
@end

@implementation FTTextToSpeechUserVoiceProfile

- (FTTextToSpeechUserVoiceProfile)initWithFlatbuffData:(id)data root:(const TextToSpeechUserVoiceProfile *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechUserVoiceProfile;
  v10 = [(FTTextToSpeechUserVoiceProfile *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify(v18, v21))
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

- (float)pitch_mean
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

- (float)pitch_std
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

- (float)energy_mean
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

- (float)energy_std
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

- (float)duration_mean
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

- (float)duration_std
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

- (Offset<siri::speech::schema_fb::TextToSpeechUserVoiceProfile>)addObjectToBuffer:(void *)buffer
{
  [(FTTextToSpeechUserVoiceProfile *)self pitch_mean];
  v6 = v5;
  [(FTTextToSpeechUserVoiceProfile *)self pitch_std];
  v8 = v7;
  [(FTTextToSpeechUserVoiceProfile *)self energy_mean];
  v10 = v9;
  [(FTTextToSpeechUserVoiceProfile *)self energy_std];
  v12 = v11;
  [(FTTextToSpeechUserVoiceProfile *)self duration_mean];
  v14 = v13;
  [(FTTextToSpeechUserVoiceProfile *)self duration_std];
  v16 = v15;
  *(buffer + 70) = 1;
  v17 = *(buffer + 10);
  v18 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 4, v6, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 6, v8, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 8, v10, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 10, v12, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 12, v14, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 14, v16, 0.0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v18 + v17);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechUserVoiceProfile *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__46__FTTextToSpeechUserVoiceProfile_flatbuffData__block_invoke(uint64_t a1)
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