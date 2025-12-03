@interface FTQSSVersionInfo
- (FTQSSVersionInfo)initWithFlatbuffData:(id)data root:(const QSSVersionInfo *)root verify:(BOOL)verify;
- (NSString)qss_version_brane;
- (NSString)qss_version_server;
- (NSString)qss_version_serverkit;
- (NSString)qss_version_siritts;
- (Offset<siri::speech::schema_fb::QSSVersionInfo>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation FTQSSVersionInfo

- (FTQSSVersionInfo)initWithFlatbuffData:(id)data root:(const QSSVersionInfo *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTQSSVersionInfo;
  v10 = [(FTQSSVersionInfo *)&v25 init];
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

  if (!siri::speech::schema_fb::QSSVersionInfo::Verify(v18, v21))
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

- (NSString)qss_version_server
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

- (NSString)qss_version_brane
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

- (NSString)qss_version_serverkit
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

- (NSString)qss_version_siritts
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

- (Offset<siri::speech::schema_fb::QSSVersionInfo>)addObjectToBuffer:(void *)buffer
{
  qss_version_server = [(FTQSSVersionInfo *)self qss_version_server];
  v6 = qss_version_server;
  if (!qss_version_server)
  {
    qss_version_server = &stru_284834138;
  }

  uTF8String = [(__CFString *)qss_version_server UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  qss_version_brane = [(FTQSSVersionInfo *)self qss_version_brane];
  v11 = qss_version_brane;
  if (!qss_version_brane)
  {
    qss_version_brane = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)qss_version_brane UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  qss_version_serverkit = [(FTQSSVersionInfo *)self qss_version_serverkit];
  v16 = qss_version_serverkit;
  if (!qss_version_serverkit)
  {
    qss_version_serverkit = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)qss_version_serverkit UTF8String];
  v18 = strlen(uTF8String3);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  qss_version_siritts = [(FTQSSVersionInfo *)self qss_version_siritts];
  v21 = qss_version_siritts;
  if (!qss_version_siritts)
  {
    qss_version_siritts = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)qss_version_siritts UTF8String];
  v23 = strlen(uTF8String4);
  LODWORD(uTF8String4) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  *(buffer + 70) = 1;
  v24 = *(buffer + 10);
  v25 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, uTF8String4);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v25 + v24);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTQSSVersionInfo *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__32__FTQSSVersionInfo_flatbuffData__block_invoke(uint64_t a1)
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