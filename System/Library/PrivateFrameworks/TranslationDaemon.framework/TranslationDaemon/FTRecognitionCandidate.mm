@interface FTRecognitionCandidate
- (BOOL)speech_profile_used;
- (FTAudioAnalytics)audio_analytics;
- (FTLatnnMitigatorResult)latnn_mitigator_result;
- (FTRecognitionCandidate)initWithFlatbuffData:(id)data root:(const RecognitionCandidate *)root verify:(BOOL)verify;
- (FTRecognitionResult)recognition_result;
- (NSString)language;
- (NSString)request_locale;
- (NSString)result_candidate_id;
- (NSString)result_id;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::RecognitionCandidate>)addObjectToBuffer:(void *)buffer;
- (double)snr;
- (double)watermark_peak_average;
- (id)flatbuffData;
- (int)return_code;
- (int64_t)fingerprint_detection;
- (int64_t)watermark_detection;
@end

@implementation FTRecognitionCandidate

- (FTRecognitionCandidate)initWithFlatbuffData:(id)data root:(const RecognitionCandidate *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTRecognitionCandidate;
  v10 = [(FTRecognitionCandidate *)&v25 init];
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

  if (!siri::speech::schema_fb::RecognitionCandidate::Verify(v18, v21))
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

- (FTRecognitionResult)recognition_result
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recognition_result"];
  if (!v3)
  {
    v4 = [FTRecognitionResult alloc];
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

    v3 = [(FTRecognitionResult *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"recognition_result"];
  }

  return v3;
}

- (NSString)result_id
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

- (double)snr
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x11u)
  {
    v5 = *v3[16].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (int64_t)fingerprint_detection
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

- (FTAudioAnalytics)audio_analytics
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"audio_analytics"];
  if (!v3)
  {
    v4 = [FTAudioAnalytics alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x15u && (v7 = *v6[20].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTAudioAnalytics *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"audio_analytics"];
  }

  return v3;
}

- (int64_t)watermark_detection
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x17u && (v4 = *v3[22].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (double)watermark_peak_average
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x19u)
  {
    v5 = *v3[24].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (NSString)language
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

- (FTLatnnMitigatorResult)latnn_mitigator_result
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"latnn_mitigator_result"];
  if (!v3)
  {
    v4 = [FTLatnnMitigatorResult alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x1Du && (v7 = *v6[28].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTLatnnMitigatorResult *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"latnn_mitigator_result"];
  }

  return v3;
}

- (NSString)request_locale
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 30].var0;
  if (*root[-v3 + 30].var0)
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

- (BOOL)speech_profile_used
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x21u && (v4 = *v3[32].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)result_candidate_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 34].var0;
  if (*root[-v3 + 34].var0)
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

- (Offset<siri::speech::schema_fb::RecognitionCandidate>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(FTRecognitionCandidate *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTRecognitionCandidate *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  return_code = [(FTRecognitionCandidate *)self return_code];
  return_str = [(FTRecognitionCandidate *)self return_str];
  v17 = return_str;
  if (!return_str)
  {
    return_str = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)return_str UTF8String];
  v19 = strlen(uTF8String3);
  v20 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);

  recognition_result = [(FTRecognitionCandidate *)self recognition_result];
  v22 = [recognition_result addObjectToBuffer:buffer];

  result_id = [(FTRecognitionCandidate *)self result_id];
  v24 = result_id;
  if (!result_id)
  {
    result_id = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)result_id UTF8String];
  v26 = strlen(uTF8String4);
  v27 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v26);
  v60 = v22;

  [(FTRecognitionCandidate *)self snr];
  v29 = v28;
  fingerprint_detection = [(FTRecognitionCandidate *)self fingerprint_detection];
  audio_analytics = [(FTRecognitionCandidate *)self audio_analytics];
  v59 = [audio_analytics addObjectToBuffer:buffer];
  v58 = v20;

  watermark_detection = [(FTRecognitionCandidate *)self watermark_detection];
  [(FTRecognitionCandidate *)self watermark_peak_average];
  v33 = v32;
  language = [(FTRecognitionCandidate *)self language];
  v35 = language;
  if (!language)
  {
    language = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)language UTF8String];
  v37 = strlen(uTF8String5);
  v56 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v37);
  v38 = v27;
  v55 = fingerprint_detection;

  latnn_mitigator_result = [(FTRecognitionCandidate *)self latnn_mitigator_result];
  v54 = [latnn_mitigator_result addObjectToBuffer:buffer];
  v40 = String;

  request_locale = [(FTRecognitionCandidate *)self request_locale];
  v42 = request_locale;
  if (!request_locale)
  {
    request_locale = &stru_284834138;
  }

  uTF8String6 = [(__CFString *)request_locale UTF8String];
  v44 = strlen(uTF8String6);
  v45 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v44);

  speech_profile_used = [(FTRecognitionCandidate *)self speech_profile_used];
  result_candidate_id = [(FTRecognitionCandidate *)self result_candidate_id];
  v48 = result_candidate_id;
  if (!result_candidate_id)
  {
    result_candidate_id = &stru_284834138;
  }

  uTF8String7 = [(__CFString *)result_candidate_id UTF8String];
  v50 = strlen(uTF8String7);
  LODWORD(uTF8String7) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String7, v50);

  *(buffer + 70) = 1;
  v51 = *(buffer + 10);
  v52 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v40);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, return_code, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v58);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v60);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(buffer, 16, v29, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 18, v55, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 20, v59);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 22, watermark_detection, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(buffer, 24, v33, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 26, v56);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 28, v54);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 30, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 32, speech_profile_used, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 34, uTF8String7);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v52 + v51);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRecognitionCandidate *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__38__FTRecognitionCandidate_flatbuffData__block_invoke(uint64_t a1)
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