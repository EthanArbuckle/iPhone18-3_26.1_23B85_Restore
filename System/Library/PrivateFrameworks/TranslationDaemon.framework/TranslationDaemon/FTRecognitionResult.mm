@interface FTRecognitionResult
- (FTRecognitionResult)initWithFlatbuffData:(id)data root:(const RecognitionResult *)root verify:(BOOL)verify;
- (FTRecognitionSausage)post_itn;
- (FTRecognitionSausage)pre_itn;
- (NSArray)choice_alignments;
- (NSArray)post_itn_nbest_choices;
- (NSArray)pre_itn_nbest_choices;
- (NSArray)pre_itn_token_to_post_itn_char_alignment;
- (Offset<siri::speech::schema_fb::RecognitionResult>)addObjectToBuffer:(void *)buffer;
- (id)choice_alignments_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)post_itn_nbest_choices_objectAtIndex:(unint64_t)index;
- (id)pre_itn_nbest_choices_objectAtIndex:(unint64_t)index;
- (id)pre_itn_token_to_post_itn_char_alignment_objectAtIndex:(unint64_t)index;
- (unint64_t)choice_alignments_count;
- (unint64_t)post_itn_nbest_choices_count;
- (unint64_t)pre_itn_nbest_choices_count;
- (unint64_t)pre_itn_token_to_post_itn_char_alignment_count;
- (void)choice_alignments_enumerateObjectsUsingBlock:(id)block;
- (void)post_itn_nbest_choices_enumerateObjectsUsingBlock:(id)block;
- (void)pre_itn_nbest_choices_enumerateObjectsUsingBlock:(id)block;
- (void)pre_itn_token_to_post_itn_char_alignment_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTRecognitionResult

- (FTRecognitionResult)initWithFlatbuffData:(id)data root:(const RecognitionResult *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTRecognitionResult;
  v10 = [(FTRecognitionResult *)&v25 init];
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

  if (!siri::speech::schema_fb::RecognitionResult::Verify(v18, v21))
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

- (FTRecognitionSausage)pre_itn
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn"];
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
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pre_itn"];
  }

  return v3;
}

- (FTRecognitionSausage)post_itn
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn"];
  if (!v3)
  {
    v4 = [FTRecognitionSausage alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 7u && (v7 = *v6[6].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"post_itn"];
  }

  return v3;
}

- (NSArray)pre_itn_nbest_choices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_nbest_choices"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__FTRecognitionResult_pre_itn_nbest_choices__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRecognitionResult *)self pre_itn_nbest_choices_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pre_itn_nbest_choices"];
  }

  return v3;
}

- (id)pre_itn_nbest_choices_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_nbest_choices"];
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
      v7 = [[FTRecognitionChoice alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)pre_itn_nbest_choices_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_nbest_choices"];
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

- (void)pre_itn_nbest_choices_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_nbest_choices"];
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

- (NSArray)post_itn_nbest_choices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_nbest_choices"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__FTRecognitionResult_post_itn_nbest_choices__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRecognitionResult *)self post_itn_nbest_choices_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"post_itn_nbest_choices"];
  }

  return v3;
}

- (id)post_itn_nbest_choices_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_nbest_choices"];
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
      v7 = [[FTRecognitionChoice alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)post_itn_nbest_choices_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_nbest_choices"];
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

- (void)post_itn_nbest_choices_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"post_itn_nbest_choices"];
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

- (NSArray)pre_itn_token_to_post_itn_char_alignment
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignment"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__FTRecognitionResult_pre_itn_token_to_post_itn_char_alignment__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRecognitionResult *)self pre_itn_token_to_post_itn_char_alignment_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignment"];
  }

  return v3;
}

- (id)pre_itn_token_to_post_itn_char_alignment_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignment"];
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

- (unint64_t)pre_itn_token_to_post_itn_char_alignment_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignment"];
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

- (void)pre_itn_token_to_post_itn_char_alignment_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"pre_itn_token_to_post_itn_char_alignment"];
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

- (NSArray)choice_alignments
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"choice_alignments"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__FTRecognitionResult_choice_alignments__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTRecognitionResult *)self choice_alignments_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"choice_alignments"];
  }

  return v3;
}

- (id)choice_alignments_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"choice_alignments"];
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
      v7 = [[FTChoiceAlignment alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)choice_alignments_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"choice_alignments"];
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

