@interface FTLmScorerResponse
- (FTLmScorerResponse)initWithFlatbuffData:(id)data root:(const LmScorerResponse *)root verify:(BOOL)verify;
- (NSArray)tokens;
- (NSString)return_str;
- (Offset<siri::speech::schema_fb::LmScorerResponse>)addObjectToBuffer:(void *)buffer;
- (double)ppl;
- (id)flatbuffData;
- (id)tokens_objectAtIndex:(unint64_t)index;
- (int)return_code;
- (unint64_t)tokens_count;
- (void)tokens_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTLmScorerResponse

- (FTLmScorerResponse)initWithFlatbuffData:(id)data root:(const LmScorerResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTLmScorerResponse;
  v10 = [(FTLmScorerResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::LmScorerResponse::Verify(v18, v21))
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

- (int)return_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
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

- (NSArray)tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tokens"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __28__FTLmScorerResponse_tokens__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTLmScorerResponse *)self tokens_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"tokens"];
  }

  return v3;
}

- (id)tokens_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tokens"];
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
      v7 = [[FTLmScorerToken alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)tokens_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tokens"];
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

- (void)tokens_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tokens"];
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
            v15 = [[FTLmScorerToken alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (double)ppl
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xBu)
  {
    v5 = *v3[10].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (Offset<siri::speech::schema_fb::LmScorerResponse>)addObjectToBuffer:(void *)buffer
{
  v44 = *MEMORY[0x277D85DE8];
  return_code = [(FTLmScorerResponse *)self return_code];
  return_str = [(FTLmScorerResponse *)self return_str];
  v7 = return_str;
  if (!return_str)
  {
    return_str = &stru_284834138;
  }

  uTF8String = [(__CFString *)return_str UTF8String];
  v9 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  memset(&v42, 0, sizeof(v42));
  tokens = [(FTLmScorerResponse *)self tokens];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v42, [tokens count]);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  tokens2 = [(FTLmScorerResponse *)self tokens];
  v35 = uTF8String;
  selfCopy = self;
  v37 = return_code;
  v12 = [tokens2 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(tokens2);
        }

        v15 = [*(*(&v38 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v42.__end_;
        if (v42.__end_ >= v42.__end_cap_.__value_)
        {
          begin = v42.__begin_;
          v19 = v42.__end_ - v42.__begin_;
          v20 = v42.__end_ - v42.__begin_;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v22 = v42.__end_cap_.__value_ - v42.__begin_;
          if ((v42.__end_cap_.__value_ - v42.__begin_) >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v42, v23);
          }

          *(4 * v20) = v15;
          v17 = (4 * v20 + 4);
          memcpy(0, begin, v19);
          v24 = v42.__begin_;
          v42.__begin_ = 0;
          v42.__end_ = v17;
          v42.__end_cap_.__value_ = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v42.__end_ = v15;
          v17 = end + 1;
        }

        v42.__end_ = v17;
      }

      v12 = [tokens2 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v12);
  }

  if (v42.__end_ == v42.__begin_)
  {
    v25 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LmScorerToken>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LmScorerToken>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LmScorerToken>> const&)::t;
  }

  else
  {
    v25 = v42.__begin_;
  }

  v26 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v25, v42.__end_ - v42.__begin_);
  [(FTLmScorerResponse *)selfCopy ppl];
  v28 = v27;
  *(buffer + 70) = 1;
  v29 = *(buffer + 8);
  v30 = *(buffer + 12);
  v31 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v37, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v35);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v26);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(buffer, 10, v28, 0.0);
  v32.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v29 - v30 + v31);
  if (v42.__begin_)
  {
    v42.__end_ = v42.__begin_;
    operator delete(v42.__begin_);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTLmScorerResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__34__FTLmScorerResponse_flatbuffData__block_invoke(uint64_t a1)
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