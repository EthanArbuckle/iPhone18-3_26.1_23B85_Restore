@interface QSSTranslationResponse
- (BOOL)final_message;
- (NSArray)engine_output;
- (NSArray)n_best_translated_phrases;
- (NSString)engine_input;
- (NSString)request_id;
- (NSString)return_string;
- (NSString)sequence_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TranslationResponse>)addObjectToBuffer:(void *)buffer;
- (QSSTranslationResponse)initWithFlatbuffData:(id)data root:(const TranslationResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSTranslationResponse

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
  v2.var0 = [(QSSTranslationResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__38__QSSTranslationResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TranslationResponse>)addObjectToBuffer:(void *)buffer
{
  v66 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSTranslationResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(QSSTranslationResponse *)self request_id];
  v10 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v12 = strlen(uTF8String2);
  v51 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  return_code = [(QSSTranslationResponse *)self return_code];
  return_string = [(QSSTranslationResponse *)self return_string];
  v14 = return_string;
  if (!return_string)
  {
    return_string = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)return_string UTF8String];
  v16 = strlen(uTF8String3);
  v49 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  memset(&v63, 0, sizeof(v63));
  n_best_translated_phrases = [(QSSTranslationResponse *)self n_best_translated_phrases];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v63, [n_best_translated_phrases count]);

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  n_best_translated_phrases2 = [(QSSTranslationResponse *)self n_best_translated_phrases];
  v19 = [n_best_translated_phrases2 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v19)
  {
    v20 = *v60;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(n_best_translated_phrases2);
        }

        LODWORD(v58.__begin_) = [*(*(&v59 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v63, &v58);
      }

      v19 = [n_best_translated_phrases2 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v19);
  }

  begin = v63.__begin_;
  if (v63.__end_ == v63.__begin_)
  {
    v23 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>> const&)::t;
  }

  else
  {
    v23 = v63.__begin_;
  }

  v48 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v23, v63.__end_ - v63.__begin_);
  engine_input = [(QSSTranslationResponse *)self engine_input];
  v25 = engine_input;
  if (!engine_input)
  {
    engine_input = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)engine_input UTF8String];
  v27 = strlen(uTF8String4);
  v28 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v27);

  memset(&v58, 0, sizeof(v58));
  engine_output = [(QSSTranslationResponse *)self engine_output];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v58, [engine_output count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  engine_output2 = [(QSSTranslationResponse *)self engine_output];
  v31 = [engine_output2 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v31)
  {
    v32 = *v55;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v55 != v32)
        {
          objc_enumerationMutation(engine_output2);
        }

        v53 = [*(*(&v54 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v58, &v53);
      }

      v31 = [engine_output2 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v31);
  }

  v34 = v58.__begin_;
  if (v58.__end_ == v58.__begin_)
  {
    v35 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>> const&)::t;
  }

  else
  {
    v35 = v58.__begin_;
  }

  v36 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v35, v58.__end_ - v58.__begin_);
  sequence_id = [(QSSTranslationResponse *)self sequence_id];
  v38 = sequence_id;
  if (!sequence_id)
  {
    sequence_id = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)sequence_id UTF8String];
  v40 = strlen(uTF8String5);
  LODWORD(uTF8String5) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v40);

  final_message = [(QSSTranslationResponse *)self final_message];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v42 = *(buffer + 8);
  v43 = *(buffer + 12);
  v44 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v51);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, return_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v49);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v48);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v28);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, v36);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, uTF8String5);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 20, final_message);
  v45.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v42 - v43 + v44);
  if (v34)
  {
    operator delete(v34);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

- (BOOL)final_message
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)sequence_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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

- (NSArray)engine_output
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"engine_output"];
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
            v11 = [[QSSTranslationResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"engine_output"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__56__QSSTranslationResponse_TranslationPhrase_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

flatbuffers::DetachedBuffer *__55__QSSTranslationResponse_TranslationToken_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSString)engine_input
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 14].var0;
  if (*root[-v3 + 14].var0)
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

- (NSArray)n_best_translated_phrases
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_translated_phrases"];
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
            v11 = [[QSSTranslationResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"n_best_translated_phrases"];
  }

  return array;
}

- (NSString)return_string
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

- (int)return_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
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

- (NSString)speech_id
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

- (QSSTranslationResponse)initWithFlatbuffData:(id)data root:(const TranslationResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTranslationResponse;
  v10 = [(QSSTranslationResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::TranslationResponse::Verify(v19, &v24))
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