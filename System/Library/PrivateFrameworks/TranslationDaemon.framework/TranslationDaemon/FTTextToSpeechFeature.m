@interface FTTextToSpeechFeature
- (FTTextToSpeechFeature)initWithFlatbuffData:(id)a3 root:(const TextToSpeechFeature *)a4 verify:(BOOL)a5;
- (NSArray)neural_phoneme_sequence;
- (NSArray)normalized_text;
- (NSArray)phoneme_sequence;
- (NSArray)prompts;
- (NSArray)replacement;
- (Offset<siri::speech::schema_fb::TextToSpeechFeature>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)neural_phoneme_sequence_objectAtIndex:(unint64_t)a3;
- (id)normalized_text_objectAtIndex:(unint64_t)a3;
- (id)phoneme_sequence_objectAtIndex:(unint64_t)a3;
- (id)prompts_objectAtIndex:(unint64_t)a3;
- (id)replacement_objectAtIndex:(unint64_t)a3;
- (unint64_t)neural_phoneme_sequence_count;
- (unint64_t)normalized_text_count;
- (unint64_t)phoneme_sequence_count;
- (unint64_t)prompts_count;
- (unint64_t)replacement_count;
- (void)neural_phoneme_sequence_enumerateObjectsUsingBlock:(id)a3;
- (void)normalized_text_enumerateObjectsUsingBlock:(id)a3;
- (void)phoneme_sequence_enumerateObjectsUsingBlock:(id)a3;
- (void)prompts_enumerateObjectsUsingBlock:(id)a3;
- (void)replacement_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTTextToSpeechFeature

- (FTTextToSpeechFeature)initWithFlatbuffData:(id)a3 root:(const TextToSpeechFeature *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechFeature;
  v10 = [(FTTextToSpeechFeature *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechFeature::Verify(v18, v21))
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

- (NSArray)normalized_text
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_text"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__FTTextToSpeechFeature_normalized_text__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTextToSpeechFeature *)self normalized_text_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"normalized_text"];
  }

  return v3;
}

- (id)normalized_text_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_text"];
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
  if (*v10->var0 >= 5u)
  {
    v11 = *v10[4].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTTTSNormalizedText alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)normalized_text_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_text"];
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

- (void)normalized_text_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_text"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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
            v15 = [[FTTTSNormalizedText alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)phoneme_sequence
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phoneme_sequence"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__FTTextToSpeechFeature_phoneme_sequence__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTextToSpeechFeature *)self phoneme_sequence_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"phoneme_sequence"];
  }

  return v3;
}

- (id)phoneme_sequence_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phoneme_sequence"];
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
      v7 = [[FTTTSPhonemeSequence alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)phoneme_sequence_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phoneme_sequence"];
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

- (void)phoneme_sequence_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phoneme_sequence"];
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
            v15 = [[FTTTSPhonemeSequence alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)prompts
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__FTTextToSpeechFeature_prompts__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTextToSpeechFeature *)self prompts_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prompts"];
  }

  return v3;
}

- (id)prompts_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
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
  if (*v10->var0 >= 9u)
  {
    v11 = *v10[8].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTTTSPrompts alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)prompts_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 9u && (v8 = *v7[8].var0) != 0)
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

- (void)prompts_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 9u)
    {
      v9 = *v8[8].var0;
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
            v15 = [[FTTTSPrompts alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)replacement
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"replacement"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__FTTextToSpeechFeature_replacement__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTextToSpeechFeature *)self replacement_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"replacement"];
  }

  return v3;
}

- (id)replacement_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"replacement"];
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
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTTTSReplacement alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)replacement_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"replacement"];
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

- (void)replacement_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"replacement"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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
            v15 = [[FTTTSReplacement alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)neural_phoneme_sequence
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"neural_phoneme_sequence"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__FTTextToSpeechFeature_neural_phoneme_sequence__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTextToSpeechFeature *)self neural_phoneme_sequence_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"neural_phoneme_sequence"];
  }

  return v3;
}

- (id)neural_phoneme_sequence_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"neural_phoneme_sequence"];
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
  if (*v10->var0 >= 0xDu)
  {
    v11 = *v10[12].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTTTSNeuralPhonemeSequence alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)neural_phoneme_sequence_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"neural_phoneme_sequence"];
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

