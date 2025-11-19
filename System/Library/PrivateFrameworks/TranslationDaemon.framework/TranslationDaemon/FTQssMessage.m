@interface FTQssMessage
+ (Class)container_message_immutableClassForType:(int64_t)a3;
+ (int64_t)container_message_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)container_message;
- (FTApgPronGuessMessage)container_messageAsFTApgPronGuessMessage;
- (FTAsrCorrectionsValidatorMessage)container_messageAsFTAsrCorrectionsValidatorMessage;
- (FTAsrErrorBlamerMessage)container_messageAsFTAsrErrorBlamerMessage;
- (FTAsrGraphemeToPhonemeMessage)container_messageAsFTAsrGraphemeToPhonemeMessage;
- (FTAsrItnMessage)container_messageAsFTAsrItnMessage;
- (FTAsrKeywordFinderMessage)container_messageAsFTAsrKeywordFinderMessage;
- (FTAsrPostItnHammerMessage)container_messageAsFTAsrPostItnHammerMessage;
- (FTAsrRecognitionMessage)container_messageAsFTAsrRecognitionMessage;
- (FTAsrTextNormalizationMessage)container_messageAsFTAsrTextNormalizationMessage;
- (FTBlazarBatchTranslationMessage)container_messageAsFTBlazarBatchTranslationMessage;
- (FTBlazarMultiUserMessage)container_messageAsFTBlazarMultiUserMessage;
- (FTBlazarMultilingualMessage)container_messageAsFTBlazarMultilingualMessage;
- (FTBlazarServiceDiscoveryMessage)container_messageAsFTBlazarServiceDiscoveryMessage;
- (FTBlazarSpeechTranslationMessage)container_messageAsFTBlazarSpeechTranslationMessage;
- (FTBlazarTextToSpeechRouterMessage)container_messageAsFTBlazarTextToSpeechRouterMessage;
- (FTBlazarTextToSpeechRouterStreamingMessage)container_messageAsFTBlazarTextToSpeechRouterStreamingMessage;
- (FTDisableSessionLog)disable_session_log;
- (FTErrorMessage)error_message;
- (FTLmtLmScorerMessage)container_messageAsFTLmtLmScorerMessage;
- (FTMtTranslationMessage)container_messageAsFTMtTranslationMessage;
- (FTNapgCreateLanguageProfileMessage)container_messageAsFTNapgCreateLanguageProfileMessage;
- (FTNlShortcutFuzzyMatchMessage)container_messageAsFTNlShortcutFuzzyMatchMessage;
- (FTQssMessage)initWithFlatbuffData:(id)a3 root:(const QssMessage *)a4 verify:(BOOL)a5;
- (FTSlsLanguageDetectionMessage)container_messageAsFTSlsLanguageDetectionMessage;
- (FTTtsTextToSpeechMessage)container_messageAsFTTtsTextToSpeechMessage;
- (FTTtsTextToSpeechSpeechFeatureMessage)container_messageAsFTTtsTextToSpeechSpeechFeatureMessage;
- (FTTtsTextToSpeechStreamingMessage)container_messageAsFTTtsTextToSpeechStreamingMessage;
- (Offset<siri::speech::qss_fb::QssMessage>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)container_message_type;
@end

@implementation FTQssMessage

- (FTQssMessage)initWithFlatbuffData:(id)a3 root:(const QssMessage *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTQssMessage;
  v10 = [(FTQssMessage *)&v29 init];
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
        if (!siri::speech::qss_fb::QssMessage::Verify(v19, &v24))
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

- (FTErrorMessage)error_message
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"error_message"];
  if (!v3)
  {
    v4 = [FTErrorMessage alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTErrorMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"error_message"];
  }

  return v3;
}

- (FTDisableSessionLog)disable_session_log
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"disable_session_log"];
  if (!v3)
  {
    v4 = [FTDisableSessionLog alloc];
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

    v3 = [(FTDisableSessionLog *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"disable_session_log"];
  }

  return v3;
}

- (int64_t)container_message_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return root[v4].var0[0];
  }

  else
  {
    return 0;
  }
}

