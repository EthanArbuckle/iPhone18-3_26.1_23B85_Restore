@interface FTBlazarMultilingualMessage
+ (Class)session_message_immutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)session_message;
- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTBlazarMultilingualMessage)initWithFlatbuffData:(id)data root:(const BlazarMultilingualMessage *)root verify:(BOOL)verify;
- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse;
- (FTFinalSpeechRecognitionResponse)session_messageAsFTFinalSpeechRecognitionResponse;
- (FTFinishAudio)session_messageAsFTFinishAudio;
- (FTLanguageDetected)session_messageAsFTLanguageDetected;
- (FTPartialSpeechRecognitionResponse)session_messageAsFTPartialSpeechRecognitionResponse;
- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate;
- (FTRequestStatsResponse)session_messageAsFTRequestStatsResponse;
- (FTSetRequestOrigin)session_messageAsFTSetRequestOrigin;
- (FTSetSpeechContext)session_messageAsFTSetSpeechContext;
- (FTSetSpeechProfile)session_messageAsFTSetSpeechProfile;
- (FTStartMultilingualSpeechRequest)session_messageAsFTStartMultilingualSpeechRequest;
- (FTUpdateAudioInfo)session_messageAsFTUpdateAudioInfo;
- (Offset<siri::speech::qss_fb::BlazarMultilingualMessage>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTBlazarMultilingualMessage

- (FTBlazarMultilingualMessage)initWithFlatbuffData:(id)data root:(const BlazarMultilingualMessage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTBlazarMultilingualMessage;
  v10 = [(FTBlazarMultilingualMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::BlazarMultilingualMessage::Verify(v19, &v24))
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

- (FTStartMultilingualSpeechRequest)session_messageAsFTStartMultilingualSpeechRequest
{
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"session_message"];
    if (!v3)
    {
      v4 = [FTStartMultilingualSpeechRequest alloc];
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

      v3 = [(FTStartMultilingualSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 2)
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 3)
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 4)
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 5)
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

- (FTAudioPacket)session_messageAsFTAudioPacket
{
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 6)
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 7)
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

- (FTLanguageDetected)session_messageAsFTLanguageDetected
{
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 8)
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

- (FTFinalSpeechRecognitionResponse)session_messageAsFTFinalSpeechRecognitionResponse
{
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 9)
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 10)
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

- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate
{
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 11)
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 12)
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

- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded
{
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 13)
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 14)
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
  switch([(FTBlazarMultilingualMessage *)self session_message_type])
  {
    case 1:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTStartMultilingualSpeechRequest];
      break;
    case 2:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTUpdateAudioInfo];
      break;
    case 3:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetRequestOrigin];
      break;
    case 4:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetSpeechContext];
      break;
    case 5:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetSpeechProfile];
      break;
    case 6:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTAudioPacket];
      break;
    case 7:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinishAudio];
      break;
    case 8:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTLanguageDetected];
      break;
    case 9:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinalSpeechRecognitionResponse];
      break;
    case 10:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTPartialSpeechRecognitionResponse];
      break;
    case 11:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTRecognitionCandidate];
      break;
    case 12:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTRequestStatsResponse];
      break;
    case 13:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTAudioLimitExceeded];
      break;
    case 14:
      session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinalBlazarResponse];
      break;
    default:
      session_messageAsFTStartMultilingualSpeechRequest = 0;
      break;
  }

  return session_messageAsFTStartMultilingualSpeechRequest;
}

