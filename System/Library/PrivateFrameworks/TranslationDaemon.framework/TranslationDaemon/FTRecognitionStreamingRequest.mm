@interface FTRecognitionStreamingRequest
+ (Class)content_immutableClassForType:(int64_t)type;
+ (int64_t)content_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)content;
- (FTAudioPacket)contentAsFTAudioPacket;
- (FTCheckForSpeechRequest)contentAsFTCheckForSpeechRequest;
- (FTFinishAudio)contentAsFTFinishAudio;
- (FTRecognitionStreamingRequest)initWithFlatbuffData:(id)data root:(const RecognitionStreamingRequest *)root verify:(BOOL)verify;
- (FTResetServerEndpointer)contentAsFTResetServerEndpointer;
- (FTSetAlternateRecognitionSausage)contentAsFTSetAlternateRecognitionSausage;
- (FTSetEndpointerState)contentAsFTSetEndpointerState;
- (FTSetRequestOrigin)contentAsFTSetRequestOrigin;
- (FTSetSpeechContext)contentAsFTSetSpeechContext;
- (FTSetSpeechProfile)contentAsFTSetSpeechProfile;
- (FTStartSpeechRequest)contentAsFTStartSpeechRequest;
- (FTUpdateAudioInfo)contentAsFTUpdateAudioInfo;
- (Offset<siri::speech::qss_fb::RecognitionStreamingRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTRecognitionStreamingRequest

- (FTRecognitionStreamingRequest)initWithFlatbuffData:(id)data root:(const RecognitionStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FTRecognitionStreamingRequest;
  v10 = [(FTRecognitionStreamingRequest *)&v29 init];
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
        if (!siri::speech::qss_fb::RecognitionStreamingRequest::Verify(v19, &v24))
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

- (FTStartSpeechRequest)contentAsFTStartSpeechRequest
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTUpdateAudioInfo)contentAsFTUpdateAudioInfo
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSetRequestOrigin)contentAsFTSetRequestOrigin
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSetSpeechContext)contentAsFTSetSpeechContext
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSetSpeechProfile)contentAsFTSetSpeechProfile
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
  if ([(FTRecognitionStreamingRequest *)self content_type]== 6)
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

- (FTAudioPacket)contentAsFTAudioPacket
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 7)
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

- (FTFinishAudio)contentAsFTFinishAudio
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 8)
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

- (FTResetServerEndpointer)contentAsFTResetServerEndpointer
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 9)
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

- (FTCheckForSpeechRequest)contentAsFTCheckForSpeechRequest
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FTSetAlternateRecognitionSausage)contentAsFTSetAlternateRecognitionSausage
{
  if ([(FTRecognitionStreamingRequest *)self content_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
  content_type = [(FTRecognitionStreamingRequest *)self content_type];
  contentAsFTStartSpeechRequest = 0;
  if (content_type <= 5)
  {
    if (content_type <= 2)
    {
      if (content_type == 1)
      {
        contentAsFTStartSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTStartSpeechRequest];
      }

      else if (content_type == 2)
      {
        contentAsFTStartSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTUpdateAudioInfo];
      }
    }

    else
    {
      if (content_type != 3)
      {
        if (content_type == 4)
        {
          [(FTRecognitionStreamingRequest *)self contentAsFTSetSpeechContext];
        }

        else
        {
          [(FTRecognitionStreamingRequest *)self contentAsFTSetSpeechProfile];
        }

        goto LABEL_6;
      }

      contentAsFTStartSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTSetRequestOrigin];
    }
  }

  else if (content_type > 8)
  {
    switch(content_type)
    {
      case 9:
        contentAsFTStartSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTResetServerEndpointer];
        break;
      case 10:
        contentAsFTStartSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTCheckForSpeechRequest];
        break;
      case 11:
        contentAsFTStartSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTSetAlternateRecognitionSausage];
        break;
    }
  }

  else
  {
    if (content_type != 6)
    {
      if (content_type == 7)
      {
        [(FTRecognitionStreamingRequest *)self contentAsFTAudioPacket];
      }

      else
      {
        [(FTRecognitionStreamingRequest *)self contentAsFTFinishAudio];
      }

      contentAsFTStartSpeechRequest = LABEL_6:;
      goto LABEL_25;
    }

    contentAsFTStartSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTSetEndpointerState];
  }

