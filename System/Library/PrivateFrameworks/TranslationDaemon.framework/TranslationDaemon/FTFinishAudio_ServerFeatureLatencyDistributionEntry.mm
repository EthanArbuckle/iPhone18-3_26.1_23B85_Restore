@interface FTFinishAudio_ServerFeatureLatencyDistributionEntry
- (FTFinishAudio_ServerFeatureLatencyDistributionEntry)initWithFlatbuffData:(id)data root:(const ServerFeatureLatencyDistributionEntry *)root verify:(BOOL)verify;
- (NSString)key;
- (Offset<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>)addObjectToBuffer:(void *)buffer;
- (float)value;
- (id)flatbuffData;
@end

@implementation FTFinishAudio_ServerFeatureLatencyDistributionEntry

- (FTFinishAudio_ServerFeatureLatencyDistributionEntry)initWithFlatbuffData:(id)data root:(const ServerFeatureLatencyDistributionEntry *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTFinishAudio_ServerFeatureLatencyDistributionEntry;
  v10 = [(FTFinishAudio_ServerFeatureLatencyDistributionEntry *)&v25 init];
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

- (NSString)key
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

- (float)value
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 7u)
  {
    v5 = *v3[6].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (Offset<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>)addObjectToBuffer:(void *)buffer
{
  v5 = [(FTFinishAudio_ServerFeatureLatencyDistributionEntry *)self key];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  uTF8String = [(__CFString *)v5 UTF8String];
  v8 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  [(FTFinishAudio_ServerFeatureLatencyDistributionEntry *)self value];
  v10 = v9;
  *(buffer + 70) = 1;
  v11 = *(buffer + 10);
  v12 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, uTF8String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 6, v10, 0.0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v12 + v11);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTFinishAudio_ServerFeatureLatencyDistributionEntry *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end