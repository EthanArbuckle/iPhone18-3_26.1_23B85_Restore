@interface QSSTranslationRequest
- (BOOL)disable_log;
- (NSArray)translation_phrase;
- (NSString)app_id;
- (NSString)request_id;
- (NSString)sequence_id;
- (NSString)source_language;
- (NSString)speech_id;
- (NSString)target_language;
- (NSString)task;
- (NSString)use_case;
- (Offset<siri::speech::schema_fb::TranslationRequest>)addObjectToBuffer:(void *)buffer;
- (QSSSiriPayloadTranslationInfo)siri_payload_translation_info;
- (QSSSiriTranslationInfo)siri_translation_info;
- (QSSSpeechTranslationInfo)speech_translation_info;
- (QSSTranslationRequest)initWithFlatbuffData:(id)data root:(const TranslationRequest *)root verify:(BOOL)verify;
- (QSSWebTranslationInfo)web_translation_info;
- (id)flatbuffData;
- (int64_t)opt_in_status;
@end

@implementation QSSTranslationRequest

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
  v2.var0 = [(QSSTranslationRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__37__QSSTranslationRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TranslationRequest>)addObjectToBuffer:(void *)buffer
{
  v82 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSTranslationRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(QSSTranslationRequest *)self request_id];
  v10 = request_id;
  if (!request_id)
  {
    request_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v12 = strlen(uTF8String2);
  v72 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  task = [(QSSTranslationRequest *)self task];
  v14 = task;
  if (!task)
  {
    task = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)task UTF8String];
  v16 = strlen(uTF8String3);
  v71 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  source_language = [(QSSTranslationRequest *)self source_language];
  v18 = source_language;
  if (!source_language)
  {
    source_language = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)source_language UTF8String];
  v20 = strlen(uTF8String4);
  v70 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v20);

  target_language = [(QSSTranslationRequest *)self target_language];
  v22 = target_language;
  if (!target_language)
  {
    target_language = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)target_language UTF8String];
  v24 = strlen(uTF8String5);
  v69 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v24);

  memset(&v80, 0, sizeof(v80));
  translation_phrase = [(QSSTranslationRequest *)self translation_phrase];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v80, [translation_phrase count]);

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  translation_phrase2 = [(QSSTranslationRequest *)self translation_phrase];
  v27 = [translation_phrase2 countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v27)
  {
    v28 = *v77;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v77 != v28)
        {
          objc_enumerationMutation(translation_phrase2);
        }

        uTF8String6 = [*(*(&v76 + 1) + 8 * i) UTF8String];
        v31 = strlen(uTF8String6);
        v75 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v31);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v80, &v75);
      }

      v27 = [translation_phrase2 countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v27);
  }

  begin = v80.__begin_;
  if (v80.__end_ == v80.__begin_)
  {
    v33 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v33 = v80.__begin_;
  }

  v68 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v33, v80.__end_ - v80.__begin_);
  siri_translation_info = [(QSSTranslationRequest *)self siri_translation_info];
  v74 = [siri_translation_info addObjectToBuffer:buffer];

  speech_translation_info = [(QSSTranslationRequest *)self speech_translation_info];
  v36 = [speech_translation_info addObjectToBuffer:buffer];

  siri_payload_translation_info = [(QSSTranslationRequest *)self siri_payload_translation_info];
  v38 = [siri_payload_translation_info addObjectToBuffer:buffer];

  sequence_id = [(QSSTranslationRequest *)self sequence_id];
  v40 = sequence_id;
  if (!sequence_id)
  {
    sequence_id = &stru_2879AE8E0;
  }

  uTF8String7 = [(__CFString *)sequence_id UTF8String];
  v42 = strlen(uTF8String7);
  v67 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String7, v42);

  web_translation_info = [(QSSTranslationRequest *)self web_translation_info];
  v44 = [web_translation_info addObjectToBuffer:buffer];

  disable_log = [(QSSTranslationRequest *)self disable_log];
  opt_in_status = [(QSSTranslationRequest *)self opt_in_status];
  app_id = [(QSSTranslationRequest *)self app_id];
  v46 = app_id;
  if (!app_id)
  {
    app_id = &stru_2879AE8E0;
  }

  uTF8String8 = [(__CFString *)app_id UTF8String];
  v48 = strlen(uTF8String8);
  v49 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String8, v48);

  use_case = [(QSSTranslationRequest *)self use_case];
  v51 = use_case;
  if (!use_case)
  {
    use_case = &stru_2879AE8E0;
  }

  uTF8String9 = [(__CFString *)use_case UTF8String];
  v53 = strlen(uTF8String9);
  v54 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String9, v53);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v55 = *(buffer + 8);
  v56 = *(buffer + 12);
  v57 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v72);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v71);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v70);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v69);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 14, v68);
  if (v74)
  {
    v58 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v74);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, v58);
  }

  if (v36)
  {
    v59 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v36);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 18, v59);
  }

  if (v38)
  {
    v60 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v38);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 20, v60);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 22, v67);
  if (v44)
  {
    v61 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v44);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 24, v61);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 26, disable_log);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 28, opt_in_status);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 30, v49);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 32, v54);
  v62.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v55 - v56 + v57);
  if (begin)
  {
    operator delete(begin);
  }

  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

- (NSString)use_case
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 32].var0;
  if (*root[-v3 + 32].var0)
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
  v4 = *root[-v3 + 30].var0;
  if (*root[-v3 + 30].var0)
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

- (int64_t)opt_in_status
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x1Du && (v4 = *v3[28].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)disable_log
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x1Bu && (v4 = *v3[26].var0) != 0 && root[v4].var0[0] != 0;
}

- (QSSWebTranslationInfo)web_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"web_translation_info"];
  if (!v3)
  {
    v4 = [QSSWebTranslationInfo alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x19u && (v7 = *v6[24].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSWebTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"web_translation_info"];
  }

  return v3;
}

- (NSString)sequence_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 22].var0;
  if (*root[-v3 + 22].var0)
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

- (QSSSiriPayloadTranslationInfo)siri_payload_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"siri_payload_translation_info"];
  if (!v3)
  {
    v4 = [QSSSiriPayloadTranslationInfo alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x15u && (v7 = *v6[20].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSSiriPayloadTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"siri_payload_translation_info"];
  }

  return v3;
}

- (QSSSpeechTranslationInfo)speech_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"speech_translation_info"];
  if (!v3)
  {
    v4 = [QSSSpeechTranslationInfo alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x13u && (v7 = *v6[18].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSSpeechTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"speech_translation_info"];
  }

  return v3;
}

- (QSSSiriTranslationInfo)siri_translation_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"siri_translation_info"];
  if (!v3)
  {
    v4 = [QSSSiriTranslationInfo alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x11u && (v7 = *v6[16].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSSiriTranslationInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"siri_translation_info"];
  }

  return v3;
}

- (NSArray)translation_phrase
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
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

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"translation_phrase"];
  }

  return array;
}

- (NSString)target_language
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

- (NSString)source_language
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

- (NSString)task
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

- (QSSTranslationRequest)initWithFlatbuffData:(id)data root:(const TranslationRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTranslationRequest;
  v10 = [(QSSTranslationRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::TranslationRequest::Verify(v19, &v24))
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