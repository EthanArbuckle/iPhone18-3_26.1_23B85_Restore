@interface QSSTTSPhonemeSequence
- (NSArray)word_phonemes;
- (Offset<siri::speech::schema_fb::TTSPhonemeSequence>)addObjectToBuffer:(void *)buffer;
- (QSSTTSPhonemeSequence)initWithFlatbuffData:(id)data root:(const TTSPhonemeSequence *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSTTSPhonemeSequence

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
  v2.var0 = [(QSSTTSPhonemeSequence *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__37__QSSTTSPhonemeSequence_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TTSPhonemeSequence>)addObjectToBuffer:(void *)buffer
{
  v21 = *MEMORY[0x277D85DE8];
  word_phonemes = [(QSSTTSPhonemeSequence *)self word_phonemes];
  v6 = [word_phonemes count];
  if (v6)
  {
    if (!(v6 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v6);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(QSSTTSPhonemeSequence *)self word_phonemes];
  if ([obj countByEnumeratingWithState:&v16 objects:v20 count:16])
  {
    *v17;
    *v17;
    [**(&v16 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v7 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v8 = *(buffer + 5);
  v9 = *(buffer + 6);
  v10 = *(buffer + 4);
  if (v7)
  {
    v11 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v7);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v11);
  }

  v12.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v10 - v9 + v8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (NSArray)word_phonemes
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_phonemes"];
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
            v11 = [[QSSTTSWordPhonemes alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"word_phonemes"];
  }

  return array;
}

- (QSSTTSPhonemeSequence)initWithFlatbuffData:(id)data root:(const TTSPhonemeSequence *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTTSPhonemeSequence;
  v10 = [(QSSTTSPhonemeSequence *)&v29 init];
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
        if (!siri::speech::schema_fb::TTSPhonemeSequence::Verify(v19, &v24))
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