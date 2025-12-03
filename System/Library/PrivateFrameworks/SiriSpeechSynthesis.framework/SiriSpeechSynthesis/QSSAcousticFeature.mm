@interface QSSAcousticFeature
- (NSArray)acoustic_feature_per_frame;
- (Offset<siri::speech::schema_fb::AcousticFeature>)addObjectToBuffer:(void *)buffer;
- (QSSAcousticFeature)initWithFlatbuffData:(id)data root:(const AcousticFeature *)root verify:(BOOL)verify;
- (float)frame_duration;
- (id)flatbuffData;
@end

@implementation QSSAcousticFeature

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
  v2.var0 = [(QSSAcousticFeature *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__34__QSSAcousticFeature_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::AcousticFeature>)addObjectToBuffer:(void *)buffer
{
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  acoustic_feature_per_frame = [(QSSAcousticFeature *)self acoustic_feature_per_frame];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v27, [acoustic_feature_per_frame count]);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  acoustic_feature_per_frame2 = [(QSSAcousticFeature *)self acoustic_feature_per_frame];
  v7 = [acoustic_feature_per_frame2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(acoustic_feature_per_frame2);
        }

        [*(*(&v23 + 1) + 8 * i) floatValue];
        v22 = v10;
        std::vector<float>::push_back[abi:ne200100](&v27, &v22);
      }

      v7 = [acoustic_feature_per_frame2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  begin = v27.__begin_;
  if (v27.__end_ == v27.__begin_)
  {
    v12 = &flatbuffers::data<float,std::allocator<float>>(std::vector<float> const&)::t;
  }

  else
  {
    v12 = v27.__begin_;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<int>(buffer, v12, v27.__end_ - v27.__begin_);
  [(QSSAcousticFeature *)self frame_duration];
  v15 = v14;
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v16 = *(buffer + 8);
  v17 = *(buffer + 12);
  v18 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v13);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 6, v15);
  v19.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v16 - v17 + v18);
  if (begin)
  {
    operator delete(begin);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (float)frame_duration
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

- (NSArray)acoustic_feature_per_frame
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_feature_per_frame"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u)
    {
      v7 = *v6[4].var0;
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

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"acoustic_feature_per_frame"];
  }

  return array;
}

- (QSSAcousticFeature)initWithFlatbuffData:(id)data root:(const AcousticFeature *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSAcousticFeature;
  v10 = [(QSSAcousticFeature *)&v29 init];
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
        if (!siri::speech::schema_fb::AcousticFeature::Verify(v19, &v24))
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