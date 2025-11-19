@interface QSSSpeechTranslationFinalRecognitionResponse
- (NSString)conversation_id;
- (NSString)recognition_text;
- (NSString)request_id;
- (NSString)return_str;
- (NSString)source_locale;
- (Offset<siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse>)addObjectToBuffer:(void *)a3;
- (QSSRecognitionResult)recognition_result;
- (QSSSpeechTranslationFinalRecognitionResponse)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationFinalRecognitionResponse *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSSpeechTranslationFinalRecognitionResponse

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
  v2.var0 = [(QSSSpeechTranslationFinalRecognitionResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__60__QSSSpeechTranslationFinalRecognitionResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSSpeechTranslationFinalRecognitionResponse *)self conversation_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSSpeechTranslationFinalRecognitionResponse *)self request_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(QSSSpeechTranslationFinalRecognitionResponse *)self return_code];
  v16 = [(QSSSpeechTranslationFinalRecognitionResponse *)self return_str];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_2879AE8E0;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  v20 = flatbuffers::FlatBufferBuilder::CreateString(a3, v18, v19);

  v21 = [(QSSSpeechTranslationFinalRecognitionResponse *)self source_locale];
  v22 = v21;
  if (!v21)
  {
    v21 = &stru_2879AE8E0;
  }

  v23 = [(__CFString *)v21 UTF8String];
  v24 = strlen(v23);
  v25 = flatbuffers::FlatBufferBuilder::CreateString(a3, v23, v24);

  v26 = [(QSSSpeechTranslationFinalRecognitionResponse *)self recognition_text];
  v27 = v26;
  if (!v26)
  {
    v26 = &stru_2879AE8E0;
  }

  v28 = [(__CFString *)v26 UTF8String];
  v29 = strlen(v28);
  LODWORD(v28) = flatbuffers::FlatBufferBuilder::CreateString(a3, v28, v29);

  v30 = [(QSSSpeechTranslationFinalRecognitionResponse *)self recognition_result];
  v31 = [v30 addObjectToBuffer:a3];

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v32 = *(a3 + 10);
  v33 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v15);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v20);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v25);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v28);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 16, v31);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v33 + v32);
}

- (QSSRecognitionResult)recognition_result
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recognition_result"];
  if (!v3)
  {
    v4 = [QSSRecognitionResult alloc];
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

    v3 = [(QSSRecognitionResult *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"recognition_result"];
  }

  return v3;
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

- (QSSSpeechTranslationFinalRecognitionResponse)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationFinalRecognitionResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSSpeechTranslationFinalRecognitionResponse;
  v10 = [(QSSSpeechTranslationFinalRecognitionResponse *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
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
        if (!siri::speech::schema_fb::SpeechTranslationFinalRecognitionResponse::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end