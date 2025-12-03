@interface FTAudioAnalytics
- (FTAudioAnalytics)initWithFlatbuffData:(id)data root:(const AudioAnalytics *)root verify:(BOOL)verify;
- (NSArray)acoustic_features;
- (NSArray)speech_recognition_features;
- (Offset<siri::speech::schema_fb::AudioAnalytics>)addObjectToBuffer:(void *)buffer;
- (id)acoustic_features_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)speech_recognition_features_objectAtIndex:(unint64_t)index;
- (unint64_t)acoustic_features_count;
- (unint64_t)speech_recognition_features_count;
- (void)acoustic_features_enumerateObjectsUsingBlock:(id)block;
- (void)speech_recognition_features_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTAudioAnalytics

- (FTAudioAnalytics)initWithFlatbuffData:(id)data root:(const AudioAnalytics *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTAudioAnalytics;
  v10 = [(FTAudioAnalytics *)&v25 init];
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

  if (!siri::speech::schema_fb::AudioAnalytics::Verify(v18, v21))
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

- (NSArray)speech_recognition_features
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"speech_recognition_features"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__FTAudioAnalytics_speech_recognition_features__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTAudioAnalytics *)self speech_recognition_features_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"speech_recognition_features"];
  }

  return v3;
}

- (id)speech_recognition_features_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"speech_recognition_features"];
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
  if (*v10->var0 >= 5u)
  {
    v11 = *v10[4].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTAudioAnalytics_SpeechRecognitionFeaturesEntry alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)speech_recognition_features_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"speech_recognition_features"];
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

- (void)speech_recognition_features_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"speech_recognition_features"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 5u)
    {
      v9 = *v8[4].var0;
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
            v15 = [[FTAudioAnalytics_SpeechRecognitionFeaturesEntry alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)acoustic_features
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_features"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__FTAudioAnalytics_acoustic_features__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTAudioAnalytics *)self acoustic_features_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"acoustic_features"];
  }

  return v3;
}

- (id)acoustic_features_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_features"];
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
      v7 = [[FTAudioAnalytics_AcousticFeaturesEntry alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)acoustic_features_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_features"];
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

- (void)acoustic_features_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_features"];
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
            v15 = [[FTAudioAnalytics_AcousticFeaturesEntry alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::AudioAnalytics>)addObjectToBuffer:(void *)buffer
{
  v59 = *MEMORY[0x277D85DE8];
  memset(&v56, 0, sizeof(v56));
  speech_recognition_features = [(FTAudioAnalytics *)self speech_recognition_features];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v56, [speech_recognition_features count]);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  speech_recognition_features2 = [(FTAudioAnalytics *)self speech_recognition_features];
  selfCopy = self;
  v7 = [speech_recognition_features2 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v7)
  {
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(speech_recognition_features2);
        }

        v10 = [*(*(&v52 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v56.__end_;
        if (v56.__end_ >= v56.__end_cap_.__value_)
        {
          begin = v56.__begin_;
          v14 = v56.__end_ - v56.__begin_;
          v15 = v56.__end_ - v56.__begin_;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v17 = v56.__end_cap_.__value_ - v56.__begin_;
          if ((v56.__end_cap_.__value_ - v56.__begin_) >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v56, v18);
          }

          *(4 * v15) = v10;
          v12 = (4 * v15 + 4);
          memcpy(0, begin, v14);
          v19 = v56.__begin_;
          v56.__begin_ = 0;
          v56.__end_ = v12;
          v56.__end_cap_.__value_ = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v56.__end_ = v10;
          v12 = end + 1;
        }

        v56.__end_ = v12;
      }

      v7 = [speech_recognition_features2 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v7);
  }

  if (v56.__end_ == v56.__begin_)
  {
    v20 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioAnalytics_::SpeechRecognitionFeaturesEntry>> const&)::t;
  }

  else
  {
    v20 = v56.__begin_;
  }

  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v20, v56.__end_ - v56.__begin_);
  memset(&v51, 0, sizeof(v51));
  acoustic_features = [(FTAudioAnalytics *)selfCopy acoustic_features];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v51, [acoustic_features count]);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  acoustic_features2 = [(FTAudioAnalytics *)selfCopy acoustic_features];
  v46 = v21;
  v24 = [acoustic_features2 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v24)
  {
    v25 = *v48;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(acoustic_features2);
        }

        v27 = [*(*(&v47 + 1) + 8 * j) addObjectToBuffer:buffer];
        v28 = v51.__end_;
        if (v51.__end_ >= v51.__end_cap_.__value_)
        {
          v30 = v51.__begin_;
          v31 = v51.__end_ - v51.__begin_;
          v32 = v51.__end_ - v51.__begin_;
          v33 = v32 + 1;
          if ((v32 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v34 = v51.__end_cap_.__value_ - v51.__begin_;
          if ((v51.__end_cap_.__value_ - v51.__begin_) >> 1 > v33)
          {
            v33 = v34 >> 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v35 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v51, v35);
          }

          *(4 * v32) = v27;
          v29 = (4 * v32 + 4);
          memcpy(0, v30, v31);
          v36 = v51.__begin_;
          v51.__begin_ = 0;
          v51.__end_ = v29;
          v51.__end_cap_.__value_ = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v51.__end_ = v27;
          v29 = v28 + 1;
        }

        v51.__end_ = v29;
      }

      v24 = [acoustic_features2 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v24);
  }

  if (v51.__end_ == v51.__begin_)
  {
    v37 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry>> const&)::t;
  }

  else
  {
    v37 = v51.__begin_;
  }

  v38 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v37, v51.__end_ - v51.__begin_);
  *(buffer + 70) = 1;
  v39 = *(buffer + 8);
  v40 = *(buffer + 12);
  v41 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v46);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v38);
  v42.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v39 - v40 + v41);
  if (v51.__begin_)
  {
    v51.__end_ = v51.__begin_;
    operator delete(v51.__begin_);
  }

  if (v56.__begin_)
  {
    v56.__end_ = v56.__begin_;
    operator delete(v56.__begin_);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTAudioAnalytics *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__32__FTAudioAnalytics_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__63__FTAudioAnalytics_SpeechRecognitionFeaturesEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__54__FTAudioAnalytics_AcousticFeaturesEntry_flatbuffData__block_invoke(uint64_t a1)
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