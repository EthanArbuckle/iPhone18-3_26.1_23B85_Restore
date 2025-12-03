@interface QSSGraphemeToPhonemeResponse
- (BOOL)is_pron_guessed;
- (NSArray)aot_token_prons;
- (NSArray)jit_token_prons;
- (NSArray)phonemes;
- (NSString)g2p_model_version;
- (NSString)g2p_version;
- (NSString)phoneset_version;
- (NSString)return_str;
- (NSString)session_id;
- (Offset<siri::speech::schema_fb::GraphemeToPhonemeResponse>)addObjectToBuffer:(void *)buffer;
- (QSSGraphemeToPhonemeResponse)initWithFlatbuffData:(id)data root:(const GraphemeToPhonemeResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSGraphemeToPhonemeResponse

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
  v2.var0 = [(QSSGraphemeToPhonemeResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__44__QSSGraphemeToPhonemeResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::GraphemeToPhonemeResponse>)addObjectToBuffer:(void *)buffer
{
  v83 = *MEMORY[0x277D85DE8];
  session_id = [(QSSGraphemeToPhonemeResponse *)self session_id];
  v6 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)session_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  return_code = [(QSSGraphemeToPhonemeResponse *)self return_code];
  return_str = [(QSSGraphemeToPhonemeResponse *)self return_str];
  v10 = return_str;
  if (!return_str)
  {
    return_str = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)return_str UTF8String];
  v12 = strlen(uTF8String2);
  v61 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  memset(&v79, 0, sizeof(v79));
  phonemes = [(QSSGraphemeToPhonemeResponse *)self phonemes];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v79, [phonemes count]);

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  phonemes2 = [(QSSGraphemeToPhonemeResponse *)self phonemes];
  v15 = [phonemes2 countByEnumeratingWithState:&v75 objects:v82 count:16];
  if (v15)
  {
    v16 = *v76;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v76 != v16)
        {
          objc_enumerationMutation(phonemes2);
        }

        uTF8String3 = [*(*(&v75 + 1) + 8 * i) UTF8String];
        v19 = strlen(uTF8String3);
        LODWORD(v74.__begin_) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v79, &v74);
      }

      v15 = [phonemes2 countByEnumeratingWithState:&v75 objects:v82 count:16];
    }

    while (v15);
  }

  begin = v79.__begin_;
  if (v79.__end_ == v79.__begin_)
  {
    v21 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v21 = v79.__begin_;
  }

  v60 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v21, v79.__end_ - v79.__begin_);
  is_pron_guessed = [(QSSGraphemeToPhonemeResponse *)self is_pron_guessed];
  g2p_version = [(QSSGraphemeToPhonemeResponse *)self g2p_version];
  v23 = g2p_version;
  if (!g2p_version)
  {
    g2p_version = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)g2p_version UTF8String];
  v25 = strlen(uTF8String4);
  v58 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v25);

  g2p_model_version = [(QSSGraphemeToPhonemeResponse *)self g2p_model_version];
  v27 = g2p_model_version;
  if (!g2p_model_version)
  {
    g2p_model_version = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)g2p_model_version UTF8String];
  v29 = strlen(uTF8String5);
  v57 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v29);

  phoneset_version = [(QSSGraphemeToPhonemeResponse *)self phoneset_version];
  v31 = phoneset_version;
  if (!phoneset_version)
  {
    phoneset_version = &stru_2879AE8E0;
  }

  uTF8String6 = [(__CFString *)phoneset_version UTF8String];
  v33 = strlen(uTF8String6);
  v56 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v33);

  memset(&v74, 0, sizeof(v74));
  aot_token_prons = [(QSSGraphemeToPhonemeResponse *)self aot_token_prons];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v74, [aot_token_prons count]);

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  aot_token_prons2 = [(QSSGraphemeToPhonemeResponse *)self aot_token_prons];
  v36 = [aot_token_prons2 countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (v36)
  {
    v37 = *v71;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v71 != v37)
        {
          objc_enumerationMutation(aot_token_prons2);
        }

        LODWORD(v69.__begin_) = [*(*(&v70 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v74, &v69);
      }

      v36 = [aot_token_prons2 countByEnumeratingWithState:&v70 objects:v81 count:16];
    }

    while (v36);
  }

  v39 = v74.__begin_;
  if (v74.__end_ == v74.__begin_)
  {
    v40 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TokenProns>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TokenProns>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TokenProns>> const&)::t;
  }

  else
  {
    v40 = v74.__begin_;
  }

  v41 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v40, v74.__end_ - v74.__begin_);
  memset(&v69, 0, sizeof(v69));
  jit_token_prons = [(QSSGraphemeToPhonemeResponse *)self jit_token_prons];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v69, [jit_token_prons count]);

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  jit_token_prons2 = [(QSSGraphemeToPhonemeResponse *)self jit_token_prons];
  v44 = [jit_token_prons2 countByEnumeratingWithState:&v65 objects:v80 count:16];
  if (v44)
  {
    v45 = *v66;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v66 != v45)
        {
          objc_enumerationMutation(jit_token_prons2);
        }

        v64 = [*(*(&v65 + 1) + 8 * k) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v69, &v64);
      }

      v44 = [jit_token_prons2 countByEnumeratingWithState:&v65 objects:v80 count:16];
    }

    while (v44);
  }

  v47 = v69.__begin_;
  if (v69.__end_ == v69.__begin_)
  {
    v48 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TokenProns>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TokenProns>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TokenProns>> const&)::t;
  }

  else
  {
    v48 = v69.__begin_;
  }

  v49 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v48, v69.__end_ - v69.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v50 = *(buffer + 8);
  v51 = *(buffer + 12);
  v52 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, return_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v61);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v60);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 12, is_pron_guessed);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v58);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, v57);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, v56);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 20, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 22, v49);
  v53.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v50 - v51 + v52);
  if (v47)
  {
    operator delete(v47);
  }

  if (v39)
  {
    operator delete(v39);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v54 = *MEMORY[0x277D85DE8];
  return v53;
}

