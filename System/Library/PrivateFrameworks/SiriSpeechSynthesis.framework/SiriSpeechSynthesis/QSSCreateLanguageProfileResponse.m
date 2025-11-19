@interface QSSCreateLanguageProfileResponse
- (BOOL)incomplete_profile;
- (BOOL)recreate_apg_prons;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::CreateLanguageProfileResponse>)addObjectToBuffer:(void *)a3;
- (QSSCreateLanguageProfileResponse)initWithFlatbuffData:(id)a3 root:(const CreateLanguageProfileResponse *)a4 verify:(BOOL)a5;
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

- (Offset<siri::speech::schema_fb::CreateLanguageProfileResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSCreateLanguageProfileResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSCreateLanguageProfileResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(QSSCreateLanguageProfileResponse *)self error_code];
  v16 = [(QSSCreateLanguageProfileResponse *)self error_str];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_2879AE8E0;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  LODWORD(v18) = flatbuffers::FlatBufferBuilder::CreateString(a3, v18, v19);

  v20 = [(QSSCreateLanguageProfileResponse *)self user_language_profile];
  v21 = [v20 addObjectToBuffer:a3];

  LODWORD(v20) = [(QSSCreateLanguageProfileResponse *)self incomplete_profile];
  v22 = [(QSSCreateLanguageProfileResponse *)self recreate_apg_prons];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v23 = *(a3 + 10);
  v24 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v15);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v18);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v21);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 14, v20);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 16, v22);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v24 + v23);
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

- (QSSCreateLanguageProfileResponse)initWithFlatbuffData:(id)a3 root:(const CreateLanguageProfileResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v43.receiver = self;
  v43.super_class = QSSCreateLanguageProfileResponse;
  v10 = [(QSSCreateLanguageProfileResponse *)&v43 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_52;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_53;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v12 = [(NSData *)v10->_data bytes];
    a4 = v12 + *v12;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_51;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_53;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v38 = v17;
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
  v34 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v34;

LABEL_52:
  v36 = v11;
LABEL_54:

  return v36;
}

@end