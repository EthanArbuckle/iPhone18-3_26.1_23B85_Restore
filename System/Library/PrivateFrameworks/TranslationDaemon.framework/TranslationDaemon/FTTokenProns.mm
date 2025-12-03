@interface FTTokenProns
- (FTTokenProns)initWithFlatbuffData:(id)data root:(const TokenProns *)root verify:(BOOL)verify;
- (NSArray)normalized_prons;
- (NSArray)prons;
- (NSArray)sanitized_sequences;
- (NSString)orthography;
- (Offset<siri::speech::schema_fb::TokenProns>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)normalized_prons_objectAtIndex:(unint64_t)index;
- (id)prons_objectAtIndex:(unint64_t)index;
- (id)sanitized_sequences_objectAtIndex:(unint64_t)index;
- (unint64_t)normalized_prons_count;
- (unint64_t)prons_count;
- (unint64_t)sanitized_sequences_count;
- (void)normalized_prons_enumerateObjectsUsingBlock:(id)block;
- (void)prons_enumerateObjectsUsingBlock:(id)block;
- (void)sanitized_sequences_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTokenProns

- (FTTokenProns)initWithFlatbuffData:(id)data root:(const TokenProns *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTokenProns;
  v10 = [(FTTokenProns *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (!verifyCopy)
  {
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::TokenProns::Verify(v18, v21))
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

- (NSArray)sanitized_sequences
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_sequences"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__FTTokenProns_sanitized_sequences__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTokenProns *)self sanitized_sequences_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"sanitized_sequences"];
  }

  return v3;
}

- (id)sanitized_sequences_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_sequences"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTTokenProns_SanitizedSequence alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)sanitized_sequences_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_sequences"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 7u && (v8 = *v7[6].var0) != 0)
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

- (void)sanitized_sequences_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_sequences"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 7u)
    {
      v9 = *v8[6].var0;
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
            v15 = [[FTTokenProns_SanitizedSequence alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
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

- (NSArray)prons
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prons"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __21__FTTokenProns_prons__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTokenProns *)self prons_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prons"];
  }

  return v3;
}

- (id)prons_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prons"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
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
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTPronChoice alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)prons_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prons"];
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

- (void)prons_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prons"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
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
            v15 = [[FTPronChoice alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
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

- (NSArray)normalized_prons
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_prons"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__FTTokenProns_normalized_prons__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTokenProns *)self normalized_prons_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"normalized_prons"];
  }

  return v3;
}

- (id)normalized_prons_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_prons"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
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
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTPronChoice alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)normalized_prons_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_prons"];
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

- (void)normalized_prons_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_prons"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
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
            v15 = [[FTPronChoice alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
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

- (Offset<siri::speech::schema_fb::TokenProns>)addObjectToBuffer:(void *)buffer
{
  v68 = *MEMORY[0x277D85DE8];
  orthography = [(FTTokenProns *)self orthography];
  v6 = orthography;
  if (!orthography)
  {
    orthography = &stru_284834138;
  }

  uTF8String = [(__CFString *)orthography UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  memset(&v64, 0, sizeof(v64));
  sanitized_sequences = [(FTTokenProns *)self sanitized_sequences];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v64, [sanitized_sequences count]);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  sanitized_sequences2 = [(FTTokenProns *)self sanitized_sequences];
  selfCopy = self;
  v11 = [sanitized_sequences2 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v11)
  {
    v12 = *v61;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(sanitized_sequences2);
        }

        v14 = [*(*(&v60 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v64.__end_;
        if (v64.__end_ >= v64.__end_cap_.__value_)
        {
          begin = v64.__begin_;
          v18 = v64.__end_ - v64.__begin_;
          v19 = v64.__end_ - v64.__begin_;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v21 = v64.__end_cap_.__value_ - v64.__begin_;
          if ((v64.__end_cap_.__value_ - v64.__begin_) >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v64, v23);
          }

          *(4 * v19) = v14;
          v16 = (4 * v19 + 4);
          memcpy(0, begin, v18);
          v24 = v64.__begin_;
          v64.__begin_ = 0;
          v64.__end_ = v16;
          v64.__end_cap_.__value_ = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v64.__end_ = v14;
          v16 = end + 1;
        }

        v64.__end_ = v16;
      }

      v11 = [sanitized_sequences2 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v11);
  }

  if (v64.__end_ == v64.__begin_)
  {
    v25 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns_::SanitizedSequence>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns_::SanitizedSequence>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns_::SanitizedSequence>> const&)::t;
  }

  else
  {
    v25 = v64.__begin_;
  }

  v26 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v25, v64.__end_ - v64.__begin_);
  memset(&v59, 0, sizeof(v59));
  prons = [(FTTokenProns *)selfCopy prons];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v59, [prons count]);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  prons2 = [(FTTokenProns *)selfCopy prons];
  v29 = [prons2 countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v29)
  {
    v30 = *v56;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v56 != v30)
        {
          objc_enumerationMutation(prons2);
        }

        LODWORD(v54.__begin_) = [*(*(&v55 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v59.__begin_, &v54);
      }

      v29 = [prons2 countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v29);
  }

  if (v59.__end_ == v59.__begin_)
  {
    v32 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PronChoice>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PronChoice>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PronChoice>> const&)::t;
  }

  else
  {
    v32 = v59.__begin_;
  }

  v33 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v32, v59.__end_ - v59.__begin_);
  memset(&v54, 0, sizeof(v54));
  normalized_prons = [(FTTokenProns *)selfCopy normalized_prons];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v54, [normalized_prons count]);

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  normalized_prons2 = [(FTTokenProns *)selfCopy normalized_prons];
  v36 = [normalized_prons2 countByEnumeratingWithState:&v50 objects:v65 count:16];
  if (v36)
  {
    v37 = *v51;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(normalized_prons2);
        }

        v49 = [*(*(&v50 + 1) + 8 * k) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v54.__begin_, &v49);
      }

      v36 = [normalized_prons2 countByEnumeratingWithState:&v50 objects:v65 count:16];
    }

    while (v36);
  }

  if (v54.__end_ == v54.__begin_)
  {
    v39 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PronChoice>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PronChoice>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PronChoice>> const&)::t;
  }

  else
  {
    v39 = v54.__begin_;
  }

  v40 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v39, v54.__end_ - v54.__begin_);
  *(buffer + 70) = 1;
  v41 = *(buffer + 8);
  v42 = *(buffer + 12);
  v43 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v26);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v33);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v40);
  v44.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v41 - v42 + v43);
  if (v54.__begin_)
  {
    v54.__end_ = v54.__begin_;
    operator delete(v54.__begin_);
  }

  if (v59.__begin_)
  {
    v59.__end_ = v59.__begin_;
    operator delete(v59.__begin_);
  }

  if (v64.__begin_)
  {
    v64.__end_ = v64.__begin_;
    operator delete(v64.__begin_);
  }

  v45 = *MEMORY[0x277D85DE8];
  return v44;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTokenProns *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__28__FTTokenProns_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__46__FTTokenProns_SanitizedSequence_flatbuffData__block_invoke(uint64_t a1)
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