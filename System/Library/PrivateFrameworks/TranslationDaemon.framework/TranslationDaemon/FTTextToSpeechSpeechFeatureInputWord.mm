@interface FTTextToSpeechSpeechFeatureInputWord
- (FTTextToSpeechSpeechFeatureInputWord)initWithFlatbuffData:(id)a3 root:(const TextToSpeechSpeechFeatureInputWord *)a4 verify:(BOOL)a5;
- (NSArray)phonemes;
- (NSString)word;
- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWord>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)phonemes_objectAtIndex:(unint64_t)a3;
- (unint64_t)phonemes_count;
- (void)phonemes_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTTextToSpeechSpeechFeatureInputWord

- (FTTextToSpeechSpeechFeatureInputWord)initWithFlatbuffData:(id)a3 root:(const TextToSpeechSpeechFeatureInputWord *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechSpeechFeatureInputWord;
  v10 = [(FTTextToSpeechSpeechFeatureInputWord *)&v25 init];
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

  if (!siri::speech::schema_fb::ContextWithPronHints::Verify(v18, v21))
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

- (NSString)word
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

- (NSArray)phonemes
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__FTTextToSpeechSpeechFeatureInputWord_phonemes__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTextToSpeechSpeechFeatureInputWord *)self phonemes_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"phonemes"];
  }

  return v3;
}

- (id)phonemes_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
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
      v13 = (v12 + 4 + *(v12 + 4));
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 + 1 length:*v13 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)phonemes_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
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

- (void)phonemes_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
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
        v19 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v9 + v10];
          v14 = v13 + 8;
          v15 = 4 * v11 - 4;
          do
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v14[*v14[-4].var0] length:*v13[4 * v12 + 4 + *v14[-4].var0].var0 encoding:4];
            v4[2](v4, v16, v12, &v19);
            v17 = v19;

            if (v17)
            {
              break;
            }

            ++v12;
            v14 += 4;
            v18 = v15;
            v15 -= 4;
          }

          while (v18);
        }
      }
    }
  }
}

- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWord>)addObjectToBuffer:(void *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(FTTextToSpeechSpeechFeatureInputWord *)self word];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  memset(&v30, 0, sizeof(v30));
  v10 = [(FTTextToSpeechSpeechFeatureInputWord *)self phonemes];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v30, [v10 count]);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [(FTTextToSpeechSpeechFeatureInputWord *)self phonemes];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v26 + 1) + 8 * i) UTF8String];
        v16 = strlen(v15);
        v25 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v15, v16);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v30.__begin_, &v25);
      }

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  if (v30.__end_ == v30.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    begin = v30.__begin_;
  }

  v18 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v30.__end_ - v30.__begin_);
  *(a3 + 70) = 1;
  v19 = *(a3 + 8);
  v20 = *(a3 + 12);
  v21 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v18);
  v22.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v19 - v20 + v21);
  if (v30.__begin_)
  {
    v30.__end_ = v30.__begin_;
    operator delete(v30.__begin_);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechSpeechFeatureInputWord *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__52__FTTextToSpeechSpeechFeatureInputWord_flatbuffData__block_invoke(uint64_t a1)
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