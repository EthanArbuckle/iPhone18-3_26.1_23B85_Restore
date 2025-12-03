@interface FTBatchTranslationRequest
- (BOOL)is_partial;
- (FTBatchTranslationRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationRequest *)root verify:(BOOL)verify;
- (FTTranslationOptions)options;
- (NSArray)paragraphs;
- (NSString)app_id;
- (NSString)request_id;
- (NSString)session_id;
- (NSString)source_language;
- (NSString)target_language;
- (NSString)task;
- (NSString)url;
- (Offset<siri::speech::schema_fb::BatchTranslationRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)paragraphs_objectAtIndex:(unint64_t)index;
- (int64_t)opt_in_status;
- (unint64_t)paragraphs_count;
- (void)paragraphs_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTBatchTranslationRequest

- (FTBatchTranslationRequest)initWithFlatbuffData:(id)data root:(const BatchTranslationRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTBatchTranslationRequest;
  v10 = [(FTBatchTranslationRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::BatchTranslationRequest::Verify(v18, v21))
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

- (NSArray)paragraphs
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"paragraphs"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__FTBatchTranslationRequest_paragraphs__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTBatchTranslationRequest *)self paragraphs_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"paragraphs"];
  }

  return v3;
}

- (id)paragraphs_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"paragraphs"];
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
  if (*v10->var0 >= 0xDu)
  {
    v11 = *v10[12].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTBatchTranslationRequest_Paragraph alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)paragraphs_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"paragraphs"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xDu && (v8 = *v7[12].var0) != 0)
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

- (void)paragraphs_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"paragraphs"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xDu)
    {
      v9 = *v8[12].var0;
      if (v9)
      {
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v10 + 4 + v9];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [[FTBatchTranslationRequest_Paragraph alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v13 += 4;
            v17 = v14;
            v14 -= 4;
          }

          while (v17);
        }
      }
    }
  }
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

- (FTTranslationOptions)options
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"options"];
  if (!v3)
  {
    v4 = [FTTranslationOptions alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x17u && (v7 = *v6[22].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTranslationOptions *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"options"];
  }

  return v3;
}

- (BOOL)is_partial
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x19u && (v4 = *v3[24].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::BatchTranslationRequest>)addObjectToBuffer:(void *)buffer
{
  v73 = *MEMORY[0x277D85DE8];
  request_id = [(FTBatchTranslationRequest *)self request_id];
  v6 = request_id;
  if (!request_id)
  {
    request_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)request_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  task = [(FTBatchTranslationRequest *)self task];
  v10 = task;
  if (!task)
  {
    task = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)task UTF8String];
  v12 = strlen(uTF8String2);
  v63 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  source_language = [(FTBatchTranslationRequest *)self source_language];
  v14 = source_language;
  if (!source_language)
  {
    source_language = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)source_language UTF8String];
  v16 = strlen(uTF8String3);
  v62 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  target_language = [(FTBatchTranslationRequest *)self target_language];
  v18 = target_language;
  if (!target_language)
  {
    target_language = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)target_language UTF8String];
  v20 = strlen(uTF8String4);
  v61 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v20);

  memset(&v71, 0, sizeof(v71));
  paragraphs = [(FTBatchTranslationRequest *)self paragraphs];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v71, [paragraphs count]);

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  paragraphs2 = [(FTBatchTranslationRequest *)self paragraphs];
  selfCopy = self;
  v23 = [paragraphs2 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v23)
  {
    v24 = *v68;
    bufferCopy = buffer;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v68 != v24)
        {
          objc_enumerationMutation(paragraphs2);
        }

        v27 = [*(*(&v67 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v71.__end_;
        if (v71.__end_ >= v71.__end_cap_.__value_)
        {
          begin = v71.__begin_;
          v31 = v71.__end_ - v71.__begin_;
          v32 = v71.__end_ - v71.__begin_;
          v33 = v32 + 1;
          if ((v32 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v34 = v71.__end_cap_.__value_ - v71.__begin_;
          if ((v71.__end_cap_.__value_ - v71.__begin_) >> 1 > v33)
          {
            v33 = v34 >> 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v35 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v71, v35);
          }

          *(4 * v32) = v27;
          v29 = (4 * v32 + 4);
          memcpy(0, begin, v31);
          v36 = v71.__begin_;
          v71.__begin_ = 0;
          v71.__end_ = v29;
          v71.__end_cap_.__value_ = 0;
          if (v36)
          {
            operator delete(v36);
          }

          buffer = bufferCopy;
        }

        else
        {
          *v71.__end_ = v27;
          v29 = end + 1;
        }

        v71.__end_ = v29;
      }

      v23 = [paragraphs2 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v23);
  }

  if (v71.__end_ == v71.__begin_)
  {
    v37 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>> const&)::t;
  }

  else
  {
    v37 = v71.__begin_;
  }

  v38 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v37, v71.__end_ - v71.__begin_);
  app_id = [(FTBatchTranslationRequest *)selfCopy app_id];
  v40 = app_id;
  if (!app_id)
  {
    app_id = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)app_id UTF8String];
  v42 = strlen(uTF8String5);
  v43 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v42);

  session_id = [(FTBatchTranslationRequest *)selfCopy session_id];
  v45 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String6 = [(__CFString *)session_id UTF8String];
  v47 = strlen(uTF8String6);
  v48 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v47);

  v49 = [(FTBatchTranslationRequest *)selfCopy url];
  v50 = v49;
  if (!v49)
  {
    v49 = &stru_284834138;
  }

  uTF8String7 = [(__CFString *)v49 UTF8String];
  v52 = strlen(uTF8String7);
  v53 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String7, v52);

  LODWORD(uTF8String7) = [(FTBatchTranslationRequest *)selfCopy opt_in_status];
  options = [(FTBatchTranslationRequest *)selfCopy options];
  v55 = [options addObjectToBuffer:buffer];

  is_partial = [(FTBatchTranslationRequest *)selfCopy is_partial];
  *(buffer + 70) = 1;
  v57 = *(buffer + 8);
  LODWORD(options) = *(buffer + 12);
  v66 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v62);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v61);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v43);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, v48);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v53);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 20, uTF8String7, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 22, v55);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 24, is_partial, 0);
  v58.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v57 - options + v66);
  if (v71.__begin_)
  {
    v71.__end_ = v71.__begin_;
    operator delete(v71.__begin_);
  }

  v59 = *MEMORY[0x277D85DE8];
  return v58;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBatchTranslationRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__41__FTBatchTranslationRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__51__FTBatchTranslationRequest_Paragraph_flatbuffData__block_invoke(uint64_t a1)
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