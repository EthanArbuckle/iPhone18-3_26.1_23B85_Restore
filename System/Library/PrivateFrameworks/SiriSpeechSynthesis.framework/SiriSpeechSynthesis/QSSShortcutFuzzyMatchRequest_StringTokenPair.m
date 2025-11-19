@interface QSSShortcutFuzzyMatchRequest_StringTokenPair
- (NSArray)tokens;
- (NSString)raw_string;
- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest_::StringTokenPair>)addObjectToBuffer:(void *)a3;
- (QSSShortcutFuzzyMatchRequest_StringTokenPair)initWithFlatbuffData:(id)a3 root:(const StringTokenPair *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSShortcutFuzzyMatchRequest_StringTokenPair

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
  v2.var0 = [(QSSShortcutFuzzyMatchRequest_StringTokenPair *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest_::StringTokenPair>)addObjectToBuffer:(void *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(QSSShortcutFuzzyMatchRequest_StringTokenPair *)self raw_string];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  memset(&v31, 0, sizeof(v31));
  v10 = [(QSSShortcutFuzzyMatchRequest_StringTokenPair *)self tokens];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v31, [v10 count]);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [(QSSShortcutFuzzyMatchRequest_StringTokenPair *)self tokens];
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v27 + 1) + 8 * i) UTF8String];
        v16 = strlen(v15);
        v26 = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v31, &v26);
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  begin = v31.__begin_;
  if (v31.__end_ == v31.__begin_)
  {
    v18 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v18 = v31.__begin_;
  }

  v19 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v18, v31.__end_ - v31.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v20 = *(a3 + 8);
  v21 = *(a3 + 12);
  v22 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v19);
  v23.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v20 - v21 + v22);
  if (begin)
  {
    operator delete(begin);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (NSArray)tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tokens"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
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
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v10[*v10->var0 + 4] length:*v10[*v10->var0].var0 encoding:4];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"tokens"];
  }

  return v3;
}

- (NSString)raw_string
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

- (QSSShortcutFuzzyMatchRequest_StringTokenPair)initWithFlatbuffData:(id)a3 root:(const StringTokenPair *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSShortcutFuzzyMatchRequest_StringTokenPair;
  v10 = [(QSSShortcutFuzzyMatchRequest_StringTokenPair *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
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
        if (!siri::speech::schema_fb::ContextWithPronHints::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end