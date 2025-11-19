@interface QSSTextToSpeechResponse
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)a3;
- (QSSAudioDescription)decoder_description;
- (QSSAudioDescription)playback_description;
- (QSSTextToSpeechFeature)feature;
- (QSSTextToSpeechMeta)meta_info;
- (QSSTextToSpeechResponse)initWithFlatbuffData:(id)a3 root:(const TextToSpeechResponse *)a4 verify:(BOOL)a5;
- (QSSTextToSpeechResponseDevData)dev_data;
- (id)flatbuffData;
- (int)error_code;
- (int)sample_rate;
- (int64_t)audio_type;
- (void)audio:(id)a3;
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

- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = [(QSSTextToSpeechResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSTextToSpeechResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v44 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v14 = [(QSSTextToSpeechResponse *)self error_code];
  v15 = [(QSSTextToSpeechResponse *)self error_str];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v43 = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  v42 = [(QSSTextToSpeechResponse *)self audio_type];
  v41 = [(QSSTextToSpeechResponse *)self sample_rate];
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
  v51[5] = a3;
  [(QSSTextToSpeechResponse *)self audio:v51];
  v19 = [(QSSTextToSpeechResponse *)self decoder_description];
  v40 = [v19 addObjectToBuffer:a3];

  v20 = [(QSSTextToSpeechResponse *)self playback_description];
  v39 = [v20 addObjectToBuffer:a3];

  memset(&v50, 0, sizeof(v50));
  v21 = [(QSSTextToSpeechResponse *)self word_timing_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v50, [v21 count]);

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = [(QSSTextToSpeechResponse *)self word_timing_info];
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v23)
  {
    v24 = *v47;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v45 = [*(*(&v46 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v50, &v45);
      }

      v23 = [v22 countByEnumeratingWithState:&v46 objects:v59 count:16];
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

  v28 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v27, v50.__end_ - v50.__begin_);
  v29 = [(QSSTextToSpeechResponse *)self meta_info];
  v30 = [v29 addObjectToBuffer:a3];

  v31 = [(QSSTextToSpeechResponse *)self feature];
  LODWORD(v29) = [v31 addObjectToBuffer:a3];

  v32 = [(QSSTextToSpeechResponse *)self dev_data];
  v38 = [v32 addObjectToBuffer:a3];

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v33 = *(a3 + 8);
  v34 = *(a3 + 12);
  LODWORD(v32) = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v44);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v43);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v42);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 16, *(v53 + 12));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 20, v39);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 22, v28);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 24, v30);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 26, v29);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 28, v38);
  v35.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v33 - v34 + v32);
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
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
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
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"word_timing_info"];
  }

  return v3;
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

- (void)audio:(id)a3
{
  root = self->_root;
  v5 = &root[-*root->var0];
  v6 = a3;
  v7 = *root[*v5[16].var0 + *root[*v5[16].var0].var0].var0;
  v8 = v6;
  (*(a3 + 2))();
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

- (QSSTextToSpeechResponse)initWithFlatbuffData:(id)a3 root:(const TextToSpeechResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechResponse;
  v10 = [(QSSTextToSpeechResponse *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
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

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end