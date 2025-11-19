@interface OPTTSAudioDescription
- (AudioStreamBasicDescription)audioStreamBasicDescription;
- (OPTTSAudioDescription)initWithFlatbuffData:(id)a3 root:(const AudioDescription *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::AudioDescription>)addObjectToBuffer:(void *)a3;
- (double)sample_rate;
- (id)flatbuffData;
- (unsigned)bits_per_channel;
- (unsigned)bytes_per_frame;
- (unsigned)bytes_per_packet;
- (unsigned)channels_per_frame;
- (unsigned)format_flags;
- (unsigned)format_id;
- (unsigned)frames_per_packet;
- (unsigned)reserved;
@end

@implementation OPTTSAudioDescription

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
  v2.var0 = [(OPTTSAudioDescription *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__37__OPTTSAudioDescription_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::AudioDescription>)addObjectToBuffer:(void *)a3
{
  [(OPTTSAudioDescription *)self sample_rate];
  v6 = v5;
  v7 = [(OPTTSAudioDescription *)self format_id];
  v8 = [(OPTTSAudioDescription *)self format_flags];
  v9 = [(OPTTSAudioDescription *)self bytes_per_packet];
  v10 = [(OPTTSAudioDescription *)self frames_per_packet];
  v11 = [(OPTTSAudioDescription *)self bytes_per_frame];
  v31 = [(OPTTSAudioDescription *)self channels_per_frame];
  v30 = [(OPTTSAudioDescription *)self bits_per_channel];
  v12 = [(OPTTSAudioDescription *)self reserved];
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v14 = *(a3 + 5);
  v13 = *(a3 + 6);
  v15 = *(a3 + 4);
  if (v6 != 0.0 || *(a3 + 80) == 1)
  {
    v29 = *(a3 + 6);
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a3, 8uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(a3, 8uLL);
    v16 = *(a3 + 6);
    *(v16 - 8) = v6;
    v16 -= 8;
    *(a3 + 6) = v16;
    v17 = v14;
    v18 = v12;
    v19 = v11;
    v20 = v10;
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = (*(a3 + 8) - v16 + *(a3 + 10));
    apple::aiml::flatbuffers2::vector_downward::ensure_space(a3, 8uLL);
    v25 = v24 | 0x400000000;
    v7 = v23;
    v8 = v22;
    v9 = v21;
    v10 = v20;
    v11 = v19;
    v12 = v18;
    LODWORD(v14) = v17;
    **(a3 + 7) = v25;
    *(a3 + 7) += 8;
    ++*(a3 + 16);
    v26 = *(a3 + 34);
    if (v26 <= 4)
    {
      LOWORD(v26) = 4;
    }

    LODWORD(v13) = v29;
    *(a3 + 34) = v26;
  }

  v27 = v15 - v13;
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v9);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v11);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 16, v31);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 18, v30);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 20, v12);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v27 + v14);
}

- (unsigned)reserved
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)bits_per_channel
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)channels_per_frame
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)bytes_per_frame
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

- (unsigned)frames_per_packet
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

- (unsigned)bytes_per_packet
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)format_flags
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

- (unsigned)format_id
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (double)sample_rate
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 5u)
  {
    v5 = *v3[4].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (OPTTSAudioDescription)initWithFlatbuffData:(id)a3 root:(const AudioDescription *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = OPTTSAudioDescription;
  v10 = [(OPTTSAudioDescription *)&v25 init];
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
  if (v18 && !siri::speech::schema_fb::AudioDescription::Verify(v18, v21))
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

- (AudioStreamBasicDescription)audioStreamBasicDescription
{
  retstr->mFormatID = [(OPTTSAudioDescription *)self format_id];
  [(OPTTSAudioDescription *)self sample_rate];
  retstr->mSampleRate = v5;
  retstr->mFormatFlags = [(OPTTSAudioDescription *)self format_flags];
  retstr->mBytesPerPacket = [(OPTTSAudioDescription *)self bytes_per_packet];
  retstr->mFramesPerPacket = [(OPTTSAudioDescription *)self frames_per_packet];
  retstr->mBytesPerFrame = [(OPTTSAudioDescription *)self bytes_per_frame];
  retstr->mChannelsPerFrame = [(OPTTSAudioDescription *)self channels_per_frame];
  retstr->mBitsPerChannel = [(OPTTSAudioDescription *)self bits_per_channel];
  result = [(OPTTSAudioDescription *)self reserved];
  retstr->mReserved = result;
  return result;
}

@end