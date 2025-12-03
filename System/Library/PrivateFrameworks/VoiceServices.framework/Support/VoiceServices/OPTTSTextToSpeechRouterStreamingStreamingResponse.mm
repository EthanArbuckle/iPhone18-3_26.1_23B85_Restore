@interface OPTTSTextToSpeechRouterStreamingStreamingResponse
- (OPTTSBeginTextToSpeechStreamingResponse)contentAsOPTTSBeginTextToSpeechStreamingResponse;
- (OPTTSFinalTextToSpeechStreamingResponse)contentAsOPTTSFinalTextToSpeechStreamingResponse;
- (OPTTSPartialTextToSpeechStreamingResponse)contentAsOPTTSPartialTextToSpeechStreamingResponse;
- (OPTTSTextToSpeechRouterStreamingStreamingResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechRouterStreamingStreamingResponse *)root verify:(BOOL)verify;
- (Offset<siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation OPTTSTextToSpeechRouterStreamingStreamingResponse

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_2728326A0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__65__OPTTSTextToSpeechRouterStreamingStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type];
  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 1)
  {
    contentAsOPTTSBeginTextToSpeechStreamingResponse = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSBeginTextToSpeechStreamingResponse];
    LODWORD(v7) = [contentAsOPTTSBeginTextToSpeechStreamingResponse addObjectToBuffer:buffer];

    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 2)
  {
    contentAsOPTTSPartialTextToSpeechStreamingResponse = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSPartialTextToSpeechStreamingResponse];
    LODWORD(v9) = [contentAsOPTTSPartialTextToSpeechStreamingResponse addObjectToBuffer:buffer];

    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 3)
  {
    contentAsOPTTSFinalTextToSpeechStreamingResponse = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSFinalTextToSpeechStreamingResponse];
    v11 = [contentAsOPTTSFinalTextToSpeechStreamingResponse addObjectToBuffer:buffer];

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v13 = *(buffer + 5);
  v14 = *(buffer + 6);
  v15 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type);
  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v7);
  }

  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v9);
  }

  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(buffer, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v15 - v14 + v13);
}

- (OPTTSFinalTextToSpeechStreamingResponse)contentAsOPTTSFinalTextToSpeechStreamingResponse
{
  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [OPTTSFinalTextToSpeechStreamingResponse alloc];
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

      v3 = [(OPTTSFinalTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (OPTTSPartialTextToSpeechStreamingResponse)contentAsOPTTSPartialTextToSpeechStreamingResponse
{
  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [OPTTSPartialTextToSpeechStreamingResponse alloc];
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

      v3 = [(OPTTSPartialTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (OPTTSBeginTextToSpeechStreamingResponse)contentAsOPTTSBeginTextToSpeechStreamingResponse
{
  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [OPTTSBeginTextToSpeechStreamingResponse alloc];
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

      v3 = [(OPTTSBeginTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (OPTTSTextToSpeechRouterStreamingStreamingResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechRouterStreamingStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v33.receiver = self;
  v33.super_class = OPTTSTextToSpeechRouterStreamingStreamingResponse;
  v10 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_39;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_40;
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
      goto LABEL_40;
    }

    bytes3 = [(NSData *)v10->_data bytes];
    v18 = [(NSData *)v10->_data length];
    v28 = bytes3;
    v29 = v18;
    v30 = xmmword_2728326B0;
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
        goto LABEL_40;
      }

      v20 = (v19 - *v19);
      v21 = *v20;
      if (v21 >= 5 && v20[2] && (v29 < 2 || v29 - 1 < v19 + v20[2] - v28))
      {
        goto LABEL_40;
      }

      if (!flatbuffers::Table::VerifyOffset(v19, &v28, 6u))
      {
        goto LABEL_40;
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
          if (v23 > 1)
          {
            if (v23 == 2)
            {
              if (v22 && !siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v22, &v28))
              {
                goto LABEL_40;
              }
            }

            else if (v23 != 3 || v22 && !siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(v22, &v28))
            {
              goto LABEL_40;
            }
          }

          else if (*(v19 + v20[2]) && (v23 != 1 || v22 && !siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(v22, &v28)))
          {
LABEL_40:
            v26 = 0;
            goto LABEL_41;
          }
        }

        goto LABEL_38;
      }

      if (v21 >= 5)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_38:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_39:
  v26 = v11;
LABEL_41:

  return v26;
}

@end