@interface FTStartSpeechTranslationLoggingRequest
- (FTLanguageDetected)detected_locale;
- (FTStartSpeechTranslationLoggingRequest)initWithFlatbuffData:(id)data root:(const StartSpeechTranslationLoggingRequest *)root verify:(BOOL)verify;
- (FTTranslationLocalePair)translation_locale_pair;
- (NSArray)senses;
- (NSArray)user_interacted_senses;
- (NSString)conversation_id;
- (NSString)request_id;
- (NSString)user_selected_locale;
- (NSString)user_selected_sense;
- (Offset<siri::speech::schema_fb::StartSpeechTranslationLoggingRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)senses_objectAtIndex:(unint64_t)index;
- (id)user_interacted_senses_objectAtIndex:(unint64_t)index;
- (unint64_t)senses_count;
- (unint64_t)user_interacted_senses_count;
- (void)senses_enumerateObjectsUsingBlock:(id)block;
- (void)user_interacted_senses_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTStartSpeechTranslationLoggingRequest

- (FTStartSpeechTranslationLoggingRequest)initWithFlatbuffData:(id)data root:(const StartSpeechTranslationLoggingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTStartSpeechTranslationLoggingRequest;
  v10 = [(FTStartSpeechTranslationLoggingRequest *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
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
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::StartSpeechTranslationLoggingRequest::Verify(v18, v21))
  {
LABEL_14:
    v19 = 0;
  }

  else
  {
LABEL_13:
    v19 = v10;
  }

  return v19;
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

- (FTTranslationLocalePair)translation_locale_pair
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pair"];
  if (!v3)
  {
    v4 = [FTTranslationLocalePair alloc];
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

    v3 = [(FTTranslationLocalePair *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_locale_pair"];
  }

  return v3;
}

- (FTLanguageDetected)detected_locale
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"detected_locale"];
  if (!v3)
  {
    v4 = [FTLanguageDetected alloc];
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

    v3 = [(FTLanguageDetected *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"detected_locale"];
  }

  return v3;
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

- (NSArray)senses
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"senses"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__FTStartSpeechTranslationLoggingRequest_senses__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTStartSpeechTranslationLoggingRequest *)self senses_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"senses"];
  }

  return v3;
}

- (id)senses_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"senses"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 0xFu)
  {
    v11 = *v10[14].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v13 = (v12 + 4 + *(v12 + 4));
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 + 1 length:*v13 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)senses_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"senses"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xFu && (v8 = *v7[14].var0) != 0)
    {
      v5 = *root[v8 + *root[v8].var0].var0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)senses_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"senses"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xFu)
    {
      v9 = *v8[14].var0;
      if (v9)
      {
        v19 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v9 + v10];
          v14 = v13 + 8;
          v15 = 4 * v11 - 4;
          do
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v14[*v14[-4].var0] length:*v13[4 * v12 + 4 + *v14[-4].var0].var0 encoding:4];
            blockCopy[2](blockCopy, v16, v12, &v19);
            v17 = v19;

            if (v17)
            {
              break;
            }

            ++v12;
            v14 += 4;
            v18 = v15;
            v15 -= 4;
          }

          while (v18);
        }
      }
    }
  }
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

- (NSArray)user_interacted_senses
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_interacted_senses"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__FTStartSpeechTranslationLoggingRequest_user_interacted_senses__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTStartSpeechTranslationLoggingRequest *)self user_interacted_senses_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_interacted_senses"];
  }

  return v3;
}

- (id)user_interacted_senses_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_interacted_senses"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 0x13u)
  {
    v11 = *v10[18].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v13 = (v12 + 4 + *(v12 + 4));
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 + 1 length:*v13 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)user_interacted_senses_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_interacted_senses"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0x13u && (v8 = *v7[18].var0) != 0)
    {
      v5 = *root[v8 + *root[v8].var0].var0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)user_interacted_senses_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_interacted_senses"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x13u)
    {
      v9 = *v8[18].var0;
      if (v9)
      {
        v19 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v9 + v10];
          v14 = v13 + 8;
          v15 = 4 * v11 - 4;
          do
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v14[*v14[-4].var0] length:*v13[4 * v12 + 4 + *v14[-4].var0].var0 encoding:4];
            blockCopy[2](blockCopy, v16, v12, &v19);
            v17 = v19;

            if (v17)
            {
              break;
            }

            ++v12;
            v14 += 4;
            v18 = v15;
            v15 -= 4;
          }

          while (v18);
        }
      }
    }
  }
}

