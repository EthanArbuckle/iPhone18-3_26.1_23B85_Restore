@interface QSSCreateLanguageProfileResponse
- (BOOL)incomplete_profile;
- (BOOL)recreate_apg_prons;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::CreateLanguageProfileResponse>)addObjectToBuffer:(void *)buffer;
- (QSSCreateLanguageProfileResponse)initWithFlatbuffData:(id)data root:(const CreateLanguageProfileResponse *)root verify:(BOOL)verify;
- (QSSUserLanguageProfile)user_language_profile;
- (id)flatbuffData;
- (int)error_code;
@end

@implementation QSSCreateLanguageProfileResponse

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
  v2.var0 = [(QSSCreateLanguageProfileResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__48__QSSCreateLanguageProfileResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::CreateLanguageProfileResponse>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(QSSCreateLanguageProfileResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSCreateLanguageProfileResponse *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  error_code = [(QSSCreateLanguageProfileResponse *)self error_code];
  error_str = [(QSSCreateLanguageProfileResponse *)self error_str];
  v17 = error_str;
  if (!error_str)
  {
    error_str = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v19 = strlen(uTF8String3);
  LODWORD(uTF8String3) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);

  user_language_profile = [(QSSCreateLanguageProfileResponse *)self user_language_profile];
  v21 = [user_language_profile addObjectToBuffer:buffer];

  LODWORD(user_language_profile) = [(QSSCreateLanguageProfileResponse *)self incomplete_profile];
  recreate_apg_prons = [(QSSCreateLanguageProfileResponse *)self recreate_apg_prons];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v23 = *(buffer + 10);
  v24 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, uTF8String3);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v21);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 14, user_language_profile);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 16, recreate_apg_prons);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v24 + v23);
}

- (BOOL)recreate_apg_prons
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)incomplete_profile
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
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

- (QSSCreateLanguageProfileResponse)initWithFlatbuffData:(id)data root:(const CreateLanguageProfileResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v43.receiver = self;
  v43.super_class = QSSCreateLanguageProfileResponse;
  v10 = [(QSSCreateLanguageProfileResponse *)&v43 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_52;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_53;
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
    goto LABEL_51;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_53;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v38 = bytes3;
  v39 = v18;
  v40 = xmmword_26914CD70;
  v41 = 0;
  v42 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_51;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v38, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v38, 4u))
  {
    goto LABEL_53;
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
    goto LABEL_53;
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

  if (!flatbuffers::Verifier::VerifyString(&v38, v25))
  {
    goto LABEL_53;
  }

  v26 = (v19 - *v19);
  v27 = *v26;
  if (v27 >= 9 && v26[4] && (v39 < 5 || v39 - 4 < v19 + v26[4] - v38))
  {
    goto LABEL_53;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v38, 0xAu))
  {
    goto LABEL_53;
  }

  v28 = v27 >= 0xB && v26[5] ? v19 + v26[5] + *(v19 + v26[5]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v38, v28) || !flatbuffers::Table::VerifyOffset(v19, &v38, 0xCu))
  {
    goto LABEL_53;
  }

  v29 = *v19;
  v30 = *(v19 - v29);
  if (v30 >= 0xD)
  {
    if (*(v19 - v29 + 12))
    {
      if (!siri::speech::schema_fb::UserLanguageProfile::Verify((v19 + *(v19 - v29 + 12) + *(v19 + *(v19 - v29 + 12))), &v38))
      {
        goto LABEL_53;
      }

      v31 = *v19;
      v32 = -v31;
      v30 = *(v19 - v31);
    }

    else
    {
      v32 = -v29;
    }

    if (v30 < 0xF)
    {
      goto LABEL_51;
    }

    v33 = v19 + v32;
    if ((!*(v33 + 7) || v39 >= 2 && v39 - 1 >= v19 + *(v33 + 7) - v38) && (v30 < 0x11 || !*(v33 + 8) || v39 >= 2 && v39 - 1 >= v19 + *(v33 + 8) - v38))
    {
      goto LABEL_51;
    }

LABEL_53:
    v36 = 0;
    goto LABEL_54;
  }

LABEL_51:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_52:
  v36 = v11;
LABEL_54:

  return v36;
}

@end