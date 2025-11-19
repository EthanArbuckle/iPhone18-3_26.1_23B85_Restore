@interface QSSServerEndpointFeatures
- (NSArray)pause_counts;
- (NSString)speech_id;
- (NSString)task_name;
- (Offset<siri::speech::schema_fb::ServerEndpointFeatures>)addObjectToBuffer:(void *)a3;
- (QSSServerEndpointFeatures)initWithFlatbuffData:(id)a3 root:(const ServerEndpointFeatures *)a4 verify:(BOOL)a5;
- (double)eos_likelihood;
- (double)silence_posterior;
- (id)flatbuffData;
- (int)num_of_words;
- (int)processed_audio_duration_ms;
- (int)trailing_silence_duration;
@end

@implementation QSSServerEndpointFeatures

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
  v2.var0 = [(QSSServerEndpointFeatures *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__41__QSSServerEndpointFeatures_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ServerEndpointFeatures>)addObjectToBuffer:(void *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(QSSServerEndpointFeatures *)self processed_audio_duration_ms];
  v6 = [(QSSServerEndpointFeatures *)self num_of_words];
  v7 = [(QSSServerEndpointFeatures *)self trailing_silence_duration];
  [(QSSServerEndpointFeatures *)self eos_likelihood];
  v9 = v8;
  memset(&v40, 0, sizeof(v40));
  v10 = [(QSSServerEndpointFeatures *)self pause_counts];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v40, [v10 count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [(QSSServerEndpointFeatures *)self pause_counts];
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v35 = [*(*(&v36 + 1) + 8 * i) intValue];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v40, &v35);
      }

      v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v12);
  }

  begin = v40.__begin_;
  if (v40.__end_ == v40.__begin_)
  {
    v16 = &flatbuffers::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    v16 = v40.__begin_;
  }

  v17 = flatbuffers::FlatBufferBuilder::CreateVector<int>(a3, v16, v40.__end_ - v40.__begin_);
  [(QSSServerEndpointFeatures *)self silence_posterior];
  v19 = v18;
  v20 = [(QSSServerEndpointFeatures *)self task_name];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_2879AE8E0;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v22, v23);

  v25 = [(QSSServerEndpointFeatures *)self speech_id];
  v26 = v25;
  if (!v25)
  {
    v25 = &stru_2879AE8E0;
  }

  v27 = [(__CFString *)v25 UTF8String];
  v28 = strlen(v27);
  v34 = flatbuffers::FlatBufferBuilder::CreateString(a3, v27, v28);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  LODWORD(v27) = *(a3 + 8);
  v29 = *(a3 + 12);
  v30 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 4, v5);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v7);
  flatbuffers::FlatBufferBuilder::AddElement<double>(a3, 10, v9);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v17);
  flatbuffers::FlatBufferBuilder::AddElement<double>(a3, 14, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 16, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v34);
  v31.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v27 - v29 + v30);
  if (begin)
  {
    operator delete(begin);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
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

- (NSArray)pause_counts
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pause_counts"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xDu)
    {
      v6 = *v5[12].var0;
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
            v11 = *v10->var0;
            v10 += 4;
            v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
            [v3 addObject:v12];

            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pause_counts"];
  }

  return v3;
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

- (QSSServerEndpointFeatures)initWithFlatbuffData:(id)a3 root:(const ServerEndpointFeatures *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSServerEndpointFeatures;
  v10 = [(QSSServerEndpointFeatures *)&v29 init];
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
        if (!siri::speech::schema_fb::ServerEndpointFeatures::Verify(v19, &v24))
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