@interface FTBlazarTextToSpeechRouterStreamingMessage
+ (Class)session_message_immutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)session_message;
- (FTBeginTextToSpeechStreamingResponse)session_messageAsFTBeginTextToSpeechStreamingResponse;
- (FTBlazarTextToSpeechRouterStreamingMessage)initWithFlatbuffData:(id)data root:(const BlazarTextToSpeechRouterStreamingMessage *)root verify:(BOOL)verify;
- (FTFinalTextToSpeechStreamingResponse)session_messageAsFTFinalTextToSpeechStreamingResponse;
- (FTPartialTextToSpeechStreamingResponse)session_messageAsFTPartialTextToSpeechStreamingResponse;
- (FTStartTextToSpeechStreamingRequest)session_messageAsFTStartTextToSpeechStreamingRequest;
- (Offset<siri::speech::qss_fb::BlazarTextToSpeechRouterStreamingMessage>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTBlazarTextToSpeechRouterStreamingMessage

- (FTBlazarTextToSpeechRouterStreamingMessage)initWithFlatbuffData:(id)data root:(const BlazarTextToSpeechRouterStreamingMessage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTBlazarTextToSpeechRouterStreamingMessage;
  v10 = [(FTBlazarTextToSpeechRouterStreamingMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::BlazarTextToSpeechRouterStreamingMessage::Verify(v19, &v24))
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

- (int64_t)session_message_type
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

- (FTStartTextToSpeechStreamingRequest)session_messageAsFTStartTextToSpeechStreamingRequest
{
  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTStartTextToSpeechStreamingRequest alloc];
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

      v3 = [(FTStartTextToSpeechStreamingRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBeginTextToSpeechStreamingResponse)session_messageAsFTBeginTextToSpeechStreamingResponse
{
  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTBeginTextToSpeechStreamingResponse alloc];
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

      v3 = [(FTBeginTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTPartialTextToSpeechStreamingResponse)session_messageAsFTPartialTextToSpeechStreamingResponse
{
  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTPartialTextToSpeechStreamingResponse alloc];
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

      v3 = [(FTPartialTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTFinalTextToSpeechStreamingResponse)session_messageAsFTFinalTextToSpeechStreamingResponse
{
  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTFinalTextToSpeechStreamingResponse alloc];
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

      v3 = [(FTFinalTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLTBFBufferAccessor)session_message
{
  session_message_type = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type];
  session_messageAsFTPartialTextToSpeechStreamingResponse = 0;
  if (session_message_type > 2)
  {
    if (session_message_type == 3)
    {
      session_messageAsFTPartialTextToSpeechStreamingResponse = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_messageAsFTPartialTextToSpeechStreamingResponse];
    }

    else if (session_message_type == 4)
    {
      session_messageAsFTPartialTextToSpeechStreamingResponse = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_messageAsFTFinalTextToSpeechStreamingResponse];
    }
  }

  else if (session_message_type == 1)
  {
    session_messageAsFTPartialTextToSpeechStreamingResponse = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_messageAsFTStartTextToSpeechStreamingRequest];
  }

  else if (session_message_type == 2)
  {
    session_messageAsFTPartialTextToSpeechStreamingResponse = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_messageAsFTBeginTextToSpeechStreamingResponse];
  }

  return session_messageAsFTPartialTextToSpeechStreamingResponse;
}

+ (Class)session_message_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8588[type - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (int64_t)session_message_typeForImmutableObject:(id)object
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

- (Offset<siri::speech::qss_fb::BlazarTextToSpeechRouterStreamingMessage>)addObjectToBuffer:(void *)buffer
{
  session_message_type = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type];
  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 1)
  {
    session_messageAsFTStartTextToSpeechStreamingRequest = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_messageAsFTStartTextToSpeechStreamingRequest];
    v7 = [session_messageAsFTStartTextToSpeechStreamingRequest addObjectToBuffer:buffer];
  }

  else
  {
    v7 = 0;
  }

  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 2)
  {
    session_messageAsFTBeginTextToSpeechStreamingResponse = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_messageAsFTBeginTextToSpeechStreamingResponse];
    v9 = [session_messageAsFTBeginTextToSpeechStreamingResponse addObjectToBuffer:buffer];
  }

  else
  {
    v9 = 0;
  }

  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 3)
  {
    session_messageAsFTPartialTextToSpeechStreamingResponse = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_messageAsFTPartialTextToSpeechStreamingResponse];
    v11 = [session_messageAsFTPartialTextToSpeechStreamingResponse addObjectToBuffer:buffer];
  }

  else
  {
    v11 = 0;
  }

  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 4)
  {
    session_messageAsFTFinalTextToSpeechStreamingResponse = [(FTBlazarTextToSpeechRouterStreamingMessage *)self session_messageAsFTFinalTextToSpeechStreamingResponse];
    v13 = [session_messageAsFTFinalTextToSpeechStreamingResponse addObjectToBuffer:buffer];

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
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, session_message_type, 0);
  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v7);
  }

  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v9);
  }

  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v11);
  }

  if ([(FTBlazarTextToSpeechRouterStreamingMessage *)self session_message_type]== 4)
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBlazarTextToSpeechRouterStreamingMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__58__FTBlazarTextToSpeechRouterStreamingMessage_flatbuffData__block_invoke(uint64_t a1)
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