@interface QSSItnRequest
- (NSArray)words_list;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::ItnRequest>)addObjectToBuffer:(void *)buffer;
- (QSSItnRequest)initWithFlatbuffData:(id)data root:(const ItnRequest *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSItnRequest

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
  v2.var0 = [(QSSItnRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__29__QSSItnRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ItnRequest>)addObjectToBuffer:(void *)buffer
{
  v41 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSItnRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSItnRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(QSSItnRequest *)self language];
  v16 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v18 = strlen(uTF8String3);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  memset(&v39, 0, sizeof(v39));
  words_list = [(QSSItnRequest *)self words_list];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v39, [words_list count]);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  words_list2 = [(QSSItnRequest *)self words_list];
  v22 = [words_list2 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v22)
  {
    v23 = *v36;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(words_list2);
        }

        v34 = [*(*(&v35 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v39, &v34);
      }

      v22 = [words_list2 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v22);
  }

  begin = v39.__begin_;
  if (v39.__end_ == v39.__begin_)
  {
    v26 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokens>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokens>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionPhraseTokens>> const&)::t;
  }

  else
  {
    v26 = v39.__begin_;
  }

  v27 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v26, v39.__end_ - v39.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v28 = *(buffer + 8);
  v29 = *(buffer + 12);
  v30 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v27);
  v31.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v28 - v29 + v30);
  if (begin)
  {
    operator delete(begin);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (NSArray)words_list
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"words_list"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xBu)
    {
      v6 = *v5[10].var0;
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
            v11 = [[QSSRecognitionPhraseTokens alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"words_list"];
  }

  return array;
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

- (QSSItnRequest)initWithFlatbuffData:(id)data root:(const ItnRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v41.receiver = self;
  v41.super_class = QSSItnRequest;
  v10 = [(QSSItnRequest *)&v41 init];
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
  v36 = bytes3;
  v37 = v18;
  v38 = xmmword_26914CD70;
  v39 = 0;
  LOBYTE(v40) = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_41;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v36, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v36, 4u))
  {
    goto LABEL_43;
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
    goto LABEL_43;
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
    goto LABEL_43;
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

  if (!flatbuffers::Verifier::VerifyString(&v36, v28) || !flatbuffers::Table::VerifyOffset(v19, &v36, 0xAu))
  {
    goto LABEL_43;
  }

  v29 = *v19;
  if (*(v19 - v29) < 0xBu)
  {
    goto LABEL_39;
  }

  if (*(v19 - v29 + 10))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v36, v19 + *(v19 - v29 + 10) + *(v19 + *(v19 - v29 + 10)), 4uLL, 0))
    {
      v29 = *v19;
      if (*(v19 - v29) < 0xBu)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

LABEL_43:
    v34 = 0;
    goto LABEL_44;
  }

LABEL_37:
  v30 = *(v19 - v29 + 10);
  if (v30)
  {
    v31 = (v19 + v30 + *(v19 + v30));
    goto LABEL_40;
  }

LABEL_39:
  v31 = 0;
LABEL_40:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokens>(&v36, v31))
  {
    goto LABEL_43;
  }

LABEL_41:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_42:
  v34 = v11;
LABEL_44:

  return v34;
}

@end