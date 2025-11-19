@interface FTBatchTranslationStreamingRequest
+ (Class)content_immutableClassForType:(int64_t)a3;
+ (int64_t)content_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)content;
- (FTBatchTranslationFeedbackRequest)contentAsFTBatchTranslationFeedbackRequest;
- (FTBatchTranslationLoggingRequest)contentAsFTBatchTranslationLoggingRequest;
- (FTBatchTranslationRequest)contentAsFTBatchTranslationRequest;
- (FTBatchTranslationStreamingRequest)initWithFlatbuffData:(id)a3 root:(const BatchTranslationStreamingRequest *)a4 verify:(BOOL)a5;
- (FTTranslationSupportedLanguagesRequest)contentAsFTTranslationSupportedLanguagesRequest;
- (Offset<siri::speech::qss_fb::BatchTranslationStreamingRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTBatchTranslationStreamingRequest

- (FTBatchTranslationStreamingRequest)initWithFlatbuffData:(id)a3 root:(const BatchTranslationStreamingRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTBatchTranslationStreamingRequest;
  v10 = [(FTBatchTranslationStreamingRequest *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_15;
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
        goto LABEL_15;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
      v25 = v18;
      v26 = xmmword_233005E20;
      v27 = 0;
      LOBYTE(v28) = 1;
      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::qss_fb::BatchTranslationStreamingRequest::Verify(v19, &v24))
        {
LABEL_15:
          v22 = 0;
          goto LABEL_16;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_16:

  return v22;
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

- (FTBatchTranslationRequest)contentAsFTBatchTranslationRequest
{
  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTBatchTranslationRequest alloc];
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

      v3 = [(FTBatchTranslationRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBatchTranslationFeedbackRequest)contentAsFTBatchTranslationFeedbackRequest
{
  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTBatchTranslationFeedbackRequest alloc];
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

      v3 = [(FTBatchTranslationFeedbackRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBatchTranslationLoggingRequest)contentAsFTBatchTranslationLoggingRequest
{
  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTBatchTranslationLoggingRequest alloc];
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

      v3 = [(FTBatchTranslationLoggingRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTTranslationSupportedLanguagesRequest)contentAsFTTranslationSupportedLanguagesRequest
{
  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTTranslationSupportedLanguagesRequest alloc];
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

      v3 = [(FTTranslationSupportedLanguagesRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLTBFBufferAccessor)content
{
  v3 = [(FTBatchTranslationStreamingRequest *)self content_type];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationLoggingRequest];
    }

    else if (v3 == 4)
    {
      v4 = [(FTBatchTranslationStreamingRequest *)self contentAsFTTranslationSupportedLanguagesRequest];
    }
  }

  else if (v3 == 1)
  {
    v4 = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationRequest];
  }

  else if (v3 == 2)
  {
    v4 = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationFeedbackRequest];
  }

  return v4;
}

+ (Class)content_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8D88[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
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

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::BatchTranslationStreamingRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTBatchTranslationStreamingRequest *)self content_type];
  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 1)
  {
    v6 = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationRequest];
    v7 = [v6 addObjectToBuffer:a3];
  }

  else
  {
    v7 = 0;
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 2)
  {
    v8 = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationFeedbackRequest];
    v9 = [v8 addObjectToBuffer:a3];
  }

  else
  {
    v9 = 0;
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 3)
  {
    v10 = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationLoggingRequest];
    v11 = [v10 addObjectToBuffer:a3];
  }

  else
  {
    v11 = 0;
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 4)
  {
    v12 = [(FTBatchTranslationStreamingRequest *)self contentAsFTTranslationSupportedLanguagesRequest];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *(a3 + 70) = 1;
  v15 = *(a3 + 5);
  v16 = *(a3 + 6);
  v17 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5, 0);
  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v7);
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v9);
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v11);
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v14);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v17 - v16 + v15);
}

- (id)flatbuffData
{
  v3 = 0;
  v4 = 0;
  v5 = xmmword_233005E30;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 256;
  v11 = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBatchTranslationStreamingRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__50__FTBatchTranslationStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end