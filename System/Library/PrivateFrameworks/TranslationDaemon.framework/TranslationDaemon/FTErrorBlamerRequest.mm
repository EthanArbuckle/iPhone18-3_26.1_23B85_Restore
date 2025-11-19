@interface FTErrorBlamerRequest
- (FTErrorBlamerRequest)initWithFlatbuffData:(id)a3 root:(const ErrorBlamerRequest *)a4 verify:(BOOL)a5;
- (FTStartSpeechRequest)start_speech_request;
- (FTUserAcousticProfile)user_acoustic_profile;
- (FTUserLanguageProfile)user_language_profile;
- (NSArray)audio_packets;
- (NSArray)contextual_text;
- (NSString)left_context;
- (NSString)ref_transcript;
- (NSString)right_context;
- (Offset<siri::speech::schema_fb::ErrorBlamerRequest>)addObjectToBuffer:(void *)a3;
- (double)latitude;
- (double)longitude;
- (id)audio_packets_objectAtIndex:(unint64_t)a3;
- (id)contextual_text_objectAtIndex:(unint64_t)a3;
- (id)flatbuffData;
- (unint64_t)audio_packets_count;
- (unint64_t)contextual_text_count;
- (void)audio_packets_enumerateObjectsUsingBlock:(id)a3;
- (void)contextual_text_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTErrorBlamerRequest

- (FTErrorBlamerRequest)initWithFlatbuffData:(id)a3 root:(const ErrorBlamerRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTErrorBlamerRequest;
  v10 = [(FTErrorBlamerRequest *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::ErrorBlamerRequest::Verify(v18, v21))
  {
LABEL_14:
    v19 = 0;
  }

  else
  {
LABEL_13:
    v19 = v10;
  }

  return v19;
}

- (FTStartSpeechRequest)start_speech_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"start_speech_request"];
  if (!v3)
  {
    v4 = [FTStartSpeechRequest alloc];
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

    v3 = [(FTStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"start_speech_request"];
  }

  return v3;
}

- (NSArray)contextual_text
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__FTErrorBlamerRequest_contextual_text__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTErrorBlamerRequest *)self contextual_text_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"contextual_text"];
  }

  return v3;
}

- (id)contextual_text_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:a3];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v13 = (v12 + 4 + *(v12 + 4));
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 + 1 length:*v13 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)contextual_text_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 7u && (v8 = *v7[6].var0) != 0)
    {
      v5 = *root[v8 + *root[v8].var0].var0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)contextual_text_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 7u)
    {
      v9 = *v8[6].var0;
      if (v9)
      {
        v19 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v9 + v10];
          v14 = v13 + 8;
          v15 = 4 * v11 - 4;
          do
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v14[*v14[-4].var0] length:*v13[4 * v12 + 4 + *v14[-4].var0].var0 encoding:4];
            v4[2](v4, v16, v12, &v19);
            v17 = v19;

            if (v17)
            {
              break;
            }

            ++v12;
            v14 += 4;
            v18 = v15;
            v15 -= 4;
          }

          while (v18);
        }
      }
    }
  }
}

- (NSString)left_context
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 8].var0;
  if (*root[-v3 + 8].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (NSString)right_context
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 10].var0;
  if (*root[-v3 + 10].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (FTUserLanguageProfile)user_language_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_language_profile"];
  if (!v3)
  {
    v4 = [FTUserLanguageProfile alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTUserLanguageProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_language_profile"];
  }

  return v3;
}

- (FTUserAcousticProfile)user_acoustic_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_acoustic_profile"];
  if (!v3)
  {
    v4 = [FTUserAcousticProfile alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xFu && (v7 = *v6[14].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTUserAcousticProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_acoustic_profile"];
  }

  return v3;
}

- (double)latitude
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x11u)
  {
    v5 = *v3[16].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (double)longitude
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x13u)
  {
    v5 = *v3[18].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (NSArray)audio_packets
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"audio_packets"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__FTErrorBlamerRequest_audio_packets__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTErrorBlamerRequest *)self audio_packets_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"audio_packets"];
  }

  return v3;
}

