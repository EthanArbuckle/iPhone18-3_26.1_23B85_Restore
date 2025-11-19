@interface FTTokenProns_SanitizedSequence
- (FTTokenProns_SanitizedSequence)initWithFlatbuffData:(id)a3 root:(const SanitizedSequence *)a4 verify:(BOOL)a5;
- (NSArray)sanitized_tokens;
- (Offset<siri::speech::schema_fb::TokenProns_::SanitizedSequence>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)sanitized_tokens_objectAtIndex:(unint64_t)a3;
- (unint64_t)sanitized_tokens_count;
- (void)sanitized_tokens_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTTokenProns_SanitizedSequence

- (FTTokenProns_SanitizedSequence)initWithFlatbuffData:(id)a3 root:(const SanitizedSequence *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTokenProns_SanitizedSequence;
  v10 = [(FTTokenProns_SanitizedSequence *)&v25 init];
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

  if (!siri::speech::schema_fb::TokenProns_::SanitizedSequence::Verify(v18, v21))
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

- (NSArray)sanitized_tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_tokens"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__FTTokenProns_SanitizedSequence_sanitized_tokens__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTokenProns_SanitizedSequence *)self sanitized_tokens_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"sanitized_tokens"];
  }

  return v3;
}

- (id)sanitized_tokens_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_tokens"];
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
  if (*v10->var0 >= 5u)
  {
    v11 = *v10[4].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTSanitizedPronToken alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)sanitized_tokens_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_tokens"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 5u && (v8 = *v7[4].var0) != 0)
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

- (void)sanitized_tokens_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"sanitized_tokens"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 5u)
    {
      v9 = *v8[4].var0;
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
            v15 = [[FTSanitizedPronToken alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::TokenProns_::SanitizedSequence>)addObjectToBuffer:(void *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  memset(&v32, 0, sizeof(v32));
  v5 = [(FTTokenProns_SanitizedSequence *)self sanitized_tokens];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v32, [v5 count]);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(FTTokenProns_SanitizedSequence *)self sanitized_tokens];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v28 + 1) + 8 * i) addObjectToBuffer:a3];
        end = v32.__end_;
        if (v32.__end_ >= v32.__end_cap_.__value_)
        {
          begin = v32.__begin_;
          v14 = v32.__end_ - v32.__begin_;
          v15 = v32.__end_ - v32.__begin_;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v17 = v32.__end_cap_.__value_ - v32.__begin_;
          if ((v32.__end_cap_.__value_ - v32.__begin_) >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v32, v18);
          }

          *(4 * v15) = v10;
          v12 = (4 * v15 + 4);
          memcpy(0, begin, v14);
          v19 = v32.__begin_;
          v32.__begin_ = 0;
          v32.__end_ = v12;
          v32.__end_cap_.__value_ = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v32.__end_ = v10;
          v12 = end + 1;
        }

        v32.__end_ = v12;
      }

      v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  if (v32.__end_ == v32.__begin_)
  {
    v20 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::SanitizedPronToken>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::SanitizedPronToken>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::SanitizedPronToken>> const&)::t;
  }

  else
  {
    v20 = v32.__begin_;
  }

  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v20, v32.__end_ - v32.__begin_);
  *(a3 + 70) = 1;
  v22 = *(a3 + 5);
  v23 = *(a3 + 6);
  v24 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v21);
  v25.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v24 - v23 + v22);
  if (v32.__begin_)
  {
    v32.__end_ = v32.__begin_;
    operator delete(v32.__begin_);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTokenProns_SanitizedSequence *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end