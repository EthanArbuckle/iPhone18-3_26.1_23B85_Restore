@interface FTAudioDescription
- (AudioStreamBasicDescription)audioStreamBasicDescription;
- (FTAudioDescription)initWithFlatbuffData:(id)data root:(const AudioDescription *)root verify:(BOOL)verify;
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

@implementation FTAudioDescription

- (AudioStreamBasicDescription)audioStreamBasicDescription
{
  retstr->mFormatID = [(FTAudioDescription *)self format_id];
  [(FTAudioDescription *)self sample_rate];
  retstr->mSampleRate = v5;
  retstr->mFormatFlags = [(FTAudioDescription *)self format_flags];
  retstr->mBytesPerPacket = [(FTAudioDescription *)self bytes_per_packet];
  retstr->mFramesPerPacket = [(FTAudioDescription *)self frames_per_packet];
  retstr->mBytesPerFrame = [(FTAudioDescription *)self bytes_per_frame];
  retstr->mChannelsPerFrame = [(FTAudioDescription *)self channels_per_frame];
  retstr->mBitsPerChannel = [(FTAudioDescription *)self bits_per_channel];
  result = [(FTAudioDescription *)self reserved];
  retstr->mReserved = result;
  return result;
}

- (FTAudioDescription)initWithFlatbuffData:(id)data root:(const AudioDescription *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTAudioDescription;
  v10 = [(FTAudioDescription *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
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
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::AudioDescription::Verify(v18, v21))
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

- (Offset<siri::speech::schema_fb::AudioDescription>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  [(FTAudioDescription *)self sample_rate];
  v6 = v5;
  format_id = [(FTAudioDescription *)selfCopy format_id];
  format_flags = [(FTAudioDescription *)selfCopy format_flags];
  bytes_per_packet = [(FTAudioDescription *)selfCopy bytes_per_packet];
  frames_per_packet = [(FTAudioDescription *)selfCopy frames_per_packet];
  bytes_per_frame = [(FTAudioDescription *)selfCopy bytes_per_frame];
  channels_per_frame = [(FTAudioDescription *)selfCopy channels_per_frame];
  bits_per_channel = [(FTAudioDescription *)selfCopy bits_per_channel];
  LODWORD(selfCopy) = [(FTAudioDescription *)selfCopy reserved];
  *(buffer + 70) = 1;
  v16 = *(buffer + 10);
  v14 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(buffer, 4, v6, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, format_id, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, format_flags, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, bytes_per_packet, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, frames_per_packet, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, bytes_per_frame, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, channels_per_frame, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 18, bits_per_channel, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 20, selfCopy, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v14 + v16);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTAudioDescription *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__34__FTAudioDescription_flatbuffData__block_invoke(uint64_t a1)
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