@interface QSSSpeechTranslationServerEndpointFeatures
- (NSString)conversation_id;
- (NSString)request_id;
- (NSString)source_locale;
- (Offset<siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures>)addObjectToBuffer:(void *)buffer;
- (QSSServerEndpointFeatures)server_endpoint_features;
- (QSSSpeechTranslationServerEndpointFeatures)initWithFlatbuffData:(id)data root:(const SpeechTranslationServerEndpointFeatures *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSSpeechTranslationServerEndpointFeatures

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
  v2.var0 = [(QSSSpeechTranslationServerEndpointFeatures *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__58__QSSSpeechTranslationServerEndpointFeatures_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures>)addObjectToBuffer:(void *)buffer
{
  conversation_id = [(QSSSpeechTranslationServerEndpointFeatures *)self conversation_id];
  v6 = conversation_id;
  if (!conversation_id)
  {
    conversation_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)conversation_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(QSSSpeechTranslationServerEndpointFeatures *)self request_id];
  v11 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  source_locale = [(QSSSpeechTranslationServerEndpointFeatures *)self source_locale];
  v16 = source_locale;
  if (!source_locale)
  {
    source_locale = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)source_locale UTF8String];
  v18 = strlen(uTF8String3);
  LODWORD(uTF8String3) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  server_endpoint_features = [(QSSSpeechTranslationServerEndpointFeatures *)self server_endpoint_features];
  v20 = [server_endpoint_features addObjectToBuffer:buffer];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v22 = *(buffer + 5);
  v21 = *(buffer + 6);
  v23 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, uTF8String3);
  if (v20)
  {
    v24 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v20);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v24);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v23 - v21 + v22);
}

- (QSSServerEndpointFeatures)server_endpoint_features
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"server_endpoint_features"];
  if (!v3)
  {
    v4 = [QSSServerEndpointFeatures alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSServerEndpointFeatures *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"server_endpoint_features"];
  }

  return v3;
}

- (NSString)source_locale
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

- (NSString)request_id
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

- (NSString)conversation_id
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

- (QSSSpeechTranslationServerEndpointFeatures)initWithFlatbuffData:(id)data root:(const SpeechTranslationServerEndpointFeatures *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSSpeechTranslationServerEndpointFeatures;
  v10 = [(QSSSpeechTranslationServerEndpointFeatures *)&v29 init];
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
        if (!siri::speech::schema_fb::SpeechTranslationServerEndpointFeatures::Verify(v19, &v24))
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