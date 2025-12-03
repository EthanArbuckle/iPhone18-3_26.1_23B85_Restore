@interface FLTSSUIntentParameter
- (FLTSSUIntentParameter)initWithFlatbuffData:(id)data root:(const SSUIntentParameter *)root verify:(BOOL)verify;
- (NSString)example_value;
- (NSString)name;
- (Offset<SSUIntentParameter>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation FLTSSUIntentParameter

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1C8C15D40;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(FLTSSUIntentParameter *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__37__FLTSSUIntentParameter_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<SSUIntentParameter>)addObjectToBuffer:(void *)buffer
{
  name = [(FLTSSUIntentParameter *)self name];
  v6 = name;
  if (!name)
  {
    name = &stru_1F487A568;
  }

  uTF8String = [(__CFString *)name UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  example_value = [(FLTSSUIntentParameter *)self example_value];
  v11 = example_value;
  if (!example_value)
  {
    example_value = &stru_1F487A568;
  }

  uTF8String2 = [(__CFString *)example_value UTF8String];
  v13 = strlen(uTF8String2);
  LODWORD(uTF8String2) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 10);
  v15 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, uTF8String2);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v15 + v14);
}

- (NSString)example_value
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (FLTSSUIntentParameter)initWithFlatbuffData:(id)data root:(const SSUIntentParameter *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FLTSSUIntentParameter;
  v10 = [(FLTSSUIntentParameter *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_15;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_1C8C15D50;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !SSUIntentParameter::Verify(v18, v21))
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