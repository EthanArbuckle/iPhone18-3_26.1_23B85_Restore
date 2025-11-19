@interface QSSStartSpeechTranslationRequest
- (BOOL)restricted_mode;
- (BOOL)streaming_mode;
- (NSArray)text_to_speech_requests;
- (NSArray)translation_locale_pairs;
- (NSString)app_id;
- (NSString)conversation_id;
- (NSString)request_id;
- (Offset<siri::speech::schema_fb::StartSpeechTranslationRequest>)addObjectToBuffer:(void *)a3;
- (QSSStartSpeechRequest)start_speech_request;
- (QSSStartSpeechTranslationRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechTranslationRequest *)a4 verify:(BOOL)a5;
- (QSSTranslationRequest)translation_request;
- (id)flatbuffData;
- (int64_t)opt_in_status;
@end

@implementation QSSStartSpeechTranslationRequest

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
  v2.var0 = [(QSSStartSpeechTranslationRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__48__QSSStartSpeechTranslationRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StartSpeechTranslationRequest>)addObjectToBuffer:(void *)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = [(QSSStartSpeechTranslationRequest *)self conversation_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSStartSpeechTranslationRequest *)self request_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v38 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(QSSStartSpeechTranslationRequest *)self translation_locale_pairs];
  v14 = [v13 count];
  if (v14)
  {
    if (!(v14 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v14);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = [(QSSStartSpeechTranslationRequest *)self translation_locale_pairs];
  v42 = self;
  if ([v15 countByEnumeratingWithState:&v49 objects:v54 count:16])
  {
    *v50;
    *v50;
    [**(&v49 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v41 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v16 = [(QSSStartSpeechTranslationRequest *)self start_speech_request];
  v37 = [v16 addObjectToBuffer:a3];

  v17 = [(QSSStartSpeechTranslationRequest *)self translation_request];
  v40 = [v17 addObjectToBuffer:a3];

  v18 = [(QSSStartSpeechTranslationRequest *)self text_to_speech_requests];
  v19 = [v18 count];
  if (v19)
  {
    if (!(v19 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v19);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [(QSSStartSpeechTranslationRequest *)self text_to_speech_requests];
  if ([obj countByEnumeratingWithState:&v45 objects:v53 count:16])
  {
    *v46;
    *v46;
    [**(&v45 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v20 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v21 = [(QSSStartSpeechTranslationRequest *)self restricted_mode];
  v22 = [(QSSStartSpeechTranslationRequest *)v42 app_id];
  v23 = v22;
  if (!v22)
  {
    v22 = &stru_2879AE8E0;
  }

  v24 = [(__CFString *)v22 UTF8String];
  v25 = strlen(v24);
  v26 = flatbuffers::FlatBufferBuilder::CreateString(a3, v24, v25);

  v27 = [(QSSStartSpeechTranslationRequest *)v42 opt_in_status];
  obja = [(QSSStartSpeechTranslationRequest *)v42 streaming_mode];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v28 = *(a3 + 8);
  v29 = *(a3 + 12);
  v30 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v38);
  if (v41)
  {
    v31 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v41);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v31);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v37);
  if (v40)
  {
    v32 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v40);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v32);
  }

  if (v20)
  {
    v33 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v20);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v33);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 16, v21);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v26);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 20, v27);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 22, obja);
  v34.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v28 - v29 + v30);
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)streaming_mode
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x17u && (v4 = *v3[22].var0) != 0 && root[v4].var0[0] != 0;
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

- (NSString)app_id
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

- (BOOL)restricted_mode
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSArray)text_to_speech_requests
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"text_to_speech_requests"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xFu)
    {
      v6 = *v5[14].var0;
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
            v11 = [[QSSTextToSpeechRequest alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"text_to_speech_requests"];
  }

  return v3;
}

- (QSSTranslationRequest)translation_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_request"];
  if (!v3)
  {
    v4 = [QSSTranslationRequest alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSTranslationRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_request"];
  }

  return v3;
}

- (QSSStartSpeechRequest)start_speech_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"start_speech_request"];
  if (!v3)
  {
    v4 = [QSSStartSpeechRequest alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
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

- (NSArray)translation_locale_pairs
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pairs"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
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
            v11 = [[QSSTranslationLocalePair alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_locale_pairs"];
  }

  return v3;
}

- (NSString)request_id
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

- (NSString)conversation_id
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

- (QSSStartSpeechTranslationRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechTranslationRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSStartSpeechTranslationRequest;
  v10 = [(QSSStartSpeechTranslationRequest *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
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
        if (!siri::speech::schema_fb::StartSpeechTranslationRequest::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end