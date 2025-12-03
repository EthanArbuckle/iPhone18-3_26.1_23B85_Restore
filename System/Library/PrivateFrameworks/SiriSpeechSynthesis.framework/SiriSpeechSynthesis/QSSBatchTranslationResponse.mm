@interface QSSBatchTranslationResponse
- (NSArray)span;
- (NSArray)translated_sentences;
- (NSString)paragraph_id;
- (NSString)request_id;
- (NSString)return_string;
- (NSString)translated_text;
- (Offset<siri::speech::schema_fb::BatchTranslationResponse>)addObjectToBuffer:(void *)buffer;
- (QSSBatchTranslationResponse)initWithFlatbuffData:(id)data root:(const BatchTranslationResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSBatchTranslationResponse

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
  v2.var0 = [(QSSBatchTranslationResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__43__QSSBatchTranslationResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::BatchTranslationResponse>)addObjectToBuffer:(void *)buffer
{
  v56 = *MEMORY[0x277D85DE8];
  request_id = [(QSSBatchTranslationResponse *)self request_id];
  v6 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)request_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  return_code = [(QSSBatchTranslationResponse *)self return_code];
  return_string = [(QSSBatchTranslationResponse *)self return_string];
  v11 = return_string;
  if (!return_string)
  {
    return_string = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)return_string UTF8String];
  v13 = strlen(uTF8String2);
  v41 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  paragraph_id = [(QSSBatchTranslationResponse *)self paragraph_id];
  v15 = paragraph_id;
  if (!paragraph_id)
  {
    paragraph_id = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)paragraph_id UTF8String];
  v17 = strlen(uTF8String3);
  v40 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v17);

  translated_text = [(QSSBatchTranslationResponse *)self translated_text];
  v19 = translated_text;
  if (!translated_text)
  {
    translated_text = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)translated_text UTF8String];
  v21 = strlen(uTF8String4);
  v39 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v21);

  memset(&v53, 0, sizeof(v53));
  span = [(QSSBatchTranslationResponse *)self span];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v53, [span count]);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  span2 = [(QSSBatchTranslationResponse *)self span];
  v24 = [span2 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v24)
  {
    v25 = *v50;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(span2);
        }

        v48 = [*(*(&v49 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v53, &v48);
      }

      v24 = [span2 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v24);
  }

  if (v53.__end_ == v53.__begin_)
  {
    begin = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    begin = v53.__begin_;
  }

  v38 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, begin, v53.__end_ - v53.__begin_);
  translated_sentences = [(QSSBatchTranslationResponse *)self translated_sentences];
  v29 = [translated_sentences count];
  if (v29)
  {
    if (!(v29 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v29);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(QSSBatchTranslationResponse *)self translated_sentences];
  if ([obj countByEnumeratingWithState:&v44 objects:v54 count:16])
  {
    *v45;
    *v45;
    [**(&v44 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v30 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v31 = *(buffer + 8);
  v32 = *(buffer + 12);
  v33 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, return_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v39);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v38);
  if (v30)
  {
    v34 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v30);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, v34);
  }

  v35.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v31 - v32 + v33);
  if (v53.__begin_)
  {
    operator delete(v53.__begin_);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (NSArray)translated_sentences
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_sentences"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x11u)
    {
      v6 = *v5[16].var0;
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
            v11 = [[QSSBatchTranslationResponse_TranslatedSentence alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"translated_sentences"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__62__QSSBatchTranslationResponse_TranslatedSentence_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

flatbuffers::DetachedBuffer *__61__QSSBatchTranslationResponse_TranslationPhrase_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSArray)span
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xFu)
    {
      v6 = *v5[14].var0;
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

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"span"];
  }

  return array;
}

- (NSString)translated_text
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 12].var0;
  if (*root[-v3 + 12].var0)
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

- (NSString)paragraph_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 10].var0;
  if (*root[-v3 + 10].var0)
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

- (NSString)return_string
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

- (int)return_code
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

- (NSString)request_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 4].var0;
  if (*root[-v3 + 4].var0)
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

- (QSSBatchTranslationResponse)initWithFlatbuffData:(id)data root:(const BatchTranslationResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSBatchTranslationResponse;
  v10 = [(QSSBatchTranslationResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::BatchTranslationResponse::Verify(v19, &v24))
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