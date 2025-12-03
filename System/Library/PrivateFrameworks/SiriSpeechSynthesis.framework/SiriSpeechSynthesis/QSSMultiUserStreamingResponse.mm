@interface QSSMultiUserStreamingResponse
- (Offset<siri::speech::qss_fb::MultiUserStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded;
- (QSSClientSetupInfo)contentAsQSSClientSetupInfo;
- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse;
- (QSSFinalSpeechRecognitionResponse)contentAsQSSFinalSpeechRecognitionResponse;
- (QSSMultiUserStreamingResponse)initWithFlatbuffData:(id)data root:(const MultiUserStreamingResponse *)root verify:(BOOL)verify;
- (QSSPartialSpeechRecognitionResponse)contentAsQSSPartialSpeechRecognitionResponse;
- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate;
- (QSSRecognitionProgress)contentAsQSSRecognitionProgress;
- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse;
- (QSSServerEndpointFeatures)contentAsQSSServerEndpointFeatures;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSMultiUserStreamingResponse

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
  v2.var0 = [(QSSMultiUserStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__45__QSSMultiUserStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::MultiUserStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(QSSMultiUserStreamingResponse *)self content_type];
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 1)
  {
    contentAsQSSFinalSpeechRecognitionResponse = [(QSSMultiUserStreamingResponse *)self contentAsQSSFinalSpeechRecognitionResponse];
    v7 = [contentAsQSSFinalSpeechRecognitionResponse addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 2)
  {
    contentAsQSSPartialSpeechRecognitionResponse = [(QSSMultiUserStreamingResponse *)self contentAsQSSPartialSpeechRecognitionResponse];
    v10 = [contentAsQSSPartialSpeechRecognitionResponse addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 3)
  {
    contentAsQSSRecognitionProgress = [(QSSMultiUserStreamingResponse *)self contentAsQSSRecognitionProgress];
    v13 = [contentAsQSSRecognitionProgress addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 4)
  {
    contentAsQSSRecognitionCandidate = [(QSSMultiUserStreamingResponse *)self contentAsQSSRecognitionCandidate];
    v16 = [contentAsQSSRecognitionCandidate addObjectToBuffer:buffer];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 5)
  {
    contentAsQSSRequestStatsResponse = [(QSSMultiUserStreamingResponse *)self contentAsQSSRequestStatsResponse];
    v19 = [contentAsQSSRequestStatsResponse addObjectToBuffer:buffer];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 6)
  {
    contentAsQSSServerEndpointFeatures = [(QSSMultiUserStreamingResponse *)self contentAsQSSServerEndpointFeatures];
    v22 = [contentAsQSSServerEndpointFeatures addObjectToBuffer:buffer];

    v38 = v22;
  }

  else
  {
    v38 = 0;
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 7)
  {
    contentAsQSSClientSetupInfo = [(QSSMultiUserStreamingResponse *)self contentAsQSSClientSetupInfo];
    v24 = [contentAsQSSClientSetupInfo addObjectToBuffer:buffer];

    v37 = v24;
  }

  else
  {
    v37 = 0;
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 8)
  {
    contentAsQSSAudioLimitExceeded = [(QSSMultiUserStreamingResponse *)self contentAsQSSAudioLimitExceeded];
    v26 = [contentAsQSSAudioLimitExceeded addObjectToBuffer:buffer];

    v35 = v26;
  }

  else
  {
    v35 = 0;
  }

  v36 = v20;
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 9)
  {
    contentAsQSSFinalBlazarResponse = [(QSSMultiUserStreamingResponse *)self contentAsQSSFinalBlazarResponse];
    v28 = [contentAsQSSFinalBlazarResponse addObjectToBuffer:buffer];
    v29 = v14;

    v34 = v28;
  }

  else
  {
    v29 = v14;
    v34 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v31 = *(buffer + 5);
  v30 = *(buffer + 6);
  v32 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type);
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v8);
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v11);
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v29);
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v17);
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 5)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v36);
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 6)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v38);
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 7)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v37);
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v35);
  }

  if ([(QSSMultiUserStreamingResponse *)self content_type]== 9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v34);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v32 - v30 + v31);
}

- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSFinalBlazarResponse alloc];
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

      v3 = [(QSSFinalBlazarResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSAudioLimitExceeded alloc];
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

      v3 = [(QSSAudioLimitExceeded *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSClientSetupInfo)contentAsQSSClientSetupInfo
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSClientSetupInfo alloc];
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

      v3 = [(QSSClientSetupInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSServerEndpointFeatures)contentAsQSSServerEndpointFeatures
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSServerEndpointFeatures alloc];
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

      v3 = [(QSSServerEndpointFeatures *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSRequestStatsResponse alloc];
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

      v3 = [(QSSRequestStatsResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSRecognitionCandidate alloc];
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

      v3 = [(QSSRecognitionCandidate *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSRecognitionProgress)contentAsQSSRecognitionProgress
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSRecognitionProgress alloc];
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

      v3 = [(QSSRecognitionProgress *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSPartialSpeechRecognitionResponse)contentAsQSSPartialSpeechRecognitionResponse
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSPartialSpeechRecognitionResponse alloc];
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

      v3 = [(QSSPartialSpeechRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSFinalSpeechRecognitionResponse)contentAsQSSFinalSpeechRecognitionResponse
{
  if ([(QSSMultiUserStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSFinalSpeechRecognitionResponse alloc];
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

      v3 = [(QSSFinalSpeechRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (QSSMultiUserStreamingResponse)initWithFlatbuffData:(id)data root:(const MultiUserStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = QSSMultiUserStreamingResponse;
  v10 = [(QSSMultiUserStreamingResponse *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_64;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_65;
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
      goto LABEL_65;
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
        goto LABEL_65;
      }

      v20 = (v19 - *v19);
      v21 = *v20;
      if (v21 >= 5 && v20[2] && (v29 < 2 || v29 - 1 < v19 + v20[2] - v28))
      {
        goto LABEL_65;
      }

      if (!flatbuffers::Table::VerifyOffset(v19, &v28, 6u))
      {
        goto LABEL_65;
      }

      if (v21 >= 7)
      {
        v22 = v20[3];
        if (v20[3])
        {
          v22 = (v22 + v19 + *(v22 + v19));
        }

LABEL_24:
        if (v20[2])
        {
          v23 = *(v19 + v20[2]);
          if (v23 > 4)
          {
            if (*(v19 + v20[2]) <= 6u)
            {
              if (v23 == 5)
              {
                if (v22 && !siri::speech::schema_fb::RequestStatsResponse::Verify(v22, &v28))
                {
                  goto LABEL_65;
                }
              }

              else if (v23 != 6 || v22 && !siri::speech::schema_fb::ServerEndpointFeatures::Verify(v22, &v28))
              {
                goto LABEL_65;
              }
            }

            else if (v23 == 7)
            {
              if (v22 && !siri::speech::schema_fb::ClientSetupInfo::Verify(v22, &v28))
              {
                goto LABEL_65;
              }
            }

            else if (v23 == 8)
            {
              if (v22 && !flatbuffers::Verifier::VerifyTableStart(&v28, v22))
              {
                goto LABEL_65;
              }
            }

            else if (v23 != 9 || v22 && !siri::speech::schema_fb::RecognitionProgress::Verify(v22, &v28))
            {
              goto LABEL_65;
            }
          }

          else if (*(v19 + v20[2]) <= 1u)
          {
            if (*(v19 + v20[2]) && v22 && !siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(v22, &v28))
            {
              goto LABEL_65;
            }
          }

          else if (v23 == 2)
          {
            if (v22 && !siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(v22, &v28))
            {
              goto LABEL_65;
            }
          }

          else if (v23 == 3)
          {
            if (v22 && !siri::speech::schema_fb::RecognitionProgress::Verify(v22, &v28))
            {
              goto LABEL_65;
            }
          }

          else if (v23 != 4 || v22 && !siri::speech::schema_fb::RecognitionCandidate::Verify(v22, &v28))
          {
LABEL_65:
            v26 = 0;
            goto LABEL_66;
          }
        }

        goto LABEL_63;
      }

      if (v21 >= 5)
      {
        v22 = 0;
        goto LABEL_24;
      }
    }
  }

LABEL_63:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_64:
  v26 = v11;
LABEL_66:

  return v26;
}

@end