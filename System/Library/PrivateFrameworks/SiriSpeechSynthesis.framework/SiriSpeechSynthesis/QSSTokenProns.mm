@interface QSSTokenProns
- (NSArray)normalized_prons;
- (NSArray)prons;
- (NSArray)sanitized_sequences;
- (NSString)orthography;
- (Offset<siri::speech::schema_fb::TokenProns>)addObjectToBuffer:(void *)buffer;
- (QSSTokenProns)initWithFlatbuffData:(id)data root:(const TokenProns *)root verify:(BOOL)verify;
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

- (Offset<siri::speech::schema_fb::TokenProns>)addObjectToBuffer:(void *)buffer
{
  v55 = *MEMORY[0x277D85DE8];
  orthography = [(QSSTokenProns *)self orthography];
  v6 = orthography;
  if (!orthography)
  {
    orthography = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)orthography UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  sanitized_sequences = [(QSSTokenProns *)self sanitized_sequences];
  v10 = [sanitized_sequences count];
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
    [**(&v48 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v11 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  memset(&v47, 0, sizeof(v47));
  prons = [(QSSTokenProns *)self prons];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v47, [prons count]);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  prons2 = [(QSSTokenProns *)self prons];
  v14 = [prons2 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v14)
  {
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(prons2);
        }

        LODWORD(v42.__begin_) = [*(*(&v43 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v47, &v42);
      }

      v14 = [prons2 countByEnumeratingWithState:&v43 objects:v53 count:16];
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

  v19 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v18, v47.__end_ - v47.__begin_);
  memset(&v42, 0, sizeof(v42));
  normalized_prons = [(QSSTokenProns *)self normalized_prons];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v42, [normalized_prons count]);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  normalized_prons2 = [(QSSTokenProns *)self normalized_prons];
  v22 = [normalized_prons2 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v22)
  {
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(normalized_prons2);
        }

        v37 = [*(*(&v38 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v42, &v37);
      }

      v22 = [normalized_prons2 countByEnumeratingWithState:&v38 objects:v52 count:16];
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

  v27 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v26, v42.__end_ - v42.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v28 = *(buffer + 8);
  v29 = *(buffer + 12);
  v30 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  if (v11)
  {
    v31 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v11);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v31);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v27);
  v32.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v28 - v29 + v30);
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
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_prons"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
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
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"normalized_prons"];
  }

  return array;
}

- (NSArray)prons
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prons"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
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
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"prons"];
  }

  return array;
}

- (NSArray)sanitized_sequences
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_sequences"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
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
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"sanitized_sequences"];
  }

  return array;
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

- (QSSTokenProns)initWithFlatbuffData:(id)data root:(const TokenProns *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTokenProns;
  v10 = [(QSSTokenProns *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end