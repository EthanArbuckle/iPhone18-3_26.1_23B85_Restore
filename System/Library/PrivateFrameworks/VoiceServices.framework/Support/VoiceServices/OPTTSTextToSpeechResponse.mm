@interface OPTTSTextToSpeechResponse
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (OPTTSAudioDescription)decoder_description;
- (OPTTSAudioDescription)playback_description;
- (OPTTSTextToSpeechMeta)meta_info;
- (OPTTSTextToSpeechResponse)initWithFlatbuffData:(id)a3 root:(const TextToSpeechResponse *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int)error_code;
- (int)sample_rate;
- (int64_t)audio_type;
- (void)audio:(id)a3;
@end

@implementation OPTTSTextToSpeechResponse

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
  v2.var0 = [(OPTTSTextToSpeechResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__41__OPTTSTextToSpeechResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = [(OPTTSTextToSpeechResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2881CBD18;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(OPTTSTextToSpeechResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2881CBD18;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(OPTTSTextToSpeechResponse *)self error_code];
  v16 = [(OPTTSTextToSpeechResponse *)self error_str];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_2881CBD18;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  v41 = flatbuffers::FlatBufferBuilder::CreateString(a3, v18, v19);

  v40 = [(OPTTSTextToSpeechResponse *)self audio_type];
  v20 = [(OPTTSTextToSpeechResponse *)self sample_rate];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3812000000;
  v54 = __Block_byref_object_copy__1271;
  v55 = __Block_byref_object_dispose__1272;
  v56 = &unk_27283C3F7;
  v57 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __47__OPTTSTextToSpeechResponse_addObjectToBuffer___block_invoke;
  v50[3] = &unk_279E4B750;
  v50[4] = &v51;
  v50[5] = a3;
  [(OPTTSTextToSpeechResponse *)self audio:v50];
  v21 = [(OPTTSTextToSpeechResponse *)self decoder_description];
  v39 = [v21 addObjectToBuffer:a3];

  v22 = [(OPTTSTextToSpeechResponse *)self playback_description];
  v38 = [v22 addObjectToBuffer:a3];

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v23 = [(OPTTSTextToSpeechResponse *)self word_timing_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v47, [v23 count]);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v24 = [(OPTTSTextToSpeechResponse *)self word_timing_info];
  v25 = [v24 countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v25)
  {
    v26 = *v44;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v42 = [*(*(&v43 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v47, &v42);
      }

      v25 = [v24 countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v25);
  }

  v28 = v47;
  if (v48 == v47)
  {
    v29 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    v29 = v47;
  }

  v30 = flatbuffers::FlatBufferBuilder::CreateVector<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a3, v29, (v48 - v47) >> 2);
  v31 = [(OPTTSTextToSpeechResponse *)self meta_info];
  v37 = [v31 addObjectToBuffer:a3];

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v32 = *(a3 + 8);
  v33 = *(a3 + 12);
  LODWORD(v31) = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 6, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v15);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 10, v41);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v20);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, *(v52 + 12));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 18, v39);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 20, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 22, v30);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 24, v37);
  v34.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v32 - v33 + v31);
  if (v28)
  {
    operator delete(v28);
  }

  _Block_object_dispose(&v51, 8);
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t __47__OPTTSTextToSpeechResponse_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (OPTTSTextToSpeechMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechMeta alloc];
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

    v3 = [(OPTTSTextToSpeechMeta *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (OPTTSAudioDescription)playback_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"playback_description"];
  if (!v3)
  {
    v4 = [OPTTSAudioDescription alloc];
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

    v3 = [(OPTTSAudioDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"playback_description"];
  }

  return v3;
}

- (OPTTSAudioDescription)decoder_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"decoder_description"];
  if (!v3)
  {
    v4 = [OPTTSAudioDescription alloc];
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

    v3 = [(OPTTSAudioDescription *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
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

- (OPTTSTextToSpeechResponse)initWithFlatbuffData:(id)a3 root:(const TextToSpeechResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v53.receiver = self;
  v53.super_class = OPTTSTextToSpeechResponse;
  v10 = [(OPTTSTextToSpeechResponse *)&v53 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_78;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_79;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v12 = [(NSData *)v10->_data bytes];
    a4 = v12 + *v12;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_77;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_79;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v48 = v17;
  v49 = v18;
  v50 = xmmword_2728326B0;
  v51 = 0;
  v52 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_77;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v48, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v48, 4u))
  {
    goto LABEL_79;
  }

  v20 = (v19 - *v19);
  if (*v20 >= 5u && (v21 = v20[2]) != 0)
  {
    v22 = v19 + v21 + *(v19 + v21);
  }

  else
  {
    v22 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v48, v22) || !flatbuffers::Table::VerifyOffset(v19, &v48, 6u))
  {
    goto LABEL_79;
  }

  v23 = (v19 - *v19);
  if (*v23 >= 7u && (v24 = v23[3]) != 0)
  {
    v25 = v19 + v24 + *(v19 + v24);
  }

  else
  {
    v25 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v48, v25))
  {
    goto LABEL_79;
  }

  v26 = (v19 - *v19);
  v27 = *v26;
  if (v27 >= 9 && v26[4] && (v49 < 5 || v49 - 4 < v19 + v26[4] - v48))
  {
    goto LABEL_79;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0xAu))
  {
    goto LABEL_79;
  }

  v28 = v27 >= 0xB && v26[5] ? v19 + v26[5] + *(v19 + v26[5]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v48, v28))
  {
    goto LABEL_79;
  }

  v29 = (v19 - *v19);
  v30 = *v29;
  if (v30 >= 0xD && (v29[6] && (v49 < 5 || v49 - 4 < v19 + v29[6] - v48) || v30 >= 0xF && v29[7] && (v49 < 5 || v49 - 4 < v19 + v29[7] - v48)))
  {
    goto LABEL_79;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x10u))
  {
    goto LABEL_79;
  }

  if (v30 >= 0x11 && v29[8])
  {
    v31 = (v19 + v29[8] + *(v19 + v29[8]));
    v32 = v31 - v48;
    if ((v31 - v48) & 3) != 0 && (v52)
    {
      goto LABEL_79;
    }

    if (v49 < 5)
    {
      goto LABEL_79;
    }

    if (v49 - 4 < v32)
    {
      goto LABEL_79;
    }

    v33 = *v31;
    if (v33 > 0x7FFFFFFE)
    {
      goto LABEL_79;
    }

    v34 = v33 + 4;
    v35 = v49 >= v34;
    v36 = v49 - v34;
    if (v36 == 0 || !v35 || v36 < v32)
    {
      goto LABEL_79;
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x12u) || v30 >= 0x13 && v29[9] && !siri::speech::schema_fb::AudioDescription::Verify((v19 + v29[9] + *(v19 + v29[9])), &v48))
  {
    goto LABEL_79;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x14u))
  {
    goto LABEL_79;
  }

  v37 = (v19 - *v19);
  if (*v37 >= 0x15u)
  {
    v38 = v37[10];
    if (v38)
    {
      if (!siri::speech::schema_fb::AudioDescription::Verify((v19 + v38 + *(v19 + v38)), &v48))
      {
        goto LABEL_79;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x16u))
  {
    goto LABEL_79;
  }

  v39 = *v19;
  if (*(v19 - v39) < 0x17u)
  {
LABEL_71:
    v41 = 0;
    goto LABEL_72;
  }

  if (!*(v19 - v39 + 22))
  {
    goto LABEL_68;
  }

  if (!flatbuffers::Verifier::VerifyVectorOrString(&v48, v19 + *(v19 - v39 + 22) + *(v19 + *(v19 - v39 + 22)), 4uLL, 0))
  {
LABEL_79:
    v46 = 0;
    goto LABEL_80;
  }

  v39 = *v19;
  if (*(v19 - v39) < 0x17u)
  {
    goto LABEL_71;
  }

LABEL_68:
  v40 = *(v19 - v39 + 22);
  if (!v40)
  {
    goto LABEL_71;
  }

  v41 = (v19 + v40 + *(v19 + v40));
LABEL_72:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(&v48, v41))
  {
    goto LABEL_79;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x18u))
  {
    goto LABEL_79;
  }

  v42 = (v19 - *v19);
  if (*v42 >= 0x19u)
  {
    v43 = v42[12];
    if (v43)
    {
      if (!siri::speech::schema_fb::TextToSpeechMeta::Verify((v19 + v43 + *(v19 + v43)), &v48))
      {
        goto LABEL_79;
      }
    }
  }

LABEL_77:
  v44 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v44;

LABEL_78:
  v46 = v11;
LABEL_80:

  return v46;
}

@end