+ (Class)session_message_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 0xD)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8440[type - 1];
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::BlazarMultilingualMessage>)addObjectToBuffer:(void *)buffer
{
  session_message_type = [(FTBlazarMultilingualMessage *)self session_message_type];
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 1)
  {
    session_messageAsFTStartMultilingualSpeechRequest = [(FTBlazarMultilingualMessage *)self session_messageAsFTStartMultilingualSpeechRequest];
    v7 = [session_messageAsFTStartMultilingualSpeechRequest addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 2)
  {
    session_messageAsFTUpdateAudioInfo = [(FTBlazarMultilingualMessage *)self session_messageAsFTUpdateAudioInfo];
    v10 = [session_messageAsFTUpdateAudioInfo addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 3)
  {
    session_messageAsFTSetRequestOrigin = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetRequestOrigin];
    v13 = [session_messageAsFTSetRequestOrigin addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 4)
  {
    session_messageAsFTSetSpeechContext = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetSpeechContext];
    v16 = [session_messageAsFTSetSpeechContext addObjectToBuffer:buffer];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 5)
  {
    session_messageAsFTSetSpeechProfile = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetSpeechProfile];
    v19 = [session_messageAsFTSetSpeechProfile addObjectToBuffer:buffer];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 6)
  {
    session_messageAsFTAudioPacket = [(FTBlazarMultilingualMessage *)self session_messageAsFTAudioPacket];
    v22 = [session_messageAsFTAudioPacket addObjectToBuffer:buffer];

    v56 = v22;
  }

  else
  {
    v56 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 7)
  {
    session_messageAsFTFinishAudio = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinishAudio];
    v24 = [session_messageAsFTFinishAudio addObjectToBuffer:buffer];

    v55 = v24;
  }

  else
  {
    v55 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 8)
  {
    session_messageAsFTLanguageDetected = [(FTBlazarMultilingualMessage *)self session_messageAsFTLanguageDetected];
    v26 = [session_messageAsFTLanguageDetected addObjectToBuffer:buffer];

    v54 = v26;
  }

  else
  {
    v54 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 9)
  {
    session_messageAsFTFinalSpeechRecognitionResponse = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinalSpeechRecognitionResponse];
    v28 = [session_messageAsFTFinalSpeechRecognitionResponse addObjectToBuffer:buffer];

    v53 = v28;
  }

  else
  {
    v53 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 10)
  {
    session_messageAsFTPartialSpeechRecognitionResponse = [(FTBlazarMultilingualMessage *)self session_messageAsFTPartialSpeechRecognitionResponse];
    v30 = [session_messageAsFTPartialSpeechRecognitionResponse addObjectToBuffer:buffer];

    v52 = v30;
  }

  else
  {
    v52 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 11)
  {
    session_messageAsFTRecognitionCandidate = [(FTBlazarMultilingualMessage *)self session_messageAsFTRecognitionCandidate];
    v32 = [session_messageAsFTRecognitionCandidate addObjectToBuffer:buffer];

    v51 = v32;
  }

  else
  {
    v51 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 12)
  {
    session_messageAsFTRequestStatsResponse = [(FTBlazarMultilingualMessage *)self session_messageAsFTRequestStatsResponse];
    v34 = [session_messageAsFTRequestStatsResponse addObjectToBuffer:buffer];

    v50 = v34;
  }

  else
  {
    v50 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 13)
  {
    session_messageAsFTAudioLimitExceeded = [(FTBlazarMultilingualMessage *)self session_messageAsFTAudioLimitExceeded];
    v36 = [session_messageAsFTAudioLimitExceeded addObjectToBuffer:buffer];

    v47 = v36;
  }

  else
  {
    v47 = 0;
  }

  v49 = v20;
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 14)
  {
    v37 = session_message_type;
    session_messageAsFTFinalBlazarResponse = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinalBlazarResponse];
    v39 = [session_messageAsFTFinalBlazarResponse addObjectToBuffer:buffer];
    v40 = v14;
    v41 = v8;
    v42 = v37;

    v43 = v39;
  }

  else
  {
    v40 = v14;
    v41 = v8;
    v42 = session_message_type;
    v43 = 0;
  }

  *(buffer + 70) = 1;
  v44 = *(buffer + 6);
  v45 = *(buffer + 4);
  v57 = *(buffer + 5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, v42, 0);
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v41);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v11);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v40);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v17);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v49);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v56);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v55);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v54);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v53);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v52);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v51);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v50);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 13)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v48);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 14)
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBlazarMultilingualMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__43__FTBlazarMultilingualMessage_flatbuffData__block_invoke(uint64_t a1)
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