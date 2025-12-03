@interface QSSFinishAudio
- (NSArray)features_at_endpoint;
- (NSArray)server_feature_latency_distribution;
- (Offset<siri::speech::schema_fb::FinishAudio>)addObjectToBuffer:(void *)buffer;
- (QSSFinishAudio)initWithFlatbuffData:(id)data root:(const FinishAudio *)root verify:(BOOL)verify;
- (float)total_audio_recorded_seconds;
- (id)flatbuffData;
- (int)packet_count;
@end

@implementation QSSFinishAudio

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
  v2.var0 = [(QSSFinishAudio *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__30__QSSFinishAudio_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::FinishAudio>)addObjectToBuffer:(void *)buffer
{
  v39 = *MEMORY[0x277D85DE8];
  packet_count = [(QSSFinishAudio *)self packet_count];
  [(QSSFinishAudio *)self total_audio_recorded_seconds];
  v6 = v5;
  memset(&v36, 0, sizeof(v36));
  features_at_endpoint = [(QSSFinishAudio *)self features_at_endpoint];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v36, [features_at_endpoint count]);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  features_at_endpoint2 = [(QSSFinishAudio *)self features_at_endpoint];
  v9 = [features_at_endpoint2 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v9)
  {
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(features_at_endpoint2);
        }

        [*(*(&v32 + 1) + 8 * i) floatValue];
        v31 = v12;
        std::vector<float>::push_back[abi:ne200100](&v36, &v31);
      }

      v9 = [features_at_endpoint2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v9);
  }

  if (v36.__end_ == v36.__begin_)
  {
    begin = &flatbuffers::data<float,std::allocator<float>>(std::vector<float> const&)::t;
  }

  else
  {
    begin = v36.__begin_;
  }

  v24 = flatbuffers::FlatBufferBuilder::CreateVector<int>(buffer, begin, v36.__end_ - v36.__begin_);
  server_feature_latency_distribution = [(QSSFinishAudio *)self server_feature_latency_distribution];
  v15 = [server_feature_latency_distribution count];
  if (v15)
  {
    if (!(v15 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v15);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(QSSFinishAudio *)self server_feature_latency_distribution];
  if ([obj countByEnumeratingWithState:&v27 objects:v37 count:16])
  {
    *v28;
    *v28;
    [**(&v27 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v16 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v17 = *(buffer + 8);
  v18 = *(buffer + 12);
  v19 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, packet_count);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 6, v6);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v24);
  if (v16)
  {
    v20 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v16);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v20);
  }

  v21.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v17 - v18 + v19);
  if (v36.__begin_)
  {
    operator delete(v36.__begin_);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NSArray)server_feature_latency_distribution
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"server_feature_latency_distribution"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xBu)
    {
      v6 = *v5[10].var0;
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
            v11 = [[QSSFinishAudio_ServerFeatureLatencyDistributionEntry alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"server_feature_latency_distribution"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__68__QSSFinishAudio_ServerFeatureLatencyDistributionEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSArray)features_at_endpoint
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"features_at_endpoint"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 9u)
    {
      v7 = *v6[8].var0;
      if (v7)
      {
        v8 = *root[v7].var0;
        v9 = *root[v7 + v8].var0;
        if (v9)
        {
          v10 = 4 * v9;
          v11 = &root[v8 + 4 + v7];
          do
          {
            LODWORD(v4) = *v11->var0;
            v12 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
            [array addObject:v12];

            v11 += 4;
            v10 -= 4;
          }

          while (v10);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"features_at_endpoint"];
  }

  return array;
}

- (float)total_audio_recorded_seconds
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 7u)
  {
    v5 = *v3[6].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (int)packet_count
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

- (QSSFinishAudio)initWithFlatbuffData:(id)data root:(const FinishAudio *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSFinishAudio;
  v10 = [(QSSFinishAudio *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
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
        if (!siri::speech::schema_fb::FinishAudio::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end