@interface FTSetSpeechContext
- (FTSetSpeechContext)initWithFlatbuffData:(id)data root:(const SetSpeechContext *)root verify:(BOOL)verify;
- (NSArray)context_with_pron_hints;
- (NSArray)contextual_text;
- (NSString)left_context;
- (NSString)right_context;
- (Offset<siri::speech::schema_fb::SetSpeechContext>)addObjectToBuffer:(void *)buffer;
- (id)context_with_pron_hints_objectAtIndex:(unint64_t)index;
- (id)contextual_text_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (unint64_t)context_with_pron_hints_count;
- (unint64_t)contextual_text_count;
- (void)context_with_pron_hints_enumerateObjectsUsingBlock:(id)block;
- (void)contextual_text_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTSetSpeechContext

- (FTSetSpeechContext)initWithFlatbuffData:(id)data root:(const SetSpeechContext *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTSetSpeechContext;
  v10 = [(FTSetSpeechContext *)&v25 init];
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

  if (!siri::speech::schema_fb::SetSpeechContext::Verify(v18, v21))
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

- (NSArray)contextual_text
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__FTSetSpeechContext_contextual_text__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTSetSpeechContext *)self contextual_text_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"contextual_text"];
  }

  return v3;
}

- (id)contextual_text_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
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
      v13 = (v12 + 4 + *(v12 + 4));
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 + 1 length:*v13 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)contextual_text_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
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

- (void)contextual_text_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
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
            blockCopy[2](blockCopy, v16, v12, &v19);
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

- (NSString)left_context
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

- (NSString)right_context
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 8].var0;
  if (*root[-v3 + 8].var0)
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

- (NSArray)context_with_pron_hints
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_with_pron_hints"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__FTSetSpeechContext_context_with_pron_hints__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTSetSpeechContext *)self context_with_pron_hints_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context_with_pron_hints"];
  }

  return v3;
}

- (id)context_with_pron_hints_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_with_pron_hints"];
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
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTContextWithPronHints alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)context_with_pron_hints_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_with_pron_hints"];
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

- (void)context_with_pron_hints_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_with_pron_hints"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
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
            v15 = [[FTContextWithPronHints alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::SetSpeechContext>)addObjectToBuffer:(void *)buffer
{
  v61 = *MEMORY[0x277D85DE8];
  memset(&v58, 0, sizeof(v58));
  contextual_text = [(FTSetSpeechContext *)self contextual_text];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v58, [contextual_text count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  contextual_text2 = [(FTSetSpeechContext *)self contextual_text];
  v7 = [contextual_text2 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v7)
  {
    v8 = *v55;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(contextual_text2);
        }

        uTF8String = [*(*(&v54 + 1) + 8 * i) UTF8String];
        v11 = strlen(uTF8String);
        LODWORD(v53.__begin_) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v11);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v58.__begin_, &v53);
      }

      v7 = [contextual_text2 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v7);
  }

  if (v58.__end_ == v58.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    begin = v58.__begin_;
  }

  v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v58.__end_ - v58.__begin_);
  left_context = [(FTSetSpeechContext *)self left_context];
  v15 = left_context;
  if (!left_context)
  {
    left_context = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)left_context UTF8String];
  v17 = strlen(uTF8String2);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v17);

  right_context = [(FTSetSpeechContext *)self right_context];
  v20 = right_context;
  if (!right_context)
  {
    right_context = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)right_context UTF8String];
  v22 = strlen(uTF8String3);
  v23 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v22);

  memset(&v53, 0, sizeof(v53));
  context_with_pron_hints = [(FTSetSpeechContext *)self context_with_pron_hints];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v53, [context_with_pron_hints count]);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  context_with_pron_hints2 = [(FTSetSpeechContext *)self context_with_pron_hints];
  v47 = v23;
  v48 = String;
  v26 = [context_with_pron_hints2 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v26)
  {
    v27 = *v50;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(context_with_pron_hints2);
        }

        v29 = [*(*(&v49 + 1) + 8 * j) addObjectToBuffer:buffer];
        end = v53.__end_;
        if (v53.__end_ >= v53.__end_cap_.__value_)
        {
          v32 = v53.__begin_;
          v33 = v53.__end_ - v53.__begin_;
          v34 = v53.__end_ - v53.__begin_;
          v35 = v34 + 1;
          if ((v34 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v36 = v53.__end_cap_.__value_ - v53.__begin_;
          if ((v53.__end_cap_.__value_ - v53.__begin_) >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v37 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v53, v37);
          }

          *(4 * v34) = v29;
          v31 = (4 * v34 + 4);
          memcpy(0, v32, v33);
          v38 = v53.__begin_;
          v53.__begin_ = 0;
          v53.__end_ = v31;
          v53.__end_cap_.__value_ = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v53.__end_ = v29;
          v31 = end + 1;
        }

        v53.__end_ = v31;
      }

      v26 = [context_with_pron_hints2 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v26);
  }

  if (v53.__end_ == v53.__begin_)
  {
    v39 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ContextWithPronHints>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ContextWithPronHints>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ContextWithPronHints>> const&)::t;
  }

  else
  {
    v39 = v53.__begin_;
  }

  v40 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v39, v53.__end_ - v53.__begin_);
  *(buffer + 70) = 1;
  v41 = *(buffer + 8);
  v42 = *(buffer + 12);
  v43 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v48);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v40);
  v44.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v41 - v42 + v43);
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

  v45 = *MEMORY[0x277D85DE8];
  return v44;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSetSpeechContext *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__34__FTSetSpeechContext_flatbuffData__block_invoke(uint64_t a1)
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