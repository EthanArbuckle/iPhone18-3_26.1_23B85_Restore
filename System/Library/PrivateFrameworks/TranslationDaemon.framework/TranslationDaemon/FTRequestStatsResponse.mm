@interface FTRequestStatsResponse
- (FTRequestStatsResponse)initWithFlatbuffData:(id)data root:(const RequestStatsResponse *)root verify:(BOOL)verify;
- (NSArray)BOOL_stats;
- (NSArray)double_stats;
- (NSArray)int32_stats;
- (NSString)language;
- (NSString)request_locale;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::RequestStatsResponse>)addObjectToBuffer:(void *)buffer;
- (id)BOOL_stats_objectAtIndex:(unint64_t)index;
- (id)double_stats_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)int32_stats_objectAtIndex:(unint64_t)index;
- (unint64_t)BOOL_stats_count;
- (unint64_t)double_stats_count;
- (unint64_t)int32_stats_count;
- (void)BOOL_stats_enumerateObjectsUsingBlock:(id)block;
- (void)double_stats_enumerateObjectsUsingBlock:(id)block;
- (void)int32_stats_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTRequestStatsResponse

- (FTRequestStatsResponse)initWithFlatbuffData:(id)data root:(const RequestStatsResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTRequestStatsResponse;
  v10 = [(FTRequestStatsResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::RequestStatsResponse::Verify(v18, v21))
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

- (NSArray)BOOL_stats
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"BOOL_stats"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__FTRequestStatsResponse_BOOL_stats__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRequestStatsResponse *)self BOOL_stats_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"BOOL_stats"];
  }

  return v3;
}

- (id)BOOL_stats_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"BOOL_stats"];
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
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTRequestStatsResponse_BoolStat alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)BOOL_stats_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"BOOL_stats"];
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

- (void)BOOL_stats_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"BOOL_stats"];
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
          v13 = &root[v10 + 4 + v9];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [[FTRequestStatsResponse_BoolStat alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)int32_stats
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"int32_stats"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__FTRequestStatsResponse_int32_stats__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRequestStatsResponse *)self int32_stats_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"int32_stats"];
  }

  return v3;
}

- (id)int32_stats_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"int32_stats"];
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
      v7 = [[FTRequestStatsResponse_Int32Stat alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)int32_stats_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"int32_stats"];
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

- (void)int32_stats_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"int32_stats"];
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
            v15 = [[FTRequestStatsResponse_Int32Stat alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)double_stats
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"double_stats"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__FTRequestStatsResponse_double_stats__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRequestStatsResponse *)self double_stats_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"double_stats"];
  }

  return v3;
}

- (id)double_stats_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"double_stats"];
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
      v7 = [[FTRequestStatsResponse_DoubleStat alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)double_stats_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"double_stats"];
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

- (void)double_stats_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"double_stats"];
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
            v15 = [[FTRequestStatsResponse_DoubleStat alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSString)language
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

- (NSString)speech_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 12].var0;
  if (*root[-v3 + 12].var0)
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

- (NSString)request_locale
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 14].var0;
  if (*root[-v3 + 14].var0)
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

