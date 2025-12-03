@interface QSSSpeechTranslationPartialRecognitionResponse
- (BOOL)is_stable_result;
- (NSString)conversation_id;
- (NSString)recognition_text;
- (NSString)request_id;
- (NSString)return_str;
- (NSString)source_locale;
- (Offset<siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse>)addObjectToBuffer:(void *)buffer;
- (QSSSpeechTranslationPartialRecognitionResponse)initWithFlatbuffData:(id)data root:(const SpeechTranslationPartialRecognitionResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)confidence;
- (int)return_code;
@end

@implementation QSSSpeechTranslationPartialRecognitionResponse

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
  v2.var0 = [(QSSSpeechTranslationPartialRecognitionResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__62__QSSSpeechTranslationPartialRecognitionResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse>)addObjectToBuffer:(void *)buffer
{
  conversation_id = [(QSSSpeechTranslationPartialRecognitionResponse *)self conversation_id];
  v6 = conversation_id;
  if (!conversation_id)
  {
    conversation_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)conversation_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(QSSSpeechTranslationPartialRecognitionResponse *)self request_id];
  v11 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  return_code = [(QSSSpeechTranslationPartialRecognitionResponse *)self return_code];
  return_str = [(QSSSpeechTranslationPartialRecognitionResponse *)self return_str];
  v17 = return_str;
  if (!return_str)
  {
    return_str = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)return_str UTF8String];
  v19 = strlen(uTF8String3);
  v20 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);

  source_locale = [(QSSSpeechTranslationPartialRecognitionResponse *)self source_locale];
  v22 = source_locale;
  if (!source_locale)
  {
    source_locale = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)source_locale UTF8String];
  v24 = strlen(uTF8String4);
  v38 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v24);
  v25 = v20;
  v26 = return_code;
  v27 = v14;
  v28 = String;

  recognition_text = [(QSSSpeechTranslationPartialRecognitionResponse *)self recognition_text];
  v30 = recognition_text;
  if (!recognition_text)
  {
    recognition_text = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)recognition_text UTF8String];
  v32 = strlen(uTF8String5);
  LODWORD(uTF8String5) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v32);

  confidence = [(QSSSpeechTranslationPartialRecognitionResponse *)self confidence];
  is_stable_result = [(QSSSpeechTranslationPartialRecognitionResponse *)self is_stable_result];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v35 = *(buffer + 10);
  v36 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v28);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v27);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, v26);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v25);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, uTF8String5);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, confidence);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 18, is_stable_result);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v36 + v35);
}

- (BOOL)is_stable_result
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0 && root[v4].var0[0] != 0;
}

- (int)confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)recognition_text
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

- (NSString)source_locale
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

- (NSString)return_str
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

- (int)return_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
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

- (QSSSpeechTranslationPartialRecognitionResponse)initWithFlatbuffData:(id)data root:(const SpeechTranslationPartialRecognitionResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSSpeechTranslationPartialRecognitionResponse;
  v10 = [(QSSSpeechTranslationPartialRecognitionResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse::Verify(v19, &v24))
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