@interface QSSClientSetupInfo
- (BOOL)endpoint_extra_delay;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::ClientSetupInfo>)addObjectToBuffer:(void *)a3;
- (QSSClientSetupInfo)initWithFlatbuffData:(id)a3 root:(const ClientSetupInfo *)a4 verify:(BOOL)a5;
- (float)endpoint_threshold;
- (id)flatbuffData;
@end

@implementation QSSClientSetupInfo

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_26914CD60;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(QSSClientSetupInfo *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__34__QSSClientSetupInfo_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ClientSetupInfo>)addObjectToBuffer:(void *)a3
{
  [(QSSClientSetupInfo *)self endpoint_threshold];
  v6 = v5;
  v7 = [(QSSClientSetupInfo *)self endpoint_extra_delay];
  v8 = [(QSSClientSetupInfo *)self speech_id];
  v9 = v8;
  if (!v8)
  {
    v8 = &stru_2879AE8E0;
  }

  v10 = [(__CFString *)v8 UTF8String];
  v11 = strlen(v10);
  LODWORD(v10) = flatbuffers::FlatBufferBuilder::CreateString(a3, v10, v11);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v12 = *(a3 + 10);
  v13 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 4, v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v7);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v10);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
}

- (NSString)speech_id
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

- (BOOL)endpoint_extra_delay
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 7u && (v4 = *v3[6].var0) != 0 && root[v4].var0[0] != 0;
}

- (float)endpoint_threshold
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 5u)
  {
    v5 = *v3[4].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (QSSClientSetupInfo)initWithFlatbuffData:(id)a3 root:(const ClientSetupInfo *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSClientSetupInfo;
  v10 = [(QSSClientSetupInfo *)&v29 init];
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
      v26 = xmmword_26914CD70;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::ClientSetupInfo::Verify(v19, &v24))
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