- (void)choice_alignments_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"choice_alignments"];
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
            v15 = [[FTChoiceAlignment alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::RecognitionResult>)addObjectToBuffer:(void *)buffer
{
  v78 = *MEMORY[0x277D85DE8];
  pre_itn = [(FTRecognitionResult *)self pre_itn];
  v53 = [pre_itn addObjectToBuffer:buffer];

  post_itn = [(FTRecognitionResult *)self post_itn];
  v52 = [post_itn addObjectToBuffer:buffer];

  memset(&v73, 0, sizeof(v73));
  pre_itn_nbest_choices = [(FTRecognitionResult *)self pre_itn_nbest_choices];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v73, [pre_itn_nbest_choices count]);

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  pre_itn_nbest_choices2 = [(FTRecognitionResult *)self pre_itn_nbest_choices];
  v9 = [pre_itn_nbest_choices2 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v9)
  {
    v10 = *v70;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(pre_itn_nbest_choices2);
        }

        LODWORD(v68.__begin_) = [*(*(&v69 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v73.__begin_, &v68);
      }

      v9 = [pre_itn_nbest_choices2 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v9);
  }

  if (v73.__end_ == v73.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    begin = v73.__begin_;
  }

  v51 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v73.__end_ - v73.__begin_);
  memset(&v68, 0, sizeof(v68));
  post_itn_nbest_choices = [(FTRecognitionResult *)self post_itn_nbest_choices];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v68, [post_itn_nbest_choices count]);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  post_itn_nbest_choices2 = [(FTRecognitionResult *)self post_itn_nbest_choices];
  v15 = [post_itn_nbest_choices2 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v15)
  {
    v16 = *v65;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v65 != v16)
        {
          objc_enumerationMutation(post_itn_nbest_choices2);
        }

        LODWORD(v63.__begin_) = [*(*(&v64 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v68.__begin_, &v63);
      }

      v15 = [post_itn_nbest_choices2 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v15);
  }

  if (v68.__end_ == v68.__begin_)
  {
    v18 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    v18 = v68.__begin_;
  }

  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v18, v68.__end_ - v68.__begin_);
  memset(&v63, 0, sizeof(v63));
  pre_itn_token_to_post_itn_char_alignment = [(FTRecognitionResult *)self pre_itn_token_to_post_itn_char_alignment];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v63, [pre_itn_token_to_post_itn_char_alignment count]);

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  pre_itn_token_to_post_itn_char_alignment2 = [(FTRecognitionResult *)self pre_itn_token_to_post_itn_char_alignment];
  v22 = [pre_itn_token_to_post_itn_char_alignment2 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v22)
  {
    v23 = *v60;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(pre_itn_token_to_post_itn_char_alignment2);
        }

        LODWORD(v58.__begin_) = [*(*(&v59 + 1) + 8 * k) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v63.__begin_, &v58);
      }

      v22 = [pre_itn_token_to_post_itn_char_alignment2 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v22);
  }

  if (v63.__end_ == v63.__begin_)
  {
    v25 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ItnAlignment>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ItnAlignment>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ItnAlignment>> const&)::t;
  }

  else
  {
    v25 = v63.__begin_;
  }

  v49 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v25, v63.__end_ - v63.__begin_);
  memset(&v58, 0, sizeof(v58));
  choice_alignments = [(FTRecognitionResult *)self choice_alignments];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v58, [choice_alignments count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  choice_alignments2 = [(FTRecognitionResult *)self choice_alignments];
  v50 = v19;
  v28 = [choice_alignments2 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v28)
  {
    v29 = *v55;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v55 != v29)
        {
          objc_enumerationMutation(choice_alignments2);
        }

        v31 = [*(*(&v54 + 1) + 8 * m) addObjectToBuffer:buffer];
        end = v58.__end_;
        if (v58.__end_ >= v58.__end_cap_.__value_)
        {
          v34 = v58.__begin_;
          v35 = v58.__end_ - v58.__begin_;
          v36 = v58.__end_ - v58.__begin_;
          v37 = v36 + 1;
          if ((v36 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v38 = v58.__end_cap_.__value_ - v58.__begin_;
          if ((v58.__end_cap_.__value_ - v58.__begin_) >> 1 > v37)
          {
            v37 = v38 >> 1;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v39 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v58, v39);
          }

          *(4 * v36) = v31;
          v33 = (4 * v36 + 4);
          memcpy(0, v34, v35);
          v40 = v58.__begin_;
          v58.__begin_ = 0;
          v58.__end_ = v33;
          v58.__end_cap_.__value_ = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v58.__end_ = v31;
          v33 = end + 1;
        }

        v58.__end_ = v33;
      }

      v28 = [choice_alignments2 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v28);
  }

  if (v58.__end_ == v58.__begin_)
  {
    v41 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ChoiceAlignment>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ChoiceAlignment>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::ChoiceAlignment>> const&)::t;
  }

  else
  {
    v41 = v58.__begin_;
  }

  v42 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v41, v58.__end_ - v58.__begin_);
  *(buffer + 70) = 1;
  v43 = *(buffer + 8);
  v44 = *(buffer + 12);
  v45 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v53);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v52);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v51);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v50);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v49);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v42);
  v46.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v43 - v44 + v45);
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

  if (v73.__begin_)
  {
    v73.__end_ = v73.__begin_;
    operator delete(v73.__begin_);
  }

  v47 = *MEMORY[0x277D85DE8];
  return v46;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTRecognitionResult *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__35__FTRecognitionResult_flatbuffData__block_invoke(uint64_t a1)
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