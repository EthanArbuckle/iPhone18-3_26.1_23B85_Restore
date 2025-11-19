@interface OPTTSBeginTextToSpeechStreamingResponse
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)stream_id;
- (OPTTSAudioDescription)decoder_description;
- (OPTTSAudioDescription)playback_description;
- (OPTTSBeginTextToSpeechStreamingResponse)initWithFlatbuffData:(id)a3 root:(const BeginTextToSpeechStreamingResponse *)a4 verify:(BOOL)a5;
- (OPTTSTextToSpeechMeta)meta_info;
- (Offset<siri::speech::schema_fb::BeginTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)a3;
- (float)streaming_playback_buffer_size_in_seconds;
- (id)flatbuffData;
- (int)error_code;
- (int64_t)audio_type;
@end

@implementation OPTTSBeginTextToSpeechStreamingResponse

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1B1C416F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSBeginTextToSpeechStreamingResponse *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__55__OPTTSBeginTextToSpeechStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::BeginTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(OPTTSBeginTextToSpeechStreamingResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_1F28C4E90;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(OPTTSBeginTextToSpeechStreamingResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_1F28C4E90;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(OPTTSBeginTextToSpeechStreamingResponse *)self error_code];
  v16 = [(OPTTSBeginTextToSpeechStreamingResponse *)self error_str];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_1F28C4E90;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  v20 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v18, v19);

  v21 = [(OPTTSBeginTextToSpeechStreamingResponse *)self stream_id];
  v22 = v21;
  if (!v21)
  {
    v21 = &stru_1F28C4E90;
  }

  v23 = [(__CFString *)v21 UTF8String];
  v24 = strlen(v23);
  v25 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v23, v24);

  LODWORD(v23) = [(OPTTSBeginTextToSpeechStreamingResponse *)self audio_type];
  v26 = [(OPTTSBeginTextToSpeechStreamingResponse *)self decoder_description];
  v27 = [v26 addObjectToBuffer:a3];

  v28 = [(OPTTSBeginTextToSpeechStreamingResponse *)self playback_description];
  v40 = [v28 addObjectToBuffer:a3];
  v38 = v27;
  v39 = v23;
  LODWORD(v23) = v25;

  v29 = [(OPTTSBeginTextToSpeechStreamingResponse *)self meta_info];
  v30 = [v29 addObjectToBuffer:a3];

  [(OPTTSBeginTextToSpeechStreamingResponse *)self streaming_playback_buffer_size_in_seconds];
  v32 = v31;
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v33 = *(a3 + 5);
  v34 = *(a3 + 6);
  v35 = *(a3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 10, v20);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 12, v23);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v39);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 16, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 18, v40);
  if (v30)
  {
    v36 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a3, v30);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 20, v36);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 22, v32);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v35 - v34 + v33);
}

- (float)streaming_playback_buffer_size_in_seconds
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0x17u)
  {
    v5 = *v3[22].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

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
    if (*v6->var0 >= 0x15u && (v7 = *v6[20].var0) != 0)
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

- (OPTTSAudioDescription)playback_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"playback_description"];
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
    if (*v6->var0 >= 0x11u && (v7 = *v6[16].var0) != 0)
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (OPTTSBeginTextToSpeechStreamingResponse)initWithFlatbuffData:(id)a3 root:(const BeginTextToSpeechStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = OPTTSBeginTextToSpeechStreamingResponse;
  v10 = [(OPTTSBeginTextToSpeechStreamingResponse *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_15;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_1B1C41700;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(v18, v21))
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
LABEL_14:
    v19 = v10;
  }

  return v19;
}

@end