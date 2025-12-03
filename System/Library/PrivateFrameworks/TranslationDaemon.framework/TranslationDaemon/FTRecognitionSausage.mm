@interface FTRecognitionSausage
- (FTRecognitionSausage)initWithFlatbuffData:(id)data root:(const RecognitionSausage *)root verify:(BOOL)verify;
- (NSArray)positional_tok_phrase_alt;
- (Offset<siri::speech::schema_fb::RecognitionSausage>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)positional_tok_phrase_alt_objectAtIndex:(unint64_t)index;
- (unint64_t)positional_tok_phrase_alt_count;
- (void)positional_tok_phrase_alt_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTRecognitionSausage

- (FTRecognitionSausage)initWithFlatbuffData:(id)data root:(const RecognitionSausage *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTRecognitionSausage;
  v10 = [(FTRecognitionSausage *)&v25 init];
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

  if (!siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify(v18, v21))
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

- (NSArray)positional_tok_phrase_alt
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"positional_tok_phrase_alt"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__FTRecognitionSausage_positional_tok_phrase_alt__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRecognitionSausage *)self positional_tok_phrase_alt_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"positional_tok_phrase_alt"];
  }

  return v3;
}

- (id)positional_tok_phrase_alt_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"positional_tok_phrase_alt"];
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
      v7 = [[FTRecognitionPhraseTokensAlternatives alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)positional_tok_phrase_alt_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"positional_tok_phrase_alt"];
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

- (void)positional_tok_phrase_alt_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"positional_tok_phrase_alt"];
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
            v15 = [[FTRecognitionPhraseTokensAlternatives alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::RecognitionSausage>)addObjectToBuffer:(void *)buffer
{
  v25 = *MEMORY[0x277D85DE8];
  memset(&v23, 0, sizeof(v23));
  positional_tok_phrase_alt = [(FTRecognitionSausage *)self positional_tok_phrase_alt];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v23, [positional_tok_phrase_alt count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  positional_tok_phrase_alt2 = [(FTRecognitionSausage *)self positional_tok_phrase_alt];
  v7 = [positional_tok_phrase_alt2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(positional_tok_phrase_alt2);
        }

        v18 = [*(*(&v19 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v23.__begin_, &v18);
      }

      v7 = [positional_tok_phrase_alt2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (v23.__end_ == v23.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>> const&)::t;
  }

  else
  {
    begin = v23.__begin_;
  }

  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v23.__end_ - v23.__begin_);
  *(buffer + 70) = 1;
  v12 = *(buffer + 5);
  v13 = *(buffer + 6);
  v14 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v11);
  v15.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v14 - v13 + v12);
  if (v23.__begin_)
  {
    v23.__end_ = v23.__begin_;
    operator delete(v23.__begin_);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRecognitionSausage *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__36__FTRecognitionSausage_flatbuffData__block_invoke(uint64_t a1)
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