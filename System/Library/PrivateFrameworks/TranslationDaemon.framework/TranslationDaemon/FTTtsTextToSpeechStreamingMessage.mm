@interface FTTtsTextToSpeechStreamingMessage
+ (Class)session_message_immutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)session_message;
- (FTBeginTextToSpeechStreamingResponse)session_messageAsFTBeginTextToSpeechStreamingResponse;
- (FTFinalTextToSpeechStreamingResponse)session_messageAsFTFinalTextToSpeechStreamingResponse;
- (FTPartialTextToSpeechStreamingResponse)session_messageAsFTPartialTextToSpeechStreamingResponse;
- (FTQssAckResponse)session_messageAsFTQssAckResponse;
- (FTStartTextToSpeechStreamingRequest)session_messageAsFTStartTextToSpeechStreamingRequest;
- (FTTtsTextToSpeechStreamingMessage)initWithFlatbuffData:(id)data root:(const TtsTextToSpeechStreamingMessage *)root verify:(BOOL)verify;
- (Offset<siri::speech::qss_fb::TtsTextToSpeechStreamingMessage>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTTtsTextToSpeechStreamingMessage

- (FTTtsTextToSpeechStreamingMessage)initWithFlatbuffData:(id)data root:(const TtsTextToSpeechStreamingMessage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTTtsTextToSpeechStreamingMessage;
  v10 = [(FTTtsTextToSpeechStreamingMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::TtsTextToSpeechStreamingMessage::Verify(v19, &v24))
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
  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 1)
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

- (FTQssAckResponse)session_messageAsFTQssAckResponse
{
  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTQssAckResponse alloc];
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

      v3 = [(FTQssAckResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 3)
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
  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 4)
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
  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 5)
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
  session_message_type = [(FTTtsTextToSpeechStreamingMessage *)self session_message_type];
  session_messageAsFTStartTextToSpeechStreamingRequest = 0;
  if (session_message_type <= 2)
  {
    if (session_message_type == 1)
    {
      session_messageAsFTStartTextToSpeechStreamingRequest = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTStartTextToSpeechStreamingRequest];
    }

    else if (session_message_type == 2)
    {
      session_messageAsFTStartTextToSpeechStreamingRequest = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTQssAckResponse];
    }
  }

  else
  {
    switch(session_message_type)
    {
      case 3:
        session_messageAsFTStartTextToSpeechStreamingRequest = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTBeginTextToSpeechStreamingResponse];
        break;
      case 4:
        session_messageAsFTStartTextToSpeechStreamingRequest = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTPartialTextToSpeechStreamingResponse];
        break;
      case 5:
        session_messageAsFTStartTextToSpeechStreamingRequest = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTFinalTextToSpeechStreamingResponse];
        break;
    }
  }

  return session_messageAsFTStartTextToSpeechStreamingRequest;
}

+ (Class)session_message_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B85A8[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::TtsTextToSpeechStreamingMessage>)addObjectToBuffer:(void *)buffer
{
  session_message_type = [(FTTtsTextToSpeechStreamingMessage *)self session_message_type];
  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 1)
  {
    session_messageAsFTStartTextToSpeechStreamingRequest = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTStartTextToSpeechStreamingRequest];
    v7 = [session_messageAsFTStartTextToSpeechStreamingRequest addObjectToBuffer:buffer];
  }

  else
  {
    v7 = 0;
  }

  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 2)
  {
    session_messageAsFTQssAckResponse = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTQssAckResponse];
    v9 = [session_messageAsFTQssAckResponse addObjectToBuffer:buffer];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 3)
  {
    session_messageAsFTBeginTextToSpeechStreamingResponse = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTBeginTextToSpeechStreamingResponse];
    v12 = [session_messageAsFTBeginTextToSpeechStreamingResponse addObjectToBuffer:buffer];

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 4)
  {
    session_messageAsFTPartialTextToSpeechStreamingResponse = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTPartialTextToSpeechStreamingResponse];
    v15 = [session_messageAsFTPartialTextToSpeechStreamingResponse addObjectToBuffer:buffer];

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 5)
  {
    session_messageAsFTFinalTextToSpeechStreamingResponse = [(FTTtsTextToSpeechStreamingMessage *)self session_messageAsFTFinalTextToSpeechStreamingResponse];
    v18 = [session_messageAsFTFinalTextToSpeechStreamingResponse addObjectToBuffer:buffer];
    v19 = v13;
    v20 = v7;

    v21 = v18;
  }

  else
  {
    v19 = v13;
    v20 = v7;
    v21 = 0;
  }

  *(buffer + 70) = 1;
  v23 = *(buffer + 5);
  v22 = *(buffer + 6);
  v24 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, session_message_type, 0);
  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v20);
  }

  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v10);
  }

  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v19);
  }

  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v26);
  }

  if ([(FTTtsTextToSpeechStreamingMessage *)self session_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v21);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v24 - v22 + v23);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTtsTextToSpeechStreamingMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__49__FTTtsTextToSpeechStreamingMessage_flatbuffData__block_invoke(uint64_t a1)
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