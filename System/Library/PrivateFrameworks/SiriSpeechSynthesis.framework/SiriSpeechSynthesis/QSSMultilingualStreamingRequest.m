@interface QSSMultilingualStreamingRequest
- (Offset<siri::speech::qss_fb::MultilingualStreamingRequest>)addObjectToBuffer:(void *)a3;
- (QSSAudioPacket)contentAsQSSAudioPacket;
- (QSSFinishAudio)contentAsQSSFinishAudio;
- (QSSLanguageDetected)contentAsQSSLanguageDetected;
- (QSSMultilingualStreamingRequest)initWithFlatbuffData:(id)a3 root:(const MultilingualStreamingRequest *)a4 verify:(BOOL)a5;
- (QSSSetRequestOrigin)contentAsQSSSetRequestOrigin;
- (QSSSetSpeechContext)contentAsQSSSetSpeechContext;
- (QSSSetSpeechProfile)contentAsQSSSetSpeechProfile;
- (QSSStartMultilingualSpeechRequest)contentAsQSSStartMultilingualSpeechRequest;
- (QSSUpdateAudioInfo)contentAsQSSUpdateAudioInfo;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSMultilingualStreamingRequest

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
  v2.var0 = [(QSSMultilingualStreamingRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__47__QSSMultilingualStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::MultilingualStreamingRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSMultilingualStreamingRequest *)self content_type];
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 1)
  {
    v6 = [(QSSMultilingualStreamingRequest *)self contentAsQSSStartMultilingualSpeechRequest];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 2)
  {
    v9 = [(QSSMultilingualStreamingRequest *)self contentAsQSSUpdateAudioInfo];
    v10 = [v9 addObjectToBuffer:a3];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 3)
  {
    v12 = [(QSSMultilingualStreamingRequest *)self contentAsQSSSetRequestOrigin];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 4)
  {
    v15 = [(QSSMultilingualStreamingRequest *)self contentAsQSSSetSpeechContext];
    v16 = [v15 addObjectToBuffer:a3];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 5)
  {
    v18 = [(QSSMultilingualStreamingRequest *)self contentAsQSSSetSpeechProfile];
    v19 = [v18 addObjectToBuffer:a3];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 6)
  {
    v21 = [(QSSMultilingualStreamingRequest *)self contentAsQSSAudioPacket];
    v22 = [v21 addObjectToBuffer:a3];

    v36 = v22;
  }

  else
  {
    v36 = 0;
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 7)
  {
    v23 = [(QSSMultilingualStreamingRequest *)self contentAsQSSFinishAudio];
    v24 = [v23 addObjectToBuffer:a3];

    v34 = v24;
  }

  else
  {
    v34 = 0;
  }

  v35 = v20;
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 8)
  {
    v25 = [(QSSMultilingualStreamingRequest *)self contentAsQSSLanguageDetected];
    v26 = [v25 addObjectToBuffer:a3];
    v27 = v14;

    v32 = v26;
  }

  else
  {
    v27 = v14;
    v32 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v28 = *(a3 + 5);
  v29 = *(a3 + 6);
  v30 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5);
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v8);
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v11);
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v27);
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v17);
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 5)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v35);
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 6)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v36);
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 7)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v34);
  }

  if ([(QSSMultilingualStreamingRequest *)self content_type]== 8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v33);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v30 - v29 + v28);
}

