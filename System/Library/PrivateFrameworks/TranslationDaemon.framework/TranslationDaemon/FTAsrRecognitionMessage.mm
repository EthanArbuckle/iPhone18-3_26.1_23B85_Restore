@interface FTAsrRecognitionMessage
+ (Class)session_message_immutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)session_message;
- (FTAsrRecognitionMessage)initWithFlatbuffData:(id)data root:(const AsrRecognitionMessage *)root verify:(BOOL)verify;
- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTCheckForSpeechRequest)session_messageAsFTCheckForSpeechRequest;
- (FTCheckForSpeechResponse)session_messageAsFTCheckForSpeechResponse;
- (FTClientSetupInfo)session_messageAsFTClientSetupInfo;
- (FTEndPointCandidate)session_messageAsFTEndPointCandidate;
- (FTEndPointLikelihood)session_messageAsFTEndPointLikelihood;
- (FTFinalSpeechRecognitionResponse)session_messageAsFTFinalSpeechRecognitionResponse;
- (FTFinishAudio)session_messageAsFTFinishAudio;
- (FTMultiUserFinalSpeechRecognitionResponse)session_messageAsFTMultiUserFinalSpeechRecognitionResponse;
- (FTMultiUserRecognitionCandidate)session_messageAsFTMultiUserRecognitionCandidate;
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
- (FTStartSpeechRequest)session_messageAsFTStartSpeechRequest;
- (FTUpdateAudioInfo)session_messageAsFTUpdateAudioInfo;
- (FTUpdatedAcousticProfile)session_messageAsFTUpdatedAcousticProfile;
- (Offset<siri::speech::qss_fb::AsrRecognitionMessage>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTAsrRecognitionMessage

- (FTAsrRecognitionMessage)initWithFlatbuffData:(id)data root:(const AsrRecognitionMessage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTAsrRecognitionMessage;
  v10 = [(FTAsrRecognitionMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::AsrRecognitionMessage::Verify(v19, &v24))
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

- (FTStartSpeechRequest)session_messageAsFTStartSpeechRequest
{
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTStartSpeechRequest alloc];
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

      v3 = [(FTStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 2)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 3)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 4)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 5)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 6)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 7)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 8)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 9)
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

- (FTCheckForSpeechRequest)session_messageAsFTCheckForSpeechRequest
{
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTCheckForSpeechRequest alloc];
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

      v3 = [(FTCheckForSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 11)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 12)
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

- (FTMultiUserFinalSpeechRecognitionResponse)session_messageAsFTMultiUserFinalSpeechRecognitionResponse
{
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 13)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 14)
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

- (FTUpdatedAcousticProfile)session_messageAsFTUpdatedAcousticProfile
{
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 15)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTEndPointLikelihood)session_messageAsFTEndPointLikelihood
{
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 16)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"session_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTEndPointCandidate)session_messageAsFTEndPointCandidate
{
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 17)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 18)
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

- (FTCheckForSpeechResponse)session_messageAsFTCheckForSpeechResponse
{
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 19)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 20)
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

- (FTMultiUserRecognitionCandidate)session_messageAsFTMultiUserRecognitionCandidate
{
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 21)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 22)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 23)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 24)
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
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 25)
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

- (FLTBFBufferAccessor)session_message
{
  switch([(FTAsrRecognitionMessage *)self session_message_type])
  {
    case 1:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTStartSpeechRequest];
      break;
    case 2:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTUpdateAudioInfo];
      break;
    case 3:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTSetRequestOrigin];
      break;
    case 4:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTSetSpeechContext];
      break;
    case 5:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTSetSpeechProfile];
      break;
    case 6:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTSetEndpointerState];
      break;
    case 7:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTAudioPacket];
      break;
    case 8:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTFinishAudio];
      break;
    case 9:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTResetServerEndpointer];
      break;
    case 10:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTCheckForSpeechRequest];
      break;
    case 11:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTSetAlternateRecognitionSausage];
      break;
    case 12:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTFinalSpeechRecognitionResponse];
      break;
    case 13:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTMultiUserFinalSpeechRecognitionResponse];
      break;
    case 14:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTPartialSpeechRecognitionResponse];
      break;
    case 15:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTUpdatedAcousticProfile];
      break;
    case 16:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTEndPointLikelihood];
      break;
    case 17:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTEndPointCandidate];
      break;
    case 18:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTRecognitionProgress];
      break;
    case 19:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTCheckForSpeechResponse];
      break;
    case 20:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTRecognitionCandidate];
      break;
    case 21:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTMultiUserRecognitionCandidate];
      break;
    case 22:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTRequestStatsResponse];
      break;
    case 23:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTServerEndpointFeatures];
      break;
    case 24:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTClientSetupInfo];
      break;
    case 25:
      session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTAudioLimitExceeded];
      break;
    default:
      session_messageAsFTStartSpeechRequest = 0;
      break;
  }

  return session_messageAsFTStartSpeechRequest;
}

