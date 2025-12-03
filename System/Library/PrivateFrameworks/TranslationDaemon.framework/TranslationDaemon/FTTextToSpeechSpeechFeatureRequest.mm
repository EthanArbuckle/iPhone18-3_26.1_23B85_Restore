@interface FTTextToSpeechSpeechFeatureRequest
- (BOOL)support_homograph;
- (FTTextToSpeechSpeechFeatureInputText)text;
- (FTTextToSpeechSpeechFeatureInputWave)wave_data;
- (FTTextToSpeechSpeechFeatureModelIdentifier)model_id;
- (FTTextToSpeechSpeechFeatureRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureRequest *)root verify:(BOOL)verify;
- (NSArray)lexicon;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)lexicon_objectAtIndex:(unint64_t)index;
- (unint64_t)lexicon_count;
- (void)lexicon_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTextToSpeechSpeechFeatureRequest

- (FTTextToSpeechSpeechFeatureRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechSpeechFeatureRequest;
  v10 = [(FTTextToSpeechSpeechFeatureRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest::Verify(v18, v21))
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

- (FTTextToSpeechSpeechFeatureModelIdentifier)model_id
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"model_id"];
  if (!v3)
  {
    v4 = [FTTextToSpeechSpeechFeatureModelIdentifier alloc];
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

    v3 = [(FTTextToSpeechSpeechFeatureModelIdentifier *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"model_id"];
  }

  return v3;
}

- (FTTextToSpeechSpeechFeatureInputText)text
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"text"];
  if (!v3)
  {
    v4 = [FTTextToSpeechSpeechFeatureInputText alloc];
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

    v3 = [(FTTextToSpeechSpeechFeatureInputText *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"text"];
  }

  return v3;
}

- (FTTextToSpeechSpeechFeatureInputWave)wave_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"wave_data"];
  if (!v3)
  {
    v4 = [FTTextToSpeechSpeechFeatureInputWave alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechSpeechFeatureInputWave *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"wave_data"];
  }

  return v3;
}

- (NSArray)lexicon
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"lexicon"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__FTTextToSpeechSpeechFeatureRequest_lexicon__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTextToSpeechSpeechFeatureRequest *)self lexicon_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"lexicon"];
  }

  return v3;
}

- (id)lexicon_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"lexicon"];
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
      v7 = [[FTTextToSpeechSpeechFeatureRequest_LexiconEntry alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)lexicon_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"lexicon"];
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

- (void)lexicon_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"lexicon"];
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
            v15 = [[FTTextToSpeechSpeechFeatureRequest_LexiconEntry alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (BOOL)support_homograph
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest>)addObjectToBuffer:(void *)buffer
{
  v52 = *MEMORY[0x277D85DE8];
  speech_id = [(FTTextToSpeechSpeechFeatureRequest *)self speech_id];
  v5 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v7 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v7);

  session_id = [(FTTextToSpeechSpeechFeatureRequest *)self session_id];
  v9 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v11 = strlen(uTF8String2);
  v43 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v11);

  model_id = [(FTTextToSpeechSpeechFeatureRequest *)self model_id];
  v42 = [model_id addObjectToBuffer:buffer];

  text = [(FTTextToSpeechSpeechFeatureRequest *)self text];
  v14 = [text addObjectToBuffer:buffer];

  wave_data = [(FTTextToSpeechSpeechFeatureRequest *)self wave_data];
  v40 = [wave_data addObjectToBuffer:buffer];

  memset(&v50, 0, sizeof(v50));
  lexicon = [(FTTextToSpeechSpeechFeatureRequest *)self lexicon];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v50, [lexicon count]);

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  lexicon2 = [(FTTextToSpeechSpeechFeatureRequest *)self lexicon];
  v41 = v14;
  v18 = [lexicon2 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v18)
  {
    v19 = *v47;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(lexicon2);
        }

        v21 = [*(*(&v46 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v50.__end_;
        if (v50.__end_ >= v50.__end_cap_.__value_)
        {
          begin = v50.__begin_;
          v25 = v50.__end_ - v50.__begin_;
          v26 = v50.__end_ - v50.__begin_;
          v27 = v26 + 1;
          if ((v26 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v28 = v50.__end_cap_.__value_ - v50.__begin_;
          if ((v50.__end_cap_.__value_ - v50.__begin_) >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v29 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v50, v29);
          }

          *(4 * v26) = v21;
          v23 = (4 * v26 + 4);
          memcpy(0, begin, v25);
          v30 = v50.__begin_;
          v50.__begin_ = 0;
          v50.__end_ = v23;
          v50.__end_cap_.__value_ = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v50.__end_ = v21;
          v23 = end + 1;
        }

        v50.__end_ = v23;
      }

      v18 = [lexicon2 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v18);
  }

  if (v50.__end_ == v50.__begin_)
  {
    v31 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest_::LexiconEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest_::LexiconEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest_::LexiconEntry>> const&)::t;
  }

  else
  {
    v31 = v50.__begin_;
  }

  v32 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v31, v50.__end_ - v50.__begin_);
  support_homograph = [(FTTextToSpeechSpeechFeatureRequest *)self support_homograph];
  *(buffer + 70) = 1;
  v34 = *(buffer + 8);
  v35 = *(buffer + 12);
  v36 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v43);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v42);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v41);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v40);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v32);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 16, support_homograph, 0);
  v37.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v34 - v35 + v36);
  if (v50.__begin_)
  {
    v50.__end_ = v50.__begin_;
    operator delete(v50.__begin_);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v37;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechSpeechFeatureRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__50__FTTextToSpeechSpeechFeatureRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__63__FTTextToSpeechSpeechFeatureRequest_LexiconEntry_flatbuffData__block_invoke(uint64_t a1)
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