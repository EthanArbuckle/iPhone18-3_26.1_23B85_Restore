@interface QSSAudioDescription
- (Offset<siri::speech::schema_fb::AudioDescription>)addObjectToBuffer:(void *)buffer;
- (QSSAudioDescription)initWithFlatbuffData:(id)data root:(const AudioDescription *)root verify:(BOOL)verify;
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

@implementation QSSAudioDescription

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
  v2.var0 = [(QSSAudioDescription *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__35__QSSAudioDescription_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::AudioDescription>)addObjectToBuffer:(void *)buffer
{
  [(QSSAudioDescription *)self sample_rate];
  v6 = v5;
  format_id = [(QSSAudioDescription *)self format_id];
  format_flags = [(QSSAudioDescription *)self format_flags];
  bytes_per_packet = [(QSSAudioDescription *)self bytes_per_packet];
  frames_per_packet = [(QSSAudioDescription *)self frames_per_packet];
  bytes_per_frame = [(QSSAudioDescription *)self bytes_per_frame];
  channels_per_frame = [(QSSAudioDescription *)self channels_per_frame];
  bits_per_channel = [(QSSAudioDescription *)self bits_per_channel];
  reserved = [(QSSAudioDescription *)self reserved];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 10);
  v15 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddElement<double>(buffer, 4, v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, format_id);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, format_flags);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, bytes_per_packet);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, frames_per_packet);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, bytes_per_frame);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, channels_per_frame);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 18, bits_per_channel);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 20, reserved);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v15 + v14);
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

- (QSSAudioDescription)initWithFlatbuffData:(id)data root:(const AudioDescription *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSAudioDescription;
  v10 = [(QSSAudioDescription *)&v29 init];
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

@end