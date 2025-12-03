@interface FTAcousticFeature
- (FTAcousticFeature)initWithFlatbuffData:(id)data root:(const AcousticFeature *)root verify:(BOOL)verify;
- (NSArray)acoustic_feature_per_frame;
- (Offset<siri::speech::schema_fb::AcousticFeature>)addObjectToBuffer:(void *)buffer;
- (float)frame_duration;
- (id)acoustic_feature_per_frame_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (unint64_t)acoustic_feature_per_frame_count;
- (void)acoustic_feature_per_frame_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTAcousticFeature

- (FTAcousticFeature)initWithFlatbuffData:(id)data root:(const AcousticFeature *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTAcousticFeature;
  v10 = [(FTAcousticFeature *)&v25 init];
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

  if (!siri::speech::schema_fb::RecognitionChoice::Verify(v18, v21))
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

- (NSArray)acoustic_feature_per_frame
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_feature_per_frame"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__FTAcousticFeature_acoustic_feature_per_frame__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTAcousticFeature *)self acoustic_feature_per_frame_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"acoustic_feature_per_frame"];
  }

  return v3;
}

- (id)acoustic_feature_per_frame_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_feature_per_frame"];
  v7 = v5;
  if (v5)
  {
    v8 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v9 = v8;
    goto LABEL_8;
  }

  root = self->_root;
  v11 = &root[-*root->var0];
  if (*v11->var0 >= 5u)
  {
    v12 = *v11[4].var0;
    if (v12)
    {
      LODWORD(v6) = *root[4 * index + 4 + v12 + *root[v12].var0].var0;
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (unint64_t)acoustic_feature_per_frame_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_feature_per_frame"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 5u && (v8 = *v7[4].var0) != 0)
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

- (void)acoustic_feature_per_frame_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_feature_per_frame"];
  v7 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v9 = &root[-*root->var0];
    if (*v9->var0 >= 5u)
    {
      v10 = *v9[4].var0;
      if (v10)
      {
        v19 = 0;
        v11 = *root[v10].var0;
        v12 = *root[v10 + v11].var0;
        if (v12)
        {
          v13 = 0;
          v14 = &root[v10 + 4 + v11];
          v15 = 4 * v12 - 4;
          do
          {
            LODWORD(v6) = *(v14 + 4 * v13);
            v16 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
            blockCopy[2](blockCopy, v16, v13, &v19);
            v17 = v19;

            if (v17)
            {
              break;
            }

            ++v13;
            v18 = v15;
            v15 -= 4;
          }

          while (v18);
        }
      }
    }
  }
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

- (Offset<siri::speech::schema_fb::AcousticFeature>)addObjectToBuffer:(void *)buffer
{
  v28 = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  acoustic_feature_per_frame = [(FTAcousticFeature *)self acoustic_feature_per_frame];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v26, [acoustic_feature_per_frame count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  acoustic_feature_per_frame2 = [(FTAcousticFeature *)self acoustic_feature_per_frame];
  v7 = [acoustic_feature_per_frame2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(acoustic_feature_per_frame2);
        }

        [*(*(&v22 + 1) + 8 * i) floatValue];
        v21 = v10;
        std::vector<float>::push_back[abi:ne200100](&v26.__begin_, &v21);
      }

      v7 = [acoustic_feature_per_frame2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (v26.__end_ == v26.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<float,std::allocator<float>>(std::vector<float> const&)::t;
  }

  else
  {
    begin = v26.__begin_;
  }

  v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<int>(buffer, begin, v26.__end_ - v26.__begin_);
  [(FTAcousticFeature *)self frame_duration];
  v14 = v13;
  *(buffer + 70) = 1;
  v15 = *(buffer + 8);
  v16 = *(buffer + 12);
  v17 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 6, v14, 0.0);
  v18.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v15 - v16 + v17);
  if (v26.__begin_)
  {
    v26.__end_ = v26.__begin_;
    operator delete(v26.__begin_);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTAcousticFeature *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__33__FTAcousticFeature_flatbuffData__block_invoke(uint64_t a1)
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