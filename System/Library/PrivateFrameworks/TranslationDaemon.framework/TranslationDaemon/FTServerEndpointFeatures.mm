@interface FTServerEndpointFeatures
- (FTServerEndpointFeatures)initWithFlatbuffData:(id)data root:(const ServerEndpointFeatures *)root verify:(BOOL)verify;
- (NSArray)pause_counts;
- (NSString)speech_id;
- (NSString)task_name;
- (Offset<siri::speech::schema_fb::ServerEndpointFeatures>)addObjectToBuffer:(void *)buffer;
- (double)eos_likelihood;
- (double)silence_posterior;
- (id)flatbuffData;
- (id)pause_counts_objectAtIndex:(unint64_t)index;
- (int)num_of_words;
- (int)processed_audio_duration_ms;
- (int)trailing_silence_duration;
- (unint64_t)pause_counts_count;
- (void)pause_counts_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTServerEndpointFeatures

- (FTServerEndpointFeatures)initWithFlatbuffData:(id)data root:(const ServerEndpointFeatures *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTServerEndpointFeatures;
  v10 = [(FTServerEndpointFeatures *)&v25 init];
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

  if (!siri::speech::schema_fb::ServerEndpointFeatures::Verify(v18, v21))
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

- (int)processed_audio_duration_ms
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (int)num_of_words
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (int)trailing_silence_duration
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

- (double)eos_likelihood
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xBu)
  {
    v5 = *v3[10].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (NSArray)pause_counts
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pause_counts"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__FTServerEndpointFeatures_pause_counts__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTServerEndpointFeatures *)self pause_counts_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pause_counts"];
  }

  return v3;
}

- (id)pause_counts_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pause_counts"];
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

- (unint64_t)pause_counts_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pause_counts"];
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

- (void)pause_counts_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pause_counts"];
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

- (double)silence_posterior
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xFu)
  {
    v5 = *v3[14].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (NSString)task_name
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

- (NSString)speech_id
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

- (Offset<siri::speech::schema_fb::ServerEndpointFeatures>)addObjectToBuffer:(void *)buffer
{
  v41 = *MEMORY[0x277D85DE8];
  processed_audio_duration_ms = [(FTServerEndpointFeatures *)self processed_audio_duration_ms];
  num_of_words = [(FTServerEndpointFeatures *)self num_of_words];
  trailing_silence_duration = [(FTServerEndpointFeatures *)self trailing_silence_duration];
  [(FTServerEndpointFeatures *)self eos_likelihood];
  v9 = v8;
  memset(&v39, 0, sizeof(v39));
  pause_counts = [(FTServerEndpointFeatures *)self pause_counts];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v39, [pause_counts count]);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  pause_counts2 = [(FTServerEndpointFeatures *)self pause_counts];
  v12 = [pause_counts2 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(pause_counts2);
        }

        intValue = [*(*(&v35 + 1) + 8 * i) intValue];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v39.__begin_, &intValue);
      }

      v12 = [pause_counts2 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  if (v39.__end_ == v39.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    begin = v39.__begin_;
  }

  v16 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<int>(buffer, begin, v39.__end_ - v39.__begin_);
  [(FTServerEndpointFeatures *)self silence_posterior];
  v18 = v17;
  task_name = [(FTServerEndpointFeatures *)self task_name];
  v20 = task_name;
  if (!task_name)
  {
    task_name = &stru_284834138;
  }

  uTF8String = [(__CFString *)task_name UTF8String];
  v22 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v22);

  speech_id = [(FTServerEndpointFeatures *)self speech_id];
  v25 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)speech_id UTF8String];
  v27 = strlen(uTF8String2);
  LODWORD(uTF8String2) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v27);

  *(buffer + 70) = 1;
  v28 = *(buffer + 8);
  v29 = *(buffer + 12);
  v30 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, processed_audio_duration_ms, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, num_of_words, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, trailing_silence_duration, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(buffer, 10, v9, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(buffer, 14, v18, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, uTF8String2);
  v31.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v28 - v29 + v30);
  if (v39.__begin_)
  {
    v39.__end_ = v39.__begin_;
    operator delete(v39.__begin_);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTServerEndpointFeatures *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__40__FTServerEndpointFeatures_flatbuffData__block_invoke(uint64_t a1)
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