@interface QSSStreamingTranslationRequest
- (BOOL)disable_log;
- (BOOL)final_message;
- (NSString)app_id;
- (NSString)request_id;
- (NSString)sequence_id;
- (NSString)source_language;
- (NSString)speech_id;
- (NSString)target_language;
- (NSString)task;
- (NSString)translation_text;
- (Offset<siri::speech::schema_fb::StreamingTranslationRequest>)addObjectToBuffer:(void *)buffer;
- (QSSStreamingTranslationRequest)initWithFlatbuffData:(id)data root:(const StreamingTranslationRequest *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int64_t)opt_in_status;
@end

@implementation QSSStreamingTranslationRequest

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
  v2.var0 = [(QSSStreamingTranslationRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__46__QSSStreamingTranslationRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StreamingTranslationRequest>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(QSSStreamingTranslationRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(QSSStreamingTranslationRequest *)self request_id];
  v11 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  task = [(QSSStreamingTranslationRequest *)self task];
  v16 = task;
  if (!task)
  {
    task = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)task UTF8String];
  v18 = strlen(uTF8String3);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  source_language = [(QSSStreamingTranslationRequest *)self source_language];
  v21 = source_language;
  if (!source_language)
  {
    source_language = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)source_language UTF8String];
  v23 = strlen(uTF8String4);
  v24 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  target_language = [(QSSStreamingTranslationRequest *)self target_language];
  v26 = target_language;
  if (!target_language)
  {
    target_language = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)target_language UTF8String];
  v28 = strlen(uTF8String5);
  v29 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v28);

  translation_text = [(QSSStreamingTranslationRequest *)self translation_text];
  v31 = translation_text;
  if (!translation_text)
  {
    translation_text = &stru_2879AE8E0;
  }

  uTF8String6 = [(__CFString *)translation_text UTF8String];
  v33 = strlen(uTF8String6);
  v51 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v33);
  v50 = v29;

  sequence_id = [(QSSStreamingTranslationRequest *)self sequence_id];
  v35 = sequence_id;
  if (!sequence_id)
  {
    sequence_id = &stru_2879AE8E0;
  }

  uTF8String7 = [(__CFString *)sequence_id UTF8String];
  v37 = strlen(uTF8String7);
  v49 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String7, v37);
  v38 = v24;

  disable_log = [(QSSStreamingTranslationRequest *)self disable_log];
  opt_in_status = [(QSSStreamingTranslationRequest *)self opt_in_status];
  app_id = [(QSSStreamingTranslationRequest *)self app_id];
  v41 = app_id;
  if (!app_id)
  {
    app_id = &stru_2879AE8E0;
  }

  uTF8String8 = [(__CFString *)app_id UTF8String];
  v43 = strlen(uTF8String8);
  LODWORD(uTF8String8) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String8, v43);

  final_message = [(QSSStreamingTranslationRequest *)self final_message];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v45 = *(buffer + 10);
  v46 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v50);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v51);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, v49);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 18, disable_log);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 20, opt_in_status);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 22, uTF8String8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 24, final_message);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v46 + v45);
}

- (BOOL)final_message
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x19u && (v4 = *v3[24].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)app_id
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

- (int64_t)opt_in_status
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)disable_log
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)sequence_id
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

- (NSString)translation_text
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

- (NSString)task
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

- (NSString)speech_id
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

- (QSSStreamingTranslationRequest)initWithFlatbuffData:(id)data root:(const StreamingTranslationRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSStreamingTranslationRequest;
  v10 = [(QSSStreamingTranslationRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::StreamingTranslationRequest::Verify(v19, &v24))
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