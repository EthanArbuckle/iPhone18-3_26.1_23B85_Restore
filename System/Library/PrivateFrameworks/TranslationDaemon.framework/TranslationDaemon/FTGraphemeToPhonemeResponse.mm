@interface FTGraphemeToPhonemeResponse
- (BOOL)is_pron_guessed;
- (FTGraphemeToPhonemeResponse)initWithFlatbuffData:(id)data root:(const GraphemeToPhonemeResponse *)root verify:(BOOL)verify;
- (NSArray)aot_token_prons;
- (NSArray)jit_token_prons;
- (NSArray)phonemes;
- (NSString)g2p_model_version;
- (NSString)g2p_version;
- (NSString)phoneset_version;
- (NSString)return_str;
- (NSString)session_id;
- (Offset<siri::speech::schema_fb::GraphemeToPhonemeResponse>)addObjectToBuffer:(void *)buffer;
- (id)aot_token_prons_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)jit_token_prons_objectAtIndex:(unint64_t)index;
- (id)phonemes_objectAtIndex:(unint64_t)index;
- (int)return_code;
- (unint64_t)aot_token_prons_count;
- (unint64_t)jit_token_prons_count;
- (unint64_t)phonemes_count;
- (void)aot_token_prons_enumerateObjectsUsingBlock:(id)block;
- (void)jit_token_prons_enumerateObjectsUsingBlock:(id)block;
- (void)phonemes_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTGraphemeToPhonemeResponse

- (FTGraphemeToPhonemeResponse)initWithFlatbuffData:(id)data root:(const GraphemeToPhonemeResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTGraphemeToPhonemeResponse;
  v10 = [(FTGraphemeToPhonemeResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::GraphemeToPhonemeResponse::Verify(v18, v21))
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

- (NSString)session_id
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

- (int)return_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)return_str
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

- (NSArray)phonemes
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"phonemes"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__FTGraphemeToPhonemeResponse_phonemes__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTGraphemeToPhonemeResponse *)self phonemes_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"phonemes"];
  }

  return v3;
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
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
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
    if (*v7->var0 >= 0xBu && (v8 = *v7[10].var0) != 0)
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
    if (*v8->var0 >= 0xBu)
    {
      v9 = *v8[10].var0;
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

- (BOOL)is_pron_guessed
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)g2p_version
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

- (NSString)g2p_model_version
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

- (NSString)phoneset_version
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

- (NSArray)aot_token_prons
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"aot_token_prons"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__FTGraphemeToPhonemeResponse_aot_token_prons__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTGraphemeToPhonemeResponse *)self aot_token_prons_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"aot_token_prons"];
  }

  return v3;
}

- (id)aot_token_prons_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"aot_token_prons"];
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
  if (*v10->var0 >= 0x15u)
  {
    v11 = *v10[20].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTTokenProns alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)aot_token_prons_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"aot_token_prons"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0x15u && (v8 = *v7[20].var0) != 0)
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

- (void)aot_token_prons_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"aot_token_prons"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x15u)
    {
      v9 = *v8[20].var0;
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
            v15 = [[FTTokenProns alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)jit_token_prons
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"jit_token_prons"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__FTGraphemeToPhonemeResponse_jit_token_prons__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTGraphemeToPhonemeResponse *)self jit_token_prons_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"jit_token_prons"];
  }

  return v3;
}

- (id)jit_token_prons_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"jit_token_prons"];
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
  if (*v10->var0 >= 0x17u)
  {
    v11 = *v10[22].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTTokenProns alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)jit_token_prons_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"jit_token_prons"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0x17u && (v8 = *v7[22].var0) != 0)
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

