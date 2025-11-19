@interface FTTranslationSupportedLanguagesResponse
- (FTTranslationSupportedLanguagesResponse)initWithFlatbuffData:(id)a3 root:(const TranslationSupportedLanguagesResponse *)a4 verify:(BOOL)a5;
- (NSArray)language_pairs;
- (NSString)request_id;
- (NSString)return_string;
- (Offset<siri::speech::schema_fb::TranslationSupportedLanguagesResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)language_pairs_objectAtIndex:(unint64_t)a3;
- (int)return_code;
- (unint64_t)language_pairs_count;
- (void)language_pairs_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTTranslationSupportedLanguagesResponse

- (FTTranslationSupportedLanguagesResponse)initWithFlatbuffData:(id)a3 root:(const TranslationSupportedLanguagesResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTranslationSupportedLanguagesResponse;
  v10 = [(FTTranslationSupportedLanguagesResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::TranslationSupportedLanguagesResponse::Verify(v18, v21))
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

- (NSString)request_id
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

- (int)return_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)return_string
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

- (NSArray)language_pairs
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_pairs"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__FTTranslationSupportedLanguagesResponse_language_pairs__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTranslationSupportedLanguagesResponse *)self language_pairs_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"language_pairs"];
  }

  return v3;
}

- (id)language_pairs_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_pairs"];
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
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTTranslationSupportedLanguagesResponse_LanguagePair alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)language_pairs_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_pairs"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xBu && (v8 = *v7[10].var0) != 0)
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

- (void)language_pairs_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_pairs"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xBu)
    {
      v9 = *v8[10].var0;
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
            v15 = [[FTTranslationSupportedLanguagesResponse_LanguagePair alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::TranslationSupportedLanguagesResponse>)addObjectToBuffer:(void *)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = [(FTTranslationSupportedLanguagesResponse *)self request_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(FTTranslationSupportedLanguagesResponse *)self return_code];
  v11 = [(FTTranslationSupportedLanguagesResponse *)self return_string];
  v12 = v11;
  if (!v11)
  {
    v11 = &stru_284834138;
  }

  v13 = [(__CFString *)v11 UTF8String];
  v14 = strlen(v13);
  LODWORD(v13) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v13, v14);

  memset(&v45, 0, sizeof(v45));
  v15 = [(FTTranslationSupportedLanguagesResponse *)self language_pairs];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v45, [v15 count]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = [(FTTranslationSupportedLanguagesResponse *)self language_pairs];
  v38 = v13;
  v39 = String;
  v40 = v10;
  v17 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v17)
  {
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [*(*(&v41 + 1) + 8 * i) addObjectToBuffer:a3];
        end = v45.__end_;
        if (v45.__end_ >= v45.__end_cap_.__value_)
        {
          begin = v45.__begin_;
          v24 = v45.__end_ - v45.__begin_;
          v25 = v45.__end_ - v45.__begin_;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v27 = v45.__end_cap_.__value_ - v45.__begin_;
          if ((v45.__end_cap_.__value_ - v45.__begin_) >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v45, v28);
          }

          *(4 * v25) = v20;
          v22 = (4 * v25 + 4);
          memcpy(0, begin, v24);
          v29 = v45.__begin_;
          v45.__begin_ = 0;
          v45.__end_ = v22;
          v45.__end_cap_.__value_ = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v45.__end_ = v20;
          v22 = end + 1;
        }

        v45.__end_ = v22;
      }

      v17 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v17);
  }

  if (v45.__end_ == v45.__begin_)
  {
    v30 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationSupportedLanguagesResponse_::LanguagePair>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationSupportedLanguagesResponse_::LanguagePair>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationSupportedLanguagesResponse_::LanguagePair>> const&)::t;
  }

  else
  {
    v30 = v45.__begin_;
  }

  v31 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v30, v45.__end_ - v45.__begin_);
  *(a3 + 70) = 1;
  v32 = *(a3 + 8);
  v33 = *(a3 + 12);
  v34 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v39);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v40, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v31);
  v35.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v32 - v33 + v34);
  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTranslationSupportedLanguagesResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__55__FTTranslationSupportedLanguagesResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__68__FTTranslationSupportedLanguagesResponse_LanguagePair_flatbuffData__block_invoke(uint64_t a1)
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