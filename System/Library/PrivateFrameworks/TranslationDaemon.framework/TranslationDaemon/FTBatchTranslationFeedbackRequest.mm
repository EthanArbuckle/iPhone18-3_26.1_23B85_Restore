@interface FTBatchTranslationFeedbackRequest
- (FTBatchTranslationFeedbackRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationFeedbackRequest *)root verify:(BOOL)verify;
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
- (id)flatbuffData;
@end

@implementation FTBatchTranslationFeedbackRequest

- (FTBatchTranslationFeedbackRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationFeedbackRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTBatchTranslationFeedbackRequest;
  v10 = [(FTBatchTranslationFeedbackRequest *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
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
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::BatchTranslationFeedbackRequest::Verify(v18, v21))
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

- (Offset<siri::speech::schema_fb::BatchTranslationFeedbackRequest>)addObjectToBuffer:(void *)buffer
{
  source_content = [(FTBatchTranslationFeedbackRequest *)self source_content];
  v6 = source_content;
  if (!source_content)
  {
    source_content = &stru_284834138;
  }

  uTF8String = [(__CFString *)source_content UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  translated_content = [(FTBatchTranslationFeedbackRequest *)self translated_content];
  v11 = translated_content;
  if (!translated_content)
  {
    translated_content = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)translated_content UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  v15 = [(FTBatchTranslationFeedbackRequest *)self url];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)v15 UTF8String];
  v18 = strlen(uTF8String3);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  errors = [(FTBatchTranslationFeedbackRequest *)self errors];
  v21 = errors;
  if (!errors)
  {
    errors = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)errors UTF8String];
  v23 = strlen(uTF8String4);
  v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  session_id = [(FTBatchTranslationFeedbackRequest *)self session_id];
  v26 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)session_id UTF8String];
  v28 = strlen(uTF8String5);
  v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v28);

  source_language = [(FTBatchTranslationFeedbackRequest *)self source_language];
  v31 = source_language;
  if (!source_language)
  {
    source_language = &stru_284834138;
  }

  uTF8String6 = [(__CFString *)source_language UTF8String];
  v33 = strlen(uTF8String6);
  v66 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v33);
  v65 = v29;

  target_language = [(FTBatchTranslationFeedbackRequest *)self target_language];
  v35 = target_language;
  if (!target_language)
  {
    target_language = &stru_284834138;
  }

  uTF8String7 = [(__CFString *)target_language UTF8String];
  v37 = strlen(uTF8String7);
  v64 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String7, v37);
  v63 = v24;
  v38 = v19;

  safari_version = [(FTBatchTranslationFeedbackRequest *)self safari_version];
  v40 = safari_version;
  if (!safari_version)
  {
    safari_version = &stru_284834138;
  }

  uTF8String8 = [(__CFString *)safari_version UTF8String];
  v42 = strlen(uTF8String8);
  v43 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String8, v42);
  v44 = v14;
  v45 = String;

  app_id = [(FTBatchTranslationFeedbackRequest *)self app_id];
  v47 = app_id;
  if (!app_id)
  {
    app_id = &stru_284834138;
  }

  uTF8String9 = [(__CFString *)app_id UTF8String];
  v49 = strlen(uTF8String9);
  v50 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String9, v49);

  os_version = [(FTBatchTranslationFeedbackRequest *)self os_version];
  v52 = os_version;
  if (!os_version)
  {
    os_version = &stru_284834138;
  }

  uTF8String10 = [(__CFString *)os_version UTF8String];
  v54 = strlen(uTF8String10);
  v55 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String10, v54);

  device_type = [(FTBatchTranslationFeedbackRequest *)self device_type];
  v57 = device_type;
  if (!device_type)
  {
    device_type = &stru_284834138;
  }

  uTF8String11 = [(__CFString *)device_type UTF8String];
  v59 = strlen(uTF8String11);
  LODWORD(uTF8String11) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String11, v59);

  *(buffer + 70) = 1;
  v60 = *(buffer + 10);
  v61 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v44);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v65);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v66);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, v64);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v43);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 20, v50);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 22, v55);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 24, uTF8String11);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v61 + v60);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBatchTranslationFeedbackRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__49__FTBatchTranslationFeedbackRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end