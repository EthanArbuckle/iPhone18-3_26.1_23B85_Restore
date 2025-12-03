@interface FTKeywordFinderRequest
- (BOOL)enable_sanitization;
- (FTKeywordFinderRequest)initWithFlatbuffData:(id)data root:(const KeywordFinderRequest *)root verify:(BOOL)verify;
- (FTRecognitionResult)recognition_result;
- (NSArray)keywords;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::KeywordFinderRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)keywords_objectAtIndex:(unint64_t)index;
- (unint64_t)keywords_count;
- (void)keywords_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTKeywordFinderRequest

- (FTKeywordFinderRequest)initWithFlatbuffData:(id)data root:(const KeywordFinderRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTKeywordFinderRequest;
  v10 = [(FTKeywordFinderRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::KeywordFinderRequest::Verify(v18, v21))
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

- (NSString)language
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

- (NSArray)keywords
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"keywords"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__FTKeywordFinderRequest_keywords__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTKeywordFinderRequest *)self keywords_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"keywords"];
  }

  return v3;
}

- (id)keywords_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"keywords"];
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
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTKeyword alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)keywords_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"keywords"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xBu && (v8 = *v7[10].var0) != 0)
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

- (void)keywords_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"keywords"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xBu)
    {
      v9 = *v8[10].var0;
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
            v15 = [[FTKeyword alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (FTRecognitionResult)recognition_result
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recognition_result"];
  if (!v3)
  {
    v4 = [FTRecognitionResult alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTRecognitionResult *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"recognition_result"];
  }

  return v3;
}

- (BOOL)enable_sanitization
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::KeywordFinderRequest>)addObjectToBuffer:(void *)buffer
{
  v55 = *MEMORY[0x277D85DE8];
  speech_id = [(FTKeywordFinderRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTKeywordFinderRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(FTKeywordFinderRequest *)self language];
  v16 = language;
  if (!language)
  {
    language = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v18 = strlen(uTF8String3);
  v45 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  memset(&v53, 0, sizeof(v53));
  keywords = [(FTKeywordFinderRequest *)self keywords];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v53, [keywords count]);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  keywords2 = [(FTKeywordFinderRequest *)self keywords];
  v46 = v14;
  v47 = String;
  selfCopy = self;
  v21 = [keywords2 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v21)
  {
    v22 = *v50;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v50 != v22)
        {
          objc_enumerationMutation(keywords2);
        }

        v24 = [*(*(&v49 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v53.__end_;
        if (v53.__end_ >= v53.__end_cap_.__value_)
        {
          begin = v53.__begin_;
          v28 = v53.__end_ - v53.__begin_;
          v29 = v53.__end_ - v53.__begin_;
          v30 = v29 + 1;
          if ((v29 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v31 = v53.__end_cap_.__value_ - v53.__begin_;
          if ((v53.__end_cap_.__value_ - v53.__begin_) >> 1 > v30)
          {
            v30 = v31 >> 1;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v32 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v53, v32);
          }

          *(4 * v29) = v24;
          v26 = (4 * v29 + 4);
          memcpy(0, begin, v28);
          v33 = v53.__begin_;
          v53.__begin_ = 0;
          v53.__end_ = v26;
          v53.__end_cap_.__value_ = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v53.__end_ = v24;
          v26 = end + 1;
        }

        v53.__end_ = v26;
      }

      v21 = [keywords2 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v21);
  }

  if (v53.__end_ == v53.__begin_)
  {
    v34 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Keyword>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Keyword>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Keyword>> const&)::t;
  }

  else
  {
    v34 = v53.__begin_;
  }

  v35 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v34, v53.__end_ - v53.__begin_);
  recognition_result = [(FTKeywordFinderRequest *)selfCopy recognition_result];
  v37 = [recognition_result addObjectToBuffer:buffer];

  enable_sanitization = [(FTKeywordFinderRequest *)selfCopy enable_sanitization];
  *(buffer + 70) = 1;
  v39 = *(buffer + 8);
  v40 = *(buffer + 12);
  v41 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v46);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v35);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v37);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 14, enable_sanitization, 0);
  v42.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v39 - v40 + v41);
  if (v53.__begin_)
  {
    v53.__end_ = v53.__begin_;
    operator delete(v53.__begin_);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTKeywordFinderRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__38__FTKeywordFinderRequest_flatbuffData__block_invoke(uint64_t a1)
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