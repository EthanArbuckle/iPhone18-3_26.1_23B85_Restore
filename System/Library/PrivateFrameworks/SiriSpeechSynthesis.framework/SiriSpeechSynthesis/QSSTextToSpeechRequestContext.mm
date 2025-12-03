@interface QSSTextToSpeechRequestContext
- (NSArray)context_info;
- (NSString)dialog_identifier;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechRequestContext)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestContext *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechRequestContext

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
  v2.var0 = [(QSSTextToSpeechRequestContext *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__45__QSSTextToSpeechRequestContext_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)buffer
{
  v26 = *MEMORY[0x277D85DE8];
  context_info = [(QSSTextToSpeechRequestContext *)self context_info];
  v6 = [context_info count];
  if (v6)
  {
    if (!(v6 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v6);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(QSSTextToSpeechRequestContext *)self context_info];
  if ([obj countByEnumeratingWithState:&v21 objects:v25 count:16])
  {
    *v22;
    *v22;
    [**(&v21 + 1) addObjectToBuffer:{buffer, self}];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v7 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  dialog_identifier = [(QSSTextToSpeechRequestContext *)self dialog_identifier];
  v9 = dialog_identifier;
  if (!dialog_identifier)
  {
    dialog_identifier = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)dialog_identifier UTF8String];
  v11 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v11);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v13 = *(buffer + 8);
  v14 = *(buffer + 12);
  v15 = *(buffer + 10);
  if (v7)
  {
    v16 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v7);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v16);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, String);
  v17.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v13 - v14 + v15);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (NSString)dialog_identifier
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

- (NSArray)context_info
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
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
            v11 = [[QSSTextToSpeechRequestContext_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"context_info"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__62__QSSTextToSpeechRequestContext_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (QSSTextToSpeechRequestContext)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestContext *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechRequestContext;
  v10 = [(QSSTextToSpeechRequestContext *)&v29 init];
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
        if (!siri::speech::schema_fb::TextToSpeechRequestContext::Verify(v19, &v24))
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