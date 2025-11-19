@interface QSSTextToSpeechUserVoiceProfile
- (Offset<siri::speech::schema_fb::TextToSpeechUserVoiceProfile>)addObjectToBuffer:(void *)a3;
- (QSSTextToSpeechUserVoiceProfile)initWithFlatbuffData:(id)a3 root:(const TextToSpeechUserVoiceProfile *)a4 verify:(BOOL)a5;
- (float)duration_mean;
- (float)duration_std;
- (float)energy_mean;
- (float)energy_std;
- (float)pitch_mean;
- (float)pitch_std;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechUserVoiceProfile

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
  v2.var0 = [(QSSTextToSpeechUserVoiceProfile *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__47__QSSTextToSpeechUserVoiceProfile_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechUserVoiceProfile>)addObjectToBuffer:(void *)a3
{
  [(QSSTextToSpeechUserVoiceProfile *)self pitch_mean];
  v6 = v5;
  [(QSSTextToSpeechUserVoiceProfile *)self pitch_std];
  v8 = v7;
  [(QSSTextToSpeechUserVoiceProfile *)self energy_mean];
  v10 = v9;
  [(QSSTextToSpeechUserVoiceProfile *)self energy_std];
  v12 = v11;
  [(QSSTextToSpeechUserVoiceProfile *)self duration_mean];
  v14 = v13;
  [(QSSTextToSpeechUserVoiceProfile *)self duration_std];
  v16 = v15;
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v17 = *(a3 + 10);
  v18 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 4, v6);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 6, v8);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 8, v10);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 10, v12);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 12, v14);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 14, v16);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v18 + v17);
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

- (QSSTextToSpeechUserVoiceProfile)initWithFlatbuffData:(id)a3 root:(const TextToSpeechUserVoiceProfile *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechUserVoiceProfile;
  v10 = [(QSSTextToSpeechUserVoiceProfile *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
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
        if (!siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end