@interface QSSTextNormalizationResponse
- (NSArray)tokens;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextNormalizationResponse>)addObjectToBuffer:(void *)a3;
- (QSSTextNormalizationResponse)initWithFlatbuffData:(id)a3 root:(const TextNormalizationResponse *)a4 verify:(BOOL)a5;
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

- (Offset<siri::speech::schema_fb::TextNormalizationResponse>)addObjectToBuffer:(void *)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = [(QSSTextNormalizationResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSTextNormalizationResponse *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v31 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(QSSTextNormalizationResponse *)self tokens];
  v14 = [v13 count];
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
    [**(&v34 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  v15 = a3;
  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v16 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v17 = [(QSSTextNormalizationResponse *)self error_code];
  v18 = [(QSSTextNormalizationResponse *)self error_str];
  v19 = v18;
  if (!v18)
  {
    v18 = &stru_2879AE8E0;
  }

  v20 = [(__CFString *)v18 UTF8String];
  v21 = strlen(v20);
  v22 = flatbuffers::FlatBufferBuilder::CreateString(v15, v20, v21);

  flatbuffers::FlatBufferBuilder::NotNested(v15);
  v23 = v15;
  *(v15 + 70) = 1;
  v24 = *(v15 + 8);
  v25 = *(v23 + 12);
  v26 = *(v23 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v23, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v23, 6, v31);
  if (v16)
  {
    v27 = flatbuffers::FlatBufferBuilder::ReferTo(v23, v16);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23, 8, v27);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23, 10, v17);
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
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tokens"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
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
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"tokens"];
  }

  return v3;
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

- (QSSTextNormalizationResponse)initWithFlatbuffData:(id)a3 root:(const TextNormalizationResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v41.receiver = self;
  v41.super_class = QSSTextNormalizationResponse;
  v10 = [(QSSTextNormalizationResponse *)&v41 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_46;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_47;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v12 = [(NSData *)v10->_data bytes];
    a4 = v12 + *v12;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_45;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_47;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v36 = v17;
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
  v32 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v32;

LABEL_46:
  v34 = v11;
LABEL_48:

  return v34;
}

@end