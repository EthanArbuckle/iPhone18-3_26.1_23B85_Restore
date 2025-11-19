@interface FTBlazarMultilingualMessage
+ (Class)session_message_immutableClassForType:(int64_t)a3;
+ (int64_t)session_message_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)session_message;
- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTBlazarMultilingualMessage)initWithFlatbuffData:(id)a3 root:(const BlazarMultilingualMessage *)a4 verify:(BOOL)a5;
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
- (Offset<siri::speech::qss_fb::BlazarMultilingualMessage>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)session_message_type;
@end

@implementation FTBlazarMultilingualMessage

- (FTBlazarMultilingualMessage)initWithFlatbuffData:(id)a3 root:(const BlazarMultilingualMessage *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTBlazarMultilingualMessage;
  v10 = [(FTBlazarMultilingualMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::BlazarMultilingualMessage::Verify(v19, &v24))
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
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTStartMultilingualSpeechRequest];
      break;
    case 2:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTUpdateAudioInfo];
      break;
    case 3:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetRequestOrigin];
      break;
    case 4:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetSpeechContext];
      break;
    case 5:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetSpeechProfile];
      break;
    case 6:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTAudioPacket];
      break;
    case 7:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinishAudio];
      break;
    case 8:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTLanguageDetected];
      break;
    case 9:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinalSpeechRecognitionResponse];
      break;
    case 10:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTPartialSpeechRecognitionResponse];
      break;
    case 11:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTRecognitionCandidate];
      break;
    case 12:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTRequestStatsResponse];
      break;
    case 13:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTAudioLimitExceeded];
      break;
    case 14:
      v3 = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinalBlazarResponse];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

+ (Class)session_message_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 0xD)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8440[a3 - 1];
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::BlazarMultilingualMessage>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTBlazarMultilingualMessage *)self session_message_type];
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 1)
  {
    v6 = [(FTBlazarMultilingualMessage *)self session_messageAsFTStartMultilingualSpeechRequest];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 2)
  {
    v9 = [(FTBlazarMultilingualMessage *)self session_messageAsFTUpdateAudioInfo];
    v10 = [v9 addObjectToBuffer:a3];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 3)
  {
    v12 = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetRequestOrigin];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 4)
  {
    v15 = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetSpeechContext];
    v16 = [v15 addObjectToBuffer:a3];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 5)
  {
    v18 = [(FTBlazarMultilingualMessage *)self session_messageAsFTSetSpeechProfile];
    v19 = [v18 addObjectToBuffer:a3];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 6)
  {
    v21 = [(FTBlazarMultilingualMessage *)self session_messageAsFTAudioPacket];
    v22 = [v21 addObjectToBuffer:a3];

    v56 = v22;
  }

  else
  {
    v56 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 7)
  {
    v23 = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinishAudio];
    v24 = [v23 addObjectToBuffer:a3];

    v55 = v24;
  }

  else
  {
    v55 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 8)
  {
    v25 = [(FTBlazarMultilingualMessage *)self session_messageAsFTLanguageDetected];
    v26 = [v25 addObjectToBuffer:a3];

    v54 = v26;
  }

  else
  {
    v54 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 9)
  {
    v27 = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinalSpeechRecognitionResponse];
    v28 = [v27 addObjectToBuffer:a3];

    v53 = v28;
  }

  else
  {
    v53 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 10)
  {
    v29 = [(FTBlazarMultilingualMessage *)self session_messageAsFTPartialSpeechRecognitionResponse];
    v30 = [v29 addObjectToBuffer:a3];

    v52 = v30;
  }

  else
  {
    v52 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 11)
  {
    v31 = [(FTBlazarMultilingualMessage *)self session_messageAsFTRecognitionCandidate];
    v32 = [v31 addObjectToBuffer:a3];

    v51 = v32;
  }

  else
  {
    v51 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 12)
  {
    v33 = [(FTBlazarMultilingualMessage *)self session_messageAsFTRequestStatsResponse];
    v34 = [v33 addObjectToBuffer:a3];

    v50 = v34;
  }

  else
  {
    v50 = 0;
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 13)
  {
    v35 = [(FTBlazarMultilingualMessage *)self session_messageAsFTAudioLimitExceeded];
    v36 = [v35 addObjectToBuffer:a3];

    v47 = v36;
  }

  else
  {
    v47 = 0;
  }

  v49 = v20;
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 14)
  {
    v37 = v5;
    v38 = [(FTBlazarMultilingualMessage *)self session_messageAsFTFinalBlazarResponse];
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
  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v41);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v11);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v40);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v17);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v49);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v56);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v55);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v54);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v53);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v52);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v51);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v50);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 13)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v48);
  }

  if ([(FTBlazarMultilingualMessage *)self session_message_type]== 14)
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