@interface FTMultilingualStreamingResponse
+ (Class)content_immutableClassForType:(int64_t)type;
+ (int64_t)content_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)content;
- (FTAudioLimitExceeded)contentAsFTAudioLimitExceeded;
- (FTFinalBlazarResponse)contentAsFTFinalBlazarResponse;
- (FTFinalSpeechRecognitionResponse)contentAsFTFinalSpeechRecognitionResponse;
- (FTMultilingualStreamingResponse)initWithFlatbuffData:(id)data root:(const MultilingualStreamingResponse *)root verify:(BOOL)verify;
- (FTPartialSpeechRecognitionResponse)contentAsFTPartialSpeechRecognitionResponse;
- (FTRecognitionCandidate)contentAsFTRecognitionCandidate;
- (FTRequestStatsResponse)contentAsFTRequestStatsResponse;
- (Offset<siri::speech::qss_fb::MultilingualStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTMultilingualStreamingResponse

- (FTMultilingualStreamingResponse)initWithFlatbuffData:(id)data root:(const MultilingualStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTMultilingualStreamingResponse;
  v10 = [(FTMultilingualStreamingResponse *)&v29 init];
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
        if (!siri::speech::qss_fb::MultilingualStreamingResponse::Verify(v19, &v24))
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

- (FTFinalSpeechRecognitionResponse)contentAsFTFinalSpeechRecognitionResponse
{
  if ([(FTMultilingualStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTFinalSpeechRecognitionResponse alloc];
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

      v3 = [(FTFinalSpeechRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTPartialSpeechRecognitionResponse)contentAsFTPartialSpeechRecognitionResponse
{
  if ([(FTMultilingualStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTPartialSpeechRecognitionResponse alloc];
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

      v3 = [(FTPartialSpeechRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTRecognitionCandidate)contentAsFTRecognitionCandidate
{
  if ([(FTMultilingualStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTRecognitionCandidate alloc];
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

      v3 = [(FTRecognitionCandidate *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTRequestStatsResponse)contentAsFTRequestStatsResponse
{
  if ([(FTMultilingualStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTRequestStatsResponse alloc];
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

      v3 = [(FTRequestStatsResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAudioLimitExceeded)contentAsFTAudioLimitExceeded
{
  if ([(FTMultilingualStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTAudioLimitExceeded alloc];
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

      v3 = [(FTAudioLimitExceeded *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTFinalBlazarResponse)contentAsFTFinalBlazarResponse
{
  if ([(FTMultilingualStreamingResponse *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
  content_type = [(FTMultilingualStreamingResponse *)self content_type];
  contentAsFTRequestStatsResponse = 0;
  if (content_type > 3)
  {
    switch(content_type)
    {
      case 4:
        contentAsFTRequestStatsResponse = [(FTMultilingualStreamingResponse *)self contentAsFTRequestStatsResponse];
        break;
      case 5:
        contentAsFTRequestStatsResponse = [(FTMultilingualStreamingResponse *)self contentAsFTAudioLimitExceeded];
        break;
      case 6:
        contentAsFTRequestStatsResponse = [(FTMultilingualStreamingResponse *)self contentAsFTFinalBlazarResponse];
        break;
    }
  }

  else
  {
    switch(content_type)
    {
      case 1:
        contentAsFTRequestStatsResponse = [(FTMultilingualStreamingResponse *)self contentAsFTFinalSpeechRecognitionResponse];
        break;
      case 2:
        contentAsFTRequestStatsResponse = [(FTMultilingualStreamingResponse *)self contentAsFTPartialSpeechRecognitionResponse];
        break;
      case 3:
        contentAsFTRequestStatsResponse = [(FTMultilingualStreamingResponse *)self contentAsFTRecognitionCandidate];
        break;
    }
  }

  return contentAsFTRequestStatsResponse;
}

+ (Class)content_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8CB8[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 5;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::MultilingualStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(FTMultilingualStreamingResponse *)self content_type];
  if ([(FTMultilingualStreamingResponse *)self content_type]== 1)
  {
    contentAsFTFinalSpeechRecognitionResponse = [(FTMultilingualStreamingResponse *)self contentAsFTFinalSpeechRecognitionResponse];
    v7 = [contentAsFTFinalSpeechRecognitionResponse addObjectToBuffer:buffer];
  }

  else
  {
    v7 = 0;
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 2)
  {
    contentAsFTPartialSpeechRecognitionResponse = [(FTMultilingualStreamingResponse *)self contentAsFTPartialSpeechRecognitionResponse];
    v9 = [contentAsFTPartialSpeechRecognitionResponse addObjectToBuffer:buffer];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 3)
  {
    contentAsFTRecognitionCandidate = [(FTMultilingualStreamingResponse *)self contentAsFTRecognitionCandidate];
    v12 = [contentAsFTRecognitionCandidate addObjectToBuffer:buffer];

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 4)
  {
    contentAsFTRequestStatsResponse = [(FTMultilingualStreamingResponse *)self contentAsFTRequestStatsResponse];
    v15 = [contentAsFTRequestStatsResponse addObjectToBuffer:buffer];

    v30 = v15;
  }

  else
  {
    v30 = 0;
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 5)
  {
    contentAsFTAudioLimitExceeded = [(FTMultilingualStreamingResponse *)self contentAsFTAudioLimitExceeded];
    v17 = [contentAsFTAudioLimitExceeded addObjectToBuffer:buffer];

    v28 = v17;
  }

  else
  {
    v28 = 0;
  }

  v18 = content_type;
  if ([(FTMultilingualStreamingResponse *)self content_type]== 6)
  {
    contentAsFTFinalBlazarResponse = [(FTMultilingualStreamingResponse *)self contentAsFTFinalBlazarResponse];
    v20 = [contentAsFTFinalBlazarResponse addObjectToBuffer:buffer];
    v21 = v13;
    v22 = v7;

    v23 = v20;
  }

  else
  {
    v21 = v13;
    v22 = v7;
    v23 = 0;
  }

  *(buffer + 70) = 1;
  v25 = *(buffer + 5);
  v24 = *(buffer + 6);
  v26 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, v18, 0);
  if ([(FTMultilingualStreamingResponse *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v22);
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v10);
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v21);
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v30);
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v29);
  }

  if ([(FTMultilingualStreamingResponse *)self content_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v23);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v26 - v24 + v25);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTMultilingualStreamingResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__47__FTMultilingualStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
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