@interface QSSShortcutFuzzyMatchRequest
- (NSArray)shortcuts;
- (NSString)context;
- (NSString)device_type;
- (NSString)interaction_id;
- (NSString)locale;
- (NSString)request_id;
- (NSString)session_id;
- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest>)addObjectToBuffer:(void *)buffer;
- (QSSShortcutFuzzyMatchRequest)initWithFlatbuffData:(id)data root:(const ShortcutFuzzyMatchRequest *)root verify:(BOOL)verify;
- (QSSShortcutFuzzyMatchRequest_StringTokenPair)utterance;
- (id)flatbuffData;
@end

@implementation QSSShortcutFuzzyMatchRequest

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
  v2.var0 = [(QSSShortcutFuzzyMatchRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__44__QSSShortcutFuzzyMatchRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchRequest>)addObjectToBuffer:(void *)buffer
{
  v55 = *MEMORY[0x277D85DE8];
  utterance = [(QSSShortcutFuzzyMatchRequest *)self utterance];
  v4 = [utterance addObjectToBuffer:buffer];

  shortcuts = [(QSSShortcutFuzzyMatchRequest *)self shortcuts];
  v6 = [shortcuts count];
  if (v6)
  {
    if (!(v6 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v6);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  shortcuts2 = [(QSSShortcutFuzzyMatchRequest *)self shortcuts];
  v47 = v4;
  if ([shortcuts2 countByEnumeratingWithState:&v50 objects:v54 count:16])
  {
    *v51;
    *v51;
    [**(&v50 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v8 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  request_id = [(QSSShortcutFuzzyMatchRequest *)self request_id];
  v10 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)request_id UTF8String];
  v12 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v12);

  session_id = [(QSSShortcutFuzzyMatchRequest *)self session_id];
  v14 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v16 = strlen(uTF8String2);
  v45 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v16);

  interaction_id = [(QSSShortcutFuzzyMatchRequest *)self interaction_id];
  v18 = interaction_id;
  if (!interaction_id)
  {
    interaction_id = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)interaction_id UTF8String];
  v20 = strlen(uTF8String3);
  v21 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v20);

  locale = [(QSSShortcutFuzzyMatchRequest *)self locale];
  v23 = locale;
  if (!locale)
  {
    locale = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)locale UTF8String];
  v25 = strlen(uTF8String4);
  v26 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v25);

  device_type = [(QSSShortcutFuzzyMatchRequest *)self device_type];
  v28 = device_type;
  if (!device_type)
  {
    device_type = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)device_type UTF8String];
  v30 = strlen(uTF8String5);
  v31 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v30);

  context = [(QSSShortcutFuzzyMatchRequest *)self context];
  v33 = context;
  if (!context)
  {
    context = &stru_2879AE8E0;
  }

  uTF8String6 = [(__CFString *)context UTF8String];
  v35 = strlen(uTF8String6);
  v36 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v35);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v37 = *(buffer + 8);
  v38 = *(buffer + 12);
  v39 = *(buffer + 10);
  if (v47)
  {
    v40 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v47);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v40);
  }

  if (v8)
  {
    v41 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v8);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v41);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v45);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v21);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v26);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, v31);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, v36);
  v42.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v37 - v38 + v39);
  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

- (NSString)context
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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

- (NSString)device_type
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 16].var0;
  if (*root[-v3 + 16].var0)
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

- (NSString)locale
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

- (NSString)interaction_id
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

- (NSString)session_id
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

- (NSString)request_id
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

- (NSArray)shortcuts
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcuts"];
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
            v11 = [[QSSShortcutFuzzyMatchRequest_StringTokenPair alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"shortcuts"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__60__QSSShortcutFuzzyMatchRequest_StringTokenPair_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (QSSShortcutFuzzyMatchRequest_StringTokenPair)utterance
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"utterance"];
  if (!v3)
  {
    v4 = [QSSShortcutFuzzyMatchRequest_StringTokenPair alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSShortcutFuzzyMatchRequest_StringTokenPair *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"utterance"];
  }

  return v3;
}

