@interface QSSStartSpeechTranslationLoggingRequest
- (NSArray)senses;
- (NSArray)user_interacted_senses;
- (NSString)conversation_id;
- (NSString)request_id;
- (NSString)user_selected_locale;
- (NSString)user_selected_sense;
- (Offset<siri::speech::schema_fb::StartSpeechTranslationLoggingRequest>)addObjectToBuffer:(void *)buffer;
- (QSSLanguageDetected)detected_locale;
- (QSSStartSpeechTranslationLoggingRequest)initWithFlatbuffData:(id)data root:(const StartSpeechTranslationLoggingRequest *)root verify:(BOOL)verify;
- (QSSTranslationLocalePair)translation_locale_pair;
- (id)flatbuffData;
@end

@implementation QSSStartSpeechTranslationLoggingRequest

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
  v2.var0 = [(QSSStartSpeechTranslationLoggingRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__55__QSSStartSpeechTranslationLoggingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StartSpeechTranslationLoggingRequest>)addObjectToBuffer:(void *)buffer
{
  v70 = *MEMORY[0x277D85DE8];
  conversation_id = [(QSSStartSpeechTranslationLoggingRequest *)self conversation_id];
  v6 = conversation_id;
  if (!conversation_id)
  {
    conversation_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)conversation_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(QSSStartSpeechTranslationLoggingRequest *)self request_id];
  v10 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v12 = strlen(uTF8String2);
  v54 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  translation_locale_pair = [(QSSStartSpeechTranslationLoggingRequest *)self translation_locale_pair];
  v53 = [translation_locale_pair addObjectToBuffer:buffer];

  detected_locale = [(QSSStartSpeechTranslationLoggingRequest *)self detected_locale];
  v56 = [detected_locale addObjectToBuffer:buffer];

  user_selected_locale = [(QSSStartSpeechTranslationLoggingRequest *)self user_selected_locale];
  v16 = user_selected_locale;
  if (!user_selected_locale)
  {
    user_selected_locale = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)user_selected_locale UTF8String];
  v18 = strlen(uTF8String3);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  memset(&v67, 0, sizeof(v67));
  senses = [(QSSStartSpeechTranslationLoggingRequest *)self senses];
  v52 = v19;
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v67, [senses count]);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  senses2 = [(QSSStartSpeechTranslationLoggingRequest *)self senses];
  v22 = [senses2 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v22)
  {
    v23 = *v64;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(senses2);
        }

        uTF8String4 = [*(*(&v63 + 1) + 8 * i) UTF8String];
        v26 = strlen(uTF8String4);
        LODWORD(v62.__begin_) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v26);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v67, &v62);
      }

      v22 = [senses2 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v22);
  }

  begin = v67.__begin_;
  if (v67.__end_ == v67.__begin_)
  {
    v28 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v28 = v67.__begin_;
  }

  v29 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v28, v67.__end_ - v67.__begin_);
  user_selected_sense = [(QSSStartSpeechTranslationLoggingRequest *)self user_selected_sense];
  v31 = user_selected_sense;
  if (!user_selected_sense)
  {
    user_selected_sense = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)user_selected_sense UTF8String];
  v33 = strlen(uTF8String5);
  v34 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v33);

  memset(&v62, 0, sizeof(v62));
  user_interacted_senses = [(QSSStartSpeechTranslationLoggingRequest *)self user_interacted_senses];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v62, [user_interacted_senses count]);

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  user_interacted_senses2 = [(QSSStartSpeechTranslationLoggingRequest *)self user_interacted_senses];
  v37 = [user_interacted_senses2 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v37)
  {
    v38 = *v59;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(user_interacted_senses2);
        }

        uTF8String6 = [*(*(&v58 + 1) + 8 * j) UTF8String];
        v41 = strlen(uTF8String6);
        v57 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v41);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v62, &v57);
      }

      v37 = [user_interacted_senses2 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v37);
  }

  v42 = v62.__begin_;
  if (v62.__end_ == v62.__begin_)
  {
    v43 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v43 = v62.__begin_;
  }

  v44 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v43, v62.__end_ - v62.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v45 = *(buffer + 8);
  v46 = *(buffer + 12);
  v47 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v54);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v53);
  if (v56)
  {
    v48 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v56);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v48);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v52);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v29);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, v34);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, v44);
  v49.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v45 - v46 + v47);
  if (v42)
  {
    operator delete(v42);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

- (NSArray)user_interacted_senses
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_interacted_senses"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x13u)
    {
      v6 = *v5[18].var0;
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

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"user_interacted_senses"];
  }

  return array;
}

- (NSString)user_selected_sense
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

- (NSArray)senses
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"senses"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
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
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v10[*v10->var0 + 4] length:*v10[*v10->var0].var0 encoding:4];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"senses"];
  }

  return array;
}

- (NSString)user_selected_locale
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

- (QSSLanguageDetected)detected_locale
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"detected_locale"];
  if (!v3)
  {
    v4 = [QSSLanguageDetected alloc];
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

    v3 = [(QSSLanguageDetected *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"detected_locale"];
  }

  return v3;
}

- (QSSTranslationLocalePair)translation_locale_pair
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pair"];
  if (!v3)
  {
    v4 = [QSSTranslationLocalePair alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 9u && (v7 = *v6[8].var0) != 0)
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

- (QSSStartSpeechTranslationLoggingRequest)initWithFlatbuffData:(id)data root:(const StartSpeechTranslationLoggingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSStartSpeechTranslationLoggingRequest;
  v10 = [(QSSStartSpeechTranslationLoggingRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::StartSpeechTranslationLoggingRequest::Verify(v19, &v24))
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