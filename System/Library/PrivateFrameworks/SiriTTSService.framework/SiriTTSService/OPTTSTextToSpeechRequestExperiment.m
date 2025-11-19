@interface OPTTSTextToSpeechRequestExperiment
- (NSString)experiment_identifier;
- (OPTTSTextToSpeechRequestExperiment)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestExperiment *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestExperiment>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechRequestExperiment

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1B1C416F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTextToSpeechRequestExperiment *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__50__OPTTSTextToSpeechRequestExperiment_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestExperiment>)addObjectToBuffer:(void *)a3
{
  v4 = [(OPTTSTextToSpeechRequestExperiment *)self experiment_identifier];
  v5 = v4;
  if (!v4)
  {
    v4 = &stru_1F28C4E90;
  }

  v6 = [(__CFString *)v4 UTF8String];
  v7 = strlen(v6);
  LODWORD(v6) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v6, v7);

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v8 = *(a3 + 10);
  v9 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 4, v6);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v9 + v8);
}

- (NSString)experiment_identifier
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (OPTTSTextToSpeechRequestExperiment)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestExperiment *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechRequestExperiment;
  v10 = [(OPTTSTextToSpeechRequestExperiment *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_15;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_1B1C41700;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify(v18, v21))
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
LABEL_14:
    v19 = v10;
  }

  return v19;
}

@end