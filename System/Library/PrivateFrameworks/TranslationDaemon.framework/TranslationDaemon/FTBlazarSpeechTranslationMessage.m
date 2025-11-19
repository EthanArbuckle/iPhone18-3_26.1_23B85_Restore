@interface FTBlazarSpeechTranslationMessage
+ (Class)session_message_immutableClassForType:(int64_t)a3;
+ (int64_t)session_message_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)session_message;
- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTBlazarSpeechTranslationMessage)initWithFlatbuffData:(id)a3 root:(const BlazarSpeechTranslationMessage *)a4 verify:(BOOL)a5;
- (FTClientSetupInfo)session_messageAsFTClientSetupInfo;
- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse;
- (FTFinishAudio)session_messageAsFTFinishAudio;
- (FTLanguageDetected)session_messageAsFTLanguageDetected;
- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate;
- (FTRecognitionProgress)session_messageAsFTRecognitionProgress;
- (FTRequestStatsResponse)session_messageAsFTRequestStatsResponse;
- (FTResetServerEndpointer)session_messageAsFTResetServerEndpointer;
- (FTServerEndpointFeatures)session_messageAsFTServerEndpointFeatures;
- (FTSetEndpointerState)session_messageAsFTSetEndpointerState;
- (FTSpeechTranslationAudioPacket)session_messageAsFTSpeechTranslationAudioPacket;
- (FTSpeechTranslationFinalRecognitionResponse)session_messageAsFTSpeechTranslationFinalRecognitionResponse;
- (FTSpeechTranslationMtResponse)session_messageAsFTSpeechTranslationMtResponse;
- (FTSpeechTranslationPartialRecognitionResponse)session_messageAsFTSpeechTranslationPartialRecognitionResponse;
- (FTSpeechTranslationServerEndpointFeatures)session_messageAsFTSpeechTranslationServerEndpointFeatures;
- (FTSpeechTranslationTextToSpeechResponse)session_messageAsFTSpeechTranslationTextToSpeechResponse;
- (FTStartSpeechTranslationLoggingRequest)session_messageAsFTStartSpeechTranslationLoggingRequest;
- (FTStartSpeechTranslationRequest)session_messageAsFTStartSpeechTranslationRequest;
- (Offset<siri::speech::qss_fb::BlazarSpeechTranslationMessage>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTBlazarSpeechTranslationMessage

- (FTBlazarSpeechTranslationMessage)initWithFlatbuffData:(id)a3 root:(const BlazarSpeechTranslationMessage *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTBlazarSpeechTranslationMessage;
  v10 = [(FTBlazarSpeechTranslationMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::BlazarSpeechTranslationMessage::Verify(v19, &v24))
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

- (FTStartSpeechTranslationRequest)session_messageAsFTStartSpeechTranslationRequest
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTStartSpeechTranslationRequest alloc];
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

      v3 = [(FTStartSpeechTranslationRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTLanguageDetected)session_messageAsFTLanguageDetected
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTLanguageDetected alloc];
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

      v3 = [(FTLanguageDetected *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 3)
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

- (FTSpeechTranslationAudioPacket)session_messageAsFTSpeechTranslationAudioPacket
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTSpeechTranslationAudioPacket alloc];
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

      v3 = [(FTSpeechTranslationAudioPacket *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 5)
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

- (FTSetEndpointerState)session_messageAsFTSetEndpointerState
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTSetEndpointerState alloc];
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

      v3 = [(FTSetEndpointerState *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTResetServerEndpointer)session_messageAsFTResetServerEndpointer
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTResetServerEndpointer alloc];
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

      v3 = [(FTResetServerEndpointer *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTStartSpeechTranslationLoggingRequest)session_messageAsFTStartSpeechTranslationLoggingRequest
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTStartSpeechTranslationLoggingRequest alloc];
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

      v3 = [(FTStartSpeechTranslationLoggingRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationPartialRecognitionResponse)session_messageAsFTSpeechTranslationPartialRecognitionResponse
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationFinalRecognitionResponse)session_messageAsFTSpeechTranslationFinalRecognitionResponse
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationMtResponse)session_messageAsFTSpeechTranslationMtResponse
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationTextToSpeechResponse)session_messageAsFTSpeechTranslationTextToSpeechResponse
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 13)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 14)
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

- (FTRecognitionProgress)session_messageAsFTRecognitionProgress
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 15)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 16)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTRequestStatsResponse)session_messageAsFTRequestStatsResponse
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 17)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTServerEndpointFeatures)session_messageAsFTServerEndpointFeatures
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 18)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTClientSetupInfo)session_messageAsFTClientSetupInfo
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 19)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationServerEndpointFeatures)session_messageAsFTSpeechTranslationServerEndpointFeatures
{
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 20)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
  switch([(FTBlazarSpeechTranslationMessage *)self session_message_type])
  {
    case 1:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTStartSpeechTranslationRequest];
      break;
    case 2:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTLanguageDetected];
      break;
    case 3:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTAudioPacket];
      break;
    case 4:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationAudioPacket];
      break;
    case 5:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTFinishAudio];
      break;
    case 6:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSetEndpointerState];
      break;
    case 7:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTResetServerEndpointer];
      break;
    case 8:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTStartSpeechTranslationLoggingRequest];
      break;
    case 9:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationPartialRecognitionResponse];
      break;
    case 10:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationFinalRecognitionResponse];
      break;
    case 11:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTAudioLimitExceeded];
      break;
    case 12:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationMtResponse];
      break;
    case 13:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationTextToSpeechResponse];
      break;
    case 14:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTFinalBlazarResponse];
      break;
    case 15:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTRecognitionProgress];
      break;
    case 16:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTRecognitionCandidate];
      break;
    case 17:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTRequestStatsResponse];
      break;
    case 18:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTServerEndpointFeatures];
      break;
    case 19:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTClientSetupInfo];
      break;
    case 20:
      v3 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationServerEndpointFeatures];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

