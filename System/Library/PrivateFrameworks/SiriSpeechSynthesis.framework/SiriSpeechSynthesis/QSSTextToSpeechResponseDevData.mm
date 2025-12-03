@interface QSSTextToSpeechResponseDevData
- (BOOL)has_click;
- (NSString)log;
- (NSString)worker_process_type;
- (Offset<siri::speech::schema_fb::TextToSpeechResponseDevData>)addObjectToBuffer:(void *)buffer;
- (QSSQSSVersionInfo)server_info;
- (QSSTextToSpeechResponseDevData)initWithFlatbuffData:(id)data root:(const TextToSpeechResponseDevData *)root verify:(BOOL)verify;
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

- (Offset<siri::speech::schema_fb::TextToSpeechResponseDevData>)addObjectToBuffer:(void *)buffer
{
  v5 = [(QSSTextToSpeechResponseDevData *)self log];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)v5 UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  server_info = [(QSSTextToSpeechResponseDevData *)self server_info];
  v11 = [server_info addObjectToBuffer:buffer];

  has_click = [(QSSTextToSpeechResponseDevData *)self has_click];
  worker_process_type = [(QSSTextToSpeechResponseDevData *)self worker_process_type];
  v14 = worker_process_type;
  if (!worker_process_type)
  {
    worker_process_type = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)worker_process_type UTF8String];
  v16 = strlen(uTF8String2);
  v17 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v16);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v18 = *(buffer + 5);
  v19 = *(buffer + 6);
  v20 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  if (v11)
  {
    v21 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v11);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v21);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 8, has_click);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v17);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v20 - v19 + v18);
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

- (QSSTextToSpeechResponseDevData)initWithFlatbuffData:(id)data root:(const TextToSpeechResponseDevData *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechResponseDevData;
  v10 = [(QSSTextToSpeechResponseDevData *)&v29 init];
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end