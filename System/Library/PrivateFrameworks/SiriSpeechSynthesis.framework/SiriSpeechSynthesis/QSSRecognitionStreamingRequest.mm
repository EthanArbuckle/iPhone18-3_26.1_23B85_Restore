@interface QSSRecognitionStreamingRequest
- (Offset<siri::speech::qss_fb::RecognitionStreamingRequest>)addObjectToBuffer:(void *)buffer;
- (QSSAudioPacket)contentAsQSSAudioPacket;
- (QSSCheckForSpeechRequest)contentAsQSSCheckForSpeechRequest;
- (QSSFinishAudio)contentAsQSSFinishAudio;
- (QSSRecognitionStreamingRequest)initWithFlatbuffData:(id)data root:(const RecognitionStreamingRequest *)root verify:(BOOL)verify;
- (QSSResetServerEndpointer)contentAsQSSResetServerEndpointer;
- (QSSSetAlternateRecognitionSausage)contentAsQSSSetAlternateRecognitionSausage;
- (QSSSetEndpointerState)contentAsQSSSetEndpointerState;
- (QSSSetRequestOrigin)contentAsQSSSetRequestOrigin;
- (QSSSetSpeechContext)contentAsQSSSetSpeechContext;
- (QSSSetSpeechProfile)contentAsQSSSetSpeechProfile;
- (QSSStartSpeechRequest)contentAsQSSStartSpeechRequest;
- (QSSUpdateAudioInfo)contentAsQSSUpdateAudioInfo;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSRecognitionStreamingRequest

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
  v2.var0 = [(QSSRecognitionStreamingRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__46__QSSRecognitionStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::RecognitionStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  content_type = [(QSSRecognitionStreamingRequest *)self content_type];
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 1)
  {
    contentAsQSSStartSpeechRequest = [(QSSRecognitionStreamingRequest *)self contentAsQSSStartSpeechRequest];
    v7 = [contentAsQSSStartSpeechRequest addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 2)
  {
    contentAsQSSUpdateAudioInfo = [(QSSRecognitionStreamingRequest *)self contentAsQSSUpdateAudioInfo];
    v10 = [contentAsQSSUpdateAudioInfo addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 3)
  {
    contentAsQSSSetRequestOrigin = [(QSSRecognitionStreamingRequest *)self contentAsQSSSetRequestOrigin];
    v13 = [contentAsQSSSetRequestOrigin addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 4)
  {
    contentAsQSSSetSpeechContext = [(QSSRecognitionStreamingRequest *)self contentAsQSSSetSpeechContext];
    v16 = [contentAsQSSSetSpeechContext addObjectToBuffer:buffer];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 5)
  {
    contentAsQSSSetSpeechProfile = [(QSSRecognitionStreamingRequest *)self contentAsQSSSetSpeechProfile];
    v19 = [contentAsQSSSetSpeechProfile addObjectToBuffer:buffer];

    v46 = v19;
  }

  else
  {
    v46 = 0;
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 6)
  {
    contentAsQSSSetEndpointerState = [(QSSRecognitionStreamingRequest *)self contentAsQSSSetEndpointerState];
    v21 = [contentAsQSSSetEndpointerState addObjectToBuffer:buffer];

    v45 = v21;
  }

  else
  {
    v45 = 0;
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 7)
  {
    contentAsQSSAudioPacket = [(QSSRecognitionStreamingRequest *)self contentAsQSSAudioPacket];
    v23 = [contentAsQSSAudioPacket addObjectToBuffer:buffer];

    v44 = v23;
  }

  else
  {
    v44 = 0;
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 8)
  {
    contentAsQSSFinishAudio = [(QSSRecognitionStreamingRequest *)self contentAsQSSFinishAudio];
    v25 = [contentAsQSSFinishAudio addObjectToBuffer:buffer];

    v43 = v25;
  }

  else
  {
    v43 = 0;
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 9)
  {
    contentAsQSSResetServerEndpointer = [(QSSRecognitionStreamingRequest *)self contentAsQSSResetServerEndpointer];
    v27 = [contentAsQSSResetServerEndpointer addObjectToBuffer:buffer];

    v41 = v27;
  }

  else
  {
    v41 = 0;
  }

  v42 = v17;
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 10)
  {
    contentAsQSSCheckForSpeechRequest = [(QSSRecognitionStreamingRequest *)self contentAsQSSCheckForSpeechRequest];
    v29 = [contentAsQSSCheckForSpeechRequest addObjectToBuffer:buffer];

    v40 = v29;
  }

  else
  {
    v40 = 0;
  }

  v30 = v14;
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 11)
  {
    contentAsQSSSetAlternateRecognitionSausage = [(QSSRecognitionStreamingRequest *)self contentAsQSSSetAlternateRecognitionSausage];
    v32 = [contentAsQSSSetAlternateRecognitionSausage addObjectToBuffer:buffer];
    v33 = v11;
    v34 = v8;

    v35 = v32;
  }

  else
  {
    v33 = v11;
    v34 = v8;
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v36 = *(buffer + 5);
  v37 = *(buffer + 6);
  v38 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type);
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v34);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v33);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v30);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v42);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 5)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v46);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 6)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v45);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 7)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v44);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v43);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v41);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v40);
  }

  if ([(QSSRecognitionStreamingRequest *)self content_type]== 11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v35);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v38 - v37 + v36);
}