- (FTApgPronGuessMessage)container_messageAsFTApgPronGuessMessage
{
  if ([(FTQssMessage *)self container_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTApgPronGuessMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTApgPronGuessMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAsrRecognitionMessage)container_messageAsFTAsrRecognitionMessage
{
  if ([(FTQssMessage *)self container_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTAsrRecognitionMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTAsrRecognitionMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAsrErrorBlamerMessage)container_messageAsFTAsrErrorBlamerMessage
{
  if ([(FTQssMessage *)self container_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTAsrErrorBlamerMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTAsrErrorBlamerMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAsrItnMessage)container_messageAsFTAsrItnMessage
{
  if ([(FTQssMessage *)self container_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTAsrItnMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTAsrItnMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAsrTextNormalizationMessage)container_messageAsFTAsrTextNormalizationMessage
{
  if ([(FTQssMessage *)self container_message_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTAsrTextNormalizationMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTAsrTextNormalizationMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAsrPostItnHammerMessage)container_messageAsFTAsrPostItnHammerMessage
{
  if ([(FTQssMessage *)self container_message_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTAsrPostItnHammerMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTAsrPostItnHammerMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAsrKeywordFinderMessage)container_messageAsFTAsrKeywordFinderMessage
{
  if ([(FTQssMessage *)self container_message_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTAsrKeywordFinderMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTAsrKeywordFinderMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAsrCorrectionsValidatorMessage)container_messageAsFTAsrCorrectionsValidatorMessage
{
  if ([(FTQssMessage *)self container_message_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTAsrCorrectionsValidatorMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTAsrCorrectionsValidatorMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAsrGraphemeToPhonemeMessage)container_messageAsFTAsrGraphemeToPhonemeMessage
{
  if ([(FTQssMessage *)self container_message_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTAsrGraphemeToPhonemeMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTAsrGraphemeToPhonemeMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBlazarMultiUserMessage)container_messageAsFTBlazarMultiUserMessage
{
  if ([(FTQssMessage *)self container_message_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTBlazarMultiUserMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTBlazarMultiUserMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBlazarMultilingualMessage)container_messageAsFTBlazarMultilingualMessage
{
  if ([(FTQssMessage *)self container_message_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTBlazarMultilingualMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTBlazarMultilingualMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBlazarSpeechTranslationMessage)container_messageAsFTBlazarSpeechTranslationMessage
{
  if ([(FTQssMessage *)self container_message_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTBlazarSpeechTranslationMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTBlazarSpeechTranslationMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBlazarBatchTranslationMessage)container_messageAsFTBlazarBatchTranslationMessage
{
  if ([(FTQssMessage *)self container_message_type]== 13)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTBlazarBatchTranslationMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTBlazarBatchTranslationMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBlazarTextToSpeechRouterMessage)container_messageAsFTBlazarTextToSpeechRouterMessage
{
  if ([(FTQssMessage *)self container_message_type]== 14)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTBlazarTextToSpeechRouterMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTBlazarTextToSpeechRouterMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBlazarTextToSpeechRouterStreamingMessage)container_messageAsFTBlazarTextToSpeechRouterStreamingMessage
{
  if ([(FTQssMessage *)self container_message_type]== 15)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTBlazarTextToSpeechRouterStreamingMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTBlazarTextToSpeechRouterStreamingMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTBlazarServiceDiscoveryMessage)container_messageAsFTBlazarServiceDiscoveryMessage
{
  if ([(FTQssMessage *)self container_message_type]== 16)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTBlazarServiceDiscoveryMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTBlazarServiceDiscoveryMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTLmtLmScorerMessage)container_messageAsFTLmtLmScorerMessage
{
  if ([(FTQssMessage *)self container_message_type]== 17)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTLmtLmScorerMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTLmtLmScorerMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTNapgCreateLanguageProfileMessage)container_messageAsFTNapgCreateLanguageProfileMessage
{
  if ([(FTQssMessage *)self container_message_type]== 18)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTNapgCreateLanguageProfileMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTNapgCreateLanguageProfileMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTMtTranslationMessage)container_messageAsFTMtTranslationMessage
{
  if ([(FTQssMessage *)self container_message_type]== 19)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTMtTranslationMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTMtTranslationMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTTtsTextToSpeechMessage)container_messageAsFTTtsTextToSpeechMessage
{
  if ([(FTQssMessage *)self container_message_type]== 20)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTTtsTextToSpeechMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTTtsTextToSpeechMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTTtsTextToSpeechStreamingMessage)container_messageAsFTTtsTextToSpeechStreamingMessage
{
  if ([(FTQssMessage *)self container_message_type]== 21)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTTtsTextToSpeechStreamingMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTTtsTextToSpeechStreamingMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTTtsTextToSpeechSpeechFeatureMessage)container_messageAsFTTtsTextToSpeechSpeechFeatureMessage
{
  if ([(FTQssMessage *)self container_message_type]== 22)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTTtsTextToSpeechSpeechFeatureMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTTtsTextToSpeechSpeechFeatureMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTNlShortcutFuzzyMatchMessage)container_messageAsFTNlShortcutFuzzyMatchMessage
{
  if ([(FTQssMessage *)self container_message_type]== 23)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTNlShortcutFuzzyMatchMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTNlShortcutFuzzyMatchMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSlsLanguageDetectionMessage)container_messageAsFTSlsLanguageDetectionMessage
{
  if ([(FTQssMessage *)self container_message_type]== 24)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"container_message"];
    if (!v3)
    {
      v4 = [FTSlsLanguageDetectionMessage alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FTSlsLanguageDetectionMessage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"container_message"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLTBFBufferAccessor)container_message
{
  switch([(FTQssMessage *)self container_message_type])
  {
    case 1:
      v3 = [(FTQssMessage *)self container_messageAsFTApgPronGuessMessage];
      break;
    case 2:
      v3 = [(FTQssMessage *)self container_messageAsFTAsrRecognitionMessage];
      break;
    case 3:
      v3 = [(FTQssMessage *)self container_messageAsFTAsrErrorBlamerMessage];
      break;
    case 4:
      v3 = [(FTQssMessage *)self container_messageAsFTAsrItnMessage];
      break;
    case 5:
      v3 = [(FTQssMessage *)self container_messageAsFTAsrTextNormalizationMessage];
      break;
    case 6:
      v3 = [(FTQssMessage *)self container_messageAsFTAsrPostItnHammerMessage];
      break;
    case 7:
      v3 = [(FTQssMessage *)self container_messageAsFTAsrKeywordFinderMessage];
      break;
    case 8:
      v3 = [(FTQssMessage *)self container_messageAsFTAsrCorrectionsValidatorMessage];
      break;
    case 9:
      v3 = [(FTQssMessage *)self container_messageAsFTAsrGraphemeToPhonemeMessage];
      break;
    case 10:
      v3 = [(FTQssMessage *)self container_messageAsFTBlazarMultiUserMessage];
      break;
    case 11:
      v3 = [(FTQssMessage *)self container_messageAsFTBlazarMultilingualMessage];
      break;
    case 12:
      v3 = [(FTQssMessage *)self container_messageAsFTBlazarSpeechTranslationMessage];
      break;
    case 13:
      v3 = [(FTQssMessage *)self container_messageAsFTBlazarBatchTranslationMessage];
      break;
    case 14:
      v3 = [(FTQssMessage *)self container_messageAsFTBlazarTextToSpeechRouterMessage];
      break;
    case 15:
      v3 = [(FTQssMessage *)self container_messageAsFTBlazarTextToSpeechRouterStreamingMessage];
      break;
    case 16:
      v3 = [(FTQssMessage *)self container_messageAsFTBlazarServiceDiscoveryMessage];
      break;
    case 17:
      v3 = [(FTQssMessage *)self container_messageAsFTLmtLmScorerMessage];
      break;
    case 18:
      v3 = [(FTQssMessage *)self container_messageAsFTNapgCreateLanguageProfileMessage];
      break;
    case 19:
      v3 = [(FTQssMessage *)self container_messageAsFTMtTranslationMessage];
      break;
    case 20:
      v3 = [(FTQssMessage *)self container_messageAsFTTtsTextToSpeechMessage];
      break;
    case 21:
      v3 = [(FTQssMessage *)self container_messageAsFTTtsTextToSpeechStreamingMessage];
      break;
    case 22:
      v3 = [(FTQssMessage *)self container_messageAsFTTtsTextToSpeechSpeechFeatureMessage];
      break;
    case 23:
      v3 = [(FTQssMessage *)self container_messageAsFTNlShortcutFuzzyMatchMessage];
      break;
    case 24:
      v3 = [(FTQssMessage *)self container_messageAsFTSlsLanguageDetectionMessage];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

+ (Class)container_message_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 0x17)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B85F0[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (int64_t)container_message_typeForImmutableObject:(id)a3
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

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 21;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 22;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 23;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 24;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::QssMessage>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTQssMessage *)self error_message];
  v6 = [v5 addObjectToBuffer:a3];

  v7 = [(FTQssMessage *)self disable_session_log];
  v8 = [v7 addObjectToBuffer:a3];

  v9 = [(FTQssMessage *)self container_message_type];
  if ([(FTQssMessage *)self container_message_type]== 1)
  {
    v10 = [(FTQssMessage *)self container_messageAsFTApgPronGuessMessage];
    v11 = [v10 addObjectToBuffer:a3];

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 2)
  {
    v13 = [(FTQssMessage *)self container_messageAsFTAsrRecognitionMessage];
    v14 = [v13 addObjectToBuffer:a3];

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 3)
  {
    v16 = [(FTQssMessage *)self container_messageAsFTAsrErrorBlamerMessage];
    v17 = [v16 addObjectToBuffer:a3];

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 4)
  {
    v19 = [(FTQssMessage *)self container_messageAsFTAsrItnMessage];
    v20 = [v19 addObjectToBuffer:a3];

    v89 = v20;
  }

  else
  {
    v89 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 5)
  {
    v21 = [(FTQssMessage *)self container_messageAsFTAsrTextNormalizationMessage];
    v22 = [v21 addObjectToBuffer:a3];

    v88 = v22;
  }

  else
  {
    v88 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 6)
  {
    v23 = [(FTQssMessage *)self container_messageAsFTAsrPostItnHammerMessage];
    v24 = [v23 addObjectToBuffer:a3];

    v87 = v24;
  }

  else
  {
    v87 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 7)
  {
    v25 = [(FTQssMessage *)self container_messageAsFTAsrKeywordFinderMessage];
    v26 = [v25 addObjectToBuffer:a3];

    v86 = v26;
  }

  else
  {
    v86 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 8)
  {
    v27 = [(FTQssMessage *)self container_messageAsFTAsrCorrectionsValidatorMessage];
    v28 = [v27 addObjectToBuffer:a3];

    v85 = v28;
  }

  else
  {
    v85 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 9)
  {
    v29 = [(FTQssMessage *)self container_messageAsFTAsrGraphemeToPhonemeMessage];
    v30 = [v29 addObjectToBuffer:a3];

    v84 = v30;
  }

  else
  {
    v84 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 10)
  {
    v31 = [(FTQssMessage *)self container_messageAsFTBlazarMultiUserMessage];
    v32 = [v31 addObjectToBuffer:a3];

    v83 = v32;
  }

  else
  {
    v83 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 11)
  {
    v33 = [(FTQssMessage *)self container_messageAsFTBlazarMultilingualMessage];
    v34 = [v33 addObjectToBuffer:a3];

    v82 = v34;
  }

  else
  {
    v82 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 12)
  {
    v35 = [(FTQssMessage *)self container_messageAsFTBlazarSpeechTranslationMessage];
    v36 = [v35 addObjectToBuffer:a3];

    v81 = v36;
  }

  else
  {
    v81 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 13)
  {
    v37 = [(FTQssMessage *)self container_messageAsFTBlazarBatchTranslationMessage];
    v38 = [v37 addObjectToBuffer:a3];

    v80 = v38;
  }

  else
  {
    v80 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 14)
  {
    v39 = [(FTQssMessage *)self container_messageAsFTBlazarTextToSpeechRouterMessage];
    v40 = [v39 addObjectToBuffer:a3];

    v79 = v40;
  }

  else
  {
    v79 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 15)
  {
    v41 = [(FTQssMessage *)self container_messageAsFTBlazarTextToSpeechRouterStreamingMessage];
    v42 = [v41 addObjectToBuffer:a3];

    v78 = v42;
  }

  else
  {
    v78 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 16)
  {
    v43 = [(FTQssMessage *)self container_messageAsFTBlazarServiceDiscoveryMessage];
    v44 = [v43 addObjectToBuffer:a3];

    v77 = v44;
  }

  else
  {
    v77 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 17)
  {
    v45 = [(FTQssMessage *)self container_messageAsFTLmtLmScorerMessage];
    v46 = [v45 addObjectToBuffer:a3];

    v76 = v46;
  }

  else
  {
    v76 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 18)
  {
    v47 = [(FTQssMessage *)self container_messageAsFTNapgCreateLanguageProfileMessage];
    v48 = [v47 addObjectToBuffer:a3];

    v75 = v48;
  }

  else
  {
    v75 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 19)
  {
    v49 = [(FTQssMessage *)self container_messageAsFTMtTranslationMessage];
    v50 = [v49 addObjectToBuffer:a3];

    v74 = v50;
  }

  else
  {
    v74 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 20)
  {
    v51 = [(FTQssMessage *)self container_messageAsFTTtsTextToSpeechMessage];
    v52 = [v51 addObjectToBuffer:a3];

    v73 = v52;
  }

  else
  {
    v73 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 21)
  {
    v53 = [(FTQssMessage *)self container_messageAsFTTtsTextToSpeechStreamingMessage];
    v54 = [v53 addObjectToBuffer:a3];

    v72 = v54;
  }

  else
  {
    v72 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 22)
  {
    v55 = [(FTQssMessage *)self container_messageAsFTTtsTextToSpeechSpeechFeatureMessage];
    v56 = [v55 addObjectToBuffer:a3];

    v71 = v56;
  }

  else
  {
    v71 = 0;
  }

  if ([(FTQssMessage *)self container_message_type]== 23)
  {
    v57 = [(FTQssMessage *)self container_messageAsFTNlShortcutFuzzyMatchMessage];
    v58 = [v57 addObjectToBuffer:a3];

    v69 = v58;
  }

  else
  {
    v69 = 0;
  }

  v70 = v18;
  if ([(FTQssMessage *)self container_message_type]== 24)
  {
    v59 = v6;
    v60 = [(FTQssMessage *)self container_messageAsFTSlsLanguageDetectionMessage];
    v61 = [v60 addObjectToBuffer:a3];
    v62 = v12;
    v63 = v8;
    v64 = v59;

    v65 = v61;
  }

  else
  {
    v62 = v12;
    v63 = v8;
    v64 = v6;
    v65 = 0;
  }

  *(a3 + 70) = 1;
  v66 = *(a3 + 6);
  v67 = *(a3 + 4);
  v90 = *(a3 + 5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v64);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 8, v9, 0);
  if ([(FTQssMessage *)self container_message_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v62);
  }

  if ([(FTQssMessage *)self container_message_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v15);
  }

  if ([(FTQssMessage *)self container_message_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v70);
  }

  if ([(FTQssMessage *)self container_message_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v89);
  }

  if ([(FTQssMessage *)self container_message_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v88);
  }

  if ([(FTQssMessage *)self container_message_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v87);
  }

  if ([(FTQssMessage *)self container_message_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v86);
  }

  if ([(FTQssMessage *)self container_message_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v85);
  }

  if ([(FTQssMessage *)self container_message_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v84);
  }

  if ([(FTQssMessage *)self container_message_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v83);
  }

  if ([(FTQssMessage *)self container_message_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v82);
  }

  if ([(FTQssMessage *)self container_message_type]== 12)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v81);
  }

  if ([(FTQssMessage *)self container_message_type]== 13)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v80);
  }

  if ([(FTQssMessage *)self container_message_type]== 14)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v79);
  }

  if ([(FTQssMessage *)self container_message_type]== 15)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v78);
  }

  if ([(FTQssMessage *)self container_message_type]== 16)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v77);
  }

  if ([(FTQssMessage *)self container_message_type]== 17)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v76);
  }

  if ([(FTQssMessage *)self container_message_type]== 18)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v75);
  }

  if ([(FTQssMessage *)self container_message_type]== 19)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v74);
  }

  if ([(FTQssMessage *)self container_message_type]== 20)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v73);
  }

  if ([(FTQssMessage *)self container_message_type]== 21)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v72);
  }

  if ([(FTQssMessage *)self container_message_type]== 22)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v71);
  }

  if ([(FTQssMessage *)self container_message_type]== 23)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v69);
  }

  if ([(FTQssMessage *)self container_message_type]== 24)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v65);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v67 - v66 + v90);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTQssMessage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__28__FTQssMessage_flatbuffData__block_invoke(uint64_t a1)
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