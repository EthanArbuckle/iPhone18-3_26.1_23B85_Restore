@interface QSSTextToSpeechSpeechFeatureResponse
- (NSArray)features;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureResponse>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechSpeechFeatureResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)error_code;
@end

@implementation QSSTextToSpeechSpeechFeatureResponse

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
  v2.var0 = [(QSSTextToSpeechSpeechFeatureResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__52__QSSTextToSpeechSpeechFeatureResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureResponse>)addObjectToBuffer:(void *)buffer
{
  v37 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSTextToSpeechSpeechFeatureResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSTextToSpeechSpeechFeatureResponse *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v29 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  error_code = [(QSSTextToSpeechSpeechFeatureResponse *)self error_code];
  error_str = [(QSSTextToSpeechSpeechFeatureResponse *)self error_str];
  v14 = error_str;
  if (!error_str)
  {
    error_str = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v16 = strlen(uTF8String3);
  v27 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  features = [(QSSTextToSpeechSpeechFeatureResponse *)self features];
  v18 = [features count];
  if (v18)
  {
    if (!(v18 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v18);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(QSSTextToSpeechSpeechFeatureResponse *)self features];
  if ([obj countByEnumeratingWithState:&v32 objects:v36 count:16])
  {
    *v33;
    *v33;
    [**(&v32 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v19 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v20 = *(buffer + 8);
  v21 = *(buffer + 12);
  v22 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v29);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v27);
  if (v19)
  {
    v23 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v19);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, v23);
  }

  v24.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v20 - v21 + v22);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (NSArray)features
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"features"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xDu)
    {
      v6 = *v5[12].var0;
      if (v6)
      {
        v7 = *root[v6].var0;
        v8 = *root[v6 + v7].var0;
        if (v8)
        {
          v9 = 4 * v8;
          v10 = &root[v7 + 4 + v6];
          do
          {
            v11 = [[QSSTextToSpeechSpeechFeatureOutputFeature alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"features"];
  }

  return array;
}

- (NSString)error_str
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

- (int)error_code
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

- (QSSTextToSpeechSpeechFeatureResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v41.receiver = self;
  v41.super_class = QSSTextToSpeechSpeechFeatureResponse;
  v10 = [(QSSTextToSpeechSpeechFeatureResponse *)&v41 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_46;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_47;
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
    goto LABEL_45;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_47;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v36 = bytes3;
  v37 = v18;
  v38 = xmmword_26914CD70;
  v39 = 0;
  v40 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_45;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v36, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v36, 4u))
  {
    goto LABEL_47;
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

  if (!flatbuffers::Verifier::VerifyString(&v36, v22) || !flatbuffers::Table::VerifyOffset(v19, &v36, 6u))
  {
    goto LABEL_47;
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

  if (!flatbuffers::Verifier::VerifyString(&v36, v25))
  {
    goto LABEL_47;
  }

  v26 = (v19 - *v19);
  v27 = *v26;
  if (v27 >= 9 && v26[4] && (v37 < 5 || v37 - 4 < v19 + v26[4] - v36))
  {
    goto LABEL_47;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v36, 0xAu))
  {
    goto LABEL_47;
  }

  v28 = v27 >= 0xB && v26[5] ? v19 + v26[5] + *(v19 + v26[5]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v36, v28) || !flatbuffers::Table::VerifyOffset(v19, &v36, 0xCu))
  {
    goto LABEL_47;
  }

  v29 = *v19;
  if (*(v19 - v29) < 0xDu)
  {
    goto LABEL_43;
  }

  if (*(v19 - v29 + 12))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v36, v19 + *(v19 - v29 + 12) + *(v19 + *(v19 - v29 + 12)), 4uLL, 0))
    {
      v29 = *v19;
      if (*(v19 - v29) < 0xDu)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

LABEL_47:
    v34 = 0;
    goto LABEL_48;
  }

LABEL_41:
  v30 = *(v19 - v29 + 12);
  if (v30)
  {
    v31 = (v19 + v30 + *(v19 + v30));
    goto LABEL_44;
  }

LABEL_43:
  v31 = 0;
LABEL_44:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature>(&v36, v31))
  {
    goto LABEL_47;
  }

LABEL_45:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_46:
  v34 = v11;
LABEL_48:

  return v34;
}

@end