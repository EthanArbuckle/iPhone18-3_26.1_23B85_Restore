@interface FTBlazarMultiUserMessage
+ (Class)session_message_immutableClassForType:(int64_t)a3;
+ (int64_t)session_message_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)session_message;
- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTBlazarMultiUserMessage)initWithFlatbuffData:(id)a3 root:(const BlazarMultiUserMessage *)a4 verify:(BOOL)a5;
- (FTClientSetupInfo)session_messageAsFTClientSetupInfo;
- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse;
- (FTFinalSpeechRecognitionResponse)session_messageAsFTFinalSpeechRecognitionResponse;
- (FTFinishAudio)session_messageAsFTFinishAudio;
- (FTMultiUserStartSpeechRequest)session_messageAsFTMultiUserStartSpeechRequest;
- (FTPartialSpeechRecognitionResponse)session_messageAsFTPartialSpeechRecognitionResponse;
- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate;
- (FTRecognitionProgress)session_messageAsFTRecognitionProgress;
- (FTRequestStatsResponse)session_messageAsFTRequestStatsResponse;
- (FTResetServerEndpointer)session_messageAsFTResetServerEndpointer;
- (FTServerEndpointFeatures)session_messageAsFTServerEndpointFeatures;
- (FTSetAlternateRecognitionSausage)session_messageAsFTSetAlternateRecognitionSausage;
- (FTSetEndpointerState)session_messageAsFTSetEndpointerState;
- (FTSetRequestOrigin)session_messageAsFTSetRequestOrigin;
- (FTSetSpeechContext)session_messageAsFTSetSpeechContext;
- (FTSetSpeechProfile)session_messageAsFTSetSpeechProfile;
- (FTUpdateAudioInfo)session_messageAsFTUpdateAudioInfo;
- (Offset<siri::speech::qss_fb::BlazarMultiUserMessage>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTBlazarMultiUserMessage

- (FTBlazarMultiUserMessage)initWithFlatbuffData:(id)a3 root:(const BlazarMultiUserMessage *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTBlazarMultiUserMessage;
  v10 = [(FTBlazarMultiUserMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::BlazarMultiUserMessage::Verify(v19, &v24))
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

- (FTMultiUserStartSpeechRequest)session_messageAsFTMultiUserStartSpeechRequest
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTMultiUserStartSpeechRequest alloc];
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

      v3 = [(FTMultiUserStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTUpdateAudioInfo)session_messageAsFTUpdateAudioInfo
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTUpdateAudioInfo alloc];
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

      v3 = [(FTUpdateAudioInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSetRequestOrigin)session_messageAsFTSetRequestOrigin
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTSetRequestOrigin alloc];
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

      v3 = [(FTSetRequestOrigin *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSetSpeechContext)session_messageAsFTSetSpeechContext
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTSetSpeechContext alloc];
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

      v3 = [(FTSetSpeechContext *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSetSpeechProfile)session_messageAsFTSetSpeechProfile
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTSetSpeechProfile alloc];
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

      v3 = [(FTSetSpeechProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 6)
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

- (FTAudioPacket)session_messageAsFTAudioPacket
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 7)
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
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 8)
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

- (FTResetServerEndpointer)session_messageAsFTResetServerEndpointer
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 9)
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

- (FTSetAlternateRecognitionSausage)session_messageAsFTSetAlternateRecognitionSausage
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTSetAlternateRecognitionSausage alloc];
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

      v3 = [(FTSetAlternateRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTFinalSpeechRecognitionResponse)session_messageAsFTFinalSpeechRecognitionResponse
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTPartialSpeechRecognitionResponse)session_messageAsFTPartialSpeechRecognitionResponse
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 13)
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
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 14)
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
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 15)
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
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 16)
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
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 17)
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

- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 18)
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

- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse
{
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 19)
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

- (FLTBFBufferAccessor)session_message
{
  switch([(FTBlazarMultiUserMessage *)self session_message_type])
  {
    case 1:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTMultiUserStartSpeechRequest];
      break;
    case 2:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTUpdateAudioInfo];
      break;
    case 3:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetRequestOrigin];
      break;
    case 4:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetSpeechContext];
      break;
    case 5:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetSpeechProfile];
      break;
    case 6:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetEndpointerState];
      break;
    case 7:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTAudioPacket];
      break;
    case 8:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTFinishAudio];
      break;
    case 9:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTResetServerEndpointer];
      break;
    case 10:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetAlternateRecognitionSausage];
      break;
    case 11:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTFinalSpeechRecognitionResponse];
      break;
    case 12:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTPartialSpeechRecognitionResponse];
      break;
    case 13:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTRecognitionProgress];
      break;
    case 14:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTRecognitionCandidate];
      break;
    case 15:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTRequestStatsResponse];
      break;
    case 16:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTServerEndpointFeatures];
      break;
    case 17:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTClientSetupInfo];
      break;
    case 18:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTAudioLimitExceeded];
      break;
    case 19:
      v3 = [(FTBlazarMultiUserMessage *)self session_messageAsFTFinalBlazarResponse];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

