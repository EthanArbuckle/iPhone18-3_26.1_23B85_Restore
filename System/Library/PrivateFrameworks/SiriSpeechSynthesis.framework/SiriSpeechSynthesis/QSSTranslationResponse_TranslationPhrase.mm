@interface QSSTranslationResponse_TranslationPhrase
- (BOOL)low_confidence;
- (NSArray)spans;
- (NSArray)translated_tokens;
- (NSString)meta_info;
- (Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)buffer;
- (QSSTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)data root:(const TranslationPhrase *)root verify:(BOOL)verify;
- (float)confidence;
- (id)flatbuffData;
@end

@implementation QSSTranslationResponse_TranslationPhrase

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
  v2.var0 = [(QSSTranslationResponse_TranslationPhrase *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

- (Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)buffer
{
  v45 = *MEMORY[0x277D85DE8];
  [(QSSTranslationResponse_TranslationPhrase *)self confidence];
  v6 = v5;
  translated_tokens = [(QSSTranslationResponse_TranslationPhrase *)self translated_tokens];
  v8 = [translated_tokens count];
  if (v8)
  {
    if (!(v8 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v8);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(QSSTranslationResponse_TranslationPhrase *)self translated_tokens];
  selfCopy = self;
  if ([obj countByEnumeratingWithState:&v39 objects:v44 count:16])
  {
    *v40;
    *v40;
    [**(&v39 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v9 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  meta_info = [(QSSTranslationResponse_TranslationPhrase *)self meta_info];
  v11 = meta_info;
  if (!meta_info)
  {
    meta_info = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)meta_info UTF8String];
  v13 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v13);

  memset(&v38, 0, sizeof(v38));
  spans = [(QSSTranslationResponse_TranslationPhrase *)selfCopy spans];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v38, [spans count]);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  spans2 = [(QSSTranslationResponse_TranslationPhrase *)selfCopy spans];
  v17 = [spans2 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v17)
  {
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(spans2);
        }

        v33 = [*(*(&v34 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v38, &v33);
      }

      v17 = [spans2 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v17);
  }

  begin = v38.__begin_;
  if (v38.__end_ == v38.__begin_)
  {
    v21 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    v21 = v38.__begin_;
  }

  v22 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v21, v38.__end_ - v38.__begin_);
  low_confidence = [(QSSTranslationResponse_TranslationPhrase *)selfCopy low_confidence];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v24 = *(buffer + 8);
  v25 = *(buffer + 12);
  v26 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 4, v6);
  if (v9)
  {
    v27 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v9);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v27);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v22);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 12, low_confidence);
  v28.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v24 - v25 + v26);
  if (begin)
  {
    operator delete(begin);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)low_confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSArray)spans
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
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
            v11 = [[QSSRepeatedSpan alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"spans"];
  }

  return array;
}

- (NSString)meta_info
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

- (NSArray)translated_tokens
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_tokens"];
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
            v11 = [[QSSTranslationResponse_TranslationToken alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"translated_tokens"];
  }

  return array;
}

- (float)confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 5u)
  {
    v5 = *v3[4].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (QSSTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)data root:(const TranslationPhrase *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTranslationResponse_TranslationPhrase;
  v10 = [(QSSTranslationResponse_TranslationPhrase *)&v29 init];
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
        if (!siri::speech::schema_fb::TranslationResponse_::TranslationPhrase::Verify(v19, &v24))
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