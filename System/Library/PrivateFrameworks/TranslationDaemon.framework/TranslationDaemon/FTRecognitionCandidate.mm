@interface FTRecognitionCandidate
- (BOOL)speech_profile_used;
- (FTAudioAnalytics)audio_analytics;
- (FTLatnnMitigatorResult)latnn_mitigator_result;
- (FTRecognitionCandidate)initWithFlatbuffData:(id)a3 root:(const RecognitionCandidate *)a4 verify:(BOOL)a5;
- (FTRecognitionResult)recognition_result;
- (NSString)language;
- (NSString)request_locale;
- (NSString)result_candidate_id;
- (NSString)result_id;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::RecognitionCandidate>)addObjectToBuffer:(void *)a3;
- (double)snr;
- (double)watermark_peak_average;
- (id)flatbuffData;
- (int)return_code;
- (int64_t)fingerprint_detection;
- (int64_t)watermark_detection;
@end

@implementation FTRecognitionCandidate

- (FTRecognitionCandidate)initWithFlatbuffData:(id)a3 root:(const RecognitionCandidate *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTRecognitionCandidate;
  v10 = [(FTRecognitionCandidate *)&v25 init];
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

- (Offset<siri::speech::schema_fb::RecognitionCandidate>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTRecognitionCandidate *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(FTRecognitionCandidate *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_284834138;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(FTRecognitionCandidate *)self return_code];
  v16 = [(FTRecognitionCandidate *)self return_str];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_284834138;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  v20 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v18, v19);

  v21 = [(FTRecognitionCandidate *)self recognition_result];
  v22 = [v21 addObjectToBuffer:a3];

  v23 = [(FTRecognitionCandidate *)self result_id];
  v24 = v23;
  if (!v23)
  {
    v23 = &stru_284834138;
  }

  v25 = [(__CFString *)v23 UTF8String];
  v26 = strlen(v25);
  v27 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v25, v26);
  v60 = v22;

  [(FTRecognitionCandidate *)self snr];
  v29 = v28;
  v30 = [(FTRecognitionCandidate *)self fingerprint_detection];
  v31 = [(FTRecognitionCandidate *)self audio_analytics];
  v59 = [v31 addObjectToBuffer:a3];
  v58 = v20;

  v57 = [(FTRecognitionCandidate *)self watermark_detection];
  [(FTRecognitionCandidate *)self watermark_peak_average];
  v33 = v32;
  v34 = [(FTRecognitionCandidate *)self language];
  v35 = v34;
  if (!v34)
  {
    v34 = &stru_284834138;
  }

  v36 = [(__CFString *)v34 UTF8String];
  v37 = strlen(v36);
  v56 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v36, v37);
  v38 = v27;
  v55 = v30;

  v39 = [(FTRecognitionCandidate *)self latnn_mitigator_result];
  v54 = [v39 addObjectToBuffer:a3];
  v40 = String;

  v41 = [(FTRecognitionCandidate *)self request_locale];
  v42 = v41;
  if (!v41)
  {
    v41 = &stru_284834138;
  }

  v43 = [(__CFString *)v41 UTF8String];
  v44 = strlen(v43);
  v45 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v43, v44);

  v46 = [(FTRecognitionCandidate *)self speech_profile_used];
  v47 = [(FTRecognitionCandidate *)self result_candidate_id];
  v48 = v47;
  if (!v47)
  {
    v47 = &stru_284834138;
  }

  v49 = [(__CFString *)v47 UTF8String];
  v50 = strlen(v49);
  LODWORD(v49) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v49, v50);

  *(a3 + 70) = 1;
  v51 = *(a3 + 10);
  v52 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v40);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v15, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v58);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v60);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(a3, 16, v29, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 18, v55, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 20, v59);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 22, v57, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(a3, 24, v33, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 26, v56);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 28, v54);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 30, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 32, v46, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 34, v49);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v52 + v51);
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