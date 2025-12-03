@interface OPTTSTextToSpeechRequest
- (BOOL)enable_word_timing_info;
- (NSArray)context_info;
- (NSString)gender;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)text;
- (NSString)voice_name;
- (OPTTSTTSRequestFeatureFlags)feature_flags;
- (OPTTSTextToSpeechRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechRequest *)root verify:(BOOL)verify;
- (OPTTSTextToSpeechRequestContext)context;
- (OPTTSTextToSpeechRequestExperiment)experiment;
- (OPTTSTextToSpeechRequestMeta)meta_info;
- (Offset<siri::speech::schema_fb::TextToSpeechRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
@end

@implementation OPTTSTextToSpeechRequest

flatbuffers::DetachedBuffer *__57__OPTTSTextToSpeechRequest_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

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
  v2.var0 = [(OPTTSTextToSpeechRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__40__OPTTSTextToSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequest>)addObjectToBuffer:(void *)buffer
{
  v66 = *MEMORY[0x277D85DE8];
  speech_id = [(OPTTSTextToSpeechRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2881CBD18;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(OPTTSTextToSpeechRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2881CBD18;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v56 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(OPTTSTextToSpeechRequest *)self language];
  v15 = language;
  if (!language)
  {
    language = &stru_2881CBD18;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v17 = strlen(uTF8String3);
  v55 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v17);

  gender = [(OPTTSTextToSpeechRequest *)self gender];
  v19 = gender;
  if (!gender)
  {
    gender = &stru_2881CBD18;
  }

  uTF8String4 = [(__CFString *)gender UTF8String];
  v21 = strlen(uTF8String4);
  v54 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v21);

  text = [(OPTTSTextToSpeechRequest *)self text];
  v23 = text;
  if (!text)
  {
    text = &stru_2881CBD18;
  }

  uTF8String5 = [(__CFString *)text UTF8String];
  v25 = strlen(uTF8String5);
  v53 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v25);

  audio_type = [(OPTTSTextToSpeechRequest *)self audio_type];
  enable_word_timing_info = [(OPTTSTextToSpeechRequest *)self enable_word_timing_info];
  voice_name = [(OPTTSTextToSpeechRequest *)self voice_name];
  v27 = voice_name;
  if (!voice_name)
  {
    voice_name = &stru_2881CBD18;
  }

  uTF8String6 = [(__CFString *)voice_name UTF8String];
  v29 = strlen(uTF8String6);
  LODWORD(uTF8String6) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v29);

  v62 = 0;
  v63 = 0;
  v64 = 0;
  context_info = [(OPTTSTextToSpeechRequest *)self context_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v62, [context_info count]);

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  context_info2 = [(OPTTSTextToSpeechRequest *)self context_info];
  v50 = uTF8String6;
  v32 = [context_info2 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v32)
  {
    v33 = *v59;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(context_info2);
        }

        v57 = [*(*(&v58 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v62, &v57);
      }

      v32 = [context_info2 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v32);
  }

  v35 = v62;
  if (v63 == v62)
  {
    v36 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>> const&)::t;
  }

  else
  {
    v36 = v62;
  }

  v37 = flatbuffers::FlatBufferBuilder::CreateVector<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(buffer, v36, (v63 - v62) >> 2);
  preferred_voice_type = [(OPTTSTextToSpeechRequest *)self preferred_voice_type];
  meta_info = [(OPTTSTextToSpeechRequest *)self meta_info];
  v40 = [meta_info addObjectToBuffer:buffer];

  context = [(OPTTSTextToSpeechRequest *)self context];
  LODWORD(meta_info) = [context addObjectToBuffer:buffer];

  experiment = [(OPTTSTextToSpeechRequest *)self experiment];
  LODWORD(context) = [experiment addObjectToBuffer:buffer];

  feature_flags = [(OPTTSTextToSpeechRequest *)self feature_flags];
  v49 = [feature_flags addObjectToBuffer:buffer];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  LODWORD(feature_flags) = *(buffer + 8);
  v44 = *(buffer + 12);
  v48 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 6, v56);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 8, v55);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 10, v54);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 12, v53);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, audio_type);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 16, enable_word_timing_info);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 18, v50);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 20, v37);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 22, preferred_voice_type);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 24, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 26, meta_info);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 28, context);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 30, v49);
  v45.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, feature_flags - v44 + v48);
  if (v35)
  {
    operator delete(v35);
  }

  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

