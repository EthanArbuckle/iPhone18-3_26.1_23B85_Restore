@interface QSSPronGuessStreamingRequest
- (Offset<siri::speech::qss_fb::PronGuessStreamingRequest>)addObjectToBuffer:(void *)a3;
- (QSSAudioPacket)contentAsQSSAudioPacket;
- (QSSCancelRequest)contentAsQSSCancelRequest;
- (QSSFinishAudio)contentAsQSSFinishAudio;
- (QSSPronGuessStreamingRequest)initWithFlatbuffData:(id)a3 root:(const PronGuessStreamingRequest *)a4 verify:(BOOL)a5;
- (QSSStartPronGuessRequest)contentAsQSSStartPronGuessRequest;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSPronGuessStreamingRequest

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_26914CD60;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(QSSPronGuessStreamingRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__44__QSSPronGuessStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::PronGuessStreamingRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSPronGuessStreamingRequest *)self content_type];
  if ([(QSSPronGuessStreamingRequest *)self content_type]== 1)
  {
    v6 = [(QSSPronGuessStreamingRequest *)self contentAsQSSStartPronGuessRequest];
    LODWORD(v7) = [v6 addObjectToBuffer:a3];

    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ([(QSSPronGuessStreamingRequest *)self content_type]== 2)
  {
    v8 = [(QSSPronGuessStreamingRequest *)self contentAsQSSAudioPacket];
    LODWORD(v9) = [v8 addObjectToBuffer:a3];

    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  if ([(QSSPronGuessStreamingRequest *)self content_type]== 3)
  {
    v10 = [(QSSPronGuessStreamingRequest *)self contentAsQSSFinishAudio];
    LODWORD(v11) = [v10 addObjectToBuffer:a3];

    v11 = v11;
  }

  else
  {
    v11 = 0;
  }

  if ([(QSSPronGuessStreamingRequest *)self content_type]== 4)
  {
    v12 = [(QSSPronGuessStreamingRequest *)self contentAsQSSCancelRequest];
    v13 = [v12 addObjectToBuffer:a3];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v15 = *(a3 + 5);
  v16 = *(a3 + 6);
  v17 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5);
  if ([(QSSPronGuessStreamingRequest *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v7);
  }

  if ([(QSSPronGuessStreamingRequest *)self content_type]== 2)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v9);
  }

  if ([(QSSPronGuessStreamingRequest *)self content_type]== 3)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v11);
  }

  if ([(QSSPronGuessStreamingRequest *)self content_type]== 4)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v14);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v17 - v16 + v15);
}

- (QSSCancelRequest)contentAsQSSCancelRequest
{
  if ([(QSSPronGuessStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSCancelRequest alloc];
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

      v3 = [(QSSCancelRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSFinishAudio)contentAsQSSFinishAudio
{
  if ([(QSSPronGuessStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSFinishAudio alloc];
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

      v3 = [(QSSFinishAudio *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSAudioPacket)contentAsQSSAudioPacket
{
  if ([(QSSPronGuessStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSAudioPacket alloc];
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

      v3 = [(QSSAudioPacket *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (QSSStartPronGuessRequest)contentAsQSSStartPronGuessRequest
{
  if ([(QSSPronGuessStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSStartPronGuessRequest alloc];
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

      v3 = [(QSSStartPronGuessRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (QSSPronGuessStreamingRequest)initWithFlatbuffData:(id)a3 root:(const PronGuessStreamingRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v33.receiver = self;
  v33.super_class = QSSPronGuessStreamingRequest;
  v10 = [(QSSPronGuessStreamingRequest *)&v33 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_43;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_44;
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
      goto LABEL_44;
    }

    v17 = [(NSData *)v10->_data bytes];
    v18 = [(NSData *)v10->_data length];
    v28 = v17;
    v29 = v18;
    v30 = xmmword_26914CD70;
    v31 = 0;
    v32 = 1;
    if (v18 >= 0x7FFFFFFF)
    {
      __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
    }

    v19 = v10->_root;
    if (v19)
    {
      if (!flatbuffers::Verifier::VerifyTableStart(&v28, v11->_root->var0))
      {
        goto LABEL_44;
      }

      v20 = (v19 - *v19);
      v21 = *v20;
      if (v21 >= 5 && v20[2] && (v29 < 2 || v29 - 1 < v19 + v20[2] - v28))
      {
        goto LABEL_44;
      }

      if (!flatbuffers::Table::VerifyOffset(v19, &v28, 6u))
      {
        goto LABEL_44;
      }

      if (v21 >= 7)
      {
        if (v20[3])
        {
          v22 = (v19 + v20[3] + *(v19 + v20[3]));
          goto LABEL_24;
        }

LABEL_23:
        v22 = 0;
LABEL_24:
        if (v20[2])
        {
          v23 = *(v19 + v20[2]);
          if (v23 <= 1)
          {
            if (*(v19 + v20[2]) && (v23 != 1 || v22 && !siri::speech::schema_fb::StartPronGuessRequest::Verify(v22, &v28)))
            {
              goto LABEL_44;
            }
          }

          else if (v23 == 2)
          {
            if (v22 && !siri::speech::schema_fb::TTSWordPhonemes::Verify(v22, &v28))
            {
              goto LABEL_44;
            }
          }

          else if (v23 == 3)
          {
            if (v22 && !siri::speech::schema_fb::FinishAudio::Verify(v22, &v28))
            {
              goto LABEL_44;
            }
          }

          else if (v23 != 4 || v22 && !siri::speech::schema_fb::TextToSpeechSpeechFeatureModelIdentifier::Verify(v22, &v28))
          {
LABEL_44:
            v26 = 0;
            goto LABEL_45;
          }
        }

        goto LABEL_42;
      }

      if (v21 >= 5)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_42:
  v24 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v24;

LABEL_43:
  v26 = v11;
LABEL_45:

  return v26;
}

@end