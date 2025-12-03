@interface OPTTSTextToSpeechRouterStreamingStreamingRequest
+ (Class)content_immutableClassForType:(int64_t)type;
+ (int64_t)content_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)content;
- (OPTTSStartTextToSpeechStreamingRequest)contentAsOPTTSStartTextToSpeechStreamingRequest;
- (OPTTSTextToSpeechRouterStreamingStreamingRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechRouterStreamingStreamingRequest *)root verify:(BOOL)verify;
- (Offset<siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation OPTTSTextToSpeechRouterStreamingStreamingRequest

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
  v2.var0 = [(OPTTSTextToSpeechRouterStreamingStreamingRequest *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__64__OPTTSTextToSpeechRouterStreamingStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::TextToSpeechRouterStreamingStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  content_type = [(OPTTSTextToSpeechRouterStreamingStreamingRequest *)self content_type];
  if ([(OPTTSTextToSpeechRouterStreamingStreamingRequest *)self content_type]== 1)
  {
    contentAsOPTTSStartTextToSpeechStreamingRequest = [(OPTTSTextToSpeechRouterStreamingStreamingRequest *)self contentAsOPTTSStartTextToSpeechStreamingRequest];
    v7 = [contentAsOPTTSStartTextToSpeechStreamingRequest addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v10 = *(buffer + 5);
  v9 = *(buffer + 6);
  v11 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type);
  if ([(OPTTSTextToSpeechRouterStreamingStreamingRequest *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(buffer, v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v11 - v9 + v10);
}

- (FLTBFBufferAccessor)content
{
  if ([(OPTTSTextToSpeechRouterStreamingStreamingRequest *)self content_type]== 1)
  {
    contentAsOPTTSStartTextToSpeechStreamingRequest = [(OPTTSTextToSpeechRouterStreamingStreamingRequest *)self contentAsOPTTSStartTextToSpeechStreamingRequest];
  }

  else
  {
    contentAsOPTTSStartTextToSpeechStreamingRequest = 0;
  }

  return contentAsOPTTSStartTextToSpeechStreamingRequest;
}

- (OPTTSStartTextToSpeechStreamingRequest)contentAsOPTTSStartTextToSpeechStreamingRequest
{
  if ([(OPTTSTextToSpeechRouterStreamingStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [OPTTSStartTextToSpeechStreamingRequest alloc];
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

      v3 = [(OPTTSStartTextToSpeechStreamingRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (OPTTSTextToSpeechRouterStreamingStreamingRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechRouterStreamingStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v32.receiver = self;
  v32.super_class = OPTTSTextToSpeechRouterStreamingStreamingRequest;
  v10 = [(OPTTSTextToSpeechRouterStreamingStreamingRequest *)&v32 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_29;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_30;
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
    goto LABEL_28;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_30;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v27 = bytes3;
  v28 = v18;
  v29 = xmmword_1B1C41700;
  v30 = 0;
  v31 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_28;
  }

  if (!apple::aiml::flatbuffers2::Verifier::VerifyTableStart(&v27, v11->_root->var0))
  {
    goto LABEL_30;
  }

  v20 = (v19 - *v19);
  v21 = *v20;
  if (v21 >= 5 && v20[2] && (v28 < 2 || v28 - 1 < v19 + v20[2] - v27))
  {
    goto LABEL_30;
  }

  if (!apple::aiml::flatbuffers2::Table::VerifyOffset(v19, &v27, 6u))
  {
    goto LABEL_30;
  }

  if (v21 >= 7)
  {
    if (v20[3])
    {
      v22 = (v19 + v20[3] + *(v19 + v20[3]));
LABEL_24:
      if (!v20[2] || !v22 || *(v19 + v20[2]) != 1 || siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(v22, &v27))
      {
        goto LABEL_28;
      }

LABEL_30:
      v25 = 0;
      goto LABEL_31;
    }

LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  if (v21 >= 5)
  {
    goto LABEL_23;
  }

LABEL_28:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_29:
  v25 = v11;
LABEL_31:

  return v25;
}

+ (int64_t)content_typeForImmutableObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy isMemberOfClass:objc_opt_class()];

  return v4;
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

@end