- (OPTTSTTSRequestFeatureFlags)feature_flags
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"feature_flags"];
  if (!v3)
  {
    v4 = [OPTTSTTSRequestFeatureFlags alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x1Fu && (v7 = *v6[30].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(OPTTSTTSRequestFeatureFlags *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"feature_flags"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestExperiment)experiment
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"experiment"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestExperiment alloc];
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

    v3 = [(OPTTSTextToSpeechRequestExperiment *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"experiment"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestContext)context
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestContext alloc];
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

    v3 = [(OPTTSTextToSpeechRequestContext *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestMeta alloc];
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

    v3 = [(OPTTSTextToSpeechRequestMeta *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meta_info"];
  }

  return v3;
}

- (int64_t)preferred_voice_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x17u && (v4 = *v3[22].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSArray)context_info
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
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
            v11 = [[OPTTSTextToSpeechRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"context_info"];
  }

  return array;
}

- (NSString)voice_name
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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

- (BOOL)enable_word_timing_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (int64_t)audio_type
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

- (NSString)text
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

- (NSString)gender
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

- (NSString)language
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

- (OPTTSTextToSpeechRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v58.receiver = self;
  v58.super_class = OPTTSTextToSpeechRequest;
  v10 = [(OPTTSTextToSpeechRequest *)&v58 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_89;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_90;
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
    goto LABEL_88;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_90;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v53 = bytes3;
  v54 = v18;
  v55 = xmmword_2728326B0;
  v56 = 0;
  v57 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_88;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v53, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v53, 4u))
  {
    goto LABEL_90;
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

  if (!flatbuffers::Verifier::VerifyString(&v53, v22) || !flatbuffers::Table::VerifyOffset(v19, &v53, 6u))
  {
    goto LABEL_90;
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

  if (!flatbuffers::Verifier::VerifyString(&v53, v25) || !flatbuffers::Table::VerifyOffset(v19, &v53, 8u))
  {
    goto LABEL_90;
  }

  v26 = (v19 - *v19);
  if (*v26 >= 9u && (v27 = v26[4]) != 0)
  {
    v28 = v19 + v27 + *(v19 + v27);
  }

  else
  {
    v28 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v53, v28) || !flatbuffers::Table::VerifyOffset(v19, &v53, 0xAu))
  {
    goto LABEL_90;
  }

  v29 = (v19 - *v19);
  if (*v29 >= 0xBu && (v30 = v29[5]) != 0)
  {
    v31 = v19 + v30 + *(v19 + v30);
  }

  else
  {
    v31 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v53, v31) || !flatbuffers::Table::VerifyOffset(v19, &v53, 0xCu))
  {
    goto LABEL_90;
  }

  v32 = (v19 - *v19);
  if (*v32 >= 0xDu && (v33 = v32[6]) != 0)
  {
    v34 = v19 + v33 + *(v19 + v33);
  }

  else
  {
    v34 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v53, v34))
  {
    goto LABEL_90;
  }

  v35 = (v19 - *v19);
  v36 = *v35;
  if (v36 >= 0xF && (v35[7] && (v54 < 5 || v54 - 4 < v19 + v35[7] - v53) || v36 >= 0x11 && v35[8] && (v54 < 2 || v54 - 1 < v19 + v35[8] - v53)))
  {
    goto LABEL_90;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v53, 0x12u))
  {
    goto LABEL_90;
  }

  v37 = v36 >= 0x13 && v35[9] ? v19 + v35[9] + *(v19 + v35[9]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v53, v37) || !flatbuffers::Table::VerifyOffset(v19, &v53, 0x14u))
  {
    goto LABEL_90;
  }

  v38 = *v19;
  if (*(v19 - v38) < 0x15u)
  {
    goto LABEL_66;
  }

  if (*(v19 - v38 + 20))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v53, v19 + *(v19 - v38 + 20) + *(v19 + *(v19 - v38 + 20)), 4uLL, 0))
    {
      v38 = *v19;
      if (*(v19 - v38) < 0x15u)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

LABEL_90:
    v51 = 0;
    goto LABEL_91;
  }

LABEL_64:
  v39 = *(v19 - v38 + 20);
  if (v39)
  {
    v40 = (v19 + v39 + *(v19 + v39));
    goto LABEL_67;
  }

LABEL_66:
  v40 = 0;
LABEL_67:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(&v53, v40))
  {
    goto LABEL_90;
  }

  v41 = (v19 - *v19);
  v42 = *v41;
  if (v42 >= 0x17 && v41[11] && (v54 < 5 || v54 - 4 < v19 + v41[11] - v53))
  {
    goto LABEL_90;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v53, 0x18u) || v42 >= 0x19 && v41[12] && !siri::speech::schema_fb::TextToSpeechRequestMeta::Verify((v19 + v41[12] + *(v19 + v41[12])), &v53))
  {
    goto LABEL_90;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v53, 0x1Au))
  {
    goto LABEL_90;
  }

  v43 = (v19 - *v19);
  if (*v43 >= 0x1Bu)
  {
    v44 = v43[13];
    if (v44)
    {
      if (!siri::speech::schema_fb::TextToSpeechRequestContext::Verify((v19 + v44 + *(v19 + v44)), &v53))
      {
        goto LABEL_90;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v53, 0x1Cu))
  {
    goto LABEL_90;
  }

  v45 = (v19 - *v19);
  if (*v45 >= 0x1Du)
  {
    v46 = v45[14];
    if (v46)
    {
      if (!siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((v19 + v46 + *(v19 + v46)), &v53))
      {
        goto LABEL_90;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v53, 0x1Eu))
  {
    goto LABEL_90;
  }

  v47 = (v19 - *v19);
  if (*v47 >= 0x1Fu)
  {
    v48 = v47[15];
    if (v48)
    {
      if (!siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((v19 + v48 + *(v19 + v48)), &v53))
      {
        goto LABEL_90;
      }
    }
  }

LABEL_88:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_89:
  v51 = v11;
LABEL_91:

  return v51;
}

@end