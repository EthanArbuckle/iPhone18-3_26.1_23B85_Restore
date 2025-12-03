@interface FTUserLanguageProfile
- (FTUserLanguageProfile)initWithFlatbuffData:(id)data root:(const UserLanguageProfile *)root verify:(BOOL)verify;
- (NSString)profile_blob_version;
- (NSString)profile_checksum;
- (Offset<siri::speech::schema_fb::UserLanguageProfile>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (void)profile_blob:(id)profile_blob;
@end

@implementation FTUserLanguageProfile

- (FTUserLanguageProfile)initWithFlatbuffData:(id)data root:(const UserLanguageProfile *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTUserLanguageProfile;
  v10 = [(FTUserLanguageProfile *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
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
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::UserLanguageProfile::Verify(v18, v21))
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

- (void)profile_blob:(id)profile_blob
{
  root = self->_root;
  v5 = &root[-*root->var0];
  profile_blobCopy = profile_blob;
  v7 = *root[*v5[4].var0 + *root[*v5[4].var0].var0].var0;
  v8 = profile_blobCopy;
  (*(profile_blob + 2))();
}

- (NSString)profile_blob_version
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

- (NSString)profile_checksum
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

- (Offset<siri::speech::schema_fb::UserLanguageProfile>)addObjectToBuffer:(void *)buffer
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3812000000;
  v23 = __Block_byref_object_copy__15;
  v24 = __Block_byref_object_dispose__15;
  v25 = &unk_233042D43;
  v26 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__FTUserLanguageProfile_addObjectToBuffer___block_invoke;
  v19[3] = &unk_2789B8AB0;
  v19[4] = &v20;
  v19[5] = buffer;
  [(FTUserLanguageProfile *)self profile_blob:v19];
  profile_blob_version = [(FTUserLanguageProfile *)self profile_blob_version];
  v6 = profile_blob_version;
  if (!profile_blob_version)
  {
    profile_blob_version = &stru_284834138;
  }

  uTF8String = [(__CFString *)profile_blob_version UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  profile_checksum = [(FTUserLanguageProfile *)self profile_checksum];
  v11 = profile_checksum;
  if (!profile_checksum)
  {
    profile_checksum = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)profile_checksum UTF8String];
  v13 = strlen(uTF8String2);
  LODWORD(uTF8String2) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  *(buffer + 70) = 1;
  v14 = *(buffer + 8);
  v15 = *(buffer + 12);
  v16 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, *(v21 + 12));
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, uTF8String2);
  v17.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v14 - v15 + v16);
  _Block_object_dispose(&v20, 8);
  return v17;
}

uint64_t __43__FTUserLanguageProfile_addObjectToBuffer___block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTUserLanguageProfile *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__37__FTUserLanguageProfile_flatbuffData__block_invoke(uint64_t a1)
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