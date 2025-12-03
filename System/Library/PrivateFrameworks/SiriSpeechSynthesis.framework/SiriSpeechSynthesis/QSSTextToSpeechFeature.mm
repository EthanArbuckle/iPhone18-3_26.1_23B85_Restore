@interface QSSTextToSpeechFeature
- (NSArray)neural_phoneme_sequence;
- (NSArray)normalized_text;
- (NSArray)phoneme_sequence;
- (NSArray)prompts;
- (NSArray)replacement;
- (Offset<siri::speech::schema_fb::TextToSpeechFeature>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechFeature)initWithFlatbuffData:(id)data root:(const TextToSpeechFeature *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechFeature

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
  v2.var0 = [(QSSTextToSpeechFeature *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__38__QSSTextToSpeechFeature_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechFeature>)addObjectToBuffer:(void *)buffer
{
  v62 = *MEMORY[0x277D85DE8];
  normalized_text = [(QSSTextToSpeechFeature *)self normalized_text];
  v5 = [normalized_text count];
  if (v5)
  {
    if (!(v5 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v5);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  normalized_text2 = [(QSSTextToSpeechFeature *)self normalized_text];
  if ([normalized_text2 countByEnumeratingWithState:&v53 objects:v61 count:16])
  {
    *v54;
    *v54;
    [**(&v53 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v7 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  phoneme_sequence = [(QSSTextToSpeechFeature *)self phoneme_sequence];
  v9 = [phoneme_sequence count];
  v31 = v7;
  if (v9)
  {
    if (!(v9 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v9);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  phoneme_sequence2 = [(QSSTextToSpeechFeature *)self phoneme_sequence];
  if ([phoneme_sequence2 countByEnumeratingWithState:&v49 objects:v60 count:16])
  {
    *v50;
    *v50;
    [**(&v49 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v34 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  prompts = [(QSSTextToSpeechFeature *)self prompts];
  v12 = [prompts count];
  if (v12)
  {
    if (!(v12 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v12);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  prompts2 = [(QSSTextToSpeechFeature *)self prompts];
  if ([prompts2 countByEnumeratingWithState:&v45 objects:v59 count:16])
  {
    *v46;
    *v46;
    [**(&v45 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v33 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  replacement = [(QSSTextToSpeechFeature *)self replacement];
  v15 = [replacement count];
  if (v15)
  {
    if (!(v15 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v15);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  replacement2 = [(QSSTextToSpeechFeature *)self replacement];
  if ([replacement2 countByEnumeratingWithState:&v41 objects:v58 count:16])
  {
    *v42;
    *v42;
    [**(&v41 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v32 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  neural_phoneme_sequence = [(QSSTextToSpeechFeature *)self neural_phoneme_sequence];
  v18 = [neural_phoneme_sequence count];
  if (v18)
  {
    if (!(v18 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v18);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obja = [(QSSTextToSpeechFeature *)self neural_phoneme_sequence];
  if ([obja countByEnumeratingWithState:&v37 objects:v57 count:16])
  {
    *v38;
    *v38;
    [**(&v37 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v19 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v20 = *(buffer + 8);
  v21 = *(buffer + 12);
  v22 = *(buffer + 10);
  if (v31)
  {
    v23 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v31);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v23);
  }

  if (v34)
  {
    v24 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v34);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v24);
  }

  if (v33)
  {
    v25 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v33);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, v25);
  }

  if (v32)
  {
    v26 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v32);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v26);
  }

  if (v19)
  {
    v27 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v19);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, v27);
  }

  v28.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v20 - v21 + v22);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (NSArray)neural_phoneme_sequence
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"neural_phoneme_sequence"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xDu)
    {
      v6 = *v5[12].var0;
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
            v11 = [[QSSTTSNeuralPhonemeSequence alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"neural_phoneme_sequence"];
  }

  return array;
}

- (NSArray)replacement
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"replacement"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xBu)
    {
      v6 = *v5[10].var0;
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
            v11 = [[QSSTTSReplacement alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"replacement"];
  }

  return array;
}

- (NSArray)prompts
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 9u)
    {
      v6 = *v5[8].var0;
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
            v11 = [[QSSTTSPrompts alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"prompts"];
  }

  return array;
}

- (NSArray)phoneme_sequence
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phoneme_sequence"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 7u)
    {
      v6 = *v5[6].var0;
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
            v11 = [[QSSTTSPhonemeSequence alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"phoneme_sequence"];
  }

  return array;
}

- (NSArray)normalized_text
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"normalized_text"];
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
            v11 = [[QSSTTSNormalizedText alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"normalized_text"];
  }

  return array;
}

- (QSSTextToSpeechFeature)initWithFlatbuffData:(id)data root:(const TextToSpeechFeature *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechFeature;
  v10 = [(QSSTextToSpeechFeature *)&v29 init];
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
        if (!siri::speech::schema_fb::TextToSpeechFeature::Verify(v19, &v24))
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