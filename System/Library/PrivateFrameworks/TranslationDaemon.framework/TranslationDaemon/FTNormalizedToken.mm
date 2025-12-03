@interface FTNormalizedToken
- (FTNormalizedToken)initWithFlatbuffData:(id)data root:(const NormalizedToken *)root verify:(BOOL)verify;
- (NSArray)nbest_variants;
- (NSString)original_token;
- (Offset<siri::speech::schema_fb::NormalizedToken>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)nbest_variants_objectAtIndex:(unint64_t)index;
- (unint64_t)nbest_variants_count;
- (void)nbest_variants_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTNormalizedToken

- (FTNormalizedToken)initWithFlatbuffData:(id)data root:(const NormalizedToken *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTNormalizedToken;
  v10 = [(FTNormalizedToken *)&v25 init];
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

  if (!siri::speech::schema_fb::NormalizedToken::Verify(v18, v21))
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

- (NSString)original_token
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

- (NSArray)nbest_variants
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"nbest_variants"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__FTNormalizedToken_nbest_variants__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTNormalizedToken *)self nbest_variants_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"nbest_variants"];
  }

  return v3;
}

- (id)nbest_variants_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"nbest_variants"];
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
      v7 = [[FTNormalizedTokenVariant alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)nbest_variants_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"nbest_variants"];
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

- (void)nbest_variants_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"nbest_variants"];
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
            v15 = [[FTNormalizedTokenVariant alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::NormalizedToken>)addObjectToBuffer:(void *)buffer
{
  v39 = *MEMORY[0x277D85DE8];
  original_token = [(FTNormalizedToken *)self original_token];
  v6 = original_token;
  if (!original_token)
  {
    original_token = &stru_284834138;
  }

  uTF8String = [(__CFString *)original_token UTF8String];
  v8 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  memset(&v37, 0, sizeof(v37));
  nbest_variants = [(FTNormalizedToken *)self nbest_variants];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v37, [nbest_variants count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  nbest_variants2 = [(FTNormalizedToken *)self nbest_variants];
  v32 = uTF8String;
  v11 = [nbest_variants2 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(nbest_variants2);
        }

        v14 = [*(*(&v33 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v37.__end_;
        if (v37.__end_ >= v37.__end_cap_.__value_)
        {
          begin = v37.__begin_;
          v18 = v37.__end_ - v37.__begin_;
          v19 = v37.__end_ - v37.__begin_;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v21 = v37.__end_cap_.__value_ - v37.__begin_;
          if ((v37.__end_cap_.__value_ - v37.__begin_) >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v37, v22);
          }

          *(4 * v19) = v14;
          v16 = (4 * v19 + 4);
          memcpy(0, begin, v18);
          v23 = v37.__begin_;
          v37.__begin_ = 0;
          v37.__end_ = v16;
          v37.__end_cap_.__value_ = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v37.__end_ = v14;
          v16 = end + 1;
        }

        v37.__end_ = v16;
      }

      v11 = [nbest_variants2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  if (v37.__end_ == v37.__begin_)
  {
    v24 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::NormalizedTokenVariant>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::NormalizedTokenVariant>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::NormalizedTokenVariant>> const&)::t;
  }

  else
  {
    v24 = v37.__begin_;
  }

  v25 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v24, v37.__end_ - v37.__begin_);
  *(buffer + 70) = 1;
  v26 = *(buffer + 8);
  v27 = *(buffer + 12);
  v28 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v32);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v25);
  v29.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v26 - v27 + v28);
  if (v37.__begin_)
  {
    v37.__end_ = v37.__begin_;
    operator delete(v37.__begin_);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTNormalizedToken *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__33__FTNormalizedToken_flatbuffData__block_invoke(uint64_t a1)
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