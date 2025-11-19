@interface QSSTextToSpeechResponseDevData
- (BOOL)has_click;
- (NSString)log;
- (NSString)worker_process_type;
- (Offset<siri::speech::schema_fb::TextToSpeechResponseDevData>)addObjectToBuffer:(void *)a3;
- (QSSQSSVersionInfo)server_info;
- (QSSTextToSpeechResponseDevData)initWithFlatbuffData:(id)a3 root:(const TextToSpeechResponseDevData *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechResponseDevData

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
  v2.var0 = [(QSSTextToSpeechResponseDevData *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__46__QSSTextToSpeechResponseDevData_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechResponseDevData>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSTextToSpeechResponseDevData *)self log];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSTextToSpeechResponseDevData *)self server_info];
  v11 = [v10 addObjectToBuffer:a3];

  v12 = [(QSSTextToSpeechResponseDevData *)self has_click];
  v13 = [(QSSTextToSpeechResponseDevData *)self worker_process_type];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_2879AE8E0;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v17 = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v18 = *(a3 + 5);
  v19 = *(a3 + 6);
  v20 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  if (v11)
  {
    v21 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v11);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v21);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 8, v12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v17);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v20 - v19 + v18);
}

- (NSString)worker_process_type
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

- (BOOL)has_click
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 9u && (v4 = *v3[8].var0) != 0 && root[v4].var0[0] != 0;
}

- (QSSQSSVersionInfo)server_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"server_info"];
  if (!v3)
  {
    v4 = [QSSQSSVersionInfo alloc];
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

    v3 = [(QSSQSSVersionInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"server_info"];
  }

  return v3;
}

- (NSString)log
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

- (QSSTextToSpeechResponseDevData)initWithFlatbuffData:(id)a3 root:(const TextToSpeechResponseDevData *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechResponseDevData;
  v10 = [(QSSTextToSpeechResponseDevData *)&v29 init];
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
        if (!siri::speech::schema_fb::TextToSpeechResponseDevData::Verify(v19, &v24))
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