- (QSSLanguageDetected)contentAsQSSLanguageDetected
{
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSLanguageDetected alloc];
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

      v3 = [(QSSLanguageDetected *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSFinishAudio)contentAsQSSFinishAudio
{
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSFinishAudio alloc];
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

      v3 = [(QSSFinishAudio *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSAudioPacket)contentAsQSSAudioPacket
{
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSAudioPacket alloc];
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

      v3 = [(QSSAudioPacket *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSSetSpeechProfile)contentAsQSSSetSpeechProfile
{
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSetSpeechProfile alloc];
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

      v3 = [(QSSSetSpeechProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSSetSpeechContext)contentAsQSSSetSpeechContext
{
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSetSpeechContext alloc];
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

      v3 = [(QSSSetSpeechContext *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSSetRequestOrigin)contentAsQSSSetRequestOrigin
{
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSetRequestOrigin alloc];
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

      v3 = [(QSSSetRequestOrigin *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSUpdateAudioInfo)contentAsQSSUpdateAudioInfo
{
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSUpdateAudioInfo alloc];
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

      v3 = [(QSSUpdateAudioInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSStartMultilingualSpeechRequest)contentAsQSSStartMultilingualSpeechRequest
{
  if ([(QSSMultilingualStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSStartMultilingualSpeechRequest alloc];
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

      v3 = [(QSSStartMultilingualSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)content_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return root[v4].var0[0];
  }

  else
  {
    return 0;
  }
}

- (QSSMultilingualStreamingRequest)initWithFlatbuffData:(id)a3 root:(const MultilingualStreamingRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v33.receiver = self;
  v33.super_class = QSSMultilingualStreamingRequest;
  v10 = [(QSSMultilingualStreamingRequest *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_60;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_61;
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
      goto LABEL_61;
    }

    v17 = [(NSData *)v10->_data bytes];
    v18 = [(NSData *)v10->_data length];
    v28 = v17;
    v29 = v18;
    v30 = xmmword_26914CD70;
    v31 = 0;
    v32 = 1;
    if (v18 >= 0x7FFFFFFF)
    {
      __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
    }

    v19 = v10->_root;
    if (v19)
    {
      if (!flatbuffers::Verifier::VerifyTableStart(&v28, v11->_root->var0))
      {
        goto LABEL_61;
      }

      v20 = (v19 - *v19);
      v21 = *v20;
      if (v21 >= 5 && v20[2] && (v29 < 2 || v29 - 1 < v19 + v20[2] - v28))
      {
        goto LABEL_61;
      }

      if (!flatbuffers::Table::VerifyOffset(v19, &v28, 6u))
      {
        goto LABEL_61;
      }

      if (v21 >= 7)
      {
        if (v20[3])
        {
          v22 = (v19 + v20[3] + *(v19 + v20[3]));
          goto LABEL_24;
        }

LABEL_23:
        v22 = 0;
LABEL_24:
        if (v20[2])
        {
          v23 = *(v19 + v20[2]);
          if (v23 <= 3)
          {
            if (*(v19 + v20[2]) > 1u)
            {
              if (v23 == 2)
              {
                if (v22 && !siri::speech::schema_fb::TextToSpeechResource::Verify(v22, &v28))
                {
                  goto LABEL_61;
                }
              }

              else if (v23 != 3 || v22 && !siri::speech::schema_fb::SetRequestOrigin::Verify(v22, &v28))
              {
                goto LABEL_61;
              }
            }

            else if (*(v19 + v20[2]) && v22 && !siri::speech::schema_fb::StartMultilingualSpeechRequest::Verify(v22, &v28))
            {
              goto LABEL_61;
            }
          }

          else if (*(v19 + v20[2]) <= 5u)
          {
            if (v23 == 4)
            {
              if (v22 && !siri::speech::schema_fb::SetSpeechContext::Verify(v22, &v28))
              {
                goto LABEL_61;
              }
            }

            else if (v23 != 5 || v22 && !siri::speech::schema_fb::SetSpeechProfile::Verify(v22, &v28))
            {
              goto LABEL_61;
            }
          }

          else if (v23 == 6)
          {
            if (v22 && !siri::speech::schema_fb::TTSWordPhonemes::Verify(v22, &v28))
            {
              goto LABEL_61;
            }
          }

          else if (v23 == 7)
          {
            if (v22 && !siri::speech::schema_fb::FinishAudio::Verify(v22, &v28))
            {
              goto LABEL_61;
            }
          }

          else if (v23 != 8 || v22 && !siri::speech::schema_fb::LanguageDetected::Verify(v22, &v28))
          {
LABEL_61:
            v26 = 0;
            goto LABEL_62;
          }
        }

        goto LABEL_59;
      }

      if (v21 >= 5)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_59:
  v24 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v24;

LABEL_60:
  v26 = v11;
LABEL_62:

  return v26;
}

@end