@interface QSSMultiUserStartSpeechRequest
- (NSArray)user_parameters;
- (NSString)primary_speech_id;
- (Offset<siri::speech::schema_fb::MultiUserStartSpeechRequest>)addObjectToBuffer:(void *)buffer;
- (QSSMultiUserStartSpeechRequest)initWithFlatbuffData:(id)data root:(const MultiUserStartSpeechRequest *)root verify:(BOOL)verify;
- (QSSStartSpeechRequest)start_speech_request;
- (id)flatbuffData;
@end

@implementation QSSMultiUserStartSpeechRequest

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
  v2.var0 = [(QSSMultiUserStartSpeechRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__46__QSSMultiUserStartSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::MultiUserStartSpeechRequest>)addObjectToBuffer:(void *)buffer
{
  v28 = *MEMORY[0x277D85DE8];
  start_speech_request = [(QSSMultiUserStartSpeechRequest *)self start_speech_request];
  v21 = [start_speech_request addObjectToBuffer:buffer];

  user_parameters = [(QSSMultiUserStartSpeechRequest *)self user_parameters];
  v7 = [user_parameters count];
  if (v7)
  {
    if (!(v7 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v7);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(QSSMultiUserStartSpeechRequest *)self user_parameters];
  if ([obj countByEnumeratingWithState:&v23 objects:v27 count:16])
  {
    *v24;
    *v24;
    [**(&v23 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v8 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  primary_speech_id = [(QSSMultiUserStartSpeechRequest *)self primary_speech_id];
  v10 = primary_speech_id;
  if (!primary_speech_id)
  {
    primary_speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)primary_speech_id UTF8String];
  v12 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v12);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 8);
  v15 = *(buffer + 12);
  v16 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v21);
  if (v8)
  {
    v17 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v8);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v17);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, String);
  v18.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v14 - v15 + v16);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSString)primary_speech_id
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

- (NSArray)user_parameters
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_parameters"];
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
            v11 = [[QSSUserParameters alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"user_parameters"];
  }

  return array;
}

- (QSSStartSpeechRequest)start_speech_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"start_speech_request"];
  if (!v3)
  {
    v4 = [QSSStartSpeechRequest alloc];
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

    v3 = [(QSSStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"start_speech_request"];
  }

  return v3;
}

- (QSSMultiUserStartSpeechRequest)initWithFlatbuffData:(id)data root:(const MultiUserStartSpeechRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSMultiUserStartSpeechRequest;
  v10 = [(QSSMultiUserStartSpeechRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::MultiUserStartSpeechRequest::Verify(v19, &v24))
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