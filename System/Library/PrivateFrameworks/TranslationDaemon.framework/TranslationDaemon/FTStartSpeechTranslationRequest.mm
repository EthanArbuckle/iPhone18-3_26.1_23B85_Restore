@interface FTStartSpeechTranslationRequest
- (BOOL)restricted_mode;
- (BOOL)streaming_mode;
- (FTStartSpeechRequest)start_speech_request;
- (FTStartSpeechTranslationRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechTranslationRequest *)a4 verify:(BOOL)a5;
- (FTTranslationOptions)options;
- (FTTranslationRequest)translation_request;
- (NSArray)text_to_speech_requests;
- (NSArray)translation_locale_pairs;
- (NSString)app_id;
- (NSString)conversation_id;
- (NSString)request_id;
- (Offset<siri::speech::schema_fb::StartSpeechTranslationRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)text_to_speech_requests_objectAtIndex:(unint64_t)a3;
- (id)translation_locale_pairs_objectAtIndex:(unint64_t)a3;
- (int64_t)opt_in_status;
- (unint64_t)text_to_speech_requests_count;
- (unint64_t)translation_locale_pairs_count;
- (void)text_to_speech_requests_enumerateObjectsUsingBlock:(id)a3;
- (void)translation_locale_pairs_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTStartSpeechTranslationRequest

- (FTStartSpeechTranslationRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechTranslationRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTStartSpeechTranslationRequest;
  v10 = [(FTStartSpeechTranslationRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::StartSpeechTranslationRequest::Verify(v18, v21))
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

- (NSString)conversation_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 4].var0;
  if (*root[-v3 + 4].var0)
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

- (NSString)request_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 6].var0;
  if (*root[-v3 + 6].var0)
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

- (NSArray)translation_locale_pairs
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pairs"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__FTStartSpeechTranslationRequest_translation_locale_pairs__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTStartSpeechTranslationRequest *)self translation_locale_pairs_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_locale_pairs"];
  }

  return v3;
}

- (id)translation_locale_pairs_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pairs"];
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
  if (*v10->var0 >= 9u)
  {
    v11 = *v10[8].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTTranslationLocalePair alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)translation_locale_pairs_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pairs"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 9u && (v8 = *v7[8].var0) != 0)
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

- (void)translation_locale_pairs_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pairs"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 9u)
    {
      v9 = *v8[8].var0;
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
            v15 = [[FTTranslationLocalePair alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (FTStartSpeechRequest)start_speech_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"start_speech_request"];
  if (!v3)
  {
    v4 = [FTStartSpeechRequest alloc];
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

    v3 = [(FTStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"start_speech_request"];
  }

  return v3;
}

- (FTTranslationRequest)translation_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_request"];
  if (!v3)
  {
    v4 = [FTTranslationRequest alloc];
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

    v3 = [(FTTranslationRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_request"];
  }

  return v3;
}

- (NSArray)text_to_speech_requests
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"text_to_speech_requests"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__FTStartSpeechTranslationRequest_text_to_speech_requests__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTStartSpeechTranslationRequest *)self text_to_speech_requests_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"text_to_speech_requests"];
  }

  return v3;
}

- (id)text_to_speech_requests_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"text_to_speech_requests"];
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
  if (*v10->var0 >= 0xFu)
  {
    v11 = *v10[14].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTTextToSpeechRequest alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)text_to_speech_requests_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"text_to_speech_requests"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xFu && (v8 = *v7[14].var0) != 0)
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

- (void)text_to_speech_requests_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"text_to_speech_requests"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xFu)
    {
      v9 = *v8[14].var0;
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
            v15 = [[FTTextToSpeechRequest alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (BOOL)restricted_mode
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)app_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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

- (int64_t)opt_in_status
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)streaming_mode
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x17u && (v4 = *v3[22].var0) != 0 && root[v4].var0[0] != 0;
}

- (FTTranslationOptions)options
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"options"];
  if (!v3)
  {
    v4 = [FTTranslationOptions alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x19u && (v7 = *v6[24].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTranslationOptions *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"options"];
  }

  return v3;
}

