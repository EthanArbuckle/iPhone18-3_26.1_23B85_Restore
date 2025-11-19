@interface FTMultiUserStreamingRequest
+ (Class)content_immutableClassForType:(int64_t)a3;
+ (int64_t)content_typeForImmutableObject:(id)a3;
- (FLTBFBufferAccessor)content;
- (FTAudioPacket)contentAsFTAudioPacket;
- (FTFinishAudio)contentAsFTFinishAudio;
- (FTMultiUserStartSpeechRequest)contentAsFTMultiUserStartSpeechRequest;
- (FTMultiUserStreamingRequest)initWithFlatbuffData:(id)a3 root:(const MultiUserStreamingRequest *)a4 verify:(BOOL)a5;
- (FTResetServerEndpointer)contentAsFTResetServerEndpointer;
- (FTSetAlternateRecognitionSausage)contentAsFTSetAlternateRecognitionSausage;
- (FTSetEndpointerState)contentAsFTSetEndpointerState;
- (FTSetRequestOrigin)contentAsFTSetRequestOrigin;
- (FTSetSpeechContext)contentAsFTSetSpeechContext;
- (FTSetSpeechProfile)contentAsFTSetSpeechProfile;
- (FTUpdateAudioInfo)contentAsFTUpdateAudioInfo;
- (Offset<siri::speech::qss_fb::MultiUserStreamingRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation FTMultiUserStreamingRequest

- (FTMultiUserStreamingRequest)initWithFlatbuffData:(id)a3 root:(const MultiUserStreamingRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = FTMultiUserStreamingRequest;
  v10 = [(FTMultiUserStreamingRequest *)&v29 init];
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
        if (!siri::speech::qss_fb::MultiUserStreamingRequest::Verify(v19, &v24))
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

- (FTMultiUserStartSpeechRequest)contentAsFTMultiUserStartSpeechRequest
{
  if ([(FTMultiUserStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
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
  if ([(FTMultiUserStreamingRequest *)self content_type]== 2)
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
  if ([(FTMultiUserStreamingRequest *)self content_type]== 3)
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
  if ([(FTMultiUserStreamingRequest *)self content_type]== 4)
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
  if ([(FTMultiUserStreamingRequest *)self content_type]== 5)
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
  if ([(FTMultiUserStreamingRequest *)self content_type]== 6)
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
  if ([(FTMultiUserStreamingRequest *)self content_type]== 7)
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
  if ([(FTMultiUserStreamingRequest *)self content_type]== 8)
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
  if ([(FTMultiUserStreamingRequest *)self content_type]== 9)
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

- (FTSetAlternateRecognitionSausage)contentAsFTSetAlternateRecognitionSausage
{
  if ([(FTMultiUserStreamingRequest *)self content_type]== 10)
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
  v3 = [(FTMultiUserStreamingRequest *)self content_type];
  v4 = 0;
  if (v3 > 5)
  {
    if (v3 <= 7)
    {
      if (v3 == 6)
      {
        [(FTMultiUserStreamingRequest *)self contentAsFTSetEndpointerState];
      }

      else
      {
        [(FTMultiUserStreamingRequest *)self contentAsFTAudioPacket];
      }

      goto LABEL_6;
    }

    switch(v3)
    {
      case 8:
        v4 = [(FTMultiUserStreamingRequest *)self contentAsFTFinishAudio];
        break;
      case 9:
        v4 = [(FTMultiUserStreamingRequest *)self contentAsFTResetServerEndpointer];
        break;
      case 10:
        v4 = [(FTMultiUserStreamingRequest *)self contentAsFTSetAlternateRecognitionSausage];
        break;
    }
  }

  else if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v4 = [(FTMultiUserStreamingRequest *)self contentAsFTMultiUserStartSpeechRequest];
    }

    else if (v3 == 2)
    {
      v4 = [(FTMultiUserStreamingRequest *)self contentAsFTUpdateAudioInfo];
    }
  }

  else
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        [(FTMultiUserStreamingRequest *)self contentAsFTSetSpeechContext];
      }

      else
      {
        [(FTMultiUserStreamingRequest *)self contentAsFTSetSpeechProfile];
      }

      v4 = LABEL_6:;
      goto LABEL_23;
    }

    v4 = [(FTMultiUserStreamingRequest *)self contentAsFTSetRequestOrigin];
  }

LABEL_23:

  return v4;
}

+ (Class)content_immutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8BE0[a3 - 1];
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

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Offset<siri::speech::qss_fb::MultiUserStreamingRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTMultiUserStreamingRequest *)self content_type];
  if ([(FTMultiUserStreamingRequest *)self content_type]== 1)
  {
    v6 = [(FTMultiUserStreamingRequest *)self contentAsFTMultiUserStartSpeechRequest];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 2)
  {
    v9 = [(FTMultiUserStreamingRequest *)self contentAsFTUpdateAudioInfo];
    v10 = [v9 addObjectToBuffer:a3];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 3)
  {
    v12 = [(FTMultiUserStreamingRequest *)self contentAsFTSetRequestOrigin];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 4)
  {
    v15 = [(FTMultiUserStreamingRequest *)self contentAsFTSetSpeechContext];
    v16 = [v15 addObjectToBuffer:a3];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 5)
  {
    v18 = [(FTMultiUserStreamingRequest *)self contentAsFTSetSpeechProfile];
    v19 = [v18 addObjectToBuffer:a3];

    v45 = v19;
  }

  else
  {
    v45 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 6)
  {
    v20 = [(FTMultiUserStreamingRequest *)self contentAsFTSetEndpointerState];
    v21 = [v20 addObjectToBuffer:a3];

    v44 = v21;
  }

  else
  {
    v44 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 7)
  {
    v22 = [(FTMultiUserStreamingRequest *)self contentAsFTAudioPacket];
    v23 = [v22 addObjectToBuffer:a3];

    v43 = v23;
  }

  else
  {
    v43 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 8)
  {
    v24 = [(FTMultiUserStreamingRequest *)self contentAsFTFinishAudio];
    v25 = [v24 addObjectToBuffer:a3];

    v42 = v25;
  }

  else
  {
    v42 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 9)
  {
    v26 = [(FTMultiUserStreamingRequest *)self contentAsFTResetServerEndpointer];
    v27 = [v26 addObjectToBuffer:a3];

    v41 = v27;
  }

  else
  {
    v41 = 0;
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 10)
  {
    v28 = v11;
    v29 = v5;
    v30 = [(FTMultiUserStreamingRequest *)self contentAsFTSetAlternateRecognitionSausage];
    v31 = [v30 addObjectToBuffer:a3];
    v32 = v14;
    v33 = v8;
    v34 = v29;

    v39 = v31;
  }

  else
  {
    v32 = v14;
    v28 = v11;
    v33 = v8;
    v34 = v5;
    v39 = 0;
  }

  *(a3 + 70) = 1;
  v36 = *(a3 + 5);
  v35 = *(a3 + 6);
  v37 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v34, 0);
  if ([(FTMultiUserStreamingRequest *)self content_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v33);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v28);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 3)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v32);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 4)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v17);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 5)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v45);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 6)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v44);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 7)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v43);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v42);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v41);
  }

  if ([(FTMultiUserStreamingRequest *)self content_type]== 10)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v40);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v37 - v35 + v36);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTMultiUserStreamingRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__43__FTMultiUserStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
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