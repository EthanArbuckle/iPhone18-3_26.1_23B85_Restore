@interface QSSSiriTranslationInfo
- (NSArray)itn_alignments;
- (NSArray)post_itn_tokens;
- (NSArray)raw_nbest_choices;
- (NSArray)translation_phrase;
- (NSString)post_itn_recognition;
- (Offset<siri::speech::schema_fb::SiriTranslationInfo>)addObjectToBuffer:(void *)a3;
- (QSSRecognitionSausage)raw_sausage;
- (QSSSiriTranslationInfo)initWithFlatbuffData:(id)a3 root:(const SiriTranslationInfo *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSSiriTranslationInfo

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
  v2.var0 = [(QSSSiriTranslationInfo *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__38__QSSSiriTranslationInfo_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SiriTranslationInfo>)addObjectToBuffer:(void *)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = [(QSSSiriTranslationInfo *)self raw_sausage];
  v6 = [v5 addObjectToBuffer:a3];

  memset(&v73, 0, sizeof(v73));
  v7 = [(QSSSiriTranslationInfo *)self raw_nbest_choices];
  v52 = v6;
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v73, [v7 count]);

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v8 = [(QSSSiriTranslationInfo *)self raw_nbest_choices];
  v9 = [v8 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v9)
  {
    v10 = *v70;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(v8);
        }

        LODWORD(v68.__begin_) = [*(*(&v69 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v73, &v68);
      }

      v9 = [v8 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v9);
  }

  begin = v73.__begin_;
  if (v73.__end_ == v73.__begin_)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    v12 = v73.__begin_;
  }

  v51 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v12, v73.__end_ - v73.__begin_);
  memset(&v68, 0, sizeof(v68));
  v13 = [(QSSSiriTranslationInfo *)self post_itn_tokens];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v68, [v13 count]);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v14 = [(QSSSiriTranslationInfo *)self post_itn_tokens];
  v15 = [v14 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v15)
  {
    v16 = *v65;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v65 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v64 + 1) + 8 * j) UTF8String];
        v19 = strlen(v18);
        LODWORD(v63.__begin_) = flatbuffers::FlatBufferBuilder::CreateString(a3, v18, v19);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v68, &v63);
      }

      v15 = [v14 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v15);
  }

  __p = v68.__begin_;
  if (v68.__end_ == v68.__begin_)
  {
    v20 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v20 = v68.__begin_;
  }

  v49 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v20, v68.__end_ - v68.__begin_);
  v21 = [(QSSSiriTranslationInfo *)self post_itn_recognition];
  v22 = v21;
  if (!v21)
  {
    v21 = &stru_2879AE8E0;
  }

  v23 = [(__CFString *)v21 UTF8String];
  v24 = strlen(v23);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v23, v24);

  memset(&v63, 0, sizeof(v63));
  v26 = [(QSSSiriTranslationInfo *)self itn_alignments];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v63, [v26 count]);

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v27 = [(QSSSiriTranslationInfo *)self itn_alignments];
  v28 = [v27 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v28)
  {
    v29 = *v60;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(v27);
        }

        LODWORD(v58.__begin_) = [*(*(&v59 + 1) + 8 * k) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v63, &v58);
      }

      v28 = [v27 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v28);
  }

  v31 = v63.__begin_;
  if (v63.__end_ == v63.__begin_)
  {
    v32 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::ItnAlignment>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::ItnAlignment>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::ItnAlignment>> const&)::t;
  }

  else
  {
    v32 = v63.__begin_;
  }

  v33 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v32, v63.__end_ - v63.__begin_);
  memset(&v58, 0, sizeof(v58));
  v34 = [(QSSSiriTranslationInfo *)self translation_phrase];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v58, [v34 count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v35 = [(QSSSiriTranslationInfo *)self translation_phrase];
  v36 = [v35 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v36)
  {
    v37 = *v55;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v53 = [*(*(&v54 + 1) + 8 * m) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v58, &v53);
      }

      v36 = [v35 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v36);
  }

  v39 = v58.__begin_;
  if (v58.__end_ == v58.__begin_)
  {
    v40 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::Span>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::Span>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::Span>> const&)::t;
  }

  else
  {
    v40 = v58.__begin_;
  }

  v41 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v40, v58.__end_ - v58.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v42 = *(a3 + 8);
  v43 = *(a3 + 12);
  v44 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, v52);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v51);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v49);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v33);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v41);
  v45.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v42 - v43 + v44);
  if (v39)
  {
    operator delete(v39);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v46 = *MEMORY[0x277D85DE8];
  return v45;
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
            v11 = [[QSSSpan alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
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

- (NSArray)itn_alignments
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"itn_alignments"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xDu)
    {
      v6 = *v5[12].var0;
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
            v11 = [[QSSItnAlignment alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"itn_alignments"];
  }

  return v3;
}

- (NSString)post_itn_recognition
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

- (NSArray)post_itn_tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_tokens"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 9u)
    {
      v6 = *v5[8].var0;
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

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"post_itn_tokens"];
  }

  return v3;
}

- (NSArray)raw_nbest_choices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 7u)
    {
      v6 = *v5[6].var0;
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
            v11 = [[QSSRecognitionChoice alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"raw_nbest_choices"];
  }

  return v3;
}

- (QSSRecognitionSausage)raw_sausage
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_sausage"];
  if (!v3)
  {
    v4 = [QSSRecognitionSausage alloc];
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

    v3 = [(QSSRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"raw_sausage"];
  }

  return v3;
}

- (QSSSiriTranslationInfo)initWithFlatbuffData:(id)a3 root:(const SiriTranslationInfo *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSSiriTranslationInfo;
  v10 = [(QSSSiriTranslationInfo *)&v29 init];
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
        if (!siri::speech::schema_fb::SiriTranslationInfo::Verify(v19, &v24))
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