@interface QSSBatchTranslationCacheContainer
- (NSArray)spans;
- (NSString)request_id;
- (NSString)translated_text;
- (Offset<siri::speech::schema_fb::BatchTranslationCacheContainer>)addObjectToBuffer:(void *)buffer;
- (QSSBatchTranslationCacheContainer)initWithFlatbuffData:(id)data root:(const BatchTranslationCacheContainer *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)sentence_count;
@end

@implementation QSSBatchTranslationCacheContainer

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
  v2.var0 = [(QSSBatchTranslationCacheContainer *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__49__QSSBatchTranslationCacheContainer_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::BatchTranslationCacheContainer>)addObjectToBuffer:(void *)buffer
{
  v37 = *MEMORY[0x277D85DE8];
  request_id = [(QSSBatchTranslationCacheContainer *)self request_id];
  v6 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)request_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  translated_text = [(QSSBatchTranslationCacheContainer *)self translated_text];
  v11 = translated_text;
  if (!translated_text)
  {
    translated_text = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)translated_text UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  memset(&v35, 0, sizeof(v35));
  spans = [(QSSBatchTranslationCacheContainer *)self spans];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v35, [spans count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  spans2 = [(QSSBatchTranslationCacheContainer *)self spans];
  v17 = [spans2 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v17)
  {
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(spans2);
        }

        v30 = [*(*(&v31 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v35, &v30);
      }

      v17 = [spans2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v17);
  }

  begin = v35.__begin_;
  if (v35.__end_ == v35.__begin_)
  {
    v21 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    v21 = v35.__begin_;
  }

  v22 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v21, v35.__end_ - v35.__begin_);
  sentence_count = [(QSSBatchTranslationCacheContainer *)self sentence_count];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v24 = *(buffer + 8);
  v25 = *(buffer + 12);
  v26 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v22);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, sentence_count);
  v27.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v24 - v25 + v26);
  if (begin)
  {
    operator delete(begin);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (int)sentence_count
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

- (NSArray)spans
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
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
            v11 = [[QSSRepeatedSpan alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"spans"];
  }

  return array;
}

- (NSString)translated_text
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

- (NSString)request_id
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

- (QSSBatchTranslationCacheContainer)initWithFlatbuffData:(id)data root:(const BatchTranslationCacheContainer *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v40.receiver = self;
  v40.super_class = QSSBatchTranslationCacheContainer;
  v10 = [(QSSBatchTranslationCacheContainer *)&v40 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_40;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_41;
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
    goto LABEL_39;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_41;
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
    goto LABEL_39;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v35, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v35, 4u))
  {
    goto LABEL_41;
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

  if (!flatbuffers::Verifier::VerifyString(&v35, v22) || !flatbuffers::Table::VerifyOffset(v19, &v35, 6u))
  {
    goto LABEL_41;
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

  if (!flatbuffers::Verifier::VerifyString(&v35, v25) || !flatbuffers::Table::VerifyOffset(v19, &v35, 8u))
  {
    goto LABEL_41;
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

  if (!flatbuffers::Verifier::VerifyVectorOrString(&v35, v19 + *(v19 - v26 + 8) + *(v19 + *(v19 - v26 + 8)), 4uLL, 0))
  {
LABEL_41:
    v33 = 0;
    goto LABEL_42;
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
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedSpan>(&v35, v28))
  {
    goto LABEL_41;
  }

  v29 = (v19 - *v19);
  if (*v29 >= 0xBu)
  {
    v30 = v29[5];
    if (v30)
    {
      if (v36 < 5 || v36 - 4 < v19 + v30 - v35)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_39:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_40:
  v33 = v11;
LABEL_42:

  return v33;
}

@end