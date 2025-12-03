@interface QSSTextNormalizationResponse
- (NSArray)tokens;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextNormalizationResponse>)addObjectToBuffer:(void *)buffer;
- (QSSTextNormalizationResponse)initWithFlatbuffData:(id)data root:(const TextNormalizationResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)error_code;
@end

@implementation QSSTextNormalizationResponse

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
  v2.var0 = [(QSSTextNormalizationResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__44__QSSTextNormalizationResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextNormalizationResponse>)addObjectToBuffer:(void *)buffer
{
  v39 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSTextNormalizationResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSTextNormalizationResponse *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v31 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  tokens = [(QSSTextNormalizationResponse *)self tokens];
  v14 = [tokens count];
  if (v14)
  {
    if (!(v14 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v14);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(QSSTextNormalizationResponse *)self tokens];
  if ([obj countByEnumeratingWithState:&v34 objects:v38 count:16])
  {
    *v35;
    *v35;
    [**(&v34 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  bufferCopy = buffer;
  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v16 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  error_code = [(QSSTextNormalizationResponse *)self error_code];
  error_str = [(QSSTextNormalizationResponse *)self error_str];
  v19 = error_str;
  if (!error_str)
  {
    error_str = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v21 = strlen(uTF8String3);
  v22 = flatbuffers::FlatBufferBuilder::CreateString(bufferCopy, uTF8String3, v21);

  flatbuffers::FlatBufferBuilder::NotNested(bufferCopy);
  v23 = bufferCopy;
  *(bufferCopy + 70) = 1;
  v24 = *(bufferCopy + 8);
  v25 = *(v23 + 12);
  v26 = *(v23 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v23, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v23, 6, v31);
  if (v16)
  {
    v27 = flatbuffers::FlatBufferBuilder::ReferTo(v23, v16);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23, 8, v27);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23, 10, error_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v23, 12, v22);
  v28.var0 = flatbuffers::FlatBufferBuilder::EndTable(v23, v24 - v25 + v26);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (NSString)error_str
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

- (int)error_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSArray)tokens
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tokens"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 9u)
    {
      v6 = *v5[8].var0;
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
            v11 = [[QSSNormalizedToken alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"tokens"];
  }

  return array;
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

- (QSSTextNormalizationResponse)initWithFlatbuffData:(id)data root:(const TextNormalizationResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v41.receiver = self;
  v41.super_class = QSSTextNormalizationResponse;
  v10 = [(QSSTextNormalizationResponse *)&v41 init];
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

  if (!flatbuffers::Verifier::VerifyString(&v36, v25) || !flatbuffers::Table::VerifyOffset(v19, &v36, 8u))
  {
    goto LABEL_47;
  }

  v26 = *v19;
  if (*(v19 - v26) < 9u)
  {
LABEL_33:
    v28 = 0;
    goto LABEL_34;
  }

  if (!*(v19 - v26 + 8))
  {
    goto LABEL_31;
  }

  if (!flatbuffers::Verifier::VerifyVectorOrString(&v36, v19 + *(v19 - v26 + 8) + *(v19 + *(v19 - v26 + 8)), 4uLL, 0))
  {
LABEL_47:
    v34 = 0;
    goto LABEL_48;
  }

  v26 = *v19;
  if (*(v19 - v26) < 9u)
  {
    goto LABEL_33;
  }

LABEL_31:
  v27 = *(v19 - v26 + 8);
  if (!v27)
  {
    goto LABEL_33;
  }

  v28 = (v19 + v27 + *(v19 + v27));
LABEL_34:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::NormalizedToken>(&v36, v28))
  {
    goto LABEL_47;
  }

  v29 = (v19 - *v19);
  v30 = *v29;
  if (v30 >= 0xB && v29[5] && (v37 < 5 || v37 - 4 < v19 + v29[5] - v36))
  {
    goto LABEL_47;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v36, 0xCu))
  {
    goto LABEL_47;
  }

  v31 = v30 >= 0xD && v29[6] ? v19 + v29[6] + *(v19 + v29[6]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v36, v31))
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