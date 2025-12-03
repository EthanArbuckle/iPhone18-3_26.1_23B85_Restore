@interface QSSTextToSpeechStreamingStreamingResponse
- (Offset<siri::speech::qss_fb::TextToSpeechStreamingStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (QSSBeginTextToSpeechStreamingResponse)contentAsQSSBeginTextToSpeechStreamingResponse;
- (QSSFinalTextToSpeechStreamingResponse)contentAsQSSFinalTextToSpeechStreamingResponse;
- (QSSPartialTextToSpeechStreamingResponse)contentAsQSSPartialTextToSpeechStreamingResponse;
- (QSSQssAckResponse)contentAsQSSQssAckResponse;
- (QSSTextToSpeechStreamingStreamingResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechStreamingStreamingResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSTextToSpeechStreamingStreamingResponse

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
  v2.var0 = [(QSSTextToSpeechStreamingStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__57__QSSTextToSpeechStreamingStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::TextToSpeechStreamingStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(QSSTextToSpeechStreamingStreamingResponse *)self content_type];
  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 1)
  {
    contentAsQSSQssAckResponse = [(QSSTextToSpeechStreamingStreamingResponse *)self contentAsQSSQssAckResponse];
    LODWORD(v7) = [contentAsQSSQssAckResponse addObjectToBuffer:buffer];

    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 2)
  {
    contentAsQSSBeginTextToSpeechStreamingResponse = [(QSSTextToSpeechStreamingStreamingResponse *)self contentAsQSSBeginTextToSpeechStreamingResponse];
    LODWORD(v9) = [contentAsQSSBeginTextToSpeechStreamingResponse addObjectToBuffer:buffer];

    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 3)
  {
    contentAsQSSPartialTextToSpeechStreamingResponse = [(QSSTextToSpeechStreamingStreamingResponse *)self contentAsQSSPartialTextToSpeechStreamingResponse];
    LODWORD(v11) = [contentAsQSSPartialTextToSpeechStreamingResponse addObjectToBuffer:buffer];

    v11 = v11;
  }

  else
  {
    v11 = 0;
  }

  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 4)
  {
    contentAsQSSFinalTextToSpeechStreamingResponse = [(QSSTextToSpeechStreamingStreamingResponse *)self contentAsQSSFinalTextToSpeechStreamingResponse];
    v13 = [contentAsQSSFinalTextToSpeechStreamingResponse addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v15 = *(buffer + 5);
  v16 = *(buffer + 6);
  v17 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type);
  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v7);
  }

  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v9);
  }

  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v11);
  }

  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v14);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v17 - v16 + v15);
}

- (QSSFinalTextToSpeechStreamingResponse)contentAsQSSFinalTextToSpeechStreamingResponse
{
  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSFinalTextToSpeechStreamingResponse alloc];
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

      v3 = [(QSSFinalTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSPartialTextToSpeechStreamingResponse)contentAsQSSPartialTextToSpeechStreamingResponse
{
  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSPartialTextToSpeechStreamingResponse alloc];
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

      v3 = [(QSSPartialTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSBeginTextToSpeechStreamingResponse)contentAsQSSBeginTextToSpeechStreamingResponse
{
  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSBeginTextToSpeechStreamingResponse alloc];
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

      v3 = [(QSSBeginTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSQssAckResponse)contentAsQSSQssAckResponse
{
  if ([(QSSTextToSpeechStreamingStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSQssAckResponse alloc];
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

      v3 = [(QSSQssAckResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (QSSTextToSpeechStreamingStreamingResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechStreamingStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = QSSTextToSpeechStreamingStreamingResponse;
  v10 = [(QSSTextToSpeechStreamingStreamingResponse *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_43;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_44;
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
      goto LABEL_44;
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
        goto LABEL_44;
      }

      v20 = (v19 - *v19);
      v21 = *v20;
      if (v21 >= 5 && v20[2] && (v29 < 2 || v29 - 1 < v19 + v20[2] - v28))
      {
        goto LABEL_44;
      }

      if (!flatbuffers::Table::VerifyOffset(v19, &v28, 6u))
      {
        goto LABEL_44;
      }

      if (v21 >= 7)
      {
        v22 = v20[3];
        if (v20[3])
        {
          v22 = &v22[v19 + *&v22[v19]];
        }

LABEL_24:
        if (v20[2])
        {
          v23 = *(v19 + v20[2]);
          if (v23 <= 1)
          {
            if (*(v19 + v20[2]) && (v23 != 1 || v22 && !flatbuffers::Verifier::VerifyTableStart(&v28, v22)))
            {
              goto LABEL_44;
            }
          }

          else if (v23 == 2)
          {
            if (v22 && !siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(v22, &v28))
            {
              goto LABEL_44;
            }
          }

          else if (v23 == 3)
          {
            if (v22 && !siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v22, &v28))
            {
              goto LABEL_44;
            }
          }

          else if (v23 != 4 || v22 && !siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(v22, &v28))
          {
LABEL_44:
            v26 = 0;
            goto LABEL_45;
          }
        }

        goto LABEL_42;
      }

      if (v21 >= 5)
      {
        v22 = 0;
        goto LABEL_24;
      }
    }
  }

LABEL_42:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_43:
  v26 = v11;
LABEL_45:

  return v26;
}

@end