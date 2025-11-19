@interface QSSTranslationRequest
- (BOOL)disable_log;
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
- (QSSSiriPayloadTranslationInfo)siri_payload_translation_info;
- (QSSSiriTranslationInfo)siri_translation_info;
- (QSSSpeechTranslationInfo)speech_translation_info;
- (QSSTranslationRequest)initWithFlatbuffData:(id)a3 root:(const TranslationRequest *)a4 verify:(BOOL)a5;
- (QSSWebTranslationInfo)web_translation_info;
- (id)flatbuffData;
- (int64_t)opt_in_status;
@end

@implementation QSSTranslationRequest

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
  v2.var0 = [(QSSTranslationRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__37__QSSTranslationRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TranslationRequest>)addObjectToBuffer:(void *)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = [(QSSTranslationRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSTranslationRequest *)self request_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v72 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(QSSTranslationRequest *)self task];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_2879AE8E0;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v71 = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);

  v17 = [(QSSTranslationRequest *)self source_language];
  v18 = v17;
  if (!v17)
  {
    v17 = &stru_2879AE8E0;
  }

  v19 = [(__CFString *)v17 UTF8String];
  v20 = strlen(v19);
  v70 = flatbuffers::FlatBufferBuilder::CreateString(a3, v19, v20);

  v21 = [(QSSTranslationRequest *)self target_language];
  v22 = v21;
  if (!v21)
  {
    v21 = &stru_2879AE8E0;
  }

  v23 = [(__CFString *)v21 UTF8String];
  v24 = strlen(v23);
  v69 = flatbuffers::FlatBufferBuilder::CreateString(a3, v23, v24);

  memset(&v80, 0, sizeof(v80));
  v25 = [(QSSTranslationRequest *)self translation_phrase];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v80, [v25 count]);

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v26 = [(QSSTranslationRequest *)self translation_phrase];
  v27 = [v26 countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v27)
  {
    v28 = *v77;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v77 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [*(*(&v76 + 1) + 8 * i) UTF8String];
        v31 = strlen(v30);
        v75 = flatbuffers::FlatBufferBuilder::CreateString(a3, v30, v31);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v80, &v75);
      }

      v27 = [v26 countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v27);
  }

  begin = v80.__begin_;
  if (v80.__end_ == v80.__begin_)
  {
    v33 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v33 = v80.__begin_;
  }

  v68 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v33, v80.__end_ - v80.__begin_);
  v34 = [(QSSTranslationRequest *)self siri_translation_info];
  v74 = [v34 addObjectToBuffer:a3];

  v35 = [(QSSTranslationRequest *)self speech_translation_info];
  v36 = [v35 addObjectToBuffer:a3];

  v37 = [(QSSTranslationRequest *)self siri_payload_translation_info];
  v38 = [v37 addObjectToBuffer:a3];

  v39 = [(QSSTranslationRequest *)self sequence_id];
  v40 = v39;
  if (!v39)
  {
    v39 = &stru_2879AE8E0;
  }

  v41 = [(__CFString *)v39 UTF8String];
  v42 = strlen(v41);
  v67 = flatbuffers::FlatBufferBuilder::CreateString(a3, v41, v42);

  v43 = [(QSSTranslationRequest *)self web_translation_info];
  v44 = [v43 addObjectToBuffer:a3];

  v66 = [(QSSTranslationRequest *)self disable_log];
  v65 = [(QSSTranslationRequest *)self opt_in_status];
  v45 = [(QSSTranslationRequest *)self app_id];
  v46 = v45;
  if (!v45)
  {
    v45 = &stru_2879AE8E0;
  }

  v47 = [(__CFString *)v45 UTF8String];
  v48 = strlen(v47);
  v49 = flatbuffers::FlatBufferBuilder::CreateString(a3, v47, v48);

  v50 = [(QSSTranslationRequest *)self use_case];
  v51 = v50;
  if (!v50)
  {
    v50 = &stru_2879AE8E0;
  }

  v52 = [(__CFString *)v50 UTF8String];
  v53 = strlen(v52);
  v54 = flatbuffers::FlatBufferBuilder::CreateString(a3, v52, v53);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v55 = *(a3 + 8);
  v56 = *(a3 + 12);
  v57 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v72);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v71);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v70);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v69);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v68);
  if (v74)
  {
    v58 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v74);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 16, v58);
  }

  if (v36)
  {
    v59 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v36);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 18, v59);
  }

  if (v38)
  {
    v60 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v38);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 20, v60);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 22, v67);
  if (v44)
  {
    v61 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v44);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 24, v61);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 26, v66);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 28, v65);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 30, v49);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 32, v54);
  v62.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v55 - v56 + v57);
  if (begin)
  {
    operator delete(begin);
  }

  v63 = *MEMORY[0x277D85DE8];
  return v62;
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

- (BOOL)disable_log
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x1Bu && (v4 = *v3[26].var0) != 0 && root[v4].var0[0] != 0;
}

- (QSSWebTranslationInfo)web_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"web_translation_info"];
  if (!v3)
  {
    v4 = [QSSWebTranslationInfo alloc];
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

    v3 = [(QSSWebTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"web_translation_info"];
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

- (QSSSiriPayloadTranslationInfo)siri_payload_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"siri_payload_translation_info"];
  if (!v3)
  {
    v4 = [QSSSiriPayloadTranslationInfo alloc];
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

    v3 = [(QSSSiriPayloadTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"siri_payload_translation_info"];
  }

  return v3;
}

- (QSSSpeechTranslationInfo)speech_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"speech_translation_info"];
  if (!v3)
  {
    v4 = [QSSSpeechTranslationInfo alloc];
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

    v3 = [(QSSSpeechTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"speech_translation_info"];
  }

  return v3;
}

- (QSSSiriTranslationInfo)siri_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"siri_translation_info"];
  if (!v3)
  {
    v4 = [QSSSiriTranslationInfo alloc];
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

    v3 = [(QSSSiriTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"siri_translation_info"];
  }

  return v3;
}

- (NSArray)translation_phrase
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xFu)
    {
      v6 = *v5[14].var0;
      if (v6)
      {
        v7 = *root[v6].var0;
        v8 = *root[v6 + v7].var0;
        if (v8)
        {
          v9 = 4 * v8;
          v10 = &root[v7 + 4 + v6];
          do
          {
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v10[*v10->var0 + 4] length:*v10[*v10->var0].var0 encoding:4];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_phrase"];
  }

  return v3;
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

- (QSSTranslationRequest)initWithFlatbuffData:(id)a3 root:(const TranslationRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTranslationRequest;
  v10 = [(QSSTranslationRequest *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
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
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
      v25 = v18;
      v26 = xmmword_26914CD70;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::TranslationRequest::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end