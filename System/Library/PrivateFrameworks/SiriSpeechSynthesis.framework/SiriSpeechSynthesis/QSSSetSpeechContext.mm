@interface QSSSetSpeechContext
- (NSArray)context_with_pron_hints;
- (NSArray)contextual_text;
- (NSString)left_context;
- (NSString)right_context;
- (Offset<siri::speech::schema_fb::SetSpeechContext>)addObjectToBuffer:(void *)buffer;
- (QSSSetSpeechContext)initWithFlatbuffData:(id)data root:(const SetSpeechContext *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSSetSpeechContext

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
  v2.var0 = [(QSSSetSpeechContext *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__35__QSSSetSpeechContext_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SetSpeechContext>)addObjectToBuffer:(void *)buffer
{
  v47 = *MEMORY[0x277D85DE8];
  memset(&v44, 0, sizeof(v44));
  contextual_text = [(QSSSetSpeechContext *)self contextual_text];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v44, [contextual_text count]);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  contextual_text2 = [(QSSSetSpeechContext *)self contextual_text];
  v7 = [contextual_text2 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v7)
  {
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(contextual_text2);
        }

        uTF8String = [*(*(&v40 + 1) + 8 * i) UTF8String];
        v11 = strlen(uTF8String);
        String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v11);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v44, &String);
      }

      v7 = [contextual_text2 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v7);
  }

  if (v44.__end_ == v44.__begin_)
  {
    begin = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    begin = v44.__begin_;
  }

  v33 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, begin, v44.__end_ - v44.__begin_);
  left_context = [(QSSSetSpeechContext *)self left_context];
  v14 = left_context;
  if (!left_context)
  {
    left_context = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)left_context UTF8String];
  v16 = strlen(uTF8String2);
  v32 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v16);

  right_context = [(QSSSetSpeechContext *)self right_context];
  v18 = right_context;
  if (!right_context)
  {
    right_context = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)right_context UTF8String];
  v20 = strlen(uTF8String3);
  v31 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v20);

  context_with_pron_hints = [(QSSSetSpeechContext *)self context_with_pron_hints];
  v22 = [context_with_pron_hints count];
  if (v22)
  {
    if (!(v22 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v22);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(QSSSetSpeechContext *)self context_with_pron_hints];
  if ([obj countByEnumeratingWithState:&v35 objects:v45 count:16])
  {
    *v36;
    *v36;
    [**(&v35 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v23 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v24 = *(buffer + 8);
  v25 = *(buffer + 12);
  v26 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v33);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v32);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v31);
  if (v23)
  {
    v27 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v23);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v27);
  }

  v28.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v24 - v25 + v26);
  if (v44.__begin_)
  {
    operator delete(v44.__begin_);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (NSArray)context_with_pron_hints
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_with_pron_hints"];
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
            v11 = [[QSSContextWithPronHints alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"context_with_pron_hints"];
  }

  return array;
}

- (NSString)right_context
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

- (NSString)left_context
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

- (NSArray)contextual_text
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
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
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v10[*v10->var0 + 4] length:*v10[*v10->var0].var0 encoding:4];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"contextual_text"];
  }

  return array;
}

- (QSSSetSpeechContext)initWithFlatbuffData:(id)data root:(const SetSpeechContext *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSSetSpeechContext;
  v10 = [(QSSSetSpeechContext *)&v29 init];
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
        if (!siri::speech::schema_fb::SetSpeechContext::Verify(v19, &v24))
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