- (Offset<siri::speech::schema_fb::StartSpeechTranslationLoggingRequest>)addObjectToBuffer:(void *)buffer
{
  v66 = *MEMORY[0x277D85DE8];
  conversation_id = [(FTStartSpeechTranslationLoggingRequest *)self conversation_id];
  v6 = conversation_id;
  if (!conversation_id)
  {
    conversation_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)conversation_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(FTStartSpeechTranslationLoggingRequest *)self request_id];
  v10 = request_id;
  if (!request_id)
  {
    request_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v12 = strlen(uTF8String2);
  v51 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  translation_locale_pair = [(FTStartSpeechTranslationLoggingRequest *)self translation_locale_pair];
  v50 = [translation_locale_pair addObjectToBuffer:buffer];

  detected_locale = [(FTStartSpeechTranslationLoggingRequest *)self detected_locale];
  v49 = [detected_locale addObjectToBuffer:buffer];

  user_selected_locale = [(FTStartSpeechTranslationLoggingRequest *)self user_selected_locale];
  v16 = user_selected_locale;
  if (!user_selected_locale)
  {
    user_selected_locale = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)user_selected_locale UTF8String];
  v18 = strlen(uTF8String3);
  v48 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  memset(&v63, 0, sizeof(v63));
  senses = [(FTStartSpeechTranslationLoggingRequest *)self senses];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v63, [senses count]);

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  senses2 = [(FTStartSpeechTranslationLoggingRequest *)self senses];
  v21 = [senses2 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v21)
  {
    v22 = *v60;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v60 != v22)
        {
          objc_enumerationMutation(senses2);
        }

        uTF8String4 = [*(*(&v59 + 1) + 8 * i) UTF8String];
        v25 = strlen(uTF8String4);
        LODWORD(v58.__begin_) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v25);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v63.__begin_, &v58);
      }

      v21 = [senses2 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v21);
  }

  if (v63.__end_ == v63.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    begin = v63.__begin_;
  }

  v27 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v63.__end_ - v63.__begin_);
  user_selected_sense = [(FTStartSpeechTranslationLoggingRequest *)self user_selected_sense];
  v29 = user_selected_sense;
  if (!user_selected_sense)
  {
    user_selected_sense = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)user_selected_sense UTF8String];
  v31 = strlen(uTF8String5);
  v32 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v31);

  memset(&v58, 0, sizeof(v58));
  user_interacted_senses = [(FTStartSpeechTranslationLoggingRequest *)self user_interacted_senses];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v58, [user_interacted_senses count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  user_interacted_senses2 = [(FTStartSpeechTranslationLoggingRequest *)self user_interacted_senses];
  v35 = [user_interacted_senses2 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v35)
  {
    v36 = *v55;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v55 != v36)
        {
          objc_enumerationMutation(user_interacted_senses2);
        }

        uTF8String6 = [*(*(&v54 + 1) + 8 * j) UTF8String];
        v39 = strlen(uTF8String6);
        v53 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v39);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v58.__begin_, &v53);
      }

      v35 = [user_interacted_senses2 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v35);
  }

  if (v58.__end_ == v58.__begin_)
  {
    v40 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    v40 = v58.__begin_;
  }

  v41 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v40, v58.__end_ - v58.__begin_);
  *(buffer + 70) = 1;
  v42 = *(buffer + 8);
  v43 = *(buffer + 12);
  v44 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v51);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v50);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v49);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v48);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v27);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, v32);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v41);
  v45.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v42 - v43 + v44);
  if (v58.__begin_)
  {
    v58.__end_ = v58.__begin_;
    operator delete(v58.__begin_);
  }

  if (v63.__begin_)
  {
    v63.__end_ = v63.__begin_;
    operator delete(v63.__begin_);
  }

  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

- (id)flatbuffData
{
  v3 = 0;
  v4 = 0;
  v5 = xmmword_233005E30;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 256;
  v11 = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTStartSpeechTranslationLoggingRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__54__FTStartSpeechTranslationLoggingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end