@interface FTMultiUserStartSpeechRequest
- (FTMultiUserStartSpeechRequest)initWithFlatbuffData:(id)data root:(const MultiUserStartSpeechRequest *)root verify:(BOOL)verify;
- (FTStartSpeechRequest)start_speech_request;
- (NSArray)user_parameters;
- (NSString)primary_speech_id;
- (Offset<siri::speech::schema_fb::MultiUserStartSpeechRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)user_parameters_objectAtIndex:(unint64_t)index;
- (unint64_t)user_parameters_count;
- (void)user_parameters_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTMultiUserStartSpeechRequest

- (FTMultiUserStartSpeechRequest)initWithFlatbuffData:(id)data root:(const MultiUserStartSpeechRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTMultiUserStartSpeechRequest;
  v10 = [(FTMultiUserStartSpeechRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::MultiUserStartSpeechRequest::Verify(v18, v21))
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

- (FTStartSpeechRequest)start_speech_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"start_speech_request"];
  if (!v3)
  {
    v4 = [FTStartSpeechRequest alloc];
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

    v3 = [(FTStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"start_speech_request"];
  }

  return v3;
}

- (NSArray)user_parameters
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_parameters"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__FTMultiUserStartSpeechRequest_user_parameters__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTMultiUserStartSpeechRequest *)self user_parameters_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_parameters"];
  }

  return v3;
}

- (id)user_parameters_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_parameters"];
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
      v7 = [[FTUserParameters alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)user_parameters_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_parameters"];
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

- (void)user_parameters_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_parameters"];
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
            v15 = [[FTUserParameters alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSString)primary_speech_id
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

- (Offset<siri::speech::schema_fb::MultiUserStartSpeechRequest>)addObjectToBuffer:(void *)buffer
{
  v31 = *MEMORY[0x277D85DE8];
  start_speech_request = [(FTMultiUserStartSpeechRequest *)self start_speech_request];
  v6 = [start_speech_request addObjectToBuffer:buffer];

  memset(&v29, 0, sizeof(v29));
  user_parameters = [(FTMultiUserStartSpeechRequest *)self user_parameters];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v29, [user_parameters count]);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  user_parameters2 = [(FTMultiUserStartSpeechRequest *)self user_parameters];
  v9 = [user_parameters2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(user_parameters2);
        }

        v24 = [*(*(&v25 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v29.__begin_, &v24);
      }

      v9 = [user_parameters2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  if (v29.__end_ == v29.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::UserParameters>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::UserParameters>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::UserParameters>> const&)::t;
  }

  else
  {
    begin = v29.__begin_;
  }

  v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v29.__end_ - v29.__begin_);
  primary_speech_id = [(FTMultiUserStartSpeechRequest *)self primary_speech_id];
  v15 = primary_speech_id;
  if (!primary_speech_id)
  {
    primary_speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)primary_speech_id UTF8String];
  v17 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v17);

  *(buffer + 70) = 1;
  v18 = *(buffer + 8);
  v19 = *(buffer + 12);
  v20 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, uTF8String);
  v21.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v18 - v19 + v20);
  if (v29.__begin_)
  {
    v29.__end_ = v29.__begin_;
    operator delete(v29.__begin_);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTMultiUserStartSpeechRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__45__FTMultiUserStartSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
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