- (Offset<siri::speech::schema_fb::RequestStatsResponse>)addObjectToBuffer:(void *)buffer
{
  v95 = *MEMORY[0x277D85DE8];
  memset(&v91, 0, sizeof(v91));
  bOOL_stats = [(FTRequestStatsResponse *)self BOOL_stats];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v91, [bOOL_stats count]);

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  bOOL_stats2 = [(FTRequestStatsResponse *)self BOOL_stats];
  v6 = [bOOL_stats2 countByEnumeratingWithState:&v87 objects:v94 count:16];
  if (v6)
  {
    v7 = *v88;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v88 != v7)
        {
          objc_enumerationMutation(bOOL_stats2);
        }

        v9 = [*(*(&v87 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v91.__end_;
        if (v91.__end_ >= v91.__end_cap_.__value_)
        {
          begin = v91.__begin_;
          v13 = v91.__end_ - v91.__begin_;
          v14 = v91.__end_ - v91.__begin_;
          v15 = v14 + 1;
          if ((v14 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v16 = v91.__end_cap_.__value_ - v91.__begin_;
          if ((v91.__end_cap_.__value_ - v91.__begin_) >> 1 > v15)
          {
            v15 = v16 >> 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v91, v17);
          }

          *(4 * v14) = v9;
          v11 = (4 * v14 + 4);
          memcpy(0, begin, v13);
          v18 = v91.__begin_;
          v91.__begin_ = 0;
          v91.__end_ = v11;
          v91.__end_cap_.__value_ = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v91.__end_ = v9;
          v11 = end + 1;
        }

        v91.__end_ = v11;
      }

      v6 = [bOOL_stats2 countByEnumeratingWithState:&v87 objects:v94 count:16];
    }

    while (v6);
  }

  if (v91.__end_ == v91.__begin_)
  {
    v19 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::BoolStat>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::BoolStat>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::BoolStat>> const&)::t;
  }

  else
  {
    v19 = v91.__begin_;
  }

  v20 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v19, v91.__end_ - v91.__begin_);
  memset(&v86, 0, sizeof(v86));
  int32_stats = [(FTRequestStatsResponse *)self int32_stats];
  v75 = v20;
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v86, [int32_stats count]);

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  int32_stats2 = [(FTRequestStatsResponse *)self int32_stats];
  v23 = [int32_stats2 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v23)
  {
    v24 = *v83;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v83 != v24)
        {
          objc_enumerationMutation(int32_stats2);
        }

        v26 = [*(*(&v82 + 1) + 8 * j) addObjectToBuffer:buffer];
        v27 = v86.__end_;
        if (v86.__end_ >= v86.__end_cap_.__value_)
        {
          v29 = v86.__begin_;
          v30 = v86.__end_ - v86.__begin_;
          v31 = v86.__end_ - v86.__begin_;
          v32 = v31 + 1;
          if ((v31 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v33 = v86.__end_cap_.__value_ - v86.__begin_;
          if ((v86.__end_cap_.__value_ - v86.__begin_) >> 1 > v32)
          {
            v32 = v33 >> 1;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v34 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v86, v34);
          }

          *(4 * v31) = v26;
          v28 = (4 * v31 + 4);
          memcpy(0, v29, v30);
          v35 = v86.__begin_;
          v86.__begin_ = 0;
          v86.__end_ = v28;
          v86.__end_cap_.__value_ = 0;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *v86.__end_ = v26;
          v28 = v27 + 1;
        }

        v86.__end_ = v28;
      }

      v23 = [int32_stats2 countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v23);
  }

  if (v86.__end_ == v86.__begin_)
  {
    v36 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::Int32Stat>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::Int32Stat>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::Int32Stat>> const&)::t;
  }

  else
  {
    v36 = v86.__begin_;
  }

  v74 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v36, v86.__end_ - v86.__begin_);
  memset(&v81, 0, sizeof(v81));
  double_stats = [(FTRequestStatsResponse *)self double_stats];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v81, [double_stats count]);

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  double_stats2 = [(FTRequestStatsResponse *)self double_stats];
  v39 = [double_stats2 countByEnumeratingWithState:&v77 objects:v92 count:16];
  if (v39)
  {
    v40 = *v78;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v78 != v40)
        {
          objc_enumerationMutation(double_stats2);
        }

        v42 = [*(*(&v77 + 1) + 8 * k) addObjectToBuffer:buffer];
        v43 = v81.__end_;
        if (v81.__end_ >= v81.__end_cap_.__value_)
        {
          v45 = v81.__begin_;
          v46 = v81.__end_ - v81.__begin_;
          v47 = v81.__end_ - v81.__begin_;
          v48 = v47 + 1;
          if ((v47 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v49 = v81.__end_cap_.__value_ - v81.__begin_;
          if ((v81.__end_cap_.__value_ - v81.__begin_) >> 1 > v48)
          {
            v48 = v49 >> 1;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v50 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v50 = v48;
          }

          if (v50)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v81, v50);
          }

          *(4 * v47) = v42;
          v44 = (4 * v47 + 4);
          memcpy(0, v45, v46);
          v51 = v81.__begin_;
          v81.__begin_ = 0;
          v81.__end_ = v44;
          v81.__end_cap_.__value_ = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v81.__end_ = v42;
          v44 = v43 + 1;
        }

        v81.__end_ = v44;
      }

      v39 = [double_stats2 countByEnumeratingWithState:&v77 objects:v92 count:16];
    }

    while (v39);
  }

  if (v81.__end_ == v81.__begin_)
  {
    v52 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>> const&)::t;
  }

  else
  {
    v52 = v81.__begin_;
  }

  v53 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v52, v81.__end_ - v81.__begin_);
  language = [(FTRequestStatsResponse *)self language];
  v55 = language;
  if (!language)
  {
    language = &stru_284834138;
  }

  uTF8String = [(__CFString *)language UTF8String];
  v57 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v57);

  speech_id = [(FTRequestStatsResponse *)self speech_id];
  v60 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)speech_id UTF8String];
  v62 = strlen(uTF8String2);
  v63 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v62);

  request_locale = [(FTRequestStatsResponse *)self request_locale];
  v65 = request_locale;
  if (!request_locale)
  {
    request_locale = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)request_locale UTF8String];
  v67 = strlen(uTF8String3);
  LODWORD(uTF8String3) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v67);

  *(buffer + 70) = 1;
  v68 = *(buffer + 8);
  v69 = *(buffer + 12);
  v70 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v75);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v74);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v53);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, uTF8String3);
  v71.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v68 - v69 + v70);
  if (v81.__begin_)
  {
    v81.__end_ = v81.__begin_;
    operator delete(v81.__begin_);
  }

  if (v86.__begin_)
  {
    v86.__end_ = v86.__begin_;
    operator delete(v86.__begin_);
  }

  if (v91.__begin_)
  {
    v91.__end_ = v91.__begin_;
    operator delete(v91.__begin_);
  }

  v72 = *MEMORY[0x277D85DE8];
  return v71;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRequestStatsResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__38__FTRequestStatsResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__47__FTRequestStatsResponse_BoolStat_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__48__FTRequestStatsResponse_Int32Stat_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__49__FTRequestStatsResponse_DoubleStat_flatbuffData__block_invoke(uint64_t a1)
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