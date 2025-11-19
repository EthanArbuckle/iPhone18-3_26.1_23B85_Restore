@interface OPTTSPartialTextToSpeechStreamingResponse
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)stream_id;
- (OPTTSPartialTextToSpeechStreamingResponse)initWithFlatbuffData:(id)a3 root:(const PartialTextToSpeechStreamingResponse *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int)current_pkt_number;
- (int)error_code;
- (void)audio:(id)a3;
@end

@implementation OPTTSPartialTextToSpeechStreamingResponse

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_2728326A0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSPartialTextToSpeechStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__57__OPTTSPartialTextToSpeechStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = [(OPTTSPartialTextToSpeechStreamingResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2881CBD18;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(OPTTSPartialTextToSpeechStreamingResponse *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2881CBD18;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v39 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(OPTTSPartialTextToSpeechStreamingResponse *)self error_code];
  v14 = [(OPTTSPartialTextToSpeechStreamingResponse *)self error_str];
  v15 = v14;
  if (!v14)
  {
    v14 = &stru_2881CBD18;
  }

  v16 = [(__CFString *)v14 UTF8String];
  v17 = strlen(v16);
  v18 = flatbuffers::FlatBufferBuilder::CreateString(a3, v16, v17);

  v19 = [(OPTTSPartialTextToSpeechStreamingResponse *)self stream_id];
  v20 = v19;
  if (!v19)
  {
    v19 = &stru_2881CBD18;
  }

  v21 = [(__CFString *)v19 UTF8String];
  v22 = strlen(v21);
  v23 = flatbuffers::FlatBufferBuilder::CreateString(a3, v21, v22);

  v24 = [(OPTTSPartialTextToSpeechStreamingResponse *)self current_pkt_number];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3812000000;
  v53 = __Block_byref_object_copy__1271;
  v54 = __Block_byref_object_dispose__1272;
  v55 = &unk_27283C3F7;
  v56 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __63__OPTTSPartialTextToSpeechStreamingResponse_addObjectToBuffer___block_invoke;
  v49[3] = &unk_279E4B750;
  v49[4] = &v50;
  v49[5] = a3;
  [(OPTTSPartialTextToSpeechStreamingResponse *)self audio:v49];
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v25 = [(OPTTSPartialTextToSpeechStreamingResponse *)self word_timing_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v46, [v25 count]);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = [(OPTTSPartialTextToSpeechStreamingResponse *)self word_timing_info];
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v27)
  {
    v28 = *v43;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v41 = [*(*(&v42 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v46, &v41);
      }

      v27 = [v26 countByEnumeratingWithState:&v42 objects:v57 count:16];
    }

    while (v27);
  }

  v30 = v46;
  if (v47 == v46)
  {
    v31 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    v31 = v46;
  }

  v32 = flatbuffers::FlatBufferBuilder::CreateVector<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a3, v31, (v47 - v46) >> 2);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v33 = *(a3 + 8);
  v34 = *(a3 + 12);
  v35 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 6, v39);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v13);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 10, v18);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 12, v23);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v24);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, *(v51 + 12));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 18, v32);
  v36.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v33 - v34 + v35);
  if (v30)
  {
    operator delete(v30);
  }

  _Block_object_dispose(&v50, 8);
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t __63__OPTTSPartialTextToSpeechStreamingResponse_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (NSArray)word_timing_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x13u)
    {
      v6 = *v5[18].var0;
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
            v11 = [[OPTTSWordTimingInfo alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
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

- (void)audio:(id)a3
{
  root = self->_root;
  v5 = &root[-*root->var0];
  v6 = a3;
  v7 = *root[*v5[16].var0 + *root[*v5[16].var0].var0].var0;
  v8 = v6;
  (*(a3 + 2))();
}

- (int)current_pkt_number
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

- (NSString)stream_id
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

- (OPTTSPartialTextToSpeechStreamingResponse)initWithFlatbuffData:(id)a3 root:(const PartialTextToSpeechStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = OPTTSPartialTextToSpeechStreamingResponse;
  v10 = [(OPTTSPartialTextToSpeechStreamingResponse *)&v29 init];
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
      v26 = xmmword_2728326B0;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v19, &v24))
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