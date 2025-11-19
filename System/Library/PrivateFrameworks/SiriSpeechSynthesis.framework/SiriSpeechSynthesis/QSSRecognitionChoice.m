@interface QSSRecognitionChoice
- (NSArray)alternative_index;
- (Offset<siri::speech::schema_fb::RecognitionChoice>)addObjectToBuffer:(void *)a3;
- (QSSRecognitionChoice)initWithFlatbuffData:(id)a3 root:(const RecognitionChoice *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)confidence;
@end

@implementation QSSRecognitionChoice

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
  v2.var0 = [(QSSRecognitionChoice *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__36__QSSRecognitionChoice_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::RecognitionChoice>)addObjectToBuffer:(void *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  memset(&v25, 0, sizeof(v25));
  v5 = [(QSSRecognitionChoice *)self alternative_index];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v25, [v5 count]);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(QSSRecognitionChoice *)self alternative_index];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v20 = [*(*(&v21 + 1) + 8 * i) intValue];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v25, &v20);
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  begin = v25.__begin_;
  if (v25.__end_ == v25.__begin_)
  {
    v11 = &flatbuffers::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    v11 = v25.__begin_;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<int>(a3, v11, v25.__end_ - v25.__begin_);
  v13 = [(QSSRecognitionChoice *)self confidence];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v14 = *(a3 + 8);
  v15 = *(a3 + 12);
  v16 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, v12);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v13);
  v17.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v14 - v15 + v16);
  if (begin)
  {
    operator delete(begin);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
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

- (NSArray)alternative_index
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_index"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 5u)
    {
      v6 = *v5[4].var0;
      if (v6)
      {
        v7 = *root[v6].var0;
        v8 = *root[v6 + v7].var0;
        if (v8)
        {
          v9 = 4 * v8;
          v10 = &root[v7 + 4 + v6];
          do
          {
            v11 = *v10->var0;
            v10 += 4;
            v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
            [v3 addObject:v12];

            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"alternative_index"];
  }

  return v3;
}

- (QSSRecognitionChoice)initWithFlatbuffData:(id)a3 root:(const RecognitionChoice *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSRecognitionChoice;
  v10 = [(QSSRecognitionChoice *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
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

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end