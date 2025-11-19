@interface FTSpeechTranslationStreamingRequest
+ (Class)content_immutableClassForType:(int64_t)a3;
+ (int64_t)content_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)content;
- (FTAudioPacket)contentAsFTAudioPacket;
- (FTFinishAudio)contentAsFTFinishAudio;
- (FTLanguageDetected)contentAsFTLanguageDetected;
- (FTResetServerEndpointer)contentAsFTResetServerEndpointer;
- (FTSetEndpointerState)contentAsFTSetEndpointerState;
- (FTSpeechTranslationAudioPacket)contentAsFTSpeechTranslationAudioPacket;
- (FTSpeechTranslationStreamingRequest)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationStreamingRequest *)a4 verify:(BOOL)a5;
- (FTStartSpeechTranslationLoggingRequest)contentAsFTStartSpeechTranslationLoggingRequest;
- (FTStartSpeechTranslationRequest)contentAsFTStartSpeechTranslationRequest;
- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTSpeechTranslationStreamingRequest

- (FTSpeechTranslationStreamingRequest)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationStreamingRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTSpeechTranslationStreamingRequest;
  v10 = [(FTSpeechTranslationStreamingRequest *)&v29 init];
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
        if (!siri::speech::qss_fb::SpeechTranslationStreamingRequest::Verify(v19, &v24))
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

- (FTStartSpeechTranslationRequest)contentAsFTStartSpeechTranslationRequest
{
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTLanguageDetected)contentAsFTLanguageDetected
{
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTAudioPacket)contentAsFTAudioPacket
{
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSpeechTranslationAudioPacket)contentAsFTSpeechTranslationAudioPacket
{
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTFinishAudio)contentAsFTFinishAudio
{
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSetEndpointerState)contentAsFTSetEndpointerState
{
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTResetServerEndpointer)contentAsFTResetServerEndpointer
{
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTStartSpeechTranslationLoggingRequest)contentAsFTStartSpeechTranslationLoggingRequest
{
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
  v3 = [(FTSpeechTranslationStreamingRequest *)self content_type];
  v4 = 0;
  if (v3 <= 4)
  {
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v4 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTStartSpeechTranslationRequest];
      }

      else if (v3 == 2)
      {
        v4 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTLanguageDetected];
      }

      goto LABEL_19;
    }

    if (v3 == 3)
    {
      [(FTSpeechTranslationStreamingRequest *)self contentAsFTAudioPacket];
    }

    else
    {
      [(FTSpeechTranslationStreamingRequest *)self contentAsFTSpeechTranslationAudioPacket];
    }

    v4 = LABEL_9:;
    goto LABEL_19;
  }

  if (v3 <= 6)
  {
    if (v3 == 5)
    {
      [(FTSpeechTranslationStreamingRequest *)self contentAsFTFinishAudio];
    }

    else
    {
      [(FTSpeechTranslationStreamingRequest *)self contentAsFTSetEndpointerState];
    }

    goto LABEL_9;
  }

  if (v3 == 7)
  {
    v4 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTResetServerEndpointer];
  }

  else if (v3 == 8)
  {
    v4 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTStartSpeechTranslationLoggingRequest];
  }

LABEL_19:

  return v4;
}

+ (Class)content_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8CE8[a3 - 1];
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTSpeechTranslationStreamingRequest *)self content_type];
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 1)
  {
    v6 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTStartSpeechTranslationRequest];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 2)
  {
    v9 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTLanguageDetected];
    v10 = [v9 addObjectToBuffer:a3];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 3)
  {
    v12 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTAudioPacket];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 4)
  {
    v15 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTSpeechTranslationAudioPacket];
    v16 = [v15 addObjectToBuffer:a3];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 5)
  {
    v18 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTFinishAudio];
    v19 = [v18 addObjectToBuffer:a3];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 6)
  {
    v21 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTSetEndpointerState];
    v22 = [v21 addObjectToBuffer:a3];

    v36 = v22;
  }

  else
  {
    v36 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 7)
  {
    v23 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTResetServerEndpointer];
    v24 = [v23 addObjectToBuffer:a3];

    v34 = v24;
  }

  else
  {
    v34 = 0;
  }

  v35 = v20;
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 8)
  {
    v25 = [(FTSpeechTranslationStreamingRequest *)self contentAsFTStartSpeechTranslationLoggingRequest];
    v26 = [v25 addObjectToBuffer:a3];
    v27 = v14;

    v32 = v26;
  }

  else
  {
    v27 = v14;
    v32 = 0;
  }

  *(a3 + 70) = 1;
  v28 = *(a3 + 5);
  v29 = *(a3 + 6);
  v30 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5, 0);
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v8);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v11);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v27);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v17);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v35);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v36);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v34);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v33);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v30 - v29 + v28);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSpeechTranslationStreamingRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__51__FTSpeechTranslationStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
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