@interface QSSSpeechTranslationStreamingRequest
- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingRequest>)addObjectToBuffer:(void *)buffer;
- (QSSAudioPacket)contentAsQSSAudioPacket;
- (QSSFinishAudio)contentAsQSSFinishAudio;
- (QSSLanguageDetected)contentAsQSSLanguageDetected;
- (QSSResetServerEndpointer)contentAsQSSResetServerEndpointer;
- (QSSSetEndpointerState)contentAsQSSSetEndpointerState;
- (QSSSpeechTranslationAudioPacket)contentAsQSSSpeechTranslationAudioPacket;
- (QSSSpeechTranslationStreamingRequest)initWithFlatbuffData:(id)data root:(const SpeechTranslationStreamingRequest *)root verify:(BOOL)verify;
- (QSSStartSpeechTranslationLoggingRequest)contentAsQSSStartSpeechTranslationLoggingRequest;
- (QSSStartSpeechTranslationRequest)contentAsQSSStartSpeechTranslationRequest;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSSpeechTranslationStreamingRequest

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
  v2.var0 = [(QSSSpeechTranslationStreamingRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__52__QSSSpeechTranslationStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  content_type = [(QSSSpeechTranslationStreamingRequest *)self content_type];
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 1)
  {
    contentAsQSSStartSpeechTranslationRequest = [(QSSSpeechTranslationStreamingRequest *)self contentAsQSSStartSpeechTranslationRequest];
    v7 = [contentAsQSSStartSpeechTranslationRequest addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 2)
  {
    contentAsQSSLanguageDetected = [(QSSSpeechTranslationStreamingRequest *)self contentAsQSSLanguageDetected];
    v10 = [contentAsQSSLanguageDetected addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 3)
  {
    contentAsQSSAudioPacket = [(QSSSpeechTranslationStreamingRequest *)self contentAsQSSAudioPacket];
    v13 = [contentAsQSSAudioPacket addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 4)
  {
    contentAsQSSSpeechTranslationAudioPacket = [(QSSSpeechTranslationStreamingRequest *)self contentAsQSSSpeechTranslationAudioPacket];
    v16 = [contentAsQSSSpeechTranslationAudioPacket addObjectToBuffer:buffer];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 5)
  {
    contentAsQSSFinishAudio = [(QSSSpeechTranslationStreamingRequest *)self contentAsQSSFinishAudio];
    v19 = [contentAsQSSFinishAudio addObjectToBuffer:buffer];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 6)
  {
    contentAsQSSSetEndpointerState = [(QSSSpeechTranslationStreamingRequest *)self contentAsQSSSetEndpointerState];
    v22 = [contentAsQSSSetEndpointerState addObjectToBuffer:buffer];

    v36 = v22;
  }

  else
  {
    v36 = 0;
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 7)
  {
    contentAsQSSResetServerEndpointer = [(QSSSpeechTranslationStreamingRequest *)self contentAsQSSResetServerEndpointer];
    v24 = [contentAsQSSResetServerEndpointer addObjectToBuffer:buffer];

    v34 = v24;
  }

  else
  {
    v34 = 0;
  }

  v35 = v20;
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 8)
  {
    contentAsQSSStartSpeechTranslationLoggingRequest = [(QSSSpeechTranslationStreamingRequest *)self contentAsQSSStartSpeechTranslationLoggingRequest];
    v26 = [contentAsQSSStartSpeechTranslationLoggingRequest addObjectToBuffer:buffer];
    v27 = v14;

    v32 = v26;
  }

  else
  {
    v27 = v14;
    v32 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v28 = *(buffer + 5);
  v29 = *(buffer + 6);
  v30 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type);
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v8);
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v11);
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v27);
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v17);
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 5)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v35);
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 6)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v36);
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 7)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v34);
  }

  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v33);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v30 - v29 + v28);
}

- (QSSStartSpeechTranslationLoggingRequest)contentAsQSSStartSpeechTranslationLoggingRequest
{
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSStartSpeechTranslationLoggingRequest alloc];
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

      v3 = [(QSSStartSpeechTranslationLoggingRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSResetServerEndpointer)contentAsQSSResetServerEndpointer
{
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSResetServerEndpointer alloc];
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

      v3 = [(QSSResetServerEndpointer *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSSetEndpointerState)contentAsQSSSetEndpointerState
{
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSetEndpointerState alloc];
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

      v3 = [(QSSSetEndpointerState *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 5)
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

- (QSSSpeechTranslationAudioPacket)contentAsQSSSpeechTranslationAudioPacket
{
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSpeechTranslationAudioPacket alloc];
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

      v3 = [(QSSSpeechTranslationAudioPacket *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 3)
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

- (QSSLanguageDetected)contentAsQSSLanguageDetected
{
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 2)
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

- (QSSStartSpeechTranslationRequest)contentAsQSSStartSpeechTranslationRequest
{
  if ([(QSSSpeechTranslationStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSStartSpeechTranslationRequest alloc];
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

      v3 = [(QSSStartSpeechTranslationRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (QSSSpeechTranslationStreamingRequest)initWithFlatbuffData:(id)data root:(const SpeechTranslationStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = QSSSpeechTranslationStreamingRequest;
  v10 = [(QSSSpeechTranslationStreamingRequest *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_60;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_61;
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
      goto LABEL_61;
    }

    bytes3 = [(NSData *)v10->_data bytes];
    v18 = [(NSData *)v10->_data length];
    v28 = bytes3;
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
                if (v22 && !siri::speech::schema_fb::LanguageDetected::Verify(v22, &v28))
                {
                  goto LABEL_61;
                }
              }

              else if (v23 != 3 || v22 && !siri::speech::schema_fb::TTSWordPhonemes::Verify(v22, &v28))
              {
                goto LABEL_61;
              }
            }

            else if (*(v19 + v20[2]) && v22 && !siri::speech::schema_fb::StartSpeechTranslationRequest::Verify(v22, &v28))
            {
              goto LABEL_61;
            }
          }

          else if (*(v19 + v20[2]) <= 5u)
          {
            if (v23 == 4)
            {
              if (v22 && !siri::speech::schema_fb::SpeechTranslationAudioPacket::Verify(v22, &v28))
              {
                goto LABEL_61;
              }
            }

            else if (v23 != 5 || v22 && !siri::speech::schema_fb::FinishAudio::Verify(v22, &v28))
            {
              goto LABEL_61;
            }
          }

          else if (v23 == 6)
          {
            if (v22 && !siri::speech::schema_fb::SetEndpointerState::Verify(v22, &v28))
            {
              goto LABEL_61;
            }
          }

          else if (v23 == 7)
          {
            if (v22 && !siri::speech::schema_fb::ResetServerEndpointer::Verify(v22, &v28))
            {
              goto LABEL_61;
            }
          }

          else if (v23 != 8 || v22 && !siri::speech::schema_fb::StartSpeechTranslationLoggingRequest::Verify(v22, &v28))
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_60:
  v26 = v11;
LABEL_62:

  return v26;
}

@end