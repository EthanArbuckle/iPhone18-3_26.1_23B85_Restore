@interface QSSErrorBlamerRequest
- (NSArray)audio_packets;
- (NSArray)contextual_text;
- (NSString)left_context;
- (NSString)ref_transcript;
- (NSString)right_context;
- (Offset<siri::speech::schema_fb::ErrorBlamerRequest>)addObjectToBuffer:(void *)a3;
- (QSSErrorBlamerRequest)initWithFlatbuffData:(id)a3 root:(const ErrorBlamerRequest *)a4 verify:(BOOL)a5;
- (QSSStartSpeechRequest)start_speech_request;
- (QSSUserAcousticProfile)user_acoustic_profile;
- (QSSUserLanguageProfile)user_language_profile;
- (double)latitude;
- (double)longitude;
- (id)flatbuffData;
@end

@implementation QSSErrorBlamerRequest

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
  v2.var0 = [(QSSErrorBlamerRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__37__QSSErrorBlamerRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ErrorBlamerRequest>)addObjectToBuffer:(void *)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = [(QSSErrorBlamerRequest *)self start_speech_request];
  v6 = [v5 addObjectToBuffer:a3];

  memset(&v59, 0, sizeof(v59));
  v7 = [(QSSErrorBlamerRequest *)self contextual_text];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v59, [v7 count]);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = [(QSSErrorBlamerRequest *)self contextual_text];
  v9 = [v8 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v9)
  {
    v10 = *v56;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v55 + 1) + 8 * i) UTF8String];
        v13 = strlen(v12);
        String = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v59, &String);
      }

      v9 = [v8 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v9);
  }

  if (v59.__end_ == v59.__begin_)
  {
    begin = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    begin = v59.__begin_;
  }

  v48 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, begin, v59.__end_ - v59.__begin_);
  v15 = [(QSSErrorBlamerRequest *)self left_context];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v47 = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  v19 = [(QSSErrorBlamerRequest *)self right_context];
  v20 = v19;
  if (!v19)
  {
    v19 = &stru_2879AE8E0;
  }

  v21 = [(__CFString *)v19 UTF8String];
  v22 = strlen(v21);
  v46 = flatbuffers::FlatBufferBuilder::CreateString(a3, v21, v22);

  v23 = [(QSSErrorBlamerRequest *)self user_language_profile];
  v45 = [v23 addObjectToBuffer:a3];

  v24 = [(QSSErrorBlamerRequest *)self user_acoustic_profile];
  v44 = [v24 addObjectToBuffer:a3];

  [(QSSErrorBlamerRequest *)self latitude];
  v26 = v25;
  [(QSSErrorBlamerRequest *)self longitude];
  v28 = v27;
  v29 = [(QSSErrorBlamerRequest *)self audio_packets];
  v30 = [v29 count];
  if (v30)
  {
    if (!(v30 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v30);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(QSSErrorBlamerRequest *)self audio_packets];
  if ([obj countByEnumeratingWithState:&v50 objects:v60 count:16])
  {
    *v51;
    *v51;
    [**(&v50 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v31 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v32 = [(QSSErrorBlamerRequest *)self ref_transcript];
  v33 = v32;
  if (!v32)
  {
    v32 = &stru_2879AE8E0;
  }

  v34 = [(__CFString *)v32 UTF8String];
  v35 = strlen(v34);
  v36 = flatbuffers::FlatBufferBuilder::CreateString(a3, v34, v35);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v37 = *(a3 + 8);
  v38 = *(a3 + 12);
  v39 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, v6);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v48);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v47);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v46);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v45);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v44);
  flatbuffers::FlatBufferBuilder::AddElement<double>(a3, 16, v26);
  flatbuffers::FlatBufferBuilder::AddElement<double>(a3, 18, v28);
  if (v31)
  {
    v40 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v31);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 20, v40);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 22, v36);
  v41.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v37 - v38 + v39);
  if (v59.__begin_)
  {
    operator delete(v59.__begin_);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (NSString)ref_transcript
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 22].var0;
  if (*root[-v3 + 22].var0)
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

- (NSArray)audio_packets
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"audio_packets"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x15u)
    {
      v6 = *v5[20].var0;
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
            v11 = [[QSSAudioPacket alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"audio_packets"];
  }

  return v3;
}

- (double)longitude
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x13u)
  {
    v5 = *v3[18].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (double)latitude
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x11u)
  {
    v5 = *v3[16].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (QSSUserAcousticProfile)user_acoustic_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_acoustic_profile"];
  if (!v3)
  {
    v4 = [QSSUserAcousticProfile alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xFu && (v7 = *v6[14].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSUserAcousticProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_acoustic_profile"];
  }

  return v3;
}

- (QSSUserLanguageProfile)user_language_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_language_profile"];
  if (!v3)
  {
    v4 = [QSSUserLanguageProfile alloc];
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

    v3 = [(QSSUserLanguageProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_language_profile"];
  }

  return v3;
}

- (NSString)right_context
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

- (NSString)left_context
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 8].var0;
  if (*root[-v3 + 8].var0)
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

- (NSArray)contextual_text
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"contextual_text"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 7u)
    {
      v6 = *v5[6].var0;
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
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v10[*v10->var0 + 4] length:*v10[*v10->var0].var0 encoding:4];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"contextual_text"];
  }

  return v3;
}

- (QSSStartSpeechRequest)start_speech_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"start_speech_request"];
  if (!v3)
  {
    v4 = [QSSStartSpeechRequest alloc];
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

    v3 = [(QSSStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"start_speech_request"];
  }

  return v3;
}

