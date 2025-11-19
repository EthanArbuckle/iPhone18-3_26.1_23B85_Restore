@interface QSSStartSpeechRequest
- (BOOL)disable_auto_punctuation;
- (BOOL)enable_endpoint_candidate;
- (BOOL)enable_hybrid_endpoint;
- (BOOL)enable_server_side_endpoint;
- (BOOL)enable_utterance_detection;
- (BOOL)is_far_field;
- (BOOL)keyboard_dictation;
- (BOOL)store_audio;
- (BOOL)stream_results;
- (BOOL)stream_unstable_results;
- (BOOL)tandem_mode;
- (NSString)application_name;
- (NSString)client_endpointer_model_version;
- (NSString)device_os;
- (NSString)device_type;
- (NSString)experiment_id;
- (NSString)fork_id;
- (NSString)input_origin;
- (NSString)keyboard_identifier;
- (NSString)language;
- (NSString)metadata;
- (NSString)mic_type;
- (NSString)request_locale;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)task_name;
- (NSString)udm_host;
- (Offset<siri::speech::schema_fb::StartSpeechRequest>)addObjectToBuffer:(void *)a3;
- (QSSStartSpeechRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechRequest *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)start_audio_bookmark;
- (int)udm_port;
- (int64_t)codec;
- (int64_t)end_point_mode;
- (int64_t)speech_request_source;
- (unint64_t)start_endpointing_at;
- (unint64_t)start_recognition_at;
- (unsigned)initial_recognition_candidate_id;
@end

@implementation QSSStartSpeechRequest

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
  v2.var0 = [(QSSStartSpeechRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__37__QSSStartSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StartSpeechRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSStartSpeechRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSStartSpeechRequest *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(QSSStartSpeechRequest *)self language];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  v20 = [(QSSStartSpeechRequest *)self task_name];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_2879AE8E0;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  v109 = flatbuffers::FlatBufferBuilder::CreateString(a3, v22, v23);

  v108 = [(QSSStartSpeechRequest *)self codec];
  v24 = [(QSSStartSpeechRequest *)self stream_results];
  v25 = [(QSSStartSpeechRequest *)self enable_server_side_endpoint];
  v26 = [(QSSStartSpeechRequest *)self device_type];
  v27 = v26;
  if (!v26)
  {
    v26 = &stru_2879AE8E0;
  }

  v28 = [(__CFString *)v26 UTF8String];
  v29 = strlen(v28);
  v107 = flatbuffers::FlatBufferBuilder::CreateString(a3, v28, v29);

  v30 = [(QSSStartSpeechRequest *)self device_os];
  v31 = v30;
  if (!v30)
  {
    v30 = &stru_2879AE8E0;
  }

  v32 = [(__CFString *)v30 UTF8String];
  v33 = strlen(v32);
  v106 = flatbuffers::FlatBufferBuilder::CreateString(a3, v32, v33);

  v34 = [(QSSStartSpeechRequest *)self mic_type];
  v35 = v34;
  if (!v34)
  {
    v34 = &stru_2879AE8E0;
  }

  v36 = [(__CFString *)v34 UTF8String];
  v37 = strlen(v36);
  v105 = flatbuffers::FlatBufferBuilder::CreateString(a3, v36, v37);

  v38 = [(QSSStartSpeechRequest *)self udm_host];
  v39 = v38;
  if (!v38)
  {
    v38 = &stru_2879AE8E0;
  }

  v40 = [(__CFString *)v38 UTF8String];
  v41 = strlen(v40);
  v104 = flatbuffers::FlatBufferBuilder::CreateString(a3, v40, v41);

  v100 = [(QSSStartSpeechRequest *)self udm_port];
  v101 = [(QSSStartSpeechRequest *)self tandem_mode];
  v102 = [(QSSStartSpeechRequest *)self store_audio];
  v103 = [(QSSStartSpeechRequest *)self stream_unstable_results];
  v42 = [(QSSStartSpeechRequest *)self request_locale];
  v43 = v42;
  if (!v42)
  {
    v42 = &stru_2879AE8E0;
  }

  v44 = [(__CFString *)v42 UTF8String];
  v45 = strlen(v44);
  v99 = flatbuffers::FlatBufferBuilder::CreateString(a3, v44, v45);

  v91 = [(QSSStartSpeechRequest *)self end_point_mode];
  v92 = [(QSSStartSpeechRequest *)self start_audio_bookmark];
  v93 = [(QSSStartSpeechRequest *)self is_far_field];
  v94 = [(QSSStartSpeechRequest *)self enable_utterance_detection];
  v95 = [(QSSStartSpeechRequest *)self enable_endpoint_candidate];
  v96 = [(QSSStartSpeechRequest *)self start_recognition_at];
  v97 = [(QSSStartSpeechRequest *)self start_endpointing_at];
  v98 = [(QSSStartSpeechRequest *)self enable_hybrid_endpoint];
  v46 = [(QSSStartSpeechRequest *)self client_endpointer_model_version];
  v47 = v46;
  if (!v46)
  {
    v46 = &stru_2879AE8E0;
  }

  v48 = [(__CFString *)v46 UTF8String];
  v49 = strlen(v48);
  v90 = flatbuffers::FlatBufferBuilder::CreateString(a3, v48, v49);

  v50 = [(QSSStartSpeechRequest *)self keyboard_identifier];
  v51 = v50;
  if (!v50)
  {
    v50 = &stru_2879AE8E0;
  }

  v52 = [(__CFString *)v50 UTF8String];
  v53 = strlen(v52);
  v89 = flatbuffers::FlatBufferBuilder::CreateString(a3, v52, v53);
  v88 = v24;

  v54 = [(QSSStartSpeechRequest *)self input_origin];
  v55 = v54;
  if (!v54)
  {
    v54 = &stru_2879AE8E0;
  }

  v56 = [(__CFString *)v54 UTF8String];
  v57 = strlen(v56);
  v85 = flatbuffers::FlatBufferBuilder::CreateString(a3, v56, v57);

  v84 = [(QSSStartSpeechRequest *)self initial_recognition_candidate_id];
  v86 = [(QSSStartSpeechRequest *)self disable_auto_punctuation];
  v87 = [(QSSStartSpeechRequest *)self keyboard_dictation];
  v58 = [(QSSStartSpeechRequest *)self experiment_id];
  v59 = v58;
  if (!v58)
  {
    v58 = &stru_2879AE8E0;
  }

  v60 = [(__CFString *)v58 UTF8String];
  v61 = strlen(v60);
  v83 = flatbuffers::FlatBufferBuilder::CreateString(a3, v60, v61);
  v62 = v25;
  v63 = v19;
  v64 = v14;

  v82 = [(QSSStartSpeechRequest *)self speech_request_source];
  v65 = [(QSSStartSpeechRequest *)self fork_id];
  v66 = v65;
  if (!v65)
  {
    v65 = &stru_2879AE8E0;
  }

  v67 = [(__CFString *)v65 UTF8String];
  v68 = strlen(v67);
  v69 = flatbuffers::FlatBufferBuilder::CreateString(a3, v67, v68);

  v70 = [(QSSStartSpeechRequest *)self application_name];
  v71 = v70;
  if (!v70)
  {
    v70 = &stru_2879AE8E0;
  }

  v72 = [(__CFString *)v70 UTF8String];
  v73 = strlen(v72);
  v74 = flatbuffers::FlatBufferBuilder::CreateString(a3, v72, v73);

  v75 = [(QSSStartSpeechRequest *)self metadata];
  v76 = v75;
  if (!v75)
  {
    v75 = &stru_2879AE8E0;
  }

  v77 = [(__CFString *)v75 UTF8String];
  v78 = strlen(v77);
  LODWORD(v77) = flatbuffers::FlatBufferBuilder::CreateString(a3, v77, v78);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v79 = *(a3 + 10);
  v80 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v64);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v63);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v109);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v108);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 14, v88);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 16, v62);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v107);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 20, v106);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 22, v105);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 24, v104);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 26, v100);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 28, v101);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 30, v102);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 32, v103);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 34, v99);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 36, v91);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 38, v92);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 40, v93);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 42, v94);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 44, v95);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a3, 46, v96);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a3, 48, v97);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 50, v98);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 52, v90);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 54, v89);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 56, v85);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 58, v84);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 60, v86);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 62, v87);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 64, v83);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 66, v82);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 68, v69);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 70, v74);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 72, v77);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v80 + v79);
}

