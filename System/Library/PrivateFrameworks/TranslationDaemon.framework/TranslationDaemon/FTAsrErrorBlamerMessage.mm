@interface FTAsrErrorBlamerMessage
+ (Class)session_message_immutableClassForType:(int64_t)a3;
+ (int64_t)session_message_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)session_message;
- (FTAsrErrorBlamerMessage)initWithFlatbuffData:(id)a3 root:(const AsrErrorBlamerMessage *)a4 verify:(BOOL)a5;
- (FTErrorBlamerRequest)session_messageAsFTErrorBlamerRequest;
- (FTErrorBlamerResponse)session_messageAsFTErrorBlamerResponse;
- (Offset<siri::speech::qss_fb::AsrErrorBlamerMessage>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTAsrErrorBlamerMessage

- (FTAsrErrorBlamerMessage)initWithFlatbuffData:(id)a3 root:(const AsrErrorBlamerMessage *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTAsrErrorBlamerMessage;
  v10 = [(FTAsrErrorBlamerMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::AsrErrorBlamerMessage::Verify(v19, &v24))
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

- (FTErrorBlamerRequest)session_messageAsFTErrorBlamerRequest
{
  if ([(FTAsrErrorBlamerMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTErrorBlamerRequest alloc];
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

      v3 = [(FTErrorBlamerRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTErrorBlamerResponse)session_messageAsFTErrorBlamerResponse
{
  if ([(FTAsrErrorBlamerMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTErrorBlamerResponse alloc];
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

      v3 = [(FTErrorBlamerResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  v3 = [(FTAsrErrorBlamerMessage *)self session_message_type];
  if (v3 == 2)
  {
    v4 = [(FTAsrErrorBlamerMessage *)self session_messageAsFTErrorBlamerResponse];
  }

  else if (v3 == 1)
  {
    v4 = [(FTAsrErrorBlamerMessage *)self session_messageAsFTErrorBlamerRequest];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)session_message_immutableClassForType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = off_2789B45C0;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 2)
  {
    v4 = off_2789B45C8;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (int64_t)session_message_typeForImmutableObject:(id)a3
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::AsrErrorBlamerMessage>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTAsrErrorBlamerMessage *)self session_message_type];
  if ([(FTAsrErrorBlamerMessage *)self session_message_type]== 1)
  {
    v6 = [(FTAsrErrorBlamerMessage *)self session_messageAsFTErrorBlamerRequest];
    v7 = [v6 addObjectToBuffer:a3];
  }

  else
  {
    v7 = 0;
  }

  if ([(FTAsrErrorBlamerMessage *)self session_message_type]== 2)
  {
    v8 = [(FTAsrErrorBlamerMessage *)self session_messageAsFTErrorBlamerResponse];
    v9 = [v8 addObjectToBuffer:a3];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 70) = 1;
  v11 = *(a3 + 5);
  v12 = *(a3 + 6);
  v13 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5, 0);
  if ([(FTAsrErrorBlamerMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v7);
  }

  if ([(FTAsrErrorBlamerMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v10);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v13 - v12 + v11);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTAsrErrorBlamerMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__39__FTAsrErrorBlamerMessage_flatbuffData__block_invoke(uint64_t a1)
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