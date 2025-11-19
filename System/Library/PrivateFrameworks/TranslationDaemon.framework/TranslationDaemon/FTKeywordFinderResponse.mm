@interface FTKeywordFinderResponse
- (FTKeywordFinderResponse)initWithFlatbuffData:(id)a3 root:(const KeywordFinderResponse *)a4 verify:(BOOL)a5;
- (FTRecognitionSausage)corrected_sausage;
- (NSArray)n_best_list;
- (NSString)language;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::KeywordFinderResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)n_best_list_objectAtIndex:(unint64_t)a3;
- (int)return_code;
- (unint64_t)n_best_list_count;
- (void)n_best_list_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTKeywordFinderResponse

- (FTKeywordFinderResponse)initWithFlatbuffData:(id)a3 root:(const KeywordFinderResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTKeywordFinderResponse;
  v10 = [(FTKeywordFinderResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::KeywordFinderResponse::Verify(v18, v21))
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

- (NSString)session_id
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

- (NSString)language
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

- (int)return_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)return_str
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

- (FTRecognitionSausage)corrected_sausage
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"corrected_sausage"];
  if (!v3)
  {
    v4 = [FTRecognitionSausage alloc];
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

    v3 = [(FTRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"corrected_sausage"];
  }

  return v3;
}

- (NSArray)n_best_list
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_list"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__FTKeywordFinderResponse_n_best_list__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTKeywordFinderResponse *)self n_best_list_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"n_best_list"];
  }

  return v3;
}

- (id)n_best_list_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_list"];
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
  if (*v10->var0 >= 0x11u)
  {
    v11 = *v10[16].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTRecognitionChoice alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)n_best_list_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_list"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0x11u && (v8 = *v7[16].var0) != 0)
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

- (void)n_best_list_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_list"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x11u)
    {
      v9 = *v8[16].var0;
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
            v15 = [[FTRecognitionChoice alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::KeywordFinderResponse>)addObjectToBuffer:(void *)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = [(FTKeywordFinderResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(FTKeywordFinderResponse *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_284834138;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v11, v12);

  v14 = [(FTKeywordFinderResponse *)self language];
  v15 = v14;
  if (!v14)
  {
    v14 = &stru_284834138;
  }

  v16 = [(__CFString *)v14 UTF8String];
  v17 = strlen(v16);
  v18 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v16, v17);

  v19 = [(FTKeywordFinderResponse *)self return_code];
  v20 = [(FTKeywordFinderResponse *)self return_str];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_284834138;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v22, v23);

  v25 = [(FTKeywordFinderResponse *)self corrected_sausage];
  v26 = [v25 addObjectToBuffer:a3];

  memset(&v46, 0, sizeof(v46));
  v27 = [(FTKeywordFinderResponse *)self n_best_list];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v46, [v27 count]);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = [(FTKeywordFinderResponse *)self n_best_list];
  v29 = [v28 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v29)
  {
    v30 = *v43;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v41 = [*(*(&v42 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v46.__begin_, &v41);
      }

      v29 = [v28 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v29);
  }

  if (v46.__end_ == v46.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    begin = v46.__begin_;
  }

  v33 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v46.__end_ - v46.__begin_);
  *(a3 + 70) = 1;
  v34 = *(a3 + 8);
  v35 = *(a3 + 12);
  v36 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v18);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v19, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v24);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v26);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 16, v33);
  v37.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v34 - v35 + v36);
  if (v46.__begin_)
  {
    v46.__end_ = v46.__begin_;
    operator delete(v46.__begin_);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v37;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTKeywordFinderResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__39__FTKeywordFinderResponse_flatbuffData__block_invoke(uint64_t a1)
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