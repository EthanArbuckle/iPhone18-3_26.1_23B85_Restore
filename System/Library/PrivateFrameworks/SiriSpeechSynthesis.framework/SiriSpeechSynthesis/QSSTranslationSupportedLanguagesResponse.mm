@interface QSSTranslationSupportedLanguagesResponse
- (NSArray)language_pairs;
- (NSString)request_id;
- (NSString)return_string;
- (Offset<siri::speech::schema_fb::TranslationSupportedLanguagesResponse>)addObjectToBuffer:(void *)buffer;
- (QSSTranslationSupportedLanguagesResponse)initWithFlatbuffData:(id)data root:(const TranslationSupportedLanguagesResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSTranslationSupportedLanguagesResponse

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
  v2.var0 = [(QSSTranslationSupportedLanguagesResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__56__QSSTranslationSupportedLanguagesResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TranslationSupportedLanguagesResponse>)addObjectToBuffer:(void *)buffer
{
  v32 = *MEMORY[0x277D85DE8];
  request_id = [(QSSTranslationSupportedLanguagesResponse *)self request_id];
  v6 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)request_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  return_code = [(QSSTranslationSupportedLanguagesResponse *)self return_code];
  return_string = [(QSSTranslationSupportedLanguagesResponse *)self return_string];
  v10 = return_string;
  if (!return_string)
  {
    return_string = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)return_string UTF8String];
  v12 = strlen(uTF8String2);
  v23 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  language_pairs = [(QSSTranslationSupportedLanguagesResponse *)self language_pairs];
  v14 = [language_pairs count];
  if (v14)
  {
    if (!(v14 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v14);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(QSSTranslationSupportedLanguagesResponse *)self language_pairs];
  if ([obj countByEnumeratingWithState:&v27 objects:v31 count:16])
  {
    *v28;
    *v28;
    [**(&v27 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v15 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v16 = *(buffer + 8);
  v17 = *(buffer + 12);
  v18 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, return_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v23);
  if (v15)
  {
    v19 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v15);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v19);
  }

  v20.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v16 - v17 + v18);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (NSArray)language_pairs
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_pairs"];
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
            v11 = [[QSSTranslationSupportedLanguagesResponse_LanguagePair alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"language_pairs"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__69__QSSTranslationSupportedLanguagesResponse_LanguagePair_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
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

- (QSSTranslationSupportedLanguagesResponse)initWithFlatbuffData:(id)data root:(const TranslationSupportedLanguagesResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTranslationSupportedLanguagesResponse;
  v10 = [(QSSTranslationSupportedLanguagesResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::TranslationSupportedLanguagesResponse::Verify(v19, &v24))
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