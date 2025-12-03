@interface QSSTTSPrompts
- (NSArray)prompts;
- (Offset<siri::speech::schema_fb::TTSPrompts>)addObjectToBuffer:(void *)buffer;
- (QSSTTSPrompts)initWithFlatbuffData:(id)data root:(const TTSPrompts *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (void)prompts_v2:(id)prompts_v2;
@end

@implementation QSSTTSPrompts

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
  v2.var0 = [(QSSTTSPrompts *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__29__QSSTTSPrompts_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TTSPrompts>)addObjectToBuffer:(void *)buffer
{
  v35 = *MEMORY[0x277D85DE8];
  memset(&v33, 0, sizeof(v33));
  prompts = [(QSSTTSPrompts *)self prompts];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v33, [prompts count]);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  prompts2 = [(QSSTTSPrompts *)self prompts];
  v7 = [prompts2 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(prompts2);
        }

        uTF8String = [*(*(&v29 + 1) + 8 * i) UTF8String];
        v11 = strlen(uTF8String);
        LODWORD(v22) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v11);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v33, &v22);
      }

      v7 = [prompts2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  begin = v33.__begin_;
  if (v33.__end_ == v33.__begin_)
  {
    v13 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v13 = v33.__begin_;
  }

  v14 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v13, v33.__end_ - v33.__begin_);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3812000000;
  v25 = __Block_byref_object_copy__645;
  v26 = __Block_byref_object_dispose__646;
  v27 = &unk_26916BD4D;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __35__QSSTTSPrompts_addObjectToBuffer___block_invoke;
  v21[3] = &unk_279C4C2C8;
  v21[4] = &v22;
  v21[5] = buffer;
  [(QSSTTSPrompts *)self prompts_v2:v21];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v15 = *(buffer + 8);
  v16 = *(buffer + 12);
  v17 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, *(v23 + 12));
  v18.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v15 - v16 + v17);
  _Block_object_dispose(&v22, 8);
  if (begin)
  {
    operator delete(begin);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __35__QSSTTSPrompts_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (void)prompts_v2:(id)prompts_v2
{
  root = self->_root;
  v5 = &root[-*root->var0];
  prompts_v2Copy = prompts_v2;
  v7 = *root[*v5[6].var0 + *root[*v5[6].var0].var0].var0;
  v8 = prompts_v2Copy;
  (*(prompts_v2 + 2))();
}

- (NSArray)prompts
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
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

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"prompts"];
  }

  return array;
}

- (QSSTTSPrompts)initWithFlatbuffData:(id)data root:(const TTSPrompts *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTTSPrompts;
  v10 = [(QSSTTSPrompts *)&v29 init];
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
        if (!siri::speech::schema_fb::TTSPrompts::Verify(v19, &v24))
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