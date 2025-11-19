@interface FTSpeechTranslationInfo
- (FTRecognitionSausage)raw_sausage;
- (FTSpeechTranslationInfo)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationInfo *)a4 verify:(BOOL)a5;
- (NSArray)raw_nbest_choices;
- (Offset<siri::speech::schema_fb::SpeechTranslationInfo>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)raw_nbest_choices_objectAtIndex:(unint64_t)a3;
- (unint64_t)raw_nbest_choices_count;
- (void)raw_nbest_choices_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTSpeechTranslationInfo

- (FTSpeechTranslationInfo)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationInfo *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTSpeechTranslationInfo;
  v10 = [(FTSpeechTranslationInfo *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::SpeechTranslationInfo::Verify(v18, v21))
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

- (FTRecognitionSausage)raw_sausage
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_sausage"];
  if (!v3)
  {
    v4 = [FTRecognitionSausage alloc];
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

    v3 = [(FTRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"raw_sausage"];
  }

  return v3;
}

- (NSArray)raw_nbest_choices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__FTSpeechTranslationInfo_raw_nbest_choices__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTSpeechTranslationInfo *)self raw_nbest_choices_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"raw_nbest_choices"];
  }

  return v3;
}

- (id)raw_nbest_choices_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:a3];
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
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTRecognitionChoice alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)raw_nbest_choices_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
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

- (void)raw_nbest_choices_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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
            v15 = [[FTRecognitionChoice alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            v4[2](v4, v15, v12, &v18);
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

- (Offset<siri::speech::schema_fb::SpeechTranslationInfo>)addObjectToBuffer:(void *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(FTSpeechTranslationInfo *)self raw_sausage];
  v6 = [v5 addObjectToBuffer:a3];

  memset(&v25, 0, sizeof(v25));
  v7 = [(FTSpeechTranslationInfo *)self raw_nbest_choices];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v25, [v7 count]);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(FTSpeechTranslationInfo *)self raw_nbest_choices];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v20 = [*(*(&v21 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v25.__begin_, &v20);
      }

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  if (v25.__end_ == v25.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    begin = v25.__begin_;
  }

  v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v25.__end_ - v25.__begin_);
  *(a3 + 70) = 1;
  v14 = *(a3 + 8);
  v15 = *(a3 + 12);
  v16 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v13);
  v17.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v14 - v15 + v16);
  if (v25.__begin_)
  {
    v25.__end_ = v25.__begin_;
    operator delete(v25.__begin_);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSpeechTranslationInfo *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__39__FTSpeechTranslationInfo_flatbuffData__block_invoke(uint64_t a1)
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