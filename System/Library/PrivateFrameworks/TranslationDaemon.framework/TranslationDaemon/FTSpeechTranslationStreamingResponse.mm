@interface FTSpeechTranslationStreamingResponse
+ (Class)content_immutableClassForType:(int64_t)type;
+ (int64_t)content_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)content;
- (FTAudioLimitExceeded)contentAsFTAudioLimitExceeded;
- (FTClientSetupInfo)contentAsFTClientSetupInfo;
- (FTFinalBlazarResponse)contentAsFTFinalBlazarResponse;
- (FTRecognitionCandidate)contentAsFTRecognitionCandidate;
- (FTRecognitionProgress)contentAsFTRecognitionProgress;
- (FTRequestStatsResponse)contentAsFTRequestStatsResponse;
- (FTServerEndpointFeatures)contentAsFTServerEndpointFeatures;
- (FTSpeechTranslationFinalRecognitionResponse)contentAsFTSpeechTranslationFinalRecognitionResponse;
- (FTSpeechTranslationMtResponse)contentAsFTSpeechTranslationMtResponse;
- (FTSpeechTranslationPartialRecognitionResponse)contentAsFTSpeechTranslationPartialRecognitionResponse;
- (FTSpeechTranslationServerEndpointFeatures)contentAsFTSpeechTranslationServerEndpointFeatures;
- (FTSpeechTranslationStreamingResponse)initWithFlatbuffData:(id)data root:(const SpeechTranslationStreamingResponse *)root verify:(BOOL)verify;
- (FTSpeechTranslationTextToSpeechResponse)contentAsFTSpeechTranslationTextToSpeechResponse;
- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTSpeechTranslationStreamingResponse

- (FTSpeechTranslationStreamingResponse)initWithFlatbuffData:(id)data root:(const SpeechTranslationStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTSpeechTranslationStreamingResponse;
  v10 = [(FTSpeechTranslationStreamingResponse *)&v29 init];
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
        if (!siri::speech::qss_fb::SpeechTranslationStreamingResponse::Verify(v19, &v24))
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

- (FTSpeechTranslationPartialRecognitionResponse)contentAsFTSpeechTranslationPartialRecognitionResponse
{
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTSpeechTranslationPartialRecognitionResponse alloc];
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

      v3 = [(FTSpeechTranslationPartialRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationFinalRecognitionResponse)contentAsFTSpeechTranslationFinalRecognitionResponse
{
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTSpeechTranslationFinalRecognitionResponse alloc];
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

      v3 = [(FTSpeechTranslationFinalRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 3)
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

- (FTSpeechTranslationMtResponse)contentAsFTSpeechTranslationMtResponse
{
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTSpeechTranslationMtResponse alloc];
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

      v3 = [(FTSpeechTranslationMtResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationTextToSpeechResponse)contentAsFTSpeechTranslationTextToSpeechResponse
{
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTSpeechTranslationTextToSpeechResponse alloc];
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

      v3 = [(FTSpeechTranslationTextToSpeechResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 6)
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

- (FTRecognitionProgress)contentAsFTRecognitionProgress
{
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTRecognitionProgress alloc];
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

      v3 = [(FTRecognitionProgress *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 8)
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
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 9)
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

- (FTServerEndpointFeatures)contentAsFTServerEndpointFeatures
{
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTServerEndpointFeatures alloc];
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

      v3 = [(FTServerEndpointFeatures *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTClientSetupInfo)contentAsFTClientSetupInfo
{
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTClientSetupInfo alloc];
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

      v3 = [(FTClientSetupInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationServerEndpointFeatures)contentAsFTSpeechTranslationServerEndpointFeatures
{
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTSpeechTranslationServerEndpointFeatures alloc];
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

      v3 = [(FTSpeechTranslationServerEndpointFeatures *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  content_type = [(FTSpeechTranslationStreamingResponse *)self content_type];
  contentAsFTSpeechTranslationPartialRecognitionResponse = 0;
  if (content_type <= 6)
  {
    if (content_type <= 3)
    {
      switch(content_type)
      {
        case 1:
          contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationPartialRecognitionResponse];
          break;
        case 2:
          contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationFinalRecognitionResponse];
          break;
        case 3:
          contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTAudioLimitExceeded];
          break;
      }

      goto LABEL_27;
    }

    if (content_type == 4)
    {
      contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationMtResponse];
      goto LABEL_27;
    }

    if (content_type == 5)
    {
      [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationTextToSpeechResponse];
    }

    else
    {
      [(FTSpeechTranslationStreamingResponse *)self contentAsFTFinalBlazarResponse];
    }

    contentAsFTSpeechTranslationPartialRecognitionResponse = LABEL_11:;
    goto LABEL_27;
  }

  if (content_type <= 9)
  {
    if (content_type == 7)
    {
      contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTRecognitionProgress];
      goto LABEL_27;
    }

    if (content_type == 8)
    {
      [(FTSpeechTranslationStreamingResponse *)self contentAsFTRecognitionCandidate];
    }

    else
    {
      [(FTSpeechTranslationStreamingResponse *)self contentAsFTRequestStatsResponse];
    }

    goto LABEL_11;
  }

  switch(content_type)
  {
    case 10:
      contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTServerEndpointFeatures];
      break;
    case 11:
      contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTClientSetupInfo];
      break;
    case 12:
      contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationServerEndpointFeatures];
      break;
  }

LABEL_27:

  return contentAsFTSpeechTranslationPartialRecognitionResponse;
}

