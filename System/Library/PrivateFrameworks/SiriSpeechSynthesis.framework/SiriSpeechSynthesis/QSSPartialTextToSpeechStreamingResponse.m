@interface QSSPartialTextToSpeechStreamingResponse
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)stream_id;
- (Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)a3;
- (QSSPartialTextToSpeechStreamingResponse)initWithFlatbuffData:(id)a3 root:(const PartialTextToSpeechStreamingResponse *)a4 verify:(BOOL)a5;
- (QSSTextToSpeechFeature)feature;
- (id)flatbuffData;
- (int)current_pkt_number;
- (int)error_code;
- (void)audio:(id)a3;
@end

@implementation QSSPartialTextToSpeechStreamingResponse

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
  v2.var0 = [(QSSPartialTextToSpeechStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__55__QSSPartialTextToSpeechStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = [(QSSPartialTextToSpeechStreamingResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSPartialTextToSpeechStreamingResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  LODWORD(v40) = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  HIDWORD(v39) = [(QSSPartialTextToSpeechStreamingResponse *)self error_code];
  v14 = [(QSSPartialTextToSpeechStreamingResponse *)self error_str];
  v15 = v14;
  if (!v14)
  {
    v14 = &stru_2879AE8E0;
  }

  v16 = [(__CFString *)v14 UTF8String];
  v17 = strlen(v16);
  LODWORD(v39) = flatbuffers::FlatBufferBuilder::CreateString(a3, v16, v17);

  v18 = [(QSSPartialTextToSpeechStreamingResponse *)self stream_id];
  v19 = v18;
  if (!v18)
  {
    v18 = &stru_2879AE8E0;
  }

  v20 = [(__CFString *)v18 UTF8String];
  v21 = strlen(v20);
  v22 = flatbuffers::FlatBufferBuilder::CreateString(a3, v20, v21);

  v23 = [(QSSPartialTextToSpeechStreamingResponse *)self current_pkt_number];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3812000000;
  v50 = __Block_byref_object_copy__645;
  v51 = __Block_byref_object_dispose__646;
  v52 = &unk_26916BD4D;
  v53 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __61__QSSPartialTextToSpeechStreamingResponse_addObjectToBuffer___block_invoke;
  v46[3] = &unk_279C4C2C8;
  v46[4] = &v47;
  v46[5] = a3;
  [(QSSPartialTextToSpeechStreamingResponse *)self audio:v46];
  memset(&v45, 0, sizeof(v45));
  v24 = [(QSSPartialTextToSpeechStreamingResponse *)self word_timing_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v45, [v24 count]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = [(QSSPartialTextToSpeechStreamingResponse *)self word_timing_info];
  v26 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v26)
  {
    v27 = *v42;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v25);
        }

        HIDWORD(v40) = [*(*(&v41 + 1) + 8 * i) addObjectToBuffer:{a3, v39, v40}];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v45, &v40 + 1);
      }

      v26 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v26);
  }

  begin = v45.__begin_;
  if (v45.__end_ == v45.__begin_)
  {
    v30 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    v30 = v45.__begin_;
  }

  v31 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v30, v45.__end_ - v45.__begin_);
  v32 = [(QSSPartialTextToSpeechStreamingResponse *)self feature];
  v33 = [v32 addObjectToBuffer:a3];

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v34 = *(a3 + 8);
  v35 = *(a3 + 12);
  LODWORD(v32) = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, SHIDWORD(v39));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v39);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v22);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v23);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 16, *(v48 + 12));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v31);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 20, v33);
  v36.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v34 - v35 + v32);
  if (begin)
  {
    operator delete(begin);
  }

  _Block_object_dispose(&v47, 8);
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t __61__QSSPartialTextToSpeechStreamingResponse_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (QSSTextToSpeechFeature)feature
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"feature"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechFeature alloc];
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

    v3 = [(QSSTextToSpeechFeature *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"feature"];
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

- (QSSPartialTextToSpeechStreamingResponse)initWithFlatbuffData:(id)a3 root:(const PartialTextToSpeechStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSPartialTextToSpeechStreamingResponse;
  v10 = [(QSSPartialTextToSpeechStreamingResponse *)&v29 init];
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