- (void)jit_token_prons_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"jit_token_prons"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x17u)
    {
      v9 = *v8[22].var0;
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
            v15 = [[FTTokenProns alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::GraphemeToPhonemeResponse>)addObjectToBuffer:(void *)buffer
{
  v80 = *MEMORY[0x277D85DE8];
  session_id = [(FTGraphemeToPhonemeResponse *)self session_id];
  v6 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)session_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  return_code = [(FTGraphemeToPhonemeResponse *)self return_code];
  return_str = [(FTGraphemeToPhonemeResponse *)self return_str];
  v10 = return_str;
  if (!return_str)
  {
    return_str = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)return_str UTF8String];
  v12 = strlen(uTF8String2);
  v58 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  memset(&v76, 0, sizeof(v76));
  phonemes = [(FTGraphemeToPhonemeResponse *)self phonemes];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v76, [phonemes count]);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  phonemes2 = [(FTGraphemeToPhonemeResponse *)self phonemes];
  v15 = [phonemes2 countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v15)
  {
    v16 = *v73;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v73 != v16)
        {
          objc_enumerationMutation(phonemes2);
        }

        uTF8String3 = [*(*(&v72 + 1) + 8 * i) UTF8String];
        v19 = strlen(uTF8String3);
        LODWORD(v71.__begin_) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v76.__begin_, &v71);
      }

      v15 = [phonemes2 countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (v15);
  }

  if (v76.__end_ == v76.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    begin = v76.__begin_;
  }

  v57 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v76.__end_ - v76.__begin_);
  is_pron_guessed = [(FTGraphemeToPhonemeResponse *)self is_pron_guessed];
  g2p_version = [(FTGraphemeToPhonemeResponse *)self g2p_version];
  v23 = g2p_version;
  if (!g2p_version)
  {
    g2p_version = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)g2p_version UTF8String];
  v25 = strlen(uTF8String4);
  v56 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v25);

  g2p_model_version = [(FTGraphemeToPhonemeResponse *)self g2p_model_version];
  v27 = g2p_model_version;
  if (!g2p_model_version)
  {
    g2p_model_version = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)g2p_model_version UTF8String];
  v29 = strlen(uTF8String5);
  v55 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v29);

  phoneset_version = [(FTGraphemeToPhonemeResponse *)self phoneset_version];
  v31 = phoneset_version;
  if (!phoneset_version)
  {
    phoneset_version = &stru_284834138;
  }

  uTF8String6 = [(__CFString *)phoneset_version UTF8String];
  v33 = strlen(uTF8String6);
  v34 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v33);

  memset(&v71, 0, sizeof(v71));
  aot_token_prons = [(FTGraphemeToPhonemeResponse *)self aot_token_prons];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v71, [aot_token_prons count]);

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  aot_token_prons2 = [(FTGraphemeToPhonemeResponse *)self aot_token_prons];
  v37 = [aot_token_prons2 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v37)
  {
    v38 = *v68;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v68 != v38)
        {
          objc_enumerationMutation(aot_token_prons2);
        }

        LODWORD(v66.__begin_) = [*(*(&v67 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v71.__begin_, &v66);
      }

      v37 = [aot_token_prons2 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v37);
  }

  if (v71.__end_ == v71.__begin_)
  {
    v40 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns>> const&)::t;
  }

  else
  {
    v40 = v71.__begin_;
  }

  v41 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v40, v71.__end_ - v71.__begin_);
  memset(&v66, 0, sizeof(v66));
  jit_token_prons = [(FTGraphemeToPhonemeResponse *)self jit_token_prons];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v66, [jit_token_prons count]);

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  jit_token_prons2 = [(FTGraphemeToPhonemeResponse *)self jit_token_prons];
  v44 = [jit_token_prons2 countByEnumeratingWithState:&v62 objects:v77 count:16];
  if (v44)
  {
    v45 = *v63;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v63 != v45)
        {
          objc_enumerationMutation(jit_token_prons2);
        }

        v61 = [*(*(&v62 + 1) + 8 * k) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v66.__begin_, &v61);
      }

      v44 = [jit_token_prons2 countByEnumeratingWithState:&v62 objects:v77 count:16];
    }

    while (v44);
  }

  if (v66.__end_ == v66.__begin_)
  {
    v47 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TokenProns>> const&)::t;
  }

  else
  {
    v47 = v66.__begin_;
  }

  v48 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v47, v66.__end_ - v66.__begin_);
  *(buffer + 70) = 1;
  v49 = *(buffer + 8);
  v50 = *(buffer + 12);
  v51 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, return_code, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v58);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 12, is_pron_guessed, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v56);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, v55);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v34);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 20, v41);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 22, v48);
  v52.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v49 - v50 + v51);
  if (v66.__begin_)
  {
    v66.__end_ = v66.__begin_;
    operator delete(v66.__begin_);
  }

  if (v71.__begin_)
  {
    v71.__end_ = v71.__begin_;
    operator delete(v71.__begin_);
  }

  if (v76.__begin_)
  {
    v76.__end_ = v76.__begin_;
    operator delete(v76.__begin_);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v52;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTGraphemeToPhonemeResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__43__FTGraphemeToPhonemeResponse_flatbuffData__block_invoke(uint64_t a1)
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