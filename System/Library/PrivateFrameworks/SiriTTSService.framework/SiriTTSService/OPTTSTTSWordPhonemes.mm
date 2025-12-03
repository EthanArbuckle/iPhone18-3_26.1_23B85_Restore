@interface OPTTSTTSWordPhonemes
- (NSArray)phonemes;
- (OPTTSTTSWordPhonemes)initWithFlatbuffData:(id)data root:(const TTSWordPhonemes *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TTSWordPhonemes>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)phonemes_objectAtIndex:(unint64_t)index;
- (unint64_t)phonemes_count;
- (void)phonemes_enumerateObjectsUsingBlock:(id)block;
@end

@implementation OPTTSTTSWordPhonemes

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1B1C416F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTTSWordPhonemes *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__36__OPTTSTTSWordPhonemes_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TTSWordPhonemes>)addObjectToBuffer:(void *)buffer
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  phonemes = [(OPTTSTTSWordPhonemes *)self phonemes];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v26, [phonemes count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  phonemes2 = [(OPTTSTTSWordPhonemes *)self phonemes];
  v7 = [phonemes2 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(phonemes2);
        }

        uTF8String = [*(*(&v22 + 1) + 8 * i) UTF8String];
        v11 = strlen(uTF8String);
        String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v11);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v26, &String);
      }

      v7 = [phonemes2 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v7);
  }

  v12 = v26;
  if (v27 == v26)
  {
    v13 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    v13 = v26;
  }

  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v13, (v27 - v26) >> 2);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v15 = *(buffer + 5);
  v16 = *(buffer + 6);
  v17 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(buffer, v14);
  v18.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v17 - v16 + v15);
  if (v12)
  {
    operator delete(v12);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)phonemes_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 5u)
    {
      v9 = *v8[4].var0;
      if (v9)
      {
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = 4 * v11 - 4;
          v14 = &root[v10 + 4 + v9];
          do
          {
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v14[*v14->var0 + 4] length:*v14[*v14->var0].var0 encoding:4];
            blockCopy[2](blockCopy, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v17 = v13;
            v13 -= 4;
            v14 += 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (unint64_t)phonemes_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 5u && (v8 = *v7[4].var0) != 0)
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

- (id)phonemes_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_9;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 5u)
  {
    v11 = *v10[4].var0;
    if (v11)
    {
      v12 = &root[v11 + *root[v11].var0];
      if (*v12->var0 <= index)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      var0 = v12[4 * index + 4 + *v12[4 * index + 4].var0].var0;
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:var0 + 1 length:*var0 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)phonemes
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
  if (!v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__OPTTSTTSWordPhonemes_phonemes__block_invoke;
    v6[3] = &unk_1E7AF3888;
    v3 = array;
    v7 = v3;
    [(OPTTSTTSWordPhonemes *)self phonemes_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"phonemes"];
  }

  return v3;
}

- (OPTTSTTSWordPhonemes)initWithFlatbuffData:(id)data root:(const TTSWordPhonemes *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = OPTTSTTSWordPhonemes;
  v10 = [(OPTTSTTSWordPhonemes *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_15;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_1B1C41700;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !siri::speech::schema_fb::TTSWordPhonemes::Verify(v18, v21))
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
LABEL_14:
    v19 = v10;
  }

  return v19;
}

@end