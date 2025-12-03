@interface QSSMultilingualStreamingResponse
- (Offset<siri::speech::qss_fb::MultilingualStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded;
- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse;
- (QSSFinalSpeechRecognitionResponse)contentAsQSSFinalSpeechRecognitionResponse;
- (QSSMultilingualStreamingResponse)initWithFlatbuffData:(id)data root:(const MultilingualStreamingResponse *)root verify:(BOOL)verify;
- (QSSPartialSpeechRecognitionResponse)contentAsQSSPartialSpeechRecognitionResponse;
- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate;
- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSMultilingualStreamingResponse

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
  v2.var0 = [(QSSMultilingualStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__48__QSSMultilingualStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::MultilingualStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(QSSMultilingualStreamingResponse *)self content_type];
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 1)
  {
    contentAsQSSFinalSpeechRecognitionResponse = [(QSSMultilingualStreamingResponse *)self contentAsQSSFinalSpeechRecognitionResponse];
    LODWORD(v7) = [contentAsQSSFinalSpeechRecognitionResponse addObjectToBuffer:buffer];

    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 2)
  {
    contentAsQSSPartialSpeechRecognitionResponse = [(QSSMultilingualStreamingResponse *)self contentAsQSSPartialSpeechRecognitionResponse];
    v9 = [contentAsQSSPartialSpeechRecognitionResponse addObjectToBuffer:buffer];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 3)
  {
    contentAsQSSRecognitionCandidate = [(QSSMultilingualStreamingResponse *)self contentAsQSSRecognitionCandidate];
    v12 = [contentAsQSSRecognitionCandidate addObjectToBuffer:buffer];

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 4)
  {
    contentAsQSSRequestStatsResponse = [(QSSMultilingualStreamingResponse *)self contentAsQSSRequestStatsResponse];
    v15 = [contentAsQSSRequestStatsResponse addObjectToBuffer:buffer];

    v30 = v15;
  }

  else
  {
    v30 = 0;
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 5)
  {
    contentAsQSSAudioLimitExceeded = [(QSSMultilingualStreamingResponse *)self contentAsQSSAudioLimitExceeded];
    v17 = [contentAsQSSAudioLimitExceeded addObjectToBuffer:buffer];

    v28 = v17;
  }

  else
  {
    v28 = 0;
  }

  v18 = content_type;
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 6)
  {
    contentAsQSSFinalBlazarResponse = [(QSSMultilingualStreamingResponse *)self contentAsQSSFinalBlazarResponse];
    v20 = [contentAsQSSFinalBlazarResponse addObjectToBuffer:buffer];
    v21 = v13;
    v22 = v7;

    v23 = v20;
  }

  else
  {
    v21 = v13;
    v22 = v7;
    v23 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v25 = *(buffer + 5);
  v24 = *(buffer + 6);
  v26 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, v18);
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v22);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v10);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v21);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v30);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 5)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v29);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 6)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v23);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v26 - v24 + v25);
}

- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse
{
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 6)
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
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 5)
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

- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse
{
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 4)
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
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 3)
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

- (QSSPartialSpeechRecognitionResponse)contentAsQSSPartialSpeechRecognitionResponse
{
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 2)
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
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 1)
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

- (QSSMultilingualStreamingResponse)initWithFlatbuffData:(id)data root:(const MultilingualStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = QSSMultilingualStreamingResponse;
  v10 = [(QSSMultilingualStreamingResponse *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_52;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_53;
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
      goto LABEL_53;
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
        goto LABEL_53;
      }

      v20 = (v19 - *v19);
      v21 = *v20;
      if (v21 >= 5 && v20[2] && (v29 < 2 || v29 - 1 < v19 + v20[2] - v28))
      {
        goto LABEL_53;
      }

      if (!flatbuffers::Table::VerifyOffset(v19, &v28, 6u))
      {
        goto LABEL_53;
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
          if (v23 <= 2)
          {
            if (*(v19 + v20[2]))
            {
              if (v23 == 1)
              {
                if (v22 && !siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(v22, &v28))
                {
                  goto LABEL_53;
                }
              }

              else if (v23 != 2 || v22 && !siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(v22, &v28))
              {
                goto LABEL_53;
              }
            }
          }

          else if (*(v19 + v20[2]) > 4u)
          {
            if (v23 == 5)
            {
              if (v22 && !flatbuffers::Verifier::VerifyTableStart(&v28, v22))
              {
                goto LABEL_53;
              }
            }

            else if (v23 != 6 || v22 && !siri::speech::schema_fb::RecognitionProgress::Verify(v22, &v28))
            {
              goto LABEL_53;
            }
          }

          else if (v23 == 3)
          {
            if (v22 && !siri::speech::schema_fb::RecognitionCandidate::Verify(v22, &v28))
            {
              goto LABEL_53;
            }
          }

          else if (v23 != 4 || v22 && !siri::speech::schema_fb::RequestStatsResponse::Verify(v22, &v28))
          {
LABEL_53:
            v26 = 0;
            goto LABEL_54;
          }
        }

        goto LABEL_51;
      }

      if (v21 >= 5)
      {
        v22 = 0;
        goto LABEL_24;
      }
    }
  }

LABEL_51:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_52:
  v26 = v11;
LABEL_54:

  return v26;
}

@end