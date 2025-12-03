@interface QSSCorrectionsValidatorRequest
- (NSString)corrected_utterance;
- (NSString)language;
- (NSString)original_utterance;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::CorrectionsValidatorRequest>)addObjectToBuffer:(void *)buffer;
- (QSSCorrectionsValidatorRequest)initWithFlatbuffData:(id)data root:(const CorrectionsValidatorRequest *)root verify:(BOOL)verify;
- (QSSRecognitionResult)recognition_result;
- (id)flatbuffData;
@end

@implementation QSSCorrectionsValidatorRequest

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
  v2.var0 = [(QSSCorrectionsValidatorRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__46__QSSCorrectionsValidatorRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::CorrectionsValidatorRequest>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(QSSCorrectionsValidatorRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSCorrectionsValidatorRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(QSSCorrectionsValidatorRequest *)self language];
  v16 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v18 = strlen(uTF8String3);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  recognition_result = [(QSSCorrectionsValidatorRequest *)self recognition_result];
  v21 = [recognition_result addObjectToBuffer:buffer];

  original_utterance = [(QSSCorrectionsValidatorRequest *)self original_utterance];
  v23 = original_utterance;
  if (!original_utterance)
  {
    original_utterance = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)original_utterance UTF8String];
  v25 = strlen(uTF8String4);
  v26 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v25);

  corrected_utterance = [(QSSCorrectionsValidatorRequest *)self corrected_utterance];
  v28 = corrected_utterance;
  if (!corrected_utterance)
  {
    corrected_utterance = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)corrected_utterance UTF8String];
  v30 = strlen(uTF8String5);
  LODWORD(uTF8String5) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v30);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v31 = *(buffer + 10);
  v32 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v21);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v26);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, uTF8String5);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v32 + v31);
}

- (NSString)corrected_utterance
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

- (NSString)original_utterance
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

- (QSSRecognitionResult)recognition_result
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recognition_result"];
  if (!v3)
  {
    v4 = [QSSRecognitionResult alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
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

- (NSString)language
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

- (QSSCorrectionsValidatorRequest)initWithFlatbuffData:(id)data root:(const CorrectionsValidatorRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v46.receiver = self;
  v46.super_class = QSSCorrectionsValidatorRequest;
  v10 = [(QSSCorrectionsValidatorRequest *)&v46 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_51;
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
        goto LABEL_51;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v41 = bytes3;
      v42 = v18;
      v43 = xmmword_26914CD70;
      v44 = 0;
      LOBYTE(v45) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!flatbuffers::Verifier::VerifyTableStart(&v41, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v41, 4u))
        {
          goto LABEL_51;
        }

        v20 = (v19 - *v19);
        if (*v20 >= 5u && (v21 = v20[2]) != 0)
        {
          v22 = v19 + v21 + *(v19 + v21);
        }

        else
        {
          v22 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v41, v22) || !flatbuffers::Table::VerifyOffset(v19, &v41, 6u))
        {
          goto LABEL_51;
        }

        v23 = (v19 - *v19);
        if (*v23 >= 7u && (v24 = v23[3]) != 0)
        {
          v25 = v19 + v24 + *(v19 + v24);
        }

        else
        {
          v25 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v41, v25) || !flatbuffers::Table::VerifyOffset(v19, &v41, 8u))
        {
          goto LABEL_51;
        }

        v26 = (v19 - *v19);
        if (*v26 >= 9u && (v27 = v26[4]) != 0)
        {
          v28 = v19 + v27 + *(v19 + v27);
        }

        else
        {
          v28 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v41, v28))
        {
          goto LABEL_51;
        }

        if (!flatbuffers::Table::VerifyOffset(v19, &v41, 0xAu))
        {
          goto LABEL_51;
        }

        v29 = (v19 - *v19);
        if (*v29 >= 0xBu)
        {
          v30 = v29[5];
          if (v30)
          {
            if (!siri::speech::schema_fb::RecognitionResult::Verify((v19 + v30 + *(v19 + v30)), &v41))
            {
              goto LABEL_51;
            }
          }
        }

        if (!flatbuffers::Table::VerifyOffset(v19, &v41, 0xCu))
        {
          goto LABEL_51;
        }

        v31 = (v19 - *v19);
        if (*v31 >= 0xDu && (v32 = v31[6]) != 0)
        {
          v33 = v19 + v32 + *(v19 + v32);
        }

        else
        {
          v33 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v41, v33) || !flatbuffers::Table::VerifyOffset(v19, &v41, 0xEu) || ((v34 = (v19 - *v19), *v34 < 0xFu) || (v35 = v34[7]) == 0 ? (v36 = 0) : (v36 = v19 + v35 + *(v19 + v35)), !flatbuffers::Verifier::VerifyString(&v41, v36)))
        {
LABEL_51:
          v39 = 0;
          goto LABEL_52;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = dictionary;
  }

  v39 = v11;
LABEL_52:

  return v39;
}

@end