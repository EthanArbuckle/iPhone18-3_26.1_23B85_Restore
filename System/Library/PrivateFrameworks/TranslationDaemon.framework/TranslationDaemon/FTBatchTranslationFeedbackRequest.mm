@interface FTBatchTranslationFeedbackRequest
- (FTBatchTranslationFeedbackRequest)initWithFlatbuffData:(id)a3 root:(const BatchTranslationFeedbackRequest *)a4 verify:(BOOL)a5;
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
- (Offset<siri::speech::schema_fb::BatchTranslationFeedbackRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
@end

@implementation FTBatchTranslationFeedbackRequest

- (FTBatchTranslationFeedbackRequest)initWithFlatbuffData:(id)a3 root:(const BatchTranslationFeedbackRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTBatchTranslationFeedbackRequest;
  v10 = [(FTBatchTranslationFeedbackRequest *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
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
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
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

- (Offset<siri::speech::schema_fb::BatchTranslationFeedbackRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTBatchTranslationFeedbackRequest *)self source_content];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(FTBatchTranslationFeedbackRequest *)self translated_content];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_284834138;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(FTBatchTranslationFeedbackRequest *)self url];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_284834138;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v17, v18);

  v20 = [(FTBatchTranslationFeedbackRequest *)self errors];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_284834138;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v22, v23);

  v25 = [(FTBatchTranslationFeedbackRequest *)self session_id];
  v26 = v25;
  if (!v25)
  {
    v25 = &stru_284834138;
  }

  v27 = [(__CFString *)v25 UTF8String];
  v28 = strlen(v27);
  v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v27, v28);

  v30 = [(FTBatchTranslationFeedbackRequest *)self source_language];
  v31 = v30;
  if (!v30)
  {
    v30 = &stru_284834138;
  }

  v32 = [(__CFString *)v30 UTF8String];
  v33 = strlen(v32);
  v66 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v32, v33);
  v65 = v29;

  v34 = [(FTBatchTranslationFeedbackRequest *)self target_language];
  v35 = v34;
  if (!v34)
  {
    v34 = &stru_284834138;
  }

  v36 = [(__CFString *)v34 UTF8String];
  v37 = strlen(v36);
  v64 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v36, v37);
  v63 = v24;
  v38 = v19;

  v39 = [(FTBatchTranslationFeedbackRequest *)self safari_version];
  v40 = v39;
  if (!v39)
  {
    v39 = &stru_284834138;
  }

  v41 = [(__CFString *)v39 UTF8String];
  v42 = strlen(v41);
  v43 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v41, v42);
  v44 = v14;
  v45 = String;

  v46 = [(FTBatchTranslationFeedbackRequest *)self app_id];
  v47 = v46;
  if (!v46)
  {
    v46 = &stru_284834138;
  }

  v48 = [(__CFString *)v46 UTF8String];
  v49 = strlen(v48);
  v50 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v48, v49);

  v51 = [(FTBatchTranslationFeedbackRequest *)self os_version];
  v52 = v51;
  if (!v51)
  {
    v51 = &stru_284834138;
  }

  v53 = [(__CFString *)v51 UTF8String];
  v54 = strlen(v53);
  v55 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v53, v54);

  v56 = [(FTBatchTranslationFeedbackRequest *)self device_type];
  v57 = v56;
  if (!v56)
  {
    v56 = &stru_284834138;
  }

  v58 = [(__CFString *)v56 UTF8String];
  v59 = strlen(v58);
  LODWORD(v58) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v58, v59);

  *(a3 + 70) = 1;
  v60 = *(a3 + 10);
  v61 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v44);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v65);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v66);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 16, v64);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 18, v43);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 20, v50);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 22, v55);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 24, v58);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v61 + v60);
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