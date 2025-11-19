@interface QSSStartSpeechTranslationLoggingRequest
- (NSArray)senses;
- (NSArray)user_interacted_senses;
- (NSString)conversation_id;
- (NSString)request_id;
- (NSString)user_selected_locale;
- (NSString)user_selected_sense;
- (Offset<siri::speech::schema_fb::StartSpeechTranslationLoggingRequest>)addObjectToBuffer:(void *)a3;
- (QSSLanguageDetected)detected_locale;
- (QSSStartSpeechTranslationLoggingRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechTranslationLoggingRequest *)a4 verify:(BOOL)a5;
- (QSSTranslationLocalePair)translation_locale_pair;
- (id)flatbuffData;
@end

@implementation QSSStartSpeechTranslationLoggingRequest

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
  v2.var0 = [(QSSStartSpeechTranslationLoggingRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__55__QSSStartSpeechTranslationLoggingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StartSpeechTranslationLoggingRequest>)addObjectToBuffer:(void *)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = [(QSSStartSpeechTranslationLoggingRequest *)self conversation_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSStartSpeechTranslationLoggingRequest *)self request_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v54 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(QSSStartSpeechTranslationLoggingRequest *)self translation_locale_pair];
  v53 = [v13 addObjectToBuffer:a3];

  v14 = [(QSSStartSpeechTranslationLoggingRequest *)self detected_locale];
  v56 = [v14 addObjectToBuffer:a3];

  v15 = [(QSSStartSpeechTranslationLoggingRequest *)self user_selected_locale];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  memset(&v67, 0, sizeof(v67));
  v20 = [(QSSStartSpeechTranslationLoggingRequest *)self senses];
  v52 = v19;
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v67, [v20 count]);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v21 = [(QSSStartSpeechTranslationLoggingRequest *)self senses];
  v22 = [v21 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v22)
  {
    v23 = *v64;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = [*(*(&v63 + 1) + 8 * i) UTF8String];
        v26 = strlen(v25);
        LODWORD(v62.__begin_) = flatbuffers::FlatBufferBuilder::CreateString(a3, v25, v26);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v67, &v62);
      }

      v22 = [v21 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v22);
  }

  begin = v67.__begin_;
  if (v67.__end_ == v67.__begin_)
  {
    v28 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v28 = v67.__begin_;
  }

  v29 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v28, v67.__end_ - v67.__begin_);
  v30 = [(QSSStartSpeechTranslationLoggingRequest *)self user_selected_sense];
  v31 = v30;
  if (!v30)
  {
    v30 = &stru_2879AE8E0;
  }

  v32 = [(__CFString *)v30 UTF8String];
  v33 = strlen(v32);
  v34 = flatbuffers::FlatBufferBuilder::CreateString(a3, v32, v33);

  memset(&v62, 0, sizeof(v62));
  v35 = [(QSSStartSpeechTranslationLoggingRequest *)self user_interacted_senses];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v62, [v35 count]);

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v36 = [(QSSStartSpeechTranslationLoggingRequest *)self user_interacted_senses];
  v37 = [v36 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v37)
  {
    v38 = *v59;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = [*(*(&v58 + 1) + 8 * j) UTF8String];
        v41 = strlen(v40);
        v57 = flatbuffers::FlatBufferBuilder::CreateString(a3, v40, v41);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v62, &v57);
      }

      v37 = [v36 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v37);
  }

  v42 = v62.__begin_;
  if (v62.__end_ == v62.__begin_)
  {
    v43 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v43 = v62.__begin_;
  }

  v44 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v43, v62.__end_ - v62.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v45 = *(a3 + 8);
  v46 = *(a3 + 12);
  v47 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v54);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v53);
  if (v56)
  {
    v48 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v56);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v48);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v52);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v29);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 16, v34);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v44);
  v49.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v45 - v46 + v47);
  if (v42)
  {
    operator delete(v42);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

- (NSArray)user_interacted_senses
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_interacted_senses"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x13u)
    {
      v6 = *v5[18].var0;
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

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_interacted_senses"];
  }

  return v3;
}

- (NSString)user_selected_sense
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 16].var0;
  if (*root[-v3 + 16].var0)
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

- (NSArray)senses
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"senses"];
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

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"senses"];
  }

  return v3;
}

- (NSString)user_selected_locale
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

- (QSSLanguageDetected)detected_locale
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"detected_locale"];
  if (!v3)
  {
    v4 = [QSSLanguageDetected alloc];
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

    v3 = [(QSSLanguageDetected *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"detected_locale"];
  }

  return v3;
}

- (QSSTranslationLocalePair)translation_locale_pair
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pair"];
  if (!v3)
  {
    v4 = [QSSTranslationLocalePair alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 9u && (v7 = *v6[8].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSTranslationLocalePair *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_locale_pair"];
  }

  return v3;
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

- (QSSStartSpeechTranslationLoggingRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechTranslationLoggingRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSStartSpeechTranslationLoggingRequest;
  v10 = [(QSSStartSpeechTranslationLoggingRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::StartSpeechTranslationLoggingRequest::Verify(v19, &v24))
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