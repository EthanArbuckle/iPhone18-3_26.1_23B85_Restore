@interface QSSLmScorerResponse
- (NSArray)tokens;
- (NSString)return_str;
- (Offset<siri::speech::schema_fb::LmScorerResponse>)addObjectToBuffer:(void *)buffer;
- (QSSLmScorerResponse)initWithFlatbuffData:(id)data root:(const LmScorerResponse *)root verify:(BOOL)verify;
- (double)ppl;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSLmScorerResponse

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
  v2.var0 = [(QSSLmScorerResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__35__QSSLmScorerResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::LmScorerResponse>)addObjectToBuffer:(void *)buffer
{
  v30 = *MEMORY[0x277D85DE8];
  return_code = [(QSSLmScorerResponse *)self return_code];
  selfCopy = self;
  return_str = [(QSSLmScorerResponse *)self return_str];
  v6 = return_str;
  if (!return_str)
  {
    return_str = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)return_str UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  tokens = [(QSSLmScorerResponse *)selfCopy tokens];
  v10 = [tokens count];
  if (v10)
  {
    if (!(v10 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v10);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(QSSLmScorerResponse *)selfCopy tokens];
  if ([obj countByEnumeratingWithState:&v25 objects:v29 count:16])
  {
    *v26;
    *v26;
    [**(&v25 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v11 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  [(QSSLmScorerResponse *)selfCopy ppl];
  v13 = v12;
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 8);
  v15 = *(buffer + 12);
  v16 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, return_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, String);
  if (v11)
  {
    v17 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v11);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, v17);
  }

  flatbuffers::FlatBufferBuilder::AddElement<double>(buffer, 10, v13);
  v18.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v14 - v15 + v16);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (double)ppl
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xBu)
  {
    v5 = *v3[10].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
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
            v11 = [[QSSLmScorerToken alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
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

- (NSString)return_str
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
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (QSSLmScorerResponse)initWithFlatbuffData:(id)data root:(const LmScorerResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v40.receiver = self;
  v40.super_class = QSSLmScorerResponse;
  v10 = [(QSSLmScorerResponse *)&v40 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_42;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_43;
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
    goto LABEL_41;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_43;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v35 = bytes3;
  v36 = v18;
  v37 = xmmword_26914CD70;
  v38 = 0;
  v39 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_41;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v35, v11->_root->var0))
  {
    goto LABEL_43;
  }

  v20 = (v19 - *v19);
  v21 = *v20;
  if (v21 >= 5 && v20[2] && (v36 < 5 || v36 - 4 < v19 + v20[2] - v35))
  {
    goto LABEL_43;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v35, 6u))
  {
    goto LABEL_43;
  }

  v22 = v21 >= 7 && v20[3] ? v19 + v20[3] + *(v19 + v20[3]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v35, v22) || !flatbuffers::Table::VerifyOffset(v19, &v35, 8u))
  {
    goto LABEL_43;
  }

  v23 = *v19;
  if (*(v19 - v23) < 9u)
  {
    goto LABEL_37;
  }

  if (*(v19 - v23 + 8))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v35, v19 + *(v19 - v23 + 8) + *(v19 + *(v19 - v23 + 8)), 4uLL, 0))
    {
      v23 = *v19;
      if (*(v19 - v23) < 9u)
      {
        goto LABEL_37;
      }

      v24 = -v23;
      goto LABEL_31;
    }

LABEL_43:
    v33 = 0;
    goto LABEL_44;
  }

  v24 = -v23;
LABEL_31:
  v25 = *(v19 + v24 + 8);
  if (v25)
  {
    v26 = (v19 + v25 + *(v19 + v25));
    if (*v26)
    {
      v27 = 0;
      v28 = v26 + 1;
      while (siri::speech::schema_fb::LmScorerToken::Verify((v28 + *v28), &v35))
      {
        ++v27;
        ++v28;
        if (v27 >= *v26)
        {
          LODWORD(v23) = *v19;
          goto LABEL_37;
        }
      }

      goto LABEL_43;
    }
  }

LABEL_37:
  v29 = (v19 - v23);
  if (*v29 >= 0xBu)
  {
    v30 = v29[5];
    if (v30)
    {
      if (v36 < 9 || v36 - 8 < v19 + v30 - v35)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_41:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_42:
  v33 = v11;
LABEL_44:

  return v33;
}

@end