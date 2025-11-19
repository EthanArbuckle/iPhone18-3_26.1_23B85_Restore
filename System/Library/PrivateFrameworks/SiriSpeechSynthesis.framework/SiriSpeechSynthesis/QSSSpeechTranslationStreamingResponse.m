@interface QSSSpeechTranslationStreamingResponse
- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingResponse>)addObjectToBuffer:(void *)a3;
- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded;
- (QSSClientSetupInfo)contentAsQSSClientSetupInfo;
- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse;
- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate;
- (QSSRecognitionProgress)contentAsQSSRecognitionProgress;
- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse;
- (QSSServerEndpointFeatures)contentAsQSSServerEndpointFeatures;
- (QSSSpeechTranslationFinalRecognitionResponse)contentAsQSSSpeechTranslationFinalRecognitionResponse;
- (QSSSpeechTranslationMtResponse)contentAsQSSSpeechTranslationMtResponse;
- (QSSSpeechTranslationPartialRecognitionResponse)contentAsQSSSpeechTranslationPartialRecognitionResponse;
- (QSSSpeechTranslationServerEndpointFeatures)contentAsQSSSpeechTranslationServerEndpointFeatures;
- (QSSSpeechTranslationStreamingResponse)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationStreamingResponse *)a4 verify:(BOOL)a5;
- (QSSSpeechTranslationTextToSpeechResponse)contentAsQSSSpeechTranslationTextToSpeechResponse;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSSpeechTranslationStreamingResponse

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
  v2.var0 = [(QSSSpeechTranslationStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__53__QSSSpeechTranslationStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSSpeechTranslationStreamingResponse *)self content_type];
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 1)
  {
    v6 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSSpeechTranslationPartialRecognitionResponse];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 2)
  {
    v9 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSSpeechTranslationFinalRecognitionResponse];
    v10 = [v9 addObjectToBuffer:a3];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 3)
  {
    v12 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSAudioLimitExceeded];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 4)
  {
    v15 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSSpeechTranslationMtResponse];
    v16 = [v15 addObjectToBuffer:a3];

    v50 = v16;
  }

  else
  {
    v50 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 5)
  {
    v17 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSSpeechTranslationTextToSpeechResponse];
    v18 = [v17 addObjectToBuffer:a3];

    v49 = v18;
  }

  else
  {
    v49 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 6)
  {
    v19 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSFinalBlazarResponse];
    v20 = [v19 addObjectToBuffer:a3];

    v48 = v20;
  }

  else
  {
    v48 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 7)
  {
    v21 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSRecognitionProgress];
    v22 = [v21 addObjectToBuffer:a3];

    v47 = v22;
  }

  else
  {
    v47 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 8)
  {
    v23 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSRecognitionCandidate];
    v24 = [v23 addObjectToBuffer:a3];

    v46 = v24;
  }

  else
  {
    v46 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 9)
  {
    v25 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSRequestStatsResponse];
    v26 = [v25 addObjectToBuffer:a3];

    v45 = v26;
  }

  else
  {
    v45 = 0;
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 10)
  {
    v27 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSServerEndpointFeatures];
    v28 = [v27 addObjectToBuffer:a3];

    v44 = v28;
  }

  else
  {
    v44 = 0;
  }

  v29 = v14;
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 11)
  {
    v30 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSClientSetupInfo];
    v31 = [v30 addObjectToBuffer:a3];

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v11;
  v42 = v32;
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 12)
  {
    v34 = [(QSSSpeechTranslationStreamingResponse *)self contentAsQSSSpeechTranslationServerEndpointFeatures:v32];
    v35 = [v34 addObjectToBuffer:a3];
    v36 = v8;

    v37 = v35;
  }

  else
  {
    v36 = v8;
    v37 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v38 = *(a3 + 5);
  v39 = *(a3 + 6);
  v40 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5);
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v36);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v33);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v29);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v50);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 5)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v49);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 6)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v48);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 7)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v47);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v46);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v45);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v44);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v43);
  }

  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v37);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v40 - v39 + v38);
}

- (QSSSpeechTranslationServerEndpointFeatures)contentAsQSSSpeechTranslationServerEndpointFeatures
{
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSpeechTranslationServerEndpointFeatures alloc];
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

      v3 = [(QSSSpeechTranslationServerEndpointFeatures *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 11)
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
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 10)
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
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 9)
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
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 8)
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
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 7)
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

- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse
{
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 6)
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

- (QSSSpeechTranslationTextToSpeechResponse)contentAsQSSSpeechTranslationTextToSpeechResponse
{
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSpeechTranslationTextToSpeechResponse alloc];
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

      v3 = [(QSSSpeechTranslationTextToSpeechResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSSpeechTranslationMtResponse)contentAsQSSSpeechTranslationMtResponse
{
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSpeechTranslationMtResponse alloc];
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

      v3 = [(QSSSpeechTranslationMtResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 3)
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

- (QSSSpeechTranslationFinalRecognitionResponse)contentAsQSSSpeechTranslationFinalRecognitionResponse
{
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSpeechTranslationFinalRecognitionResponse alloc];
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

      v3 = [(QSSSpeechTranslationFinalRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSSpeechTranslationPartialRecognitionResponse)contentAsQSSSpeechTranslationPartialRecognitionResponse
{
  if ([(QSSSpeechTranslationStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSSpeechTranslationPartialRecognitionResponse alloc];
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

      v3 = [(QSSSpeechTranslationPartialRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (QSSSpeechTranslationStreamingResponse)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v32.receiver = self;
  v32.super_class = QSSSpeechTranslationStreamingResponse;
  v10 = [(QSSSpeechTranslationStreamingResponse *)&v32 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_62;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_63;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v12 = [(NSData *)v10->_data bytes];
    a4 = v12 + *v12;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_61;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_63;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v27 = v17;
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
          if (v22 && !siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 2:
          if (v22 && !siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 3:
          if (v22 && !flatbuffers::Verifier::VerifyTableStart(&v27, v22))
          {
            goto LABEL_63;
          }

          break;
        case 4:
          if (v22 && !siri::speech::schema_fb::SpeechTranslationMtResponse::Verify(v22, &v27))
          {
            goto LABEL_63;
          }

          break;
        case 5:
          if (v22 && !siri::speech::schema_fb::SpeechTranslationTextToSpeechResponse::Verify(v22, &v27))
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
          if (v22 && !siri::speech::schema_fb::RecognitionProgress::Verify(v22, &v27))
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
          if (v22 && !siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures::Verify(v22, &v27))
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
  v23 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v23;

LABEL_62:
  v25 = v11;
LABEL_64:

  return v25;
}

@end