+ (Class)session_message_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 0x13)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B84B0[a3 - 1];
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

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 15;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 16;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 17;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 18;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 19;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::BlazarSpeechTranslationMessage>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTBlazarSpeechTranslationMessage *)self session_message_type];
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 1)
  {
    v6 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTStartSpeechTranslationRequest];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 2)
  {
    v9 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTLanguageDetected];
    v10 = [v9 addObjectToBuffer:a3];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 3)
  {
    v12 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTAudioPacket];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 4)
  {
    v15 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationAudioPacket];
    v16 = [v15 addObjectToBuffer:a3];

    v73 = v16;
  }

  else
  {
    v73 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 5)
  {
    v17 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTFinishAudio];
    v18 = [v17 addObjectToBuffer:a3];

    v72 = v18;
  }

  else
  {
    v72 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 6)
  {
    v19 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSetEndpointerState];
    v20 = [v19 addObjectToBuffer:a3];

    v71 = v20;
  }

  else
  {
    v71 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 7)
  {
    v21 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTResetServerEndpointer];
    v22 = [v21 addObjectToBuffer:a3];

    v70 = v22;
  }

  else
  {
    v70 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 8)
  {
    v23 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTStartSpeechTranslationLoggingRequest];
    v24 = [v23 addObjectToBuffer:a3];

    v69 = v24;
  }

  else
  {
    v69 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 9)
  {
    v25 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationPartialRecognitionResponse];
    v26 = [v25 addObjectToBuffer:a3];

    v68 = v26;
  }

  else
  {
    v68 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 10)
  {
    v27 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationFinalRecognitionResponse];
    v28 = [v27 addObjectToBuffer:a3];

    v67 = v28;
  }

  else
  {
    v67 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 11)
  {
    v29 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTAudioLimitExceeded];
    v30 = [v29 addObjectToBuffer:a3];

    v66 = v30;
  }

  else
  {
    v66 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 12)
  {
    v31 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationMtResponse];
    v32 = [v31 addObjectToBuffer:a3];

    v65 = v32;
  }

  else
  {
    v65 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 13)
  {
    v33 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationTextToSpeechResponse];
    v34 = [v33 addObjectToBuffer:a3];

    v64 = v34;
  }

  else
  {
    v64 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 14)
  {
    v35 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTFinalBlazarResponse];
    v36 = [v35 addObjectToBuffer:a3];

    v63 = v36;
  }

  else
  {
    v63 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 15)
  {
    v37 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTRecognitionProgress];
    LODWORD(v38) = [v37 addObjectToBuffer:a3];

    v38 = v38;
  }

  else
  {
    v38 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 16)
  {
    v39 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTRecognitionCandidate];
    v40 = [v39 addObjectToBuffer:a3];

    v62 = v40;
  }

  else
  {
    v62 = 0;
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 17)
  {
    v41 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTRequestStatsResponse];
    v42 = [v41 addObjectToBuffer:a3];

    v61 = v42;
  }

  else
  {
    v61 = 0;
  }

  v43 = v14;
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 18)
  {
    v44 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTServerEndpointFeatures];
    v45 = [v44 addObjectToBuffer:a3];

    v60 = v45;
  }

  else
  {
    v60 = 0;
  }

  v46 = v11;
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 19)
  {
    v47 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTClientSetupInfo];
    LODWORD(v48) = [v47 addObjectToBuffer:a3];

    v48 = v48;
  }

  else
  {
    v48 = 0;
  }

  v49 = v8;
  v57 = v48;
  v59 = v38;
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 20)
  {
    v50 = [(FTBlazarSpeechTranslationMessage *)self session_messageAsFTSpeechTranslationServerEndpointFeatures:v48];
    v51 = [v50 addObjectToBuffer:a3];

    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  *(a3 + 70) = 1;
  v54 = *(a3 + 5);
  v53 = *(a3 + 6);
  v55 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5, 0);
  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v49);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v46);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v43);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v73);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v72);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v71);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v70);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v69);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v68);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v67);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v66);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v65);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 13)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v64);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 14)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v63);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 15)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v59);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 16)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v62);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 17)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v61);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 18)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v60);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 19)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v58);
  }

  if ([(FTBlazarSpeechTranslationMessage *)self session_message_type]== 20)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v52);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v55 - v53 + v54);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBlazarSpeechTranslationMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__48__FTBlazarSpeechTranslationMessage_flatbuffData__block_invoke(uint64_t a1)
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