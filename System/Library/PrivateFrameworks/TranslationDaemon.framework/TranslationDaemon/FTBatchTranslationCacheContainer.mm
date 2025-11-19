@interface FTBatchTranslationCacheContainer
- (BOOL)contains_masked_profanity;
- (FTBatchTranslationCacheContainer)initWithFlatbuffData:(id)a3 root:(const BatchTranslationCacheContainer *)a4 verify:(BOOL)a5;
- (NSArray)spans;
- (NSString)request_id;
- (NSString)translated_text;
- (NSString)translated_text_romanized;
- (Offset<siri::speech::schema_fb::BatchTranslationCacheContainer>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)spans_objectAtIndex:(unint64_t)a3;
- (int)sentence_count;
- (unint64_t)spans_count;
- (void)spans_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTBatchTranslationCacheContainer

- (FTBatchTranslationCacheContainer)initWithFlatbuffData:(id)a3 root:(const BatchTranslationCacheContainer *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTBatchTranslationCacheContainer;
  v10 = [(FTBatchTranslationCacheContainer *)&v25 init];
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

  if (!siri::speech::schema_fb::BatchTranslationCacheContainer::Verify(v18, v21))
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

- (NSString)request_id
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

- (NSString)translated_text
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 6].var0;
  if (*root[-v3 + 6].var0)
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

- (NSArray)spans
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__FTBatchTranslationCacheContainer_spans__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTBatchTranslationCacheContainer *)self spans_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"spans"];
  }

  return v3;
}

- (id)spans_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
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
      v7 = [[FTRepeatedSpan alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)spans_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
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

- (void)spans_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
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
            v15 = [[FTRepeatedSpan alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (int)sentence_count
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)translated_text_romanized
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 12].var0;
  if (*root[-v3 + 12].var0)
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

- (BOOL)contains_masked_profanity
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::BatchTranslationCacheContainer>)addObjectToBuffer:(void *)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [(FTBatchTranslationCacheContainer *)self request_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(FTBatchTranslationCacheContainer *)self translated_text];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_284834138;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v12, v13);

  memset(&v39, 0, sizeof(v39));
  v15 = [(FTBatchTranslationCacheContainer *)self spans];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v39, [v15 count]);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = [(FTBatchTranslationCacheContainer *)self spans];
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v17)
  {
    v18 = *v36;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v34 = [*(*(&v35 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v39.__begin_, &v34);
      }

      v17 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v17);
  }

  if (v39.__end_ == v39.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    begin = v39.__begin_;
  }

  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v39.__end_ - v39.__begin_);
  v22 = [(FTBatchTranslationCacheContainer *)self sentence_count];
  v23 = [(FTBatchTranslationCacheContainer *)self translated_text_romanized];
  v24 = v23;
  if (!v23)
  {
    v23 = &stru_284834138;
  }

  v25 = [(__CFString *)v23 UTF8String];
  v26 = strlen(v25);
  LODWORD(v25) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v25, v26);

  v27 = [(FTBatchTranslationCacheContainer *)self contains_masked_profanity];
  *(a3 + 70) = 1;
  v28 = *(a3 + 8);
  v29 = *(a3 + 12);
  v30 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v21);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v22, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v25);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 14, v27, 0);
  v31.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v28 - v29 + v30);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBatchTranslationCacheContainer *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__48__FTBatchTranslationCacheContainer_flatbuffData__block_invoke(uint64_t a1)
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