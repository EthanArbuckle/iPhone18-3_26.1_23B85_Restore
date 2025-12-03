@interface FTSpeechTranslationStreamingRequest
+ (Class)content_immutableClassForType:(int64_t)type;
+ (int64_t)content_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)content;
- (FTAudioPacket)contentAsFTAudioPacket;
- (FTFinishAudio)contentAsFTFinishAudio;
- (FTLanguageDetected)contentAsFTLanguageDetected;
- (FTResetServerEndpointer)contentAsFTResetServerEndpointer;
- (FTSetEndpointerState)contentAsFTSetEndpointerState;
- (FTSpeechTranslationAudioPacket)contentAsFTSpeechTranslationAudioPacket;
- (FTSpeechTranslationStreamingRequest)initWithFlatbuffData:(id)data root:(const SpeechTranslationStreamingRequest *)root verify:(BOOL)verify;
- (FTStartSpeechTranslationLoggingRequest)contentAsFTStartSpeechTranslationLoggingRequest;
- (FTStartSpeechTranslationRequest)contentAsFTStartSpeechTranslationRequest;
- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTSpeechTranslationStreamingRequest

- (FTSpeechTranslationStreamingRequest)initWithFlatbuffData:(id)data root:(const SpeechTranslationStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTSpeechTranslationStreamingRequest;
  v10 = [(FTSpeechTranslationStreamingRequest *)&v29 init];
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
        if (!siri::speech::qss_fb::SpeechTranslationStreamingRequest::Verify(v19, &v24))
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
  content_type = [(FTSpeechTranslationStreamingRequest *)self content_type];
  contentAsFTStartSpeechTranslationRequest = 0;
  if (content_type <= 4)
  {
    if (content_type <= 2)
    {
      if (content_type == 1)
      {
        contentAsFTStartSpeechTranslationRequest = [(FTSpeechTranslationStreamingRequest *)self contentAsFTStartSpeechTranslationRequest];
      }

      else if (content_type == 2)
      {
        contentAsFTStartSpeechTranslationRequest = [(FTSpeechTranslationStreamingRequest *)self contentAsFTLanguageDetected];
      }

      goto LABEL_19;
    }

    if (content_type == 3)
    {
      [(FTSpeechTranslationStreamingRequest *)self contentAsFTAudioPacket];
    }

    else
    {
      [(FTSpeechTranslationStreamingRequest *)self contentAsFTSpeechTranslationAudioPacket];
    }

    contentAsFTStartSpeechTranslationRequest = LABEL_9:;
    goto LABEL_19;
  }

  if (content_type <= 6)
  {
    if (content_type == 5)
    {
      [(FTSpeechTranslationStreamingRequest *)self contentAsFTFinishAudio];
    }

    else
    {
      [(FTSpeechTranslationStreamingRequest *)self contentAsFTSetEndpointerState];
    }

    goto LABEL_9;
  }

  if (content_type == 7)
  {
    contentAsFTStartSpeechTranslationRequest = [(FTSpeechTranslationStreamingRequest *)self contentAsFTResetServerEndpointer];
  }

  else if (content_type == 8)
  {
    contentAsFTStartSpeechTranslationRequest = [(FTSpeechTranslationStreamingRequest *)self contentAsFTStartSpeechTranslationLoggingRequest];
  }

LABEL_19:

  return contentAsFTStartSpeechTranslationRequest;
}

+ (Class)content_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8CE8[type - 1];
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::SpeechTranslationStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  content_type = [(FTSpeechTranslationStreamingRequest *)self content_type];
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 1)
  {
    contentAsFTStartSpeechTranslationRequest = [(FTSpeechTranslationStreamingRequest *)self contentAsFTStartSpeechTranslationRequest];
    v7 = [contentAsFTStartSpeechTranslationRequest addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 2)
  {
    contentAsFTLanguageDetected = [(FTSpeechTranslationStreamingRequest *)self contentAsFTLanguageDetected];
    v10 = [contentAsFTLanguageDetected addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 3)
  {
    contentAsFTAudioPacket = [(FTSpeechTranslationStreamingRequest *)self contentAsFTAudioPacket];
    v13 = [contentAsFTAudioPacket addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 4)
  {
    contentAsFTSpeechTranslationAudioPacket = [(FTSpeechTranslationStreamingRequest *)self contentAsFTSpeechTranslationAudioPacket];
    v16 = [contentAsFTSpeechTranslationAudioPacket addObjectToBuffer:buffer];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 5)
  {
    contentAsFTFinishAudio = [(FTSpeechTranslationStreamingRequest *)self contentAsFTFinishAudio];
    v19 = [contentAsFTFinishAudio addObjectToBuffer:buffer];

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 6)
  {
    contentAsFTSetEndpointerState = [(FTSpeechTranslationStreamingRequest *)self contentAsFTSetEndpointerState];
    v22 = [contentAsFTSetEndpointerState addObjectToBuffer:buffer];

    v36 = v22;
  }

  else
  {
    v36 = 0;
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 7)
  {
    contentAsFTResetServerEndpointer = [(FTSpeechTranslationStreamingRequest *)self contentAsFTResetServerEndpointer];
    v24 = [contentAsFTResetServerEndpointer addObjectToBuffer:buffer];

    v34 = v24;
  }

  else
  {
    v34 = 0;
  }

  v35 = v20;
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 8)
  {
    contentAsFTStartSpeechTranslationLoggingRequest = [(FTSpeechTranslationStreamingRequest *)self contentAsFTStartSpeechTranslationLoggingRequest];
    v26 = [contentAsFTStartSpeechTranslationLoggingRequest addObjectToBuffer:buffer];
    v27 = v14;

    v32 = v26;
  }

  else
  {
    v27 = v14;
    v32 = 0;
  }

  *(buffer + 70) = 1;
  v28 = *(buffer + 5);
  v29 = *(buffer + 6);
  v30 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type, 0);
  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v8);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v11);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v27);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v17);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v35);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v36);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v34);
  }

  if ([(FTSpeechTranslationStreamingRequest *)self content_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v33);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v30 - v29 + v28);
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