- (QSSSetAlternateRecognitionSausage)contentAsQSSSetAlternateRecognitionSausage
{
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSetAlternateRecognitionSausage alloc];
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

      v3 = [(QSSSetAlternateRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSCheckForSpeechRequest)contentAsQSSCheckForSpeechRequest
{
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSCheckForSpeechRequest alloc];
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

      v3 = [(QSSCheckForSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 9)
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

- (QSSFinishAudio)contentAsQSSFinishAudio
{
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 8)
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
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 7)
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

- (QSSSetEndpointerState)contentAsQSSSetEndpointerState
{
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 6)
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

- (QSSSetSpeechProfile)contentAsQSSSetSpeechProfile
{
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 5)
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
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 4)
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
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 3)
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
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 2)
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

- (QSSStartSpeechRequest)contentAsQSSStartSpeechRequest
{
  if ([(QSSRecognitionStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSStartSpeechRequest alloc];
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

      v3 = [(QSSStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (QSSRecognitionStreamingRequest)initWithFlatbuffData:(id)data root:(const RecognitionStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = QSSRecognitionStreamingRequest;
  v10 = [(QSSRecognitionStreamingRequest *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_72;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_73;
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
      goto LABEL_73;
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
        goto LABEL_73;
      }

      v20 = (v19 - *v19);
      v21 = *v20;
      if (v21 >= 5 && v20[2] && (v29 < 2 || v29 - 1 < v19 + v20[2] - v28))
      {
        goto LABEL_73;
      }

      if (!flatbuffers::Table::VerifyOffset(v19, &v28, 6u))
      {
        goto LABEL_73;
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
          if (v23 > 5)
          {
            if (*(v19 + v20[2]) > 8u)
            {
              if (v23 == 9)
              {
                if (v22 && !siri::speech::schema_fb::ResetServerEndpointer::Verify(v22, &v28))
                {
                  goto LABEL_73;
                }
              }

              else if (v23 == 10)
              {
                if (v22 && !siri::speech::schema_fb::CheckForSpeechRequest::Verify(v22, &v28))
                {
                  goto LABEL_73;
                }
              }

              else if (v23 != 11 || v22 && !siri::speech::schema_fb::RecognitionSausage::Verify(v22, &v28))
              {
                goto LABEL_73;
              }
            }

            else if (v23 == 6)
            {
              if (v22 && !siri::speech::schema_fb::SetEndpointerState::Verify(v22, &v28))
              {
                goto LABEL_73;
              }
            }

            else if (v23 == 7)
            {
              if (v22 && !siri::speech::schema_fb::TTSWordPhonemes::Verify(v22, &v28))
              {
                goto LABEL_73;
              }
            }

            else if (v23 != 8 || v22 && !siri::speech::schema_fb::FinishAudio::Verify(v22, &v28))
            {
              goto LABEL_73;
            }
          }

          else if (*(v19 + v20[2]) > 2u)
          {
            if (v23 == 3)
            {
              if (v22 && !siri::speech::schema_fb::SetRequestOrigin::Verify(v22, &v28))
              {
                goto LABEL_73;
              }
            }

            else if (v23 == 4)
            {
              if (v22 && !siri::speech::schema_fb::SetSpeechContext::Verify(v22, &v28))
              {
                goto LABEL_73;
              }
            }

            else if (v23 != 5 || v22 && !siri::speech::schema_fb::SetSpeechProfile::Verify(v22, &v28))
            {
              goto LABEL_73;
            }
          }

          else if (*(v19 + v20[2]))
          {
            if (v23 == 1)
            {
              if (v22 && !siri::speech::schema_fb::StartSpeechRequest::Verify(v22, &v28))
              {
                goto LABEL_73;
              }
            }

            else if (v22 && !siri::speech::schema_fb::TextToSpeechResource::Verify(v22, &v28))
            {
LABEL_73:
              v26 = 0;
              goto LABEL_74;
            }
          }
        }

        goto LABEL_71;
      }

      if (v21 >= 5)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_71:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_72:
  v26 = v11;
LABEL_74:

  return v26;
}

@end