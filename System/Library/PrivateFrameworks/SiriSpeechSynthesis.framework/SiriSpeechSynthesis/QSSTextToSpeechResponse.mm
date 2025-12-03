@interface QSSTextToSpeechResponse
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)buffer;
- (QSSAudioDescription)decoder_description;
- (QSSAudioDescription)playback_description;
- (QSSTextToSpeechFeature)feature;
- (QSSTextToSpeechMeta)meta_info;
- (QSSTextToSpeechResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechResponse *)root verify:(BOOL)verify;
- (QSSTextToSpeechResponseDevData)dev_data;
- (id)flatbuffData;
- (int)error_code;
- (int)sample_rate;
- (int64_t)audio_type;
- (void)audio:(id)audio;
@end

@implementation QSSTextToSpeechResponse

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
  v2.var0 = [(QSSTextToSpeechResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__39__QSSTextToSpeechResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)buffer
{
  v60 = *MEMORY[0x277D85DE8];
  speech_id = [(QSSTextToSpeechResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSTextToSpeechResponse *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v44 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  error_code = [(QSSTextToSpeechResponse *)self error_code];
  error_str = [(QSSTextToSpeechResponse *)self error_str];
  v16 = error_str;
  if (!error_str)
  {
    error_str = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v18 = strlen(uTF8String3);
  v43 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  audio_type = [(QSSTextToSpeechResponse *)self audio_type];
  sample_rate = [(QSSTextToSpeechResponse *)self sample_rate];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3812000000;
  v55 = __Block_byref_object_copy__645;
  v56 = __Block_byref_object_dispose__646;
  v57 = &unk_26916BD4D;
  v58 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __45__QSSTextToSpeechResponse_addObjectToBuffer___block_invoke;
  v51[3] = &unk_279C4C2C8;
  v51[4] = &v52;
  v51[5] = buffer;
  [(QSSTextToSpeechResponse *)self audio:v51];
  decoder_description = [(QSSTextToSpeechResponse *)self decoder_description];
  v40 = [decoder_description addObjectToBuffer:buffer];

  playback_description = [(QSSTextToSpeechResponse *)self playback_description];
  v39 = [playback_description addObjectToBuffer:buffer];

  memset(&v50, 0, sizeof(v50));
  word_timing_info = [(QSSTextToSpeechResponse *)self word_timing_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v50, [word_timing_info count]);

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  word_timing_info2 = [(QSSTextToSpeechResponse *)self word_timing_info];
  v23 = [word_timing_info2 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v23)
  {
    v24 = *v47;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(word_timing_info2);
        }

        v45 = [*(*(&v46 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v50, &v45);
      }

      v23 = [word_timing_info2 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v23);
  }

  begin = v50.__begin_;
  if (v50.__end_ == v50.__begin_)
  {
    v27 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    v27 = v50.__begin_;
  }

  v28 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v27, v50.__end_ - v50.__begin_);
  meta_info = [(QSSTextToSpeechResponse *)self meta_info];
  v30 = [meta_info addObjectToBuffer:buffer];

  feature = [(QSSTextToSpeechResponse *)self feature];
  LODWORD(meta_info) = [feature addObjectToBuffer:buffer];

  dev_data = [(QSSTextToSpeechResponse *)self dev_data];
  v38 = [dev_data addObjectToBuffer:buffer];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v33 = *(buffer + 8);
  v34 = *(buffer + 12);
  LODWORD(dev_data) = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v44);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v43);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, audio_type);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, sample_rate);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, *(v53 + 12));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 20, v39);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 22, v28);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 24, v30);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 26, meta_info);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 28, v38);
  v35.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v33 - v34 + dev_data);
  if (begin)
  {
    operator delete(begin);
  }

  _Block_object_dispose(&v52, 8);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t __45__QSSTextToSpeechResponse_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (QSSTextToSpeechResponseDevData)dev_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"dev_data"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechResponseDevData alloc];
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

    v3 = [(QSSTextToSpeechResponseDevData *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"dev_data"];
  }

  return v3;
}

- (QSSTextToSpeechFeature)feature
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"feature"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechFeature alloc];
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

    v3 = [(QSSTextToSpeechFeature *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"feature"];
  }

  return v3;
}

- (QSSTextToSpeechMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechMeta alloc];
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

    v3 = [(QSSTextToSpeechMeta *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meta_info"];
  }

  return v3;
}

- (NSArray)word_timing_info
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x17u)
    {
      v6 = *v5[22].var0;
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
            v11 = [[QSSWordTimingInfo alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"word_timing_info"];
  }

  return array;
}

- (QSSAudioDescription)playback_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"playback_description"];
  if (!v3)
  {
    v4 = [QSSAudioDescription alloc];
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

    v3 = [(QSSAudioDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"playback_description"];
  }

  return v3;
}

- (QSSAudioDescription)decoder_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"decoder_description"];
  if (!v3)
  {
    v4 = [QSSAudioDescription alloc];
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

    v3 = [(QSSAudioDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"decoder_description"];
  }

  return v3;
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

- (QSSTextToSpeechResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechResponse;
  v10 = [(QSSTextToSpeechResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::TextToSpeechResponse::Verify(v19, &v24))
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