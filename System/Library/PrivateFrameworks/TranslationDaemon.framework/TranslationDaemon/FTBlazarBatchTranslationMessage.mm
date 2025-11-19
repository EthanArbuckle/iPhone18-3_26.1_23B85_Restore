@interface FTBlazarBatchTranslationMessage
+ (Class)session_message_immutableClassForType:(int64_t)a3;
+ (int64_t)session_message_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)session_message;
- (FTBatchTranslationFeedbackRequest)session_messageAsFTBatchTranslationFeedbackRequest;
- (FTBatchTranslationLoggingRequest)session_messageAsFTBatchTranslationLoggingRequest;
- (FTBatchTranslationRequest)session_messageAsFTBatchTranslationRequest;
- (FTBatchTranslationResponse)session_messageAsFTBatchTranslationResponse;
- (FTBlazarBatchTranslationMessage)initWithFlatbuffData:(id)a3 root:(const BlazarBatchTranslationMessage *)a4 verify:(BOOL)a5;
- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse;
- (FTTranslationSupportedLanguagesRequest)session_messageAsFTTranslationSupportedLanguagesRequest;
- (FTTranslationSupportedLanguagesResponse)session_messageAsFTTranslationSupportedLanguagesResponse;
- (Offset<siri::speech::qss_fb::BlazarBatchTranslationMessage>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTBlazarBatchTranslationMessage

- (FTBlazarBatchTranslationMessage)initWithFlatbuffData:(id)a3 root:(const BlazarBatchTranslationMessage *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTBlazarBatchTranslationMessage;
  v10 = [(FTBlazarBatchTranslationMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::BlazarBatchTranslationMessage::Verify(v19, &v24))
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
  v3 = [(FTBlazarBatchTranslationMessage *)self session_message_type];
  v4 = 0;
  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        v4 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationRequest];
        break;
      case 2:
        v4 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationFeedbackRequest];
        break;
      case 3:
        v4 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationLoggingRequest];
        break;
    }
  }

  else if (v3 > 5)
  {
    if (v3 == 6)
    {
      v4 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTFinalBlazarResponse];
    }

    else if (v3 == 7)
    {
      v4 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTTranslationSupportedLanguagesResponse];
    }
  }

  else
  {
    if (v3 == 4)
    {
      [(FTBlazarBatchTranslationMessage *)self session_messageAsFTTranslationSupportedLanguagesRequest];
    }

    else
    {
      [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationResponse];
    }
    v4 = ;
  }

  return v4;
}

+ (Class)session_message_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8550[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
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

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 4;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 5;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 6;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::BlazarBatchTranslationMessage>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTBlazarBatchTranslationMessage *)self session_message_type];
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 1)
  {
    v6 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationRequest];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 2)
  {
    v9 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationFeedbackRequest];
    v10 = [v9 addObjectToBuffer:a3];
  }

  else
  {
    v10 = 0;
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 3)
  {
    v11 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationLoggingRequest];
    v12 = [v11 addObjectToBuffer:a3];
  }

  else
  {
    v12 = 0;
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 4)
  {
    v13 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTTranslationSupportedLanguagesRequest];
    v14 = [v13 addObjectToBuffer:a3];

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 5)
  {
    v16 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTBatchTranslationResponse];
    v17 = [v16 addObjectToBuffer:a3];

    v32 = v17;
  }

  else
  {
    v32 = 0;
  }

  v18 = v5;
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 6)
  {
    v19 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTFinalBlazarResponse];
    v20 = [v19 addObjectToBuffer:a3];

    v30 = v20;
  }

  else
  {
    v30 = 0;
  }

  v31 = v15;
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 7)
  {
    v21 = [(FTBlazarBatchTranslationMessage *)self session_messageAsFTTranslationSupportedLanguagesResponse];
    v22 = [v21 addObjectToBuffer:a3];
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

  *(a3 + 70) = 1;
  v26 = *(a3 + 5);
  v27 = *(a3 + 6);
  v28 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v18, 0);
  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v8);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v24);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v23);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v31);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v32);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v30);
  }

  if ([(FTBlazarBatchTranslationMessage *)self session_message_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v25);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v28 - v27 + v26);
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