- (QSSShortcutFuzzyMatchRequest)initWithFlatbuffData:(id)data root:(const ShortcutFuzzyMatchRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v54.receiver = self;
  v54.super_class = QSSShortcutFuzzyMatchRequest;
  v10 = [(QSSShortcutFuzzyMatchRequest *)&v54 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_66;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_67;
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
    goto LABEL_65;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_67;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v49 = bytes3;
  v50 = v18;
  v51 = xmmword_26914CD70;
  v52 = 0;
  LOBYTE(v53) = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_65;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v49, v11->_root->var0))
  {
    goto LABEL_67;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v49, 4u))
  {
    goto LABEL_67;
  }

  v20 = (v19 - *v19);
  if (*v20 >= 5u)
  {
    v21 = v20[2];
    if (v21)
    {
      if (!siri::speech::schema_fb::ContextWithPronHints::Verify((v19 + v21 + *(v19 + v21)), &v49))
      {
        goto LABEL_67;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v49, 6u))
  {
    goto LABEL_67;
  }

  v22 = *v19;
  if (*(v19 - v22) < 7u)
  {
    goto LABEL_28;
  }

  if (*(v19 - v22 + 6))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v49, v19 + *(v19 - v22 + 6) + *(v19 + *(v19 - v22 + 6)), 4uLL, 0))
    {
      v22 = *v19;
      if (*(v19 - v22) < 7u)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

LABEL_67:
    v47 = 0;
    goto LABEL_68;
  }

LABEL_23:
  v23 = *(v19 - v22 + 6);
  if (v23)
  {
    v24 = (v19 + v23 + *(v19 + v23));
    if (*v24)
    {
      v25 = 0;
      v26 = v24 + 1;
      while (siri::speech::schema_fb::ContextWithPronHints::Verify((v26 + *v26), &v49))
      {
        ++v25;
        ++v26;
        if (v25 >= *v24)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_67;
    }
  }

LABEL_28:
  if (!flatbuffers::Table::VerifyOffset(v19, &v49, 8u))
  {
    goto LABEL_67;
  }

  v27 = (v19 - *v19);
  if (*v27 >= 9u && (v28 = v27[4]) != 0)
  {
    v29 = v19 + v28 + *(v19 + v28);
  }

  else
  {
    v29 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v49, v29) || !flatbuffers::Table::VerifyOffset(v19, &v49, 0xAu))
  {
    goto LABEL_67;
  }

  v30 = (v19 - *v19);
  if (*v30 >= 0xBu && (v31 = v30[5]) != 0)
  {
    v32 = v19 + v31 + *(v19 + v31);
  }

  else
  {
    v32 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v49, v32) || !flatbuffers::Table::VerifyOffset(v19, &v49, 0xCu))
  {
    goto LABEL_67;
  }

  v33 = (v19 - *v19);
  if (*v33 >= 0xDu && (v34 = v33[6]) != 0)
  {
    v35 = v19 + v34 + *(v19 + v34);
  }

  else
  {
    v35 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v49, v35) || !flatbuffers::Table::VerifyOffset(v19, &v49, 0xEu))
  {
    goto LABEL_67;
  }

  v36 = (v19 - *v19);
  if (*v36 >= 0xFu && (v37 = v36[7]) != 0)
  {
    v38 = v19 + v37 + *(v19 + v37);
  }

  else
  {
    v38 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v49, v38) || !flatbuffers::Table::VerifyOffset(v19, &v49, 0x10u))
  {
    goto LABEL_67;
  }

  v39 = (v19 - *v19);
  if (*v39 >= 0x11u && (v40 = v39[8]) != 0)
  {
    v41 = v19 + v40 + *(v19 + v40);
  }

  else
  {
    v41 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v49, v41) || !flatbuffers::Table::VerifyOffset(v19, &v49, 0x12u))
  {
    goto LABEL_67;
  }

  v42 = (v19 - *v19);
  if (*v42 >= 0x13u && (v43 = v42[9]) != 0)
  {
    v44 = v19 + v43 + *(v19 + v43);
  }

  else
  {
    v44 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v49, v44))
  {
    goto LABEL_67;
  }

LABEL_65:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_66:
  v47 = v11;
LABEL_68:

  return v47;
}

@end