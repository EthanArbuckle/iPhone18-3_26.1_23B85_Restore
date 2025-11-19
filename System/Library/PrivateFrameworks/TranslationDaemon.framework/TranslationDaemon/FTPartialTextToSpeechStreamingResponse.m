@interface FTPartialTextToSpeechStreamingResponse
- (FTPartialTextToSpeechStreamingResponse)initWithFlatbuffData:(id)a3 root:(const PartialTextToSpeechStreamingResponse *)a4 verify:(BOOL)a5;
- (FTTextToSpeechFeature)feature;
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)stream_id;
- (Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)word_timing_info_objectAtIndex:(unint64_t)a3;
- (int)current_pkt_number;
- (int)error_code;
- (unint64_t)word_timing_info_count;
- (void)audio:(id)a3;
- (void)word_timing_info_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTPartialTextToSpeechStreamingResponse

- (FTPartialTextToSpeechStreamingResponse)initWithFlatbuffData:(id)a3 root:(const PartialTextToSpeechStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTPartialTextToSpeechStreamingResponse;
  v10 = [(FTPartialTextToSpeechStreamingResponse *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v18, v21))
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

- (void)audio:(id)a3
{
  root = self->_root;
  v5 = &root[-*root->var0];
  v6 = a3;
  v7 = *root[*v5[16].var0 + *root[*v5[16].var0].var0].var0;
  v8 = v6;
  (*(a3 + 2))();
}

- (NSArray)word_timing_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__FTPartialTextToSpeechStreamingResponse_word_timing_info__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTPartialTextToSpeechStreamingResponse *)self word_timing_info_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"word_timing_info"];
  }

  return v3;
}

- (id)word_timing_info_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:a3];
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
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
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

- (void)word_timing_info_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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
            v4[2](v4, v15, v12, &v18);
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

- (FTTextToSpeechFeature)feature
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"feature"];
  if (!v3)
  {
    v4 = [FTTextToSpeechFeature alloc];
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

    v3 = [(FTTextToSpeechFeature *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"feature"];
  }

  return v3;
}

- (Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = [(FTPartialTextToSpeechStreamingResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(FTPartialTextToSpeechStreamingResponse *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_284834138;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v39 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v11, v12);

  v38 = [(FTPartialTextToSpeechStreamingResponse *)self error_code];
  v13 = [(FTPartialTextToSpeechStreamingResponse *)self error_str];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_284834138;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v15, v16);

  v18 = [(FTPartialTextToSpeechStreamingResponse *)self stream_id];
  v19 = v18;
  if (!v18)
  {
    v18 = &stru_284834138;
  }

  v20 = [(__CFString *)v18 UTF8String];
  v21 = strlen(v20);
  v22 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v20, v21);

  v23 = [(FTPartialTextToSpeechStreamingResponse *)self current_pkt_number];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3812000000;
  v51 = __Block_byref_object_copy__15;
  v52 = __Block_byref_object_dispose__15;
  v53 = &unk_233042D43;
  v54 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __60__FTPartialTextToSpeechStreamingResponse_addObjectToBuffer___block_invoke;
  v47[3] = &unk_2789B8AB0;
  v47[4] = &v48;
  v47[5] = a3;
  [(FTPartialTextToSpeechStreamingResponse *)self audio:v47];
  memset(&v46, 0, sizeof(v46));
  v24 = [(FTPartialTextToSpeechStreamingResponse *)self word_timing_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v46, [v24 count]);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = [(FTPartialTextToSpeechStreamingResponse *)self word_timing_info];
  v26 = [v25 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v26)
  {
    v27 = *v43;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v41 = [*(*(&v42 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v46.__begin_, &v41);
      }

      v26 = [v25 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v26);
  }

  if (v46.__end_ == v46.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    begin = v46.__begin_;
  }

  v30 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v46.__end_ - v46.__begin_);
  v31 = [(FTPartialTextToSpeechStreamingResponse *)self feature];
  v32 = [v31 addObjectToBuffer:a3];

  *(a3 + 70) = 1;
  v33 = *(a3 + 8);
  v34 = *(a3 + 12);
  LODWORD(v31) = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v39);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v38, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v17);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v22);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v23, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 16, *(v49 + 12));
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 18, v30);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 20, v32);
  v35.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v33 - v34 + v31);
  if (v46.__begin_)
  {
    v46.__end_ = v46.__begin_;
    operator delete(v46.__begin_);
  }

  _Block_object_dispose(&v48, 8);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t __60__FTPartialTextToSpeechStreamingResponse_addObjectToBuffer___block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTPartialTextToSpeechStreamingResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__54__FTPartialTextToSpeechStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
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