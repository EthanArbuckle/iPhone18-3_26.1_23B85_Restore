@interface QSSBatchTranslationFeedbackRequest
- (NSString)app_id;
- (NSString)device_type;
- (NSString)errors;
- (NSString)os_version;
- (NSString)safari_version;
- (NSString)session_id;
- (NSString)source_content;
- (NSString)source_language;
- (NSString)target_language;
- (NSString)translated_content;
- (NSString)url;
- (Offset<siri::speech::schema_fb::BatchTranslationFeedbackRequest>)addObjectToBuffer:(void *)buffer;
- (QSSBatchTranslationFeedbackRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationFeedbackRequest *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSBatchTranslationFeedbackRequest

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
  v2.var0 = [(QSSBatchTranslationFeedbackRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__50__QSSBatchTranslationFeedbackRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::BatchTranslationFeedbackRequest>)addObjectToBuffer:(void *)buffer
{
  source_content = [(QSSBatchTranslationFeedbackRequest *)self source_content];
  v6 = source_content;
  if (!source_content)
  {
    source_content = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)source_content UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  translated_content = [(QSSBatchTranslationFeedbackRequest *)self translated_content];
  v11 = translated_content;
  if (!translated_content)
  {
    translated_content = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)translated_content UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  v15 = [(QSSBatchTranslationFeedbackRequest *)self url];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)v15 UTF8String];
  v18 = strlen(uTF8String3);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  errors = [(QSSBatchTranslationFeedbackRequest *)self errors];
  v21 = errors;
  if (!errors)
  {
    errors = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)errors UTF8String];
  v23 = strlen(uTF8String4);
  v24 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  session_id = [(QSSBatchTranslationFeedbackRequest *)self session_id];
  v26 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)session_id UTF8String];
  v28 = strlen(uTF8String5);
  v29 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v28);

  source_language = [(QSSBatchTranslationFeedbackRequest *)self source_language];
  v31 = source_language;
  if (!source_language)
  {
    source_language = &stru_2879AE8E0;
  }

  uTF8String6 = [(__CFString *)source_language UTF8String];
  v33 = strlen(uTF8String6);
  v66 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v33);
  v65 = v29;

  target_language = [(QSSBatchTranslationFeedbackRequest *)self target_language];
  v35 = target_language;
  if (!target_language)
  {
    target_language = &stru_2879AE8E0;
  }

  uTF8String7 = [(__CFString *)target_language UTF8String];
  v37 = strlen(uTF8String7);
  v64 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String7, v37);
  v63 = v24;
  v38 = v19;

  safari_version = [(QSSBatchTranslationFeedbackRequest *)self safari_version];
  v40 = safari_version;
  if (!safari_version)
  {
    safari_version = &stru_2879AE8E0;
  }

  uTF8String8 = [(__CFString *)safari_version UTF8String];
  v42 = strlen(uTF8String8);
  v43 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String8, v42);
  v44 = v14;
  v45 = String;

  app_id = [(QSSBatchTranslationFeedbackRequest *)self app_id];
  v47 = app_id;
  if (!app_id)
  {
    app_id = &stru_2879AE8E0;
  }

  uTF8String9 = [(__CFString *)app_id UTF8String];
  v49 = strlen(uTF8String9);
  v50 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String9, v49);

  os_version = [(QSSBatchTranslationFeedbackRequest *)self os_version];
  v52 = os_version;
  if (!os_version)
  {
    os_version = &stru_2879AE8E0;
  }

  uTF8String10 = [(__CFString *)os_version UTF8String];
  v54 = strlen(uTF8String10);
  v55 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String10, v54);

  device_type = [(QSSBatchTranslationFeedbackRequest *)self device_type];
  v57 = device_type;
  if (!device_type)
  {
    device_type = &stru_2879AE8E0;
  }

  uTF8String11 = [(__CFString *)device_type UTF8String];
  v59 = strlen(uTF8String11);
  LODWORD(uTF8String11) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String11, v59);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v60 = *(buffer + 10);
  v61 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v45);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v44);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v63);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v65);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v66);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, v64);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, v43);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 20, v50);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 22, v55);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 24, uTF8String11);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v61 + v60);
}

- (NSString)device_type
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 24].var0;
  if (*root[-v3 + 24].var0)
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

- (NSString)os_version
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 22].var0;
  if (*root[-v3 + 22].var0)
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

- (NSString)app_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 20].var0;
  if (*root[-v3 + 20].var0)
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

- (NSString)safari_version
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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

- (NSString)target_language
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 16].var0;
  if (*root[-v3 + 16].var0)
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

- (NSString)source_language
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 14].var0;
  if (*root[-v3 + 14].var0)
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

- (NSString)session_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 12].var0;
  if (*root[-v3 + 12].var0)
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

- (NSString)errors
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

- (NSString)url
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

- (NSString)translated_content
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

- (NSString)source_content
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

- (QSSBatchTranslationFeedbackRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationFeedbackRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSBatchTranslationFeedbackRequest;
  v10 = [(QSSBatchTranslationFeedbackRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::BatchTranslationFeedbackRequest::Verify(v19, &v24))
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