@interface QSSPartialSpeechRecognitionResponse
- (BOOL)is_stable_result;
- (NSString)language;
- (NSString)recognition_text;
- (NSString)request_locale;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::PartialSpeechRecognitionResponse>)addObjectToBuffer:(void *)buffer;
- (QSSPartialSpeechRecognitionResponse)initWithFlatbuffData:(id)data root:(const PartialSpeechRecognitionResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)audio_duration_ms;
- (int)confidence;
- (int)return_code;
@end

@implementation QSSPartialSpeechRecognitionResponse

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
  v2.var0 = [(QSSPartialSpeechRecognitionResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__51__QSSPartialSpeechRecognitionResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::PartialSpeechRecognitionResponse>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(QSSPartialSpeechRecognitionResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSPartialSpeechRecognitionResponse *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  return_code = [(QSSPartialSpeechRecognitionResponse *)self return_code];
  return_str = [(QSSPartialSpeechRecognitionResponse *)self return_str];
  v17 = return_str;
  if (!return_str)
  {
    return_str = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)return_str UTF8String];
  v19 = strlen(uTF8String3);
  v41 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);
  v42 = return_code;
  v43 = v14;
  v20 = String;

  recognition_text = [(QSSPartialSpeechRecognitionResponse *)self recognition_text];
  v22 = recognition_text;
  if (!recognition_text)
  {
    recognition_text = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)recognition_text UTF8String];
  v24 = strlen(uTF8String4);
  v25 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v24);

  is_stable_result = [(QSSPartialSpeechRecognitionResponse *)self is_stable_result];
  audio_duration_ms = [(QSSPartialSpeechRecognitionResponse *)self audio_duration_ms];
  confidence = [(QSSPartialSpeechRecognitionResponse *)self confidence];
  language = [(QSSPartialSpeechRecognitionResponse *)self language];
  v30 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)language UTF8String];
  v32 = strlen(uTF8String5);
  v33 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v32);

  request_locale = [(QSSPartialSpeechRecognitionResponse *)self request_locale];
  v35 = request_locale;
  if (!request_locale)
  {
    request_locale = &stru_2879AE8E0;
  }

  uTF8String6 = [(__CFString *)request_locale UTF8String];
  v37 = strlen(uTF8String6);
  LODWORD(uTF8String6) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v37);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v38 = *(buffer + 10);
  v39 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v20);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v43);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, v42);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v25);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 14, is_stable_result);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, audio_duration_ms);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 18, confidence);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 20, v33);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 22, uTF8String6);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v39 + v38);
}

- (NSString)request_locale
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

- (NSString)language
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

- (int)confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (int)audio_duration_ms
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
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)recognition_text
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

- (NSString)session_id
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

- (QSSPartialSpeechRecognitionResponse)initWithFlatbuffData:(id)data root:(const PartialSpeechRecognitionResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSPartialSpeechRecognitionResponse;
  v10 = [(QSSPartialSpeechRecognitionResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(v19, &v24))
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