- (void)neural_phoneme_sequence_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"neural_phoneme_sequence"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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
          v13 = &root[v10 + 4 + v9];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [[FTTTSNeuralPhonemeSequence alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::TextToSpeechFeature>)addObjectToBuffer:(void *)a3
{
  v127 = *MEMORY[0x277D85DE8];
  memset(&v121, 0, sizeof(v121));
  v4 = [(FTTextToSpeechFeature *)self normalized_text];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v121, [v4 count]);

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v5 = [(FTTextToSpeechFeature *)self normalized_text];
  v6 = [v5 countByEnumeratingWithState:&v117 objects:v126 count:16];
  if (v6)
  {
    v7 = *v118;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v118 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v117 + 1) + 8 * i) addObjectToBuffer:a3];
        end = v121.__end_;
        if (v121.__end_ >= v121.__end_cap_.__value_)
        {
          begin = v121.__begin_;
          v13 = v121.__end_ - v121.__begin_;
          v14 = v121.__end_ - v121.__begin_;
          v15 = v14 + 1;
          if ((v14 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v16 = v121.__end_cap_.__value_ - v121.__begin_;
          if ((v121.__end_cap_.__value_ - v121.__begin_) >> 1 > v15)
          {
            v15 = v16 >> 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v121, v17);
          }

          *(4 * v14) = v9;
          v11 = (4 * v14 + 4);
          memcpy(0, begin, v13);
          v18 = v121.__begin_;
          v121.__begin_ = 0;
          v121.__end_ = v11;
          v121.__end_cap_.__value_ = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v121.__end_ = v9;
          v11 = end + 1;
        }

        v121.__end_ = v11;
      }

      v6 = [v5 countByEnumeratingWithState:&v117 objects:v126 count:16];
    }

    while (v6);
  }

  if (v121.__end_ == v121.__begin_)
  {
    v19 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSNormalizedText>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSNormalizedText>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSNormalizedText>> const&)::t;
  }

  else
  {
    v19 = v121.__begin_;
  }

  v94 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v19, v121.__end_ - v121.__begin_);
  memset(&v116, 0, sizeof(v116));
  v20 = [(FTTextToSpeechFeature *)self phoneme_sequence];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v116, [v20 count]);

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v21 = [(FTTextToSpeechFeature *)self phoneme_sequence];
  v22 = [v21 countByEnumeratingWithState:&v112 objects:v125 count:16];
  if (v22)
  {
    v23 = *v113;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v113 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = [*(*(&v112 + 1) + 8 * j) addObjectToBuffer:a3];
        v26 = v116.__end_;
        if (v116.__end_ >= v116.__end_cap_.__value_)
        {
          v28 = v116.__begin_;
          v29 = v116.__end_ - v116.__begin_;
          v30 = v116.__end_ - v116.__begin_;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v32 = v116.__end_cap_.__value_ - v116.__begin_;
          if ((v116.__end_cap_.__value_ - v116.__begin_) >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v116, v33);
          }

          *(4 * v30) = v25;
          v27 = (4 * v30 + 4);
          memcpy(0, v28, v29);
          v34 = v116.__begin_;
          v116.__begin_ = 0;
          v116.__end_ = v27;
          v116.__end_cap_.__value_ = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v116.__end_ = v25;
          v27 = v26 + 1;
        }

        v116.__end_ = v27;
      }

      v22 = [v21 countByEnumeratingWithState:&v112 objects:v125 count:16];
    }

    while (v22);
  }

  if (v116.__end_ == v116.__begin_)
  {
    v35 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSPhonemeSequence>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSPhonemeSequence>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSPhonemeSequence>> const&)::t;
  }

  else
  {
    v35 = v116.__begin_;
  }

  v93 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v35, v116.__end_ - v116.__begin_);
  memset(&v111, 0, sizeof(v111));
  v36 = [(FTTextToSpeechFeature *)self prompts];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v111, [v36 count]);

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v37 = [(FTTextToSpeechFeature *)self prompts];
  v38 = [v37 countByEnumeratingWithState:&v107 objects:v124 count:16];
  if (v38)
  {
    v39 = *v108;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v108 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = [*(*(&v107 + 1) + 8 * k) addObjectToBuffer:a3];
        v42 = v111.__end_;
        if (v111.__end_ >= v111.__end_cap_.__value_)
        {
          v44 = v111.__begin_;
          v45 = v111.__end_ - v111.__begin_;
          v46 = v111.__end_ - v111.__begin_;
          v47 = v46 + 1;
          if ((v46 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v48 = v111.__end_cap_.__value_ - v111.__begin_;
          if ((v111.__end_cap_.__value_ - v111.__begin_) >> 1 > v47)
          {
            v47 = v48 >> 1;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v49 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v111, v49);
          }

          *(4 * v46) = v41;
          v43 = (4 * v46 + 4);
          memcpy(0, v44, v45);
          v50 = v111.__begin_;
          v111.__begin_ = 0;
          v111.__end_ = v43;
          v111.__end_cap_.__value_ = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v111.__end_ = v41;
          v43 = v42 + 1;
        }

        v111.__end_ = v43;
      }

      v38 = [v37 countByEnumeratingWithState:&v107 objects:v124 count:16];
    }

    while (v38);
  }

  if (v111.__end_ == v111.__begin_)
  {
    v51 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSPrompts>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSPrompts>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSPrompts>> const&)::t;
  }

  else
  {
    v51 = v111.__begin_;
  }

  v92 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v51, v111.__end_ - v111.__begin_);
  memset(&v106, 0, sizeof(v106));
  v52 = [(FTTextToSpeechFeature *)self replacement];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v106, [v52 count]);

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v53 = [(FTTextToSpeechFeature *)self replacement];
  v54 = [v53 countByEnumeratingWithState:&v102 objects:v123 count:16];
  if (v54)
  {
    v55 = *v103;
    do
    {
      for (m = 0; m != v54; ++m)
      {
        if (*v103 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = [*(*(&v102 + 1) + 8 * m) addObjectToBuffer:a3];
        v58 = v106.__end_;
        if (v106.__end_ >= v106.__end_cap_.__value_)
        {
          v60 = v106.__begin_;
          v61 = v106.__end_ - v106.__begin_;
          v62 = v106.__end_ - v106.__begin_;
          v63 = v62 + 1;
          if ((v62 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v64 = v106.__end_cap_.__value_ - v106.__begin_;
          if ((v106.__end_cap_.__value_ - v106.__begin_) >> 1 > v63)
          {
            v63 = v64 >> 1;
          }

          if (v64 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v65 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v106, v65);
          }

          *(4 * v62) = v57;
          v59 = (4 * v62 + 4);
          memcpy(0, v60, v61);
          v66 = v106.__begin_;
          v106.__begin_ = 0;
          v106.__end_ = v59;
          v106.__end_cap_.__value_ = 0;
          if (v66)
          {
            operator delete(v66);
          }
        }

        else
        {
          *v106.__end_ = v57;
          v59 = v58 + 1;
        }

        v106.__end_ = v59;
      }

      v54 = [v53 countByEnumeratingWithState:&v102 objects:v123 count:16];
    }

    while (v54);
  }

  if (v106.__end_ == v106.__begin_)
  {
    v67 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSReplacement>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSReplacement>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSReplacement>> const&)::t;
  }

  else
  {
    v67 = v106.__begin_;
  }

  v68 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v67, v106.__end_ - v106.__begin_);
  memset(&v101, 0, sizeof(v101));
  v69 = [(FTTextToSpeechFeature *)self neural_phoneme_sequence];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v101, [v69 count]);

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v70 = [(FTTextToSpeechFeature *)self neural_phoneme_sequence];
  v96 = v68;
  v71 = [v70 countByEnumeratingWithState:&v97 objects:v122 count:16];
  if (v71)
  {
    v72 = *v98;
    do
    {
      for (n = 0; n != v71; ++n)
      {
        if (*v98 != v72)
        {
          objc_enumerationMutation(v70);
        }

        v74 = [*(*(&v97 + 1) + 8 * n) addObjectToBuffer:a3];
        v75 = v101.__end_;
        if (v101.__end_ >= v101.__end_cap_.__value_)
        {
          v77 = v101.__begin_;
          v78 = v101.__end_ - v101.__begin_;
          v79 = v101.__end_ - v101.__begin_;
          v80 = v79 + 1;
          if ((v79 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v81 = v101.__end_cap_.__value_ - v101.__begin_;
          if ((v101.__end_cap_.__value_ - v101.__begin_) >> 1 > v80)
          {
            v80 = v81 >> 1;
          }

          if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v82 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v82 = v80;
          }

          if (v82)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v101, v82);
          }

          *(4 * v79) = v74;
          v76 = (4 * v79 + 4);
          memcpy(0, v77, v78);
          v83 = v101.__begin_;
          v101.__begin_ = 0;
          v101.__end_ = v76;
          v101.__end_cap_.__value_ = 0;
          if (v83)
          {
            operator delete(v83);
          }
        }

        else
        {
          *v101.__end_ = v74;
          v76 = v75 + 1;
        }

        v101.__end_ = v76;
      }

      v71 = [v70 countByEnumeratingWithState:&v97 objects:v122 count:16];
    }

    while (v71);
  }

  if (v101.__end_ == v101.__begin_)
  {
    v84 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSNeuralPhonemeSequence>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSNeuralPhonemeSequence>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSNeuralPhonemeSequence>> const&)::t;
  }

  else
  {
    v84 = v101.__begin_;
  }

  v85 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v84, v101.__end_ - v101.__begin_);
  *(a3 + 70) = 1;
  v86 = *(a3 + 8);
  v87 = *(a3 + 12);
  v88 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v94);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v93);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v92);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v96);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v85);
  v89.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v86 - v87 + v88);
  if (v101.__begin_)
  {
    v101.__end_ = v101.__begin_;
    operator delete(v101.__begin_);
  }

  if (v106.__begin_)
  {
    v106.__end_ = v106.__begin_;
    operator delete(v106.__begin_);
  }

  if (v111.__begin_)
  {
    v111.__end_ = v111.__begin_;
    operator delete(v111.__begin_);
  }

  if (v116.__begin_)
  {
    v116.__end_ = v116.__begin_;
    operator delete(v116.__begin_);
  }

  if (v121.__begin_)
  {
    v121.__end_ = v121.__begin_;
    operator delete(v121.__begin_);
  }

  v90 = *MEMORY[0x277D85DE8];
  return v89;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechFeature *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__37__FTTextToSpeechFeature_flatbuffData__block_invoke(uint64_t a1)
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