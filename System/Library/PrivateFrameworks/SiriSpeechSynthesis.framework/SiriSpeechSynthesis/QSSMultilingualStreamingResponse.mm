@interface QSSMultilingualStreamingResponse
- (Offset<siri::speech::qss_fb::MultilingualStreamingResponse>)addObjectToBuffer:(void *)a3;
- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded;
- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse;
- (QSSFinalSpeechRecognitionResponse)contentAsQSSFinalSpeechRecognitionResponse;
- (QSSMultilingualStreamingResponse)initWithFlatbuffData:(id)a3 root:(const MultilingualStreamingResponse *)a4 verify:(BOOL)a5;
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

- (Offset<siri::speech::qss_fb::MultilingualStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSMultilingualStreamingResponse *)self content_type];
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 1)
  {
    v6 = [(QSSMultilingualStreamingResponse *)self contentAsQSSFinalSpeechRecognitionResponse];
    LODWORD(v7) = [v6 addObjectToBuffer:a3];

    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 2)
  {
    v8 = [(QSSMultilingualStreamingResponse *)self contentAsQSSPartialSpeechRecognitionResponse];
    v9 = [v8 addObjectToBuffer:a3];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 3)
  {
    v11 = [(QSSMultilingualStreamingResponse *)self contentAsQSSRecognitionCandidate];
    v12 = [v11 addObjectToBuffer:a3];

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 4)
  {
    v14 = [(QSSMultilingualStreamingResponse *)self contentAsQSSRequestStatsResponse];
    v15 = [v14 addObjectToBuffer:a3];

    v30 = v15;
  }

  else
  {
    v30 = 0;
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 5)
  {
    v16 = [(QSSMultilingualStreamingResponse *)self contentAsQSSAudioLimitExceeded];
    v17 = [v16 addObjectToBuffer:a3];

    v28 = v17;
  }

  else
  {
    v28 = 0;
  }

  v18 = v5;
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 6)
  {
    v19 = [(QSSMultilingualStreamingResponse *)self contentAsQSSFinalBlazarResponse];
    v20 = [v19 addObjectToBuffer:a3];
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

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v25 = *(a3 + 5);
  v24 = *(a3 + 6);
  v26 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v18);
  if ([(QSSMultilingualStreamingResponse *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v22);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v10);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v21);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v30);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 5)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v29);
  }

  if ([(QSSMultilingualStreamingResponse *)self content_type]== 6)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v23);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v26 - v24 + v25);
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

- (QSSMultilingualStreamingResponse)initWithFlatbuffData:(id)a3 root:(const MultilingualStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v33.receiver = self;
  v33.super_class = QSSMultilingualStreamingResponse;
  v10 = [(QSSMultilingualStreamingResponse *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_52;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_53;
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
      goto LABEL_53;
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
  v24 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v24;

LABEL_52:
  v26 = v11;
LABEL_54:

  return v26;
}

@end