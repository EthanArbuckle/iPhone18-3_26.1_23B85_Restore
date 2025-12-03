@interface FTRequestStatsResponse_Int32Stat
- (FTRequestStatsResponse_Int32Stat)initWithFlatbuffData:(id)data root:(const Int32Stat *)root verify:(BOOL)verify;
- (NSString)name;
- (Offset<siri::speech::schema_fb::RequestStatsResponse_::Int32Stat>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int)value;
@end

@implementation FTRequestStatsResponse_Int32Stat

- (FTRequestStatsResponse_Int32Stat)initWithFlatbuffData:(id)data root:(const Int32Stat *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTRequestStatsResponse_Int32Stat;
  v10 = [(FTRequestStatsResponse_Int32Stat *)&v25 init];
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

  if (!siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry::Verify(v18, v21))
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

- (NSString)name
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

- (int)value
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

- (Offset<siri::speech::schema_fb::RequestStatsResponse_::Int32Stat>)addObjectToBuffer:(void *)buffer
{
  name = [(FTRequestStatsResponse_Int32Stat *)self name];
  v6 = name;
  if (!name)
  {
    name = &stru_284834138;
  }

  uTF8String = [(__CFString *)name UTF8String];
  v8 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  value = [(FTRequestStatsResponse_Int32Stat *)self value];
  *(buffer + 70) = 1;
  v10 = *(buffer + 10);
  v11 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, uTF8String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, value, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v11 + v10);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRequestStatsResponse_Int32Stat *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end