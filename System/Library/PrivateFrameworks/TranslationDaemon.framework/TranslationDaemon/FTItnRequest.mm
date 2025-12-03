@interface FTItnRequest
- (FTItnRequest)initWithFlatbuffData:(id)data root:(const ItnRequest *)root verify:(BOOL)verify;
- (NSArray)words_list;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::ItnRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)words_list_objectAtIndex:(unint64_t)index;
- (unint64_t)words_list_count;
- (void)words_list_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTItnRequest

- (FTItnRequest)initWithFlatbuffData:(id)data root:(const ItnRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTItnRequest;
  v10 = [(FTItnRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::ItnRequest::Verify(v18, v21))
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

- (NSArray)words_list
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"words_list"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __26__FTItnRequest_words_list__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTItnRequest *)self words_list_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"words_list"];
  }

  return v3;
}

- (id)words_list_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"words_list"];
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
      v7 = [[FTRecognitionPhraseTokens alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)words_list_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"words_list"];
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

- (void)words_list_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"words_list"];
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
            v15 = [[FTRecognitionPhraseTokens alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::ItnRequest>)addObjectToBuffer:(void *)buffer
{
  v40 = *MEMORY[0x277D85DE8];
  speech_id = [(FTItnRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTItnRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(FTItnRequest *)self language];
  v16 = language;
  if (!language)
  {
    language = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v18 = strlen(uTF8String3);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  memset(&v38, 0, sizeof(v38));
  words_list = [(FTItnRequest *)self words_list];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v38, [words_list count]);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  words_list2 = [(FTItnRequest *)self words_list];
  v22 = [words_list2 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v22)
  {
    v23 = *v35;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(words_list2);
        }

        v33 = [*(*(&v34 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v38.__begin_, &v33);
      }

      v22 = [words_list2 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v22);
  }

  if (v38.__end_ == v38.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionPhraseTokens>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionPhraseTokens>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionPhraseTokens>> const&)::t;
  }

  else
  {
    begin = v38.__begin_;
  }

  v26 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v38.__end_ - v38.__begin_);
  *(buffer + 70) = 1;
  v27 = *(buffer + 8);
  v28 = *(buffer + 12);
  v29 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v26);
  v30.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v27 - v28 + v29);
  if (v38.__begin_)
  {
    v38.__end_ = v38.__begin_;
    operator delete(v38.__begin_);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTItnRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__28__FTItnRequest_flatbuffData__block_invoke(uint64_t a1)
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