@interface QSSCorrectionsValidatorRequest
- (NSString)corrected_utterance;
- (NSString)language;
- (NSString)original_utterance;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::CorrectionsValidatorRequest>)addObjectToBuffer:(void *)a3;
- (QSSCorrectionsValidatorRequest)initWithFlatbuffData:(id)a3 root:(const CorrectionsValidatorRequest *)a4 verify:(BOOL)a5;
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

- (Offset<siri::speech::schema_fb::CorrectionsValidatorRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSCorrectionsValidatorRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSCorrectionsValidatorRequest *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(QSSCorrectionsValidatorRequest *)self language];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  v20 = [(QSSCorrectionsValidatorRequest *)self recognition_result];
  v21 = [v20 addObjectToBuffer:a3];

  v22 = [(QSSCorrectionsValidatorRequest *)self original_utterance];
  v23 = v22;
  if (!v22)
  {
    v22 = &stru_2879AE8E0;
  }

  v24 = [(__CFString *)v22 UTF8String];
  v25 = strlen(v24);
  v26 = flatbuffers::FlatBufferBuilder::CreateString(a3, v24, v25);

  v27 = [(QSSCorrectionsValidatorRequest *)self corrected_utterance];
  v28 = v27;
  if (!v27)
  {
    v27 = &stru_2879AE8E0;
  }

  v29 = [(__CFString *)v27 UTF8String];
  v30 = strlen(v29);
  LODWORD(v29) = flatbuffers::FlatBufferBuilder::CreateString(a3, v29, v30);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v31 = *(a3 + 10);
  v32 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v21);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v26);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v29);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v32 + v31);
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

- (QSSCorrectionsValidatorRequest)initWithFlatbuffData:(id)a3 root:(const CorrectionsValidatorRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v46.receiver = self;
  v46.super_class = QSSCorrectionsValidatorRequest;
  v10 = [(QSSCorrectionsValidatorRequest *)&v46 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_51;
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
        goto LABEL_51;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v41 = v17;
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

    v37 = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = v37;
  }

  v39 = v11;
LABEL_52:

  return v39;
}

@end