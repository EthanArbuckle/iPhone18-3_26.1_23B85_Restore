@interface QSSTokenProns
- (NSArray)normalized_prons;
- (NSArray)prons;
- (NSArray)sanitized_sequences;
- (NSString)orthography;
- (Offset<siri::speech::schema_fb::TokenProns>)addObjectToBuffer:(void *)a3;
- (QSSTokenProns)initWithFlatbuffData:(id)a3 root:(const TokenProns *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSTokenProns

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
  v2.var0 = [(QSSTokenProns *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__29__QSSTokenProns_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TokenProns>)addObjectToBuffer:(void *)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = [(QSSTokenProns *)self orthography];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSTokenProns *)self sanitized_sequences];
  v10 = [v9 count];
  if (v10)
  {
    if (!(v10 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v10);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(QSSTokenProns *)self sanitized_sequences];
  if ([obj countByEnumeratingWithState:&v48 objects:v54 count:16])
  {
    *v49;
    *v49;
    [**(&v48 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v11 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  memset(&v47, 0, sizeof(v47));
  v12 = [(QSSTokenProns *)self prons];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v47, [v12 count]);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = [(QSSTokenProns *)self prons];
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v14)
  {
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v13);
        }

        LODWORD(v42.__begin_) = [*(*(&v43 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v47, &v42);
      }

      v14 = [v13 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v14);
  }

  begin = v47.__begin_;
  if (v47.__end_ == v47.__begin_)
  {
    v18 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::PronChoice>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::PronChoice>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::PronChoice>> const&)::t;
  }

  else
  {
    v18 = v47.__begin_;
  }

  v19 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v18, v47.__end_ - v47.__begin_);
  memset(&v42, 0, sizeof(v42));
  v20 = [(QSSTokenProns *)self normalized_prons];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v42, [v20 count]);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = [(QSSTokenProns *)self normalized_prons];
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v22)
  {
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v37 = [*(*(&v38 + 1) + 8 * j) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v42, &v37);
      }

      v22 = [v21 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v22);
  }

  v25 = v42.__begin_;
  if (v42.__end_ == v42.__begin_)
  {
    v26 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::PronChoice>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::PronChoice>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::PronChoice>> const&)::t;
  }

  else
  {
    v26 = v42.__begin_;
  }

  v27 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v26, v42.__end_ - v42.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v28 = *(a3 + 8);
  v29 = *(a3 + 12);
  v30 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  if (v11)
  {
    v31 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v11);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v31);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v27);
  v32.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v28 - v29 + v30);
  if (v25)
  {
    operator delete(v25);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (NSArray)normalized_prons
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_prons"];
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
            v11 = [[QSSPronChoice alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"normalized_prons"];
  }

  return v3;
}

- (NSArray)prons
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prons"];
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
            v11 = [[QSSPronChoice alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prons"];
  }

  return v3;
}

- (NSArray)sanitized_sequences
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_sequences"];
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
            v11 = [[QSSTokenProns_SanitizedSequence alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"sanitized_sequences"];
  }

  return v3;
}

flatbuffers::DetachedBuffer *__47__QSSTokenProns_SanitizedSequence_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSString)orthography
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

- (QSSTokenProns)initWithFlatbuffData:(id)a3 root:(const TokenProns *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTokenProns;
  v10 = [(QSSTokenProns *)&v29 init];
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
        if (!siri::speech::schema_fb::TokenProns::Verify(v19, &v24))
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