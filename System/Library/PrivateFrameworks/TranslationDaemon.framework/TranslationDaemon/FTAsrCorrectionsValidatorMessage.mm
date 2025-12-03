@interface FTAsrCorrectionsValidatorMessage
+ (Class)session_message_immutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)session_message;
- (FTAsrCorrectionsValidatorMessage)initWithFlatbuffData:(id)data root:(const AsrCorrectionsValidatorMessage *)root verify:(BOOL)verify;
- (FTCorrectionsValidatorRequest)session_messageAsFTCorrectionsValidatorRequest;
- (FTCorrectionsValidatorResponse)session_messageAsFTCorrectionsValidatorResponse;
- (Offset<siri::speech::qss_fb::AsrCorrectionsValidatorMessage>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTAsrCorrectionsValidatorMessage

- (FTAsrCorrectionsValidatorMessage)initWithFlatbuffData:(id)data root:(const AsrCorrectionsValidatorMessage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTAsrCorrectionsValidatorMessage;
  v10 = [(FTAsrCorrectionsValidatorMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::AsrCorrectionsValidatorMessage::Verify(v19, &v24))
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

- (FTCorrectionsValidatorRequest)session_messageAsFTCorrectionsValidatorRequest
{
  if ([(FTAsrCorrectionsValidatorMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTCorrectionsValidatorRequest alloc];
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

      v3 = [(FTCorrectionsValidatorRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTCorrectionsValidatorResponse)session_messageAsFTCorrectionsValidatorResponse
{
  if ([(FTAsrCorrectionsValidatorMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTCorrectionsValidatorResponse alloc];
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

      v3 = [(FTCorrectionsValidatorResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  session_message_type = [(FTAsrCorrectionsValidatorMessage *)self session_message_type];
  if (session_message_type == 2)
  {
    session_messageAsFTCorrectionsValidatorResponse = [(FTAsrCorrectionsValidatorMessage *)self session_messageAsFTCorrectionsValidatorResponse];
  }

  else if (session_message_type == 1)
  {
    session_messageAsFTCorrectionsValidatorResponse = [(FTAsrCorrectionsValidatorMessage *)self session_messageAsFTCorrectionsValidatorRequest];
  }

  else
  {
    session_messageAsFTCorrectionsValidatorResponse = 0;
  }

  return session_messageAsFTCorrectionsValidatorResponse;
}

+ (Class)session_message_immutableClassForType:(int64_t)type
{
  if (type == 1)
  {
    v4 = off_2789B4590;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (type == 2)
  {
    v4 = off_2789B4598;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::AsrCorrectionsValidatorMessage>)addObjectToBuffer:(void *)buffer
{
  session_message_type = [(FTAsrCorrectionsValidatorMessage *)self session_message_type];
  if ([(FTAsrCorrectionsValidatorMessage *)self session_message_type]== 1)
  {
    session_messageAsFTCorrectionsValidatorRequest = [(FTAsrCorrectionsValidatorMessage *)self session_messageAsFTCorrectionsValidatorRequest];
    v7 = [session_messageAsFTCorrectionsValidatorRequest addObjectToBuffer:buffer];
  }

  else
  {
    v7 = 0;
  }

  if ([(FTAsrCorrectionsValidatorMessage *)self session_message_type]== 2)
  {
    session_messageAsFTCorrectionsValidatorResponse = [(FTAsrCorrectionsValidatorMessage *)self session_messageAsFTCorrectionsValidatorResponse];
    v9 = [session_messageAsFTCorrectionsValidatorResponse addObjectToBuffer:buffer];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(buffer + 70) = 1;
  v11 = *(buffer + 5);
  v12 = *(buffer + 6);
  v13 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, session_message_type, 0);
  if ([(FTAsrCorrectionsValidatorMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v7);
  }

  if ([(FTAsrCorrectionsValidatorMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v10);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v13 - v12 + v11);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTAsrCorrectionsValidatorMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__48__FTAsrCorrectionsValidatorMessage_flatbuffData__block_invoke(uint64_t a1)
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