+ (Class)session_message_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 0x18)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B82E0[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 15;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 16;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 17;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 18;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 19;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 20;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 21;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 22;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 23;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 24;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 25;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::AsrRecognitionMessage>)addObjectToBuffer:(void *)buffer
{
  session_message_type = [(FTAsrRecognitionMessage *)self session_message_type];
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 1)
  {
    session_messageAsFTStartSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTStartSpeechRequest];
    v7 = [session_messageAsFTStartSpeechRequest addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 2)
  {
    session_messageAsFTUpdateAudioInfo = [(FTAsrRecognitionMessage *)self session_messageAsFTUpdateAudioInfo];
    v10 = [session_messageAsFTUpdateAudioInfo addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 3)
  {
    session_messageAsFTSetRequestOrigin = [(FTAsrRecognitionMessage *)self session_messageAsFTSetRequestOrigin];
    v13 = [session_messageAsFTSetRequestOrigin addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 4)
  {
    session_messageAsFTSetSpeechContext = [(FTAsrRecognitionMessage *)self session_messageAsFTSetSpeechContext];
    v16 = [session_messageAsFTSetSpeechContext addObjectToBuffer:buffer];

    v89 = v16;
  }

  else
  {
    v89 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 5)
  {
    session_messageAsFTSetSpeechProfile = [(FTAsrRecognitionMessage *)self session_messageAsFTSetSpeechProfile];
    v18 = [session_messageAsFTSetSpeechProfile addObjectToBuffer:buffer];

    v88 = v18;
  }

  else
  {
    v88 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 6)
  {
    session_messageAsFTSetEndpointerState = [(FTAsrRecognitionMessage *)self session_messageAsFTSetEndpointerState];
    v20 = [session_messageAsFTSetEndpointerState addObjectToBuffer:buffer];

    v87 = v20;
  }

  else
  {
    v87 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 7)
  {
    session_messageAsFTAudioPacket = [(FTAsrRecognitionMessage *)self session_messageAsFTAudioPacket];
    v22 = [session_messageAsFTAudioPacket addObjectToBuffer:buffer];

    v86 = v22;
  }

  else
  {
    v86 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 8)
  {
    session_messageAsFTFinishAudio = [(FTAsrRecognitionMessage *)self session_messageAsFTFinishAudio];
    v24 = [session_messageAsFTFinishAudio addObjectToBuffer:buffer];

    v85 = v24;
  }

  else
  {
    v85 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 9)
  {
    session_messageAsFTResetServerEndpointer = [(FTAsrRecognitionMessage *)self session_messageAsFTResetServerEndpointer];
    v26 = [session_messageAsFTResetServerEndpointer addObjectToBuffer:buffer];

    v84 = v26;
  }

  else
  {
    v84 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 10)
  {
    session_messageAsFTCheckForSpeechRequest = [(FTAsrRecognitionMessage *)self session_messageAsFTCheckForSpeechRequest];
    v28 = [session_messageAsFTCheckForSpeechRequest addObjectToBuffer:buffer];

    v83 = v28;
  }

  else
  {
    v83 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 11)
  {
    session_messageAsFTSetAlternateRecognitionSausage = [(FTAsrRecognitionMessage *)self session_messageAsFTSetAlternateRecognitionSausage];
    v30 = [session_messageAsFTSetAlternateRecognitionSausage addObjectToBuffer:buffer];

    v82 = v30;
  }

  else
  {
    v82 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 12)
  {
    session_messageAsFTFinalSpeechRecognitionResponse = [(FTAsrRecognitionMessage *)self session_messageAsFTFinalSpeechRecognitionResponse];
    v32 = [session_messageAsFTFinalSpeechRecognitionResponse addObjectToBuffer:buffer];

    v81 = v32;
  }

  else
  {
    v81 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 13)
  {
    session_messageAsFTMultiUserFinalSpeechRecognitionResponse = [(FTAsrRecognitionMessage *)self session_messageAsFTMultiUserFinalSpeechRecognitionResponse];
    v34 = [session_messageAsFTMultiUserFinalSpeechRecognitionResponse addObjectToBuffer:buffer];

    v80 = v34;
  }

  else
  {
    v80 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 14)
  {
    session_messageAsFTPartialSpeechRecognitionResponse = [(FTAsrRecognitionMessage *)self session_messageAsFTPartialSpeechRecognitionResponse];
    v36 = [session_messageAsFTPartialSpeechRecognitionResponse addObjectToBuffer:buffer];

    v79 = v36;
  }

  else
  {
    v79 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 15)
  {
    session_messageAsFTUpdatedAcousticProfile = [(FTAsrRecognitionMessage *)self session_messageAsFTUpdatedAcousticProfile];
    v38 = [session_messageAsFTUpdatedAcousticProfile addObjectToBuffer:buffer];

    v78 = v38;
  }

  else
  {
    v78 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 16)
  {
    session_messageAsFTEndPointLikelihood = [(FTAsrRecognitionMessage *)self session_messageAsFTEndPointLikelihood];
    v40 = [session_messageAsFTEndPointLikelihood addObjectToBuffer:buffer];

    v77 = v40;
  }

  else
  {
    v77 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 17)
  {
    session_messageAsFTEndPointCandidate = [(FTAsrRecognitionMessage *)self session_messageAsFTEndPointCandidate];
    v42 = [session_messageAsFTEndPointCandidate addObjectToBuffer:buffer];

    v76 = v42;
  }

  else
  {
    v76 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 18)
  {
    session_messageAsFTRecognitionProgress = [(FTAsrRecognitionMessage *)self session_messageAsFTRecognitionProgress];
    v44 = [session_messageAsFTRecognitionProgress addObjectToBuffer:buffer];

    v75 = v44;
  }

  else
  {
    v75 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 19)
  {
    session_messageAsFTCheckForSpeechResponse = [(FTAsrRecognitionMessage *)self session_messageAsFTCheckForSpeechResponse];
    v46 = [session_messageAsFTCheckForSpeechResponse addObjectToBuffer:buffer];

    v74 = v46;
  }

  else
  {
    v74 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 20)
  {
    session_messageAsFTRecognitionCandidate = [(FTAsrRecognitionMessage *)self session_messageAsFTRecognitionCandidate];
    v48 = [session_messageAsFTRecognitionCandidate addObjectToBuffer:buffer];

    v73 = v48;
  }

  else
  {
    v73 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 21)
  {
    session_messageAsFTMultiUserRecognitionCandidate = [(FTAsrRecognitionMessage *)self session_messageAsFTMultiUserRecognitionCandidate];
    v50 = [session_messageAsFTMultiUserRecognitionCandidate addObjectToBuffer:buffer];

    v72 = v50;
  }

  else
  {
    v72 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 22)
  {
    session_messageAsFTRequestStatsResponse = [(FTAsrRecognitionMessage *)self session_messageAsFTRequestStatsResponse];
    v52 = [session_messageAsFTRequestStatsResponse addObjectToBuffer:buffer];

    v71 = v52;
  }

  else
  {
    v71 = 0;
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 23)
  {
    session_messageAsFTServerEndpointFeatures = [(FTAsrRecognitionMessage *)self session_messageAsFTServerEndpointFeatures];
    v54 = [session_messageAsFTServerEndpointFeatures addObjectToBuffer:buffer];

    v70 = v54;
  }

  else
  {
    v70 = 0;
  }

  v55 = v14;
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 24)
  {
    session_messageAsFTClientSetupInfo = [(FTAsrRecognitionMessage *)self session_messageAsFTClientSetupInfo];
    v57 = [session_messageAsFTClientSetupInfo addObjectToBuffer:buffer];

    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v59 = v11;
  v68 = v58;
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 25)
  {
    v60 = [(FTAsrRecognitionMessage *)self session_messageAsFTAudioLimitExceeded:v58];
    v61 = [v60 addObjectToBuffer:buffer];
    v62 = v8;

    v63 = v61;
  }

  else
  {
    v62 = v8;
    v63 = 0;
  }

  *(buffer + 70) = 1;
  v65 = *(buffer + 5);
  v64 = *(buffer + 6);
  v66 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, session_message_type, 0);
  if ([(FTAsrRecognitionMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v62);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v59);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v55);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v89);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v88);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v87);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v86);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v85);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v84);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v83);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v82);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v81);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 13)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v80);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 14)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v79);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 15)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v78);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 16)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v77);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 17)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v76);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 18)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v75);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 19)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v74);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 20)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v73);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 21)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v72);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 22)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v71);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 23)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v70);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 24)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v69);
  }

  if ([(FTAsrRecognitionMessage *)self session_message_type]== 25)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v63);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v66 - v64 + v65);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTAsrRecognitionMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__39__FTAsrRecognitionMessage_flatbuffData__block_invoke(uint64_t a1)
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