@interface QSSChoiceAlignment
- (NSArray)post_itn_choice_indices;
- (NSArray)pre_itn_token_to_post_itn_char_alignments;
- (Offset<siri::speech::schema_fb::ChoiceAlignment>)addObjectToBuffer:(void *)buffer;
- (QSSChoiceAlignment)initWithFlatbuffData:(id)data root:(const ChoiceAlignment *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSChoiceAlignment

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
  v2.var0 = [(QSSChoiceAlignment *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__34__QSSChoiceAlignment_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ChoiceAlignment>)addObjectToBuffer:(void *)buffer
{
  v35 = *MEMORY[0x277D85DE8];
  memset(&v32, 0, sizeof(v32));
  post_itn_choice_indices = [(QSSChoiceAlignment *)self post_itn_choice_indices];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v32, [post_itn_choice_indices count]);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  post_itn_choice_indices2 = [(QSSChoiceAlignment *)self post_itn_choice_indices];
  v7 = [post_itn_choice_indices2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(post_itn_choice_indices2);
        }

        intValue = [*(*(&v28 + 1) + 8 * i) intValue];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v32, &intValue);
      }

      v7 = [post_itn_choice_indices2 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  if (v32.__end_ == v32.__begin_)
  {
    begin = &flatbuffers::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    begin = v32.__begin_;
  }

  v21 = flatbuffers::FlatBufferBuilder::CreateVector<int>(buffer, begin, v32.__end_ - v32.__begin_);
  pre_itn_token_to_post_itn_char_alignments = [(QSSChoiceAlignment *)self pre_itn_token_to_post_itn_char_alignments];
  v12 = [pre_itn_token_to_post_itn_char_alignments count];
  if (v12)
  {
    if (!(v12 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v12);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(QSSChoiceAlignment *)self pre_itn_token_to_post_itn_char_alignments];
  if ([obj countByEnumeratingWithState:&v23 objects:v33 count:16])
  {
    *v24;
    *v24;
    [**(&v23 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v13 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 8);
  v15 = *(buffer + 12);
  v16 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v21);
  if (v13)
  {
    v17 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v13);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v17);
  }

  v18.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v14 - v15 + v16);
  if (v32.__begin_)
  {
    operator delete(v32.__begin_);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSArray)pre_itn_token_to_post_itn_char_alignments
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignments"];
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
            v11 = [[QSSRepeatedItnAlignment alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignments"];
  }

  return array;
}

- (NSArray)post_itn_choice_indices
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_choice_indices"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 5u)
    {
      v6 = *v5[4].var0;
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
            v11 = *v10->var0;
            v10 += 4;
            v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
            [array addObject:v12];

            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"post_itn_choice_indices"];
  }

  return array;
}

- (QSSChoiceAlignment)initWithFlatbuffData:(id)data root:(const ChoiceAlignment *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSChoiceAlignment;
  v10 = [(QSSChoiceAlignment *)&v29 init];
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
        if (!siri::speech::schema_fb::ChoiceAlignment::Verify(v19, &v24))
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