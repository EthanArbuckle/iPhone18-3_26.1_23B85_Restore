@interface FTShortcutFuzzyMatchRequest
- (FTShortcutFuzzyMatchRequest)initWithFlatbuffData:(id)a3 root:(const ShortcutFuzzyMatchRequest *)a4 verify:(BOOL)a5;
- (FTShortcutFuzzyMatchRequest_StringTokenPair)utterance;
- (NSArray)shortcuts;
- (NSString)context;
- (NSString)device_type;
- (NSString)interaction_id;
- (NSString)locale;
- (NSString)request_id;
- (NSString)session_id;
- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)shortcuts_objectAtIndex:(unint64_t)a3;
- (unint64_t)shortcuts_count;
- (void)shortcuts_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTShortcutFuzzyMatchRequest

- (FTShortcutFuzzyMatchRequest)initWithFlatbuffData:(id)a3 root:(const ShortcutFuzzyMatchRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTShortcutFuzzyMatchRequest;
  v10 = [(FTShortcutFuzzyMatchRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::ShortcutFuzzyMatchRequest::Verify(v18, v21))
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

- (FTShortcutFuzzyMatchRequest_StringTokenPair)utterance
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"utterance"];
  if (!v3)
  {
    v4 = [FTShortcutFuzzyMatchRequest_StringTokenPair alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTShortcutFuzzyMatchRequest_StringTokenPair *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"utterance"];
  }

  return v3;
}

- (NSArray)shortcuts
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcuts"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__FTShortcutFuzzyMatchRequest_shortcuts__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTShortcutFuzzyMatchRequest *)self shortcuts_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"shortcuts"];
  }

  return v3;
}

- (id)shortcuts_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcuts"];
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
      v7 = [[FTShortcutFuzzyMatchRequest_StringTokenPair alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)shortcuts_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcuts"];
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

- (void)shortcuts_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcuts"];
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
            v15 = [[FTShortcutFuzzyMatchRequest_StringTokenPair alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSString)request_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 8].var0;
  if (*root[-v3 + 8].var0)
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

- (NSString)interaction_id
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

- (NSString)locale
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

- (NSString)device_type
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 16].var0;
  if (*root[-v3 + 16].var0)
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

- (NSString)context
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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

- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest>)addObjectToBuffer:(void *)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = [(FTShortcutFuzzyMatchRequest *)self utterance];
  v5 = [v4 addObjectToBuffer:a3];

  memset(&v64, 0, sizeof(v64));
  v6 = [(FTShortcutFuzzyMatchRequest *)self shortcuts];
  v57 = v5;
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v64, [v6 count]);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = [(FTShortcutFuzzyMatchRequest *)self shortcuts];
  v8 = [v7 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v8)
  {
    v9 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v60 + 1) + 8 * i) addObjectToBuffer:a3];
        end = v64.__end_;
        if (v64.__end_ >= v64.__end_cap_.__value_)
        {
          begin = v64.__begin_;
          v15 = v64.__end_ - v64.__begin_;
          v16 = v64.__end_ - v64.__begin_;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v18 = v64.__end_cap_.__value_ - v64.__begin_;
          if ((v64.__end_cap_.__value_ - v64.__begin_) >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v64, v19);
          }

          *(4 * v16) = v11;
          v13 = (4 * v16 + 4);
          memcpy(0, begin, v15);
          v20 = v64.__begin_;
          v64.__begin_ = 0;
          v64.__end_ = v13;
          v64.__end_cap_.__value_ = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v64.__end_ = v11;
          v13 = end + 1;
        }

        v64.__end_ = v13;
      }

      v8 = [v7 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v8);
  }

  if (v64.__end_ == v64.__begin_)
  {
    v21 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest_::StringTokenPair>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest_::StringTokenPair>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest_::StringTokenPair>> const&)::t;
  }

  else
  {
    v21 = v64.__begin_;
  }

  v22 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v21, v64.__end_ - v64.__begin_);
  v23 = [(FTShortcutFuzzyMatchRequest *)self request_id];
  v24 = v23;
  if (!v23)
  {
    v23 = &stru_284834138;
  }

  v25 = [(__CFString *)v23 UTF8String];
  v26 = strlen(v25);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v25, v26);

  v28 = [(FTShortcutFuzzyMatchRequest *)self session_id];
  v29 = v28;
  if (!v28)
  {
    v28 = &stru_284834138;
  }

  v30 = [(__CFString *)v28 UTF8String];
  v31 = strlen(v30);
  v32 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v30, v31);

  v33 = [(FTShortcutFuzzyMatchRequest *)self interaction_id];
  v34 = v33;
  if (!v33)
  {
    v33 = &stru_284834138;
  }

  v35 = [(__CFString *)v33 UTF8String];
  v36 = strlen(v35);
  v37 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v35, v36);

  v38 = [(FTShortcutFuzzyMatchRequest *)self locale];
  v39 = v38;
  if (!v38)
  {
    v38 = &stru_284834138;
  }

  v40 = [(__CFString *)v38 UTF8String];
  v41 = strlen(v40);
  v42 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v40, v41);

  v43 = [(FTShortcutFuzzyMatchRequest *)self device_type];
  v44 = v43;
  if (!v43)
  {
    v43 = &stru_284834138;
  }

  v45 = [(__CFString *)v43 UTF8String];
  v46 = strlen(v45);
  v47 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v45, v46);

  v48 = [(FTShortcutFuzzyMatchRequest *)self context];
  v49 = v48;
  if (!v48)
  {
    v48 = &stru_284834138;
  }

  v50 = [(__CFString *)v48 UTF8String];
  v51 = strlen(v50);
  LODWORD(v50) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v50, v51);

  *(a3 + 70) = 1;
  v52 = *(a3 + 8);
  v53 = *(a3 + 12);
  v59 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v22);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v32);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v37);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v42);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 16, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 18, v50);
  v54.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v52 - v53 + v59);
  if (v64.__begin_)
  {
    v64.__end_ = v64.__begin_;
    operator delete(v64.__begin_);
  }

  v55 = *MEMORY[0x277D85DE8];
  return v54;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTShortcutFuzzyMatchRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__43__FTShortcutFuzzyMatchRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__59__FTShortcutFuzzyMatchRequest_StringTokenPair_flatbuffData__block_invoke(uint64_t a1)
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