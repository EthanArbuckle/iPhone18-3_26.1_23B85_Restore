@interface QSSRecognitionResult
- (NSArray)choice_alignments;
- (NSArray)post_itn_nbest_choices;
- (NSArray)pre_itn_nbest_choices;
- (NSArray)pre_itn_token_to_post_itn_char_alignment;
- (Offset<siri::speech::schema_fb::RecognitionResult>)addObjectToBuffer:(void *)a3;
- (QSSRecognitionResult)initWithFlatbuffData:(id)a3 root:(const RecognitionResult *)a4 verify:(BOOL)a5;
- (QSSRecognitionSausage)post_itn;
- (QSSRecognitionSausage)pre_itn;
- (id)flatbuffData;
@end

@implementation QSSRecognitionResult

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
  v2.var0 = [(QSSRecognitionResult *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__36__QSSRecognitionResult_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::RecognitionResult>)addObjectToBuffer:(void *)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = [(QSSRecognitionResult *)self pre_itn];
  v41 = [v5 addObjectToBuffer:a3];

  v6 = [(QSSRecognitionResult *)self post_itn];
  v7 = [v6 addObjectToBuffer:a3];

  memset(&v62, 0, sizeof(v62));
  v8 = [(QSSRecognitionResult *)self pre_itn_nbest_choices];
  v40 = v7;
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v62, [v8 count]);

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = [(QSSRecognitionResult *)self pre_itn_nbest_choices];
  v10 = [v9 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v10)
  {
    v11 = *v59;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v9);
        }

        LODWORD(v57.__begin_) = [*(*(&v58 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v62, &v57);
      }

      v10 = [v9 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v10);
  }

  if (v62.__end_ == v62.__begin_)
  {
    begin = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    begin = v62.__begin_;
  }

  v39 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, begin, v62.__end_ - v62.__begin_);
  memset(&v57, 0, sizeof(v57));
  v14 = [(QSSRecognitionResult *)self post_itn_nbest_choices];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v57, [v14 count]);

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = [(QSSRecognitionResult *)self post_itn_nbest_choices];
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v16)
  {
    v17 = *v54;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(v15);
        }

        LODWORD(v52.__begin_) = [*(*(&v53 + 1) + 8 * j) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v57, &v52);
      }

      v16 = [v15 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v16);
  }

  if (v57.__end_ == v57.__begin_)
  {
    v19 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    v19 = v57.__begin_;
  }

  v20 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v19, v57.__end_ - v57.__begin_);
  memset(&v52, 0, sizeof(v52));
  v21 = [(QSSRecognitionResult *)self pre_itn_token_to_post_itn_char_alignment];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v52, [v21 count]);

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = [(QSSRecognitionResult *)self pre_itn_token_to_post_itn_char_alignment];
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v23)
  {
    v24 = *v49;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v47 = [*(*(&v48 + 1) + 8 * k) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v52, &v47);
      }

      v23 = [v22 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v23);
  }

  if (v52.__end_ == v52.__begin_)
  {
    v26 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::ItnAlignment>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::ItnAlignment>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::ItnAlignment>> const&)::t;
  }

  else
  {
    v26 = v52.__begin_;
  }

  v27 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v26, v52.__end_ - v52.__begin_);
  v28 = [(QSSRecognitionResult *)self choice_alignments];
  v29 = [v28 count];
  v38 = v27;
  if (v29)
  {
    if (!(v29 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v29);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(QSSRecognitionResult *)self choice_alignments];
  if ([obj countByEnumeratingWithState:&v43 objects:v63 count:16])
  {
    *v44;
    *v44;
    [**(&v43 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v30 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v31 = *(a3 + 8);
  v32 = *(a3 + 12);
  v33 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v39);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v20);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v38);
  if (v30)
  {
    v34 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v30);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v34);
  }

  v35.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v31 - v32 + v33);
  if (v52.__begin_)
  {
    operator delete(v52.__begin_);
  }

  if (v57.__begin_)
  {
    operator delete(v57.__begin_);
  }

  if (v62.__begin_)
  {
    operator delete(v62.__begin_);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (NSArray)choice_alignments
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"choice_alignments"];
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
            v11 = [[QSSChoiceAlignment alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"choice_alignments"];
  }

  return v3;
}

- (NSArray)pre_itn_token_to_post_itn_char_alignment
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignment"];
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

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignment"];
  }

  return v3;
}

- (NSArray)post_itn_nbest_choices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_nbest_choices"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xBu)
    {
      v6 = *v5[10].var0;
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

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"post_itn_nbest_choices"];
  }

  return v3;
}

- (NSArray)pre_itn_nbest_choices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_nbest_choices"];
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
            v11 = [[QSSRecognitionChoice alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pre_itn_nbest_choices"];
  }

  return v3;
}

- (QSSRecognitionSausage)post_itn
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn"];
  if (!v3)
  {
    v4 = [QSSRecognitionSausage alloc];
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

    v3 = [(QSSRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"post_itn"];
  }

  return v3;
}

- (QSSRecognitionSausage)pre_itn
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn"];
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
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pre_itn"];
  }

  return v3;
}

- (QSSRecognitionResult)initWithFlatbuffData:(id)a3 root:(const RecognitionResult *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSRecognitionResult;
  v10 = [(QSSRecognitionResult *)&v29 init];
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
        if (!siri::speech::schema_fb::RecognitionResult::Verify(v19, &v24))
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