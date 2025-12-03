@interface FTPronGuessResponse
- (FTPronGuessResponse)initWithFlatbuffData:(id)data root:(const PronGuessResponse *)root verify:(BOOL)verify;
- (FTVocToken)voc_token;
- (NSArray)human_readable_prons;
- (NSArray)tts_pronunciations;
- (NSString)apg_id;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::PronGuessResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)human_readable_prons_objectAtIndex:(unint64_t)index;
- (id)tts_pronunciations_objectAtIndex:(unint64_t)index;
- (int)error_code;
- (unint64_t)human_readable_prons_count;
- (unint64_t)tts_pronunciations_count;
- (void)human_readable_prons_enumerateObjectsUsingBlock:(id)block;
- (void)tts_pronunciations_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTPronGuessResponse

- (FTPronGuessResponse)initWithFlatbuffData:(id)data root:(const PronGuessResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTPronGuessResponse;
  v10 = [(FTPronGuessResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::PronGuessResponse::Verify(v18, v21))
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

- (NSString)session_id
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

- (int)error_code
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

- (NSString)error_str
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

- (NSString)apg_id
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

- (FTVocToken)voc_token
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voc_token"];
  if (!v3)
  {
    v4 = [FTVocToken alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xFu && (v7 = *v6[14].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTVocToken *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"voc_token"];
  }

  return v3;
}

- (NSArray)tts_pronunciations
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tts_pronunciations"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__FTPronGuessResponse_tts_pronunciations__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTPronGuessResponse *)self tts_pronunciations_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"tts_pronunciations"];
  }

  return v3;
}

- (id)tts_pronunciations_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tts_pronunciations"];
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
  if (*v10->var0 >= 0x11u)
  {
    v11 = *v10[16].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTPronunciation alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)tts_pronunciations_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tts_pronunciations"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0x11u && (v8 = *v7[16].var0) != 0)
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

- (void)tts_pronunciations_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tts_pronunciations"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x11u)
    {
      v9 = *v8[16].var0;
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
            v15 = [[FTPronunciation alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)human_readable_prons
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"human_readable_prons"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__FTPronGuessResponse_human_readable_prons__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTPronGuessResponse *)self human_readable_prons_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"human_readable_prons"];
  }

  return v3;
}

- (id)human_readable_prons_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"human_readable_prons"];
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

- (unint64_t)human_readable_prons_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"human_readable_prons"];
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

- (void)human_readable_prons_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"human_readable_prons"];
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

- (Offset<siri::speech::schema_fb::PronGuessResponse>)addObjectToBuffer:(void *)buffer
{
  v74 = *MEMORY[0x277D85DE8];
  speech_id = [(FTPronGuessResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTPronGuessResponse *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v59 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  error_code = [(FTPronGuessResponse *)self error_code];
  error_str = [(FTPronGuessResponse *)self error_str];
  v14 = error_str;
  if (!error_str)
  {
    error_str = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v16 = strlen(uTF8String3);
  v57 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  apg_id = [(FTPronGuessResponse *)self apg_id];
  v18 = apg_id;
  if (!apg_id)
  {
    apg_id = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)apg_id UTF8String];
  v20 = strlen(uTF8String4);
  v56 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v20);

  voc_token = [(FTPronGuessResponse *)self voc_token];
  v55 = [voc_token addObjectToBuffer:buffer];

  memset(&v71, 0, sizeof(v71));
  tts_pronunciations = [(FTPronGuessResponse *)self tts_pronunciations];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v71, [tts_pronunciations count]);

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  tts_pronunciations2 = [(FTPronGuessResponse *)self tts_pronunciations];
  v24 = [tts_pronunciations2 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v24)
  {
    v25 = *v68;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v68 != v25)
        {
          objc_enumerationMutation(tts_pronunciations2);
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

          v35 = v34 >= 0x7FFFFFFFFFFFFFFCLL;
          v36 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v35)
          {
            v36 = v33;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v71, v36);
          }

          *(4 * v32) = v27;
          v29 = (4 * v32 + 4);
          memcpy(0, begin, v31);
          v37 = v71.__begin_;
          v71.__begin_ = 0;
          v71.__end_ = v29;
          v71.__end_cap_.__value_ = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v71.__end_ = v27;
          v29 = end + 1;
        }

        v71.__end_ = v29;
      }

      v24 = [tts_pronunciations2 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v24);
  }

  if (v71.__end_ == v71.__begin_)
  {
    v38 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Pronunciation>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Pronunciation>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Pronunciation>> const&)::t;
  }

  else
  {
    v38 = v71.__begin_;
  }

  v39 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v38, v71.__end_ - v71.__begin_);
  memset(&v66, 0, sizeof(v66));
  human_readable_prons = [(FTPronGuessResponse *)self human_readable_prons];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v66, [human_readable_prons count]);

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  human_readable_prons2 = [(FTPronGuessResponse *)self human_readable_prons];
  v42 = [human_readable_prons2 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v42)
  {
    v43 = *v63;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v63 != v43)
        {
          objc_enumerationMutation(human_readable_prons2);
        }

        uTF8String5 = [*(*(&v62 + 1) + 8 * j) UTF8String];
        v46 = strlen(uTF8String5);
        v61 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v46);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v66.__begin_, &v61);
      }

      v42 = [human_readable_prons2 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v42);
  }

  if (v66.__end_ == v66.__begin_)
  {
    v47 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v59);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v56);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v55);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, v39);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v48);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTPronGuessResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__35__FTPronGuessResponse_flatbuffData__block_invoke(uint64_t a1)
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