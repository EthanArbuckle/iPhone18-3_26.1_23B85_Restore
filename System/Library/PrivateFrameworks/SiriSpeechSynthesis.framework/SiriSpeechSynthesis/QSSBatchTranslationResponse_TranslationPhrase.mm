@interface QSSBatchTranslationResponse_TranslationPhrase
- (BOOL)low_confidence;
- (NSArray)repeated_spans;
- (NSString)meta_info;
- (NSString)translation_phrase;
- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)buffer;
- (QSSBatchTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)data root:(const TranslationPhrase *)root verify:(BOOL)verify;
- (float)confidence;
- (id)flatbuffData;
@end

@implementation QSSBatchTranslationResponse_TranslationPhrase

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
  v2.var0 = [(QSSBatchTranslationResponse_TranslationPhrase *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)buffer
{
  v39 = *MEMORY[0x277D85DE8];
  [(QSSBatchTranslationResponse_TranslationPhrase *)self confidence];
  v6 = v5;
  translation_phrase = [(QSSBatchTranslationResponse_TranslationPhrase *)self translation_phrase];
  v8 = translation_phrase;
  if (!translation_phrase)
  {
    translation_phrase = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)translation_phrase UTF8String];
  v10 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v10);

  meta_info = [(QSSBatchTranslationResponse_TranslationPhrase *)self meta_info];
  v13 = meta_info;
  if (!meta_info)
  {
    meta_info = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)meta_info UTF8String];
  v15 = strlen(uTF8String2);
  v16 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v15);

  low_confidence = [(QSSBatchTranslationResponse_TranslationPhrase *)self low_confidence];
  memset(&v37, 0, sizeof(v37));
  repeated_spans = [(QSSBatchTranslationResponse_TranslationPhrase *)self repeated_spans];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v37, [repeated_spans count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  repeated_spans2 = [(QSSBatchTranslationResponse_TranslationPhrase *)self repeated_spans];
  v20 = [repeated_spans2 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v20)
  {
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(repeated_spans2);
        }

        v32 = [*(*(&v33 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v37, &v32);
      }

      v20 = [repeated_spans2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v20);
  }

  begin = v37.__begin_;
  if (v37.__end_ == v37.__begin_)
  {
    v24 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    v24 = v37.__begin_;
  }

  v25 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v24, v37.__end_ - v37.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v26 = *(buffer + 8);
  v27 = *(buffer + 12);
  v28 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 4, v6);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v16);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 10, low_confidence);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v25);
  v29.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v26 - v27 + v28);
  if (begin)
  {
    operator delete(begin);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (NSArray)repeated_spans
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"repeated_spans"];
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
            v11 = [[QSSRepeatedSpan alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"repeated_spans"];
  }

  return array;
}

- (BOOL)low_confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
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

- (NSString)translation_phrase
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

- (QSSBatchTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)data root:(const TranslationPhrase *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSBatchTranslationResponse_TranslationPhrase;
  v10 = [(QSSBatchTranslationResponse_TranslationPhrase *)&v29 init];
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
        if (!siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase::Verify(v19, &v24))
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