+ (Class)content_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8D28[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 7;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 8;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 9;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 10;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 11;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(FTSpeechTranslationStreamingResponse *)self content_type];
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 1)
  {
    contentAsFTSpeechTranslationPartialRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationPartialRecognitionResponse];
    v7 = [contentAsFTSpeechTranslationPartialRecognitionResponse addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 2)
  {
    contentAsFTSpeechTranslationFinalRecognitionResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationFinalRecognitionResponse];
    v10 = [contentAsFTSpeechTranslationFinalRecognitionResponse addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 3)
  {
    contentAsFTAudioLimitExceeded = [(FTSpeechTranslationStreamingResponse *)self contentAsFTAudioLimitExceeded];
    v13 = [contentAsFTAudioLimitExceeded addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 4)
  {
    contentAsFTSpeechTranslationMtResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationMtResponse];
    v16 = [contentAsFTSpeechTranslationMtResponse addObjectToBuffer:buffer];

    v50 = v16;
  }

  else
  {
    v50 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 5)
  {
    contentAsFTSpeechTranslationTextToSpeechResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationTextToSpeechResponse];
    v18 = [contentAsFTSpeechTranslationTextToSpeechResponse addObjectToBuffer:buffer];

    v49 = v18;
  }

  else
  {
    v49 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 6)
  {
    contentAsFTFinalBlazarResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTFinalBlazarResponse];
    v20 = [contentAsFTFinalBlazarResponse addObjectToBuffer:buffer];

    v48 = v20;
  }

  else
  {
    v48 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 7)
  {
    contentAsFTRecognitionProgress = [(FTSpeechTranslationStreamingResponse *)self contentAsFTRecognitionProgress];
    v22 = [contentAsFTRecognitionProgress addObjectToBuffer:buffer];

    v47 = v22;
  }

  else
  {
    v47 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 8)
  {
    contentAsFTRecognitionCandidate = [(FTSpeechTranslationStreamingResponse *)self contentAsFTRecognitionCandidate];
    v24 = [contentAsFTRecognitionCandidate addObjectToBuffer:buffer];

    v46 = v24;
  }

  else
  {
    v46 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 9)
  {
    contentAsFTRequestStatsResponse = [(FTSpeechTranslationStreamingResponse *)self contentAsFTRequestStatsResponse];
    v26 = [contentAsFTRequestStatsResponse addObjectToBuffer:buffer];

    v45 = v26;
  }

  else
  {
    v45 = 0;
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 10)
  {
    contentAsFTServerEndpointFeatures = [(FTSpeechTranslationStreamingResponse *)self contentAsFTServerEndpointFeatures];
    v28 = [contentAsFTServerEndpointFeatures addObjectToBuffer:buffer];

    v44 = v28;
  }

  else
  {
    v44 = 0;
  }

  v29 = v14;
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 11)
  {
    contentAsFTClientSetupInfo = [(FTSpeechTranslationStreamingResponse *)self contentAsFTClientSetupInfo];
    v31 = [contentAsFTClientSetupInfo addObjectToBuffer:buffer];

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v11;
  v42 = v32;
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 12)
  {
    v34 = [(FTSpeechTranslationStreamingResponse *)self contentAsFTSpeechTranslationServerEndpointFeatures:v32];
    v35 = [v34 addObjectToBuffer:buffer];
    v36 = v8;

    v37 = v35;
  }

  else
  {
    v36 = v8;
    v37 = 0;
  }

  *(buffer + 70) = 1;
  v38 = *(buffer + 5);
  v39 = *(buffer + 6);
  v40 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type, 0);
  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v36);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v33);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v29);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v50);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v49);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v48);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v47);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v46);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v45);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v44);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v43);
  }

  if ([(FTSpeechTranslationStreamingResponse *)self content_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v37);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v40 - v39 + v38);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSpeechTranslationStreamingResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__52__FTSpeechTranslationStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
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