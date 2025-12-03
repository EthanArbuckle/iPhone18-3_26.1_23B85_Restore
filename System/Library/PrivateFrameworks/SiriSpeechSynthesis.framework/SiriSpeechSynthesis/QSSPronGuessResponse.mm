@interface QSSPronGuessResponse
- (NSArray)human_readable_prons;
- (NSArray)tts_pronunciations;
- (NSString)apg_id;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::PronGuessResponse>)addObjectToBuffer:(void *)buffer;
- (QSSPronGuessResponse)initWithFlatbuffData:(id)data root:(const PronGuessResponse *)root verify:(BOOL)verify;
- (QSSVocToken)voc_token;
- (id)flatbuffData;
- (int)error_code;
@end

@implementation QSSPronGuessResponse

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
  v2.var0 = [(QSSPronGuessResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__36__QSSPronGuessResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::PronGuessResponse>)addObjectToBuffer:(void *)buffer
{
  v63 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSPronGuessResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSPronGuessResponse *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v47 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  error_code = [(QSSPronGuessResponse *)self error_code];
  error_str = [(QSSPronGuessResponse *)self error_str];
  v14 = error_str;
  if (!error_str)
  {
    error_str = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v16 = strlen(uTF8String3);
  v45 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  apg_id = [(QSSPronGuessResponse *)self apg_id];
  v18 = apg_id;
  if (!apg_id)
  {
    apg_id = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)apg_id UTF8String];
  v20 = strlen(uTF8String4);
  v44 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v20);

  voc_token = [(QSSPronGuessResponse *)self voc_token];
  v22 = [voc_token addObjectToBuffer:buffer];

  tts_pronunciations = [(QSSPronGuessResponse *)self tts_pronunciations];
  v24 = [tts_pronunciations count];
  if (v24)
  {
    if (!(v24 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v24);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [(QSSPronGuessResponse *)self tts_pronunciations];
  v49 = v22;
  if ([obj countByEnumeratingWithState:&v57 objects:v62 count:16])
  {
    *v58;
    *v58;
    [**(&v57 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v25 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  memset(&v56, 0, sizeof(v56));
  human_readable_prons = [(QSSPronGuessResponse *)self human_readable_prons];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v56, [human_readable_prons count]);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  human_readable_prons2 = [(QSSPronGuessResponse *)self human_readable_prons];
  v28 = [human_readable_prons2 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v28)
  {
    v29 = *v53;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(human_readable_prons2);
        }

        uTF8String5 = [*(*(&v52 + 1) + 8 * i) UTF8String];
        v32 = strlen(uTF8String5);
        v51 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v32);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v56, &v51);
      }

      v28 = [human_readable_prons2 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v28);
  }

  begin = v56.__begin_;
  if (v56.__end_ == v56.__begin_)
  {
    v34 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v34 = v56.__begin_;
  }

  v35 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v34, v56.__end_ - v56.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v36 = *(buffer + 8);
  v37 = *(buffer + 12);
  v38 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v47);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v45);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v44);
  if (v49)
  {
    v39 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v49);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, v39);
  }

  if (v25)
  {
    v40 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v25);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, v40);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, v35);
  v41.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v36 - v37 + v38);
  if (begin)
  {
    operator delete(begin);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (NSArray)human_readable_prons
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"human_readable_prons"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x13u)
    {
      v6 = *v5[18].var0;
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
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v10[*v10->var0 + 4] length:*v10[*v10->var0].var0 encoding:4];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"human_readable_prons"];
  }

  return array;
}

- (NSArray)tts_pronunciations
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tts_pronunciations"];
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
            v11 = [[QSSPronunciation alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"tts_pronunciations"];
  }

  return array;
}

- (QSSVocToken)voc_token
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voc_token"];
  if (!v3)
  {
    v4 = [QSSVocToken alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xFu && (v7 = *v6[14].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSVocToken *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"voc_token"];
  }

  return v3;
}

- (NSString)apg_id
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

- (NSString)error_str
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

- (int)error_code
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

- (NSString)session_id
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

- (QSSPronGuessResponse)initWithFlatbuffData:(id)data root:(const PronGuessResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSPronGuessResponse;
  v10 = [(QSSPronGuessResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::PronGuessResponse::Verify(v19, &v24))
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