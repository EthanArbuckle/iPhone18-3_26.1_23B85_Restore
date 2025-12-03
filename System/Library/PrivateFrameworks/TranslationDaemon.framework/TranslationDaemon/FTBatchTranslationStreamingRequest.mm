@interface FTBatchTranslationStreamingRequest
+ (Class)content_immutableClassForType:(int64_t)type;
+ (int64_t)content_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)content;
- (FTBatchTranslationFeedbackRequest)contentAsFTBatchTranslationFeedbackRequest;
- (FTBatchTranslationLoggingRequest)contentAsFTBatchTranslationLoggingRequest;
- (FTBatchTranslationRequest)contentAsFTBatchTranslationRequest;
- (FTBatchTranslationStreamingRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationStreamingRequest *)root verify:(BOOL)verify;
- (FTTranslationSupportedLanguagesRequest)contentAsFTTranslationSupportedLanguagesRequest;
- (Offset<siri::speech::qss_fb::BatchTranslationStreamingRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTBatchTranslationStreamingRequest

- (FTBatchTranslationStreamingRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTBatchTranslationStreamingRequest;
  v10 = [(FTBatchTranslationStreamingRequest *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_15;
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
        goto LABEL_15;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
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
  content_type = [(FTBatchTranslationStreamingRequest *)self content_type];
  contentAsFTBatchTranslationLoggingRequest = 0;
  if (content_type > 2)
  {
    if (content_type == 3)
    {
      contentAsFTBatchTranslationLoggingRequest = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationLoggingRequest];
    }

    else if (content_type == 4)
    {
      contentAsFTBatchTranslationLoggingRequest = [(FTBatchTranslationStreamingRequest *)self contentAsFTTranslationSupportedLanguagesRequest];
    }
  }

  else if (content_type == 1)
  {
    contentAsFTBatchTranslationLoggingRequest = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationRequest];
  }

  else if (content_type == 2)
  {
    contentAsFTBatchTranslationLoggingRequest = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationFeedbackRequest];
  }

  return contentAsFTBatchTranslationLoggingRequest;
}

+ (Class)content_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8D88[type - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (int64_t)content_typeForImmutableObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::BatchTranslationStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  content_type = [(FTBatchTranslationStreamingRequest *)self content_type];
  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 1)
  {
    contentAsFTBatchTranslationRequest = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationRequest];
    v7 = [contentAsFTBatchTranslationRequest addObjectToBuffer:buffer];
  }

  else
  {
    v7 = 0;
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 2)
  {
    contentAsFTBatchTranslationFeedbackRequest = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationFeedbackRequest];
    v9 = [contentAsFTBatchTranslationFeedbackRequest addObjectToBuffer:buffer];
  }

  else
  {
    v9 = 0;
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 3)
  {
    contentAsFTBatchTranslationLoggingRequest = [(FTBatchTranslationStreamingRequest *)self contentAsFTBatchTranslationLoggingRequest];
    v11 = [contentAsFTBatchTranslationLoggingRequest addObjectToBuffer:buffer];
  }

  else
  {
    v11 = 0;
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 4)
  {
    contentAsFTTranslationSupportedLanguagesRequest = [(FTBatchTranslationStreamingRequest *)self contentAsFTTranslationSupportedLanguagesRequest];
    v13 = [contentAsFTTranslationSupportedLanguagesRequest addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *(buffer + 70) = 1;
  v15 = *(buffer + 5);
  v16 = *(buffer + 6);
  v17 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type, 0);
  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v7);
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v9);
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v11);
  }

  if ([(FTBatchTranslationStreamingRequest *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v14);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v17 - v16 + v15);
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