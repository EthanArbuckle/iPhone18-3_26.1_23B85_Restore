@interface FTSiriTranslationInfo
- (FTRecognitionSausage)raw_sausage;
- (FTSiriTranslationInfo)initWithFlatbuffData:(id)data root:(const SiriTranslationInfo *)root verify:(BOOL)verify;
- (NSArray)itn_alignments;
- (NSArray)post_itn_tokens;
- (NSArray)raw_nbest_choices;
- (NSArray)translation_phrase;
- (NSString)post_itn_recognition;
- (Offset<siri::speech::schema_fb::SiriTranslationInfo>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)itn_alignments_objectAtIndex:(unint64_t)index;
- (id)post_itn_tokens_objectAtIndex:(unint64_t)index;
- (id)raw_nbest_choices_objectAtIndex:(unint64_t)index;
- (id)translation_phrase_objectAtIndex:(unint64_t)index;
- (unint64_t)itn_alignments_count;
- (unint64_t)post_itn_tokens_count;
- (unint64_t)raw_nbest_choices_count;
- (unint64_t)translation_phrase_count;
- (void)itn_alignments_enumerateObjectsUsingBlock:(id)block;
- (void)post_itn_tokens_enumerateObjectsUsingBlock:(id)block;
- (void)raw_nbest_choices_enumerateObjectsUsingBlock:(id)block;
- (void)translation_phrase_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTSiriTranslationInfo

- (FTSiriTranslationInfo)initWithFlatbuffData:(id)data root:(const SiriTranslationInfo *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTSiriTranslationInfo;
  v10 = [(FTSiriTranslationInfo *)&v25 init];
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

  if (!siri::speech::schema_fb::SiriTranslationInfo::Verify(v18, v21))
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

- (FTRecognitionSausage)raw_sausage
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_sausage"];
  if (!v3)
  {
    v4 = [FTRecognitionSausage alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"raw_sausage"];
  }

  return v3;
}

- (NSArray)raw_nbest_choices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__FTSiriTranslationInfo_raw_nbest_choices__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTSiriTranslationInfo *)self raw_nbest_choices_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"raw_nbest_choices"];
  }

  return v3;
}

- (id)raw_nbest_choices_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
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
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTRecognitionChoice alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)raw_nbest_choices_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 7u && (v8 = *v7[6].var0) != 0)
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

- (void)raw_nbest_choices_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 7u)
    {
      v9 = *v8[6].var0;
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
            v15 = [[FTRecognitionChoice alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)post_itn_tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_tokens"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__FTSiriTranslationInfo_post_itn_tokens__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTSiriTranslationInfo *)self post_itn_tokens_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"post_itn_tokens"];
  }

  return v3;
}

- (id)post_itn_tokens_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_tokens"];
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
  if (*v10->var0 >= 9u)
  {
    v11 = *v10[8].var0;
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

- (unint64_t)post_itn_tokens_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_tokens"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 9u && (v8 = *v7[8].var0) != 0)
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

- (void)post_itn_tokens_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_tokens"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 9u)
    {
      v9 = *v8[8].var0;
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

- (NSString)post_itn_recognition
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

- (NSArray)itn_alignments
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"itn_alignments"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__FTSiriTranslationInfo_itn_alignments__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTSiriTranslationInfo *)self itn_alignments_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"itn_alignments"];
  }

  return v3;
}

- (id)itn_alignments_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"itn_alignments"];
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
      v7 = [[FTItnAlignment alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)itn_alignments_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"itn_alignments"];
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

- (void)itn_alignments_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"itn_alignments"];
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
            v15 = [[FTItnAlignment alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)translation_phrase
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__FTSiriTranslationInfo_translation_phrase__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTSiriTranslationInfo *)self translation_phrase_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_phrase"];
  }

  return v3;
}

