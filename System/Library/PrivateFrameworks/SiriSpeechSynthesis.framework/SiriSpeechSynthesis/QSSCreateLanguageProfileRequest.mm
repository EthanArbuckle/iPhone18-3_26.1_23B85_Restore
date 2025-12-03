@interface QSSCreateLanguageProfileRequest
- (NSArray)user_data;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::CreateLanguageProfileRequest>)addObjectToBuffer:(void *)buffer;
- (QSSCreateLanguageProfileRequest)initWithFlatbuffData:(id)data root:(const CreateLanguageProfileRequest *)root verify:(BOOL)verify;
- (QSSUserLanguageProfile)user_language_profile;
- (id)flatbuffData;
@end

@implementation QSSCreateLanguageProfileRequest

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
  v2.var0 = [(QSSCreateLanguageProfileRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__47__QSSCreateLanguageProfileRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::CreateLanguageProfileRequest>)addObjectToBuffer:(void *)buffer
{
  v38 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSCreateLanguageProfileRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSCreateLanguageProfileRequest *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v30 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  language = [(QSSCreateLanguageProfileRequest *)self language];
  v14 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v16 = strlen(uTF8String3);
  v29 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  user_data = [(QSSCreateLanguageProfileRequest *)self user_data];
  v18 = [user_data count];
  if (v18)
  {
    if (!(v18 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v18);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(QSSCreateLanguageProfileRequest *)self user_data];
  if ([obj countByEnumeratingWithState:&v33 objects:v37 count:16])
  {
    *v34;
    *v34;
    [**(&v33 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v19 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  user_language_profile = [(QSSCreateLanguageProfileRequest *)self user_language_profile];
  v21 = [user_language_profile addObjectToBuffer:buffer];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v22 = *(buffer + 8);
  v23 = *(buffer + 12);
  v24 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v30);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v29);
  if (v19)
  {
    v25 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v19);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v25);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v21);
  v26.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v22 - v23 + v24);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (QSSUserLanguageProfile)user_language_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_language_profile"];
  if (!v3)
  {
    v4 = [QSSUserLanguageProfile alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSUserLanguageProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_language_profile"];
  }

  return v3;
}

- (NSArray)user_data
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_data"];
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
            v11 = [[QSSCategoryData alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"user_data"];
  }

  return array;
}

- (NSString)language
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

- (QSSCreateLanguageProfileRequest)initWithFlatbuffData:(id)data root:(const CreateLanguageProfileRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v43.receiver = self;
  v43.super_class = QSSCreateLanguageProfileRequest;
  v10 = [(QSSCreateLanguageProfileRequest *)&v43 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_46;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_47;
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
    goto LABEL_45;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_47;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v38 = bytes3;
  v39 = v18;
  v40 = xmmword_26914CD70;
  v41 = 0;
  LOBYTE(v42) = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_45;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v38, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v38, 4u))
  {
    goto LABEL_47;
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

  if (!flatbuffers::Verifier::VerifyString(&v38, v22) || !flatbuffers::Table::VerifyOffset(v19, &v38, 6u))
  {
    goto LABEL_47;
  }

  v23 = (v19 - *v19);
  if (*v23 >= 7u && (v24 = v23[3]) != 0)
  {
    v25 = v19 + v24 + *(v19 + v24);
  }

  else
  {
    v25 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v38, v25) || !flatbuffers::Table::VerifyOffset(v19, &v38, 8u))
  {
    goto LABEL_47;
  }

  v26 = (v19 - *v19);
  if (*v26 >= 9u && (v27 = v26[4]) != 0)
  {
    v28 = v19 + v27 + *(v19 + v27);
  }

  else
  {
    v28 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v38, v28) || !flatbuffers::Table::VerifyOffset(v19, &v38, 0xAu))
  {
    goto LABEL_47;
  }

  v29 = *v19;
  if (*(v19 - v29) < 0xBu)
  {
LABEL_39:
    v31 = 0;
    goto LABEL_40;
  }

  if (!*(v19 - v29 + 10))
  {
    goto LABEL_37;
  }

  if (!flatbuffers::Verifier::VerifyVectorOrString(&v38, v19 + *(v19 - v29 + 10) + *(v19 + *(v19 - v29 + 10)), 4uLL, 0))
  {
LABEL_47:
    v36 = 0;
    goto LABEL_48;
  }

  v29 = *v19;
  if (*(v19 - v29) < 0xBu)
  {
    goto LABEL_39;
  }

LABEL_37:
  v30 = *(v19 - v29 + 10);
  if (!v30)
  {
    goto LABEL_39;
  }

  v31 = (v19 + v30 + *(v19 + v30));
LABEL_40:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::CategoryData>(&v38, v31))
  {
    goto LABEL_47;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v38, 0xCu))
  {
    goto LABEL_47;
  }

  v32 = (v19 - *v19);
  if (*v32 >= 0xDu)
  {
    v33 = v32[6];
    if (v33)
    {
      if (!siri::speech::schema_fb::UserLanguageProfile::Verify((v19 + v33 + *(v19 + v33)), &v38))
      {
        goto LABEL_47;
      }
    }
  }

LABEL_45:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_46:
  v36 = v11;
LABEL_48:

  return v36;
}

@end