@interface FTRecognitionChoice
- (FTRecognitionChoice)initWithFlatbuffData:(id)a3 root:(const RecognitionChoice *)a4 verify:(BOOL)a5;
- (NSArray)alternative_index;
- (Offset<siri::speech::schema_fb::RecognitionChoice>)addObjectToBuffer:(void *)a3;
- (id)alternative_index_objectAtIndex:(unint64_t)a3;
- (id)flatbuffData;
- (int)confidence;
- (unint64_t)alternative_index_count;
- (void)alternative_index_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTRecognitionChoice

- (FTRecognitionChoice)initWithFlatbuffData:(id)a3 root:(const RecognitionChoice *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTRecognitionChoice;
  v10 = [(FTRecognitionChoice *)&v25 init];
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

- (NSArray)alternative_index
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_index"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__FTRecognitionChoice_alternative_index__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTRecognitionChoice *)self alternative_index_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"alternative_index"];
  }

  return v3;
}

- (id)alternative_index_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_index"];
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
      v7 = [MEMORY[0x277CCABB0] numberWithInt:*root[4 * a3 + 4 + v11 + *root[v11].var0].var0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)alternative_index_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_index"];
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

- (void)alternative_index_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_index"];
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
          v13 = &root[v9 + 4 + v10];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4 * v12)];
            v4[2](v4, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v17 = v14;
            v14 -= 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (int)confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (Offset<siri::speech::schema_fb::RecognitionChoice>)addObjectToBuffer:(void *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  memset(&v24, 0, sizeof(v24));
  v5 = [(FTRecognitionChoice *)self alternative_index];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v24, [v5 count]);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(FTRecognitionChoice *)self alternative_index];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v19 = [*(*(&v20 + 1) + 8 * i) intValue];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v24.__begin_, &v19);
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (v24.__end_ == v24.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    begin = v24.__begin_;
  }

  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<int>(a3, begin, v24.__end_ - v24.__begin_);
  v12 = [(FTRecognitionChoice *)self confidence];
  *(a3 + 70) = 1;
  v13 = *(a3 + 8);
  v14 = *(a3 + 12);
  v15 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v11);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v12, 0);
  v16.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v13 - v14 + v15);
  if (v24.__begin_)
  {
    v24.__end_ = v24.__begin_;
    operator delete(v24.__begin_);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRecognitionChoice *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__35__FTRecognitionChoice_flatbuffData__block_invoke(uint64_t a1)
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