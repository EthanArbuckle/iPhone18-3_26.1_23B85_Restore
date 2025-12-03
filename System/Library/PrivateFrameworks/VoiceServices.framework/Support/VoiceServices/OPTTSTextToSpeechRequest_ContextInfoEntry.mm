@interface OPTTSTextToSpeechRequest_ContextInfoEntry
- (NSString)key;
- (NSString)value;
- (OPTTSTextToSpeechRequest_ContextInfoEntry)initWithFlatbuffData:(id)data root:(const ContextInfoEntry *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechRequest_ContextInfoEntry

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_2728326A0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTextToSpeechRequest_ContextInfoEntry *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>)addObjectToBuffer:(void *)buffer
{
  v5 = [(OPTTSTextToSpeechRequest_ContextInfoEntry *)self key];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2881CBD18;
  }

  uTF8String = [(__CFString *)v5 UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  value = [(OPTTSTextToSpeechRequest_ContextInfoEntry *)self value];
  v11 = value;
  if (!value)
  {
    value = &stru_2881CBD18;
  }

  uTF8String2 = [(__CFString *)value UTF8String];
  v13 = strlen(uTF8String2);
  LODWORD(uTF8String2) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 10);
  v15 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 6, uTF8String2);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v15 + v14);
}

- (NSString)value
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

- (OPTTSTextToSpeechRequest_ContextInfoEntry)initWithFlatbuffData:(id)data root:(const ContextInfoEntry *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = OPTTSTextToSpeechRequest_ContextInfoEntry;
  v10 = [(OPTTSTextToSpeechRequest_ContextInfoEntry *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
      v25 = v18;
      v26 = xmmword_2728326B0;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::TextToSpeechResource::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end