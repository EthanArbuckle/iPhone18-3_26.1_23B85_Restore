@interface QSSPostItnHammerRequest
- (NSArray)tokens;
- (NSString)language;
- (NSString)post_itn_string;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::PostItnHammerRequest>)addObjectToBuffer:(void *)buffer;
- (QSSPostItnHammerRequest)initWithFlatbuffData:(id)data root:(const PostItnHammerRequest *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSPostItnHammerRequest

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
  v2.var0 = [(QSSPostItnHammerRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__39__QSSPostItnHammerRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::PostItnHammerRequest>)addObjectToBuffer:(void *)buffer
{
  v46 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSPostItnHammerRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSPostItnHammerRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(QSSPostItnHammerRequest *)self language];
  v16 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v18 = strlen(uTF8String3);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  post_itn_string = [(QSSPostItnHammerRequest *)self post_itn_string];
  v21 = post_itn_string;
  if (!post_itn_string)
  {
    post_itn_string = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)post_itn_string UTF8String];
  v23 = strlen(uTF8String4);
  v24 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  memset(&v44, 0, sizeof(v44));
  tokens = [(QSSPostItnHammerRequest *)self tokens];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v44, [tokens count]);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  tokens2 = [(QSSPostItnHammerRequest *)self tokens];
  v27 = [tokens2 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v27)
  {
    v28 = *v41;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(tokens2);
        }

        v39 = [*(*(&v40 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v44, &v39);
      }

      v27 = [tokens2 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v27);
  }

  begin = v44.__begin_;
  if (v44.__end_ == v44.__begin_)
  {
    v31 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>> const&)::t;
  }

  else
  {
    v31 = v44.__begin_;
  }

  v32 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v31, v44.__end_ - v44.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v33 = *(buffer + 8);
  v34 = *(buffer + 12);
  v35 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v24);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v32);
  v36.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v33 - v34 + v35);
  if (begin)
  {
    operator delete(begin);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (NSArray)tokens
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tokens"];
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
            v11 = [[QSSRecognitionToken alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
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

- (NSString)post_itn_string
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

- (QSSPostItnHammerRequest)initWithFlatbuffData:(id)data root:(const PostItnHammerRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v44.receiver = self;
  v44.super_class = QSSPostItnHammerRequest;
  v10 = [(QSSPostItnHammerRequest *)&v44 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_49;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_50;
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
    goto LABEL_48;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_50;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v39 = bytes3;
  v40 = v18;
  v41 = xmmword_26914CD70;
  v42 = 0;
  LOBYTE(v43) = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_48;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v39, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v39, 4u))
  {
    goto LABEL_50;
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
    goto LABEL_50;
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
    goto LABEL_50;
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

  if (!flatbuffers::Verifier::VerifyString(&v39, v28) || !flatbuffers::Table::VerifyOffset(v19, &v39, 0xAu))
  {
    goto LABEL_50;
  }

  v29 = (v19 - *v19);
  if (*v29 >= 0xBu && (v30 = v29[5]) != 0)
  {
    v31 = v19 + v30 + *(v19 + v30);
  }

  else
  {
    v31 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v39, v31) || !flatbuffers::Table::VerifyOffset(v19, &v39, 0xCu))
  {
    goto LABEL_50;
  }

  v32 = *v19;
  if (*(v19 - v32) < 0xDu)
  {
    goto LABEL_46;
  }

  if (*(v19 - v32 + 12))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v39, v19 + *(v19 - v32 + 12) + *(v19 + *(v19 - v32 + 12)), 4uLL, 0))
    {
      v32 = *v19;
      if (*(v19 - v32) < 0xDu)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

LABEL_50:
    v37 = 0;
    goto LABEL_51;
  }

LABEL_43:
  v33 = *(v19 - v32 + 12);
  if (v33)
  {
    v34 = (v19 + v33 + *(v19 + v33));
    goto LABEL_47;
  }

LABEL_46:
  v34 = 0;
LABEL_47:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionToken>(&v39, v34))
  {
    goto LABEL_50;
  }

LABEL_48:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_49:
  v37 = v11;
LABEL_51:

  return v37;
}

@end