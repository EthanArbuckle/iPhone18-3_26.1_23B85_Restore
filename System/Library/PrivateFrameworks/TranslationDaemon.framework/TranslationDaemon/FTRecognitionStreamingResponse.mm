@interface FTRecognitionStreamingResponse
+ (Class)content_immutableClassForType:(int64_t)a3;
+ (int64_t)content_typeForImmutableObject:(id)a3;
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
- (FTRecognitionStreamingResponse)initWithFlatbuffData:(id)a3 root:(const RecognitionStreamingResponse *)a4 verify:(BOOL)a5;
- (FTRequestStatsResponse)contentAsFTRequestStatsResponse;
- (FTServerEndpointFeatures)contentAsFTServerEndpointFeatures;
- (FTUpdatedAcousticProfile)contentAsFTUpdatedAcousticProfile;
- (Offset<siri::speech::qss_fb::RecognitionStreamingResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTRecognitionStreamingResponse

- (FTRecognitionStreamingResponse)initWithFlatbuffData:(id)a3 root:(const RecognitionStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTRecognitionStreamingResponse;
  v10 = [(FTRecognitionStreamingResponse *)&v29 init];
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
        if (!siri::speech::qss_fb::RecognitionStreamingResponse::Verify(v19, &v24))
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
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTFinalSpeechRecognitionResponse];
      break;
    case 2:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTMultiUserFinalSpeechRecognitionResponse];
      break;
    case 3:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTPartialSpeechRecognitionResponse];
      break;
    case 4:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTUpdatedAcousticProfile];
      break;
    case 5:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTEndPointLikelihood];
      break;
    case 6:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTEndPointCandidate];
      break;
    case 7:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTRecognitionProgress];
      break;
    case 8:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTCheckForSpeechResponse];
      break;
    case 9:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTRecognitionCandidate];
      break;
    case 10:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTMultiUserRecognitionCandidate];
      break;
    case 11:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTRequestStatsResponse];
      break;
    case 12:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTServerEndpointFeatures];
      break;
    case 13:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTClientSetupInfo];
      break;
    case 14:
      v3 = [(FTRecognitionStreamingResponse *)self contentAsFTAudioLimitExceeded];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

+ (Class)content_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 0xD)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8B70[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (int64_t)content_typeForImmutableObject:(id)a3
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

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 8;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 9;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 10;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 11;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 12;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 13;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::RecognitionStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTRecognitionStreamingResponse *)self content_type];
  if ([(FTRecognitionStreamingResponse *)self content_type]== 1)
  {
    v6 = [(FTRecognitionStreamingResponse *)self contentAsFTFinalSpeechRecognitionResponse];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 2)
  {
    v9 = [(FTRecognitionStreamingResponse *)self contentAsFTMultiUserFinalSpeechRecognitionResponse];
    v10 = [v9 addObjectToBuffer:a3];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 3)
  {
    v12 = [(FTRecognitionStreamingResponse *)self contentAsFTPartialSpeechRecognitionResponse];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 4)
  {
    v15 = [(FTRecognitionStreamingResponse *)self contentAsFTUpdatedAcousticProfile];
    v16 = [v15 addObjectToBuffer:a3];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 5)
  {
    v18 = [(FTRecognitionStreamingResponse *)self contentAsFTEndPointLikelihood];
    v19 = [v18 addObjectToBuffer:a3];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 6)
  {
    v21 = [(FTRecognitionStreamingResponse *)self contentAsFTEndPointCandidate];
    v22 = [v21 addObjectToBuffer:a3];

    v56 = v22;
  }

  else
  {
    v56 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 7)
  {
    v23 = [(FTRecognitionStreamingResponse *)self contentAsFTRecognitionProgress];
    v24 = [v23 addObjectToBuffer:a3];

    v55 = v24;
  }

  else
  {
    v55 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 8)
  {
    v25 = [(FTRecognitionStreamingResponse *)self contentAsFTCheckForSpeechResponse];
    v26 = [v25 addObjectToBuffer:a3];

    v54 = v26;
  }

  else
  {
    v54 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 9)
  {
    v27 = [(FTRecognitionStreamingResponse *)self contentAsFTRecognitionCandidate];
    v28 = [v27 addObjectToBuffer:a3];

    v53 = v28;
  }

  else
  {
    v53 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 10)
  {
    v29 = [(FTRecognitionStreamingResponse *)self contentAsFTMultiUserRecognitionCandidate];
    v30 = [v29 addObjectToBuffer:a3];

    v52 = v30;
  }

  else
  {
    v52 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 11)
  {
    v31 = [(FTRecognitionStreamingResponse *)self contentAsFTRequestStatsResponse];
    v32 = [v31 addObjectToBuffer:a3];

    v51 = v32;
  }

  else
  {
    v51 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 12)
  {
    v33 = [(FTRecognitionStreamingResponse *)self contentAsFTServerEndpointFeatures];
    v34 = [v33 addObjectToBuffer:a3];

    v50 = v34;
  }

  else
  {
    v50 = 0;
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 13)
  {
    v35 = [(FTRecognitionStreamingResponse *)self contentAsFTClientSetupInfo];
    v36 = [v35 addObjectToBuffer:a3];

    v47 = v36;
  }

  else
  {
    v47 = 0;
  }

  v49 = v20;
  if ([(FTRecognitionStreamingResponse *)self content_type]== 14)
  {
    v37 = v5;
    v38 = [(FTRecognitionStreamingResponse *)self contentAsFTAudioLimitExceeded];
    v39 = [v38 addObjectToBuffer:a3];
    v40 = v14;
    v41 = v8;
    v42 = v37;

    v43 = v39;
  }

  else
  {
    v40 = v14;
    v41 = v8;
    v42 = v5;
    v43 = 0;
  }

  *(a3 + 70) = 1;
  v44 = *(a3 + 6);
  v45 = *(a3 + 4);
  v57 = *(a3 + 5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v42, 0);
  if ([(FTRecognitionStreamingResponse *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v41);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v11);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v40);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v17);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v49);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v56);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v55);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v54);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v53);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v52);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v51);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v50);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 13)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v48);
  }

  if ([(FTRecognitionStreamingResponse *)self content_type]== 14)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v43);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v45 - v44 + v57);
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