- (Offset<siri::speech::schema_fb::StartSpeechTranslationRequest>)addObjectToBuffer:(void *)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = [(FTStartSpeechTranslationRequest *)self conversation_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(FTStartSpeechTranslationRequest *)self request_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_284834138;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v65 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v11, v12);

  memset(&v77, 0, sizeof(v77));
  v13 = [(FTStartSpeechTranslationRequest *)self translation_locale_pairs];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v77, [v13 count]);

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v14 = [(FTStartSpeechTranslationRequest *)self translation_locale_pairs];
  v67 = self;
  v15 = [v14 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v15)
  {
    v16 = *v74;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v74 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v73 + 1) + 8 * i) addObjectToBuffer:a3];
        end = v77.__end_;
        if (v77.__end_ >= v77.__end_cap_.__value_)
        {
          begin = v77.__begin_;
          v22 = v77.__end_ - v77.__begin_;
          v23 = v77.__end_ - v77.__begin_;
          v24 = v23 + 1;
          if ((v23 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v25 = v77.__end_cap_.__value_ - v77.__begin_;
          if ((v77.__end_cap_.__value_ - v77.__begin_) >> 1 > v24)
          {
            v24 = v25 >> 1;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v26 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v77, v26);
          }

          *(4 * v23) = v18;
          v20 = (4 * v23 + 4);
          memcpy(0, begin, v22);
          v27 = v77.__begin_;
          v77.__begin_ = 0;
          v77.__end_ = v20;
          v77.__end_cap_.__value_ = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v77.__end_ = v18;
          v20 = end + 1;
        }

        v77.__end_ = v20;
      }

      v15 = [v14 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v15);
  }

  if (v77.__end_ == v77.__begin_)
  {
    v28 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationLocalePair>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationLocalePair>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationLocalePair>> const&)::t;
  }

  else
  {
    v28 = v77.__begin_;
  }

  v64 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v28, v77.__end_ - v77.__begin_);
  v29 = [(FTStartSpeechTranslationRequest *)v67 start_speech_request];
  v63 = [v29 addObjectToBuffer:a3];

  v30 = [(FTStartSpeechTranslationRequest *)v67 translation_request];
  v62 = [v30 addObjectToBuffer:a3];

  memset(&v72, 0, sizeof(v72));
  v31 = [(FTStartSpeechTranslationRequest *)v67 text_to_speech_requests];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v72, [v31 count]);

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v32 = [(FTStartSpeechTranslationRequest *)v67 text_to_speech_requests];
  v33 = [v32 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v33)
  {
    v34 = *v69;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v69 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v36 = [*(*(&v68 + 1) + 8 * j) addObjectToBuffer:a3];
        v37 = v72.__end_;
        if (v72.__end_ >= v72.__end_cap_.__value_)
        {
          v39 = v72.__begin_;
          v40 = v72.__end_ - v72.__begin_;
          v41 = v72.__end_ - v72.__begin_;
          v42 = v41 + 1;
          if ((v41 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v43 = v72.__end_cap_.__value_ - v72.__begin_;
          if ((v72.__end_cap_.__value_ - v72.__begin_) >> 1 > v42)
          {
            v42 = v43 >> 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v44 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v42;
          }

          if (v44)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v72, v44);
          }

          *(4 * v41) = v36;
          v38 = (4 * v41 + 4);
          memcpy(0, v39, v40);
          v45 = v72.__begin_;
          v72.__begin_ = 0;
          v72.__end_ = v38;
          v72.__end_cap_.__value_ = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v72.__end_ = v36;
          v38 = v37 + 1;
        }

        v72.__end_ = v38;
      }

      v33 = [v32 countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v33);
  }

  if (v72.__end_ == v72.__begin_)
  {
    v46 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest>> const&)::t;
  }

  else
  {
    v46 = v72.__begin_;
  }

  v47 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v46, v72.__end_ - v72.__begin_);
  v48 = [(FTStartSpeechTranslationRequest *)v67 restricted_mode];
  v49 = [(FTStartSpeechTranslationRequest *)v67 app_id];
  v50 = v49;
  if (!v49)
  {
    v49 = &stru_284834138;
  }

  v51 = [(__CFString *)v49 UTF8String];
  v52 = strlen(v51);
  LODWORD(v51) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v51, v52);

  v53 = [(FTStartSpeechTranslationRequest *)v67 opt_in_status];
  v54 = [(FTStartSpeechTranslationRequest *)v67 streaming_mode];
  v55 = [(FTStartSpeechTranslationRequest *)v67 options];
  v56 = [v55 addObjectToBuffer:a3];

  *(a3 + 70) = 1;
  v57 = *(a3 + 8);
  v58 = *(a3 + 12);
  LODWORD(v55) = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v65);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v64);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v62);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 16, v48, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 18, v51);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 20, v53, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 22, v54, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 24, v56);
  v59.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v57 - v58 + v55);
  if (v72.__begin_)
  {
    v72.__end_ = v72.__begin_;
    operator delete(v72.__begin_);
  }

  if (v77.__begin_)
  {
    v77.__end_ = v77.__begin_;
    operator delete(v77.__begin_);
  }

  v60 = *MEMORY[0x277D85DE8];
  return v59;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTStartSpeechTranslationRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__47__FTStartSpeechTranslationRequest_flatbuffData__block_invoke(uint64_t a1)
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