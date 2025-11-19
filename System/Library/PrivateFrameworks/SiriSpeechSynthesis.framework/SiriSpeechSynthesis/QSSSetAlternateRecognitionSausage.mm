@interface QSSSetAlternateRecognitionSausage
- (NSArray)positional_tok_phrase_alt;
- (Offset<siri::speech::schema_fb::SetAlternateRecognitionSausage>)addObjectToBuffer:(void *)a3;
- (QSSSetAlternateRecognitionSausage)initWithFlatbuffData:(id)a3 root:(const SetAlternateRecognitionSausage *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSSetAlternateRecognitionSausage

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
  v2.var0 = [(QSSSetAlternateRecognitionSausage *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__49__QSSSetAlternateRecognitionSausage_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SetAlternateRecognitionSausage>)addObjectToBuffer:(void *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  memset(&v24, 0, sizeof(v24));
  v5 = [(QSSSetAlternateRecognitionSausage *)self positional_tok_phrase_alt];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v24, [v5 count]);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(QSSSetAlternateRecognitionSausage *)self positional_tok_phrase_alt];
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

        v19 = [*(*(&v20 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v24, &v19);
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  begin = v24.__begin_;
  if (v24.__end_ == v24.__begin_)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>> const&)::t;
  }

  else
  {
    v11 = v24.__begin_;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v11, v24.__end_ - v24.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v13 = *(a3 + 5);
  v14 = *(a3 + 6);
  v15 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>>>(a3, v12);
  v16.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v15 - v14 + v13);
  if (begin)
  {
    operator delete(begin);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (NSArray)positional_tok_phrase_alt
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"positional_tok_phrase_alt"];
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
            v11 = [[QSSRecognitionPhraseTokensAlternatives alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"positional_tok_phrase_alt"];
  }

  return v3;
}

- (QSSSetAlternateRecognitionSausage)initWithFlatbuffData:(id)a3 root:(const SetAlternateRecognitionSausage *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSSetAlternateRecognitionSausage;
  v10 = [(QSSSetAlternateRecognitionSausage *)&v29 init];
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
        if (!siri::speech::schema_fb::RecognitionSausage::Verify(v19, &v24))
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