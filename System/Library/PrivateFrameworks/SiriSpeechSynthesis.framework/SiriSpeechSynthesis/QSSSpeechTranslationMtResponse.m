@interface QSSSpeechTranslationMtResponse
- (BOOL)is_final;
- (NSArray)n_best_translated_phrases;
- (NSString)conversation_id;
- (NSString)request_id;
- (NSString)return_str;
- (Offset<siri::speech::schema_fb::SpeechTranslationMtResponse>)addObjectToBuffer:(void *)a3;
- (QSSSpeechTranslationMtResponse)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationMtResponse *)a4 verify:(BOOL)a5;
- (QSSTranslationLocalePair)translation_locale_pair;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSSpeechTranslationMtResponse

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
  v2.var0 = [(QSSSpeechTranslationMtResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__46__QSSSpeechTranslationMtResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SpeechTranslationMtResponse>)addObjectToBuffer:(void *)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [(QSSSpeechTranslationMtResponse *)self conversation_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSSpeechTranslationMtResponse *)self request_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v33 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v32 = [(QSSSpeechTranslationMtResponse *)self return_code];
  v13 = [(QSSSpeechTranslationMtResponse *)self return_str];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_2879AE8E0;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v31 = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);

  v17 = [(QSSSpeechTranslationMtResponse *)self translation_locale_pair];
  v30 = [v17 addObjectToBuffer:a3];

  v18 = [(QSSSpeechTranslationMtResponse *)self n_best_translated_phrases];
  v19 = [v18 count];
  if (v19)
  {
    if (!(v19 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v19);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(QSSSpeechTranslationMtResponse *)self n_best_translated_phrases];
  if ([obj countByEnumeratingWithState:&v36 objects:v40 count:16])
  {
    *v37;
    *v37;
    [**(&v36 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  v20 = a3;
  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v21 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v22 = [0 is_final];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v23 = *(a3 + 8);
  v24 = *(a3 + 12);
  v25 = *(v20 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v20, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v20, 6, v33);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v20, 8, v32);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v20, 10, v31);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v20, 12, v30);
  if (v21)
  {
    v26 = flatbuffers::FlatBufferBuilder::ReferTo(v20, v21);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v20, 14, v26);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v20, 16, v22);
  v27.var0 = flatbuffers::FlatBufferBuilder::EndTable(v20, v23 - v24 + v25);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)is_final
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSArray)n_best_translated_phrases
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_translated_phrases"];
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
            v11 = [[QSSSpeechTranslationMtResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"n_best_translated_phrases"];
  }

  return v3;
}

flatbuffers::DetachedBuffer *__64__QSSSpeechTranslationMtResponse_TranslationPhrase_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (QSSTranslationLocalePair)translation_locale_pair
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pair"];
  if (!v3)
  {
    v4 = [QSSTranslationLocalePair alloc];
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

    v3 = [(QSSTranslationLocalePair *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_locale_pair"];
  }

  return v3;
}

- (NSString)return_str
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

- (int)return_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
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

- (QSSSpeechTranslationMtResponse)initWithFlatbuffData:(id)a3 root:(const SpeechTranslationMtResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSSpeechTranslationMtResponse;
  v10 = [(QSSSpeechTranslationMtResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::SpeechTranslationMtResponse::Verify(v19, &v24))
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