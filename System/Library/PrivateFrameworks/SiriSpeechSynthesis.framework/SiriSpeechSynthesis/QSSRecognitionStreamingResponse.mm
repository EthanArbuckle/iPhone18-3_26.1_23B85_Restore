@interface QSSRecognitionStreamingResponse
- (Offset<siri::speech::qss_fb::RecognitionStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded;
- (QSSCheckForSpeechResponse)contentAsQSSCheckForSpeechResponse;
- (QSSClientSetupInfo)contentAsQSSClientSetupInfo;
- (QSSEndPointCandidate)contentAsQSSEndPointCandidate;
- (QSSEndPointLikelihood)contentAsQSSEndPointLikelihood;
- (QSSFinalSpeechRecognitionResponse)contentAsQSSFinalSpeechRecognitionResponse;
- (QSSPartialSpeechRecognitionResponse)contentAsQSSPartialSpeechRecognitionResponse;
- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate;
- (QSSRecognitionProgress)contentAsQSSRecognitionProgress;
- (QSSRecognitionStreamingResponse)initWithFlatbuffData:(id)data root:(const RecognitionStreamingResponse *)root verify:(BOOL)verify;
- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse;
- (QSSServerEndpointFeatures)contentAsQSSServerEndpointFeatures;
- (QSSUpdatedAcousticProfile)contentAsQSSUpdatedAcousticProfile;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSRecognitionStreamingResponse

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
  v2.var0 = [(QSSRecognitionStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__47__QSSRecognitionStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::RecognitionStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(QSSRecognitionStreamingResponse *)self content_type];
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 1)
  {
    contentAsQSSFinalSpeechRecognitionResponse = [(QSSRecognitionStreamingResponse *)self contentAsQSSFinalSpeechRecognitionResponse];
    v7 = [contentAsQSSFinalSpeechRecognitionResponse addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 2)
  {
    contentAsQSSPartialSpeechRecognitionResponse = [(QSSRecognitionStreamingResponse *)self contentAsQSSPartialSpeechRecognitionResponse];
    v10 = [contentAsQSSPartialSpeechRecognitionResponse addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 3)
  {
    contentAsQSSUpdatedAcousticProfile = [(QSSRecognitionStreamingResponse *)self contentAsQSSUpdatedAcousticProfile];
    v13 = [contentAsQSSUpdatedAcousticProfile addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 4)
  {
    contentAsQSSEndPointLikelihood = [(QSSRecognitionStreamingResponse *)self contentAsQSSEndPointLikelihood];
    v16 = [contentAsQSSEndPointLikelihood addObjectToBuffer:buffer];

    v50 = v16;
  }

  else
  {
    v50 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 5)
  {
    contentAsQSSEndPointCandidate = [(QSSRecognitionStreamingResponse *)self contentAsQSSEndPointCandidate];
    v18 = [contentAsQSSEndPointCandidate addObjectToBuffer:buffer];

    v49 = v18;
  }

  else
  {
    v49 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 6)
  {
    contentAsQSSRecognitionProgress = [(QSSRecognitionStreamingResponse *)self contentAsQSSRecognitionProgress];
    v20 = [contentAsQSSRecognitionProgress addObjectToBuffer:buffer];

    v48 = v20;
  }

  else
  {
    v48 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 7)
  {
    contentAsQSSCheckForSpeechResponse = [(QSSRecognitionStreamingResponse *)self contentAsQSSCheckForSpeechResponse];
    v22 = [contentAsQSSCheckForSpeechResponse addObjectToBuffer:buffer];

    v47 = v22;
  }

  else
  {
    v47 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 8)
  {
    contentAsQSSRecognitionCandidate = [(QSSRecognitionStreamingResponse *)self contentAsQSSRecognitionCandidate];
    v24 = [contentAsQSSRecognitionCandidate addObjectToBuffer:buffer];

    v46 = v24;
  }

  else
  {
    v46 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 9)
  {
    contentAsQSSRequestStatsResponse = [(QSSRecognitionStreamingResponse *)self contentAsQSSRequestStatsResponse];
    v26 = [contentAsQSSRequestStatsResponse addObjectToBuffer:buffer];

    v45 = v26;
  }

  else
  {
    v45 = 0;
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 10)
  {
    contentAsQSSServerEndpointFeatures = [(QSSRecognitionStreamingResponse *)self contentAsQSSServerEndpointFeatures];
    v28 = [contentAsQSSServerEndpointFeatures addObjectToBuffer:buffer];

    v44 = v28;
  }

  else
  {
    v44 = 0;
  }

  v29 = v14;
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 11)
  {
    contentAsQSSClientSetupInfo = [(QSSRecognitionStreamingResponse *)self contentAsQSSClientSetupInfo];
    v31 = [contentAsQSSClientSetupInfo addObjectToBuffer:buffer];

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v11;
  v42 = v32;
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 12)
  {
    v34 = [(QSSRecognitionStreamingResponse *)self contentAsQSSAudioLimitExceeded:v32];
    v35 = [v34 addObjectToBuffer:buffer];
    v36 = v8;

    v37 = v35;
  }

  else
  {
    v36 = v8;
    v37 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v38 = *(buffer + 5);
  v39 = *(buffer + 6);
  v40 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type);
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v36);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v33);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v29);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v50);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 5)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v49);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 6)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v48);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 7)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v47);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v46);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v45);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v44);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v43);
  }

  if ([(QSSRecognitionStreamingResponse *)self content_type]== 12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v37);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v40 - v39 + v38);
}

- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded
{
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 12)
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
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 11)
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
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 10)
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
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 9)
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
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 8)
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

- (QSSCheckForSpeechResponse)contentAsQSSCheckForSpeechResponse
{
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSCheckForSpeechResponse alloc];
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

      v3 = [(QSSCheckForSpeechResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 6)
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

- (QSSEndPointCandidate)contentAsQSSEndPointCandidate
{
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSEndPointCandidate alloc];
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

      v3 = [(QSSEndPointCandidate *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSEndPointLikelihood)contentAsQSSEndPointLikelihood
{
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSEndPointLikelihood alloc];
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

      v3 = [(QSSEndPointLikelihood *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSUpdatedAcousticProfile)contentAsQSSUpdatedAcousticProfile
{
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSUpdatedAcousticProfile alloc];
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

      v3 = [(QSSUpdatedAcousticProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 2)
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
  if ([(QSSRecognitionStreamingResponse *)self content_type]== 1)
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

- (QSSRecognitionStreamingResponse)initWithFlatbuffData:(id)data root:(const RecognitionStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v32.receiver = self;
  v32.super_class = QSSRecognitionStreamingResponse;
  v10 = [(QSSRecognitionStreamingResponse *)&v32 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_62;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_63;
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
    goto LABEL_61;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_63;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v27 = bytes3;
  v28 = v18;
  v29 = xmmword_26914CD70;
  v30 = 0;
  v31 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_61;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v27, v11->_root->var0) || (v20 = (v19 - *v19), v21 = *v20, v21 >= 5) && v20[2] && (v28 < 2 || v28 - 1 < v19 + v20[2] - v27) || !flatbuffers::Table::VerifyOffset(v19, &v27, 6u))
  {
LABEL_63:
    v25 = 0;
    goto LABEL_64;
  }

  if (v21 >= 7)
  {
    v22 = v20[3];
    if (v20[3])
    {
      v22 = (v22 + v19 + *(v22 + v19));
    }

    goto LABEL_24;
  }

  if (v21 >= 5)
  {
    v22 = 0;
LABEL_24:
    if (v20[2])
    {
      switch(*(v19 + v20[2]))
      {
        case 0:
          break;
        case 1:
          if (v22 && !siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 2:
          if (v22 && !siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 3:
          if (v22 && !siri::speech::schema_fb::UpdatedAcousticProfile::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 4:
          if (v22 && !siri::speech::schema_fb::EndPointLikelihood::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 5:
          if (v22 && !siri::speech::schema_fb::EndPointCandidate::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 6:
          if (v22 && !siri::speech::schema_fb::RecognitionProgress::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 7:
          if (v22 && !siri::speech::schema_fb::SetEndpointerState::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 8:
          if (!v22 || siri::speech::schema_fb::RecognitionCandidate::Verify(v22, &v27))
          {
            break;
          }

          goto LABEL_63;
        case 9:
          if (v22 && !siri::speech::schema_fb::RequestStatsResponse::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 0xA:
          if (v22 && !siri::speech::schema_fb::ServerEndpointFeatures::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 0xB:
          if (v22 && !siri::speech::schema_fb::ClientSetupInfo::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 0xC:
          if (v22 && !flatbuffers::Verifier::VerifyTableStart(&v27, v22))
          {
            goto LABEL_63;
          }

          break;
        default:
          goto LABEL_63;
      }
    }
  }

LABEL_61:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_62:
  v25 = v11;
LABEL_64:

  return v25;
}

@end