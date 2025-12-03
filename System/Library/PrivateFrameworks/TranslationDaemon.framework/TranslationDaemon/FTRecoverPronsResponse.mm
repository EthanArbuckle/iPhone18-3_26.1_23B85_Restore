@interface FTRecoverPronsResponse
- (FTRecoverPronsResponse)initWithFlatbuffData:(id)data root:(const RecoverPronsResponse *)root verify:(BOOL)verify;
- (NSArray)recovery_return_codes;
- (NSArray)voc_tokens;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::RecoverPronsResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)recovery_return_codes_objectAtIndex:(unint64_t)index;
- (id)voc_tokens_objectAtIndex:(unint64_t)index;
- (int)error_code;
- (unint64_t)recovery_return_codes_count;
- (unint64_t)voc_tokens_count;
- (void)recovery_return_codes_enumerateObjectsUsingBlock:(id)block;
- (void)voc_tokens_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTRecoverPronsResponse

- (FTRecoverPronsResponse)initWithFlatbuffData:(id)data root:(const RecoverPronsResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTRecoverPronsResponse;
  v10 = [(FTRecoverPronsResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::RecoverPronsResponse::Verify(v18, v21))
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

- (int)error_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)error_str
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 10].var0;
  if (*root[-v3 + 10].var0)
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

- (NSArray)recovery_return_codes
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recovery_return_codes"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__FTRecoverPronsResponse_recovery_return_codes__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRecoverPronsResponse *)self recovery_return_codes_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"recovery_return_codes"];
  }

  return v3;
}

- (id)recovery_return_codes_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recovery_return_codes"];
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
  if (*v10->var0 >= 0xDu)
  {
    v11 = *v10[12].var0;
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

- (unint64_t)recovery_return_codes_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recovery_return_codes"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xDu && (v8 = *v7[12].var0) != 0)
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

- (void)recovery_return_codes_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recovery_return_codes"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xDu)
    {
      v9 = *v8[12].var0;
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

- (NSArray)voc_tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voc_tokens"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__FTRecoverPronsResponse_voc_tokens__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRecoverPronsResponse *)self voc_tokens_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"voc_tokens"];
  }

  return v3;
}

- (id)voc_tokens_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voc_tokens"];
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
  if (*v10->var0 >= 0xFu)
  {
    v11 = *v10[14].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTVocToken alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)voc_tokens_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voc_tokens"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xFu && (v8 = *v7[14].var0) != 0)
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

- (void)voc_tokens_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voc_tokens"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xFu)
    {
      v9 = *v8[14].var0;
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
            v15 = [[FTVocToken alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::RecoverPronsResponse>)addObjectToBuffer:(void *)buffer
{
  v64 = *MEMORY[0x277D85DE8];
  speech_id = [(FTRecoverPronsResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTRecoverPronsResponse *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v50 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  error_code = [(FTRecoverPronsResponse *)self error_code];
  error_str = [(FTRecoverPronsResponse *)self error_str];
  v14 = error_str;
  if (!error_str)
  {
    error_str = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v16 = strlen(uTF8String3);
  v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  memset(&v61, 0, sizeof(v61));
  recovery_return_codes = [(FTRecoverPronsResponse *)self recovery_return_codes];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v61, [recovery_return_codes count]);

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  recovery_return_codes2 = [(FTRecoverPronsResponse *)self recovery_return_codes];
  v20 = [recovery_return_codes2 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v20)
  {
    v21 = *v58;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(recovery_return_codes2);
        }

        LODWORD(v56.__begin_) = [*(*(&v57 + 1) + 8 * i) intValue];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v61.__begin_, &v56);
      }

      v20 = [recovery_return_codes2 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v20);
  }

  if (v61.__end_ == v61.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    begin = v61.__begin_;
  }

  v47 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<int>(buffer, begin, v61.__end_ - v61.__begin_);
  memset(&v56, 0, sizeof(v56));
  voc_tokens = [(FTRecoverPronsResponse *)self voc_tokens];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v56, [voc_tokens count]);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  voc_tokens2 = [(FTRecoverPronsResponse *)self voc_tokens];
  v48 = v17;
  v26 = [voc_tokens2 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v26)
  {
    v27 = *v53;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v53 != v27)
        {
          objc_enumerationMutation(voc_tokens2);
        }

        v29 = [*(*(&v52 + 1) + 8 * j) addObjectToBuffer:buffer];
        end = v56.__end_;
        if (v56.__end_ >= v56.__end_cap_.__value_)
        {
          v32 = v56.__begin_;
          v33 = v56.__end_ - v56.__begin_;
          v34 = v56.__end_ - v56.__begin_;
          v35 = v34 + 1;
          if ((v34 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v36 = v56.__end_cap_.__value_ - v56.__begin_;
          if ((v56.__end_cap_.__value_ - v56.__begin_) >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v37 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v56, v37);
          }

          *(4 * v34) = v29;
          v31 = (4 * v34 + 4);
          memcpy(0, v32, v33);
          v38 = v56.__begin_;
          v56.__begin_ = 0;
          v56.__end_ = v31;
          v56.__end_cap_.__value_ = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v56.__end_ = v29;
          v31 = end + 1;
        }

        v56.__end_ = v31;
      }

      v26 = [voc_tokens2 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v26);
  }

  if (v56.__end_ == v56.__begin_)
  {
    v39 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::VocToken>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::VocToken>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::VocToken>> const&)::t;
  }

  else
  {
    v39 = v56.__begin_;
  }

  v40 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v39, v56.__end_ - v56.__begin_);
  *(buffer + 70) = 1;
  v41 = *(buffer + 8);
  v42 = *(buffer + 12);
  v43 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v50);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v48);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v40);
  v44.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v41 - v42 + v43);
  if (v56.__begin_)
  {
    v56.__end_ = v56.__begin_;
    operator delete(v56.__begin_);
  }

  if (v61.__begin_)
  {
    v61.__end_ = v61.__begin_;
    operator delete(v61.__begin_);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRecoverPronsResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__38__FTRecoverPronsResponse_flatbuffData__block_invoke(uint64_t a1)
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