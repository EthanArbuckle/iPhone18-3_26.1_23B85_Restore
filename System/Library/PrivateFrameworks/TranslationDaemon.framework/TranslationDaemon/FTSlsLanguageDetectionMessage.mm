@interface FTSlsLanguageDetectionMessage
+ (Class)session_message_immutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)session_message;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTFinishAudio)session_messageAsFTFinishAudio;
- (FTLanguageDetectionResponse)session_messageAsFTLanguageDetectionResponse;
- (FTSlsLanguageDetectionMessage)initWithFlatbuffData:(id)data root:(const SlsLanguageDetectionMessage *)root verify:(BOOL)verify;
- (FTStartLanguageDetectionRequest)session_messageAsFTStartLanguageDetectionRequest;
- (Offset<siri::speech::qss_fb::SlsLanguageDetectionMessage>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTSlsLanguageDetectionMessage

- (FTSlsLanguageDetectionMessage)initWithFlatbuffData:(id)data root:(const SlsLanguageDetectionMessage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTSlsLanguageDetectionMessage;
  v10 = [(FTSlsLanguageDetectionMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::SlsLanguageDetectionMessage::Verify(v19, &v24))
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

- (FTStartLanguageDetectionRequest)session_messageAsFTStartLanguageDetectionRequest
{
  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTStartLanguageDetectionRequest alloc];
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

      v3 = [(FTStartLanguageDetectionRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAudioPacket)session_messageAsFTAudioPacket
{
  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTAudioPacket alloc];
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

      v3 = [(FTAudioPacket *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTFinishAudio)session_messageAsFTFinishAudio
{
  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTFinishAudio alloc];
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

      v3 = [(FTFinishAudio *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTLanguageDetectionResponse)session_messageAsFTLanguageDetectionResponse
{
  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
  session_message_type = [(FTSlsLanguageDetectionMessage *)self session_message_type];
  session_messageAsFTFinishAudio = 0;
  if (session_message_type > 2)
  {
    if (session_message_type == 3)
    {
      session_messageAsFTFinishAudio = [(FTSlsLanguageDetectionMessage *)self session_messageAsFTFinishAudio];
    }

    else if (session_message_type == 4)
    {
      session_messageAsFTFinishAudio = [(FTSlsLanguageDetectionMessage *)self session_messageAsFTLanguageDetectionResponse];
    }
  }

  else if (session_message_type == 1)
  {
    session_messageAsFTFinishAudio = [(FTSlsLanguageDetectionMessage *)self session_messageAsFTStartLanguageDetectionRequest];
  }

  else if (session_message_type == 2)
  {
    session_messageAsFTFinishAudio = [(FTSlsLanguageDetectionMessage *)self session_messageAsFTAudioPacket];
  }

  return session_messageAsFTFinishAudio;
}

+ (Class)session_message_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B85D0[type - 1];
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

- (Offset<siri::speech::qss_fb::SlsLanguageDetectionMessage>)addObjectToBuffer:(void *)buffer
{
  session_message_type = [(FTSlsLanguageDetectionMessage *)self session_message_type];
  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 1)
  {
    session_messageAsFTStartLanguageDetectionRequest = [(FTSlsLanguageDetectionMessage *)self session_messageAsFTStartLanguageDetectionRequest];
    v7 = [session_messageAsFTStartLanguageDetectionRequest addObjectToBuffer:buffer];
  }

  else
  {
    v7 = 0;
  }

  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 2)
  {
    session_messageAsFTAudioPacket = [(FTSlsLanguageDetectionMessage *)self session_messageAsFTAudioPacket];
    v9 = [session_messageAsFTAudioPacket addObjectToBuffer:buffer];
  }

  else
  {
    v9 = 0;
  }

  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 3)
  {
    session_messageAsFTFinishAudio = [(FTSlsLanguageDetectionMessage *)self session_messageAsFTFinishAudio];
    v11 = [session_messageAsFTFinishAudio addObjectToBuffer:buffer];
  }

  else
  {
    v11 = 0;
  }

  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 4)
  {
    session_messageAsFTLanguageDetectionResponse = [(FTSlsLanguageDetectionMessage *)self session_messageAsFTLanguageDetectionResponse];
    v13 = [session_messageAsFTLanguageDetectionResponse addObjectToBuffer:buffer];

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
  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v7);
  }

  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v9);
  }

  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v11);
  }

  if ([(FTSlsLanguageDetectionMessage *)self session_message_type]== 4)
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSlsLanguageDetectionMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__45__FTSlsLanguageDetectionMessage_flatbuffData__block_invoke(uint64_t a1)
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