@interface OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry
- (NSString)key;
- (NSString)value;
- (OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry)initWithFlatbuffData:(id)a3 root:(const ContextInfoEntry *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest_::ContextInfoEntry>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
@end

@implementation OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry

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
  v2.var0 = [(OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest_::ContextInfoEntry>)addObjectToBuffer:(void *)a3
{
  v5 = [(OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry *)self key];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2881CBD18;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry *)self value];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2881CBD18;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  LODWORD(v12) = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v14 = *(a3 + 10);
  v15 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 6, v12);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v15 + v14);
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

- (OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry)initWithFlatbuffData:(id)a3 root:(const ContextInfoEntry *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry;
  v10 = [(OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
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

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end