@interface FTCreateLanguageProfileResponse
- (BOOL)incomplete_profile;
- (BOOL)recreate_apg_prons;
- (FTCreateLanguageProfileResponse)initWithFlatbuffData:(id)a3 root:(const CreateLanguageProfileResponse *)a4 verify:(BOOL)a5;
- (FTUserLanguageProfile)user_language_profile;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::CreateLanguageProfileResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int)error_code;
@end

@implementation FTCreateLanguageProfileResponse

- (FTCreateLanguageProfileResponse)initWithFlatbuffData:(id)a3 root:(const CreateLanguageProfileResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTCreateLanguageProfileResponse;
  v10 = [(FTCreateLanguageProfileResponse *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::CreateLanguageProfileResponse::Verify(v18, v21))
  {
LABEL_14:
    v19 = 0;
  }

  else
  {
LABEL_13:
    v19 = v10;
  }

  return v19;
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

- (FTUserLanguageProfile)user_language_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_language_profile"];
  if (!v3)
  {
    v4 = [FTUserLanguageProfile alloc];
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

    v3 = [(FTUserLanguageProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_language_profile"];
  }

  return v3;
}

- (BOOL)incomplete_profile
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)recreate_apg_prons
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::CreateLanguageProfileResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTCreateLanguageProfileResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(FTCreateLanguageProfileResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_284834138;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(FTCreateLanguageProfileResponse *)self error_code];
  v16 = [(FTCreateLanguageProfileResponse *)self error_str];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_284834138;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  LODWORD(v18) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v18, v19);

  v20 = [(FTCreateLanguageProfileResponse *)self user_language_profile];
  v21 = [v20 addObjectToBuffer:a3];

  LODWORD(v20) = [(FTCreateLanguageProfileResponse *)self incomplete_profile];
  v22 = [(FTCreateLanguageProfileResponse *)self recreate_apg_prons];
  *(a3 + 70) = 1;
  v23 = *(a3 + 10);
  v24 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v15, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v18);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v21);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 14, v20, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 16, v22, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v24 + v23);
}

- (id)flatbuffData
{
  v3 = 0;
  v4 = 0;
  v5 = xmmword_233005E30;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 256;
  v11 = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTCreateLanguageProfileResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__47__FTCreateLanguageProfileResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end