- (id)translation_phrase_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
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
      v7 = [[FTSpan alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)translation_phrase_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
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

- (void)translation_phrase_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_phrase"];
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
            v15 = [[FTSpan alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::SiriTranslationInfo>)addObjectToBuffer:(void *)buffer
{
  v73 = *MEMORY[0x277D85DE8];
  raw_sausage = [(FTSiriTranslationInfo *)self raw_sausage];
  v47 = [raw_sausage addObjectToBuffer:buffer];

  memset(&v68, 0, sizeof(v68));
  raw_nbest_choices = [(FTSiriTranslationInfo *)self raw_nbest_choices];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v68, [raw_nbest_choices count]);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  raw_nbest_choices2 = [(FTSiriTranslationInfo *)self raw_nbest_choices];
  v8 = [raw_nbest_choices2 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v8)
  {
    v9 = *v65;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(raw_nbest_choices2);
        }

        LODWORD(v63.__begin_) = [*(*(&v64 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v68.__begin_, &v63);
      }

      v8 = [raw_nbest_choices2 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v8);
  }

  if (v68.__end_ == v68.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    begin = v68.__begin_;
  }

  v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v68.__end_ - v68.__begin_);
  memset(&v63, 0, sizeof(v63));
  post_itn_tokens = [(FTSiriTranslationInfo *)self post_itn_tokens];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v63, [post_itn_tokens count]);

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  post_itn_tokens2 = [(FTSiriTranslationInfo *)self post_itn_tokens];
  v15 = [post_itn_tokens2 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v15)
  {
    v16 = *v60;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v60 != v16)
        {
          objc_enumerationMutation(post_itn_tokens2);
        }

        uTF8String = [*(*(&v59 + 1) + 8 * j) UTF8String];
        v19 = strlen(uTF8String);
        LODWORD(v58.__begin_) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v19);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v63.__begin_, &v58);
      }

      v15 = [post_itn_tokens2 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v15);
  }

  if (v63.__end_ == v63.__begin_)
  {
    v20 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    v20 = v63.__begin_;
  }

  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v20, v63.__end_ - v63.__begin_);
  post_itn_recognition = [(FTSiriTranslationInfo *)self post_itn_recognition];
  v23 = post_itn_recognition;
  if (!post_itn_recognition)
  {
    post_itn_recognition = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)post_itn_recognition UTF8String];
  v25 = strlen(uTF8String2);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v25);

  memset(&v58, 0, sizeof(v58));
  itn_alignments = [(FTSiriTranslationInfo *)self itn_alignments];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v58, [itn_alignments count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  itn_alignments2 = [(FTSiriTranslationInfo *)self itn_alignments];
  v29 = [itn_alignments2 countByEnumeratingWithState:&v54 objects:v70 count:16];
  if (v29)
  {
    v30 = *v55;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(itn_alignments2);
        }

        LODWORD(v53.__begin_) = [*(*(&v54 + 1) + 8 * k) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v58.__begin_, &v53);
      }

      v29 = [itn_alignments2 countByEnumeratingWithState:&v54 objects:v70 count:16];
    }

    while (v29);
  }

  if (v58.__end_ == v58.__begin_)
  {
    v32 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ItnAlignment>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ItnAlignment>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ItnAlignment>> const&)::t;
  }

  else
  {
    v32 = v58.__begin_;
  }

  v33 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v32, v58.__end_ - v58.__begin_);
  memset(&v53, 0, sizeof(v53));
  translation_phrase = [(FTSiriTranslationInfo *)self translation_phrase];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v53, [translation_phrase count]);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  translation_phrase2 = [(FTSiriTranslationInfo *)self translation_phrase];
  v36 = [translation_phrase2 countByEnumeratingWithState:&v49 objects:v69 count:16];
  if (v36)
  {
    v37 = *v50;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(translation_phrase2);
        }

        v48 = [*(*(&v49 + 1) + 8 * m) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v53.__begin_, &v48);
      }

      v36 = [translation_phrase2 countByEnumeratingWithState:&v49 objects:v69 count:16];
    }

    while (v36);
  }

  if (v53.__end_ == v53.__begin_)
  {
    v39 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Span>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Span>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Span>> const&)::t;
  }

  else
  {
    v39 = v53.__begin_;
  }

  v40 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v39, v53.__end_ - v53.__begin_);
  *(buffer + 70) = 1;
  v41 = *(buffer + 8);
  v42 = *(buffer + 12);
  v43 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v21);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v33);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v40);
  v44.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v41 - v42 + v43);
  if (v53.__begin_)
  {
    v53.__end_ = v53.__begin_;
    operator delete(v53.__begin_);
  }

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

  if (v68.__begin_)
  {
    v68.__end_ = v68.__begin_;
    operator delete(v68.__begin_);
  }

  v45 = *MEMORY[0x277D85DE8];
  return v44;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSiriTranslationInfo *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__37__FTSiriTranslationInfo_flatbuffData__block_invoke(uint64_t a1)
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