@interface QSSBatchTranslationResponse_TranslatedSentence
- (NSArray)n_best_choices;
- (NSString)engine_input;
- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>)addObjectToBuffer:(void *)buffer;
- (QSSBatchTranslationResponse_TranslatedSentence)initWithFlatbuffData:(id)data root:(const TranslatedSentence *)root verify:(BOOL)verify;
- (QSSSpan)source_span;
- (QSSSpan)target_span;
- (id)flatbuffData;
@end

@implementation QSSBatchTranslationResponse_TranslatedSentence

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
  v2.var0 = [(QSSBatchTranslationResponse_TranslatedSentence *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>)addObjectToBuffer:(void *)buffer
{
  v30 = *MEMORY[0x277D85DE8];
  source_span = [(QSSBatchTranslationResponse_TranslatedSentence *)self source_span];
  v23 = [source_span addObjectToBuffer:buffer];

  engine_input = [(QSSBatchTranslationResponse_TranslatedSentence *)self engine_input];
  v7 = engine_input;
  if (!engine_input)
  {
    engine_input = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)engine_input UTF8String];
  v9 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  target_span = [(QSSBatchTranslationResponse_TranslatedSentence *)self target_span];
  v21 = [target_span addObjectToBuffer:buffer];

  n_best_choices = [(QSSBatchTranslationResponse_TranslatedSentence *)self n_best_choices];
  v12 = [n_best_choices count];
  if (v12)
  {
    if (!(v12 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v12);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(QSSBatchTranslationResponse_TranslatedSentence *)self n_best_choices];
  if ([obj countByEnumeratingWithState:&v25 objects:v29 count:16])
  {
    *v26;
    *v26;
    [**(&v25 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v13 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 8);
  v15 = *(buffer + 12);
  v16 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v23);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v21);
  if (v13)
  {
    v17 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v13);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v17);
  }

  v18.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v14 - v15 + v16);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSArray)n_best_choices
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_choices"];
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
            v11 = [[QSSBatchTranslationResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"n_best_choices"];
  }

  return array;
}

- (QSSSpan)target_span
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"target_span"];
  if (!v3)
  {
    v4 = [QSSSpan alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 9u && (v7 = *v6[8].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSSpan *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"target_span"];
  }

  return v3;
}

- (NSString)engine_input
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

- (QSSSpan)source_span
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"source_span"];
  if (!v3)
  {
    v4 = [QSSSpan alloc];
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

    v3 = [(QSSSpan *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"source_span"];
  }

  return v3;
}

- (QSSBatchTranslationResponse_TranslatedSentence)initWithFlatbuffData:(id)data root:(const TranslatedSentence *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSBatchTranslationResponse_TranslatedSentence;
  v10 = [(QSSBatchTranslationResponse_TranslatedSentence *)&v29 init];
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
        if (!siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence::Verify(v19, &v24))
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