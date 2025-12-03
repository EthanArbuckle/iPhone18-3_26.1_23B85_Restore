@interface FTShortcutFuzzyMatchRequest
- (FTShortcutFuzzyMatchRequest)initWithFlatbuffData:(id)data root:(const ShortcutFuzzyMatchRequest *)root verify:(BOOL)verify;
- (FTShortcutFuzzyMatchRequest_StringTokenPair)utterance;
- (NSArray)shortcuts;
- (NSString)context;
- (NSString)device_type;
- (NSString)interaction_id;
- (NSString)locale;
- (NSString)request_id;
- (NSString)session_id;
- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)shortcuts_objectAtIndex:(unint64_t)index;
- (unint64_t)shortcuts_count;
- (void)shortcuts_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTShortcutFuzzyMatchRequest

- (FTShortcutFuzzyMatchRequest)initWithFlatbuffData:(id)data root:(const ShortcutFuzzyMatchRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTShortcutFuzzyMatchRequest;
  v10 = [(FTShortcutFuzzyMatchRequest *)&v25 init];
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
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__FTShortcutFuzzyMatchRequest_shortcuts__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTShortcutFuzzyMatchRequest *)self shortcuts_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"shortcuts"];
  }

  return v3;
}

- (id)shortcuts_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcuts"];
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

- (void)shortcuts_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcuts"];
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
            v15 = [[FTShortcutFuzzyMatchRequest_StringTokenPair alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest>)addObjectToBuffer:(void *)buffer
{
  v66 = *MEMORY[0x277D85DE8];
  utterance = [(FTShortcutFuzzyMatchRequest *)self utterance];
  v5 = [utterance addObjectToBuffer:buffer];

  memset(&v64, 0, sizeof(v64));
  shortcuts = [(FTShortcutFuzzyMatchRequest *)self shortcuts];
  v57 = v5;
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v64, [shortcuts count]);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  shortcuts2 = [(FTShortcutFuzzyMatchRequest *)self shortcuts];
  v8 = [shortcuts2 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v8)
  {
    v9 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(shortcuts2);
        }

        v11 = [*(*(&v60 + 1) + 8 * i) addObjectToBuffer:buffer];
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

      v8 = [shortcuts2 countByEnumeratingWithState:&v60 objects:v65 count:16];
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

  v22 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v21, v64.__end_ - v64.__begin_);
  request_id = [(FTShortcutFuzzyMatchRequest *)self request_id];
  v24 = request_id;
  if (!request_id)
  {
    request_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)request_id UTF8String];
  v26 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v26);

  session_id = [(FTShortcutFuzzyMatchRequest *)self session_id];
  v29 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v31 = strlen(uTF8String2);
  v32 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v31);

  interaction_id = [(FTShortcutFuzzyMatchRequest *)self interaction_id];
  v34 = interaction_id;
  if (!interaction_id)
  {
    interaction_id = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)interaction_id UTF8String];
  v36 = strlen(uTF8String3);
  v37 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v36);

  locale = [(FTShortcutFuzzyMatchRequest *)self locale];
  v39 = locale;
  if (!locale)
  {
    locale = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)locale UTF8String];
  v41 = strlen(uTF8String4);
  v42 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v41);

  device_type = [(FTShortcutFuzzyMatchRequest *)self device_type];
  v44 = device_type;
  if (!device_type)
  {
    device_type = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)device_type UTF8String];
  v46 = strlen(uTF8String5);
  v47 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v46);

  context = [(FTShortcutFuzzyMatchRequest *)self context];
  v49 = context;
  if (!context)
  {
    context = &stru_284834138;
  }

  uTF8String6 = [(__CFString *)context UTF8String];
  v51 = strlen(uTF8String6);
  LODWORD(uTF8String6) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v51);

  *(buffer + 70) = 1;
  v52 = *(buffer + 8);
  v53 = *(buffer + 12);
  v59 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v22);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v32);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v37);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v42);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, uTF8String6);
  v54.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v52 - v53 + v59);
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