LABEL_25:

  return contentAsFTStartSpeechRequest;
}

+ (Class)content_immutableClassForType:(int64_t)type
{
  if ((type - 1) > 0xA)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8B18[type - 1];
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::RecognitionStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  content_type = [(FTRecognitionStreamingRequest *)self content_type];
  if ([(FTRecognitionStreamingRequest *)self content_type]== 1)
  {
    contentAsFTStartSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTStartSpeechRequest];
    v7 = [contentAsFTStartSpeechRequest addObjectToBuffer:buffer];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 2)
  {
    contentAsFTUpdateAudioInfo = [(FTRecognitionStreamingRequest *)self contentAsFTUpdateAudioInfo];
    v10 = [contentAsFTUpdateAudioInfo addObjectToBuffer:buffer];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 3)
  {
    contentAsFTSetRequestOrigin = [(FTRecognitionStreamingRequest *)self contentAsFTSetRequestOrigin];
    v13 = [contentAsFTSetRequestOrigin addObjectToBuffer:buffer];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 4)
  {
    contentAsFTSetSpeechContext = [(FTRecognitionStreamingRequest *)self contentAsFTSetSpeechContext];
    v16 = [contentAsFTSetSpeechContext addObjectToBuffer:buffer];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 5)
  {
    contentAsFTSetSpeechProfile = [(FTRecognitionStreamingRequest *)self contentAsFTSetSpeechProfile];
    v19 = [contentAsFTSetSpeechProfile addObjectToBuffer:buffer];

    v46 = v19;
  }

  else
  {
    v46 = 0;
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 6)
  {
    contentAsFTSetEndpointerState = [(FTRecognitionStreamingRequest *)self contentAsFTSetEndpointerState];
    v21 = [contentAsFTSetEndpointerState addObjectToBuffer:buffer];

    v45 = v21;
  }

  else
  {
    v45 = 0;
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 7)
  {
    contentAsFTAudioPacket = [(FTRecognitionStreamingRequest *)self contentAsFTAudioPacket];
    v23 = [contentAsFTAudioPacket addObjectToBuffer:buffer];

    v44 = v23;
  }

  else
  {
    v44 = 0;
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 8)
  {
    contentAsFTFinishAudio = [(FTRecognitionStreamingRequest *)self contentAsFTFinishAudio];
    v25 = [contentAsFTFinishAudio addObjectToBuffer:buffer];

    v43 = v25;
  }

  else
  {
    v43 = 0;
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 9)
  {
    contentAsFTResetServerEndpointer = [(FTRecognitionStreamingRequest *)self contentAsFTResetServerEndpointer];
    v27 = [contentAsFTResetServerEndpointer addObjectToBuffer:buffer];

    v41 = v27;
  }

  else
  {
    v41 = 0;
  }

  v42 = v17;
  if ([(FTRecognitionStreamingRequest *)self content_type]== 10)
  {
    contentAsFTCheckForSpeechRequest = [(FTRecognitionStreamingRequest *)self contentAsFTCheckForSpeechRequest];
    v29 = [contentAsFTCheckForSpeechRequest addObjectToBuffer:buffer];

    v40 = v29;
  }

  else
  {
    v40 = 0;
  }

  v30 = v14;
  if ([(FTRecognitionStreamingRequest *)self content_type]== 11)
  {
    contentAsFTSetAlternateRecognitionSausage = [(FTRecognitionStreamingRequest *)self contentAsFTSetAlternateRecognitionSausage];
    v32 = [contentAsFTSetAlternateRecognitionSausage addObjectToBuffer:buffer];
    v33 = v11;
    v34 = v8;

    v35 = v32;
  }

  else
  {
    v33 = v11;
    v34 = v8;
    v35 = 0;
  }

  *(buffer + 70) = 1;
  v36 = *(buffer + 5);
  v37 = *(buffer + 6);
  v38 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, content_type, 0);
  if ([(FTRecognitionStreamingRequest *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v34);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v33);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v30);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v42);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v46);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v45);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v44);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v43);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v41);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v40);
  }

  if ([(FTRecognitionStreamingRequest *)self content_type]== 11)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v35);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v38 - v37 + v36);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRecognitionStreamingRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__45__FTRecognitionStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
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