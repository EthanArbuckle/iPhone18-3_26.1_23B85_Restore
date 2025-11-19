@interface QSSCorrectionsValidatorResponse
- (NSArray)corrections;
- (NSString)language;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::CorrectionsValidatorResponse>)addObjectToBuffer:(void *)a3;
- (QSSCorrectionsValidatorResponse)initWithFlatbuffData:(id)a3 root:(const CorrectionsValidatorResponse *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSCorrectionsValidatorResponse

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
  v2.var0 = [(QSSCorrectionsValidatorResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__47__QSSCorrectionsValidatorResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::CorrectionsValidatorResponse>)addObjectToBuffer:(void *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(QSSCorrectionsValidatorResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSCorrectionsValidatorResponse *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v34 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(QSSCorrectionsValidatorResponse *)self language];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_2879AE8E0;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v33 = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);

  v32 = [(QSSCorrectionsValidatorResponse *)self return_code];
  v17 = [(QSSCorrectionsValidatorResponse *)self return_str];
  v18 = v17;
  if (!v17)
  {
    v17 = &stru_2879AE8E0;
  }

  v19 = [(__CFString *)v17 UTF8String];
  v20 = strlen(v19);
  v31 = flatbuffers::FlatBufferBuilder::CreateString(a3, v19, v20);

  v21 = [(QSSCorrectionsValidatorResponse *)self corrections];
  v22 = [v21 count];
  if (v22)
  {
    if (!(v22 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v22);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(QSSCorrectionsValidatorResponse *)self corrections];
  if ([obj countByEnumeratingWithState:&v37 objects:v41 count:16])
  {
    *v38;
    *v38;
    [**(&v37 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v23 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v24 = *(a3 + 8);
  v25 = *(a3 + 12);
  v26 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v34);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v33);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v32);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v31);
  if (v23)
  {
    v27 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v23);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v27);
  }

  v28.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v24 - v25 + v26);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (NSArray)corrections
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"corrections"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xFu)
    {
      v6 = *v5[14].var0;
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
            v11 = [[QSSCorrectionsAlignment alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"corrections"];
  }

  return v3;
}

- (NSString)return_str
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

- (int)return_code
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

- (QSSCorrectionsValidatorResponse)initWithFlatbuffData:(id)a3 root:(const CorrectionsValidatorResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v44.receiver = self;
  v44.super_class = QSSCorrectionsValidatorResponse;
  v10 = [(QSSCorrectionsValidatorResponse *)&v44 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_53;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_54;
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
    goto LABEL_52;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_54;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v39 = v17;
  v40 = v18;
  v41 = xmmword_26914CD70;
  v42 = 0;
  v43 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_52;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v39, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v39, 4u))
  {
    goto LABEL_54;
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

  if (!flatbuffers::Verifier::VerifyString(&v39, v22) || !flatbuffers::Table::VerifyOffset(v19, &v39, 6u))
  {
    goto LABEL_54;
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

  if (!flatbuffers::Verifier::VerifyString(&v39, v25) || !flatbuffers::Table::VerifyOffset(v19, &v39, 8u))
  {
    goto LABEL_54;
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

  if (!flatbuffers::Verifier::VerifyString(&v39, v28))
  {
    goto LABEL_54;
  }

  v29 = (v19 - *v19);
  v30 = *v29;
  if (v30 >= 0xB && v29[5] && (v40 < 5 || v40 - 4 < v19 + v29[5] - v39))
  {
    goto LABEL_54;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v39, 0xCu))
  {
    goto LABEL_54;
  }

  v31 = v30 >= 0xD && v29[6] ? v19 + v29[6] + *(v19 + v29[6]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v39, v31) || !flatbuffers::Table::VerifyOffset(v19, &v39, 0xEu))
  {
    goto LABEL_54;
  }

  v32 = *v19;
  if (*(v19 - v32) < 0xFu)
  {
    goto LABEL_50;
  }

  if (*(v19 - v32 + 14))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v39, v19 + *(v19 - v32 + 14) + *(v19 + *(v19 - v32 + 14)), 4uLL, 0))
    {
      v32 = *v19;
      if (*(v19 - v32) < 0xFu)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

LABEL_54:
    v37 = 0;
    goto LABEL_55;
  }

LABEL_47:
  v33 = *(v19 - v32 + 14);
  if (v33)
  {
    v34 = (v19 + v33 + *(v19 + v33));
    goto LABEL_51;
  }

LABEL_50:
  v34 = 0;
LABEL_51:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSReplacement>(&v39, v34))
  {
    goto LABEL_54;
  }

LABEL_52:
  v35 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v35;

LABEL_53:
  v37 = v11;
LABEL_55:

  return v37;
}

@end