@interface QSSFinalSpeechRecognitionResponse
- (BOOL)has_result;
- (NSString)language;
- (NSString)request_locale;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::FinalSpeechRecognitionResponse>)addObjectToBuffer:(void *)buffer;
- (QSSAudioAnalytics)audio_analytics;
- (QSSFinalSpeechRecognitionResponse)initWithFlatbuffData:(id)data root:(const FinalSpeechRecognitionResponse *)root verify:(BOOL)verify;
- (QSSLatnnMitigatorResult)latnn_mitigator_result;
- (QSSRecognitionResult)recognition_result;
- (double)watermark_peak_average;
- (id)flatbuffData;
- (int)return_code;
- (int64_t)lang_profile_recreate_codes;
- (int64_t)watermark_detection;
@end

@implementation QSSFinalSpeechRecognitionResponse

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
  v2.var0 = [(QSSFinalSpeechRecognitionResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__49__QSSFinalSpeechRecognitionResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::FinalSpeechRecognitionResponse>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(QSSFinalSpeechRecognitionResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSFinalSpeechRecognitionResponse *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  return_code = [(QSSFinalSpeechRecognitionResponse *)self return_code];
  return_str = [(QSSFinalSpeechRecognitionResponse *)self return_str];
  v17 = return_str;
  if (!return_str)
  {
    return_str = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)return_str UTF8String];
  v19 = strlen(uTF8String3);
  v20 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);

  recognition_result = [(QSSFinalSpeechRecognitionResponse *)self recognition_result];
  v22 = [recognition_result addObjectToBuffer:buffer];

  lang_profile_recreate_codes = [(QSSFinalSpeechRecognitionResponse *)self lang_profile_recreate_codes];
  audio_analytics = [(QSSFinalSpeechRecognitionResponse *)self audio_analytics];
  v45 = [audio_analytics addObjectToBuffer:buffer];
  v43 = lang_profile_recreate_codes;
  v44 = v22;

  watermark_detection = [(QSSFinalSpeechRecognitionResponse *)self watermark_detection];
  [(QSSFinalSpeechRecognitionResponse *)self watermark_peak_average];
  v26 = v25;
  language = [(QSSFinalSpeechRecognitionResponse *)self language];
  v28 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)language UTF8String];
  v30 = strlen(uTF8String4);
  v31 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v30);

  latnn_mitigator_result = [(QSSFinalSpeechRecognitionResponse *)self latnn_mitigator_result];
  v41 = [latnn_mitigator_result addObjectToBuffer:buffer];

  request_locale = [(QSSFinalSpeechRecognitionResponse *)self request_locale];
  v34 = request_locale;
  if (!request_locale)
  {
    request_locale = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)request_locale UTF8String];
  v36 = strlen(uTF8String5);
  LODWORD(uTF8String5) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v36);

  has_result = [(QSSFinalSpeechRecognitionResponse *)self has_result];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v38 = *(buffer + 10);
  v39 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, return_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v20);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v44);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, v43);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, v45);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 18, watermark_detection);
  flatbuffers::FlatBufferBuilder::AddElement<double>(buffer, 20, v26);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 22, v31);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 24, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 26, uTF8String5);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 28, has_result);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v39 + v38);
}

- (BOOL)has_result
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x1Du && (v4 = *v3[28].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)request_locale
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 26].var0;
  if (*root[-v3 + 26].var0)
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

- (QSSLatnnMitigatorResult)latnn_mitigator_result
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"latnn_mitigator_result"];
  if (!v3)
  {
    v4 = [QSSLatnnMitigatorResult alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x19u && (v7 = *v6[24].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSLatnnMitigatorResult *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"latnn_mitigator_result"];
  }

  return v3;
}

- (NSString)language
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

- (double)watermark_peak_average
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x15u)
  {
    v5 = *v3[20].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (int64_t)watermark_detection
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

- (QSSAudioAnalytics)audio_analytics
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"audio_analytics"];
  if (!v3)
  {
    v4 = [QSSAudioAnalytics alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x11u && (v7 = *v6[16].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSAudioAnalytics *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"audio_analytics"];
  }

  return v3;
}

- (int64_t)lang_profile_recreate_codes
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (QSSRecognitionResult)recognition_result
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recognition_result"];
  if (!v3)
  {
    v4 = [QSSRecognitionResult alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSRecognitionResult *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"recognition_result"];
  }

  return v3;
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

- (QSSFinalSpeechRecognitionResponse)initWithFlatbuffData:(id)data root:(const FinalSpeechRecognitionResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSFinalSpeechRecognitionResponse;
  v10 = [(QSSFinalSpeechRecognitionResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(v19, &v24))
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