+ (Class)session_message_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 0x12)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B83A8[a3 - 1];
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::BlazarMultiUserMessage>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTBlazarMultiUserMessage *)self session_message_type];
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 1)
  {
    v6 = [(FTBlazarMultiUserMessage *)self session_messageAsFTMultiUserStartSpeechRequest];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 2)
  {
    v9 = [(FTBlazarMultiUserMessage *)self session_messageAsFTUpdateAudioInfo];
    v10 = [v9 addObjectToBuffer:a3];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 3)
  {
    v12 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetRequestOrigin];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 4)
  {
    v15 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetSpeechContext];
    v16 = [v15 addObjectToBuffer:a3];

    v70 = v16;
  }

  else
  {
    v70 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 5)
  {
    v17 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetSpeechProfile];
    v18 = [v17 addObjectToBuffer:a3];

    v69 = v18;
  }

  else
  {
    v69 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 6)
  {
    v19 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetEndpointerState];
    v20 = [v19 addObjectToBuffer:a3];

    v68 = v20;
  }

  else
  {
    v68 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 7)
  {
    v21 = [(FTBlazarMultiUserMessage *)self session_messageAsFTAudioPacket];
    v22 = [v21 addObjectToBuffer:a3];

    v67 = v22;
  }

  else
  {
    v67 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 8)
  {
    v23 = [(FTBlazarMultiUserMessage *)self session_messageAsFTFinishAudio];
    v24 = [v23 addObjectToBuffer:a3];

    v66 = v24;
  }

  else
  {
    v66 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 9)
  {
    v25 = [(FTBlazarMultiUserMessage *)self session_messageAsFTResetServerEndpointer];
    v26 = [v25 addObjectToBuffer:a3];

    v65 = v26;
  }

  else
  {
    v65 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 10)
  {
    v27 = [(FTBlazarMultiUserMessage *)self session_messageAsFTSetAlternateRecognitionSausage];
    v28 = [v27 addObjectToBuffer:a3];

    v64 = v28;
  }

  else
  {
    v64 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 11)
  {
    v29 = [(FTBlazarMultiUserMessage *)self session_messageAsFTFinalSpeechRecognitionResponse];
    v30 = [v29 addObjectToBuffer:a3];

    v63 = v30;
  }

  else
  {
    v63 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 12)
  {
    v31 = [(FTBlazarMultiUserMessage *)self session_messageAsFTPartialSpeechRecognitionResponse];
    v32 = [v31 addObjectToBuffer:a3];

    v62 = v32;
  }

  else
  {
    v62 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 13)
  {
    v33 = [(FTBlazarMultiUserMessage *)self session_messageAsFTRecognitionProgress];
    v34 = [v33 addObjectToBuffer:a3];

    v61 = v34;
  }

  else
  {
    v61 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 14)
  {
    v35 = [(FTBlazarMultiUserMessage *)self session_messageAsFTRecognitionCandidate];
    v36 = [v35 addObjectToBuffer:a3];

    v60 = v36;
  }

  else
  {
    v60 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 15)
  {
    v37 = [(FTBlazarMultiUserMessage *)self session_messageAsFTRequestStatsResponse];
    v38 = [v37 addObjectToBuffer:a3];

    v59 = v38;
  }

  else
  {
    v59 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 16)
  {
    v39 = [(FTBlazarMultiUserMessage *)self session_messageAsFTServerEndpointFeatures];
    v40 = [v39 addObjectToBuffer:a3];

    v58 = v40;
  }

  else
  {
    v58 = 0;
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 17)
  {
    v41 = [(FTBlazarMultiUserMessage *)self session_messageAsFTClientSetupInfo];
    v42 = [v41 addObjectToBuffer:a3];

    v57 = v42;
  }

  else
  {
    v57 = 0;
  }

  v43 = v14;
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 18)
  {
    v44 = [(FTBlazarMultiUserMessage *)self session_messageAsFTAudioLimitExceeded];
    v45 = [v44 addObjectToBuffer:a3];

    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v47 = v11;
  v56 = v46;
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 19)
  {
    v48 = [(FTBlazarMultiUserMessage *)self session_messageAsFTFinalBlazarResponse];
    v49 = [v48 addObjectToBuffer:a3];
    v50 = v8;

    v51 = v49;
  }

  else
  {
    v50 = v8;
    v51 = 0;
  }

  *(a3 + 70) = 1;
  v53 = *(a3 + 5);
  v52 = *(a3 + 6);
  v54 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5, 0);
  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v50);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v47);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v43);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v70);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v69);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v68);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v67);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v66);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v65);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v64);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v63);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v62);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 13)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v61);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 14)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v60);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 15)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v59);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 16)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v58);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 17)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v57);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 18)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v56);
  }

  if ([(FTBlazarMultiUserMessage *)self session_message_type]== 19)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v51);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v54 - v52 + v53);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBlazarMultiUserMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__40__FTBlazarMultiUserMessage_flatbuffData__block_invoke(uint64_t a1)
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