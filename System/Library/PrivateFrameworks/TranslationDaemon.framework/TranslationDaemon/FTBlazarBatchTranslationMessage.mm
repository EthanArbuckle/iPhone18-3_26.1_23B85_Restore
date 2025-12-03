@interface FTBlazarBatchTranslationMessage
+ (Class)session_message_immutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)session_message;
- (FTBatchTranslationFeedbackRequest)session_messageAsFTBatchTranslationFeedbackRequest;
- (FTBatchTranslationLoggingRequest)session_messageAsFTBatchTranslationLoggingRequest;
- (FTBatchTranslationRequest)session_messageAsFTBatchTranslationRequest;
- (FTBatchTranslationResponse)session_messageAsFTBatchTranslationResponse;
- (FTBlazarBatchTranslationMessage)initWithFlatbuffData:(id)data root:(const BlazarBatchTranslationMessage *)root verify:(BOOL)verify;
- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse;
- (FTTranslationSupportedLanguagesRequest)session_messageAsFTTranslationSupportedLanguagesRequest;
- (FTTranslationSupportedLanguagesResponse)session_messageAsFTTranslationSupportedLanguagesResponse;
- (Offset<siri::speech::qss_fb::BlazarBatchTranslationMessage>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTBlazarBatchTranslationMessage

- (FTBlazarBatchTranslationMessage)initWithFlatbuffData:(id)data root:(const BlazarBatchTranslationMessage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTBlazarBatchTranslationMessage;
  v10 = [(FTBlazarBatchTranslationMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::BlazarBatchTranslationMessage::Verify(v19, &v24))
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

- (FTBatchTranslationRequest)session_messageAsFTBatchTranslationRequest
{
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBatchTranslationFeedbackRequest)session_messageAsFTBatchTranslationFeedbackRequest
{
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBatchTranslationLoggingRequest)session_messageAsFTBatchTranslationLoggingRequest
{
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTTranslationSupportedLanguagesRequest)session_messageAsFTTranslationSupportedLanguagesRequest
{
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBatchTranslationResponse)session_messageAsFTBatchTranslationResponse
{
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTBatchTranslationResponse alloc];
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

      v3 = [(FTBatchTranslationResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse
{
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTFinalBlazarResponse alloc];
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

      v3 = [(FTFinalBlazarResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTTranslationSupportedLanguagesResponse)session_messageAsFTTranslationSupportedLanguagesResponse
{
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTTranslationSupportedLanguagesResponse alloc];
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

      v3 = [(FTTranslationSupportedLanguagesResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  session_message_type = [(FTBlazarBatchTranslationMessage *)self session_message_type];
  session_messageAsFTBatchTranslationRequest = 0;
  if (session_message_type <= 3)
  {
    switch(session_message_type)
    {
      case 1:
        session_messageAsFTBatchTranslationRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationRequest];
        break;
      case 2:
        session_messageAsFTBatchTranslationRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationFeedbackRequest];
        break;
      case 3:
        session_messageAsFTBatchTranslationRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationLoggingRequest];
        break;
    }
  }

  else if (session_message_type > 5)
  {
    if (session_message_type == 6)
    {
      session_messageAsFTBatchTranslationRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTFinalBlazarResponse];
    }

    else if (session_message_type == 7)
    {
      session_messageAsFTBatchTranslationRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTTranslationSupportedLanguagesResponse];
    }
  }

  else
  {
    if (session_message_type == 4)
    {
      [(FTBlazarBatchTranslationMessage *)self session_messageAsFTTranslationSupportedLanguagesRequest];
    }

    else
    {
      [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationResponse];
    }
    session_messageAsFTBatchTranslationRequest = ;
  }

  return session_messageAsFTBatchTranslationRequest;
}

+ (Class)session_message_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8550[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 6;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::BlazarBatchTranslationMessage>)addObjectToBuffer:(void *)buffer
{
  session_message_type = [(FTBlazarBatchTranslationMessage *)self session_message_type];
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 1)
  {
    session_messageAsFTBatchTranslationRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationRequest];
    v7 = [session_messageAsFTBatchTranslationRequest addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 2)
  {
    session_messageAsFTBatchTranslationFeedbackRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationFeedbackRequest];
    v10 = [session_messageAsFTBatchTranslationFeedbackRequest addObjectToBuffer:buffer];
  }

  else
  {
    v10 = 0;
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 3)
  {
    session_messageAsFTBatchTranslationLoggingRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationLoggingRequest];
    v12 = [session_messageAsFTBatchTranslationLoggingRequest addObjectToBuffer:buffer];
  }

  else
  {
    v12 = 0;
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 4)
  {
    session_messageAsFTTranslationSupportedLanguagesRequest = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTTranslationSupportedLanguagesRequest];
    v14 = [session_messageAsFTTranslationSupportedLanguagesRequest addObjectToBuffer:buffer];

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 5)
  {
    session_messageAsFTBatchTranslationResponse = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationResponse];
    v17 = [session_messageAsFTBatchTranslationResponse addObjectToBuffer:buffer];

    v32 = v17;
  }

  else
  {
    v32 = 0;
  }

  v18 = session_message_type;
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 6)
  {
    session_messageAsFTFinalBlazarResponse = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTFinalBlazarResponse];
    v20 = [session_messageAsFTFinalBlazarResponse addObjectToBuffer:buffer];

    v30 = v20;
  }

  else
  {
    v30 = 0;
  }

  v31 = v15;
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 7)
  {
    session_messageAsFTTranslationSupportedLanguagesResponse = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTTranslationSupportedLanguagesResponse];
    v22 = [session_messageAsFTTranslationSupportedLanguagesResponse addObjectToBuffer:buffer];
    v23 = v12;
    v24 = v10;

    v25 = v22;
  }

  else
  {
    v23 = v12;
    v24 = v10;
    v25 = 0;
  }

  *(buffer + 70) = 1;
  v26 = *(buffer + 5);
  v27 = *(buffer + 6);
  v28 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, v18, 0);
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v8);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v24);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v23);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v31);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v32);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v30);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v25);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v28 - v27 + v26);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBlazarBatchTranslationMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__47__FTBlazarBatchTranslationMessage_flatbuffData__block_invoke(uint64_t a1)
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