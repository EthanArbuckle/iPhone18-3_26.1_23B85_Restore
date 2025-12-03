@interface FTTextToSpeechResponse
- (FTAudioDescription)decoder_description;
- (FTAudioDescription)playback_description;
- (FTTextToSpeechFeature)feature;
- (FTTextToSpeechMeta)meta_info;
- (FTTextToSpeechResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechResponse *)root verify:(BOOL)verify;
- (FTTextToSpeechResponseDevData)dev_data;
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)word_timing_info_objectAtIndex:(unint64_t)index;
- (int)error_code;
- (int)sample_rate;
- (int64_t)audio_type;
- (unint64_t)word_timing_info_count;
- (void)audio:(id)audio;
- (void)word_timing_info_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTextToSpeechResponse

- (FTTextToSpeechResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechResponse;
  v10 = [(FTTextToSpeechResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechResponse::Verify(v18, v21))
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

- (int64_t)audio_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (int)sample_rate
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (void)audio:(id)audio
{
  root = self->_root;
  v5 = &root[-*root->var0];
  audioCopy = audio;
  v7 = *root[*v5[16].var0 + *root[*v5[16].var0].var0].var0;
  v8 = audioCopy;
  (*(audio + 2))();
}

- (FTAudioDescription)decoder_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"decoder_description"];
  if (!v3)
  {
    v4 = [FTAudioDescription alloc];
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

    v3 = [(FTAudioDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"decoder_description"];
  }

  return v3;
}

- (FTAudioDescription)playback_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"playback_description"];
  if (!v3)
  {
    v4 = [FTAudioDescription alloc];
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

    v3 = [(FTAudioDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"playback_description"];
  }

  return v3;
}

- (NSArray)word_timing_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__FTTextToSpeechResponse_word_timing_info__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTextToSpeechResponse *)self word_timing_info_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"word_timing_info"];
  }

  return v3;
}

- (id)word_timing_info_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
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
      v7 = [[FTWordTimingInfo alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)word_timing_info_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
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

- (void)word_timing_info_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
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
            v15 = [[FTWordTimingInfo alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (FTTextToSpeechMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info"];
  if (!v3)
  {
    v4 = [FTTextToSpeechMeta alloc];
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

    v3 = [(FTTextToSpeechMeta *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meta_info"];
  }

  return v3;
}

- (FTTextToSpeechFeature)feature
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"feature"];
  if (!v3)
  {
    v4 = [FTTextToSpeechFeature alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x1Bu && (v7 = *v6[26].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechFeature *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"feature"];
  }

  return v3;
}

- (FTTextToSpeechResponseDevData)dev_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"dev_data"];
  if (!v3)
  {
    v4 = [FTTextToSpeechResponseDevData alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x1Du && (v7 = *v6[28].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechResponseDevData *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"dev_data"];
  }

  return v3;
}

- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)buffer
{
  v60 = *MEMORY[0x277D85DE8];
  speech_id = [(FTTextToSpeechResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTTextToSpeechResponse *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  error_code = [(FTTextToSpeechResponse *)self error_code];
  error_str = [(FTTextToSpeechResponse *)self error_str];
  v17 = error_str;
  if (!error_str)
  {
    error_str = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v19 = strlen(uTF8String3);
  v44 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);

  audio_type = [(FTTextToSpeechResponse *)self audio_type];
  sample_rate = [(FTTextToSpeechResponse *)self sample_rate];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3812000000;
  v55 = __Block_byref_object_copy__15;
  v56 = __Block_byref_object_dispose__15;
  v57 = &unk_233042D43;
  v58 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __44__FTTextToSpeechResponse_addObjectToBuffer___block_invoke;
  v51[3] = &unk_2789B8AB0;
  v51[4] = &v52;
  v51[5] = buffer;
  [(FTTextToSpeechResponse *)self audio:v51];
  decoder_description = [(FTTextToSpeechResponse *)self decoder_description];
  v41 = [decoder_description addObjectToBuffer:buffer];

  playback_description = [(FTTextToSpeechResponse *)self playback_description];
  v40 = [playback_description addObjectToBuffer:buffer];

  memset(&v50, 0, sizeof(v50));
  word_timing_info = [(FTTextToSpeechResponse *)self word_timing_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v50, [word_timing_info count]);

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  word_timing_info2 = [(FTTextToSpeechResponse *)self word_timing_info];
  v24 = [word_timing_info2 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v24)
  {
    v25 = *v47;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(word_timing_info2);
        }

        v45 = [*(*(&v46 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v50.__begin_, &v45);
      }

      v24 = [word_timing_info2 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v24);
  }

  if (v50.__end_ == v50.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    begin = v50.__begin_;
  }

  v28 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v50.__end_ - v50.__begin_);
  meta_info = [(FTTextToSpeechResponse *)self meta_info];
  v30 = [meta_info addObjectToBuffer:buffer];

  feature = [(FTTextToSpeechResponse *)self feature];
  LODWORD(meta_info) = [feature addObjectToBuffer:buffer];

  dev_data = [(FTTextToSpeechResponse *)self dev_data];
  v33 = [dev_data addObjectToBuffer:buffer];

  *(buffer + 70) = 1;
  v34 = String;
  v35 = *(buffer + 8);
  v36 = *(buffer + 12);
  LODWORD(dev_data) = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v34);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v44);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, audio_type, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, sample_rate, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, *(v53 + 12));
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v41);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 20, v40);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 22, v28);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 24, v30);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 26, meta_info);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 28, v33);
  v37.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v35 - v36 + dev_data);
  if (v50.__begin_)
  {
    v50.__end_ = v50.__begin_;
    operator delete(v50.__begin_);
  }

  _Block_object_dispose(&v52, 8);
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t __44__FTTextToSpeechResponse_addObjectToBuffer___block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__38__FTTextToSpeechResponse_flatbuffData__block_invoke(uint64_t a1)
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