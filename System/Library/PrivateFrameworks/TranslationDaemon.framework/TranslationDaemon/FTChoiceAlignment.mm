@interface FTChoiceAlignment
- (FTChoiceAlignment)initWithFlatbuffData:(id)data root:(const ChoiceAlignment *)root verify:(BOOL)verify;
- (NSArray)post_itn_choice_indices;
- (NSArray)pre_itn_token_to_post_itn_char_alignments;
- (Offset<siri::speech::schema_fb::ChoiceAlignment>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)post_itn_choice_indices_objectAtIndex:(unint64_t)index;
- (id)pre_itn_token_to_post_itn_char_alignments_objectAtIndex:(unint64_t)index;
- (unint64_t)post_itn_choice_indices_count;
- (unint64_t)pre_itn_token_to_post_itn_char_alignments_count;
- (void)post_itn_choice_indices_enumerateObjectsUsingBlock:(id)block;
- (void)pre_itn_token_to_post_itn_char_alignments_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTChoiceAlignment

- (FTChoiceAlignment)initWithFlatbuffData:(id)data root:(const ChoiceAlignment *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTChoiceAlignment;
  v10 = [(FTChoiceAlignment *)&v25 init];
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

  if (!siri::speech::schema_fb::ChoiceAlignment::Verify(v18, v21))
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

- (NSArray)post_itn_choice_indices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_choice_indices"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__FTChoiceAlignment_post_itn_choice_indices__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTChoiceAlignment *)self post_itn_choice_indices_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"post_itn_choice_indices"];
  }

  return v3;
}

- (id)post_itn_choice_indices_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_choice_indices"];
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
  if (*v10->var0 >= 5u)
  {
    v11 = *v10[4].var0;
    if (v11)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:*root[4 * index + 4 + v11 + *root[v11].var0].var0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)post_itn_choice_indices_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_choice_indices"];
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

- (void)post_itn_choice_indices_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_choice_indices"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
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
          v13 = &root[v9 + 4 + v10];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4 * v12)];
            blockCopy[2](blockCopy, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v17 = v14;
            v14 -= 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (NSArray)pre_itn_token_to_post_itn_char_alignments
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignments"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__FTChoiceAlignment_pre_itn_token_to_post_itn_char_alignments__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTChoiceAlignment *)self pre_itn_token_to_post_itn_char_alignments_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignments"];
  }

  return v3;
}

- (id)pre_itn_token_to_post_itn_char_alignments_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignments"];
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
      v7 = [[FTRepeatedItnAlignment alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)pre_itn_token_to_post_itn_char_alignments_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignments"];
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

- (void)pre_itn_token_to_post_itn_char_alignments_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignments"];
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
            v15 = [[FTRepeatedItnAlignment alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::ChoiceAlignment>)addObjectToBuffer:(void *)buffer
{
  v48 = *MEMORY[0x277D85DE8];
  memset(&v45, 0, sizeof(v45));
  post_itn_choice_indices = [(FTChoiceAlignment *)self post_itn_choice_indices];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v45, [post_itn_choice_indices count]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  post_itn_choice_indices2 = [(FTChoiceAlignment *)self post_itn_choice_indices];
  v7 = [post_itn_choice_indices2 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(post_itn_choice_indices2);
        }

        LODWORD(v40.__begin_) = [*(*(&v41 + 1) + 8 * i) intValue];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v45.__begin_, &v40);
      }

      v7 = [post_itn_choice_indices2 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  if (v45.__end_ == v45.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    begin = v45.__begin_;
  }

  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<int>(buffer, begin, v45.__end_ - v45.__begin_);
  memset(&v40, 0, sizeof(v40));
  pre_itn_token_to_post_itn_char_alignments = [(FTChoiceAlignment *)self pre_itn_token_to_post_itn_char_alignments];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v40, [pre_itn_token_to_post_itn_char_alignments count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  pre_itn_token_to_post_itn_char_alignments2 = [(FTChoiceAlignment *)self pre_itn_token_to_post_itn_char_alignments];
  v35 = v11;
  v14 = [pre_itn_token_to_post_itn_char_alignments2 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v14)
  {
    v15 = *v37;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(pre_itn_token_to_post_itn_char_alignments2);
        }

        v17 = [*(*(&v36 + 1) + 8 * j) addObjectToBuffer:buffer];
        end = v40.__end_;
        if (v40.__end_ >= v40.__end_cap_.__value_)
        {
          v20 = v40.__begin_;
          v21 = v40.__end_ - v40.__begin_;
          v22 = v40.__end_ - v40.__begin_;
          v23 = v22 + 1;
          if ((v22 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v24 = v40.__end_cap_.__value_ - v40.__begin_;
          if ((v40.__end_cap_.__value_ - v40.__begin_) >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v25 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v40, v25);
          }

          *(4 * v22) = v17;
          v19 = (4 * v22 + 4);
          memcpy(0, v20, v21);
          v26 = v40.__begin_;
          v40.__begin_ = 0;
          v40.__end_ = v19;
          v40.__end_cap_.__value_ = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v40.__end_ = v17;
          v19 = end + 1;
        }

        v40.__end_ = v19;
      }

      v14 = [pre_itn_token_to_post_itn_char_alignments2 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v14);
  }

  if (v40.__end_ == v40.__begin_)
  {
    v27 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedItnAlignment>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedItnAlignment>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedItnAlignment>> const&)::t;
  }

  else
  {
    v27 = v40.__begin_;
  }

  v28 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v27, v40.__end_ - v40.__begin_);
  *(buffer + 70) = 1;
  v29 = *(buffer + 8);
  v30 = *(buffer + 12);
  v31 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v35);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v28);
  v32.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v29 - v30 + v31);
  if (v40.__begin_)
  {
    v40.__end_ = v40.__begin_;
    operator delete(v40.__begin_);
  }

  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTChoiceAlignment *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__33__FTChoiceAlignment_flatbuffData__block_invoke(uint64_t a1)
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