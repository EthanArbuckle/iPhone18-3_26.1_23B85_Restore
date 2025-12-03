@interface FTLanguageDetectionStreamingResponse
+ (Class)content_immutableClassForType:(int64_t)type;
+ (int64_t)content_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)content;
- (FTLanguageDetectionResponse)contentAsFTLanguageDetectionResponse;
- (FTLanguageDetectionStreamingResponse)initWithFlatbuffData:(id)data root:(const LanguageDetectionStreamingResponse *)root verify:(BOOL)verify;
- (Offset<siri::speech::qss_fb::LanguageDetectionStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTLanguageDetectionStreamingResponse

- (FTLanguageDetectionStreamingResponse)initWithFlatbuffData:(id)data root:(const LanguageDetectionStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTLanguageDetectionStreamingResponse;
  v10 = [(FTLanguageDetectionStreamingResponse *)&v29 init];
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
        if (!siri::speech::qss_fb::LanguageDetectionStreamingResponse::Verify(v19, &v24))
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

- (FTLanguageDetectionResponse)contentAsFTLanguageDetectionResponse
{
  if ([(FTLanguageDetectionStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTLanguageDetectionResponse alloc];
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

      v3 = [(FTLanguageDetectionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTLanguageDetectionStreamingResponse *)self content_type]== 1)
  {
    contentAsFTLanguageDetectionResponse = [(FTLanguageDetectionStreamingResponse *)self contentAsFTLanguageDetectionResponse];
  }

  else
  {
    contentAsFTLanguageDetectionResponse = 0;
  }

  return contentAsFTLanguageDetectionResponse;
}

+ (Class)content_immutableClassForType:(int64_t)type
{
  if (type == 1)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)content_typeForImmutableObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (Offset<siri::speech::qss_fb::LanguageDetectionStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(FTLanguageDetectionStreamingResponse *)self content_type];
  if ([(FTLanguageDetectionStreamingResponse *)self content_type]== 1)
  {
    contentAsFTLanguageDetectionResponse = [(FTLanguageDetectionStreamingResponse *)self contentAsFTLanguageDetectionResponse];
    v7 = [contentAsFTLanguageDetectionResponse addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(buffer + 70) = 1;
  v10 = *(buffer + 5);
  v9 = *(buffer + 6);
  v11 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type, 0);
  if ([(FTLanguageDetectionStreamingResponse *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v11 - v9 + v10);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTLanguageDetectionStreamingResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__52__FTLanguageDetectionStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
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