@interface FTSpeechTranslationPartialRecognitionResponse
- (BOOL)is_stable_result;
- (FTSpeechTranslationPartialRecognitionResponse)initWithFlatbuffData:(id)data root:(const SpeechTranslationPartialRecognitionResponse *)root verify:(BOOL)verify;
- (NSString)conversation_id;
- (NSString)recognition_text;
- (NSString)request_id;
- (NSString)return_str;
- (NSString)source_locale;
- (Offset<siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int)confidence;
- (int)return_code;
@end

@implementation FTSpeechTranslationPartialRecognitionResponse

- (FTSpeechTranslationPartialRecognitionResponse)initWithFlatbuffData:(id)data root:(const SpeechTranslationPartialRecognitionResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTSpeechTranslationPartialRecognitionResponse;
  v10 = [(FTSpeechTranslationPartialRecognitionResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse::Verify(v18, v21))
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

- (BOOL)is_stable_result
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::SpeechTranslationPartialRecognitionResponse>)addObjectToBuffer:(void *)buffer
{
  conversation_id = [(FTSpeechTranslationPartialRecognitionResponse *)self conversation_id];
  v6 = conversation_id;
  if (!conversation_id)
  {
    conversation_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)conversation_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(FTSpeechTranslationPartialRecognitionResponse *)self request_id];
  v11 = request_id;
  if (!request_id)
  {
    request_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  return_code = [(FTSpeechTranslationPartialRecognitionResponse *)self return_code];
  return_str = [(FTSpeechTranslationPartialRecognitionResponse *)self return_str];
  v17 = return_str;
  if (!return_str)
  {
    return_str = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)return_str UTF8String];
  v19 = strlen(uTF8String3);
  v20 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);

  source_locale = [(FTSpeechTranslationPartialRecognitionResponse *)self source_locale];
  v22 = source_locale;
  if (!source_locale)
  {
    source_locale = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)source_locale UTF8String];
  v24 = strlen(uTF8String4);
  v36 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v24);
  v25 = v20;
  v26 = v14;

  recognition_text = [(FTSpeechTranslationPartialRecognitionResponse *)self recognition_text];
  v28 = recognition_text;
  if (!recognition_text)
  {
    recognition_text = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)recognition_text UTF8String];
  v30 = strlen(uTF8String5);
  LODWORD(uTF8String5) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v30);

  confidence = [(FTSpeechTranslationPartialRecognitionResponse *)self confidence];
  is_stable_result = [(FTSpeechTranslationPartialRecognitionResponse *)self is_stable_result];
  *(buffer + 70) = 1;
  v33 = *(buffer + 10);
  v34 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v26);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, return_code, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v25);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v36);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, uTF8String5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, confidence, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 18, is_stable_result, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v34 + v33);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSpeechTranslationPartialRecognitionResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__61__FTSpeechTranslationPartialRecognitionResponse_flatbuffData__block_invoke(uint64_t a1)
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