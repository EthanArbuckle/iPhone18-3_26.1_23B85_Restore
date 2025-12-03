@interface OPTTSAudioDescription
- (AudioStreamBasicDescription)audioStreamBasicDescription;
- (OPTTSAudioDescription)initWithFlatbuffData:(id)data root:(const AudioDescription *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::AudioDescription>)addObjectToBuffer:(void *)buffer;
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
  v7 = xmmword_2728326A0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSAudioDescription *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__37__OPTTSAudioDescription_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::AudioDescription>)addObjectToBuffer:(void *)buffer
{
  [(OPTTSAudioDescription *)self sample_rate];
  v6 = v5;
  format_id = [(OPTTSAudioDescription *)self format_id];
  format_flags = [(OPTTSAudioDescription *)self format_flags];
  bytes_per_packet = [(OPTTSAudioDescription *)self bytes_per_packet];
  frames_per_packet = [(OPTTSAudioDescription *)self frames_per_packet];
  bytes_per_frame = [(OPTTSAudioDescription *)self bytes_per_frame];
  channels_per_frame = [(OPTTSAudioDescription *)self channels_per_frame];
  bits_per_channel = [(OPTTSAudioDescription *)self bits_per_channel];
  reserved = [(OPTTSAudioDescription *)self reserved];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 5);
  v13 = *(buffer + 6);
  v15 = *(buffer + 4);
  if (v6 != 0.0 || *(buffer + 80) == 1)
  {
    v29 = *(buffer + 6);
    flatbuffers::FlatBufferBuilder::Align(buffer, 8uLL);
    flatbuffers::vector_downward::ensure_space(buffer, 8uLL);
    v16 = *(buffer + 6);
    *(v16 - 8) = v6;
    v16 -= 8;
    *(buffer + 6) = v16;
    v17 = v14;
    v18 = reserved;
    v19 = bytes_per_frame;
    v20 = frames_per_packet;
    v21 = bytes_per_packet;
    v22 = format_flags;
    v23 = format_id;
    v24 = (*(buffer + 8) - v16 + *(buffer + 10));
    flatbuffers::vector_downward::ensure_space(buffer, 8uLL);
    v25 = v24 | 0x400000000;
    format_id = v23;
    format_flags = v22;
    bytes_per_packet = v21;
    frames_per_packet = v20;
    bytes_per_frame = v19;
    reserved = v18;
    LODWORD(v14) = v17;
    **(buffer + 7) = v25;
    *(buffer + 7) += 8;
    ++*(buffer + 16);
    v26 = *(buffer + 34);
    if (v26 <= 4)
    {
      LOWORD(v26) = 4;
    }

    LODWORD(v13) = v29;
    *(buffer + 34) = v26;
  }

  v27 = v15 - v13;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, format_id);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, format_flags);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, bytes_per_packet);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, frames_per_packet);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, bytes_per_frame);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, channels_per_frame);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 18, bits_per_channel);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 20, reserved);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v27 + v14);
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

- (OPTTSAudioDescription)initWithFlatbuffData:(id)data root:(const AudioDescription *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = OPTTSAudioDescription;
  v10 = [(OPTTSAudioDescription *)&v29 init];
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
        if (!siri::speech::schema_fb::AudioDescription::Verify(v19, &v24))
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