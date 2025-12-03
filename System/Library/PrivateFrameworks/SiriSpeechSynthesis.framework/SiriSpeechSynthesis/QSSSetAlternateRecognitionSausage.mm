@interface QSSSetAlternateRecognitionSausage
- (NSArray)positional_tok_phrase_alt;
- (Offset<siri::speech::schema_fb::SetAlternateRecognitionSausage>)addObjectToBuffer:(void *)buffer;
- (QSSSetAlternateRecognitionSausage)initWithFlatbuffData:(id)data root:(const SetAlternateRecognitionSausage *)root verify:(BOOL)verify;
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

- (Offset<siri::speech::schema_fb::SetAlternateRecognitionSausage>)addObjectToBuffer:(void *)buffer
{
  v26 = *MEMORY[0x277D85DE8];
  memset(&v24, 0, sizeof(v24));
  positional_tok_phrase_alt = [(QSSSetAlternateRecognitionSausage *)self positional_tok_phrase_alt];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v24, [positional_tok_phrase_alt count]);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  positional_tok_phrase_alt2 = [(QSSSetAlternateRecognitionSausage *)self positional_tok_phrase_alt];
  v7 = [positional_tok_phrase_alt2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(positional_tok_phrase_alt2);
        }

        v19 = [*(*(&v20 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v24, &v19);
      }

      v7 = [positional_tok_phrase_alt2 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v11, v24.__end_ - v24.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v13 = *(buffer + 5);
  v14 = *(buffer + 6);
  v15 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>>>(buffer, v12);
  v16.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v15 - v14 + v13);
  if (begin)
  {
    operator delete(begin);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (NSArray)positional_tok_phrase_alt
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"positional_tok_phrase_alt"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
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
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"positional_tok_phrase_alt"];
  }

  return array;
}

- (QSSSetAlternateRecognitionSausage)initWithFlatbuffData:(id)data root:(const SetAlternateRecognitionSausage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSSetAlternateRecognitionSausage;
  v10 = [(QSSSetAlternateRecognitionSausage *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end