- (QSSErrorBlamerRequest)initWithFlatbuffData:(id)a3 root:(const ErrorBlamerRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v55.receiver = self;
  v55.super_class = QSSErrorBlamerRequest;
  v10 = [(QSSErrorBlamerRequest *)&v55 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_76;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_77;
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
    goto LABEL_75;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_77;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v50 = v17;
  v51 = v18;
  v52 = xmmword_26914CD70;
  v53 = 0;
  v54 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_75;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v50, v11->_root->var0))
  {
    goto LABEL_77;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v50, 4u))
  {
    goto LABEL_77;
  }

  v20 = (v19 - *v19);
  if (*v20 >= 5u)
  {
    v21 = v20[2];
    if (v21)
    {
      if (!siri::speech::schema_fb::StartSpeechRequest::Verify((v19 + v21 + *(v19 + v21)), &v50))
      {
        goto LABEL_77;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v50, 6u))
  {
    goto LABEL_77;
  }

  v22 = *v19;
  if (*(v19 - v22) < 7u)
  {
    goto LABEL_25;
  }

  if (*(v19 - v22 + 6))
  {
    if (!flatbuffers::Verifier::VerifyVectorOrString(&v50, v19 + *(v19 - v22 + 6) + *(v19 + *(v19 - v22 + 6)), 4uLL, 0))
    {
      goto LABEL_77;
    }

    v22 = *v19;
    if (*(v19 - v22) < 7u)
    {
      goto LABEL_25;
    }
  }

  v23 = *(v19 - v22 + 6);
  if (!v23)
  {
LABEL_25:
    v24 = 0;
  }

  else
  {
    v24 = (v19 + v23 + *(v19 + v23));
  }

  if (!flatbuffers::Verifier::VerifyVectorOfStrings(&v50, v24) || !flatbuffers::Table::VerifyOffset(v19, &v50, 8u))
  {
    goto LABEL_77;
  }

  v25 = (v19 - *v19);
  if (*v25 >= 9u && (v26 = v25[4]) != 0)
  {
    v27 = v19 + v26 + *(v19 + v26);
  }

  else
  {
    v27 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v50, v27) || !flatbuffers::Table::VerifyOffset(v19, &v50, 0xAu))
  {
    goto LABEL_77;
  }

  v28 = (v19 - *v19);
  if (*v28 >= 0xBu && (v29 = v28[5]) != 0)
  {
    v30 = v19 + v29 + *(v19 + v29);
  }

  else
  {
    v30 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v50, v30))
  {
    goto LABEL_77;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v50, 0xCu))
  {
    goto LABEL_77;
  }

  v31 = (v19 - *v19);
  if (*v31 >= 0xDu)
  {
    v32 = v31[6];
    if (v32)
    {
      if (!siri::speech::schema_fb::UserLanguageProfile::Verify((v19 + v32 + *(v19 + v32)), &v50))
      {
        goto LABEL_77;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v50, 0xEu))
  {
    goto LABEL_77;
  }

  v33 = *v19;
  v34 = *(v19 - v33);
  if (v34 >= 0xF)
  {
    if (*(v19 - v33 + 14))
    {
      if (!siri::speech::schema_fb::UserAcousticProfile::Verify((v19 + *(v19 - v33 + 14) + *(v19 + *(v19 - v33 + 14))), &v50))
      {
        goto LABEL_77;
      }

      v33 = *v19;
      v35 = -v33;
      v34 = *(v19 - v33);
    }

    else
    {
      v35 = -v33;
    }

    if (v34 >= 0x11)
    {
      v36 = v19 + v35;
      if (*(v36 + 8))
      {
        if (v51 < 9 || v51 - 8 < v19 + *(v36 + 8) - v50)
        {
          goto LABEL_77;
        }
      }

      if (v34 >= 0x13 && *(v36 + 9) && (v51 < 9 || v51 - 8 < v19 + *(v36 + 9) - v50))
      {
        goto LABEL_77;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v50, 0x14u))
  {
    goto LABEL_77;
  }

  v37 = 0;
  v38 = (v19 - v33);
  if (*v38 < 0x15u)
  {
    goto LABEL_68;
  }

  v39 = v38[10];
  if (!v39)
  {
    v41 = -v33;
    goto LABEL_65;
  }

  if (!flatbuffers::Verifier::VerifyVectorOrString(&v50, v19 + v39 + *(v19 + v39), 4uLL, 0))
  {
LABEL_77:
    v48 = 0;
    goto LABEL_78;
  }

  v40 = *v19;
  if (*(v19 - v40) < 0x15u)
  {
    goto LABEL_67;
  }

  v41 = -v40;
LABEL_65:
  v42 = *(v19 + v41 + 20);
  if (v42)
  {
    v37 = (v19 + v42 + *(v19 + v42));
    goto LABEL_68;
  }

LABEL_67:
  v37 = 0;
LABEL_68:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSNeuralPhonemeSequence>(&v50, v37) || !flatbuffers::Table::VerifyOffset(v19, &v50, 0x16u))
  {
    goto LABEL_77;
  }

  v43 = (v19 - *v19);
  if (*v43 >= 0x17u && (v44 = v43[11]) != 0)
  {
    v45 = v19 + v44 + *(v19 + v44);
  }

  else
  {
    v45 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v50, v45))
  {
    goto LABEL_77;
  }

LABEL_75:
  v46 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v46;

LABEL_76:
  v48 = v11;
LABEL_78:

  return v48;
}

@end