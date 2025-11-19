@interface FTRequestStatsResponse
- (FTRequestStatsResponse)initWithFlatbuffData:(id)a3 root:(const RequestStatsResponse *)a4 verify:(BOOL)a5;
- (NSArray)BOOL_stats;
- (NSArray)double_stats;
- (NSArray)int32_stats;
- (NSString)language;
- (NSString)request_locale;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::RequestStatsResponse>)addObjectToBuffer:(void *)a3;
- (id)BOOL_stats_objectAtIndex:(unint64_t)a3;
- (id)double_stats_objectAtIndex:(unint64_t)a3;
- (id)flatbuffData;
- (id)int32_stats_objectAtIndex:(unint64_t)a3;
- (unint64_t)BOOL_stats_count;
- (unint64_t)double_stats_count;
- (unint64_t)int32_stats_count;
- (void)BOOL_stats_enumerateObjectsUsingBlock:(id)a3;
- (void)double_stats_enumerateObjectsUsingBlock:(id)a3;
- (void)int32_stats_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTRequestStatsResponse

- (FTRequestStatsResponse)initWithFlatbuffData:(id)a3 root:(const RequestStatsResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTRequestStatsResponse;
  v10 = [(FTRequestStatsResponse *)&v25 init];
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
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__FTRequestStatsResponse_BOOL_stats__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTRequestStatsResponse *)self BOOL_stats_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"BOOL_stats"];
  }

  return v3;
}

- (id)BOOL_stats_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"BOOL_stats"];
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

- (void)BOOL_stats_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"BOOL_stats"];
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
            v15 = [[FTRequestStatsResponse_BoolStat alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)int32_stats
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"int32_stats"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__FTRequestStatsResponse_int32_stats__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTRequestStatsResponse *)self int32_stats_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"int32_stats"];
  }

  return v3;
}

- (id)int32_stats_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"int32_stats"];
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
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
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

- (void)int32_stats_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"int32_stats"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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

- (NSArray)double_stats
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"double_stats"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__FTRequestStatsResponse_double_stats__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTRequestStatsResponse *)self double_stats_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"double_stats"];
  }

  return v3;
}

- (id)double_stats_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"double_stats"];
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
  if (*v10->var0 >= 9u)
  {
    v11 = *v10[8].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
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

- (void)double_stats_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"double_stats"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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

- (Offset<siri::speech::schema_fb::RequestStatsResponse>)addObjectToBuffer:(void *)a3
{
  v95 = *MEMORY[0x277D85DE8];
  memset(&v91, 0, sizeof(v91));
  v4 = [(FTRequestStatsResponse *)self BOOL_stats];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v91, [v4 count]);

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v5 = [(FTRequestStatsResponse *)self BOOL_stats];
  v6 = [v5 countByEnumeratingWithState:&v87 objects:v94 count:16];
  if (v6)
  {
    v7 = *v88;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v88 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v87 + 1) + 8 * i) addObjectToBuffer:a3];
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

      v6 = [v5 countByEnumeratingWithState:&v87 objects:v94 count:16];
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

  v20 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v19, v91.__end_ - v91.__begin_);
  memset(&v86, 0, sizeof(v86));
  v21 = [(FTRequestStatsResponse *)self int32_stats];
  v75 = v20;
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v86, [v21 count]);

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v22 = [(FTRequestStatsResponse *)self int32_stats];
  v23 = [v22 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v23)
  {
    v24 = *v83;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v83 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = [*(*(&v82 + 1) + 8 * j) addObjectToBuffer:a3];
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

      v23 = [v22 countByEnumeratingWithState:&v82 objects:v93 count:16];
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

  v74 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v36, v86.__end_ - v86.__begin_);
  memset(&v81, 0, sizeof(v81));
  v37 = [(FTRequestStatsResponse *)self double_stats];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v81, [v37 count]);

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v38 = [(FTRequestStatsResponse *)self double_stats];
  v39 = [v38 countByEnumeratingWithState:&v77 objects:v92 count:16];
  if (v39)
  {
    v40 = *v78;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v78 != v40)
        {
          objc_enumerationMutation(v38);
        }

        v42 = [*(*(&v77 + 1) + 8 * k) addObjectToBuffer:a3];
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

      v39 = [v38 countByEnumeratingWithState:&v77 objects:v92 count:16];
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

  v53 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v52, v81.__end_ - v81.__begin_);
  v54 = [(FTRequestStatsResponse *)self language];
  v55 = v54;
  if (!v54)
  {
    v54 = &stru_284834138;
  }

  v56 = [(__CFString *)v54 UTF8String];
  v57 = strlen(v56);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v56, v57);

  v59 = [(FTRequestStatsResponse *)self speech_id];
  v60 = v59;
  if (!v59)
  {
    v59 = &stru_284834138;
  }

  v61 = [(__CFString *)v59 UTF8String];
  v62 = strlen(v61);
  v63 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v61, v62);

  v64 = [(FTRequestStatsResponse *)self request_locale];
  v65 = v64;
  if (!v64)
  {
    v64 = &stru_284834138;
  }

  v66 = [(__CFString *)v64 UTF8String];
  v67 = strlen(v66);
  LODWORD(v66) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v66, v67);

  *(a3 + 70) = 1;
  v68 = *(a3 + 8);
  v69 = *(a3 + 12);
  v70 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v75);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v74);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v53);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v66);
  v71.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v68 - v69 + v70);
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