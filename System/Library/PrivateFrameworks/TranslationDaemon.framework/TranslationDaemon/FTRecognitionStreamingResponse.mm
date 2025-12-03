@interface FTRecognitionStreamingResponse
+ (Class)content_immutableClassForType:(int64_t)type;
+ (int64_t)content_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)content;
- (FTAudioLimitExceeded)contentAsFTAudioLimitExceeded;
- (FTCheckForSpeechResponse)contentAsFTCheckForSpeechResponse;
- (FTClientSetupInfo)contentAsFTClientSetupInfo;
- (FTEndPointCandidate)contentAsFTEndPointCandidate;
- (FTEndPointLikelihood)contentAsFTEndPointLikelihood;
- (FTFinalSpeechRecognitionResponse)contentAsFTFinalSpeechRecognitionResponse;
- (FTMultiUserFinalSpeechRecognitionResponse)contentAsFTMultiUserFinalSpeechRecognitionResponse;
- (FTMultiUserRecognitionCandidate)contentAsFTMultiUserRecognitionCandidate;
- (FTPartialSpeechRecognitionResponse)contentAsFTPartialSpeechRecognitionResponse;
- (FTRecognitionCandidate)contentAsFTRecognitionCandidate;
- (FTRecognitionProgress)contentAsFTRecognitionProgress;
- (FTRecognitionStreamingResponse)initWithFlatbuffData:(id)data root:(const RecognitionStreamingResponse *)root verify:(BOOL)verify;
- (FTRequestStatsResponse)contentAsFTRequestStatsResponse;
- (FTServerEndpointFeatures)contentAsFTServerEndpointFeatures;
- (FTUpdatedAcousticProfile)contentAsFTUpdatedAcousticProfile;
- (Offset<siri::speech::qss_fb::RecognitionStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTRecognitionStreamingResponse

- (FTRecognitionStreamingResponse)initWithFlatbuffData:(id)data root:(const RecognitionStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTRecognitionStreamingResponse;
  v10 = [(FTRecognitionStreamingResponse *)&v29 init];
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
        if (!siri::speech::qss_fb::RecognitionStreamingResponse::Verify(v19, &v24))
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
  if ([(FTRecognitionStreamingResponse *)self content_type]== 1)
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

- (FTMultiUserFinalSpeechRecognitionResponse)contentAsFTMultiUserFinalSpeechRecognitionResponse
{
  if ([(FTRecognitionStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTMultiUserFinalSpeechRecognitionResponse alloc];
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

      v3 = [(FTMultiUserFinalSpeechRecognitionResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTRecognitionStreamingResponse *)self content_type]== 3)
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

- (FTUpdatedAcousticProfile)contentAsFTUpdatedAcousticProfile
{
  if ([(FTRecognitionStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTUpdatedAcousticProfile alloc];
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

      v3 = [(FTUpdatedAcousticProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTEndPointLikelihood)contentAsFTEndPointLikelihood
{
  if ([(FTRecognitionStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTEndPointLikelihood alloc];
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

      v3 = [(FTEndPointLikelihood *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTEndPointCandidate)contentAsFTEndPointCandidate
{
  if ([(FTRecognitionStreamingResponse *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTEndPointCandidate alloc];
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

      v3 = [(FTEndPointCandidate *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTRecognitionStreamingResponse *)self content_type]== 7)
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

- (FTCheckForSpeechResponse)contentAsFTCheckForSpeechResponse
{
  if ([(FTRecognitionStreamingResponse *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTCheckForSpeechResponse alloc];
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

      v3 = [(FTCheckForSpeechResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTRecognitionStreamingResponse *)self content_type]== 9)
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

- (FTMultiUserRecognitionCandidate)contentAsFTMultiUserRecognitionCandidate
{
  if ([(FTRecognitionStreamingResponse *)self content_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [FTMultiUserRecognitionCandidate alloc];
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

      v3 = [(FTMultiUserRecognitionCandidate *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTRecognitionStreamingResponse *)self content_type]== 11)
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
  if ([(FTRecognitionStreamingResponse *)self content_type]== 12)
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
  if ([(FTRecognitionStreamingResponse *)self content_type]== 13)
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

- (FTAudioLimitExceeded)contentAsFTAudioLimitExceeded
{
  if ([(FTRecognitionStreamingResponse *)self content_type]== 14)
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

- (FLTBFBufferAccessor)content
{
  switch([(FTRecognitionStreamingResponse *)self content_type])
  {
    case 1:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTFinalSpeechRecognitionResponse];
      break;
    case 2:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTMultiUserFinalSpeechRecognitionResponse];
      break;
    case 3:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTPartialSpeechRecognitionResponse];
      break;
    case 4:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTUpdatedAcousticProfile];
      break;
    case 5:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTEndPointLikelihood];
      break;
    case 6:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTEndPointCandidate];
      break;
    case 7:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTRecognitionProgress];
      break;
    case 8:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTCheckForSpeechResponse];
      break;
    case 9:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTRecognitionCandidate];
      break;
    case 10:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTMultiUserRecognitionCandidate];
      break;
    case 11:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTRequestStatsResponse];
      break;
    case 12:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTServerEndpointFeatures];
      break;
    case 13:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTClientSetupInfo];
      break;
    case 14:
      contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTAudioLimitExceeded];
      break;
    default:
      contentAsFTFinalSpeechRecognitionResponse = 0;
      break;
  }

  return contentAsFTFinalSpeechRecognitionResponse;
}

+ (Class)content_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 0xD)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8B70[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 13;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::RecognitionStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  content_type = [(FTRecognitionStreamingResponse *)self content_type];
  if ([(FTRecognitionStreamingResponse *)self content_type]== 1)
  {
    contentAsFTFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTFinalSpeechRecognitionResponse];
    v7 = [contentAsFTFinalSpeechRecognitionResponse addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 2)
  {
    contentAsFTMultiUserFinalSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTMultiUserFinalSpeechRecognitionResponse];
    v10 = [contentAsFTMultiUserFinalSpeechRecognitionResponse addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 3)
  {
    contentAsFTPartialSpeechRecognitionResponse = [(FTRecognitionStreamingResponse *)self contentAsFTPartialSpeechRecognitionResponse];
    v13 = [contentAsFTPartialSpeechRecognitionResponse addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 4)
  {
    contentAsFTUpdatedAcousticProfile = [(FTRecognitionStreamingResponse *)self contentAsFTUpdatedAcousticProfile];
    v16 = [contentAsFTUpdatedAcousticProfile addObjectToBuffer:buffer];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 5)
  {
    contentAsFTEndPointLikelihood = [(FTRecognitionStreamingResponse *)self contentAsFTEndPointLikelihood];
    v19 = [contentAsFTEndPointLikelihood addObjectToBuffer:buffer];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 6)
  {
    contentAsFTEndPointCandidate = [(FTRecognitionStreamingResponse *)self contentAsFTEndPointCandidate];
    v22 = [contentAsFTEndPointCandidate addObjectToBuffer:buffer];

    v56 = v22;
  }

  else
  {
    v56 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 7)
  {
    contentAsFTRecognitionProgress = [(FTRecognitionStreamingResponse *)self contentAsFTRecognitionProgress];
    v24 = [contentAsFTRecognitionProgress addObjectToBuffer:buffer];

    v55 = v24;
  }

  else
  {
    v55 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 8)
  {
    contentAsFTCheckForSpeechResponse = [(FTRecognitionStreamingResponse *)self contentAsFTCheckForSpeechResponse];
    v26 = [contentAsFTCheckForSpeechResponse addObjectToBuffer:buffer];

    v54 = v26;
  }

  else
  {
    v54 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 9)
  {
    contentAsFTRecognitionCandidate = [(FTRecognitionStreamingResponse *)self contentAsFTRecognitionCandidate];
    v28 = [contentAsFTRecognitionCandidate addObjectToBuffer:buffer];

    v53 = v28;
  }

  else
  {
    v53 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 10)
  {
    contentAsFTMultiUserRecognitionCandidate = [(FTRecognitionStreamingResponse *)self contentAsFTMultiUserRecognitionCandidate];
    v30 = [contentAsFTMultiUserRecognitionCandidate addObjectToBuffer:buffer];

    v52 = v30;
  }

  else
  {
    v52 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 11)
  {
    contentAsFTRequestStatsResponse = [(FTRecognitionStreamingResponse *)self contentAsFTRequestStatsResponse];
    v32 = [contentAsFTRequestStatsResponse addObjectToBuffer:buffer];

    v51 = v32;
  }

  else
  {
    v51 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 12)
  {
    contentAsFTServerEndpointFeatures = [(FTRecognitionStreamingResponse *)self contentAsFTServerEndpointFeatures];
    v34 = [contentAsFTServerEndpointFeatures addObjectToBuffer:buffer];

    v50 = v34;
  }

  else
  {
    v50 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 13)
  {
    contentAsFTClientSetupInfo = [(FTRecognitionStreamingResponse *)self contentAsFTClientSetupInfo];
    v36 = [contentAsFTClientSetupInfo addObjectToBuffer:buffer];

    v47 = v36;
  }

  else
  {
    v47 = 0;
  }

  v49 = v20;
  if ([(FTRecognitionStreamingResponse *)self content_type]== 14)
  {
    v37 = content_type;
    contentAsFTAudioLimitExceeded = [(FTRecognitionStreamingResponse *)self contentAsFTAudioLimitExceeded];
    v39 = [contentAsFTAudioLimitExceeded addObjectToBuffer:buffer];
    v40 = v14;
    v41 = v8;
    v42 = v37;

    v43 = v39;
  }

  else
  {
    v40 = v14;
    v41 = v8;
    v42 = content_type;
    v43 = 0;
  }

  *(buffer + 70) = 1;
  v44 = *(buffer + 6);
  v45 = *(buffer + 4);
  v57 = *(buffer + 5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, v42, 0);
  if ([(FTRecognitionStreamingResponse *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v41);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v11);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v40);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v17);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v49);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v56);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v55);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v54);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v53);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v52);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v51);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v50);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 13)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v48);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 14)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v43);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v45 - v44 + v57);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRecognitionStreamingResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__46__FTRecognitionStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
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