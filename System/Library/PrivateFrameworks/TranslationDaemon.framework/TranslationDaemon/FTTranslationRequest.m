@interface FTTranslationRequest
- (BOOL)disable_log;
- (BOOL)is_partial;
- (FTSiriPayloadTranslationInfo)siri_payload_translation_info;
- (FTSiriTranslationInfo)siri_translation_info;
- (FTSpeechTranslationInfo)speech_translation_info;
- (FTTranslationOptions)options;
- (FTTranslationRequest)initWithFlatbuffData:(id)a3 root:(const TranslationRequest *)a4 verify:(BOOL)a5;
- (FTWebTranslationInfo)web_translation_info;
- (NSArray)translation_phrase;
- (NSString)app_id;
- (NSString)request_id;
- (NSString)sequence_id;
- (NSString)source_language;
- (NSString)speech_id;
- (NSString)target_language;
- (NSString)task;
- (NSString)use_case;
- (Offset<siri::speech::schema_fb::TranslationRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)translation_phrase_objectAtIndex:(unint64_t)a3;
- (int64_t)opt_in_status;
- (unint64_t)translation_phrase_count;
- (void)translation_phrase_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTTranslationRequest

- (FTTranslationRequest)initWithFlatbuffData:(id)a3 root:(const TranslationRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTranslationRequest;
  v10 = [(FTTranslationRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::TranslationRequest::Verify(v18, v21))
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

- (NSString)speech_id
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

- (NSString)task
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

- (NSString)source_language
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

- (NSString)target_language
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 12].var0;
  if (*root[-v3 + 12].var0)
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

- (NSArray)translation_phrase
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__FTTranslationRequest_translation_phrase__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTranslationRequest *)self translation_phrase_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_phrase"];
  }

  return v3;
}

- (id)translation_phrase_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
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
      v13 = (v12 + 4 + *(v12 + 4));
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 + 1 length:*v13 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)translation_phrase_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
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

- (void)translation_phrase_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
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

- (FTSiriTranslationInfo)siri_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"siri_translation_info"];
  if (!v3)
  {
    v4 = [FTSiriTranslationInfo alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x11u && (v7 = *v6[16].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTSiriTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"siri_translation_info"];
  }

  return v3;
}

- (FTSpeechTranslationInfo)speech_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"speech_translation_info"];
  if (!v3)
  {
    v4 = [FTSpeechTranslationInfo alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x13u && (v7 = *v6[18].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTSpeechTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"speech_translation_info"];
  }

  return v3;
}

- (FTSiriPayloadTranslationInfo)siri_payload_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"siri_payload_translation_info"];
  if (!v3)
  {
    v4 = [FTSiriPayloadTranslationInfo alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x15u && (v7 = *v6[20].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTSiriPayloadTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"siri_payload_translation_info"];
  }

  return v3;
}

- (NSString)sequence_id
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

- (FTWebTranslationInfo)web_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"web_translation_info"];
  if (!v3)
  {
    v4 = [FTWebTranslationInfo alloc];
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

    v3 = [(FTWebTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"web_translation_info"];
  }

  return v3;
}

- (BOOL)disable_log
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x1Bu && (v4 = *v3[26].var0) != 0 && root[v4].var0[0] != 0;
}

- (int64_t)opt_in_status
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x1Du && (v4 = *v3[28].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)app_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 30].var0;
  if (*root[-v3 + 30].var0)
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

- (NSString)use_case
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 32].var0;
  if (*root[-v3 + 32].var0)
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

- (FTTranslationOptions)options
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"options"];
  if (!v3)
  {
    v4 = [FTTranslationOptions alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x23u && (v7 = *v6[34].var0) != 0)
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

- (BOOL)is_partial
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x25u && (v4 = *v3[36].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::TranslationRequest>)addObjectToBuffer:(void *)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = [(FTTranslationRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(FTTranslationRequest *)self request_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_284834138;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v70 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(FTTranslationRequest *)self task];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_284834138;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v69 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v15, v16);

  v17 = [(FTTranslationRequest *)self source_language];
  v18 = v17;
  if (!v17)
  {
    v17 = &stru_284834138;
  }

  v19 = [(__CFString *)v17 UTF8String];
  v20 = strlen(v19);
  v68 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v19, v20);

  v21 = [(FTTranslationRequest *)self target_language];
  v22 = v21;
  if (!v21)
  {
    v21 = &stru_284834138;
  }

  v23 = [(__CFString *)v21 UTF8String];
  v24 = strlen(v23);
  v67 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v23, v24);

  memset(&v77, 0, sizeof(v77));
  v25 = [(FTTranslationRequest *)self translation_phrase];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v77, [v25 count]);

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v26 = [(FTTranslationRequest *)self translation_phrase];
  v27 = [v26 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (v27)
  {
    v28 = *v74;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v74 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [*(*(&v73 + 1) + 8 * i) UTF8String];
        v31 = strlen(v30);
        v72 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v30, v31);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v77.__begin_, &v72);
      }

      v27 = [v26 countByEnumeratingWithState:&v73 objects:v78 count:16];
    }

    while (v27);
  }

  if (v77.__end_ == v77.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    begin = v77.__begin_;
  }

  v66 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v77.__end_ - v77.__begin_);
  v33 = [(FTTranslationRequest *)self siri_translation_info];
  v65 = [v33 addObjectToBuffer:a3];

  v34 = [(FTTranslationRequest *)self speech_translation_info];
  v64 = [v34 addObjectToBuffer:a3];

  v35 = [(FTTranslationRequest *)self siri_payload_translation_info];
  v63 = [v35 addObjectToBuffer:a3];

  v36 = [(FTTranslationRequest *)self sequence_id];
  v37 = v36;
  if (!v36)
  {
    v36 = &stru_284834138;
  }

  v38 = [(__CFString *)v36 UTF8String];
  v39 = strlen(v38);
  v62 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v38, v39);

  v40 = [(FTTranslationRequest *)self web_translation_info];
  v61 = [v40 addObjectToBuffer:a3];

  v41 = [(FTTranslationRequest *)self disable_log];
  v42 = [(FTTranslationRequest *)self opt_in_status];
  v43 = [(FTTranslationRequest *)self app_id];
  v44 = v43;
  if (!v43)
  {
    v43 = &stru_284834138;
  }

  v45 = [(__CFString *)v43 UTF8String];
  v46 = strlen(v45);
  v47 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v45, v46);

  v48 = [(FTTranslationRequest *)self use_case];
  v49 = v48;
  if (!v48)
  {
    v48 = &stru_284834138;
  }

  v50 = [(__CFString *)v48 UTF8String];
  v51 = strlen(v50);
  v52 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v50, v51);

  v53 = [(FTTranslationRequest *)self options];
  v54 = [v53 addObjectToBuffer:a3];

  v55 = [(FTTranslationRequest *)self is_partial];
  *(a3 + 70) = 1;
  v56 = *(a3 + 8);
  v57 = *(a3 + 12);
  LODWORD(v53) = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v70);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v69);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v68);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v67);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v66);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 16, v65);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 18, v64);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 20, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 22, v62);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 24, v61);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 26, v41, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 28, v42, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 30, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 32, v52);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 34, v54);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 36, v55, 0);
  v58.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v56 - v57 + v53);
  if (v77.__begin_)
  {
    v77.__end_ = v77.__begin_;
    operator delete(v77.__begin_);
  }

  v59 = *MEMORY[0x277D85DE8];
  return v58;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTranslationRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__36__FTTranslationRequest_flatbuffData__block_invoke(uint64_t a1)
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