@interface FTTranslationPhraseMetaInfo_AlternativeSelectedSpan
- (FTTranslationPhraseMetaInfo_AlternativeSelectedSpan)initWithFlatbuffData:(id)data root:(const AlternativeSelectedSpan *)root verify:(BOOL)verify;
- (FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range)source_range;
- (NSArray)alternatives;
- (NSArray)projection_ranges;
- (Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan>)addObjectToBuffer:(void *)buffer;
- (id)alternatives_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)projection_ranges_objectAtIndex:(unint64_t)index;
- (unint64_t)alternatives_count;
- (unint64_t)projection_ranges_count;
- (void)alternatives_enumerateObjectsUsingBlock:(id)block;
- (void)projection_ranges_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTranslationPhraseMetaInfo_AlternativeSelectedSpan

- (FTTranslationPhraseMetaInfo_AlternativeSelectedSpan)initWithFlatbuffData:(id)data root:(const AlternativeSelectedSpan *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTranslationPhraseMetaInfo_AlternativeSelectedSpan;
  v10 = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)&v25 init];
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

  if (!siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan::Verify(v18, v21))
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

- (FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range)source_range
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"source_range"];
  if (!v3)
  {
    v4 = [FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range alloc];
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

    v3 = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"source_range"];
  }

  return v3;
}

- (NSArray)projection_ranges
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"projection_ranges"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_projection_ranges__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)self projection_ranges_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"projection_ranges"];
  }

  return v3;
}

- (id)projection_ranges_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"projection_ranges"];
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
      v7 = [[FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)projection_ranges_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"projection_ranges"];
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

- (void)projection_ranges_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"projection_ranges"];
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
            v15 = [[FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)alternatives
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternatives"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_alternatives__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)self alternatives_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"alternatives"];
  }

  return v3;
}

- (id)alternatives_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternatives"];
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
  if (*v10->var0 >= 9u)
  {
    v11 = *v10[8].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)alternatives_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternatives"];
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

- (void)alternatives_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternatives"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
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
            v15 = [[FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan>)addObjectToBuffer:(void *)buffer
{
  v61 = *MEMORY[0x277D85DE8];
  source_range = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)self source_range];
  v46 = [source_range addObjectToBuffer:buffer];

  memset(&v58, 0, sizeof(v58));
  projection_ranges = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)self projection_ranges];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v58, [projection_ranges count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  projection_ranges2 = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)self projection_ranges];
  selfCopy = self;
  v8 = [projection_ranges2 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v8)
  {
    v9 = *v55;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(projection_ranges2);
        }

        v11 = [*(*(&v54 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v58.__end_;
        if (v58.__end_ >= v58.__end_cap_.__value_)
        {
          begin = v58.__begin_;
          v15 = v58.__end_ - v58.__begin_;
          v16 = v58.__end_ - v58.__begin_;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v18 = v58.__end_cap_.__value_ - v58.__begin_;
          if ((v58.__end_cap_.__value_ - v58.__begin_) >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v58, v19);
          }

          *(4 * v16) = v11;
          v13 = (4 * v16 + 4);
          memcpy(0, begin, v15);
          v20 = v58.__begin_;
          v58.__begin_ = 0;
          v58.__end_ = v13;
          v58.__end_cap_.__value_ = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v58.__end_ = v11;
          v13 = end + 1;
        }

        v58.__end_ = v13;
      }

      v8 = [projection_ranges2 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v8);
  }

  if (v58.__end_ == v58.__begin_)
  {
    v21 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range>> const&)::t;
  }

  else
  {
    v21 = v58.__begin_;
  }

  v22 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v21, v58.__end_ - v58.__begin_);
  memset(&v53, 0, sizeof(v53));
  alternatives = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)selfCopy alternatives];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v53, [alternatives count]);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  alternatives2 = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)selfCopy alternatives];
  v48 = v22;
  v25 = [alternatives2 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v25)
  {
    v26 = *v50;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(alternatives2);
        }

        v28 = [*(*(&v49 + 1) + 8 * j) addObjectToBuffer:buffer];
        v29 = v53.__end_;
        if (v53.__end_ >= v53.__end_cap_.__value_)
        {
          v31 = v53.__begin_;
          v32 = v53.__end_ - v53.__begin_;
          v33 = v53.__end_ - v53.__begin_;
          v34 = v33 + 1;
          if ((v33 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v35 = v53.__end_cap_.__value_ - v53.__begin_;
          if ((v53.__end_cap_.__value_ - v53.__begin_) >> 1 > v34)
          {
            v34 = v35 >> 1;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v36 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v53, v36);
          }

          *(4 * v33) = v28;
          v30 = (4 * v33 + 4);
          memcpy(0, v31, v32);
          v37 = v53.__begin_;
          v53.__begin_ = 0;
          v53.__end_ = v30;
          v53.__end_cap_.__value_ = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v53.__end_ = v28;
          v30 = v29 + 1;
        }

        v53.__end_ = v30;
      }

      v25 = [alternatives2 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v25);
  }

  if (v53.__end_ == v53.__begin_)
  {
    v38 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Alternative>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Alternative>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Alternative>> const&)::t;
  }

  else
  {
    v38 = v53.__begin_;
  }

  v39 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v38, v53.__end_ - v53.__begin_);
  *(buffer + 70) = 1;
  v40 = *(buffer + 8);
  v41 = *(buffer + 12);
  v42 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v46);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v48);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v39);
  v43.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v40 - v41 + v42);
  if (v53.__begin_)
  {
    v53.__end_ = v53.__begin_;
    operator delete(v53.__begin_);
  }

  if (v58.__begin_)
  {
    v58.__end_ = v58.__begin_;
    operator delete(v58.__begin_);
  }

  v44 = *MEMORY[0x277D85DE8];
  return v43;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end