- (NSString)metadata
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 72].var0;
  if (*root[-v3 + 72].var0)
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

- (NSString)application_name
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 70].var0;
  if (*root[-v3 + 70].var0)
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

- (NSString)fork_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 68].var0;
  if (*root[-v3 + 68].var0)
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

- (int64_t)speech_request_source
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x43u && (v4 = *v3[66].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)experiment_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 64].var0;
  if (*root[-v3 + 64].var0)
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

- (BOOL)keyboard_dictation
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x3Fu && (v4 = *v3[62].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)disable_auto_punctuation
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x3Du && (v4 = *v3[60].var0) != 0 && root[v4].var0[0] != 0;
}

- (unsigned)initial_recognition_candidate_id
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x3Bu && (v4 = *v3[58].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)input_origin
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 56].var0;
  if (*root[-v3 + 56].var0)
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

- (NSString)keyboard_identifier
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 54].var0;
  if (*root[-v3 + 54].var0)
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

- (NSString)client_endpointer_model_version
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 52].var0;
  if (*root[-v3 + 52].var0)
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

- (BOOL)enable_hybrid_endpoint
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x33u && (v4 = *v3[50].var0) != 0 && root[v4].var0[0] != 0;
}

- (unint64_t)start_endpointing_at
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x31u && (v4 = *v3[48].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)start_recognition_at
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x2Fu && (v4 = *v3[46].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)enable_endpoint_candidate
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x2Du && (v4 = *v3[44].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)enable_utterance_detection
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x2Bu && (v4 = *v3[42].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)is_far_field
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x29u && (v4 = *v3[40].var0) != 0 && root[v4].var0[0] != 0;
}

- (int)start_audio_bookmark
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x27u && (v4 = *v3[38].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (int64_t)end_point_mode
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x25u && (v4 = *v3[36].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)request_locale
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 34].var0;
  if (*root[-v3 + 34].var0)
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

- (BOOL)stream_unstable_results
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x21u && (v4 = *v3[32].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)store_audio
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x1Fu && (v4 = *v3[30].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)tandem_mode
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x1Du && (v4 = *v3[28].var0) != 0 && root[v4].var0[0] != 0;
}

- (int)udm_port
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x1Bu && (v4 = *v3[26].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)udm_host
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 24].var0;
  if (*root[-v3 + 24].var0)
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

- (NSString)mic_type
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

- (NSString)device_os
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 20].var0;
  if (*root[-v3 + 20].var0)
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

- (NSString)device_type
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

- (BOOL)enable_server_side_endpoint
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)stream_results
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (int64_t)codec
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

- (NSString)task_name
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

- (QSSStartSpeechRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSStartSpeechRequest;
  v10 = [(QSSStartSpeechRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::StartSpeechRequest::Verify(v19, &v24))
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