- (id)audio_packets_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"audio_packets"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:a3];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 0x15u)
  {
    v11 = *v10[20].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTAudioPacket alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)audio_packets_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"audio_packets"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0x15u && (v8 = *v7[20].var0) != 0)
    {
      v5 = *root[v8 + *root[v8].var0].var0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)audio_packets_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"audio_packets"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x15u)
    {
      v9 = *v8[20].var0;
      if (v9)
      {
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v10 + 4 + v9];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [[FTAudioPacket alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            v4[2](v4, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v13 += 4;
            v17 = v14;
            v14 -= 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (NSString)ref_transcript
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 22].var0;
  if (*root[-v3 + 22].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (Offset<siri::speech::schema_fb::ErrorBlamerRequest>)addObjectToBuffer:(void *)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = [(FTErrorBlamerRequest *)self start_speech_request];
  v6 = [v5 addObjectToBuffer:a3];

  memset(&v72, 0, sizeof(v72));
  v7 = [(FTErrorBlamerRequest *)self contextual_text];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v72, [v7 count]);

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v8 = [(FTErrorBlamerRequest *)self contextual_text];
  v9 = [v8 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v9)
  {
    v10 = *v69;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v69 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v68 + 1) + 8 * i) UTF8String];
        v13 = strlen(v12);
        LODWORD(v67.__begin_) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v12, v13);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v72.__begin_, &v67);
      }

      v9 = [v8 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v9);
  }

  if (v72.__end_ == v72.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    begin = v72.__begin_;
  }

  v15 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v72.__end_ - v72.__begin_);
  v16 = [(FTErrorBlamerRequest *)self left_context];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_284834138;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v18, v19);

  v20 = [(FTErrorBlamerRequest *)self right_context];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_284834138;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  v61 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v22, v23);

  v24 = [(FTErrorBlamerRequest *)self user_language_profile];
  v60 = [v24 addObjectToBuffer:a3];

  v25 = [(FTErrorBlamerRequest *)self user_acoustic_profile];
  LODWORD(v57) = [v25 addObjectToBuffer:a3];

  [(FTErrorBlamerRequest *)self latitude];
  v27 = v26;
  [(FTErrorBlamerRequest *)self longitude];
  v29 = v28;
  memset(&v67, 0, sizeof(v67));
  v30 = [(FTErrorBlamerRequest *)self audio_packets];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v67, [v30 count]);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v31 = [(FTErrorBlamerRequest *)self audio_packets];
  HIDWORD(v57) = v15;
  v58 = self;
  v59 = v6;
  v32 = [v31 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v32)
  {
    v33 = *v64;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v64 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = [*(*(&v63 + 1) + 8 * j) addObjectToBuffer:{a3, v57}];
        end = v67.__end_;
        if (v67.__end_ >= v67.__end_cap_.__value_)
        {
          v38 = v67.__begin_;
          v39 = v67.__end_ - v67.__begin_;
          v40 = v67.__end_ - v67.__begin_;
          v41 = v40 + 1;
          if ((v40 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v42 = v67.__end_cap_.__value_ - v67.__begin_;
          if ((v67.__end_cap_.__value_ - v67.__begin_) >> 1 > v41)
          {
            v41 = v42 >> 1;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v43 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v41;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v67, v43);
          }

          *(4 * v40) = v35;
          v37 = (4 * v40 + 4);
          memcpy(0, v38, v39);
          v44 = v67.__begin_;
          v67.__begin_ = 0;
          v67.__end_ = v37;
          v67.__end_cap_.__value_ = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *v67.__end_ = v35;
          v37 = end + 1;
        }

        v67.__end_ = v37;
      }

      v32 = [v31 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v32);
  }

  if (v67.__end_ == v67.__begin_)
  {
    v45 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioPacket>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioPacket>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioPacket>> const&)::t;
  }

  else
  {
    v45 = v67.__begin_;
  }

  v46 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v45, v67.__end_ - v67.__begin_);
  v47 = [(FTErrorBlamerRequest *)v58 ref_transcript];
  v48 = v47;
  if (!v47)
  {
    v47 = &stru_284834138;
  }

  v49 = [(__CFString *)v47 UTF8String];
  v50 = strlen(v49);
  LODWORD(v49) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v49, v50);

  *(a3 + 70) = 1;
  v51 = *(a3 + 8);
  v52 = *(a3 + 12);
  v53 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v59);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, SHIDWORD(v57));
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v61);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v60);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(a3, 16, v27, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(a3, 18, v29, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 20, v46);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 22, v49);
  v54.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v51 - v52 + v53);
  if (v67.__begin_)
  {
    v67.__end_ = v67.__begin_;
    operator delete(v67.__begin_);
  }

  if (v72.__begin_)
  {
    v72.__end_ = v72.__begin_;
    operator delete(v72.__begin_);
  }

  v55 = *MEMORY[0x277D85DE8];
  return v54;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTErrorBlamerRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__36__FTErrorBlamerRequest_flatbuffData__block_invoke(uint64_t a1)
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