- (NSArray)jit_token_prons
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"jit_token_prons"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x17u)
    {
      v6 = *v5[22].var0;
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
            v11 = [[QSSTokenProns alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"jit_token_prons"];
  }

  return array;
}

- (NSArray)aot_token_prons
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"aot_token_prons"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x15u)
    {
      v6 = *v5[20].var0;
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
            v11 = [[QSSTokenProns alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"aot_token_prons"];
  }

  return array;
}

- (NSString)phoneset_version
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

- (NSString)g2p_model_version
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 16].var0;
  if (*root[-v3 + 16].var0)
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

- (NSString)g2p_version
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

- (BOOL)is_pron_guessed
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSArray)phonemes
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
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
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v10[*v10->var0 + 4] length:*v10[*v10->var0].var0 encoding:4];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"phonemes"];
  }

  return array;
}

- (NSString)return_str
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

- (NSString)session_id
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

- (QSSGraphemeToPhonemeResponse)initWithFlatbuffData:(id)data root:(const GraphemeToPhonemeResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v53.receiver = self;
  v53.super_class = QSSGraphemeToPhonemeResponse;
  v10 = [(QSSGraphemeToPhonemeResponse *)&v53 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_81;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_82;
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
    goto LABEL_80;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_82;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v48 = bytes3;
  v49 = v18;
  v50 = xmmword_26914CD70;
  v51 = 0;
  v52 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_80;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v48, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v48, 4u))
  {
    goto LABEL_82;
  }

  v20 = (v19 - *v19);
  if (*v20 >= 5u && (v21 = v20[2]) != 0)
  {
    v22 = v19 + v21 + *(v19 + v21);
  }

  else
  {
    v22 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v48, v22))
  {
    goto LABEL_82;
  }

  v23 = (v19 - *v19);
  v24 = *v23;
  if (v24 >= 7 && v23[3] && (v49 < 5 || v49 - 4 < v19 + v23[3] - v48))
  {
    goto LABEL_82;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 8u))
  {
    goto LABEL_82;
  }

  v25 = v24 >= 9 && v23[4] ? v19 + v23[4] + *(v19 + v23[4]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v48, v25) || !flatbuffers::Table::VerifyOffset(v19, &v48, 0xAu))
  {
    goto LABEL_82;
  }

  v26 = *v19;
  if (*(v19 - v26) < 0xBu)
  {
    goto LABEL_37;
  }

  if (*(v19 - v26 + 10))
  {
    if (!flatbuffers::Verifier::VerifyVectorOrString(&v48, v19 + *(v19 - v26 + 10) + *(v19 + *(v19 - v26 + 10)), 4uLL, 0))
    {
      goto LABEL_82;
    }

    v26 = *v19;
    if (*(v19 - v26) < 0xBu)
    {
      goto LABEL_37;
    }
  }

  v27 = *(v19 - v26 + 10);
  if (!v27)
  {
LABEL_37:
    v28 = 0;
  }

  else
  {
    v28 = (v19 + v27 + *(v19 + v27));
  }

  if (!flatbuffers::Verifier::VerifyVectorOfStrings(&v48, v28))
  {
    goto LABEL_82;
  }

  v29 = (v19 - *v19);
  v30 = *v29;
  if (v30 >= 0xD && v29[6] && (v49 < 2 || v49 - 1 < v19 + v29[6] - v48))
  {
    goto LABEL_82;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0xEu))
  {
    goto LABEL_82;
  }

  v31 = v30 >= 0xF && v29[7] ? v19 + v29[7] + *(v19 + v29[7]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v48, v31) || !flatbuffers::Table::VerifyOffset(v19, &v48, 0x10u))
  {
    goto LABEL_82;
  }

  v32 = (v19 - *v19);
  if (*v32 >= 0x11u && (v33 = v32[8]) != 0)
  {
    v34 = v19 + v33 + *(v19 + v33);
  }

  else
  {
    v34 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v48, v34) || !flatbuffers::Table::VerifyOffset(v19, &v48, 0x12u))
  {
    goto LABEL_82;
  }

  v35 = (v19 - *v19);
  if (*v35 >= 0x13u && (v36 = v35[9]) != 0)
  {
    v37 = v19 + v36 + *(v19 + v36);
  }

  else
  {
    v37 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v48, v37) || !flatbuffers::Table::VerifyOffset(v19, &v48, 0x14u))
  {
    goto LABEL_82;
  }

  v38 = *v19;
  if (*(v19 - v38) < 0x15u)
  {
    goto LABEL_69;
  }

  if (*(v19 - v38 + 20))
  {
    if (!flatbuffers::Verifier::VerifyVectorOrString(&v48, v19 + *(v19 - v38 + 20) + *(v19 + *(v19 - v38 + 20)), 4uLL, 0))
    {
      goto LABEL_82;
    }

    v38 = *v19;
    if (*(v19 - v38) < 0x15u)
    {
      goto LABEL_69;
    }
  }

  v39 = *(v19 - v38 + 20);
  if (!v39)
  {
LABEL_69:
    v40 = 0;
  }

  else
  {
    v40 = (v19 + v39 + *(v19 + v39));
  }

  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TokenProns>(&v48, v40) || !flatbuffers::Table::VerifyOffset(v19, &v48, 0x16u))
  {
    goto LABEL_82;
  }

  v41 = *v19;
  if (*(v19 - v41) < 0x17u)
  {
    goto LABEL_78;
  }

  if (*(v19 - v41 + 22))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v48, v19 + *(v19 - v41 + 22) + *(v19 + *(v19 - v41 + 22)), 4uLL, 0))
    {
      v41 = *v19;
      if (*(v19 - v41) < 0x17u)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

LABEL_82:
    v46 = 0;
    goto LABEL_83;
  }

LABEL_76:
  v42 = *(v19 - v41 + 22);
  if (v42)
  {
    v43 = (v19 + v42 + *(v19 + v42));
    goto LABEL_79;
  }

LABEL_78:
  v43 = 0;
LABEL_79:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TokenProns>(&v48, v43))
  {
    goto LABEL_82;
  }

LABEL_80:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_81:
  v46 = v11;
LABEL_83:

  return v46;
}

@end