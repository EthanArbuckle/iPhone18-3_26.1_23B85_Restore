@interface FTPartialSpeechRecognitionResponse
- (BOOL)is_stable_result;
- (FTPartialSpeechRecognitionResponse)initWithFlatbuffData:(id)a3 root:(const PartialSpeechRecognitionResponse *)a4 verify:(BOOL)a5;
- (NSString)language;
- (NSString)recognition_text;
- (NSString)request_locale;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::PartialSpeechRecognitionResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int)audio_duration_ms;
- (int)confidence;
- (int)return_code;
@end

@implementation FTPartialSpeechRecognitionResponse

- (FTPartialSpeechRecognitionResponse)initWithFlatbuffData:(id)a3 root:(const PartialSpeechRecognitionResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTPartialSpeechRecognitionResponse;
  v10 = [(FTPartialSpeechRecognitionResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(v18, v21))
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

- (BOOL)is_stable_result
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
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

- (Offset<siri::speech::schema_fb::PartialSpeechRecognitionResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTPartialSpeechRecognitionResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(FTPartialSpeechRecognitionResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_284834138;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(FTPartialSpeechRecognitionResponse *)self return_code];
  v16 = [(FTPartialSpeechRecognitionResponse *)self return_str];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_284834138;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  v41 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v18, v19);
  v42 = v14;
  v43 = v15;
  v20 = String;

  v21 = [(FTPartialSpeechRecognitionResponse *)self recognition_text];
  v22 = v21;
  if (!v21)
  {
    v21 = &stru_284834138;
  }

  v23 = [(__CFString *)v21 UTF8String];
  v24 = strlen(v23);
  v25 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v23, v24);

  v26 = [(FTPartialSpeechRecognitionResponse *)self is_stable_result];
  v27 = [(FTPartialSpeechRecognitionResponse *)self audio_duration_ms];
  v28 = [(FTPartialSpeechRecognitionResponse *)self confidence];
  v29 = [(FTPartialSpeechRecognitionResponse *)self language];
  v30 = v29;
  if (!v29)
  {
    v29 = &stru_284834138;
  }

  v31 = [(__CFString *)v29 UTF8String];
  v32 = strlen(v31);
  v33 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v31, v32);

  v34 = [(FTPartialSpeechRecognitionResponse *)self request_locale];
  v35 = v34;
  if (!v34)
  {
    v34 = &stru_284834138;
  }

  v36 = [(__CFString *)v34 UTF8String];
  v37 = strlen(v36);
  LODWORD(v36) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v36, v37);

  *(a3 + 70) = 1;
  v38 = *(a3 + 10);
  v39 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v20);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v42);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v43, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v41);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v25);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 14, v26, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 16, v27, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 18, v28, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 20, v33);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 22, v36);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v39 + v38);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTPartialSpeechRecognitionResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__50__FTPartialSpeechRecognitionResponse_flatbuffData__block_invoke(uint64_t a1)
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