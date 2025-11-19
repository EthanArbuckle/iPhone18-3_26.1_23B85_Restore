@interface OPTTSTextToSpeechRouterStreamingStreamingResponse
+ (Class)content_immutableClassForType:(int64_t)a3;
+ (int64_t)content_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)content;
- (OPTTSBeginTextToSpeechStreamingResponse)contentAsOPTTSBeginTextToSpeechStreamingResponse;
- (OPTTSFinalTextToSpeechStreamingResponse)contentAsOPTTSFinalTextToSpeechStreamingResponse;
- (OPTTSPartialTextToSpeechStreamingResponse)contentAsOPTTSPartialTextToSpeechStreamingResponse;
- (OPTTSTextToSpeechRouterStreamingStreamingResponse)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRouterStreamingStreamingResponse *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation OPTTSTextToSpeechRouterStreamingStreamingResponse

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1B1C416F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__65__OPTTSTextToSpeechRouterStreamingStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type];
  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 1)
  {
    v6 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSBeginTextToSpeechStreamingResponse];
    LODWORD(v7) = [v6 addObjectToBuffer:a3];

    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 2)
  {
    v8 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSPartialTextToSpeechStreamingResponse];
    LODWORD(v9) = [v8 addObjectToBuffer:a3];

    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 3)
  {
    v10 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSFinalTextToSpeechStreamingResponse];
    v11 = [v10 addObjectToBuffer:a3];

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v13 = *(a3 + 5);
  v14 = *(a3 + 6);
  v15 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5);
  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a3, v7);
  }

  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a3, v9);
  }

  if ([(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a3, v12);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v15 - v14 + v13);
}

- (FLTBFBufferAccessor)content
{
  v3 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self content_type];
  switch(v3)
  {
    case 3:
      v4 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSFinalTextToSpeechStreamingResponse];
      break;
    case 2:
      v4 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSPartialTextToSpeechStreamingResponse];
      break;
    case 1:
      v4 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)self contentAsOPTTSBeginTextToSpeechStreamingResponse];
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
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

- (OPTTSTextToSpeechRouterStreamingStreamingResponse)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRouterStreamingStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v33.receiver = self;
  v33.super_class = OPTTSTextToSpeechRouterStreamingStreamingResponse;
  v10 = [(OPTTSTextToSpeechRouterStreamingStreamingResponse *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_37;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_38;
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
      goto LABEL_38;
    }

    v17 = [(NSData *)v10->_data bytes];
    v18 = [(NSData *)v10->_data length];
    v28 = v17;
    v29 = v18;
    v30 = xmmword_1B1C41700;
    v31 = 0;
    v32 = 1;
    if (v18 >= 0x7FFFFFFF)
    {
      __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
    }

    v19 = v10->_root;
    if (v19)
    {
      if (!apple::aiml::flatbuffers2::Verifier::VerifyTableStart(&v28, v11->_root->var0))
      {
        goto LABEL_38;
      }

      v20 = (v19 - *v19);
      v21 = *v20;
      if (v21 >= 5 && v20[2] && (v29 < 2 || v29 - 1 < v19 + v20[2] - v28))
      {
        goto LABEL_38;
      }

      if (!apple::aiml::flatbuffers2::Table::VerifyOffset(v19, &v28, 6u))
      {
        goto LABEL_38;
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
          if (v23 == 3)
          {
            if (v22 && !siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(v22, &v28))
            {
              goto LABEL_38;
            }
          }

          else if (v23 == 2)
          {
            if (v22 && !siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v22, &v28))
            {
              goto LABEL_38;
            }
          }

          else if (v23 == 1 && v22 && !siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(v22, &v28))
          {
LABEL_38:
            v26 = 0;
            goto LABEL_39;
          }
        }

        goto LABEL_36;
      }

      if (v21 >= 5)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  v24 = [MEMORY[0x1E695DF90] dictionary];
  storage = v11->_storage;
  v11->_storage = v24;

LABEL_37:
  v26 = v11;
LABEL_39:

  return v26;
}

+ (int64_t)content_typeForImmutableObject:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)content_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_1E7AF38D0[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

@end