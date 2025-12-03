@interface QSSRequestStatsResponse
- (NSArray)BOOL_stats;
- (NSArray)double_stats;
- (NSArray)int32_stats;
- (NSString)language;
- (NSString)request_locale;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::RequestStatsResponse>)addObjectToBuffer:(void *)buffer;
- (QSSRequestStatsResponse)initWithFlatbuffData:(id)data root:(const RequestStatsResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSRequestStatsResponse

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
  v2.var0 = [(QSSRequestStatsResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__39__QSSRequestStatsResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::RequestStatsResponse>)addObjectToBuffer:(void *)buffer
{
  v57 = *MEMORY[0x277D85DE8];
  bOOL_stats = [(QSSRequestStatsResponse *)self BOOL_stats];
  v5 = [bOOL_stats count];
  if (v5)
  {
    if (!(v5 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v5);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  bOOL_stats2 = [(QSSRequestStatsResponse *)self BOOL_stats];
  if ([bOOL_stats2 countByEnumeratingWithState:&v50 objects:v56 count:16])
  {
    *v51;
    *v51;
    [**(&v50 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v7 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  int32_stats = [(QSSRequestStatsResponse *)self int32_stats];
  v9 = [int32_stats count];
  v38 = v7;
  if (v9)
  {
    if (!(v9 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v9);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  int32_stats2 = [(QSSRequestStatsResponse *)self int32_stats];
  if ([int32_stats2 countByEnumeratingWithState:&v46 objects:v55 count:16])
  {
    *v47;
    *v47;
    [**(&v46 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v39 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  double_stats = [(QSSRequestStatsResponse *)self double_stats];
  v12 = [double_stats count];
  if (v12)
  {
    if (!(v12 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v12);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(QSSRequestStatsResponse *)self double_stats];
  if ([obj countByEnumeratingWithState:&v42 objects:v54 count:16])
  {
    *v43;
    *v43;
    [**(&v42 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v13 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  language = [(QSSRequestStatsResponse *)self language];
  v15 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)language UTF8String];
  v17 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v17);

  speech_id = [(QSSRequestStatsResponse *)self speech_id];
  v20 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)speech_id UTF8String];
  v22 = strlen(uTF8String2);
  v23 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v22);

  request_locale = [(QSSRequestStatsResponse *)self request_locale];
  v25 = request_locale;
  if (!request_locale)
  {
    request_locale = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)request_locale UTF8String];
  v27 = strlen(uTF8String3);
  v28 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v27);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v29 = *(buffer + 8);
  v30 = *(buffer + 12);
  v31 = *(buffer + 10);
  if (v38)
  {
    v32 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v38);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v32);
  }

  if (v39)
  {
    v33 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v39);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v33);
  }

  if (v13)
  {
    v34 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v13);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, v34);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v23);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v28);
  v35.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v29 - v30 + v31);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (NSString)request_locale
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

- (NSString)speech_id
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

- (NSString)language
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

- (NSArray)double_stats
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"double_stats"];
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
            v11 = [[QSSRequestStatsResponse_DoubleStat alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"double_stats"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__50__QSSRequestStatsResponse_DoubleStat_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSArray)int32_stats
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"int32_stats"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 7u)
    {
      v6 = *v5[6].var0;
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
            v11 = [[QSSRequestStatsResponse_Int32Stat alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"int32_stats"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__49__QSSRequestStatsResponse_Int32Stat_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSArray)BOOL_stats
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"BOOL_stats"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 5u)
    {
      v6 = *v5[4].var0;
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
            v11 = [[QSSRequestStatsResponse_BoolStat alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"BOOL_stats"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__48__QSSRequestStatsResponse_BoolStat_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (QSSRequestStatsResponse)initWithFlatbuffData:(id)data root:(const RequestStatsResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSRequestStatsResponse;
  v10 = [(QSSRequestStatsResponse *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
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
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
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
        if (!siri::speech::schema_fb::RequestStatsResponse::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end