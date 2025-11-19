@interface FTAudioAnalytics_AcousticFeaturesEntry
- (FTAcousticFeature)value;
- (FTAudioAnalytics_AcousticFeaturesEntry)initWithFlatbuffData:(id)a3 root:(const AcousticFeaturesEntry *)a4 verify:(BOOL)a5;
- (NSString)key;
- (Offset<siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
@end

@implementation FTAudioAnalytics_AcousticFeaturesEntry

- (FTAudioAnalytics_AcousticFeaturesEntry)initWithFlatbuffData:(id)a3 root:(const AcousticFeaturesEntry *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTAudioAnalytics_AcousticFeaturesEntry;
  v10 = [(FTAudioAnalytics_AcousticFeaturesEntry *)&v25 init];
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

  if (!siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry::Verify(v18, v21))
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

- (FTAcousticFeature)value
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"value"];
  if (!v3)
  {
    v4 = [FTAcousticFeature alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 7u && (v7 = *v6[6].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTAcousticFeature *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"value"];
  }

  return v3;
}

- (Offset<siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTAudioAnalytics_AcousticFeaturesEntry *)self key];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  LODWORD(v7) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(FTAudioAnalytics_AcousticFeaturesEntry *)self value];
  v10 = [v9 addObjectToBuffer:a3];

  *(a3 + 70) = 1;
  v11 = *(a3 + 10);
  v12 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v10);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v12 + v11);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTAudioAnalytics_AcousticFeaturesEntry *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end