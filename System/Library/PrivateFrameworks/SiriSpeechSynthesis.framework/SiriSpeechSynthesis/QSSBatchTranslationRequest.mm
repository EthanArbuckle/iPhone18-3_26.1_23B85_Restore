@interface QSSBatchTranslationRequest
- (NSArray)paragraphs;
- (NSString)app_id;
- (NSString)request_id;
- (NSString)session_id;
- (NSString)source_language;
- (NSString)target_language;
- (NSString)task;
- (NSString)url;
- (Offset<siri::speech::schema_fb::BatchTranslationRequest>)addObjectToBuffer:(void *)buffer;
- (QSSBatchTranslationRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationRequest *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int64_t)opt_in_status;
@end

@implementation QSSBatchTranslationRequest

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
  v2.var0 = [(QSSBatchTranslationRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__42__QSSBatchTranslationRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::BatchTranslationRequest>)addObjectToBuffer:(void *)buffer
{
  v56 = *MEMORY[0x277D85DE8];
  request_id = [(QSSBatchTranslationRequest *)self request_id];
  v6 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)request_id UTF8String];
  v8 = strlen(uTF8String);
  HIDWORD(v49) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  task = [(QSSBatchTranslationRequest *)self task];
  v10 = task;
  if (!task)
  {
    task = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)task UTF8String];
  v12 = strlen(uTF8String2);
  LODWORD(v49) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  source_language = [(QSSBatchTranslationRequest *)self source_language];
  v14 = source_language;
  if (!source_language)
  {
    source_language = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)source_language UTF8String];
  v16 = strlen(uTF8String3);
  HIDWORD(v48) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  target_language = [(QSSBatchTranslationRequest *)self target_language];
  v18 = target_language;
  if (!target_language)
  {
    target_language = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)target_language UTF8String];
  v20 = strlen(uTF8String4);
  LODWORD(v48) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v20);

  paragraphs = [(QSSBatchTranslationRequest *)self paragraphs];
  v22 = [paragraphs count];
  if (v22)
  {
    if (!(v22 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v22);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(QSSBatchTranslationRequest *)self paragraphs];
  if ([obj countByEnumeratingWithState:&v51 objects:v55 count:16])
  {
    *v52;
    *v52;
    [**(&v51 + 1) addObjectToBuffer:{buffer, v48, v49}];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  bufferCopy = buffer;
  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v24 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  app_id = [(QSSBatchTranslationRequest *)self app_id];
  v26 = app_id;
  if (!app_id)
  {
    app_id = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)app_id UTF8String];
  v28 = strlen(uTF8String5);
  String = flatbuffers::FlatBufferBuilder::CreateString(bufferCopy, uTF8String5, v28);

  session_id = [(QSSBatchTranslationRequest *)self session_id];
  v31 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String6 = [(__CFString *)session_id UTF8String];
  v33 = strlen(uTF8String6);
  v34 = flatbuffers::FlatBufferBuilder::CreateString(bufferCopy, uTF8String6, v33);

  v35 = [(QSSBatchTranslationRequest *)self url];
  v36 = v35;
  if (!v35)
  {
    v35 = &stru_2879AE8E0;
  }

  uTF8String7 = [(__CFString *)v35 UTF8String];
  v38 = strlen(uTF8String7);
  v39 = flatbuffers::FlatBufferBuilder::CreateString(bufferCopy, uTF8String7, v38);

  opt_in_status = [(QSSBatchTranslationRequest *)self opt_in_status];
  flatbuffers::FlatBufferBuilder::NotNested(bufferCopy);
  *(bufferCopy + 70) = 1;
  v41 = *(bufferCopy + 8);
  v42 = *(bufferCopy + 12);
  v43 = *(bufferCopy + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(bufferCopy, 4, HIDWORD(v49));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(bufferCopy, 6, v49);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(bufferCopy, 8, HIDWORD(v48));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(bufferCopy, 10, v48);
  if (v24)
  {
    v44 = flatbuffers::FlatBufferBuilder::ReferTo(bufferCopy, v24);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(bufferCopy, 12, v44);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(bufferCopy, 14, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(bufferCopy, 16, v34);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(bufferCopy, 18, v39);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(bufferCopy, 20, opt_in_status);
  v45.var0 = flatbuffers::FlatBufferBuilder::EndTable(bufferCopy, v41 - v42 + v43);
  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

- (int64_t)opt_in_status
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)url
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

- (NSString)session_id
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

- (NSString)app_id
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

- (NSArray)paragraphs
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"paragraphs"];
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
            v11 = [[QSSBatchTranslationRequest_Paragraph alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"paragraphs"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__52__QSSBatchTranslationRequest_Paragraph_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSString)target_language
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

- (NSString)source_language
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

- (NSString)task
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

- (QSSBatchTranslationRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSBatchTranslationRequest;
  v10 = [(QSSBatchTranslationRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::BatchTranslationRequest::Verify(v19, &v24))
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