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
- (Offset<siri::speech::schema_fb::StartSpeechRequest>)addObjectToBuffer:(void *)buffer;
- (QSSStartSpeechRequest)initWithFlatbuffData:(id)data root:(const StartSpeechRequest *)root verify:(BOOL)verify;
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

- (Offset<siri::speech::schema_fb::StartSpeechRequest>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(QSSStartSpeechRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSStartSpeechRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(QSSStartSpeechRequest *)self language];
  v16 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v18 = strlen(uTF8String3);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  task_name = [(QSSStartSpeechRequest *)self task_name];
  v21 = task_name;
  if (!task_name)
  {
    task_name = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)task_name UTF8String];
  v23 = strlen(uTF8String4);
  v109 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  codec = [(QSSStartSpeechRequest *)self codec];
  stream_results = [(QSSStartSpeechRequest *)self stream_results];
  enable_server_side_endpoint = [(QSSStartSpeechRequest *)self enable_server_side_endpoint];
  device_type = [(QSSStartSpeechRequest *)self device_type];
  v27 = device_type;
  if (!device_type)
  {
    device_type = &stru_2879AE8E0;
  }

  uTF8String5 = [(__CFString *)device_type UTF8String];
  v29 = strlen(uTF8String5);
  v107 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v29);

  device_os = [(QSSStartSpeechRequest *)self device_os];
  v31 = device_os;
  if (!device_os)
  {
    device_os = &stru_2879AE8E0;
  }

  uTF8String6 = [(__CFString *)device_os UTF8String];
  v33 = strlen(uTF8String6);
  v106 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v33);

  mic_type = [(QSSStartSpeechRequest *)self mic_type];
  v35 = mic_type;
  if (!mic_type)
  {
    mic_type = &stru_2879AE8E0;
  }

  uTF8String7 = [(__CFString *)mic_type UTF8String];
  v37 = strlen(uTF8String7);
  v105 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String7, v37);

  udm_host = [(QSSStartSpeechRequest *)self udm_host];
  v39 = udm_host;
  if (!udm_host)
  {
    udm_host = &stru_2879AE8E0;
  }

  uTF8String8 = [(__CFString *)udm_host UTF8String];
  v41 = strlen(uTF8String8);
  v104 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String8, v41);

  udm_port = [(QSSStartSpeechRequest *)self udm_port];
  tandem_mode = [(QSSStartSpeechRequest *)self tandem_mode];
  store_audio = [(QSSStartSpeechRequest *)self store_audio];
  stream_unstable_results = [(QSSStartSpeechRequest *)self stream_unstable_results];
  request_locale = [(QSSStartSpeechRequest *)self request_locale];
  v43 = request_locale;
  if (!request_locale)
  {
    request_locale = &stru_2879AE8E0;
  }

  uTF8String9 = [(__CFString *)request_locale UTF8String];
  v45 = strlen(uTF8String9);
  v99 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String9, v45);

  end_point_mode = [(QSSStartSpeechRequest *)self end_point_mode];
  start_audio_bookmark = [(QSSStartSpeechRequest *)self start_audio_bookmark];
  is_far_field = [(QSSStartSpeechRequest *)self is_far_field];
  enable_utterance_detection = [(QSSStartSpeechRequest *)self enable_utterance_detection];
  enable_endpoint_candidate = [(QSSStartSpeechRequest *)self enable_endpoint_candidate];
  start_recognition_at = [(QSSStartSpeechRequest *)self start_recognition_at];
  start_endpointing_at = [(QSSStartSpeechRequest *)self start_endpointing_at];
  enable_hybrid_endpoint = [(QSSStartSpeechRequest *)self enable_hybrid_endpoint];
  client_endpointer_model_version = [(QSSStartSpeechRequest *)self client_endpointer_model_version];
  v47 = client_endpointer_model_version;
  if (!client_endpointer_model_version)
  {
    client_endpointer_model_version = &stru_2879AE8E0;
  }

  uTF8String10 = [(__CFString *)client_endpointer_model_version UTF8String];
  v49 = strlen(uTF8String10);
  v90 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String10, v49);

  keyboard_identifier = [(QSSStartSpeechRequest *)self keyboard_identifier];
  v51 = keyboard_identifier;
  if (!keyboard_identifier)
  {
    keyboard_identifier = &stru_2879AE8E0;
  }

  uTF8String11 = [(__CFString *)keyboard_identifier UTF8String];
  v53 = strlen(uTF8String11);
  v89 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String11, v53);
  v88 = stream_results;

  input_origin = [(QSSStartSpeechRequest *)self input_origin];
  v55 = input_origin;
  if (!input_origin)
  {
    input_origin = &stru_2879AE8E0;
  }

  uTF8String12 = [(__CFString *)input_origin UTF8String];
  v57 = strlen(uTF8String12);
  v85 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String12, v57);

  initial_recognition_candidate_id = [(QSSStartSpeechRequest *)self initial_recognition_candidate_id];
  disable_auto_punctuation = [(QSSStartSpeechRequest *)self disable_auto_punctuation];
  keyboard_dictation = [(QSSStartSpeechRequest *)self keyboard_dictation];
  experiment_id = [(QSSStartSpeechRequest *)self experiment_id];
  v59 = experiment_id;
  if (!experiment_id)
  {
    experiment_id = &stru_2879AE8E0;
  }

  uTF8String13 = [(__CFString *)experiment_id UTF8String];
  v61 = strlen(uTF8String13);
  v83 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String13, v61);
  v62 = enable_server_side_endpoint;
  v63 = v19;
  v64 = v14;

  speech_request_source = [(QSSStartSpeechRequest *)self speech_request_source];
  fork_id = [(QSSStartSpeechRequest *)self fork_id];
  v66 = fork_id;
  if (!fork_id)
  {
    fork_id = &stru_2879AE8E0;
  }

  uTF8String14 = [(__CFString *)fork_id UTF8String];
  v68 = strlen(uTF8String14);
  v69 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String14, v68);

  application_name = [(QSSStartSpeechRequest *)self application_name];
  v71 = application_name;
  if (!application_name)
  {
    application_name = &stru_2879AE8E0;
  }

  uTF8String15 = [(__CFString *)application_name UTF8String];
  v73 = strlen(uTF8String15);
  v74 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String15, v73);

  metadata = [(QSSStartSpeechRequest *)self metadata];
  v76 = metadata;
  if (!metadata)
  {
    metadata = &stru_2879AE8E0;
  }

  uTF8String16 = [(__CFString *)metadata UTF8String];
  v78 = strlen(uTF8String16);
  LODWORD(uTF8String16) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String16, v78);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v79 = *(buffer + 10);
  v80 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v64);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v63);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v109);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, codec);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 14, v88);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 16, v62);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, v107);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 20, v106);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 22, v105);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 24, v104);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 26, udm_port);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 28, tandem_mode);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 30, store_audio);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 32, stream_unstable_results);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 34, v99);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 36, end_point_mode);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 38, start_audio_bookmark);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 40, is_far_field);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 42, enable_utterance_detection);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 44, enable_endpoint_candidate);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(buffer, 46, start_recognition_at);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(buffer, 48, start_endpointing_at);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 50, enable_hybrid_endpoint);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 52, v90);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 54, v89);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 56, v85);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 58, initial_recognition_candidate_id);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 60, disable_auto_punctuation);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 62, keyboard_dictation);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 64, v83);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 66, speech_request_source);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 68, v69);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 70, v74);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 72, uTF8String16);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v80 + v79);
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

- (QSSStartSpeechRequest)initWithFlatbuffData:(id)data root:(const StartSpeechRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSStartSpeechRequest;
  v10 = [(QSSStartSpeechRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::StartSpeechRequest::Verify(v19, &v24))
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